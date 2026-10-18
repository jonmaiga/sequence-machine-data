import SequenceMachineLib.Basic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C003
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C024
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C035
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
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
import Seq.B006.C000
import Seq.B006.C001
import Seq.B006.C002
import Seq.B007.C000
import Seq.B008.C000
import Seq.B008.C001
import Seq.B009.C000
import Seq.B010.C000
import Seq.B012.C000
import Seq.B013.C000
import Seq.B014.C000
import Seq.Opaque.C000
import Seq.Opaque.C001
import Seq.Opaque.C002
import Seq.Opaque.C003
import Seq.Opaque.C005
import Seq.Opaque.C006
import Seq.Opaque.C007
import Seq.Opaque.C008
import Seq.Opaque.C009
import Seq.Opaque.C010
import Seq.Opaque.C011
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
import Seq.Opaque.C025

/-!
# A139902: Primes of the form 16x^2+16xy+19y^2.

The programs for A139902, the canonical program `A139902.P17311505389906131483` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A139902 has offset 1).

The definition of A139902 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5009 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A139902.P11301680155026794011

`∪[A139985(n+1), A140624(n+1)]`
-/

namespace A139902.P11301680155026794011
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139985 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140624 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A139902.P11301680155026794011

namespace A139902

/-- `∪[A139985(n+1), A140624(n+1)]` -/
def P11301680155026794011.Spec : Prop :=
  ∀ n, (P11301680155026794011.a n : ℤ) = A139902 (n + 1)

end A139902

/-! ## A139902.P17311505389906131483

`∩[A107168(n+1), A139829(n+1)]`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A139902

/-- `∩[A107168(n+1), A139829(n+1)]` -/
def P17311505389906131483.Spec : Prop :=
  ∀ n, (P17311505389906131483.a n : ℤ) = A139902 (n + 1)

theorem P17311505389906131483.correct : P17311505389906131483.Spec := by
  intro n
  simp only [A139902, Nat.add_sub_cancel]

end A139902

/-! ## A139902.P7799256273562737869

`∩[A033212(n+1), A139829(n+1)]`
-/

namespace A139902.P7799256273562737869
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033212 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139829 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139902.P7799256273562737869

namespace A139902

/-- `∩[A033212(n+1), A139829(n+1)]` -/
def P7799256273562737869.Spec : Prop :=
  ∀ n, (P7799256273562737869.a n : ℤ) = A139902 (n + 1)

end A139902

/-! ## A139902.P9919308298061925689

`∩[A033212(n+1), A141373(n+1)]`
-/

namespace A139902.P9919308298061925689
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033212 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141373 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139902.P9919308298061925689

namespace A139902

/-- `∩[A033212(n+1), A141373(n+1)]` -/
def P9919308298061925689.Spec : Prop :=
  ∀ n, (P9919308298061925689.a n : ℤ) = A139902 (n + 1)

end A139902

/-! ## A139902.P14406214923032075192

`∩[A106950(n+1), A107168(n+1)]`
-/

namespace A139902.P14406214923032075192
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106950 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107168 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139902.P14406214923032075192

namespace A139902

/-- `∩[A106950(n+1), A107168(n+1)]` -/
def P14406214923032075192.Spec : Prop :=
  ∀ n, (P14406214923032075192.a n : ℤ) = A139902 (n + 1)

end A139902

/-! ## A139902.P10229163654611414074

`∩[A106950(n+1), A139829(n+1)]`
-/

namespace A139902.P10229163654611414074
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106950 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139829 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139902.P10229163654611414074

namespace A139902

/-- `∩[A106950(n+1), A139829(n+1)]` -/
def P10229163654611414074.Spec : Prop :=
  ∀ n, (P10229163654611414074.a n : ℤ) = A139902 (n + 1)

end A139902

/-! ## A139902.P1957770908960630604

`∩[A107168(n+1), A141170(n+1)]`
-/

namespace A139902.P1957770908960630604
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107168 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141170 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139902.P1957770908960630604

namespace A139902

/-- `∩[A107168(n+1), A141170(n+1)]` -/
def P1957770908960630604.Spec : Prop :=
  ∀ n, (P1957770908960630604.a n : ℤ) = A139902 (n + 1)

end A139902

/-! ## A139902.P15185775406018067269

`∩[A033201(n+1), A107168(n+1)]`
-/

namespace A139902.P15185775406018067269
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033201 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107168 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139902.P15185775406018067269

namespace A139902

/-- `∩[A033201(n+1), A107168(n+1)]` -/
def P15185775406018067269.Spec : Prop :=
  ∀ n, (P15185775406018067269.a n : ℤ) = A139902 (n + 1)

end A139902

/-! ## A139902.P2989035301822658951

`∩[A033201(n+1), A141373(n+1)]`
-/

namespace A139902.P2989035301822658951
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033201 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141373 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139902.P2989035301822658951

namespace A139902

/-- `∩[A033201(n+1), A141373(n+1)]` -/
def P2989035301822658951.Spec : Prop :=
  ∀ n, (P2989035301822658951.a n : ℤ) = A139902 (n + 1)

end A139902

/-! ## A139902.P9661210517504807680

`∩[A033201(n+1), A068229(n+1)]`
-/

namespace A139902.P9661210517504807680
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033201 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068229 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139902.P9661210517504807680

namespace A139902

/-- `∩[A033201(n+1), A068229(n+1)]` -/
def P9661210517504807680.Spec : Prop :=
  ∀ n, (P9661210517504807680.a n : ℤ) = A139902 (n + 1)

end A139902

/-! ## A139902.P13397853344283899914

`∩[A068229(n+1), A139829(n+1)]`
-/

namespace A139902.P13397853344283899914
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068229 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139829 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139902.P13397853344283899914

namespace A139902

/-- `∩[A068229(n+1), A139829(n+1)]` -/
def P13397853344283899914.Spec : Prop :=
  ∀ n, (P13397853344283899914.a n : ℤ) = A139902 (n + 1)

end A139902

/-! ## A139902.P3029243903617756384

`∩[A106950(n+1), A122869(n+1)]`
-/

namespace A139902.P3029243903617756384
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106950 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122869 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139902.P3029243903617756384

namespace A139902

/-- `∩[A106950(n+1), A122869(n+1)]` -/
def P3029243903617756384.Spec : Prop :=
  ∀ n, (P3029243903617756384.a n : ℤ) = A139902 (n + 1)

end A139902

/-! ## A139902.P9052813508399843938

`∩[A141170(n+1), A122869(n+1)]`
-/

namespace A139902.P9052813508399843938
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141170 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122869 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139902.P9052813508399843938

namespace A139902

/-- `∩[A141170(n+1), A122869(n+1)]` -/
def P9052813508399843938.Spec : Prop :=
  ∀ n, (P9052813508399843938.a n : ℤ) = A139902 (n + 1)

end A139902

/-! ## A139902.P3693226056475809925

`∩[A007520(n+1), A033212(n+1)]`
-/

namespace A139902.P3693226056475809925
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007520 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033212 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139902.P3693226056475809925

namespace A139902

/-- `∩[A007520(n+1), A033212(n+1)]` -/
def P3693226056475809925.Spec : Prop :=
  ∀ n, (P3693226056475809925.a n : ℤ) = A139902 (n + 1)

end A139902

/-! ## A139902.P1977223865920994020

`∩[A007520(n+1), A107168(n+1)]`
-/

namespace A139902.P1977223865920994020
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007520 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107168 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139902.P1977223865920994020

namespace A139902

/-- `∩[A007520(n+1), A107168(n+1)]` -/
def P1977223865920994020.Spec : Prop :=
  ∀ n, (P1977223865920994020.a n : ℤ) = A139902 (n + 1)

end A139902

/-! ## A139902.P602499969090269242

`∩[A033212(n+1), A045339(n+1)]`
-/

namespace A139902.P602499969090269242
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033212 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045339 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139902.P602499969090269242

namespace A139902

/-- `∩[A033212(n+1), A045339(n+1)]` -/
def P602499969090269242.Spec : Prop :=
  ∀ n, (P602499969090269242.a n : ℤ) = A139902 (n + 1)

end A139902

/-! ## A139902.P17314705885531501251

`∩[A045339(n+1), A107168(n+1)]`
-/

namespace A139902.P17314705885531501251
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045339 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107168 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139902.P17314705885531501251

namespace A139902

/-- `∩[A045339(n+1), A107168(n+1)]` -/
def P17314705885531501251.Spec : Prop :=
  ∀ n, (P17314705885531501251.a n : ℤ) = A139902 (n + 1)

end A139902

/-! ## A139902.P3461644303599240967

`∩[A033212(n+1), A332446(n+1)]`
-/

namespace A139902.P3461644303599240967
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033212 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332446 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139902.P3461644303599240967

namespace A139902

/-- `∩[A033212(n+1), A332446(n+1)]` -/
def P3461644303599240967.Spec : Prop :=
  ∀ n, (P3461644303599240967.a n : ℤ) = A139902 (n + 1)

end A139902

/-! ## A139902.P8279117963718521062

`∩[A163183(n+1), A107168(n+1)]`
-/

namespace A139902.P8279117963718521062
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163183 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107168 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139902.P8279117963718521062

namespace A139902

/-- `∩[A163183(n+1), A107168(n+1)]` -/
def P8279117963718521062.Spec : Prop :=
  ∀ n, (P8279117963718521062.a n : ℤ) = A139902 (n + 1)

end A139902

/-! ## A139902.P18291062489281193171

`∩[A139829(n+1), A385223(n+1)]`
-/

namespace A139902.P18291062489281193171
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139829 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385223 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139902.P18291062489281193171

namespace A139902

/-- `∩[A139829(n+1), A385223(n+1)]` -/
def P18291062489281193171.Spec : Prop :=
  ∀ n, (P18291062489281193171.a n : ℤ) = A139902 (n + 1)

end A139902

/-!
# A139904: Primes of the form 2x^2+2xy+127y^2.

The programs for A139904, there is no canonical definition to state claims against.
-/

/-! ## A139904.P15755813782403159775

`∩[A141183(n+1), A191021(n+1)]`
-/

namespace A139904.P15755813782403159775
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141183 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191021 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139904.P15755813782403159775

/-! ## A139904.P3849561182872662094

`∩[A141183(n+1), A296932(n+1)]`
-/

namespace A139904.P3849561182872662094
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141183 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296932 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139904.P3849561182872662094

/-! ## A139904.P14495706823904318261

`∩[A035240(n+1), A141183(n+1)]`
-/

namespace A139904.P14495706823904318261
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035240 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141183 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139904.P14495706823904318261

/-! ## A139904.P4495058062210835130

`∩[A141183(n+1), A278580(n+1)]`
-/

namespace A139904.P4495058062210835130
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141183 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278580 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139904.P4495058062210835130

/-! ## A139904.P15919654112852316825

`∩[A191021(n+1), A243167(n+1)]`
-/

namespace A139904.P15919654112852316825
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191021 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243167 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139904.P15919654112852316825

/-!
# A139905: Primes of the form 11x^2+23y^2.

The programs for A139905, there is no canonical definition to state claims against.
-/

/-! ## A139905.P8488110860156819695

`∩[A056874(n+1), A141337(n+1)]`
-/

namespace A139905.P8488110860156819695
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056874 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141337 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139905.P8488110860156819695

/-! ## A139905.P8216958208162520648

`∩[A141337(n+1), A341785(n+1)]`
-/

namespace A139905.P8216958208162520648
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141337 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341785 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139905.P8216958208162520648

/-! ## A139905.P12462673099383961620

`∩[A035247(n+1), A141337(n+1)]`
-/

namespace A139905.P12462673099383961620
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035247 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141337 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139905.P12462673099383961620

/-!
# A139906: Primes of the form 17x^2+12xy+17y^2.

The programs for A139906, there is no canonical definition to state claims against.
-/

/-! ## A139906.P14244672177965226250

`A265759(A128014(n)+A083089(3*n+4))`
-/

namespace A139906.P14244672177965226250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265759 (A128014 n + A083089 (3 * n + 4)).toNat

end

end A139906.P14244672177965226250

/-! ## A139906.P7683899900296849997

`A318786(or(A120770(n+3), A318818(n+3)))`
-/

namespace A139906.P7683899900296849997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318786 (Int.lor (A120770 (n + 3)) (A318818 (n + 3))).toNat

end

end A139906.P7683899900296849997

/-!
# A139907: Primes of the form 2x^2+2xy+137y^2.

The programs for A139907, there is no canonical definition to state claims against.
-/

/-! ## A139907.P9648180528783183678

`∩[A106886(n+1), A141172(n+1)]`
-/

namespace A139907.P9648180528783183678
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106886 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141172 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139907.P9648180528783183678

/-! ## A139907.P17927569713747447863

`∩[A141172(n+1), A243680(n)]`
-/

namespace A139907.P17927569713747447863
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141172 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243680 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139907.P17927569713747447863

/-! ## A139907.P11702766697892547257

`∩[A106886(n+1), A242662(n)]`
-/

namespace A139907.P11702766697892547257
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106886 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242662 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139907.P11702766697892547257

/-! ## A139907.P8943632165826829973

`∩[A106886(n+1), A358946(n+1)]`
-/

namespace A139907.P8943632165826829973
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106886 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358946 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139907.P8943632165826829973

/-!
# A139908: Primes of the form 3x^2+91y^2.

The programs for A139908, there is no canonical definition to state claims against.
-/

/-! ## A139908.P821452149087202710

`∩[A102271(n+1), A267455(n+1)]`
-/

namespace A139908.P821452149087202710
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102271 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267455 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139908.P821452149087202710

/-! ## A139908.P5317526881270707680

`∩[A141173(n+1), A267455(n+1)]`
-/

namespace A139908.P5317526881270707680
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141173 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267455 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139908.P5317526881270707680

/-! ## A139908.P4085377886382007030

`∩[A040126(n+1), A102271(n+1)]`
-/

namespace A139908.P4085377886382007030
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040126 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102271 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139908.P4085377886382007030

/-! ## A139908.P15390310047205326558

`∩[A038883(n+1), A102271(n+1)]`
-/

namespace A139908.P15390310047205326558
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038883 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102271 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139908.P15390310047205326558

/-! ## A139908.P10064299452829954792

`∩[A102271(n+1), A296937(n+1)]`
-/

namespace A139908.P10064299452829954792
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102271 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296937 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139908.P10064299452829954792

/-! ## A139908.P3221666662462896524

`∩[A102271(n+1), A191085(n+1)]`
-/

namespace A139908.P3221666662462896524
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102271 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191085 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139908.P3221666662462896524

/-! ## A139908.P13945347069375335672

`∩[A102271(n+1), A270997(n+1)]`
-/

namespace A139908.P13945347069375335672
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102271 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270997 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139908.P13945347069375335672

/-! ## A139908.P147920099684899848

`∩[A102271(n+1), A296927(n+1)]`
-/

namespace A139908.P147920099684899848
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102271 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296927 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139908.P147920099684899848

/-! ## A139908.P6274744797378781209

`∩[A020679(n+1), A038883(n+1)]`
-/

namespace A139908.P6274744797378781209
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020679 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038883 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139908.P6274744797378781209

/-! ## A139908.P1891658553292236653

`∩[A020679(n+1), A191085(n+1)]`
-/

namespace A139908.P1891658553292236653
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020679 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191085 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139908.P1891658553292236653

/-! ## A139908.P14634509233381760923

`∩[A020679(n+1), A267455(n+1)]`
-/

namespace A139908.P14634509233381760923
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020679 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267455 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139908.P14634509233381760923

/-! ## A139908.P233350042167435195

`∩[A020679(n+1), A296927(n+1)]`
-/

namespace A139908.P233350042167435195
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020679 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296927 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139908.P233350042167435195

/-! ## A139908.P9429126208908630697

`∩[A020679(n+1), A296937(n+1)]`
-/

namespace A139908.P9429126208908630697
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020679 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296937 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139908.P9429126208908630697

/-! ## A139908.P4703950576864969137

`∩[A020679(n+1), A040126(n+1)]`
-/

namespace A139908.P4703950576864969137
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020679 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040126 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139908.P4703950576864969137

/-! ## A139908.P15635000338891409074

`∩[A035256(n+1), A102271(n+1)]`
-/

namespace A139908.P15635000338891409074
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035256 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102271 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139908.P15635000338891409074

/-! ## A139908.P14760050533498310700

`∩[A102271(n+1), A309586(n+1)]`
-/

namespace A139908.P14760050533498310700
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102271 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309586 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139908.P14760050533498310700

/-! ## A139908.P5737413118825830194

`∩[A102271(n+1), A309591(n+1)]`
-/

namespace A139908.P5737413118825830194
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102271 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309591 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139908.P5737413118825830194

/-!
# A139909: Primes of the form 6x^2+6xy+47y^2.

The programs for A139909, there is no canonical definition to state claims against.
-/

/-! ## A139909.P11558598143218001634

`∩[A068231(n+1), A106986(n+1)]`
-/

namespace A139909.P11558598143218001634
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068231 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106986 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139909.P11558598143218001634

/-! ## A139909.P12741280917799257474

`∩[A106986(n+1), A141123(n+1)]`
-/

namespace A139909.P12741280917799257474
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106986 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141123 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139909.P12741280917799257474

/-! ## A139909.P18154568414254577362

`∩[A106986(n+1), A141187(n+1)]`
-/

namespace A139909.P18154568414254577362
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106986 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141187 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139909.P18154568414254577362

/-! ## A139909.P1146793176463053762

`∩[A106886(n+1), A141173(n+1)]`
-/

namespace A139909.P1146793176463053762
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106886 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141173 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139909.P1146793176463053762

/-! ## A139909.P13414138564937827207

`∩[A106906(n+1), A141160(n+1)]`
-/

namespace A139909.P13414138564937827207
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106906 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141160 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139909.P13414138564937827207

/-! ## A139909.P5934802116772640307

`∩[A106986(n+1), A332516(n+1)]`
-/

namespace A139909.P5934802116772640307
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106986 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332516 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139909.P5934802116772640307

/-! ## A139909.P18355904587203640936

`∩[A106986(n+1), A017653(n)]`
-/

namespace A139909.P18355904587203640936
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106986 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017653 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139909.P18355904587203640936

/-! ## A139909.P12408584375674408323

`∩[A106986(n+1), A017533(n)-2]`
-/

namespace A139909.P12408584375674408323
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106986 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017533 n - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139909.P12408584375674408323

/-! ## A139909.P11837870647638947588

`∩[A084917(n+1), A106986(n+1)]`
-/

namespace A139909.P11837870647638947588
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084917 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106986 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139909.P11837870647638947588

/-! ## A139909.P3712860717828110709

`∩[A106986(n+1), A228137(n+1)-2]`
-/

namespace A139909.P3712860717828110709
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106986 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228137 (n + 1) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139909.P3712860717828110709

/-! ## A139909.P9420145817780866145

`∩[A146512(2*n+1)-2, A106986(n+2)]`
-/

namespace A139909.P9420145817780866145
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146512 (2 * n + 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106986 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139909.P9420145817780866145

/-! ## A139909.P6681935043916872459

`∩[A141173(n+1), A243680(n)]`
-/

namespace A139909.P6681935043916872459
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141173 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243680 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139909.P6681935043916872459

/-! ## A139909.P10576840748615424145

`∩[A106986(n+1), A267534(n+1)]`
-/

namespace A139909.P10576840748615424145
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106986 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267534 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139909.P10576840748615424145

/-! ## A139909.P7215314193671431627

`∩[A042944(n+1), A106986(n+1)]`
-/

namespace A139909.P7215314193671431627
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042944 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106986 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139909.P7215314193671431627

/-! ## A139909.P877843389568157346

`∩[A106986(n+1), A180713(n)]`
-/

namespace A139909.P877843389568157346
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106986 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180713 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139909.P877843389568157346

/-! ## A139909.P12916266791489593687

`∩[A072065(n+1), A106986(n+1)]`
-/

namespace A139909.P12916266791489593687
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072065 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106986 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139909.P12916266791489593687

/-! ## A139909.P16167343473104866008

`∩[A106986(n+1), A108752(n+1)]`
-/

namespace A139909.P16167343473104866008
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106986 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108752 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139909.P16167343473104866008

/-! ## A139909.P520984968227394035

`∩[A106986(n+1), A218155(n+1)]`
-/

namespace A139909.P520984968227394035
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106986 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218155 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139909.P520984968227394035

/-! ## A139909.P13404471689537293908

`∩[A106986(n+1), A112652(n)-1]`
-/

namespace A139909.P13404471689537293908
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106986 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112652 n - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139909.P13404471689537293908

/-! ## A139909.P5892764480068518327

`∩[A112652(n+1)+2, A106986(n+2)]`
-/

namespace A139909.P5892764480068518327
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112652 (n + 1) + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106986 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139909.P5892764480068518327

/-!
# A139910: Primes of the form 7x^2+39y^2.

The programs for A139910, there is no canonical definition to state claims against.
-/

/-! ## A139910.P13066557848751548025

`∩[A106906(n+1), A139492(n+1)]`
-/

namespace A139910.P13066557848751548025
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106906 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139492 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139910.P13066557848751548025

/-! ## A139910.P13441085259378082504

`∩[A106906(n+1), A243172(n+1)]`
-/

namespace A139910.P13441085259378082504
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106906 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243172 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139910.P13441085259378082504

/-!
# A139911: Primes of the form 13x^2+21y^2.

The programs for A139911, there is no canonical definition to state claims against.
-/

/-! ## A139911.P11067409473352722881

`∩[A068228(n+1), A106986(n+1)]`
-/

namespace A139911.P11067409473352722881
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068228 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106986 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139911.P11067409473352722881

/-! ## A139911.P2762491503184594856

`∩[A106986(n+1), A351537(n+1)]`
-/

namespace A139911.P2762491503184594856
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106986 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351537 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139911.P2762491503184594856

/-! ## A139911.P10135796623856128478

`∩[A106986(n+1), A354467(n+1)]`
-/

namespace A139911.P10135796623856128478
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106986 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354467 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139911.P10135796623856128478

/-! ## A139911.P14926287475785404091

`∩[A106986(n+1), A353198(n+1)]`
-/

namespace A139911.P14926287475785404091
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106986 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353198 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139911.P14926287475785404091

/-! ## A139911.P10513695176043098842

`∩[A106986(n+1), A155560(n+1)]`
-/

namespace A139911.P10513695176043098842
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106986 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155560 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139911.P10513695176043098842

/-! ## A139911.P411063719655650608

`∩[A106986(n+1), A264732(n+1)]`
-/

namespace A139911.P411063719655650608
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106986 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264732 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139911.P411063719655650608

/-! ## A139911.P10399672303427474465

`∩[A106986(n+1), A155563(n+1)]`
-/

namespace A139911.P10399672303427474465
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106986 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155563 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139911.P10399672303427474465

/-! ## A139911.P16070791910018298159

`∩[A106986(n+1), A017533(n)]`
-/

namespace A139911.P16070791910018298159
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106986 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017533 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139911.P16070791910018298159

/-! ## A139911.P13689937811042992387

`∩[A106986(n+1), A017653(n)+2]`
-/

namespace A139911.P13689937811042992387
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106986 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017653 n + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139911.P13689937811042992387

/-! ## A139911.P13787488196595984085

`∩[A106986(n+1), A272933(n+1)]`
-/

namespace A139911.P13787488196595984085
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106986 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272933 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139911.P13787488196595984085

/-! ## A139911.P1989969078542366557

`∩[A020672(n+1), A106986(n+1)]`
-/

namespace A139911.P1989969078542366557
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020672 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106986 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139911.P1989969078542366557

/-! ## A139911.P9787148483276091725

`∩[A084916(n+1), A106986(n+1)]`
-/

namespace A139911.P9787148483276091725
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084916 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106986 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139911.P9787148483276091725

/-! ## A139911.P6476380243844897968

`∩[A106986(n+1), A146512(n+1)]`
-/

namespace A139911.P6476380243844897968
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106986 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146512 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139911.P6476380243844897968

/-! ## A139911.P3841358766319517610

`∩[A106986(n+1), A228137(n+1)]`
-/

namespace A139911.P3841358766319517610
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106986 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228137 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139911.P3841358766319517610

/-! ## A139911.P75051302010385595

`∩[A112652(2*n+1)+A112652(2*n), A106986(n+2)]`
-/

namespace A139911.P75051302010385595
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112652 (2 * n + 1) + A112652 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106986 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139911.P75051302010385595

/-! ## A139911.P16378906394832642986

`∩[A106986(n+1), A112652(n)]`
-/

namespace A139911.P16378906394832642986
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106986 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112652 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139911.P16378906394832642986

/-! ## A139911.P9385870549388141227

`∩[A106986(n+1), A180713(n)+2]`
-/

namespace A139911.P9385870549388141227
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106986 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180713 n + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139911.P9385870549388141227

/-! ## A139911.P3683625663263750490

`∩[A072065(n+1)+1, A106986(n+1)]`
-/

namespace A139911.P3683625663263750490
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072065 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106986 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139911.P3683625663263750490

/-! ## A139911.P18365302336078546947

`∩[A106986(n+1), A108752(n+1)+1]`
-/

namespace A139911.P18365302336078546947
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106986 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108752 (n + 1) + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139911.P18365302336078546947

/-! ## A139911.P12277015531894746217

`∩[A106986(n+1), A218155(n+1)-2]`
-/

namespace A139911.P12277015531894746217
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106986 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218155 (n + 1) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139911.P12277015531894746217

/-!
# A139912: Primes of the form 14x^2+14xy+23y^2.

The programs for A139912, the canonical program `A139912.P2269059861818370027` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A139912 has offset 1).

The definition of A139912 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1268 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A139912.P2389639460944364391

`∩[A102273(n+1), A106989(n+1)]`
-/

namespace A139912.P2389639460944364391
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102273 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106989 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139912.P2389639460944364391

namespace A139912

/-- `∩[A102273(n+1), A106989(n+1)]` -/
def P2389639460944364391.Spec : Prop :=
  ∀ n, (P2389639460944364391.a n : ℤ) = A139912 (n + 1)

end A139912

/-! ## A139912.P12112579336594425317

`∩[A068231(n+1), A106989(n+1)]`
-/

namespace A139912.P12112579336594425317
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068231 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106989 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139912.P12112579336594425317

namespace A139912

/-- `∩[A068231(n+1), A106989(n+1)]` -/
def P12112579336594425317.Spec : Prop :=
  ∀ n, (P12112579336594425317.a n : ℤ) = A139912 (n + 1)

end A139912

/-! ## A139912.P9472581550298056127

`∩[A106989(n+1), A141123(n+1)]`
-/

namespace A139912.P9472581550298056127
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106989 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141123 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139912.P9472581550298056127

namespace A139912

/-- `∩[A106989(n+1), A141123(n+1)]` -/
def P9472581550298056127.Spec : Prop :=
  ∀ n, (P9472581550298056127.a n : ℤ) = A139912 (n + 1)

end A139912

/-! ## A139912.P14033021578955523468

`∩[A106989(n+1), A141187(n+1)]`
-/

namespace A139912.P14033021578955523468
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106989 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141187 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139912.P14033021578955523468

namespace A139912

/-- `∩[A106989(n+1), A141187(n+1)]` -/
def P14033021578955523468.Spec : Prop :=
  ∀ n, (P14033021578955523468.a n : ℤ) = A139912 (n + 1)

end A139912

/-! ## A139912.P16562110950316053776

`∩[A040126(n+1), A102273(n+1)]`
-/

namespace A139912.P16562110950316053776
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040126 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102273 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139912.P16562110950316053776

namespace A139912

/-- `∩[A040126(n+1), A102273(n+1)]` -/
def P16562110950316053776.Spec : Prop :=
  ∀ n, (P16562110950316053776.a n : ℤ) = A139912 (n + 1)

end A139912

/-! ## A139912.P259327981862293563

`∩[A106989(n+1), A332516(n+1)]`
-/

namespace A139912.P259327981862293563
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106989 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332516 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139912.P259327981862293563

namespace A139912

/-- `∩[A106989(n+1), A332516(n+1)]` -/
def P259327981862293563.Spec : Prop :=
  ∀ n, (P259327981862293563.a n : ℤ) = A139912 (n + 1)

end A139912

/-! ## A139912.P2269059861818370027

`∩[A038917(n+1), A102273(n+1)]`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A139912

/-- `∩[A038917(n+1), A102273(n+1)]` -/
def P2269059861818370027.Spec : Prop :=
  ∀ n, (P2269059861818370027.a n : ℤ) = A139912 (n + 1)

theorem P2269059861818370027.correct : P2269059861818370027.Spec := by
  intro n
  simp only [A139912, Nat.add_sub_cancel]

end A139912

/-! ## A139912.P635127844981238911

`∩[A102273(n+1), A296937(n+1)]`
-/

namespace A139912.P635127844981238911
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102273 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296937 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139912.P635127844981238911

namespace A139912

/-- `∩[A102273(n+1), A296937(n+1)]` -/
def P635127844981238911.Spec : Prop :=
  ∀ n, (P635127844981238911.a n : ℤ) = A139912 (n + 1)

end A139912

/-! ## A139912.P14123913336039051584

`∩[A038883(n+1), A102273(n+1)]`
-/

namespace A139912.P14123913336039051584
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038883 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102273 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139912.P14123913336039051584

namespace A139912

/-- `∩[A038883(n+1), A102273(n+1)]` -/
def P14123913336039051584.Spec : Prop :=
  ∀ n, (P14123913336039051584.a n : ℤ) = A139912 (n + 1)

end A139912

/-! ## A139912.P13546689623706902593

`∩[A102273(n+1), A191054(n+1)]`
-/

namespace A139912.P13546689623706902593
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102273 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191054 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139912.P13546689623706902593

namespace A139912

/-- `∩[A102273(n+1), A191054(n+1)]` -/
def P13546689623706902593.Spec : Prop :=
  ∀ n, (P13546689623706902593.a n : ℤ) = A139912 (n + 1)

end A139912

/-! ## A139912.P7125272630322147239

`∩[A102273(n+1), A270997(n+1)]`
-/

namespace A139912.P7125272630322147239
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102273 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270997 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139912.P7125272630322147239

namespace A139912

/-- `∩[A102273(n+1), A270997(n+1)]` -/
def P7125272630322147239.Spec : Prop :=
  ∀ n, (P7125272630322147239.a n : ℤ) = A139912 (n + 1)

end A139912

/-! ## A139912.P12494626388806270924

`∩[A102273(n+1), A296927(n+1)]`
-/

namespace A139912.P12494626388806270924
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102273 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296927 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139912.P12494626388806270924

namespace A139912

/-- `∩[A102273(n+1), A296927(n+1)]` -/
def P12494626388806270924.Spec : Prop :=
  ∀ n, (P12494626388806270924.a n : ℤ) = A139912 (n + 1)

end A139912

/-! ## A139912.P13599374959503036339

`∩[A038980(n+1), A102273(n+1)]`
-/

namespace A139912.P13599374959503036339
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038980 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102273 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139912.P13599374959503036339

namespace A139912

/-- `∩[A038980(n+1), A102273(n+1)]` -/
def P13599374959503036339.Spec : Prop :=
  ∀ n, (P13599374959503036339.a n : ℤ) = A139912 (n + 1)

end A139912

/-! ## A139912.P8729806686812935213

`∩[A102273(n+1), A191070(n+1)]`
-/

namespace A139912.P8729806686812935213
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102273 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191070 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139912.P8729806686812935213

namespace A139912

/-- `∩[A102273(n+1), A191070(n+1)]` -/
def P8729806686812935213.Spec : Prop :=
  ∀ n, (P8729806686812935213.a n : ℤ) = A139912 (n + 1)

end A139912

/-! ## A139912.P456964748603403865

`∩[A106989(n+1), A017653(n)]`
-/

namespace A139912.P456964748603403865
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106989 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017653 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139912.P456964748603403865

namespace A139912

/-- `∩[A106989(n+1), A017653(n)]` -/
def P456964748603403865.Spec : Prop :=
  ∀ n, (P456964748603403865.a n : ℤ) = A139912 (n + 1)

end A139912

/-! ## A139912.P16960341626765093056

`∩[A106989(n+1), A017533(n)-2]`
-/

namespace A139912.P16960341626765093056
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106989 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017533 n - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139912.P16960341626765093056

namespace A139912

/-- `∩[A106989(n+1), A017533(n)-2]` -/
def P16960341626765093056.Spec : Prop :=
  ∀ n, (P16960341626765093056.a n : ℤ) = A139912 (n + 1)

end A139912

/-! ## A139912.P18039156809284596779

`∩[A084917(n+1), A106989(n+1)]`
-/

namespace A139912.P18039156809284596779
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084917 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106989 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139912.P18039156809284596779

namespace A139912

/-- `∩[A084917(n+1), A106989(n+1)]` -/
def P18039156809284596779.Spec : Prop :=
  ∀ n, (P18039156809284596779.a n : ℤ) = A139912 (n + 1)

end A139912

/-! ## A139912.P7270518266590217441

`∩[A005005(n+1), A106989(n+1)]`
-/

namespace A139912.P7270518266590217441
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106989 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139912.P7270518266590217441

namespace A139912

/-- `∩[A005005(n+1), A106989(n+1)]` -/
def P7270518266590217441.Spec : Prop :=
  ∀ n, (P7270518266590217441.a n : ℤ) = A139912 (n + 1)

end A139912

/-! ## A139912.P5489380170998608924

`∩[A026472(n+1)-2, A106989(n+1)]`
-/

namespace A139912.P5489380170998608924
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026472 (n + 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106989 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139912.P5489380170998608924

namespace A139912

/-- `∩[A026472(n+1)-2, A106989(n+1)]` -/
def P5489380170998608924.Spec : Prop :=
  ∀ n, (P5489380170998608924.a n : ℤ) = A139912 (n + 1)

end A139912

/-! ## A139912.P8213305303346926244

`∩[A035256(n+1), A102273(n+1)]`
-/

namespace A139912.P8213305303346926244
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035256 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102273 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139912.P8213305303346926244

namespace A139912

/-- `∩[A035256(n+1), A102273(n+1)]` -/
def P8213305303346926244.Spec : Prop :=
  ∀ n, (P8213305303346926244.a n : ℤ) = A139912 (n + 1)

end A139912

/-!
# A139913: Primes of the form 17x^2+8xy+17y^2.

The programs for A139913, there is no canonical definition to state claims against.
-/

/-! ## A139913.P3757027629238272928

`∩[A033210(n+1), A106972(n+1)]`
-/

namespace A139913.P3757027629238272928
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033210 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106972 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139913.P3757027629238272928

/-! ## A139913.P933515827192985287

`∩[A033210(n+1), A141160(n+1)]`
-/

namespace A139913.P933515827192985287
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033210 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141160 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139913.P933515827192985287

/-! ## A139913.P7912777489067140038

`∩[A106972(n+1), A296926(n+1)]`
-/

namespace A139913.P7912777489067140038
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106972 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296926 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139913.P7912777489067140038

/-! ## A139913.P9047964629209761306

`∩[A106972(n+1), A296928(n+1)]`
-/

namespace A139913.P9047964629209761306
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106972 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296928 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139913.P9047964629209761306

/-! ## A139913.P2541659681743628910

`∩[A038883(n+1), A106972(n+1)]`
-/

namespace A139913.P2541659681743628910
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038883 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106972 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139913.P2541659681743628910

/-! ## A139913.P14314068336709879707

`∩[A106972(n+1), A296937(n+1)]`
-/

namespace A139913.P14314068336709879707
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106972 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296937 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139913.P14314068336709879707

/-! ## A139913.P556911814587467823

`∩[A106972(n+1), A191085(n+1)]`
-/

namespace A139913.P556911814587467823
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106972 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191085 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139913.P556911814587467823

/-! ## A139913.P16775284333855772566

`∩[A106972(n+1), A270997(n+1)]`
-/

namespace A139913.P16775284333855772566
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106972 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270997 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139913.P16775284333855772566

/-! ## A139913.P4354919017668923372

`∩[A038918(n+1), A106972(n+1)]`
-/

namespace A139913.P4354919017668923372
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038918 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106972 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139913.P4354919017668923372

/-! ## A139913.P15875848387340313193

`∩[A038980(n+1), A106972(n+1)]`
-/

namespace A139913.P15875848387340313193
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038980 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106972 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139913.P15875848387340313193

/-! ## A139913.P16533336110794015886

`∩[A106972(n+1), A191070(n+1)]`
-/

namespace A139913.P16533336110794015886
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106972 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191070 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139913.P16533336110794015886

/-! ## A139913.P16326946135123586666

`∩[A106972(n+1), A247881(n+1)]`
-/

namespace A139913.P16326946135123586666
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106972 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247881 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139913.P16326946135123586666

/-! ## A139913.P1640540618113519336

`∩[A141160(n+1), A247881(n+1)]`
-/

namespace A139913.P1640540618113519336
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141160 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247881 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139913.P1640540618113519336

/-! ## A139913.P1389468705214535921

`∩[A035245(n+1), A106972(n+1)]`
-/

namespace A139913.P1389468705214535921
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035245 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106972 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139913.P1389468705214535921

/-! ## A139913.P2646763075183354209

`∩[A035256(n+1), A106972(n+1)]`
-/

namespace A139913.P2646763075183354209
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035256 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106972 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139913.P2646763075183354209

/-!
# A139914: Primes of the form 4x^2+4xy+71y^2.

The programs for A139914, the canonical program `A139914.P18233845274727958943` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A139914 has offset 1).

The definition of A139914 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2509 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A139914.P14400605927934236044

`∩[A033245(n+1), A139852(n+1)]`
-/

namespace A139914.P14400605927934236044
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033245 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139852 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139914.P14400605927934236044

namespace A139914

/-- `∩[A033245(n+1), A139852(n+1)]` -/
def P14400605927934236044.Spec : Prop :=
  ∀ n, (P14400605927934236044.a n : ℤ) = A139914 (n + 1)

end A139914

/-! ## A139914.P18233845274727958943

`∩[A139852(n+1), A141180(n+1)]`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A139914

/-- `∩[A139852(n+1), A141180(n+1)]` -/
def P18233845274727958943.Spec : Prop :=
  ∀ n, (P18233845274727958943.a n : ℤ) = A139914 (n + 1)

theorem P18233845274727958943.correct : P18233845274727958943.Spec := by
  intro n
  simp only [A139914, Nat.add_sub_cancel]

end A139914

/-! ## A139914.P3297524049989695907

`∩[A106881(n+1), A139852(n+1)]`
-/

namespace A139914.P3297524049989695907
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106881 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139852 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139914.P3297524049989695907

namespace A139914

/-- `∩[A106881(n+1), A139852(n+1)]` -/
def P3297524049989695907.Spec : Prop :=
  ∀ n, (P3297524049989695907.a n : ℤ) = A139914 (n + 1)

end A139914

/-! ## A139914.P14471625190302018943

`∩[A007522(n+1), A033245(n+1)]`
-/

namespace A139914.P14471625190302018943
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007522 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033245 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139914.P14471625190302018943

namespace A139914

/-- `∩[A007522(n+1), A033245(n+1)]` -/
def P14471625190302018943.Spec : Prop :=
  ∀ n, (P14471625190302018943.a n : ℤ) = A139914 (n + 1)

end A139914

/-! ## A139914.P17587931399027887033

`∩[A033245(n+1), A045382(n+1)]`
-/

namespace A139914.P17587931399027887033
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033245 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045382 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139914.P17587931399027887033

namespace A139914

/-- `∩[A033245(n+1), A045382(n+1)]` -/
def P17587931399027887033.Spec : Prop :=
  ∀ n, (P17587931399027887033.a n : ℤ) = A139914 (n + 1)

end A139914

/-! ## A139914.P14520045131632252043

`∩[A007522(n+1), A106881(n+1)]`
-/

namespace A139914.P14520045131632252043
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007522 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106881 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139914.P14520045131632252043

namespace A139914

/-- `∩[A007522(n+1), A106881(n+1)]` -/
def P14520045131632252043.Spec : Prop :=
  ∀ n, (P14520045131632252043.a n : ℤ) = A139914 (n + 1)

end A139914

/-! ## A139914.P840444734748088889

`∩[A033245(n+1), A107133(n+1)]`
-/

namespace A139914.P840444734748088889
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033245 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107133 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139914.P840444734748088889

namespace A139914

/-- `∩[A033245(n+1), A107133(n+1)]` -/
def P840444734748088889.Spec : Prop :=
  ∀ n, (P840444734748088889.a n : ℤ) = A139914 (n + 1)

end A139914

/-! ## A139914.P13742185269245161320

`∩[A045382(n+1), A106881(n+1)]`
-/

namespace A139914.P13742185269245161320
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045382 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106881 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139914.P13742185269245161320

namespace A139914

/-- `∩[A045382(n+1), A106881(n+1)]` -/
def P13742185269245161320.Spec : Prop :=
  ∀ n, (P13742185269245161320.a n : ℤ) = A139914 (n + 1)

end A139914

/-! ## A139914.P12636053748813802427

`∩[A107133(n+1), A141180(n+1)]`
-/

namespace A139914.P12636053748813802427
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107133 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141180 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139914.P12636053748813802427

namespace A139914

/-- `∩[A107133(n+1), A141180(n+1)]` -/
def P12636053748813802427.Spec : Prop :=
  ∀ n, (P12636053748813802427.a n : ℤ) = A139914 (n + 1)

end A139914

/-! ## A139914.P17873631253651748226

`∩[A033245(n+1), A094712(n+1)]`
-/

namespace A139914.P17873631253651748226
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033245 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094712 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139914.P17873631253651748226

namespace A139914

/-- `∩[A033245(n+1), A094712(n+1)]` -/
def P17873631253651748226.Spec : Prop :=
  ∀ n, (P17873631253651748226.a n : ℤ) = A139914 (n + 1)

end A139914

/-! ## A139914.P3708731575451990386

`∩[A094712(n+1), A106881(n+1)]`
-/

namespace A139914.P3708731575451990386
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094712 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106881 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139914.P3708731575451990386

namespace A139914

/-- `∩[A094712(n+1), A106881(n+1)]` -/
def P3708731575451990386.Spec : Prop :=
  ∀ n, (P3708731575451990386.a n : ℤ) = A139914 (n + 1)

end A139914

/-! ## A139914.P12582311868788705781

`∩[A033245(n+1), A122869(n+1)]`
-/

namespace A139914.P12582311868788705781
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033245 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122869 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139914.P12582311868788705781

namespace A139914

/-- `∩[A033245(n+1), A122869(n+1)]` -/
def P12582311868788705781.Spec : Prop :=
  ∀ n, (P12582311868788705781.a n : ℤ) = A139914 (n + 1)

end A139914

/-! ## A139914.P5997783134977762784

`∩[A122869(n+1), A139852(n+1)]`
-/

namespace A139914.P5997783134977762784
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122869 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139852 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139914.P5997783134977762784

namespace A139914

/-- `∩[A122869(n+1), A139852(n+1)]` -/
def P5997783134977762784.Spec : Prop :=
  ∀ n, (P5997783134977762784.a n : ℤ) = A139914 (n + 1)

end A139914

/-! ## A139914.P9693666503498011

`∩[A122869(n+1), A274675(n+1)]`
-/

namespace A139914.P9693666503498011
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122869 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274675 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139914.P9693666503498011

namespace A139914

/-- `∩[A122869(n+1), A274675(n+1)]` -/
def P9693666503498011.Spec : Prop :=
  ∀ n, (P9693666503498011.a n : ℤ) = A139914 (n + 1)

end A139914

/-! ## A139914.P1968792683833596665

`∩[A053032(n+1), A139852(n+1)]`
-/

namespace A139914.P1968792683833596665
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053032 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139852 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139914.P1968792683833596665

namespace A139914

/-- `∩[A053032(n+1), A139852(n+1)]` -/
def P1968792683833596665.Spec : Prop :=
  ∀ n, (P1968792683833596665.a n : ℤ) = A139914 (n + 1)

end A139914

/-! ## A139914.P17187792895056477566

`∩[A112860(n+1), A139852(n+1)]`
-/

namespace A139914.P17187792895056477566
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112860 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139852 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139914.P17187792895056477566

namespace A139914

/-- `∩[A112860(n+1), A139852(n+1)]` -/
def P17187792895056477566.Spec : Prop :=
  ∀ n, (P17187792895056477566.a n : ℤ) = A139914 (n + 1)

end A139914

/-! ## A139914.P17876997514804169623

`∩[A139852(n+1), A385192(n+1)]`
-/

namespace A139914.P17876997514804169623
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139852 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385192 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139914.P17876997514804169623

namespace A139914

/-- `∩[A139852(n+1), A385192(n+1)]` -/
def P17876997514804169623.Spec : Prop :=
  ∀ n, (P17876997514804169623.a n : ℤ) = A139914 (n + 1)

end A139914

/-! ## A139914.P11957398940394896128

`∩[A040119(n+1), A139852(n+1)]`
-/

namespace A139914.P11957398940394896128
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040119 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139852 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139914.P11957398940394896128

namespace A139914

/-- `∩[A040119(n+1), A139852(n+1)]` -/
def P11957398940394896128.Spec : Prop :=
  ∀ n, (P11957398940394896128.a n : ℤ) = A139914 (n + 1)

end A139914

/-! ## A139914.P916572325252133715

`∩[A004628(n+1), A033245(n+1)]`
-/

namespace A139914.P916572325252133715
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004628 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033245 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139914.P916572325252133715

namespace A139914

/-- `∩[A004628(n+1), A033245(n+1)]` -/
def P916572325252133715.Spec : Prop :=
  ∀ n, (P916572325252133715.a n : ℤ) = A139914 (n + 1)

end A139914

/-! ## A139914.P5820804515417733803

`∩[A004628(n+1), A106881(n+1)]`
-/

namespace A139914.P5820804515417733803
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004628 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106881 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139914.P5820804515417733803

namespace A139914

/-- `∩[A004628(n+1), A106881(n+1)]` -/
def P5820804515417733803.Spec : Prop :=
  ∀ n, (P5820804515417733803.a n : ℤ) = A139914 (n + 1)

end A139914

/-!
# A139915: Primes of the form 5x^2+56y^2.

The programs for A139915, the canonical program `A139915.P6958585210119532422` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A139915 has offset 1).

The definition of A139915 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2506 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A139915.P11671089574698368211

`∩[A033205(n+1), A107179(n+1)]`
-/

namespace A139915.P11671089574698368211
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033205 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107179 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139915.P11671089574698368211

namespace A139915

/-- `∩[A033205(n+1), A107179(n+1)]` -/
def P11671089574698368211.Spec : Prop :=
  ∀ n, (P11671089574698368211.a n : ℤ) = A139915 (n + 1)

end A139915

/-! ## A139915.P17458891364023600283

`∩[A007521(n+1), A107179(n+1)]`
-/

namespace A139915.P17458891364023600283
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007521 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107179 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139915.P17458891364023600283

namespace A139915

/-- `∩[A007521(n+1), A107179(n+1)]` -/
def P17458891364023600283.Spec : Prop :=
  ∀ n, (P17458891364023600283.a n : ℤ) = A139915 (n + 1)

end A139915

/-! ## A139915.P1322421563864946019

`∩[A045366(n+1), A107179(n+1)]`
-/

namespace A139915.P1322421563864946019
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045366 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107179 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139915.P1322421563864946019

namespace A139915

/-- `∩[A045366(n+1), A107179(n+1)]` -/
def P1322421563864946019.Spec : Prop :=
  ∀ n, (P1322421563864946019.a n : ℤ) = A139915 (n + 1)

end A139915

/-! ## A139915.P14051019562481030288

`∩[A091729(n+1), A107179(n+1)]`
-/

namespace A139915.P14051019562481030288
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091729 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107179 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139915.P14051019562481030288

namespace A139915

/-- `∩[A091729(n+1), A107179(n+1)]` -/
def P14051019562481030288.Spec : Prop :=
  ∀ n, (P14051019562481030288.a n : ℤ) = A139915 (n + 1)

end A139915

/-! ## A139915.P6958585210119532422

`∩[A033205(n+1), A141191(n+1)]`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A139915

/-- `∩[A033205(n+1), A141191(n+1)]` -/
def P6958585210119532422.Spec : Prop :=
  ∀ n, (P6958585210119532422.a n : ℤ) = A139915 (n + 1)

theorem P6958585210119532422.correct : P6958585210119532422.Spec := by
  intro n
  simp only [A139915, Nat.add_sub_cancel]

end A139915

/-! ## A139915.P10497644433610206576

`∩[A091729(n+1), A141191(n+1)]`
-/

namespace A139915.P10497644433610206576
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091729 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141191 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139915.P10497644433610206576

namespace A139915

/-- `∩[A091729(n+1), A141191(n+1)]` -/
def P10497644433610206576.Spec : Prop :=
  ∀ n, (P10497644433610206576.a n : ℤ) = A139915 (n + 1)

end A139915

/-! ## A139915.P8201345585117616897

`∩[A107179(n+1), A141191(n+1)]`
-/

namespace A139915.P8201345585117616897
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107179 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141191 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139915.P8201345585117616897

namespace A139915

/-- `∩[A107179(n+1), A141191(n+1)]` -/
def P8201345585117616897.Spec : Prop :=
  ∀ n, (P8201345585117616897.a n : ℤ) = A139915 (n + 1)

end A139915

/-! ## A139915.P7975009712105247383

`∩[A033205(n+1), A106915(n+1)]`
-/

namespace A139915.P7975009712105247383
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033205 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106915 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139915.P7975009712105247383

namespace A139915

/-- `∩[A033205(n+1), A106915(n+1)]` -/
def P7975009712105247383.Spec : Prop :=
  ∀ n, (P7975009712105247383.a n : ℤ) = A139915 (n + 1)

end A139915

/-! ## A139915.P5018213788999778789

`∩[A091729(n+1), A106915(n+1)]`
-/

namespace A139915.P5018213788999778789
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091729 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106915 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139915.P5018213788999778789

namespace A139915

/-- `∩[A091729(n+1), A106915(n+1)]` -/
def P5018213788999778789.Spec : Prop :=
  ∀ n, (P5018213788999778789.a n : ℤ) = A139915 (n + 1)

end A139915

/-! ## A139915.P2210823649262845935

`∩[A107179(n+1), A385224(n+1)]`
-/

namespace A139915.P2210823649262845935
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107179 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385224 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139915.P2210823649262845935

namespace A139915

/-- `∩[A107179(n+1), A385224(n+1)]` -/
def P2210823649262845935.Spec : Prop :=
  ∀ n, (P2210823649262845935.a n : ℤ) = A139915 (n + 1)

end A139915

/-! ## A139915.P14902856505800704771

`∩[A107179(n+1), A392947(n+1)]`
-/

namespace A139915.P14902856505800704771
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107179 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392947 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139915.P14902856505800704771

namespace A139915

/-- `∩[A107179(n+1), A392947(n+1)]` -/
def P14902856505800704771.Spec : Prop :=
  ∀ n, (P14902856505800704771.a n : ℤ) = A139915 (n + 1)

end A139915

/-! ## A139915.P9156936248431340985

`∩[A004627(n+1), A107179(n+1)]`
-/

namespace A139915.P9156936248431340985
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004627 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107179 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139915.P9156936248431340985

namespace A139915

/-- `∩[A004627(n+1), A107179(n+1)]` -/
def P9156936248431340985.Spec : Prop :=
  ∀ n, (P9156936248431340985.a n : ℤ) = A139915 (n + 1)

end A139915

/-! ## A139915.P8487310917039078803

`∩[A038885(n+1), A107179(n+1)]`
-/

namespace A139915.P8487310917039078803
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038885 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107179 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139915.P8487310917039078803

namespace A139915

/-- `∩[A038885(n+1), A107179(n+1)]` -/
def P8487310917039078803.Spec : Prop :=
  ∀ n, (P8487310917039078803.a n : ℤ) = A139915 (n + 1)

end A139915

/-! ## A139915.P5726933193061997435

`∩[A107179(n+1), A240920(n+1)]`
-/

namespace A139915.P5726933193061997435
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107179 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240920 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139915.P5726933193061997435

namespace A139915

/-- `∩[A107179(n+1), A240920(n+1)]` -/
def P5726933193061997435.Spec : Prop :=
  ∀ n, (P5726933193061997435.a n : ℤ) = A139915 (n + 1)

end A139915

/-! ## A139915.P9959473078506890436

`∩[A107179(n+1), A296922(n+1)]`
-/

namespace A139915.P9959473078506890436
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107179 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296922 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139915.P9959473078506890436

namespace A139915

/-- `∩[A107179(n+1), A296922(n+1)]` -/
def P9959473078506890436.Spec : Prop :=
  ∀ n, (P9959473078506890436.a n : ℤ) = A139915 (n + 1)

end A139915

/-! ## A139915.P12778415787624286778

`∩[A002144(n+1), A107179(n+1)]`
-/

namespace A139915.P12778415787624286778
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002144 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107179 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139915.P12778415787624286778

namespace A139915

/-- `∩[A002144(n+1), A107179(n+1)]` -/
def P12778415787624286778.Spec : Prop :=
  ∀ n, (P12778415787624286778.a n : ℤ) = A139915 (n + 1)

end A139915

/-! ## A139915.P4441727437656335510

`∩[A002313(n+1), A107179(n+1)]`
-/

namespace A139915.P4441727437656335510
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002313 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107179 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139915.P4441727437656335510

namespace A139915

/-- `∩[A002313(n+1), A107179(n+1)]` -/
def P4441727437656335510.Spec : Prop :=
  ∀ n, (P4441727437656335510.a n : ℤ) = A139915 (n + 1)

end A139915

/-! ## A139915.P5019000800148123769

`∩[A107179(n+1), A280084(n+1)]`
-/

namespace A139915.P5019000800148123769
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107179 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280084 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139915.P5019000800148123769

namespace A139915

/-- `∩[A107179(n+1), A280084(n+1)]` -/
def P5019000800148123769.Spec : Prop :=
  ∀ n, (P5019000800148123769.a n : ℤ) = A139915 (n + 1)

end A139915

/-! ## A139915.P6282547147362930680

`∩[A038953(n+1), A107179(n+1)]`
-/

namespace A139915.P6282547147362930680
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038953 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107179 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139915.P6282547147362930680

namespace A139915

/-- `∩[A038953(n+1), A107179(n+1)]` -/
def P6282547147362930680.Spec : Prop :=
  ∀ n, (P6282547147362930680.a n : ℤ) = A139915 (n + 1)

end A139915

/-! ## A139915.P8690718388560387613

`∩[A003628(n+1), A107179(n+1)]`
-/

namespace A139915.P8690718388560387613
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003628 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107179 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139915.P8690718388560387613

namespace A139915

/-- `∩[A003628(n+1), A107179(n+1)]` -/
def P8690718388560387613.Spec : Prop :=
  ∀ n, (P8690718388560387613.a n : ℤ) = A139915 (n + 1)

end A139915

/-!
# A139916: Primes of the form 7x^2+40y^2.

The programs for A139916, the canonical program `A139916.P4993580715478633109` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A139916 has offset 1).

The definition of A139916 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4993 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A139916.P4993580715478633109

`∩[A107178(n+1), A139830(n+1)]`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A139916

/-- `∩[A107178(n+1), A139830(n+1)]` -/
def P4993580715478633109.Spec : Prop :=
  ∀ n, (P4993580715478633109.a n : ℤ) = A139916 (n + 1)

theorem P4993580715478633109.correct : P4993580715478633109.Spec := by
  intro n
  simp only [A139916, Nat.add_sub_cancel]

end A139916

/-! ## A139916.P10752328330881027224

`∩[A106878(n+1), A139830(n+1)]`
-/

namespace A139916.P10752328330881027224
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106878 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139830 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139916.P10752328330881027224

namespace A139916

/-- `∩[A106878(n+1), A139830(n+1)]` -/
def P10752328330881027224.Spec : Prop :=
  ∀ n, (P10752328330881027224.a n : ℤ) = A139916 (n + 1)

end A139916

/-! ## A139916.P12629843613717192865

`∩[A007522(n+1), A106878(n+1)]`
-/

namespace A139916.P12629843613717192865
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007522 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106878 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139916.P12629843613717192865

namespace A139916

/-- `∩[A007522(n+1), A106878(n+1)]` -/
def P12629843613717192865.Spec : Prop :=
  ∀ n, (P12629843613717192865.a n : ℤ) = A139916 (n + 1)

end A139916

/-! ## A139916.P8911553834182898418

`∩[A007522(n+1), A107178(n+1)]`
-/

namespace A139916.P8911553834182898418
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007522 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107178 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139916.P8911553834182898418

namespace A139916

/-- `∩[A007522(n+1), A107178(n+1)]` -/
def P8911553834182898418.Spec : Prop :=
  ∀ n, (P8911553834182898418.a n : ℤ) = A139916 (n + 1)

end A139916

/-! ## A139916.P4487047299327963924

`∩[A045382(n+1), A106878(n+1)]`
-/

namespace A139916.P4487047299327963924
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045382 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106878 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139916.P4487047299327963924

namespace A139916

/-- `∩[A045382(n+1), A106878(n+1)]` -/
def P4487047299327963924.Spec : Prop :=
  ∀ n, (P4487047299327963924.a n : ℤ) = A139916 (n + 1)

end A139916

/-! ## A139916.P9797698555893382885

`∩[A045382(n+1), A107178(n+1)]`
-/

namespace A139916.P9797698555893382885
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045382 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107178 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139916.P9797698555893382885

namespace A139916

/-- `∩[A045382(n+1), A107178(n+1)]` -/
def P9797698555893382885.Spec : Prop :=
  ∀ n, (P9797698555893382885.a n : ℤ) = A139916 (n + 1)

end A139916

/-! ## A139916.P11491455448025860238

`∩[A107178(n+1), A122870(n+1)]`
-/

namespace A139916.P11491455448025860238
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107178 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122870 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139916.P11491455448025860238

namespace A139916

/-- `∩[A107178(n+1), A122870(n+1)]` -/
def P11491455448025860238.Spec : Prop :=
  ∀ n, (P11491455448025860238.a n : ℤ) = A139916 (n + 1)

end A139916

/-! ## A139916.P6521425451440314225

`∩[A094712(n+1), A107178(n+1)]`
-/

namespace A139916.P6521425451440314225
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094712 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107178 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139916.P6521425451440314225

namespace A139916

/-- `∩[A094712(n+1), A107178(n+1)]` -/
def P6521425451440314225.Spec : Prop :=
  ∀ n, (P6521425451440314225.a n : ℤ) = A139916 (n + 1)

end A139916

/-! ## A139916.P17085382088678965957

`∩[A106865(n+1), A107178(n+1)]`
-/

namespace A139916.P17085382088678965957
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106865 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107178 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139916.P17085382088678965957

namespace A139916

/-- `∩[A106865(n+1), A107178(n+1)]` -/
def P17085382088678965957.Spec : Prop :=
  ∀ n, (P17085382088678965957.a n : ℤ) = A139916 (n + 1)

end A139916

/-! ## A139916.P4436519624459291819

`∩[A107178(n+1), A141173(n+1)]`
-/

namespace A139916.P4436519624459291819
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107178 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141173 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139916.P4436519624459291819

namespace A139916

/-- `∩[A107178(n+1), A141173(n+1)]` -/
def P4436519624459291819.Spec : Prop :=
  ∀ n, (P4436519624459291819.a n : ℤ) = A139916 (n + 1)

end A139916

/-! ## A139916.P5910700759413155350

`∩[A139830(n+1), A141173(n+1)]`
-/

namespace A139916.P5910700759413155350
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139830 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141173 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139916.P5910700759413155350

namespace A139916

/-- `∩[A139830(n+1), A141173(n+1)]` -/
def P5910700759413155350.Spec : Prop :=
  ∀ n, (P5910700759413155350.a n : ℤ) = A139916 (n + 1)

end A139916

/-! ## A139916.P10999826273758151132

`∩[A106865(n+1), A141191(n+1)]`
-/

namespace A139916.P10999826273758151132
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106865 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141191 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139916.P10999826273758151132

namespace A139916

/-- `∩[A106865(n+1), A141191(n+1)]` -/
def P10999826273758151132.Spec : Prop :=
  ∀ n, (P10999826273758151132.a n : ℤ) = A139916 (n + 1)

end A139916

/-! ## A139916.P7499067538867323298

`∩[A107178(n+1), A141191(n+1)]`
-/

namespace A139916.P7499067538867323298
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107178 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141191 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139916.P7499067538867323298

namespace A139916

/-- `∩[A107178(n+1), A141191(n+1)]` -/
def P7499067538867323298.Spec : Prop :=
  ∀ n, (P7499067538867323298.a n : ℤ) = A139916 (n + 1)

end A139916

/-! ## A139916.P17046669444705904564

`∩[A122870(n+1), A141191(n+1)]`
-/

namespace A139916.P17046669444705904564
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122870 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141191 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139916.P17046669444705904564

namespace A139916

/-- `∩[A122870(n+1), A141191(n+1)]` -/
def P17046669444705904564.Spec : Prop :=
  ∀ n, (P17046669444705904564.a n : ℤ) = A139916 (n + 1)

end A139916

/-! ## A139916.P3744426926900408942

`∩[A139830(n+1), A141191(n+1)]`
-/

namespace A139916.P3744426926900408942
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139830 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141191 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139916.P3744426926900408942

namespace A139916

/-- `∩[A139830(n+1), A141191(n+1)]` -/
def P3744426926900408942.Spec : Prop :=
  ∀ n, (P3744426926900408942.a n : ℤ) = A139916 (n + 1)

end A139916

/-! ## A139916.P2610286616441667106

`∩[A106889(n+1), A107178(n+1)]`
-/

namespace A139916.P2610286616441667106
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106889 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107178 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139916.P2610286616441667106

namespace A139916

/-- `∩[A106889(n+1), A107178(n+1)]` -/
def P2610286616441667106.Spec : Prop :=
  ∀ n, (P2610286616441667106.a n : ℤ) = A139916 (n + 1)

end A139916

/-! ## A139916.P15722629826684640818

`∩[A106889(n+1), A141173(n+1)]`
-/

namespace A139916.P15722629826684640818
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106889 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141173 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139916.P15722629826684640818

namespace A139916

/-- `∩[A106889(n+1), A141173(n+1)]` -/
def P15722629826684640818.Spec : Prop :=
  ∀ n, (P15722629826684640818.a n : ℤ) = A139916 (n + 1)

end A139916

/-! ## A139916.P6003430179016888860

`∩[A107178(n+1), A385225(n+1)]`
-/

namespace A139916.P6003430179016888860
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107178 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385225 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139916.P6003430179016888860

namespace A139916

/-- `∩[A107178(n+1), A385225(n+1)]` -/
def P6003430179016888860.Spec : Prop :=
  ∀ n, (P6003430179016888860.a n : ℤ) = A139916 (n + 1)

end A139916

/-! ## A139916.P14058773666419766270

`∩[A053027(n+1), A107178(n+1)]`
-/

namespace A139916.P14058773666419766270
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053027 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107178 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139916.P14058773666419766270

namespace A139916

/-- `∩[A053027(n+1), A107178(n+1)]` -/
def P14058773666419766270.Spec : Prop :=
  ∀ n, (P14058773666419766270.a n : ℤ) = A139916 (n + 1)

end A139916

/-! ## A139916.P8242467478646800802

`∩[A053027(n+1), A141191(n+1)]`
-/

namespace A139916.P8242467478646800802
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053027 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141191 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139916.P8242467478646800802

namespace A139916

/-- `∩[A053027(n+1), A141191(n+1)]` -/
def P8242467478646800802.Spec : Prop :=
  ∀ n, (P8242467478646800802.a n : ℤ) = A139916 (n + 1)

end A139916

/-!
# A139917: Primes of the form 8x^2+35y^2.

The programs for A139917, the canonical program `A139917.P6603706917058125727` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A139917 has offset 1).

The definition of A139917 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5014 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A139917.P6603706917058125727

`A107180(lt[1, A107180(n+2)%4]+2)`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A139917

/-- `A107180(lt[1, A107180(n+2)%4]+2)` -/
def P6603706917058125727.Spec : Prop :=
  ∀ n, P6603706917058125727.a n = A139917 (n + 1)

theorem P6603706917058125727.correct : P6603706917058125727.Spec := by
  intro n
  simp only [A139917, Nat.add_sub_cancel]

end A139917

/-! ## A139917.P9337308400306664470

`∩[A107180(n+1), A139853(n+1)]`
-/

namespace A139917.P9337308400306664470
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107180 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139853 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139917.P9337308400306664470

namespace A139917

/-- `∩[A107180(n+1), A139853(n+1)]` -/
def P9337308400306664470.Spec : Prop :=
  ∀ n, (P9337308400306664470.a n : ℤ) = A139917 (n + 1)

end A139917

/-! ## A139917.P16971576418307329868

`∩[A139853(n+1), A141179(n+1)]`
-/

namespace A139917.P16971576418307329868
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139853 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141179 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139917.P16971576418307329868

namespace A139917

/-- `∩[A139853(n+1), A141179(n+1)]` -/
def P16971576418307329868.Spec : Prop :=
  ∀ n, (P16971576418307329868.a n : ℤ) = A139917 (n + 1)

end A139917

/-! ## A139917.P13498378224007933226

`∩[A107133(n+1), A107180(n+1)]`
-/

namespace A139917.P13498378224007933226
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107133 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107180 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139917.P13498378224007933226

namespace A139917

/-- `∩[A107133(n+1), A107180(n+1)]` -/
def P13498378224007933226.Spec : Prop :=
  ∀ n, (P13498378224007933226.a n : ℤ) = A139917 (n + 1)

end A139917

/-! ## A139917.P3552327484566806748

`∩[A107133(n+1), A141179(n+1)]`
-/

namespace A139917.P3552327484566806748
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107133 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141179 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139917.P3552327484566806748

namespace A139917

/-- `∩[A107133(n+1), A141179(n+1)]` -/
def P3552327484566806748.Spec : Prop :=
  ∀ n, (P3552327484566806748.a n : ℤ) = A139917 (n + 1)

end A139917

/-! ## A139917.P7791237019547324532

`∩[A107180(n+1), A122870(n+1)]`
-/

namespace A139917.P7791237019547324532
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107180 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122870 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139917.P7791237019547324532

namespace A139917

/-- `∩[A107180(n+1), A122870(n+1)]` -/
def P7791237019547324532.Spec : Prop :=
  ∀ n, (P7791237019547324532.a n : ℤ) = A139917 (n + 1)

end A139917

/-! ## A139917.P10432070533953058478

`∩[A106865(n+1), A139853(n+1)]`
-/

namespace A139917.P10432070533953058478
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106865 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139853 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139917.P10432070533953058478

namespace A139917

/-- `∩[A106865(n+1), A139853(n+1)]` -/
def P10432070533953058478.Spec : Prop :=
  ∀ n, (P10432070533953058478.a n : ℤ) = A139917 (n + 1)

end A139917

/-! ## A139917.P200547476537518

`∩[A122870(n+1), A139853(n+1)]`
-/

namespace A139917.P200547476537518
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122870 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139853 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139917.P200547476537518

namespace A139917

/-- `∩[A122870(n+1), A139853(n+1)]` -/
def P200547476537518.Spec : Prop :=
  ∀ n, (P200547476537518.a n : ℤ) = A139917 (n + 1)

end A139917

/-! ## A139917.P3707712569110572509

`∩[A122870(n+1), A141190(n+1)]`
-/

namespace A139917.P3707712569110572509
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122870 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141190 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139917.P3707712569110572509

namespace A139917

/-- `∩[A122870(n+1), A141190(n+1)]` -/
def P3707712569110572509.Spec : Prop :=
  ∀ n, (P3707712569110572509.a n : ℤ) = A139917 (n + 1)

end A139917

/-! ## A139917.P11709534604540775804

`∩[A007520(n+1), A107180(n+1)]`
-/

namespace A139917.P11709534604540775804
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007520 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107180 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139917.P11709534604540775804

namespace A139917

/-- `∩[A007520(n+1), A107180(n+1)]` -/
def P11709534604540775804.Spec : Prop :=
  ∀ n, (P11709534604540775804.a n : ℤ) = A139917 (n + 1)

end A139917

/-! ## A139917.P16109174358122511541

`∩[A107180(n+1), A332446(n+1)]`
-/

namespace A139917.P16109174358122511541
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107180 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332446 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139917.P16109174358122511541

namespace A139917

/-- `∩[A107180(n+1), A332446(n+1)]` -/
def P16109174358122511541.Spec : Prop :=
  ∀ n, (P16109174358122511541.a n : ℤ) = A139917 (n + 1)

end A139917

/-! ## A139917.P9706328519391677495

`∩[A107180(n+1), A163183(n+1)]`
-/

namespace A139917.P9706328519391677495
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107180 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163183 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139917.P9706328519391677495

namespace A139917

/-- `∩[A107180(n+1), A163183(n+1)]` -/
def P9706328519391677495.Spec : Prop :=
  ∀ n, (P9706328519391677495.a n : ℤ) = A139917 (n + 1)

end A139917

/-! ## A139917.P1604681417383940248

`∩[A107133(n+1), A128288(n+2)]`
-/

namespace A139917.P1604681417383940248
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107133 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128288 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139917.P1604681417383940248

namespace A139917

/-- `∩[A107133(n+1), A128288(n+2)]` -/
def P1604681417383940248.Spec : Prop :=
  ∀ n, (P1604681417383940248.a n : ℤ) = A139917 (n + 1)

end A139917

/-! ## A139917.P6676552613898472786

`∩[A139853(n+1), A128288(n+2)]`
-/

namespace A139917.P6676552613898472786
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139853 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128288 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139917.P6676552613898472786

namespace A139917

/-- `∩[A139853(n+1), A128288(n+2)]` -/
def P6676552613898472786.Spec : Prop :=
  ∀ n, (P6676552613898472786.a n : ℤ) = A139917 (n + 1)

end A139917

/-! ## A139917.P3129273552235072095

`∩[A141190(n+1), A128288(n+2)]`
-/

namespace A139917.P3129273552235072095
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141190 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128288 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139917.P3129273552235072095

namespace A139917

/-- `∩[A141190(n+1), A128288(n+2)]` -/
def P3129273552235072095.Spec : Prop :=
  ∀ n, (P3129273552235072095.a n : ℤ) = A139917 (n + 1)

end A139917

/-! ## A139917.P1561432827958073204

`∩[A139853(n+1), A385225(n+1)]`
-/

namespace A139917.P1561432827958073204
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139853 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385225 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139917.P1561432827958073204

namespace A139917

/-- `∩[A139853(n+1), A385225(n+1)]` -/
def P1561432827958073204.Spec : Prop :=
  ∀ n, (P1561432827958073204.a n : ℤ) = A139917 (n + 1)

end A139917

/-! ## A139917.P10957252263176009992

`∩[A053027(n+1), A107180(n+1)]`
-/

namespace A139917.P10957252263176009992
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053027 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107180 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139917.P10957252263176009992

namespace A139917

/-- `∩[A053027(n+1), A107180(n+1)]` -/
def P10957252263176009992.Spec : Prop :=
  ∀ n, (P10957252263176009992.a n : ℤ) = A139917 (n + 1)

end A139917

/-! ## A139917.P11673924901924587137

`∩[A053027(n+1), A139853(n+1)]`
-/

namespace A139917.P11673924901924587137
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053027 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139853 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139917.P11673924901924587137

namespace A139917

/-- `∩[A053027(n+1), A139853(n+1)]` -/
def P11673924901924587137.Spec : Prop :=
  ∀ n, (P11673924901924587137.a n : ℤ) = A139917 (n + 1)

end A139917

/-! ## A139917.P6559276000521556375

`∩[A107180(n+1), A192717(n+1)]`
-/

namespace A139917.P6559276000521556375
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107180 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192717 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139917.P6559276000521556375

namespace A139917

/-- `∩[A107180(n+1), A192717(n+1)]` -/
def P6559276000521556375.Spec : Prop :=
  ∀ n, (P6559276000521556375.a n : ℤ) = A139917 (n + 1)

end A139917

/-! ## A139917.P15205892656489597320

`∩[A040119(n+1), A139853(n+1)]`
-/

namespace A139917.P15205892656489597320
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040119 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139853 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139917.P15205892656489597320

namespace A139917

/-- `∩[A040119(n+1), A139853(n+1)]` -/
def P15205892656489597320.Spec : Prop :=
  ∀ n, (P15205892656489597320.a n : ℤ) = A139917 (n + 1)

end A139917

/-!
# A139918: Primes of the form 8x^2+8xy+37y^2.

The programs for A139918, the canonical program `A139918.P10035203543490723934` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A139918 has offset 1).

The definition of A139918 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4985 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A139918.P10035203543490723934

`∩[A107180(n+1), A139851(n+1)]`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A139918

/-- `∩[A107180(n+1), A139851(n+1)]` -/
def P10035203543490723934.Spec : Prop :=
  ∀ n, (P10035203543490723934.a n : ℤ) = A139918 (n + 1)

theorem P10035203543490723934.correct : P10035203543490723934.Spec := by
  intro n
  simp only [A139918, Nat.add_sub_cancel]

end A139918

/-! ## A139918.P10308348476459138460

`∩[A107144(n+1), A107180(n+1)]`
-/

namespace A139918.P10308348476459138460
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107144 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107180 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139918.P10308348476459138460

namespace A139918

/-- `∩[A107144(n+1), A107180(n+1)]` -/
def P10308348476459138460.Spec : Prop :=
  ∀ n, (P10308348476459138460.a n : ℤ) = A139918 (n + 1)

end A139918

/-! ## A139918.P7134443629219146254

`∩[A107144(n+1), A139851(n+1)]`
-/

namespace A139918.P7134443629219146254
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107144 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139851 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139918.P7134443629219146254

namespace A139918

/-- `∩[A107144(n+1), A139851(n+1)]` -/
def P7134443629219146254.Spec : Prop :=
  ∀ n, (P7134443629219146254.a n : ℤ) = A139918 (n + 1)

end A139918

/-! ## A139918.P8982997075178850844

`∩[A107134(n+1), A107144(n+1)]`
-/

namespace A139918.P8982997075178850844
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107134 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107144 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139918.P8982997075178850844

namespace A139918

/-- `∩[A107134(n+1), A107144(n+1)]` -/
def P8982997075178850844.Spec : Prop :=
  ∀ n, (P8982997075178850844.a n : ℤ) = A139918 (n + 1)

end A139918

/-! ## A139918.P1387251712865976985

`∩[A107134(n+1), A107180(n+1)]`
-/

namespace A139918.P1387251712865976985
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107134 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107180 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139918.P1387251712865976985

namespace A139918

/-- `∩[A107134(n+1), A107180(n+1)]` -/
def P1387251712865976985.Spec : Prop :=
  ∀ n, (P1387251712865976985.a n : ℤ) = A139918 (n + 1)

end A139918

/-! ## A139918.P1486998050357421915

`∩[A107144(n+1), A141172(n+1)]`
-/

namespace A139918.P1486998050357421915
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107144 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141172 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139918.P1486998050357421915

namespace A139918

/-- `∩[A107144(n+1), A141172(n+1)]` -/
def P1486998050357421915.Spec : Prop :=
  ∀ n, (P1486998050357421915.a n : ℤ) = A139918 (n + 1)

end A139918

/-! ## A139918.P934960424527666021

`∩[A107134(n+1), A141179(n+1)]`
-/

namespace A139918.P934960424527666021
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107134 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141179 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139918.P934960424527666021

namespace A139918

/-- `∩[A107134(n+1), A141179(n+1)]` -/
def P934960424527666021.Spec : Prop :=
  ∀ n, (P934960424527666021.a n : ℤ) = A139918 (n + 1)

end A139918

/-! ## A139918.P9075119496390171485

`∩[A122487(n+1), A139851(n+1)]`
-/

namespace A139918.P9075119496390171485
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122487 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139851 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139918.P9075119496390171485

namespace A139918

/-- `∩[A122487(n+1), A139851(n+1)]` -/
def P9075119496390171485.Spec : Prop :=
  ∀ n, (P9075119496390171485.a n : ℤ) = A139918 (n + 1)

end A139918

/-! ## A139918.P1716673827650051107

`∩[A139851(n+1), A141179(n+1)]`
-/

namespace A139918.P1716673827650051107
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139851 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141179 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139918.P1716673827650051107

namespace A139918

/-- `∩[A139851(n+1), A141179(n+1)]` -/
def P1716673827650051107.Spec : Prop :=
  ∀ n, (P1716673827650051107.a n : ℤ) = A139918 (n + 1)

end A139918

/-! ## A139918.P6166910529065292663

`∩[A007521(n+1), A107180(n+1)]`
-/

namespace A139918.P6166910529065292663
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007521 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107180 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139918.P6166910529065292663

namespace A139918

/-- `∩[A007521(n+1), A107180(n+1)]` -/
def P6166910529065292663.Spec : Prop :=
  ∀ n, (P6166910529065292663.a n : ℤ) = A139918 (n + 1)

end A139918

/-! ## A139918.P5503109145832949369

`∩[A106889(n+1), A107134(n+1)]`
-/

namespace A139918.P5503109145832949369
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106889 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107134 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139918.P5503109145832949369

namespace A139918

/-- `∩[A106889(n+1), A107134(n+1)]` -/
def P5503109145832949369.Spec : Prop :=
  ∀ n, (P5503109145832949369.a n : ℤ) = A139918 (n + 1)

end A139918

/-! ## A139918.P16483057399360913474

`∩[A106889(n+1), A139851(n+1)]`
-/

namespace A139918.P16483057399360913474
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106889 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139851 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139918.P16483057399360913474

namespace A139918

/-- `∩[A106889(n+1), A139851(n+1)]` -/
def P16483057399360913474.Spec : Prop :=
  ∀ n, (P16483057399360913474.a n : ℤ) = A139918 (n + 1)

end A139918

/-! ## A139918.P3949180036931596641

`∩[A107134(n+1), A128288(n+2)]`
-/

namespace A139918.P3949180036931596641
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107134 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128288 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139918.P3949180036931596641

namespace A139918

/-- `∩[A107134(n+1), A128288(n+2)]` -/
def P3949180036931596641.Spec : Prop :=
  ∀ n, (P3949180036931596641.a n : ℤ) = A139918 (n + 1)

end A139918

/-! ## A139918.P7054935118906265356

`∩[A139851(n+1), A128288(n+2)]`
-/

namespace A139918.P7054935118906265356
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139851 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128288 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139918.P7054935118906265356

namespace A139918

/-- `∩[A139851(n+1), A128288(n+2)]` -/
def P7054935118906265356.Spec : Prop :=
  ∀ n, (P7054935118906265356.a n : ℤ) = A139918 (n + 1)

end A139918

/-! ## A139918.P2024005201371581601

`∩[A141172(n+1), A128288(n+2)]`
-/

namespace A139918.P2024005201371581601
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141172 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128288 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139918.P2024005201371581601

namespace A139918

/-- `∩[A141172(n+1), A128288(n+2)]` -/
def P2024005201371581601.Spec : Prop :=
  ∀ n, (P2024005201371581601.a n : ℤ) = A139918 (n + 1)

end A139918

/-! ## A139918.P12535051859989677390

`∩[A053028(n+1), A107180(n+1)]`
-/

namespace A139918.P12535051859989677390
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053028 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107180 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139918.P12535051859989677390

namespace A139918

/-- `∩[A053028(n+1), A107180(n+1)]` -/
def P12535051859989677390.Spec : Prop :=
  ∀ n, (P12535051859989677390.a n : ℤ) = A139918 (n + 1)

end A139918

/-! ## A139918.P8042350093535949419

`∩[A107180(n+1), A385224(n+1)]`
-/

namespace A139918.P8042350093535949419
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107180 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385224 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139918.P8042350093535949419

namespace A139918

/-- `∩[A107180(n+1), A385224(n+1)]` -/
def P8042350093535949419.Spec : Prop :=
  ∀ n, (P8042350093535949419.a n : ℤ) = A139918 (n + 1)

end A139918

/-! ## A139918.P4330381943860697755

`∩[A107180(n+1), A392947(n+1)]`
-/

namespace A139918.P4330381943860697755
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107180 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392947 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139918.P4330381943860697755

namespace A139918

/-- `∩[A107180(n+1), A392947(n+1)]` -/
def P4330381943860697755.Spec : Prop :=
  ∀ n, (P4330381943860697755.a n : ℤ) = A139918 (n + 1)

end A139918

/-! ## A139918.P13952310177974136651

`∩[A107180(n+1), A395264(n+1)]`
-/

namespace A139918.P13952310177974136651
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107180 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395264 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139918.P13952310177974136651

namespace A139918

/-- `∩[A107180(n+1), A395264(n+1)]` -/
def P13952310177974136651.Spec : Prop :=
  ∀ n, (P13952310177974136651.a n : ℤ) = A139918 (n + 1)

end A139918

/-! ## A139918.P10483179550217317643

`∩[A004627(n+1), A107180(n+1)]`
-/

namespace A139918.P10483179550217317643
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004627 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107180 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139918.P10483179550217317643

namespace A139918

/-- `∩[A004627(n+1), A107180(n+1)]` -/
def P10483179550217317643.Spec : Prop :=
  ∀ n, (P10483179550217317643.a n : ℤ) = A139918 (n + 1)

end A139918

/-!
# A139919: Primes of the form 17x^2+6xy+17y^2.

The programs for A139919, the canonical program `A139919.P16813899981993222055` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A139919 has offset 1).

The definition of A139919 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2499 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A139919.P16813899981993222055

`∩[A007519(n+1), A107178(n+1)]`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A139919

/-- `∩[A007519(n+1), A107178(n+1)]` -/
def P16813899981993222055.Spec : Prop :=
  ∀ n, (P16813899981993222055.a n : ℤ) = A139919 (n + 1)

theorem P16813899981993222055.correct : P16813899981993222055.Spec := by
  intro n
  simp only [A139919, Nat.add_sub_cancel]

end A139919

/-! ## A139919.P15345148378807301108

`∩[A045390(n+1), A107178(n+1)]`
-/

namespace A139919.P15345148378807301108
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045390 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107178 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139919.P15345148378807301108

namespace A139919

/-- `∩[A045390(n+1), A107178(n+1)]` -/
def P15345148378807301108.Spec : Prop :=
  ∀ n, (P15345148378807301108.a n : ℤ) = A139919 (n + 1)

end A139919

/-! ## A139919.P7156870935557288572

`∩[A107178(n+1), A209544(n+1)]`
-/

namespace A139919.P7156870935557288572
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107178 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209544 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139919.P7156870935557288572

namespace A139919

/-- `∩[A107178(n+1), A209544(n+1)]` -/
def P7156870935557288572.Spec : Prop :=
  ∀ n, (P7156870935557288572.a n : ℤ) = A139919 (n + 1)

end A139919

/-! ## A139919.P10081089015668178886

`∩[A107178(n+1), A122487(n+1)]`
-/

namespace A139919.P10081089015668178886
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107178 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122487 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139919.P10081089015668178886

namespace A139919

/-- `∩[A107178(n+1), A122487(n+1)]` -/
def P10081089015668178886.Spec : Prop :=
  ∀ n, (P10081089015668178886.a n : ℤ) = A139919 (n + 1)

end A139919

/-! ## A139919.P8471550000823727008

`∩[A007519(n+1), A106878(n+1)]`
-/

namespace A139919.P8471550000823727008
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007519 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106878 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139919.P8471550000823727008

namespace A139919

/-- `∩[A007519(n+1), A106878(n+1)]` -/
def P8471550000823727008.Spec : Prop :=
  ∀ n, (P8471550000823727008.a n : ℤ) = A139919 (n + 1)

end A139919

/-! ## A139919.P8592573945765580577

`∩[A045390(n+1), A106878(n+1)]`
-/

namespace A139919.P8592573945765580577
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045390 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106878 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139919.P8592573945765580577

namespace A139919

/-- `∩[A045390(n+1), A106878(n+1)]` -/
def P8592573945765580577.Spec : Prop :=
  ∀ n, (P8592573945765580577.a n : ℤ) = A139919 (n + 1)

end A139919

/-! ## A139919.P5432009957465229218

`∩[A004625(n+1), A106878(n+1)]`
-/

namespace A139919.P5432009957465229218
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004625 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106878 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139919.P5432009957465229218

namespace A139919

/-- `∩[A004625(n+1), A106878(n+1)]` -/
def P5432009957465229218.Spec : Prop :=
  ∀ n, (P5432009957465229218.a n : ℤ) = A139919 (n + 1)

end A139919

/-! ## A139919.P11682081625295026282

`∩[A004625(n+1), A107178(n+1)]`
-/

namespace A139919.P11682081625295026282
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004625 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107178 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139919.P11682081625295026282

namespace A139919

/-- `∩[A004625(n+1), A107178(n+1)]` -/
def P11682081625295026282.Spec : Prop :=
  ∀ n, (P11682081625295026282.a n : ℤ) = A139919 (n + 1)

end A139919

/-! ## A139919.P9540294152149111888

`∩[A106878(n+1), A332227(n+1)]`
-/

namespace A139919.P9540294152149111888
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106878 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332227 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139919.P9540294152149111888

namespace A139919

/-- `∩[A106878(n+1), A332227(n+1)]` -/
def P9540294152149111888.Spec : Prop :=
  ∀ n, (P9540294152149111888.a n : ℤ) = A139919 (n + 1)

end A139919

/-! ## A139919.P891729417521009555

`∩[A107178(n+1), A332227(n+1)]`
-/

namespace A139919.P891729417521009555
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107178 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332227 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139919.P891729417521009555

namespace A139919

/-- `∩[A107178(n+1), A332227(n+1)]` -/
def P891729417521009555.Spec : Prop :=
  ∀ n, (P891729417521009555.a n : ℤ) = A139919 (n + 1)

end A139919

/-! ## A139919.P16737451251660340577

`∩[A053028(n+1), A107178(n+1)]`
-/

namespace A139919.P16737451251660340577
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053028 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107178 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139919.P16737451251660340577

namespace A139919

/-- `∩[A053028(n+1), A107178(n+1)]` -/
def P16737451251660340577.Spec : Prop :=
  ∀ n, (P16737451251660340577.a n : ℤ) = A139919 (n + 1)

end A139919

/-! ## A139919.P8417268169764055933

`∩[A106878(n+1), A263011(n+1)]`
-/

namespace A139919.P8417268169764055933
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106878 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263011 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139919.P8417268169764055933

namespace A139919

/-- `∩[A106878(n+1), A263011(n+1)]` -/
def P8417268169764055933.Spec : Prop :=
  ∀ n, (P8417268169764055933.a n : ℤ) = A139919 (n + 1)

end A139919

/-! ## A139919.P17719711301660288446

`∩[A107178(n+1), A263011(n+1)]`
-/

namespace A139919.P17719711301660288446
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107178 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263011 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139919.P17719711301660288446

namespace A139919

/-- `∩[A107178(n+1), A263011(n+1)]` -/
def P17719711301660288446.Spec : Prop :=
  ∀ n, (P17719711301660288446.a n : ℤ) = A139919 (n + 1)

end A139919

/-! ## A139919.P1715432579817078650

`∩[A051074(n+1), A107178(n+1)]`
-/

namespace A139919.P1715432579817078650
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051074 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107178 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139919.P1715432579817078650

namespace A139919

/-- `∩[A051074(n+1), A107178(n+1)]` -/
def P1715432579817078650.Spec : Prop :=
  ∀ n, (P1715432579817078650.a n : ℤ) = A139919 (n + 1)

end A139919

/-! ## A139919.P4136365359340822141

`∩[A002144(n+1), A107178(n+1)]`
-/

namespace A139919.P4136365359340822141
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002144 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107178 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139919.P4136365359340822141

namespace A139919

/-- `∩[A002144(n+1), A107178(n+1)]` -/
def P4136365359340822141.Spec : Prop :=
  ∀ n, (P4136365359340822141.a n : ℤ) = A139919 (n + 1)

end A139919

/-! ## A139919.P13899926227001449395

`∩[A033200(n+1), A107178(n+1)]`
-/

namespace A139919.P13899926227001449395
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033200 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107178 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139919.P13899926227001449395

namespace A139919

/-- `∩[A033200(n+1), A107178(n+1)]` -/
def P13899926227001449395.Spec : Prop :=
  ∀ n, (P13899926227001449395.a n : ℤ) = A139919 (n + 1)

end A139919

/-! ## A139919.P8445553736639953631

`∩[A033203(n+1), A107178(n+1)]`
-/

namespace A139919.P8445553736639953631
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033203 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107178 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139919.P8445553736639953631

namespace A139919

/-- `∩[A033203(n+1), A107178(n+1)]` -/
def P8445553736639953631.Spec : Prop :=
  ∀ n, (P8445553736639953631.a n : ℤ) = A139919 (n + 1)

end A139919

/-! ## A139919.P5566852530125415651

`∩[A002313(n+1), A107178(n+1)]`
-/

namespace A139919.P5566852530125415651
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002313 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107178 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139919.P5566852530125415651

namespace A139919

/-- `∩[A002313(n+1), A107178(n+1)]` -/
def P5566852530125415651.Spec : Prop :=
  ∀ n, (P5566852530125415651.a n : ℤ) = A139919 (n + 1)

end A139919

/-! ## A139919.P5408506777127127622

`∩[A107178(n+1), A280084(n+1)]`
-/

namespace A139919.P5408506777127127622
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107178 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280084 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139919.P5408506777127127622

namespace A139919

/-- `∩[A107178(n+1), A280084(n+1)]` -/
def P5408506777127127622.Spec : Prop :=
  ∀ n, (P5408506777127127622.a n : ℤ) = A139919 (n + 1)

end A139919

/-! ## A139919.P3210844343378944035

`∩[A003632(n+1), A107178(n+1)]`
-/

namespace A139919.P3210844343378944035
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003632 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107178 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139919.P3210844343378944035

namespace A139919

/-- `∩[A003632(n+1), A107178(n+1)]` -/
def P3210844343378944035.Spec : Prop :=
  ∀ n, (P3210844343378944035.a n : ℤ) = A139919 (n + 1)

end A139919

/-!
# A139920: Primes of the form 19x^2+18xy+19y^2.

The programs for A139920, there is no canonical definition to state claims against.
-/

/-! ## A139920.P16688757632118929885

`∪[A139994(n+1), A140624(n+1)]`
-/

namespace A139920.P16688757632118929885
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139994 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140624 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A139920.P16688757632118929885

/-! ## A139920.P12427893266754992746

`∩[A107179(n+1), A139829(n+1)]`
-/

namespace A139920.P12427893266754992746
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107179 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139829 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139920.P12427893266754992746

/-! ## A139920.P5844564008617081659

`∩[A033201(n+1), A107179(n+1)]`
-/

namespace A139920.P5844564008617081659
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033201 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107179 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139920.P5844564008617081659

/-! ## A139920.P8764307412044765986

`∩[A107179(n+1), A122869(n+1)]`
-/

namespace A139920.P8764307412044765986
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107179 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122869 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139920.P8764307412044765986

/-! ## A139920.P9231519888786370048

`∩[A007520(n+1), A107179(n+1)]`
-/

namespace A139920.P9231519888786370048
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007520 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107179 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139920.P9231519888786370048

/-! ## A139920.P11458502102166733369

`∩[A045339(n+1), A107179(n+1)]`
-/

namespace A139920.P11458502102166733369
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045339 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107179 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139920.P11458502102166733369

/-! ## A139920.P11123182174320121813

`∩[A033201(n+1), A141173(n+1)]`
-/

namespace A139920.P11123182174320121813
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033201 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141173 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139920.P11123182174320121813

/-! ## A139920.P2962407610809878765

`∩[A107179(n+1), A141173(n+1)]`
-/

namespace A139920.P2962407610809878765
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107179 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141173 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139920.P2962407610809878765

/-! ## A139920.P11346451230131898340

`∩[A139829(n+1), A141173(n+1)]`
-/

namespace A139920.P11346451230131898340
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139829 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141173 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139920.P11346451230131898340

/-! ## A139920.P3945406675626294080

`∩[A033201(n+1), A106915(n+1)]`
-/

namespace A139920.P3945406675626294080
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033201 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106915 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139920.P3945406675626294080

/-! ## A139920.P7698180868453026119

`∩[A106915(n+1), A122869(n+1)]`
-/

namespace A139920.P7698180868453026119
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106915 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122869 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139920.P7698180868453026119

/-! ## A139920.P441476881412124953

`∩[A106915(n+1), A139829(n+1)]`
-/

namespace A139920.P441476881412124953
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106915 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139829 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139920.P441476881412124953

/-! ## A139920.P9510529969361946351

`∩[A107179(n+1), A332446(n+1)]`
-/

namespace A139920.P9510529969361946351
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107179 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332446 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139920.P9510529969361946351

/-! ## A139920.P3944176610121806778

`∩[A107179(n+1), A163183(n+1)]`
-/

namespace A139920.P3944176610121806778
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107179 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163183 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139920.P3944176610121806778

/-! ## A139920.P12834897353901529987

`∩[A095282(n+1), A107179(n+1)]`
-/

namespace A139920.P12834897353901529987
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095282 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107179 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139920.P12834897353901529987

/-! ## A139920.P13022229471160846362

`∩[A107179(n+1), A192717(n+1)]`
-/

namespace A139920.P13022229471160846362
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107179 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192717 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139920.P13022229471160846362

/-! ## A139920.P15945992863731338107

`∩[A051071(n+1), A107179(n+1)]`
-/

namespace A139920.P15945992863731338107
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051071 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107179 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139920.P15945992863731338107

/-! ## A139920.P10843004825604444764

`∩[A040112(n+1), A107179(n+1)]`
-/

namespace A139920.P10843004825604444764
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040112 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107179 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139920.P10843004825604444764

/-! ## A139920.P2596953705007445783

`∩[A040112(n+1), A139829(n+1)]`
-/

namespace A139920.P2596953705007445783
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040112 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139829 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139920.P2596953705007445783

/-! ## A139920.P8950302915057027889

`∩[A051073(n+1), A107179(n+1)]`
-/

namespace A139920.P8950302915057027889
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051073 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107179 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139920.P8950302915057027889

/-!
# A139921: Primes of the form 3x^2+104y^2.

The programs for A139921, there is no canonical definition to state claims against.
-/

/-! ## A139921.P15139109605894958128

`∩[A107007(n+1), A107189(n+1)]`
-/

namespace A139921.P15139109605894958128
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107007 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107189 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139921.P15139109605894958128

/-! ## A139921.P3583723372705772128

`∩[A107189(n+1), A141123(n+1)]`
-/

namespace A139921.P3583723372705772128
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107189 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141123 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139921.P3583723372705772128

/-! ## A139921.P289498712629121275

`∩[A107189(n+1), A141187(n+1)]`
-/

namespace A139921.P289498712629121275
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107189 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141187 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139921.P289498712629121275

/-! ## A139921.P9078507266877850560

`∩[A007520(n+1), A107189(n+1)]`
-/

namespace A139921.P9078507266877850560
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007520 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107189 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139921.P9078507266877850560

/-! ## A139921.P14950907407037227720

`∩[A045339(n+1), A107189(n+1)]`
-/

namespace A139921.P14950907407037227720
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045339 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107189 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139921.P14950907407037227720

/-! ## A139921.P15996465293509847012

`∩[A107189(n+1), A332446(n+1)]`
-/

namespace A139921.P15996465293509847012
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107189 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332446 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139921.P15996465293509847012

/-! ## A139921.P10258981635021043648

`∩[A107189(n+1), A163183(n+1)]`
-/

namespace A139921.P10258981635021043648
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107189 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163183 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139921.P10258981635021043648

/-! ## A139921.P6692008135671791307

`∩[A095282(n+1), A107189(n+1)]`
-/

namespace A139921.P6692008135671791307
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095282 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107189 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139921.P6692008135671791307

/-! ## A139921.P12581788761032636871

`∩[A107189(n+1), A192717(n+1)]`
-/

namespace A139921.P12581788761032636871
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107189 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192717 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139921.P12581788761032636871

/-! ## A139921.P18200613343984589576

`∩[A040126(n+1), A107007(n+1)]`
-/

namespace A139921.P18200613343984589576
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040126 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107007 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139921.P18200613343984589576

/-! ## A139921.P6312214250091704804

`∩[A040101(n+1), A107189(n+1)]`
-/

namespace A139921.P6312214250091704804
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040101 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107189 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139921.P6312214250091704804

/-! ## A139921.P5498223931704369965

`∩[A040124(n+1), A107189(n+1)]`
-/

namespace A139921.P5498223931704369965
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040124 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107189 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139921.P5498223931704369965

/-! ## A139921.P4147508396511057009

`∩[A051071(n+1), A107189(n+1)]`
-/

namespace A139921.P4147508396511057009
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051071 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107189 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139921.P4147508396511057009

/-! ## A139921.P7571297440498028316

`∩[A040994(n+1), A107189(n+1)]`
-/

namespace A139921.P7571297440498028316
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040994 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107189 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139921.P7571297440498028316

/-! ## A139921.P2196787098469954263

`∩[A051073(n+1), A107189(n+1)]`
-/

namespace A139921.P2196787098469954263
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051073 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107189 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139921.P2196787098469954263

/-! ## A139921.P13452193522262076164

`∩[A045317(n+1), A107189(n+1)]`
-/

namespace A139921.P13452193522262076164
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045317 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107189 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139921.P13452193522262076164

/-! ## A139921.P14024340735093900442

`∩[A038917(n+1), A107007(n+1)]`
-/

namespace A139921.P14024340735093900442
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038917 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107007 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139921.P14024340735093900442

/-! ## A139921.P8644379981482426336

`∩[A038917(n+1), A107189(n+1)]`
-/

namespace A139921.P8644379981482426336
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038917 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107189 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139921.P8644379981482426336

/-! ## A139921.P11468498720874901940

`∩[A038883(n+1), A107007(n+1)]`
-/

namespace A139921.P11468498720874901940
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038883 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107007 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139921.P11468498720874901940

/-! ## A139921.P8598195379835672136

`∩[A038874(n+1), A107189(n+1)]`
-/

namespace A139921.P8598195379835672136
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038874 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107189 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139921.P8598195379835672136

/-!
# A139922: Primes of the form 4x^2+4xy+79y^2.

The programs for A139922, there is no canonical definition to state claims against.
-/

/-! ## A139922.P15303354322130961131

`∩[A033250(n+1), A107006(n+1)]`
-/

namespace A139922.P15303354322130961131
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033250 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107006 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139922.P15303354322130961131

/-! ## A139922.P7604624499150626866

`p?[or(2, A033250(n+1))]`
-/

namespace A139922.P7604624499150626866
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 2 (A033250 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A139922.P7604624499150626866

/-! ## A139922.P16589579952382537717

`∩[A107006(n+1), A139494(n+1)]`
-/

namespace A139922.P16589579952382537717
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107006 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139494 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139922.P16589579952382537717

/-! ## A139922.P16120257106547523066

`∩[A107006(n+1), A267455(n+1)]`
-/

namespace A139922.P16120257106547523066
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107006 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267455 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139922.P16120257106547523066

/-! ## A139922.P17931672669160072093

`∩[A033250(n+1), A290402(n+1)]`
-/

namespace A139922.P17931672669160072093
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033250 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290402 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139922.P17931672669160072093

/-! ## A139922.P13884157134196522631

`∩[A139494(n+1), A290402(n+1)]`
-/

namespace A139922.P13884157134196522631
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139494 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290402 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139922.P13884157134196522631

/-! ## A139922.P10681779420983601075

`∩[A267455(n+1), A290402(n+1)]`
-/

namespace A139922.P10681779420983601075
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267455 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290402 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139922.P10681779420983601075

/-! ## A139922.P7328314628411577963

`∩[A007522(n+1), A033250(n+1)]`
-/

namespace A139922.P7328314628411577963
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007522 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033250 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139922.P7328314628411577963

/-! ## A139922.P18133832619298542867

`∩[A007522(n+1), A139494(n+1)]`
-/

namespace A139922.P18133832619298542867
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007522 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139494 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139922.P18133832619298542867

/-! ## A139922.P16290622512479140191

`∩[A007522(n+1), A267455(n+1)]`
-/

namespace A139922.P16290622512479140191
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007522 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267455 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139922.P16290622512479140191

/-! ## A139922.P4949837966525518165

`∩[A033250(n+1), A045382(n+1)]`
-/

namespace A139922.P4949837966525518165
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033250 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045382 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139922.P4949837966525518165

/-! ## A139922.P16419914363620854234

`∩[A045382(n+1), A139494(n+1)]`
-/

namespace A139922.P16419914363620854234
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045382 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139494 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139922.P16419914363620854234

/-! ## A139922.P7549198807239660935

`∩[A045382(n+1), A267455(n+1)]`
-/

namespace A139922.P7549198807239660935
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045382 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267455 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139922.P7549198807239660935

/-! ## A139922.P11304776238775358217

`∩[A033250(n+1), A068229(n+1)]`
-/

namespace A139922.P11304776238775358217
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033250 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068229 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139922.P11304776238775358217

/-! ## A139922.P17570445960466368072

`∩[A033250(n+1), A094712(n+1)]`
-/

namespace A139922.P17570445960466368072
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033250 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094712 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139922.P17570445960466368072

/-! ## A139922.P8887576403766042647

`∩[A040126(n+1), A107006(n+1)]`
-/

namespace A139922.P8887576403766042647
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040126 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107006 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139922.P8887576403766042647

/-! ## A139922.P534086432648439376

`∩[A033250(n+1), A332514(n+1)]`
-/

namespace A139922.P534086432648439376
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033250 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332514 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139922.P534086432648439376

/-! ## A139922.P16896301175344379891

`∩[A004628(n+1), A033250(n+1)]`
-/

namespace A139922.P16896301175344379891
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004628 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033250 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139922.P16896301175344379891

/-! ## A139922.P4504485358336071552

`∩[A004628(n+1), A139494(n+1)]`
-/

namespace A139922.P4504485358336071552
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004628 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139494 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139922.P4504485358336071552

/-! ## A139922.P8145735721090755604

`∩[A004628(n+1), A267455(n+1)]`
-/

namespace A139922.P8145735721090755604
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004628 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267455 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139922.P8145735721090755604

/-!
# A139923: Primes of the form 8x^2+39y^2.

The programs for A139923, there is no canonical definition to state claims against.
-/

/-! ## A139923.P6147776977496254674

`∩[A107190(n+1), A134517(n+1)]`
-/

namespace A139923.P6147776977496254674
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107190 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134517 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139923.P6147776977496254674

/-! ## A139923.P18404082148475284135

`p?[or(4, A107190(n+1))]`
-/

namespace A139923.P18404082148475284135
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 4 (A107190 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A139923.P18404082148475284135

/-! ## A139923.P9489910532093163673

`∩[A107190(n+1), A130063(n+1)]`
-/

namespace A139923.P9489910532093163673
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107190 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130063 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139923.P9489910532093163673

/-! ## A139923.P15813542294433797676

`∩[A106906(n+1), A130063(n+1)]`
-/

namespace A139923.P15813542294433797676
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106906 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130063 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139923.P15813542294433797676

/-! ## A139923.P2591084206785023683

`∩[A106906(n+1), A134517(n+1)]`
-/

namespace A139923.P2591084206785023683
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106906 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134517 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139923.P2591084206785023683

/-! ## A139923.P6645019362747726526

`∩[A106886(n+1), A130063(n+1)]`
-/

namespace A139923.P6645019362747726526
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106886 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130063 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139923.P6645019362747726526

/-! ## A139923.P6489251355900249818

`∩[A106886(n+1), A134517(n+1)]`
-/

namespace A139923.P6489251355900249818
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106886 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134517 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139923.P6489251355900249818

/-! ## A139923.P5936028731151331789

`∩[A007522(n+1), A106886(n+1)]`
-/

namespace A139923.P5936028731151331789
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007522 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106886 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139923.P5936028731151331789

/-! ## A139923.P16113379746013193186

`∩[A007522(n+1), A107190(n+1)]`
-/

namespace A139923.P16113379746013193186
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007522 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107190 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139923.P16113379746013193186

/-! ## A139923.P2678572372265083045

`∩[A106906(n+1), A256397(n+1)]`
-/

namespace A139923.P2678572372265083045
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106906 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256397 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139923.P2678572372265083045

/-! ## A139923.P12802278737843181269

`∩[A068231(n+1), A107190(n+1)]`
-/

namespace A139923.P12802278737843181269
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068231 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107190 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139923.P12802278737843181269

/-! ## A139923.P15601861493251315324

`∩[A107190(n+1), A141187(n+1)]`
-/

namespace A139923.P15601861493251315324
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107190 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141187 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139923.P15601861493251315324

/-! ## A139923.P963140399008304279

`∩[A107190(n+1), A397410(n+1)]`
-/

namespace A139923.P963140399008304279
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107190 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397410 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139923.P963140399008304279

/-! ## A139923.P7638772371585849491

`∩[A107190(n+1), A332516(n+1)]`
-/

namespace A139923.P7638772371585849491
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107190 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332516 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139923.P7638772371585849491

/-! ## A139923.P1600751890788046133

`∩[A004628(n+1), A106886(n+1)]`
-/

namespace A139923.P1600751890788046133
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004628 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106886 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139923.P1600751890788046133

/-! ## A139923.P10905491525686201427

`∩[A004628(n+1), A107190(n+1)]`
-/

namespace A139923.P10905491525686201427
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004628 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107190 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139923.P10905491525686201427

/-! ## A139923.P2506264888117311618

`∩[A106886(n+1), A183010(n)]`
-/

namespace A139923.P2506264888117311618
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106886 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183010 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139923.P2506264888117311618

/-! ## A139923.P16132105942166473670

`∩[A106906(n+1), A183010(n)]`
-/

namespace A139923.P16132105942166473670
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106906 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183010 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139923.P16132105942166473670

/-! ## A139923.P4251067081764999168

`∩[A107190(n+1), A183010(n)]`
-/

namespace A139923.P4251067081764999168
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107190 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183010 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139923.P4251067081764999168

/-! ## A139923.P14706166931726936975

`∩[A191047(n+1), A183010(n)]`
-/

namespace A139923.P14706166931726936975
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191047 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183010 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139923.P14706166931726936975

/-!
# A139924: Primes of the form 8x^2+8xy+41y^2.

The programs for A139924, there is no canonical definition to state claims against.
-/

/-! ## A139924.P16708543517210944046

`∩[A107181(n+1), A107190(n+1)]`
-/

namespace A139924.P16708543517210944046
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107181 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107190 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139924.P16708543517210944046

/-! ## A139924.P2410435466780630369

`p?[and(-3, A107190(n+1))]`
-/

namespace A139924.P2410435466780630369
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-3) (A107190 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A139924.P2410435466780630369

/-! ## A139924.P17184365356441763190

`∩[A007519(n+1), A107190(n+1)]`
-/

namespace A139924.P17184365356441763190
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007519 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107190 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139924.P17184365356441763190

/-! ## A139924.P6872489410716537706

`∩[A107190(n+1), A209544(n+1)]`
-/

namespace A139924.P6872489410716537706
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107190 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209544 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139924.P6872489410716537706

/-! ## A139924.P11268786105109780598

`∩[A007519(n+1), A106886(n+1)]`
-/

namespace A139924.P11268786105109780598
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007519 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106886 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139924.P11268786105109780598

/-! ## A139924.P2486614052151856639

`∩[A106886(n+1), A107181(n+1)]`
-/

namespace A139924.P2486614052151856639
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106886 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107181 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139924.P2486614052151856639

/-! ## A139924.P16529543157572151574

`∩[A106886(n+1), A209544(n+1)]`
-/

namespace A139924.P16529543157572151574
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106886 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209544 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139924.P16529543157572151574

/-! ## A139924.P3598254945335722290

`∩[A106886(n+1), A290402(n+1)]`
-/

namespace A139924.P3598254945335722290
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106886 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290402 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139924.P3598254945335722290

/-! ## A139924.P1845823848443543166

`∩[A107190(n+1), A290402(n+1)]`
-/

namespace A139924.P1845823848443543166
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107190 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290402 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139924.P1845823848443543166

/-! ## A139924.P17866171834209082859

`∩[A040117(n+1), A107190(n+1)]`
-/

namespace A139924.P17866171834209082859
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040117 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107190 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139924.P17866171834209082859

/-! ## A139924.P10416536442562712039

`∩[A004625(n+1), A106886(n+1)]`
-/

namespace A139924.P10416536442562712039
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004625 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106886 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139924.P10416536442562712039

/-! ## A139924.P15680518271054456912

`∩[A004625(n+1), A107190(n+1)]`
-/

namespace A139924.P15680518271054456912
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004625 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107190 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139924.P15680518271054456912

/-! ## A139924.P4054905344306588003

`∩[A106886(n+1), A332227(n+1)]`
-/

namespace A139924.P4054905344306588003
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106886 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332227 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139924.P4054905344306588003

/-! ## A139924.P11485643368143236656

`∩[A107190(n+1), A332227(n+1)]`
-/

namespace A139924.P11485643368143236656
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107190 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332227 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139924.P11485643368143236656

/-! ## A139924.P14836712868487472762

`∩[A096785(n+1), A107190(n+1)]`
-/

namespace A139924.P14836712868487472762
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096785 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107190 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139924.P14836712868487472762

/-! ## A139924.P6402839361987068321

`∩[A106886(n+1), A263011(n+1)]`
-/

namespace A139924.P6402839361987068321
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106886 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263011 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139924.P6402839361987068321

/-! ## A139924.P835315425059621696

`∩[A107190(n+1), A263011(n+1)]`
-/

namespace A139924.P835315425059621696
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107190 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263011 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139924.P835315425059621696

/-! ## A139924.P13776232099048974020

`∩[A106886(n+1), A350052(n)]`
-/

namespace A139924.P13776232099048974020
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106886 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350052 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139924.P13776232099048974020

/-! ## A139924.P3518011470323018766

`∩[A107190(n+1), A350052(n)]`
-/

namespace A139924.P3518011470323018766
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107190 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350052 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139924.P3518011470323018766

/-! ## A139924.P8872003075743666230

`∩[A038963(n+1), A350052(n)]`
-/

namespace A139924.P8872003075743666230
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038963 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350052 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139924.P8872003075743666230

/-!
# A139925: Primes of the form 12x^2+12xy+29y^2.

The programs for A139925, there is no canonical definition to state claims against.
-/

/-! ## A139925.P6078556919391066870

`∩[A107003(n+1), A107189(n+1)]`
-/

namespace A139925.P6078556919391066870
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107003 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107189 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139925.P6078556919391066870

/-! ## A139925.P14604818969675164152

`p?[or(4, A107189(n+2))]`
-/

namespace A139925.P14604818969675164152
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 4 (A107189 (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A139925.P14604818969675164152

/-! ## A139925.P2981357884265508021

`p?[and(-3, A107189(n+1))]`
-/

namespace A139925.P2981357884265508021
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-3) (A107189 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A139925.P2981357884265508021

/-! ## A139925.P1269320716400829957

`∩[A033210(n+1), A107003(n+1)]`
-/

namespace A139925.P1269320716400829957
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033210 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107003 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139925.P1269320716400829957

/-! ## A139925.P5704921910484119056

`∩[A033210(n+1), A107189(n+1)]`
-/

namespace A139925.P5704921910484119056
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033210 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107189 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139925.P5704921910484119056

/-! ## A139925.P1329261019845186350

`∩[A040117(n+1), A107189(n+1)]`
-/

namespace A139925.P1329261019845186350
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040117 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107189 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139925.P1329261019845186350

/-! ## A139925.P14509838106641258850

`∩[A107189(n+1), A243183(n+1)]`
-/

namespace A139925.P14509838106641258850
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107189 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243183 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139925.P14509838106641258850

/-! ## A139925.P670448885353213938

`∩[A007521(n+1), A107189(n+1)]`
-/

namespace A139925.P670448885353213938
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007521 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107189 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139925.P670448885353213938

/-! ## A139925.P16643997846686073091

`∩[A033210(n+1), A084865(n+1)]`
-/

namespace A139925.P16643997846686073091
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033210 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084865 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139925.P16643997846686073091

/-! ## A139925.P4419239925083920595

`∩[A045366(n+1), A107189(n+1)]`
-/

namespace A139925.P4419239925083920595
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045366 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107189 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139925.P4419239925083920595

/-! ## A139925.P5581357695911667688

`∩[A033210(n+1), A141171(n+1)]`
-/

namespace A139925.P5581357695911667688
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033210 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141171 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139925.P5581357695911667688

/-! ## A139925.P16459461095299924242

`∩[A107189(n+1), A141171(n+1)]`
-/

namespace A139925.P16459461095299924242
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107189 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141171 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139925.P16459461095299924242

/-! ## A139925.P10462552433717678185

`∩[A107189(n+1), A385224(n+1)]`
-/

namespace A139925.P10462552433717678185
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107189 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385224 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139925.P10462552433717678185

/-! ## A139925.P15668745687629227013

`∩[A034847(n+1), A107189(n+1)]`
-/

namespace A139925.P15668745687629227013
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034847 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107189 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139925.P15668745687629227013

/-! ## A139925.P2859804191387581001

`∩[A107189(n+1), A392947(n+1)]`
-/

namespace A139925.P2859804191387581001
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107189 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392947 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139925.P2859804191387581001

/-! ## A139925.P9515688117737347959

`∩[A096785(n+1), A107189(n+1)]`
-/

namespace A139925.P9515688117737347959
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096785 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107189 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139925.P9515688117737347959

/-! ## A139925.P5383303342410603925

`∩[A004627(n+1), A107189(n+1)]`
-/

namespace A139925.P5383303342410603925
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004627 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107189 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139925.P5383303342410603925

/-! ## A139925.P4391486775304654678

`∩[A038963(n+1), A107003(n+1)]`
-/

namespace A139925.P4391486775304654678
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038963 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107003 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139925.P4391486775304654678

/-! ## A139925.P16856303620591522972

`∩[A107003(n+1), A191047(n+1)]`
-/

namespace A139925.P16856303620591522972
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107003 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191047 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139925.P16856303620591522972

/-! ## A139925.P14312714065916509529

`∩[A191047(n+1), A135659(n)-2]`
-/

namespace A139925.P14312714065916509529
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191047 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135659 n - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139925.P14312714065916509529

/-!
# A139926: Primes of the form 13x^2+24y^2.

The programs for A139926, there is no canonical definition to state claims against.
-/

/-! ## A139926.P13794091479569746255

`∩[A107188(n+1), A139530(n+1)]`
-/

namespace A139926.P13794091479569746255
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107188 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139530 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139926.P13794091479569746255

/-! ## A139926.P8266889432805398781

`∩[A068228(n+1), A107188(n+1)]`
-/

namespace A139926.P8266889432805398781
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068228 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107188 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139926.P8266889432805398781

/-! ## A139926.P5867686603178154556

`∩[A007521(n+1), A107188(n+1)]`
-/

namespace A139926.P5867686603178154556
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007521 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107188 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139926.P5867686603178154556

/-! ## A139926.P18161962799768785419

`∩[A045366(n+1), A107188(n+1)]`
-/

namespace A139926.P18161962799768785419
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045366 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107188 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139926.P18161962799768785419

/-! ## A139926.P18313742639629302510

`∩[A107188(n+1), A351537(n+1)]`
-/

namespace A139926.P18313742639629302510
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107188 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351537 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139926.P18313742639629302510

/-! ## A139926.P8411402506655429959

`∩[A107188(n+1), A354467(n+1)]`
-/

namespace A139926.P8411402506655429959
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107188 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354467 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139926.P8411402506655429959

/-! ## A139926.P15455157882672342050

`∩[A107188(n+1), A385224(n+1)]`
-/

namespace A139926.P15455157882672342050
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107188 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385224 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139926.P15455157882672342050

/-! ## A139926.P5081749525327955326

`∩[A107188(n+1), A392947(n+1)]`
-/

namespace A139926.P5081749525327955326
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107188 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392947 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139926.P5081749525327955326

/-! ## A139926.P5113974115302936579

`∩[A004627(n+1), A107188(n+1)]`
-/

namespace A139926.P5113974115302936579
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004627 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107188 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139926.P5113974115302936579

/-! ## A139926.P16120546268084487249

`∩[A038963(n+1), A107188(n+1)]`
-/

namespace A139926.P16120546268084487249
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038963 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107188 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139926.P16120546268084487249

/-! ## A139926.P3752292505729294220

`∩[A038963(n+1), A139530(n+1)]`
-/

namespace A139926.P3752292505729294220
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038963 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139530 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139926.P3752292505729294220

/-! ## A139926.P6887174701330546247

`∩[A038874(n+1), A107188(n+1)]`
-/

namespace A139926.P6887174701330546247
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038874 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107188 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139926.P6887174701330546247

/-! ## A139926.P13618836315531198781

`∩[A097933(n+1), A107188(n+1)]`
-/

namespace A139926.P13618836315531198781
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097933 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107188 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139926.P13618836315531198781

/-! ## A139926.P3048237941594045465

`∩[A107188(n+1), A296933(n+1)]`
-/

namespace A139926.P3048237941594045465
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107188 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296933 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139926.P3048237941594045465

/-! ## A139926.P3319904966372677876

`∩[A002144(n+1), A107188(n+1)]`
-/

namespace A139926.P3319904966372677876
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002144 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107188 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139926.P3319904966372677876

/-! ## A139926.P11540441117440724176

`∩[A002313(n+1), A107188(n+1)]`
-/

namespace A139926.P11540441117440724176
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002313 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107188 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139926.P11540441117440724176

/-! ## A139926.P13975568130466555261

`∩[A107188(n+1), A280084(n+1)]`
-/

namespace A139926.P13975568130466555261
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107188 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280084 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139926.P13975568130466555261

/-! ## A139926.P6110134197483580326

`∩[A038899(n+1), A139530(n+1)]`
-/

namespace A139926.P6110134197483580326
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038899 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139530 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139926.P6110134197483580326

/-! ## A139926.P17732003982754690672

`∩[A107188(n+1), A391369(n+1)]`
-/

namespace A139926.P17732003982754690672
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107188 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391369 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139926.P17732003982754690672

/-! ## A139926.P3295575226840028726

`∩[A003628(n+1), A107188(n+1)]`
-/

namespace A139926.P3295575226840028726
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003628 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107188 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139926.P3295575226840028726

/-!
# A139927: Primes of the form 19x^2+14xy+19y^2.

The programs for A139927, there is no canonical definition to state claims against.
-/

/-! ## A139927.P11836344109238736901

`∩[A107188(n+1), A141373(n+1)]`
-/

namespace A139927.P11836344109238736901
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107188 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141373 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139927.P11836344109238736901

/-! ## A139927.P5604150396046254432

`p?[or(2, A107188(n+1))]`
-/

namespace A139927.P5604150396046254432
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 2 (A107188 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A139927.P5604150396046254432

/-! ## A139927.P4647638120284360331

`∩[A106950(n+1), A107188(n+1)]`
-/

namespace A139927.P4647638120284360331
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106950 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107188 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139927.P4647638120284360331

/-! ## A139927.P14008735808007715057

`∩[A107188(n+1), A141170(n+1)]`
-/

namespace A139927.P14008735808007715057
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107188 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141170 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139927.P14008735808007715057

/-! ## A139927.P7177230116308256213

`∩[A106906(n+1), A106950(n+1)]`
-/

namespace A139927.P7177230116308256213
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106906 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106950 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139927.P7177230116308256213

/-! ## A139927.P14005427367637442164

`∩[A106906(n+1), A107188(n+1)]`
-/

namespace A139927.P14005427367637442164
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106906 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107188 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139927.P14005427367637442164

/-! ## A139927.P4485254470855470482

`∩[A106906(n+1), A141170(n+1)]`
-/

namespace A139927.P4485254470855470482
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106906 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141170 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139927.P4485254470855470482

/-! ## A139927.P3098407791551757674

`∩[A106906(n+1), A141373(n+1)]`
-/

namespace A139927.P3098407791551757674
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106906 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141373 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139927.P3098407791551757674

/-! ## A139927.P11571898428400826969

`∩[A068229(n+1), A107188(n+1)]`
-/

namespace A139927.P11571898428400826969
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068229 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107188 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139927.P11571898428400826969

/-! ## A139927.P3758043301951550866

`∩[A007520(n+1), A107188(n+1)]`
-/

namespace A139927.P3758043301951550866
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007520 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107188 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139927.P3758043301951550866

/-! ## A139927.P11087938134047558220

`∩[A045339(n+1), A107188(n+1)]`
-/

namespace A139927.P11087938134047558220
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045339 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107188 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139927.P11087938134047558220

/-! ## A139927.P4678112977245479012

`∩[A107188(n+1), A332446(n+1)]`
-/

namespace A139927.P4678112977245479012
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107188 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332446 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139927.P4678112977245479012

/-! ## A139927.P10169427448081273910

`∩[A107188(n+1), A163183(n+1)]`
-/

namespace A139927.P10169427448081273910
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107188 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163183 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139927.P10169427448081273910

/-! ## A139927.P9419782972318765013

`∩[A095282(n+1), A107188(n+1)]`
-/

namespace A139927.P9419782972318765013
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095282 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107188 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139927.P9419782972318765013

/-! ## A139927.P7553794142327584964

`∩[A107188(n+1), A192717(n+1)]`
-/

namespace A139927.P7553794142327584964
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107188 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192717 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139927.P7553794142327584964

/-! ## A139927.P18099499514480214528

`∩[A040107(n+1), A107188(n+1)]`
-/

namespace A139927.P18099499514480214528
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040107 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107188 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139927.P18099499514480214528

/-! ## A139927.P1935720878719834895

`∩[A107188(n+1), A332514(n+1)]`
-/

namespace A139927.P1935720878719834895
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107188 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332514 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139927.P1935720878719834895

/-! ## A139927.P5878790534642109705

`∩[A051071(n+1), A107188(n+1)]`
-/

namespace A139927.P5878790534642109705
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051071 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107188 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139927.P5878790534642109705

/-! ## A139927.P6758681131425283206

`∩[A051073(n+1), A107188(n+1)]`
-/

namespace A139927.P6758681131425283206
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051073 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107188 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139927.P6758681131425283206

/-! ## A139927.P6549706038194959539

`∩[A106906(n+1), A350051(n)]`
-/

namespace A139927.P6549706038194959539
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106906 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350051 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139927.P6549706038194959539

/-!
# A139928: Primes of the form 2x^2+165y^2.

The programs for A139928, the canonical program `A139928.P7798437498282057437` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A139928 has offset 1).

The definition of A139928 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2502 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A139928.P8470001380028575911

`∩[A106911(n+1), A141171(n+1)]`
-/

namespace A139928.P8470001380028575911
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106911 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141171 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139928.P8470001380028575911

namespace A139928

/-- `∩[A106911(n+1), A141171(n+1)]` -/
def P8470001380028575911.Spec : Prop :=
  ∀ n, (P8470001380028575911.a n : ℤ) = A139928 (n + 1)

end A139928

/-! ## A139928.P6103663097340429089

`∩[A106889(n+1), A141176(n+1)]`
-/

namespace A139928.P6103663097340429089
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106889 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141176 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139928.P6103663097340429089

namespace A139928

/-- `∩[A106889(n+1), A141176(n+1)]` -/
def P6103663097340429089.Spec : Prop :=
  ∀ n, (P6103663097340429089.a n : ℤ) = A139928 (n + 1)

end A139928

/-! ## A139928.P7798437498282057437

`∩[A106859(n+1), A141777(n+1)]`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A139928

/-- `∩[A106859(n+1), A141777(n+1)]` -/
def P7798437498282057437.Spec : Prop :=
  ∀ n, (P7798437498282057437.a n : ℤ) = A139928 (n + 1)

theorem P7798437498282057437.correct : P7798437498282057437.Spec := by
  intro n
  simp only [A139928, Nat.add_sub_cancel]

end A139928

/-! ## A139928.P8594213304762712219

`∩[A141777(n+1), A343241(n+1)]`
-/

namespace A139928.P8594213304762712219
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141777 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343241 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139928.P8594213304762712219

namespace A139928

/-- `∩[A141777(n+1), A343241(n+1)]` -/
def P8594213304762712219.Spec : Prop :=
  ∀ n, (P8594213304762712219.a n : ℤ) = A139928 (n + 1)

end A139928

/-! ## A139928.P16448281066411699781

`∩[A020674(n+1), A141176(n+1)]`
-/

namespace A139928.P16448281066411699781
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020674 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141176 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139928.P16448281066411699781

namespace A139928

/-- `∩[A020674(n+1), A141176(n+1)]` -/
def P16448281066411699781.Spec : Prop :=
  ∀ n, (P16448281066411699781.a n : ℤ) = A139928 (n + 1)

end A139928

/-! ## A139928.P10038165557671619939

`∩[A106911(n+1), A242665(n+1)]`
-/

namespace A139928.P10038165557671619939
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106911 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242665 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139928.P10038165557671619939

namespace A139928

/-- `∩[A106911(n+1), A242665(n+1)]` -/
def P10038165557671619939.Spec : Prop :=
  ∀ n, (P10038165557671619939.a n : ℤ) = A139928 (n + 1)

end A139928

/-! ## A139928.P4024911438298562085

`∩[A028955(n+1), A141777(n+1)]`
-/

namespace A139928.P4024911438298562085
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028955 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141777 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139928.P4024911438298562085

namespace A139928

/-- `∩[A028955(n+1), A141777(n+1)]` -/
def P4024911438298562085.Spec : Prop :=
  ∀ n, (P4024911438298562085.a n : ℤ) = A139928 (n + 1)

end A139928

/-! ## A139928.P4670114772128688874

`∩[A106889(n+1), A243184(n+1)]`
-/

namespace A139928.P4670114772128688874
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106889 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243184 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139928.P4670114772128688874

namespace A139928

/-- `∩[A106889(n+1), A243184(n+1)]` -/
def P4670114772128688874.Spec : Prop :=
  ∀ n, (P4670114772128688874.a n : ℤ) = A139928 (n + 1)

end A139928

/-! ## A139928.P13462019421925973285

`p?[∩[A020674(n+1), A243184(n+1)]]`
-/

namespace A139928.P13462019421925973285
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020674 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243184 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∧ ∃ j, f3 j = (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A139928.P13462019421925973285

namespace A139928

/-- `p?[∩[A020674(n+1), A243184(n+1)]]` -/
def P13462019421925973285.Spec : Prop :=
  ∀ n, (P13462019421925973285.a n : ℤ) = A139928 (n + 1)

end A139928

/-!
# A139929: Primes of the form 3x^2+110y^2.

The programs for A139929, there is no canonical definition to state claims against.
-/

/-! ## A139929.P5073737974053964089

`∪[A139999(n+1), A140005(n+1)]`
-/

namespace A139929.P5073737974053964089
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139999 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140005 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A139929.P5073737974053964089

/-! ## A139929.P11475968364575511504

`∩[A106859(n+1), A141776(n+1)]`
-/

namespace A139929.P11475968364575511504
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106859 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141776 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139929.P11475968364575511504

/-! ## A139929.P16647268013891536503

`∩[A020678(n+1), A141776(n+1)]`
-/

namespace A139929.P16647268013891536503
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020678 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141776 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139929.P16647268013891536503

/-! ## A139929.P3702035945842998141

`∩[A028955(n+1), A141776(n+1)]`
-/

namespace A139929.P3702035945842998141
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028955 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141776 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139929.P3702035945842998141

/-!
# A139930: Primes of the form 5x^2+66y^2.

The programs for A139930, there is no canonical definition to state claims against.
-/

/-! ## A139930.P16912542311470638997

`∪[A140001(n+1), A140007(n+1)]`
-/

namespace A139930.P16912542311470638997
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140001 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140007 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A139930.P16912542311470638997

/-! ## A139930.P11800118858347454719

`∩[A141171(n+1), A267478(n+1)]`
-/

namespace A139930.P11800118858347454719
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141171 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267478 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139930.P11800118858347454719

/-! ## A139930.P17164184612229662598

`∩[A242665(n+1), A267478(n+1)]`
-/

namespace A139930.P17164184612229662598
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242665 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267478 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139930.P17164184612229662598

/-!
# A139931: Primes of the form 6x^2+55y^2.

The programs for A139931, there is no canonical definition to state claims against.
-/

/-! ## A139931.P8095342552514634879

`∪[A140008(n+1), A140009(n+1)]`
-/

namespace A139931.P8095342552514634879
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140008 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140009 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A139931.P8095342552514634879

/-! ## A139931.P641680436960780187

`∩[A033212(n+1), A141777(n+1)]`
-/

namespace A139931.P641680436960780187
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033212 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141777 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139931.P641680436960780187

/-! ## A139931.P4858004336609481719

`∩[A141777(n+1), A390422(n+1)]`
-/

namespace A139931.P4858004336609481719
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141777 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390422 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139931.P4858004336609481719

/-! ## A139931.P1865932854545691173

`∩[A141777(n+1), A243174(n+1)]`
-/

namespace A139931.P1865932854545691173
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141777 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243174 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139931.P1865932854545691173

/-! ## A139931.P3285353192213668095

`∩[A141777(n+1), A243173(n+1)]`
-/

namespace A139931.P3285353192213668095
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141777 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243173 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139931.P3285353192213668095

/-! ## A139931.P15413662520864048035

`∩[A141777(n+1), A146510(n+1)]`
-/

namespace A139931.P15413662520864048035
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141777 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146510 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139931.P15413662520864048035

/-!
# A139932: Primes of the form 10x^2+33y^2.

The programs for A139932, there is no canonical definition to state claims against.
-/

/-! ## A139932.P2921439305737063368

`∪[A140010(n+1), A140012(n+1)]`
-/

namespace A139932.P2921439305737063368
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140010 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140012 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A139932.P2921439305737063368

/-! ## A139932.P10535216867978864636

`∩[A106911(n+1), A106950(n+1)]`
-/

namespace A139932.P10535216867978864636
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106911 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106950 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139932.P10535216867978864636

/-! ## A139932.P16103202646537609931

`∩[A106911(n+1), A141170(n+1)]`
-/

namespace A139932.P16103202646537609931
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106911 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141170 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139932.P16103202646537609931

/-! ## A139932.P13021751550994280195

`∩[A106911(n+1), A155564(n+1)]`
-/

namespace A139932.P13021751550994280195
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106911 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155564 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139932.P13021751550994280195

/-!
# A139933: Primes of the form 11x^2+30y^2.

The programs for A139933, the canonical program `A139933.P14771844273237704820` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A139933 has offset 1).

The definition of A139933 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A139933.P14771844273237704820

`∪[A140004(n+1), A140013(n+1)]`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A139933

/-- `∪[A140004(n+1), A140013(n+1)]` -/
def P14771844273237704820.Spec : Prop :=
  ∀ n, (P14771844273237704820.a n : ℤ) = A139933 (n + 1)

theorem P14771844273237704820.correct : P14771844273237704820.Spec := by
  intro n
  simp only [A139933, Nat.add_sub_cancel]

end A139933

/-! ## A139933.P11448870825070071818

`∩[A033201(n+1), A141176(n+1)]`
-/

namespace A139933.P11448870825070071818
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033201 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141176 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139933.P11448870825070071818

namespace A139933

/-- `∩[A033201(n+1), A141176(n+1)]` -/
def P11448870825070071818.Spec : Prop :=
  ∀ n, (P11448870825070071818.a n : ℤ) = A139933 (n + 1)

end A139933

/-! ## A139933.P2106469858566090001

`∩[A020673(n+1), A141176(n+1)]`
-/

namespace A139933.P2106469858566090001
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020673 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141176 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139933.P2106469858566090001

namespace A139933

/-- `∩[A020673(n+1), A141176(n+1)]` -/
def P2106469858566090001.Spec : Prop :=
  ∀ n, (P2106469858566090001.a n : ℤ) = A139933 (n + 1)

end A139933

/-! ## A139933.P7384909832072367662

`∩[A033201(n+1), A243184(n+1)]`
-/

namespace A139933.P7384909832072367662
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033201 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243184 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139933.P7384909832072367662

namespace A139933

/-- `∩[A033201(n+1), A243184(n+1)]` -/
def P7384909832072367662.Spec : Prop :=
  ∀ n, (P7384909832072367662.a n : ℤ) = A139933 (n + 1)

end A139933

/-! ## A139933.P10944801952241017091

`p?[∩[A020673(n+1), A243184(n+1)]]`
-/

namespace A139933.P10944801952241017091
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020673 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243184 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∧ ∃ j, f3 j = (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A139933.P10944801952241017091

namespace A139933

/-- `p?[∩[A020673(n+1), A243184(n+1)]]` -/
def P10944801952241017091.Spec : Prop :=
  ∀ n, (P10944801952241017091.a n : ℤ) = A139933 (n + 1)

end A139933

/-!
# A139934: Primes of the form 15x^2+22y^2.

The programs for A139934, there is no canonical definition to state claims against.
-/

/-! ## A139934.P9300602908107862417

`∪[A140006(n+1), A140011(n+1)]`
-/

namespace A139934.P9300602908107862417
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140006 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140011 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A139934.P9300602908107862417

/-! ## A139934.P7887058700742849905

`∩[A106889(n+1), A107013(n+1)]`
-/

namespace A139934.P7887058700742849905
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106889 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107013 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139934.P7887058700742849905

/-! ## A139934.P3823322003448226697

`∩[A106889(n+1), A141177(n+1)]`
-/

namespace A139934.P3823322003448226697
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106889 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141177 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139934.P3823322003448226697

/-! ## A139934.P6839119524348856829

`∩[A020674(n+1), A107013(n+1)]`
-/

namespace A139934.P6839119524348856829
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020674 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107013 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139934.P6839119524348856829

/-! ## A139934.P2494820411178767112

`∩[A020674(n+1), A141177(n+1)]`
-/

namespace A139934.P2494820411178767112
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020674 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141177 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139934.P2494820411178767112

/-!
# A139935: Primes of the form 2x^2+2xy+173y^2.

The programs for A139935, there is no canonical definition to state claims against.
-/

/-! ## A139935.P11029456477360860868

`∩[A141303(n+1), A141336(n+1)]`
-/

namespace A139935.P11029456477360860868
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141303 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141336 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139935.P11029456477360860868

/-! ## A139935.P17109079921751274711

`∩[A141336(n+1), A343241(n+1)]`
-/

namespace A139935.P17109079921751274711
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141336 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343241 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139935.P17109079921751274711

/-! ## A139935.P12331365087557317865

`∩[A106859(n+1), A141336(n+1)]`
-/

namespace A139935.P12331365087557317865
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106859 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141336 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139935.P12331365087557317865

/-! ## A139935.P3420381832927347812

`∩[A141303(n+1), A191021(n+1)]`
-/

namespace A139935.P3420381832927347812
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141303 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191021 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139935.P3420381832927347812

/-! ## A139935.P7636511549533232690

`∩[A141303(n+1), A296932(n+1)]`
-/

namespace A139935.P7636511549533232690
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141303 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296932 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139935.P7636511549533232690

/-! ## A139935.P3450339927634007560

`∩[A038897(n+1), A141303(n+1)]`
-/

namespace A139935.P3450339927634007560
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038897 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141303 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139935.P3450339927634007560

/-! ## A139935.P16427096828603624841

`∩[A038952(n+1), A141303(n+1)]`
-/

namespace A139935.P16427096828603624841
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038952 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141303 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139935.P16427096828603624841

/-! ## A139935.P15965118699743962025

`∩[A028955(n+1), A141336(n+1)]`
-/

namespace A139935.P15965118699743962025
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028955 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141336 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139935.P15965118699743962025

/-! ## A139935.P7525622275501351492

`∩[A035261(n+1), A141303(n+1)]`
-/

namespace A139935.P7525622275501351492
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035261 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141303 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139935.P7525622275501351492

/-! ## A139935.P560255823361063818

`∩[A035240(n+1), A141303(n+1)]`
-/

namespace A139935.P560255823361063818
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035240 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141303 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139935.P560255823361063818

/-! ## A139935.P15829719213262894717

`∩[A141303(n+1), A278580(n+1)]`
-/

namespace A139935.P15829719213262894717
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141303 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278580 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139935.P15829719213262894717

/-!
# A139936: Primes of the form 3x^2+115y^2.

The programs for A139936, there is no canonical definition to state claims against.
-/

/-! ## A139936.P6320737458802957768

`∩[A038951(n+1), A141304(n+1)]`
-/

namespace A139936.P6320737458802957768
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038951 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141304 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139936.P6320737458802957768

/-! ## A139936.P14388748300565997219

`∩[A141304(n+1), A191021(n+1)]`
-/

namespace A139936.P14388748300565997219
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141304 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191021 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139936.P14388748300565997219

/-! ## A139936.P3584855997072018440

`∩[A141304(n+1), A296932(n+1)]`
-/

namespace A139936.P3584855997072018440
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141304 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296932 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139936.P3584855997072018440

/-! ## A139936.P10466405018105206828

`∩[A038898(n+1), A141304(n+1)]`
-/

namespace A139936.P10466405018105206828
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038898 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141304 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139936.P10466405018105206828

/-! ## A139936.P8182178775270840000

`∩[A040158(n+1), A141304(n+1)]`
-/

namespace A139936.P8182178775270840000
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040158 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141304 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139936.P8182178775270840000

/-! ## A139936.P16369594812183489985

`∩[A035240(n+1), A141304(n+1)]`
-/

namespace A139936.P16369594812183489985
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035240 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141304 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139936.P16369594812183489985

/-! ## A139936.P16433010921435152863

`∩[A141304(n+1), A278580(n+1)]`
-/

namespace A139936.P16433010921435152863
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141304 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278580 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139936.P16433010921435152863

/-!
# A139937: Primes of the form 5x^2+69y^2.

The programs for A139937, there is no canonical definition to state claims against.
-/

/-! ## A139937.P18349857599957237218

`∩[A107151(n+1), A191042(n+1)]`
-/

namespace A139937.P18349857599957237218
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107151 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191042 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139937.P18349857599957237218

/-! ## A139937.P11452978100663633078

`∩[A038951(n+1), A107151(n+1)]`
-/

namespace A139937.P11452978100663633078
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038951 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107151 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139937.P11452978100663633078

/-! ## A139937.P9987768699886992996

`∩[A038898(n+1), A107151(n+1)]`
-/

namespace A139937.P9987768699886992996
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038898 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107151 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139937.P9987768699886992996

/-! ## A139937.P15450992259566542765

`∩[A107151(n+1), A191065(n+1)]`
-/

namespace A139937.P15450992259566542765
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107151 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191065 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139937.P15450992259566542765

/-! ## A139937.P1151265228986785436

`∩[A020688(n+1), A038898(n+1)]`
-/

namespace A139937.P1151265228986785436
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020688 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038898 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139937.P1151265228986785436

/-! ## A139937.P14010073994628865157

`∩[A020688(n+1), A038951(n+1)]`
-/

namespace A139937.P14010073994628865157
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020688 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038951 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139937.P14010073994628865157

/-! ## A139937.P1651524941758022729

`∩[A020688(n+1), A191042(n+1)]`
-/

namespace A139937.P1651524941758022729
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020688 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191042 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139937.P1651524941758022729

/-! ## A139937.P17570858010102367611

`∩[A020688(n+1), A191065(n+1)]`
-/

namespace A139937.P17570858010102367611
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020688 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191065 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139937.P17570858010102367611

/-! ## A139937.P13533278846197043244

`∩[A107151(n+1), A278579(n+1)]`
-/

namespace A139937.P13533278846197043244
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107151 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278579 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139937.P13533278846197043244

/-!
# A139938: Primes of the form 6*x^2+6*x*y+59*y^2.

The programs for A139938, there is no canonical definition to state claims against.
-/

/-! ## A139938.P14708383248119143417

`∩[A141302(n+1), A191021(n+1)]`
-/

namespace A139938.P14708383248119143417
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141302 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191021 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139938.P14708383248119143417

/-! ## A139938.P14737410200593274129

`∩[A141302(n+1), A296932(n+1)]`
-/

namespace A139938.P14737410200593274129
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141302 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296932 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139938.P14737410200593274129

/-! ## A139938.P7912373781816006256

`∩[A038898(n+1), A141302(n+1)]`
-/

namespace A139938.P7912373781816006256
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038898 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141302 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139938.P7912373781816006256

/-! ## A139938.P5227479790474167098

`∩[A038952(n+1), A141302(n+1)]`
-/

namespace A139938.P5227479790474167098
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038952 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141302 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139938.P5227479790474167098

/-! ## A139938.P11405089371516979523

`∩[A040158(n+1), A141302(n+1)]`
-/

namespace A139938.P11405089371516979523
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040158 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141302 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139938.P11405089371516979523

/-! ## A139938.P4666323233958209524

`∩[A035240(n+1), A141302(n+1)]`
-/

namespace A139938.P4666323233958209524
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035240 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141302 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139938.P4666323233958209524

/-! ## A139938.P11291036034813433798

`∩[A141302(n+1), A278580(n+1)]`
-/

namespace A139938.P11291036034813433798
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141302 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278580 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139938.P11291036034813433798

/-!
# A139939: Primes of the form 10x^2+10xy+37y^2.

The programs for A139939, there is no canonical definition to state claims against.
-/

/-! ## A139939.P11040239747451739042

`A178642(A089999(n)+A017197(n))`
-/

namespace A139939.P11040239747451739042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178642 (A089999 n + A017197 n).toNat

end

end A139939.P11040239747451739042

/-!
# A139940: Primes of the form 15*x^2+23*y^2.

The programs for A139940, there is no canonical definition to state claims against.
-/

/-! ## A139940.P4595450269137003184

`∩[A106859(n+1), A141337(n+1)]`
-/

namespace A139940.P4595450269137003184
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106859 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141337 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139940.P4595450269137003184

/-! ## A139940.P6163770956392783882

`∩[A107169(n+1), A141337(n+1)]`
-/

namespace A139940.P6163770956392783882
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107169 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141337 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139940.P6163770956392783882

/-! ## A139940.P13336504584458654908

`∩[A139831(n+1), A141337(n+1)]`
-/

namespace A139940.P13336504584458654908
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139831 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141337 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139940.P13336504584458654908

/-! ## A139940.P160995159013427329

`∩[A141337(n+1), A343241(n+1)]`
-/

namespace A139940.P160995159013427329
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141337 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343241 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139940.P160995159013427329

/-! ## A139940.P597340506214855085

`∩[A040154(n+1), A107169(n+1)]`
-/

namespace A139940.P597340506214855085
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040154 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107169 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139940.P597340506214855085

/-! ## A139940.P15438113726574090512

`∩[A038951(n+1), A139831(n+1)]`
-/

namespace A139940.P15438113726574090512
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038951 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139831 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139940.P15438113726574090512

/-! ## A139940.P14610946338965203558

`∩[A038897(n+1), A107169(n+1)]`
-/

namespace A139940.P14610946338965203558
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038897 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107169 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139940.P14610946338965203558

/-! ## A139940.P8512992430656381339

`∩[A141337(n+1), A267984(n+1)]`
-/

namespace A139940.P8512992430656381339
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141337 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267984 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139940.P8512992430656381339

/-! ## A139940.P731184846222983423

`∩[A020678(n+1), A141337(n+1)]`
-/

namespace A139940.P731184846222983423
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020678 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141337 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139940.P731184846222983423

/-! ## A139940.P10934567561096447915

`∩[A028955(n+1), A141337(n+1)]`
-/

namespace A139940.P10934567561096447915
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028955 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141337 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139940.P10934567561096447915

/-! ## A139940.P6213371962546767434

`∩[A035261(n+1), A107169(n+1)]`
-/

namespace A139940.P6213371962546767434
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035261 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107169 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139940.P6213371962546767434

/-!
# A139941: Primes of the form 19x^2+8xy+19y^2.

The programs for A139941, there is no canonical definition to state claims against.
-/

/-! ## A139941.P16149478843993423178

`∩[A033212(n+1), A141337(n+1)]`
-/

namespace A139941.P16149478843993423178
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033212 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141337 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139941.P16149478843993423178

/-! ## A139941.P13216582348519831608

`∩[A107168(n+1), A141337(n+1)]`
-/

namespace A139941.P13216582348519831608
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107168 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141337 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139941.P13216582348519831608

/-! ## A139941.P8930489681991208195

`∩[A040154(n+1), A107168(n+1)]`
-/

namespace A139941.P8930489681991208195
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040154 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107168 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139941.P8930489681991208195

/-! ## A139941.P2930243138168503534

`∩[A038897(n+1), A107168(n+1)]`
-/

namespace A139941.P2930243138168503534
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038897 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107168 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139941.P2930243138168503534

/-! ## A139941.P2989608135916339221

`∩[A107168(n+1), A297177(n+1)]`
-/

namespace A139941.P2989608135916339221
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107168 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297177 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139941.P2989608135916339221

/-! ## A139941.P10042174135755385025

`∩[A107168(n+1), A191065(n+1)]`
-/

namespace A139941.P10042174135755385025
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107168 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191065 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139941.P10042174135755385025

/-! ## A139941.P9120765041002525157

`∩[A038952(n+1), A107168(n+1)]`
-/

namespace A139941.P9120765041002525157
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038952 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107168 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139941.P9120765041002525157

/-! ## A139941.P8005207150900573524

`∩[A141337(n+1), A390422(n+1)]`
-/

namespace A139941.P8005207150900573524
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141337 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390422 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139941.P8005207150900573524

/-! ## A139941.P9142853028555424213

`∩[A141337(n+1), A243174(n+1)]`
-/

namespace A139941.P9142853028555424213
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141337 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243174 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139941.P9142853028555424213

/-! ## A139941.P177289301278700483

`∩[A141337(n+1), A243173(n+1)]`
-/

namespace A139941.P177289301278700483
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141337 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243173 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139941.P177289301278700483

/-! ## A139941.P4221847997364554490

`∩[A141337(n+1), A146510(n+1)]`
-/

namespace A139941.P4221847997364554490
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141337 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146510 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139941.P4221847997364554490

/-! ## A139941.P3733647280386671682

`∩[A035261(n+1), A107168(n+1)]`
-/

namespace A139941.P3733647280386671682
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035261 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107168 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139941.P3733647280386671682

/-!
# A139943: Primes of the form 3x^2+119y^2.

The programs for A139943, the canonical program `A139943.P7773536031816728990` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A139943 has offset 1).

The definition of A139943 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2509 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A139943.P4505578343611133923

`∩[A106902(n+1), A141173(n+1)]`
-/

namespace A139943.P4505578343611133923
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106902 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141173 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139943.P4505578343611133923

namespace A139943

/-- `∩[A106902(n+1), A141173(n+1)]` -/
def P4505578343611133923.Spec : Prop :=
  ∀ n, (P4505578343611133923.a n : ℤ) = A139943 (n + 1)

end A139943

/-! ## A139943.P7773536031816728990

`∩[A106935(n+1), A141160(n+1)]`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A139943

/-- `∩[A106935(n+1), A141160(n+1)]` -/
def P7773536031816728990.Spec : Prop :=
  ∀ n, (P7773536031816728990.a n : ℤ) = A139943 (n + 1)

theorem P7773536031816728990.correct : P7773536031816728990.Spec := by
  intro n
  simp only [A139943, Nat.add_sub_cancel]

end A139943

/-! ## A139943.P13838419876806824690

`∩[A106902(n+1), A359476(n+1)]`
-/

namespace A139943.P13838419876806824690
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106902 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359476 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139943.P13838419876806824690

namespace A139943

/-- `∩[A106902(n+1), A359476(n+1)]` -/
def P13838419876806824690.Spec : Prop :=
  ∀ n, (P13838419876806824690.a n : ℤ) = A139943 (n + 1)

end A139943

/-!
# A139944: Primes of the form 6x^2+6xy+61y^2.

The programs for A139944, there is no canonical definition to state claims against.
-/

/-! ## A139944.P18046943122277330831

`p?[A133812(A059268(n)+35)+A017533(n)]`
-/

namespace A139944.P18046943122277330831
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133812 (A059268 n + 35).toNat + A017533 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A139944.P18046943122277330831

/-! ## A139944.P2449327723880685772

`p?[A345499(A060834(n))]`
-/

namespace A139944.P2449327723880685772
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345499 (A060834 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A139944.P2449327723880685772

/-!
# A139945: Primes of the form 7x^2+51y^2.

The programs for A139945, the canonical program `A139945.P12251791057180537189` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A139945 has offset 1).

The definition of A139945 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2497 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A139945.P12251791057180537189

`∩[A106935(n+1), A139492(n+1)]`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A139945

/-- `∩[A106935(n+1), A139492(n+1)]` -/
def P12251791057180537189.Spec : Prop :=
  ∀ n, (P12251791057180537189.a n : ℤ) = A139945 (n + 1)

theorem P12251791057180537189.correct : P12251791057180537189.Spec := by
  intro n
  simp only [A139945, Nat.add_sub_cancel]

end A139945

/-! ## A139945.P7410473716148679713

`∩[A106935(n+1), A243172(n+1)]`
-/

namespace A139945.P7410473716148679713
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106935 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243172 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139945.P7410473716148679713

namespace A139945

/-- `∩[A106935(n+1), A243172(n+1)]` -/
def P7410473716148679713.Spec : Prop :=
  ∀ n, (P7410473716148679713.a n : ℤ) = A139945 (n + 1)

end A139945

/-!
# A139946: Primes of the form 14x^2+14xy+29y^2.

The programs for A139946, there is no canonical definition to state claims against.
-/

/-! ## A139946.P3975913930184786381

`∩[A106902(n+1), A107134(n+1)]`
-/

namespace A139946.P3975913930184786381
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106902 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107134 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139946.P3975913930184786381

/-! ## A139946.P1953841155167364091

`∩[A106902(n+1), A141172(n+1)]`
-/

namespace A139946.P1953841155167364091
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106902 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141172 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139946.P1953841155167364091

/-! ## A139946.P2903450246544503585

`∩[A106902(n+1), A155568(n+1)]`
-/

namespace A139946.P2903450246544503585
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106902 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155568 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139946.P2903450246544503585

/-! ## A139946.P17630024571476444638

`∩[A106902(n+1), A242662(n)]`
-/

namespace A139946.P17630024571476444638
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106902 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242662 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139946.P17630024571476444638

/-! ## A139946.P1443877332657862546

`∩[A106902(n+1), A155578(n+1)]`
-/

namespace A139946.P1443877332657862546
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106902 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155578 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139946.P1443877332657862546

/-!
# A139947: Primes of the form 17x^2+21y^2.

The programs for A139947, there is no canonical definition to state claims against.
-/

/-! ## A139947.P12410642429675295631

`∩[A038889(n+1), A106972(n+1)]`
-/

namespace A139947.P12410642429675295631
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038889 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106972 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139947.P12410642429675295631

/-! ## A139947.P11186046382723235142

`∩[A106972(n+1), A296931(n+1)]`
-/

namespace A139947.P11186046382723235142
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106972 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296931 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139947.P11186046382723235142

/-! ## A139947.P11446585802895706097

`∩[A035258(n+1), A106972(n+1)]`
-/

namespace A139947.P11446585802895706097
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035258 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106972 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139947.P11446585802895706097

/-!
# A139948: Primes of the form 19x^2+4xy+19y^2.

The programs for A139948, there is no canonical definition to state claims against.
-/

/-! ## A139948.P4144329003787805965

`∩[A102271(n+1), A106904(n+1)]`
-/

namespace A139948.P4144329003787805965
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102271 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106904 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139948.P4144329003787805965

/-! ## A139948.P5277326670396495410

`∩[A106904(n+1), A141173(n+1)]`
-/

namespace A139948.P5277326670396495410
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106904 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141173 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139948.P5277326670396495410

/-! ## A139948.P12481708334369123369

`∩[A040138(n+1), A102271(n+1)]`
-/

namespace A139948.P12481708334369123369
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040138 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102271 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139948.P12481708334369123369

/-! ## A139948.P2967125642520958086

`∩[A038889(n+1), A102271(n+1)]`
-/

namespace A139948.P2967125642520958086
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038889 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102271 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139948.P2967125642520958086

/-! ## A139948.P3444796294096704219

`∩[A102271(n+1), A296938(n+1)]`
-/

namespace A139948.P3444796294096704219
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102271 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296938 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139948.P3444796294096704219

/-! ## A139948.P29075782114907409

`∩[A102271(n+1), A191034(n+1)]`
-/

namespace A139948.P29075782114907409
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102271 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191034 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139948.P29075782114907409

/-! ## A139948.P7255833809219539876

`∩[A102271(n+1), A296930(n+1)]`
-/

namespace A139948.P7255833809219539876
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102271 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296930 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139948.P7255833809219539876

/-! ## A139948.P6044895651088806016

`∩[A038930(n+1), A102271(n+1)]`
-/

namespace A139948.P6044895651088806016
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038930 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102271 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139948.P6044895651088806016

/-! ## A139948.P18093341244257468302

`∩[A020679(n+1), A038889(n+1)]`
-/

namespace A139948.P18093341244257468302
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020679 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038889 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139948.P18093341244257468302

/-! ## A139948.P2104394687494225515

`∩[A020679(n+1), A038930(n+1)]`
-/

namespace A139948.P2104394687494225515
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020679 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038930 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139948.P2104394687494225515

/-! ## A139948.P8483134243323515801

`∩[A020679(n+1), A106904(n+1)]`
-/

namespace A139948.P8483134243323515801
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020679 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106904 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139948.P8483134243323515801

/-! ## A139948.P16549911973538928036

`∩[A020679(n+1), A191034(n+1)]`
-/

namespace A139948.P16549911973538928036
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020679 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191034 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139948.P16549911973538928036

/-! ## A139948.P9688918189020220922

`∩[A020679(n+1), A296930(n+1)]`
-/

namespace A139948.P9688918189020220922
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020679 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296930 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139948.P9688918189020220922

/-! ## A139948.P9182186909432278416

`∩[A020679(n+1), A296938(n+1)]`
-/

namespace A139948.P9182186909432278416
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020679 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296938 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139948.P9182186909432278416

/-! ## A139948.P11839358059231063490

`∩[A020679(n+1), A040138(n+1)]`
-/

namespace A139948.P11839358059231063490
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020679 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040138 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139948.P11839358059231063490

/-! ## A139948.P14620429050807201302

`∩[A035258(n+1), A102271(n+1)]`
-/

namespace A139948.P14620429050807201302
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035258 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102271 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139948.P14620429050807201302

/-!
# A139949: Primes of the form 2x^2+2xy+193y^2.

The programs for A139949, there is no canonical definition to state claims against.
-/

/-! ## A139949.P16708844674872532525

`∩[A106911(n+1), A141172(n+1)]`
-/

namespace A139949.P16708844674872532525
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106911 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141172 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139949.P16708844674872532525

/-! ## A139949.P3536955330203873229

`∩[A106911(n+1), A242662(n)]`
-/

namespace A139949.P3536955330203873229
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106911 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242662 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139949.P3536955330203873229

/-! ## A139949.P11133238876353469431

`∩[A106911(n+1), A358946(n+1)]`
-/

namespace A139949.P11133238876353469431
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106911 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358946 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139949.P11133238876353469431

/-!
# A139950: Primes of the form 5x^2+77y^2.

The programs for A139950, there is no canonical definition to state claims against.
-/

/-! ## A139950.P62958576311381206

`∩[A106878(n+1), A141182(n+1)]`
-/

namespace A139950.P62958576311381206
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106878 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141182 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139950.P62958576311381206

/-! ## A139950.P6014305073209749475

`∩[A106878(n+1), A243166(n+1)]`
-/

namespace A139950.P6014305073209749475
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106878 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243166 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139950.P6014305073209749475

/-!
# A139951: Primes of the form 7x^2+55y^2.

The programs for A139951, there is no canonical definition to state claims against.
-/

/-! ## A139951.P17350078696887849526

`∩[A106911(n+1), A141173(n+1)]`
-/

namespace A139951.P17350078696887849526
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106911 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141173 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139951.P17350078696887849526

/-! ## A139951.P339696822083949041

`∩[A106878(n+1), A141183(n+1)]`
-/

namespace A139951.P339696822083949041
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106878 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141183 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139951.P339696822083949041

/-!
# A139952: Primes of the form 10x^2+10xy+41y^2.

The programs for A139952, there is no canonical definition to state claims against.
-/

/-! ## A139952.P5264949019177540680

`∩[A033205(n+1), A237609(n+1)]`
-/

namespace A139952.P5264949019177540680
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033205 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237609 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139952.P5264949019177540680

/-! ## A139952.P5380265227818987098

`A088963(xor(A001359(n+1), A122334(n)))`
-/

namespace A139952.P5380265227818987098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088963 (Int.xor (A001359 (n + 1)) (A122334 n)).toNat

end

end A139952.P5380265227818987098

/-!
# A139953: Primes of the form 11x^2+35y^2.

The programs for A139953, there is no canonical definition to state claims against.
-/

/-! ## A139953.P13394218375589832532

`∩[A106881(n+1), A141183(n+1)]`
-/

namespace A139953.P13394218375589832532
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106881 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141183 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139953.P13394218375589832532

/-! ## A139953.P17621680264677252472

`p?[A243178(A214547(n+1))]`
-/

namespace A139953.P17621680264677252472
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243178 (A214547 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A139953.P17621680264677252472

/-!
# A139954: Primes of the form 14x^2+14xy+31y^2.

The programs for A139954, there is no canonical definition to state claims against.
-/

/-! ## A139954.P18360607211579956944

`∩[A141173(n+1), A267478(n+1)]`
-/

namespace A139954.P18360607211579956944
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141173 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267478 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139954.P18360607211579956944

/-! ## A139954.P11486547776948712175

`∩[A267478(n+1), A359476(n+1)]`
-/

namespace A139954.P11486547776948712175
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267478 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359476 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139954.P11486547776948712175

/-!
# A139955: Primes of the form 22x^2+22xy+23y^2.

The programs for A139955, there is no canonical definition to state claims against.
-/

/-! ## A139955.P9030659517423574921

`∩[A106865(n+1), A139493(n+1)]`
-/

namespace A139955.P9030659517423574921
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106865 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139493 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139955.P9030659517423574921

/-! ## A139955.P293670775128376918

`∩[A122870(n+1), A139493(n+1)]`
-/

namespace A139955.P293670775128376918
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122870 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139493 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139955.P293670775128376918

/-! ## A139955.P8699557025329403706

`∩[A106865(n+1), A316621(n+1)]`
-/

namespace A139955.P8699557025329403706
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106865 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316621 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139955.P8699557025329403706

/-! ## A139955.P9406665740381920108

`∩[A122870(n+1), A316621(n+1)]`
-/

namespace A139955.P9406665740381920108
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122870 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316621 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139955.P9406665740381920108

/-! ## A139955.P7751889135977600037

`∩[A029718(n+1), A139493(n+1)]`
-/

namespace A139955.P7751889135977600037
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029718 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139493 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139955.P7751889135977600037

/-! ## A139955.P186488410743452101

`∩[A028972(n+1), A139493(n+1)]`
-/

namespace A139955.P186488410743452101
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028972 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139493 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139955.P186488410743452101

/-!
# A139956: Primes of the form 3x^2+136y^2.

The programs for A139956, the canonical program `A139956.P1465954480000345955` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A139956 has offset 1).

The definition of A139956 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2521 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A139956.P120694494169509370

`∩[A139842(n+1), A141373(n+1)]`
-/

namespace A139956.P120694494169509370
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139842 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141373 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139956.P120694494169509370

namespace A139956

/-- `∩[A139842(n+1), A141373(n+1)]` -/
def P120694494169509370.Spec : Prop :=
  ∀ n, (P120694494169509370.a n : ℤ) = A139956 (n + 1)

end A139956

/-! ## A139956.P15860435787572825648

`p?[or(2, A139842(n+1))]`
-/

namespace A139956.P15860435787572825648
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 2 (A139842 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A139956.P15860435787572825648

namespace A139956

/-- `p?[or(2, A139842(n+1))]` -/
def P15860435787572825648.Spec : Prop :=
  ∀ n, P15860435787572825648.a n = A139956 (n + 1)

end A139956

/-! ## A139956.P592591300893796685

`∩[A139842(n+1), A141170(n+1)]`
-/

namespace A139956.P592591300893796685
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139842 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141170 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139956.P592591300893796685

namespace A139956

/-- `∩[A139842(n+1), A141170(n+1)]` -/
def P592591300893796685.Spec : Prop :=
  ∀ n, (P592591300893796685.a n : ℤ) = A139956 (n + 1)

end A139956

/-! ## A139956.P18391419688500180661

`∩[A106935(n+1), A139842(n+1)]`
-/

namespace A139956.P18391419688500180661
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106935 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139842 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139956.P18391419688500180661

namespace A139956

/-- `∩[A106935(n+1), A139842(n+1)]` -/
def P18391419688500180661.Spec : Prop :=
  ∀ n, (P18391419688500180661.a n : ℤ) = A139956 (n + 1)

end A139956

/-! ## A139956.P1465954480000345955

`∩[A106935(n+1), A141170(n+1)]`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A139956

/-- `∩[A106935(n+1), A141170(n+1)]` -/
def P1465954480000345955.Spec : Prop :=
  ∀ n, (P1465954480000345955.a n : ℤ) = A139956 (n + 1)

theorem P1465954480000345955.correct : P1465954480000345955.Spec := by
  intro n
  simp only [A139956, Nat.add_sub_cancel]

end A139956

/-! ## A139956.P12782855778894676758

`∩[A106935(n+1), A141373(n+1)]`
-/

namespace A139956.P12782855778894676758
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106935 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141373 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139956.P12782855778894676758

namespace A139956

/-- `∩[A106935(n+1), A141373(n+1)]` -/
def P12782855778894676758.Spec : Prop :=
  ∀ n, (P12782855778894676758.a n : ℤ) = A139956 (n + 1)

end A139956

/-! ## A139956.P4388378764786394043

`∩[A007520(n+1), A139842(n+1)]`
-/

namespace A139956.P4388378764786394043
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007520 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139842 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139956.P4388378764786394043

namespace A139956

/-- `∩[A007520(n+1), A139842(n+1)]` -/
def P4388378764786394043.Spec : Prop :=
  ∀ n, (P4388378764786394043.a n : ℤ) = A139956 (n + 1)

end A139956

/-! ## A139956.P16023691296514187840

`∩[A045339(n+1), A139842(n+1)]`
-/

namespace A139956.P16023691296514187840
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045339 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139842 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139956.P16023691296514187840

namespace A139956

/-- `∩[A045339(n+1), A139842(n+1)]` -/
def P16023691296514187840.Spec : Prop :=
  ∀ n, (P16023691296514187840.a n : ℤ) = A139956 (n + 1)

end A139956

/-! ## A139956.P1827193491405812645

`∩[A139842(n+1), A332446(n+1)]`
-/

namespace A139956.P1827193491405812645
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139842 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332446 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139956.P1827193491405812645

namespace A139956

/-- `∩[A139842(n+1), A332446(n+1)]` -/
def P1827193491405812645.Spec : Prop :=
  ∀ n, (P1827193491405812645.a n : ℤ) = A139956 (n + 1)

end A139956

/-! ## A139956.P3660754885402312551

`∩[A139842(n+1), A163183(n+1)]`
-/

namespace A139956.P3660754885402312551
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139842 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163183 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139956.P3660754885402312551

namespace A139956

/-- `∩[A139842(n+1), A163183(n+1)]` -/
def P3660754885402312551.Spec : Prop :=
  ∀ n, (P3660754885402312551.a n : ℤ) = A139956 (n + 1)

end A139956

/-! ## A139956.P14461957967432282912

`∩[A095282(n+1), A139842(n+1)]`
-/

namespace A139956.P14461957967432282912
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095282 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139842 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139956.P14461957967432282912

namespace A139956

/-- `∩[A095282(n+1), A139842(n+1)]` -/
def P14461957967432282912.Spec : Prop :=
  ∀ n, (P14461957967432282912.a n : ℤ) = A139956 (n + 1)

end A139956

/-! ## A139956.P16726717631840095346

`∩[A139842(n+1), A192717(n+1)]`
-/

namespace A139956.P16726717631840095346
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139842 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192717 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139956.P16726717631840095346

namespace A139956

/-- `∩[A139842(n+1), A192717(n+1)]` -/
def P16726717631840095346.Spec : Prop :=
  ∀ n, (P16726717631840095346.a n : ℤ) = A139956 (n + 1)

end A139956

/-! ## A139956.P8208560044080411161

`∩[A040107(n+1), A139842(n+1)]`
-/

namespace A139956.P8208560044080411161
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040107 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139842 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139956.P8208560044080411161

namespace A139956

/-- `∩[A040107(n+1), A139842(n+1)]` -/
def P8208560044080411161.Spec : Prop :=
  ∀ n, (P8208560044080411161.a n : ℤ) = A139956 (n + 1)

end A139956

/-! ## A139956.P4997769073232047385

`∩[A051071(n+1), A139842(n+1)]`
-/

namespace A139956.P4997769073232047385
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051071 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139842 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139956.P4997769073232047385

namespace A139956

/-- `∩[A051071(n+1), A139842(n+1)]` -/
def P4997769073232047385.Spec : Prop :=
  ∀ n, (P4997769073232047385.a n : ℤ) = A139956 (n + 1)

end A139956

/-! ## A139956.P136801583301838798

`∩[A051073(n+1), A139842(n+1)]`
-/

namespace A139956.P136801583301838798
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051073 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139842 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139956.P136801583301838798

namespace A139956

/-- `∩[A051073(n+1), A139842(n+1)]` -/
def P136801583301838798.Spec : Prop :=
  ∀ n, (P136801583301838798.a n : ℤ) = A139956 (n + 1)

end A139956

/-! ## A139956.P15325944259370376043

`∩[A038876(n+1), A139842(n+1)]`
-/

namespace A139956.P15325944259370376043
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038876 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139842 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139956.P15325944259370376043

namespace A139956

/-- `∩[A038876(n+1), A139842(n+1)]` -/
def P15325944259370376043.Spec : Prop :=
  ∀ n, (P15325944259370376043.a n : ℤ) = A139956 (n + 1)

end A139956

/-! ## A139956.P4932243267168597049

`∩[A038929(n+1), A139842(n+1)]`
-/

namespace A139956.P4932243267168597049
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038929 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139842 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139956.P4932243267168597049

namespace A139956

/-- `∩[A038929(n+1), A139842(n+1)]` -/
def P4932243267168597049.Spec : Prop :=
  ∀ n, (P4932243267168597049.a n : ℤ) = A139956 (n + 1)

end A139956

/-! ## A139956.P18102799699559322315

`∩[A038929(n+1), A141373(n+1)]`
-/

namespace A139956.P18102799699559322315
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038929 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141373 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139956.P18102799699559322315

namespace A139956

/-- `∩[A038929(n+1), A141373(n+1)]` -/
def P18102799699559322315.Spec : Prop :=
  ∀ n, (P18102799699559322315.a n : ℤ) = A139956 (n + 1)

end A139956

/-! ## A139956.P16716241084853552156

`∩[A033200(n+1), A139842(n+1)]`
-/

namespace A139956.P16716241084853552156
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033200 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139842 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139956.P16716241084853552156

namespace A139956

/-- `∩[A033200(n+1), A139842(n+1)]` -/
def P16716241084853552156.Spec : Prop :=
  ∀ n, (P16716241084853552156.a n : ℤ) = A139956 (n + 1)

end A139956

/-! ## A139956.P14919836848307728168

`∩[A033203(n+1), A139842(n+1)]`
-/

namespace A139956.P14919836848307728168
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033203 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139842 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139956.P14919836848307728168

namespace A139956

/-- `∩[A033203(n+1), A139842(n+1)]` -/
def P14919836848307728168.Spec : Prop :=
  ∀ n, (P14919836848307728168.a n : ℤ) = A139956 (n + 1)

end A139956

/-!
# A139957: Primes of the form 4x^2+4xy+103y^2.

The programs for A139957, there is no canonical definition to state claims against.
-/

/-! ## A139957.P16294154121420028319

`∩[A107006(n+1), A139643(n+1)]`
-/

namespace A139957.P16294154121420028319
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107006 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139643 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139957.P16294154121420028319

/-! ## A139957.P3521335836837129857

`p?[or(2, A139643(n+1))]`
-/

namespace A139957.P3521335836837129857
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 2 (A139643 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A139957.P3521335836837129857

/-! ## A139957.P13429610509590737239

`∩[A106904(n+1), A107006(n+1)]`
-/

namespace A139957.P13429610509590737239
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106904 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107006 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139957.P13429610509590737239

/-! ## A139957.P17409785047275994968

`∩[A106904(n+1), A290402(n+1)]`
-/

namespace A139957.P17409785047275994968
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106904 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290402 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139957.P17409785047275994968

/-! ## A139957.P6559578605454009810

`∩[A139643(n+1), A290402(n+1)]`
-/

namespace A139957.P6559578605454009810
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139643 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290402 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139957.P6559578605454009810

/-! ## A139957.P8576579889444036680

`∩[A007522(n+1), A106904(n+1)]`
-/

namespace A139957.P8576579889444036680
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007522 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106904 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139957.P8576579889444036680

/-! ## A139957.P2938885762108714018

`∩[A007522(n+1), A139643(n+1)]`
-/

namespace A139957.P2938885762108714018
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007522 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139643 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139957.P2938885762108714018

/-! ## A139957.P12560755415516722523

`∩[A045382(n+1), A106904(n+1)]`
-/

namespace A139957.P12560755415516722523
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045382 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106904 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139957.P12560755415516722523

/-! ## A139957.P11893508622141671877

`∩[A045382(n+1), A139643(n+1)]`
-/

namespace A139957.P11893508622141671877
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045382 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139643 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139957.P11893508622141671877

/-! ## A139957.P4491645561035349836

`∩[A068229(n+1), A139643(n+1)]`
-/

namespace A139957.P4491645561035349836
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068229 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139643 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139957.P4491645561035349836

/-! ## A139957.P14355179256700972563

`∩[A094712(n+1), A139643(n+1)]`
-/

namespace A139957.P14355179256700972563
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094712 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139643 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139957.P14355179256700972563

/-! ## A139957.P15079770499924077965

`∩[A139643(n+1), A332514(n+1)]`
-/

namespace A139957.P15079770499924077965
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139643 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332514 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139957.P15079770499924077965

/-! ## A139957.P4767468870852740813

`∩[A004628(n+1), A106904(n+1)]`
-/

namespace A139957.P4767468870852740813
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004628 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106904 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139957.P4767468870852740813

/-! ## A139957.P8776269194865369155

`∩[A004628(n+1), A139643(n+1)]`
-/

namespace A139957.P8776269194865369155
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004628 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139643 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139957.P8776269194865369155

/-! ## A139957.P9779333998933762607

`∩[A040138(n+1), A107006(n+1)]`
-/

namespace A139957.P9779333998933762607
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040138 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107006 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139957.P9779333998933762607

/-! ## A139957.P8618097272188128329

`∩[A106904(n+1), A135659(n)]`
-/

namespace A139957.P8618097272188128329
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106904 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135659 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139957.P8618097272188128329

/-! ## A139957.P14727994478189372230

`∩[A139643(n+1), A135659(n)]`
-/

namespace A139957.P14727994478189372230
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139643 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135659 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139957.P14727994478189372230

/-! ## A139957.P15305935827415538506

`∩[A038889(n+1), A135659(n)]`
-/

namespace A139957.P15305935827415538506
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038889 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135659 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139957.P15305935827415538506

/-! ## A139957.P16548373592438626786

`∩[A296938(n+1), A135659(n)]`
-/

namespace A139957.P16548373592438626786
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296938 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135659 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139957.P16548373592438626786

/-! ## A139957.P8315177697795939949

`∩[A038889(n+1), A107006(n+1)]`
-/

namespace A139957.P8315177697795939949
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038889 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107006 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139957.P8315177697795939949

/-!
# A139958: Primes of the form 8x^2+51y^2.

The programs for A139958, there is no canonical definition to state claims against.
-/

/-! ## A139958.P6503549275539995327

`∩[A107007(n+1), A139841(n+1)]`
-/

namespace A139958.P6503549275539995327
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107007 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139841 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139958.P6503549275539995327

/-! ## A139958.P16581851741308723400

`∩[A139841(n+1), A168539(n+1)]`
-/

namespace A139958.P16581851741308723400
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139841 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168539 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139958.P16581851741308723400

/-! ## A139958.P5255870264975092827

`∩[A068231(n+1), A139841(n+1)]`
-/

namespace A139958.P5255870264975092827
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068231 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139841 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139958.P5255870264975092827

/-! ## A139958.P1171278968632823556

`∩[A139841(n+1), A141187(n+1)]`
-/

namespace A139958.P1171278968632823556
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139841 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141187 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139958.P1171278968632823556

/-! ## A139958.P12891356358578681620

`∩[A007520(n+1), A139841(n+1)]`
-/

namespace A139958.P12891356358578681620
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007520 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139841 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139958.P12891356358578681620

/-! ## A139958.P15063060096104500812

`∩[A139841(n+1), A332446(n+1)]`
-/

namespace A139958.P15063060096104500812
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139841 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332446 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139958.P15063060096104500812

/-! ## A139958.P4529932822016553669

`∩[A139841(n+1), A163183(n+1)]`
-/

namespace A139958.P4529932822016553669
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139841 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163183 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139958.P4529932822016553669

/-! ## A139958.P9092023211390990186

`∩[A139841(n+1), A192717(n+1)]`
-/

namespace A139958.P9092023211390990186
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139841 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192717 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139958.P9092023211390990186

/-! ## A139958.P15473049727825588972

`∩[A139841(n+1), A332516(n+1)]`
-/

namespace A139958.P15473049727825588972
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139841 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332516 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139958.P15473049727825588972

/-! ## A139958.P6493067349022663936

`∩[A040138(n+1), A107007(n+1)]`
-/

namespace A139958.P6493067349022663936
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040138 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107007 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139958.P6493067349022663936

/-! ## A139958.P2339846517073707890

`∩[A040138(n+1), A168539(n+1)]`
-/

namespace A139958.P2339846517073707890
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040138 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168539 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139958.P2339846517073707890

/-! ## A139958.P8596652662793912740

`∩[A139841(n+1), A348845(n)]`
-/

namespace A139958.P8596652662793912740
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139841 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348845 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139958.P8596652662793912740

/-! ## A139958.P13200694868482284264

`∩[A038889(n+1), A348845(n)]`
-/

namespace A139958.P13200694868482284264
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038889 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348845 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139958.P13200694868482284264

/-! ## A139958.P13428114338190037637

`∩[A038929(n+1), A348845(n)]`
-/

namespace A139958.P13428114338190037637
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038929 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348845 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139958.P13428114338190037637

/-! ## A139958.P1622058639912685482

`∩[A296938(n+1), A348845(n)]`
-/

namespace A139958.P1622058639912685482
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296938 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348845 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139958.P1622058639912685482

/-! ## A139958.P3806413295996669633

`∩[A038889(n+1), A107007(n+1)]`
-/

namespace A139958.P3806413295996669633
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038889 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107007 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139958.P3806413295996669633

/-! ## A139958.P10332385494136715669

`∩[A038929(n+1), A139841(n+1)]`
-/

namespace A139958.P10332385494136715669
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038929 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139841 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139958.P10332385494136715669

/-! ## A139958.P8975224824255726088

`∩[A038889(n+1), A168539(n+1)]`
-/

namespace A139958.P8975224824255726088
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038889 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168539 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139958.P8975224824255726088

/-! ## A139958.P6011070120149442096

`∩[A038929(n+1), A168539(n+1)]`
-/

namespace A139958.P6011070120149442096
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038929 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168539 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139958.P6011070120149442096

/-! ## A139958.P11202043757019942784

`∩[A097933(n+1), A139841(n+1)]`
-/

namespace A139958.P11202043757019942784
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097933 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139841 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139958.P11202043757019942784

/-!
# A139959: Primes of the form 8x^2+8xy+53y^2.

The programs for A139959, there is no canonical definition to state claims against.
-/

/-! ## A139959.P496381217707499610

`∩[A107003(n+1), A139841(n+1)]`
-/

namespace A139959.P496381217707499610
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107003 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139841 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139959.P496381217707499610

/-! ## A139959.P12620407481454647578

`p?[or(4, A139841(n+1))]`
-/

namespace A139959.P12620407481454647578
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 4 (A139841 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A139959.P12620407481454647578

/-! ## A139959.P5529531505049234746

`∩[A040117(n+1), A139841(n+1)]`
-/

namespace A139959.P5529531505049234746
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040117 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139841 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139959.P5529531505049234746

/-! ## A139959.P3835862662717991832

`∩[A007521(n+1), A139841(n+1)]`
-/

namespace A139959.P3835862662717991832
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007521 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139841 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139959.P3835862662717991832

/-! ## A139959.P11155734306848540485

`∩[A139841(n+1), A385224(n+1)]`
-/

namespace A139959.P11155734306848540485
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139841 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385224 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139959.P11155734306848540485

/-! ## A139959.P16660000216931275929

`∩[A034847(n+1), A139841(n+1)]`
-/

namespace A139959.P16660000216931275929
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034847 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139841 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139959.P16660000216931275929

/-! ## A139959.P10822046905602132483

`∩[A139841(n+1), A392947(n+1)]`
-/

namespace A139959.P10822046905602132483
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139841 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392947 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139959.P10822046905602132483

/-! ## A139959.P8889717525817605397

`∩[A096785(n+1), A139841(n+1)]`
-/

namespace A139959.P8889717525817605397
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096785 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139841 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139959.P8889717525817605397

/-! ## A139959.P2841783309837159218

`∩[A004627(n+1), A139841(n+1)]`
-/

namespace A139959.P2841783309837159218
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004627 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139841 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139959.P2841783309837159218

/-! ## A139959.P14587113787333688919

`∩[A097934(n+1), A139841(n+1)]`
-/

namespace A139959.P14587113787333688919
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097934 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139841 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139959.P14587113787333688919

/-! ## A139959.P13241268495608712288

`∩[A107003(n+1), A296938(n+1)]`
-/

namespace A139959.P13241268495608712288
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107003 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296938 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139959.P13241268495608712288

/-! ## A139959.P1564478399817449096

`∩[A296938(n+1), A135659(n)-2]`
-/

namespace A139959.P1564478399817449096
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296938 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135659 n - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139959.P1564478399817449096

/-! ## A139959.P5877516537869362986

`∩[A038889(n+1), A107003(n+1)]`
-/

namespace A139959.P5877516537869362986
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038889 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107003 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139959.P5877516537869362986

/-! ## A139959.P4250049489311945598

`∩[A038889(n+1), A135659(n)-2]`
-/

namespace A139959.P4250049489311945598
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038889 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135659 n - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139959.P4250049489311945598

/-! ## A139959.P5994193058910417541

`∩[A002144(n+1), A139841(n+1)]`
-/

namespace A139959.P5994193058910417541
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002144 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139841 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139959.P5994193058910417541

/-! ## A139959.P15207238043609550835

`∩[A107003(n+1), A296931(n+1)]`
-/

namespace A139959.P15207238043609550835
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107003 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296931 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139959.P15207238043609550835

/-! ## A139959.P3223137902262601426

`∩[A139841(n+1), A280084(n+1)]`
-/

namespace A139959.P3223137902262601426
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139841 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280084 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139959.P3223137902262601426

/-! ## A139959.P12902428295814725126

`∩[A038910(n+1), A107003(n+1)]`
-/

namespace A139959.P12902428295814725126
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038910 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107003 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139959.P12902428295814725126

/-! ## A139959.P5791279760276450167

`∩[A107003(n+1), A296929(n+1)]`
-/

namespace A139959.P5791279760276450167
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107003 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296929 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139959.P5791279760276450167

/-! ## A139959.P17592716252942381431

`∩[A139841(n+1), A296929(n+1)]`
-/

namespace A139959.P17592716252942381431
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139841 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296929 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139959.P17592716252942381431

/-!
# A139960: Primes of the form 12x^2+12xy+37y^2.

The programs for A139960, there is no canonical definition to state claims against.
-/

/-! ## A139960.P16449594356344658318

`∩[A139530(n+1), A139842(n+1)]`
-/

namespace A139960.P16449594356344658318
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139530 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139842 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139960.P16449594356344658318

/-! ## A139960.P9872833212766096111

`∩[A068228(n+1), A139842(n+1)]`
-/

namespace A139960.P9872833212766096111
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068228 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139842 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139960.P9872833212766096111

/-! ## A139960.P11593333233427677146

`∩[A007521(n+1), A139842(n+1)]`
-/

namespace A139960.P11593333233427677146
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007521 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139842 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139960.P11593333233427677146

/-! ## A139960.P18437028449604546835

`∩[A045366(n+1), A139842(n+1)]`
-/

namespace A139960.P18437028449604546835
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045366 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139842 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139960.P18437028449604546835

/-! ## A139960.P13204580106307206548

`∩[A139842(n+1), A351537(n+1)]`
-/

namespace A139960.P13204580106307206548
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139842 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351537 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139960.P13204580106307206548

/-! ## A139960.P17312687238167524171

`∩[A139842(n+1), A354467(n+1)]`
-/

namespace A139960.P17312687238167524171
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139842 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354467 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139960.P17312687238167524171

/-! ## A139960.P6965164618543994607

`∩[A139842(n+1), A385224(n+1)]`
-/

namespace A139960.P6965164618543994607
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139842 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385224 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139960.P6965164618543994607

/-! ## A139960.P13842589546181773440

`∩[A139842(n+1), A392947(n+1)]`
-/

namespace A139960.P13842589546181773440
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139842 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392947 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139960.P13842589546181773440

/-! ## A139960.P12104997775293367250

`∩[A004627(n+1), A139842(n+1)]`
-/

namespace A139960.P12104997775293367250
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004627 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139842 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139960.P12104997775293367250

/-! ## A139960.P6428481021423776845

`∩[A097933(n+1), A139842(n+1)]`
-/

namespace A139960.P6428481021423776845
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097933 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139842 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139960.P6428481021423776845

/-! ## A139960.P9164107944639694465

`∩[A002144(n+1), A139842(n+1)]`
-/

namespace A139960.P9164107944639694465
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002144 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139842 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139960.P9164107944639694465

/-! ## A139960.P7905597294078609150

`∩[A002313(n+1), A139842(n+1)]`
-/

namespace A139960.P7905597294078609150
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002313 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139842 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139960.P7905597294078609150

/-! ## A139960.P12609814633392947783

`∩[A139842(n+1), A280084(n+1)]`
-/

namespace A139960.P12609814633392947783
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139842 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280084 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139960.P12609814633392947783

/-! ## A139960.P2454757596687793399

`∩[A139530(n+1), A191025(n+1)]`
-/

namespace A139960.P2454757596687793399
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139530 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191025 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139960.P2454757596687793399

/-! ## A139960.P1554590403090437222

`∩[A003628(n+1), A139842(n+1)]`
-/

namespace A139960.P1554590403090437222
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003628 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139842 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139960.P1554590403090437222

/-! ## A139960.P15044795221604236614

`∩[A038909(n+1), A139530(n+1)]`
-/

namespace A139960.P15044795221604236614
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038909 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139530 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139960.P15044795221604236614

/-! ## A139960.P16808757397574806862

`∩[A045355(n+1), A139842(n+1)]`
-/

namespace A139960.P16808757397574806862
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045355 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139842 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139960.P16808757397574806862

/-! ## A139960.P1233272199777357064

`∩[A055025(n+1), A139842(n+1)]`
-/

namespace A139960.P1233272199777357064
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055025 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139842 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139960.P1233272199777357064

/-! ## A139960.P11403154417271013776

`∩[A139530(n+1), A191073(n+1)]`
-/

namespace A139960.P11403154417271013776
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139530 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191073 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139960.P11403154417271013776

/-! ## A139960.P13167869814044522081

`∩[A139530(n+1), A296930(n+1)]`
-/

namespace A139960.P13167869814044522081
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139530 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296930 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139960.P13167869814044522081

/-!
# A139961: Primes of the form 17x^2+24y^2.

The programs for A139961, there is no canonical definition to state claims against.
-/

/-! ## A139961.P17509256129182727986

`∩[A107181(n+1), A139843(n+1)]`
-/

namespace A139961.P17509256129182727986
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107181 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139843 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139961.P17509256129182727986

/-! ## A139961.P11005172009714768791

`p?[and(-3, A139843(n+1))]`
-/

namespace A139961.P11005172009714768791
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-3) (A139843 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A139961.P11005172009714768791

/-! ## A139961.P10287446654332387241

`∩[A007519(n+1), A139843(n+1)]`
-/

namespace A139961.P10287446654332387241
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007519 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139843 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139961.P10287446654332387241

/-! ## A139961.P17870400821710474945

`∩[A045390(n+1), A139843(n+1)]`
-/

namespace A139961.P17870400821710474945
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045390 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139843 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139961.P17870400821710474945

/-! ## A139961.P439512316036278820

`∩[A139843(n+1), A209544(n+1)]`
-/

namespace A139961.P439512316036278820
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139843 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209544 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139961.P439512316036278820

/-! ## A139961.P11209861297988086984

`∩[A139843(n+1), A290402(n+1)]`
-/

namespace A139961.P11209861297988086984
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139843 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290402 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139961.P11209861297988086984

/-! ## A139961.P8456757814734822014

`∩[A040117(n+1), A139843(n+1)]`
-/

namespace A139961.P8456757814734822014
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040117 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139843 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139961.P8456757814734822014

/-! ## A139961.P5405948857592123476

`∩[A139843(n+1), A243183(n+1)]`
-/

namespace A139961.P5405948857592123476
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139843 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243183 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139961.P5405948857592123476

/-! ## A139961.P10324858271541369850

`∩[A106949(n+1), A139843(n+1)]`
-/

namespace A139961.P10324858271541369850
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106949 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139843 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139961.P10324858271541369850

/-! ## A139961.P12663700999664640860

`∩[A007519(n+1), A106902(n+1)]`
-/

namespace A139961.P12663700999664640860
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007519 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106902 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139961.P12663700999664640860

/-! ## A139961.P14059393998692597805

`∩[A045390(n+1), A106902(n+1)]`
-/

namespace A139961.P14059393998692597805
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045390 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106902 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139961.P14059393998692597805

/-! ## A139961.P7294371982732376096

`∩[A106902(n+1), A107181(n+1)]`
-/

namespace A139961.P7294371982732376096
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106902 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107181 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139961.P7294371982732376096

/-! ## A139961.P14479814411893181653

`∩[A106902(n+1), A290402(n+1)]`
-/

namespace A139961.P14479814411893181653
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106902 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290402 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139961.P14479814411893181653

/-! ## A139961.P8552738310410243365

`∩[A004625(n+1), A106902(n+1)]`
-/

namespace A139961.P8552738310410243365
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004625 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106902 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139961.P8552738310410243365

/-! ## A139961.P9277610141714089254

`∩[A004625(n+1), A139843(n+1)]`
-/

namespace A139961.P9277610141714089254
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004625 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139843 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139961.P9277610141714089254

/-! ## A139961.P5459322536976078893

`∩[A106902(n+1), A332227(n+1)]`
-/

namespace A139961.P5459322536976078893
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106902 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332227 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139961.P5459322536976078893

/-! ## A139961.P6021893299931292132

`∩[A139843(n+1), A332227(n+1)]`
-/

namespace A139961.P6021893299931292132
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139843 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332227 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139961.P6021893299931292132

/-! ## A139961.P1763991191245321197

`∩[A096785(n+1), A139843(n+1)]`
-/

namespace A139961.P1763991191245321197
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096785 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139843 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139961.P1763991191245321197

/-! ## A139961.P2827748101569698184

`∩[A106902(n+1), A263011(n+1)]`
-/

namespace A139961.P2827748101569698184
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106902 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263011 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139961.P2827748101569698184

/-! ## A139961.P7509933107533441359

`∩[A106902(n+1), A350052(n)]`
-/

namespace A139961.P7509933107533441359
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106902 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350052 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139961.P7509933107533441359

/-!
# A139962: Primes of the form 23x^2+22xy+23y^2.

The programs for A139962, the canonical program `A139962.P16591384432573993768` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A139962 has offset 1).

The definition of A139962 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2514 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A139962.P13649497950219703035

`A139843(eq[3, A139843(n+1)%4]+1)`
-/

namespace A139962.P13649497950219703035
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A139843 (n + 1)) 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139843 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A139962.P13649497950219703035

namespace A139962

/-- `A139843(eq[3, A139843(n+1)%4]+1)` -/
def P13649497950219703035.Spec : Prop :=
  ∀ n, P13649497950219703035.a n = A139962 (n + 1)

end A139962

/-! ## A139962.P5104319274483702830

`∩[A134517(n+1), A139843(n+1)]`
-/

namespace A139962.P5104319274483702830
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134517 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139843 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139962.P5104319274483702830

namespace A139962

/-- `∩[A134517(n+1), A139843(n+1)]` -/
def P5104319274483702830.Spec : Prop :=
  ∀ n, (P5104319274483702830.a n : ℤ) = A139962 (n + 1)

end A139962

/-! ## A139962.P15015907588823934061

`p?[or(4, A139843(n+1))]`
-/

namespace A139962.P15015907588823934061
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 4 (A139843 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A139962.P15015907588823934061

namespace A139962

/-- `p?[or(4, A139843(n+1))]` -/
def P15015907588823934061.Spec : Prop :=
  ∀ n, P15015907588823934061.a n = A139962 (n + 1)

end A139962

/-! ## A139962.P3803526799853135597

`∩[A130063(n+1), A139843(n+1)]`
-/

namespace A139962.P3803526799853135597
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130063 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139843 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139962.P3803526799853135597

namespace A139962

/-- `∩[A130063(n+1), A139843(n+1)]` -/
def P3803526799853135597.Spec : Prop :=
  ∀ n, (P3803526799853135597.a n : ℤ) = A139962 (n + 1)

end A139962

/-! ## A139962.P16591384432573993768

`∩[A106935(n+1), A130063(n+1)]`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A139962

/-- `∩[A106935(n+1), A130063(n+1)]` -/
def P16591384432573993768.Spec : Prop :=
  ∀ n, (P16591384432573993768.a n : ℤ) = A139962 (n + 1)

theorem P16591384432573993768.correct : P16591384432573993768.Spec := by
  intro n
  simp only [A139962, Nat.add_sub_cancel]

end A139962

/-! ## A139962.P1894914291058642089

`∩[A106935(n+1), A134517(n+1)]`
-/

namespace A139962.P1894914291058642089
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106935 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134517 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139962.P1894914291058642089

namespace A139962

/-- `∩[A106935(n+1), A134517(n+1)]` -/
def P1894914291058642089.Spec : Prop :=
  ∀ n, (P1894914291058642089.a n : ℤ) = A139962 (n + 1)

end A139962

/-! ## A139962.P11053087539342152825

`∩[A106935(n+1), A139843(n+1)]`
-/

namespace A139962.P11053087539342152825
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106935 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139843 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139962.P11053087539342152825

namespace A139962

/-- `∩[A106935(n+1), A139843(n+1)]` -/
def P11053087539342152825.Spec : Prop :=
  ∀ n, (P11053087539342152825.a n : ℤ) = A139962 (n + 1)

end A139962

/-! ## A139962.P4030265136043748240

`∩[A007522(n+1), A106902(n+1)]`
-/

namespace A139962.P4030265136043748240
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007522 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106902 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139962.P4030265136043748240

namespace A139962

/-- `∩[A007522(n+1), A106902(n+1)]` -/
def P4030265136043748240.Spec : Prop :=
  ∀ n, (P4030265136043748240.a n : ℤ) = A139962 (n + 1)

end A139962

/-! ## A139962.P4308389179791350285

`∩[A007522(n+1), A139843(n+1)]`
-/

namespace A139962.P4308389179791350285
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007522 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139843 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139962.P4308389179791350285

namespace A139962

/-- `∩[A007522(n+1), A139843(n+1)]` -/
def P4308389179791350285.Spec : Prop :=
  ∀ n, (P4308389179791350285.a n : ℤ) = A139962 (n + 1)

end A139962

/-! ## A139962.P17892834883015505170

`∩[A045382(n+1), A106902(n+1)]`
-/

namespace A139962.P17892834883015505170
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045382 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106902 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139962.P17892834883015505170

namespace A139962

/-- `∩[A045382(n+1), A106902(n+1)]` -/
def P17892834883015505170.Spec : Prop :=
  ∀ n, (P17892834883015505170.a n : ℤ) = A139962 (n + 1)

end A139962

/-! ## A139962.P9612438442782741879

`∩[A045382(n+1), A139843(n+1)]`
-/

namespace A139962.P9612438442782741879
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045382 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139843 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139962.P9612438442782741879

namespace A139962

/-- `∩[A045382(n+1), A139843(n+1)]` -/
def P9612438442782741879.Spec : Prop :=
  ∀ n, (P9612438442782741879.a n : ℤ) = A139962 (n + 1)

end A139962

/-! ## A139962.P1133809326196792731

`∩[A068231(n+1), A139843(n+1)]`
-/

namespace A139962.P1133809326196792731
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068231 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139843 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139962.P1133809326196792731

namespace A139962

/-- `∩[A068231(n+1), A139843(n+1)]` -/
def P1133809326196792731.Spec : Prop :=
  ∀ n, (P1133809326196792731.a n : ℤ) = A139962 (n + 1)

end A139962

/-! ## A139962.P2657362993433045695

`∩[A094712(n+1), A139843(n+1)]`
-/

namespace A139962.P2657362993433045695
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094712 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139843 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139962.P2657362993433045695

namespace A139962

/-- `∩[A094712(n+1), A139843(n+1)]` -/
def P2657362993433045695.Spec : Prop :=
  ∀ n, (P2657362993433045695.a n : ℤ) = A139962 (n + 1)

end A139962

/-! ## A139962.P17976315143992112150

`∩[A106902(n+1), A130063(n+1)]`
-/

namespace A139962.P17976315143992112150
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106902 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130063 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139962.P17976315143992112150

namespace A139962

/-- `∩[A106902(n+1), A130063(n+1)]` -/
def P17976315143992112150.Spec : Prop :=
  ∀ n, (P17976315143992112150.a n : ℤ) = A139962 (n + 1)

end A139962

/-! ## A139962.P10444710874144243127

`∩[A106902(n+1), A134517(n+1)]`
-/

namespace A139962.P10444710874144243127
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106902 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134517 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139962.P10444710874144243127

namespace A139962

/-- `∩[A106902(n+1), A134517(n+1)]` -/
def P10444710874144243127.Spec : Prop :=
  ∀ n, (P10444710874144243127.a n : ℤ) = A139962 (n + 1)

end A139962

/-! ## A139962.P8971677597165072633

`∩[A106935(n+1), A141171(n+1)]`
-/

namespace A139962.P8971677597165072633
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106935 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141171 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139962.P8971677597165072633

namespace A139962

/-- `∩[A106935(n+1), A141171(n+1)]` -/
def P8971677597165072633.Spec : Prop :=
  ∀ n, (P8971677597165072633.a n : ℤ) = A139962 (n + 1)

end A139962

/-! ## A139962.P14995537356846543214

`∩[A139843(n+1), A141123(n+1)]`
-/

namespace A139962.P14995537356846543214
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139843 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141123 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139962.P14995537356846543214

namespace A139962

/-- `∩[A139843(n+1), A141123(n+1)]` -/
def P14995537356846543214.Spec : Prop :=
  ∀ n, (P14995537356846543214.a n : ℤ) = A139962 (n + 1)

end A139962

/-! ## A139962.P14191704344530355664

`∩[A139843(n+1), A141171(n+1)]`
-/

namespace A139962.P14191704344530355664
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139843 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141171 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139962.P14191704344530355664

namespace A139962

/-- `∩[A139843(n+1), A141171(n+1)]` -/
def P14191704344530355664.Spec : Prop :=
  ∀ n, (P14191704344530355664.a n : ℤ) = A139962 (n + 1)

end A139962

/-! ## A139962.P10573825120543476886

`∩[A106935(n+1), A256397(n+1)]`
-/

namespace A139962.P10573825120543476886
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106935 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256397 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139962.P10573825120543476886

namespace A139962

/-- `∩[A106935(n+1), A256397(n+1)]` -/
def P10573825120543476886.Spec : Prop :=
  ∀ n, (P10573825120543476886.a n : ℤ) = A139962 (n + 1)

end A139962

/-! ## A139962.P2170969760183526961

`∩[A139843(n+1), A397410(n+1)]`
-/

namespace A139962.P2170969760183526961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139843 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397410 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139962.P2170969760183526961

namespace A139962

/-- `∩[A139843(n+1), A397410(n+1)]` -/
def P2170969760183526961.Spec : Prop :=
  ∀ n, (P2170969760183526961.a n : ℤ) = A139962 (n + 1)

end A139962

/-!
# A139963: Primes of the form 2x^2+231y^2.

The programs for A139963, there is no canonical definition to state claims against.
-/

/-! ## A139963.P1973352581495443719

`A106856(A289469(n+1)^A327148(n))`
-/

namespace A139963.P1973352581495443719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106856 (SequenceMachineLib.roundAway ((A289469 (n + 1) : ℚ) ^ (A327148 n : ℤ))).toNat

end

end A139963.P1973352581495443719

/-!
# A139964: Primes of the form 3x^2+154y^2.

The programs for A139964, there is no canonical definition to state claims against.
-/

/-! ## A139964.P5665279588266542962

`∪[A140029(n+1), A140035(n+1)]`
-/

namespace A139964.P5665279588266542962
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140029 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140035 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A139964.P5665279588266542962

/-! ## A139964.P812681589982863264

`∩[A106915(n+1), A141177(n+1)]`
-/

namespace A139964.P812681589982863264
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106915 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141177 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139964.P812681589982863264

/-!
# A139965: Primes of the form 6x^2+77y^2.

The programs for A139965, the canonical program `A139965.P1097653739943172126` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A139965 has offset 1).

The definition of A139965 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A139965.P1097653739943172126

`∪[A140037(n+1), A140038(n+1)]`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A139965

/-- `∪[A140037(n+1), A140038(n+1)]` -/
def P1097653739943172126.Spec : Prop :=
  ∀ n, (P1097653739943172126.a n : ℤ) = A139965 (n + 1)

theorem P1097653739943172126.correct : P1097653739943172126.Spec := by
  intro n
  simp only [A139965, Nat.add_sub_cancel]

end A139965

/-! ## A139965.P8532220957524234065

`∩[A106915(n+1), A141176(n+1)]`
-/

namespace A139965.P8532220957524234065
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106915 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141176 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139965.P8532220957524234065

namespace A139965

/-- `∩[A106915(n+1), A141176(n+1)]` -/
def P8532220957524234065.Spec : Prop :=
  ∀ n, (P8532220957524234065.a n : ℤ) = A139965 (n + 1)

end A139965

/-! ## A139965.P13833974578224386984

`∩[A106984(n+1), A141160(n+1)]`
-/

namespace A139965.P13833974578224386984
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106984 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141160 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139965.P13833974578224386984

namespace A139965

/-- `∩[A106984(n+1), A141160(n+1)]` -/
def P13833974578224386984.Spec : Prop :=
  ∀ n, (P13833974578224386984.a n : ℤ) = A139965 (n + 1)

end A139965

/-! ## A139965.P10445494786764415296

`∩[A106915(n+1), A243184(n+1)]`
-/

namespace A139965.P10445494786764415296
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106915 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243184 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139965.P10445494786764415296

namespace A139965

/-- `∩[A106915(n+1), A243184(n+1)]` -/
def P10445494786764415296.Spec : Prop :=
  ∀ n, (P10445494786764415296.a n : ℤ) = A139965 (n + 1)

end A139965

/-!
# A139966: Primes of the form 7x^2+66y^2.

The programs for A139966, there is no canonical definition to state claims against.
-/

/-! ## A139966.P7346411509551439688

`∪[A140031(n+1), A140039(n+1)]`
-/

namespace A139966.P7346411509551439688
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140031 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140039 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A139966.P7346411509551439688

/-!
# A139967: Primes of the form 11x^2+42y^2.

The programs for A139967, there is no canonical definition to state claims against.
-/

/-! ## A139967.P15459909712255130844

`∪[A140034(n+1), A140042(n+1)]`
-/

namespace A139967.P15459909712255130844
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140034 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140042 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A139967.P15459909712255130844

/-! ## A139967.P6811740419917933317

`∩[A084865(n+1), A139493(n+1)]`
-/

namespace A139967.P6811740419917933317
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084865 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139493 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139967.P6811740419917933317

/-! ## A139967.P16049790739261263930

`∩[A084865(n+1), A316621(n+1)]`
-/

namespace A139967.P16049790739261263930
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084865 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316621 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139967.P16049790739261263930

/-! ## A139967.P1115419998117868121

`∩[A084864(n+1), A139493(n+1)]`
-/

namespace A139967.P1115419998117868121
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084864 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139493 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139967.P1115419998117868121

/-! ## A139967.P10850262147315159278

`∩[A002480(n+1), A139493(n+1)]`
-/

namespace A139967.P10850262147315159278
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002480 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139493 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139967.P10850262147315159278

/-!
# A139968: Primes of the form 14x^2+33y^2.

The programs for A139968, there is no canonical definition to state claims against.
-/

/-! ## A139968.P16695058220700973209

`∪[A140040(n+1), A140043(n+1)]`
-/

namespace A139968.P16695058220700973209
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140043 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A139968.P16695058220700973209

/-! ## A139968.P6900982962828205128

`∩[A033216(n+1), A141160(n+1)]`
-/

namespace A139968.P6900982962828205128
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033216 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141160 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139968.P6900982962828205128

/-!
# A139969: Primes of the form 21x^2+22y^2.

The programs for A139969, the canonical program `A139969.P6360869808431639067` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A139969 has offset 1).

The definition of A139969 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A139969.P6360869808431639067

`∪[A140036(n+1), A140041(n+1)]`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A139969

/-- `∪[A140036(n+1), A140041(n+1)]` -/
def P6360869808431639067.Spec : Prop :=
  ∀ n, (P6360869808431639067.a n : ℤ) = A139969 (n + 1)

theorem P6360869808431639067.correct : P6360869808431639067.Spec := by
  intro n
  simp only [A139969, Nat.add_sub_cancel]

end A139969

/-! ## A139969.P11036395822949279680

`∩[A106984(n+1), A139492(n+1)]`
-/

namespace A139969.P11036395822949279680
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106984 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139492 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139969.P11036395822949279680

namespace A139969

/-- `∩[A106984(n+1), A139492(n+1)]` -/
def P11036395822949279680.Spec : Prop :=
  ∀ n, (P11036395822949279680.a n : ℤ) = A139969 (n + 1)

end A139969

/-! ## A139969.P18028492723405347061

`∩[A106984(n+1), A243172(n+1)]`
-/

namespace A139969.P18028492723405347061
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106984 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243172 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139969.P18028492723405347061

namespace A139969

/-- `∩[A106984(n+1), A243172(n+1)]` -/
def P18028492723405347061.Spec : Prop :=
  ∀ n, (P18028492723405347061.a n : ℤ) = A139969 (n + 1)

end A139969

/-!
# A139970: Primes of the form 4x^2+4xy+131y^2.

The programs for A139970, there is no canonical definition to state claims against.
-/

/-! ## A139970.P9518850197494522580

`∩[A139646(n+1), A139829(n+1)]`
-/

namespace A139970.P9518850197494522580
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139646 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139829 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139970.P9518850197494522580

/-! ## A139970.P4806813538415199637

`∩[A139829(n+1), A141111(n+1)]`
-/

namespace A139970.P4806813538415199637
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139829 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141111 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139970.P4806813538415199637

/-! ## A139970.P3911640640596382925

`∩[A122869(n+1), A139646(n+1)]`
-/

namespace A139970.P3911640640596382925
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122869 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139646 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139970.P3911640640596382925

/-! ## A139970.P15590166954025365558

`∩[A007520(n+1), A139646(n+1)]`
-/

namespace A139970.P15590166954025365558
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007520 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139646 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139970.P15590166954025365558

/-! ## A139970.P3359873572558310193

`∩[A007520(n+1), A141111(n+1)]`
-/

namespace A139970.P3359873572558310193
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007520 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141111 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139970.P3359873572558310193

/-! ## A139970.P11269805313765754166

`∩[A045339(n+1), A139646(n+1)]`
-/

namespace A139970.P11269805313765754166
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045339 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139646 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139970.P11269805313765754166

/-! ## A139970.P12139965604450524115

`∩[A045339(n+1), A141111(n+1)]`
-/

namespace A139970.P12139965604450524115
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045339 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141111 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139970.P12139965604450524115

/-! ## A139970.P16099585243141569033

`∩[A139646(n+1), A332446(n+1)]`
-/

namespace A139970.P16099585243141569033
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139646 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332446 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139970.P16099585243141569033

/-! ## A139970.P4461920176967285736

`∩[A141111(n+1), A332446(n+1)]`
-/

namespace A139970.P4461920176967285736
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141111 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332446 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139970.P4461920176967285736

/-! ## A139970.P176570818362835591

`∩[A095282(n+1), A139646(n+1)]`
-/

namespace A139970.P176570818362835591
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095282 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139646 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139970.P176570818362835591

/-! ## A139970.P148623964647455536

`∩[A139646(n+1), A192717(n+1)]`
-/

namespace A139970.P148623964647455536
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139646 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192717 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139970.P148623964647455536

/-! ## A139970.P2323905217595309349

`∩[A141111(n+1), A192717(n+1)]`
-/

namespace A139970.P2323905217595309349
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141111 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192717 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139970.P2323905217595309349

/-! ## A139970.P8129095659341108474

`∩[A040126(n+1), A139829(n+1)]`
-/

namespace A139970.P8129095659341108474
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040126 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139829 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139970.P8129095659341108474

/-! ## A139970.P13553331969182479116

`∩[A038945(n+1), A139829(n+1)]`
-/

namespace A139970.P13553331969182479116
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038945 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139829 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139970.P13553331969182479116

/-! ## A139970.P5772045628211329923

`∩[A038883(n+1), A139829(n+1)]`
-/

namespace A139970.P5772045628211329923
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038883 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139829 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139970.P5772045628211329923

/-! ## A139970.P8964655023455855138

`∩[A139829(n+1), A296937(n+1)]`
-/

namespace A139970.P8964655023455855138
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139829 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296937 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139970.P8964655023455855138

/-! ## A139970.P5503708975513774834

`∩[A038880(n+1), A139646(n+1)]`
-/

namespace A139970.P5503708975513774834
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038880 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139646 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139970.P5503708975513774834

/-! ## A139970.P8369981225736898455

`∩[A038900(n+1), A139646(n+1)]`
-/

namespace A139970.P8369981225736898455
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038900 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139646 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139970.P8369981225736898455

/-! ## A139970.P8338818632444356806

`∩[A038900(n+1), A139829(n+1)]`
-/

namespace A139970.P8338818632444356806
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038900 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139829 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139970.P8338818632444356806

/-! ## A139970.P573684909293552423

`∩[A002145(n+1), A139646(n+1)]`
-/

namespace A139970.P573684909293552423
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002145 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139646 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139970.P573684909293552423

/-!
# A139971: Primes of the form 5x^2+104y^2.

The programs for A139971, there is no canonical definition to state claims against.
-/

/-! ## A139971.P13177442678747850375

`∩[A033205(n+1), A139862(n+1)]`
-/

namespace A139971.P13177442678747850375
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033205 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139862 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139971.P13177442678747850375

/-! ## A139971.P10322437270789032175

`∩[A007521(n+1), A139862(n+1)]`
-/

namespace A139971.P10322437270789032175
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007521 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139862 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139971.P10322437270789032175

/-! ## A139971.P12891179537624091022

`∩[A045366(n+1), A139862(n+1)]`
-/

namespace A139971.P12891179537624091022
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045366 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139862 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139971.P12891179537624091022

/-! ## A139971.P15921174560577125221

`∩[A091729(n+1), A139862(n+1)]`
-/

namespace A139971.P15921174560577125221
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091729 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139862 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139971.P15921174560577125221

/-! ## A139971.P13089644226288729222

`∩[A139862(n+1), A385224(n+1)]`
-/

namespace A139971.P13089644226288729222
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139862 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385224 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139971.P13089644226288729222

/-! ## A139971.P17599209063362954766

`∩[A139862(n+1), A392947(n+1)]`
-/

namespace A139971.P17599209063362954766
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139862 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392947 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139971.P17599209063362954766

/-! ## A139971.P3640720208344094774

`∩[A004627(n+1), A139862(n+1)]`
-/

namespace A139971.P3640720208344094774
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004627 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139862 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139971.P3640720208344094774

/-! ## A139971.P9680495622475039655

`∩[A002144(n+1), A139862(n+1)]`
-/

namespace A139971.P9680495622475039655
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002144 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139862 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139971.P9680495622475039655

/-! ## A139971.P13405914107638233665

`∩[A002313(n+1), A139862(n+1)]`
-/

namespace A139971.P13405914107638233665
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002313 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139862 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139971.P13405914107638233665

/-! ## A139971.P2105572709334066535

`∩[A139862(n+1), A240920(n+1)]`
-/

namespace A139971.P2105572709334066535
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139862 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240920 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139971.P2105572709334066535

/-! ## A139971.P6020361450611458878

`∩[A139862(n+1), A280084(n+1)]`
-/

namespace A139971.P6020361450611458878
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139862 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280084 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139971.P6020361450611458878

/-! ## A139971.P14771519063700355107

`∩[A139862(n+1), A296922(n+1)]`
-/

namespace A139971.P14771519063700355107
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139862 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296922 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139971.P14771519063700355107

/-! ## A139971.P968994190139396806

`∩[A038899(n+1), A139862(n+1)]`
-/

namespace A139971.P968994190139396806
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038899 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139862 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139971.P968994190139396806

/-! ## A139971.P7270947427091845040

`∩[A003629(n+1), A139862(n+1)]`
-/

namespace A139971.P7270947427091845040
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003629 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139862 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139971.P7270947427091845040

/-! ## A139971.P6673446057614126022

`∩[A042999(n+1), A139862(n+1)]`
-/

namespace A139971.P6673446057614126022
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042999 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139862 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139971.P6673446057614126022

/-! ## A139971.P11692778680645338014

`∩[A055025(n+1), A139862(n+1)]`
-/

namespace A139971.P11692778680645338014
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055025 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139862 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139971.P11692778680645338014

/-! ## A139971.P10906925518175989988

`∩[A091727(n+1), A139862(n+1)]`
-/

namespace A139971.P10906925518175989988
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091727 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139862 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139971.P10906925518175989988

/-! ## A139971.P571706555287369871

`∩[A120960(n+1), A139862(n+1)]`
-/

namespace A139971.P571706555287369871
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120960 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139862 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139971.P571706555287369871

/-! ## A139971.P13169012948260612439

`∩[A139862(n+1), A296927(n+1)]`
-/

namespace A139971.P13169012948260612439
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139862 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296927 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139971.P13169012948260612439

/-!
# A139972: Primes of the form 8x^2+65y^2.

The programs for A139972, there is no canonical definition to state claims against.
-/

/-! ## A139972.P12542363281630198572

`∩[A007519(n+1), A139861(n+1)]`
-/

namespace A139972.P12542363281630198572
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007519 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139861 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139972.P12542363281630198572

/-! ## A139972.P862421246134267508

`∩[A139861(n+1), A209544(n+1)]`
-/

namespace A139972.P862421246134267508
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139861 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209544 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139972.P862421246134267508

/-! ## A139972.P15946365302338802344

`∩[A007519(n+1), A141112(n+1)]`
-/

namespace A139972.P15946365302338802344
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007519 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141112 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139972.P15946365302338802344

/-! ## A139972.P16832987434504255554

`∩[A141112(n+1), A209544(n+1)]`
-/

namespace A139972.P16832987434504255554
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141112 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209544 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139972.P16832987434504255554

/-! ## A139972.P18288469450888587980

`∩[A004625(n+1), A139861(n+1)]`
-/

namespace A139972.P18288469450888587980
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004625 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139861 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139972.P18288469450888587980

/-! ## A139972.P16420105556954347764

`∩[A004625(n+1), A141112(n+1)]`
-/

namespace A139972.P16420105556954347764
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004625 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141112 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139972.P16420105556954347764

/-! ## A139972.P1751991410379951518

`∩[A139861(n+1), A332227(n+1)]`
-/

namespace A139972.P1751991410379951518
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139861 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332227 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139972.P1751991410379951518

/-! ## A139972.P2202705489962184722

`∩[A141112(n+1), A332227(n+1)]`
-/

namespace A139972.P2202705489962184722
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141112 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332227 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139972.P2202705489962184722

/-! ## A139972.P8930134610644828275

`∩[A053028(n+1), A139861(n+1)]`
-/

namespace A139972.P8930134610644828275
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053028 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139861 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139972.P8930134610644828275

/-! ## A139972.P4578686871393980682

`∩[A139861(n+1), A263011(n+1)]`
-/

namespace A139972.P4578686871393980682
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139861 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263011 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139972.P4578686871393980682

/-! ## A139972.P16776532100985362554

`∩[A141112(n+1), A263011(n+1)]`
-/

namespace A139972.P16776532100985362554
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141112 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263011 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139972.P16776532100985362554

/-! ## A139972.P17583498972173954715

`∩[A001132(n+1), A139861(n+1)]`
-/

namespace A139972.P17583498972173954715
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001132 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139861 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139972.P17583498972173954715

/-! ## A139972.P69342879900389026

`∩[A097958(n+1), A139861(n+1)]`
-/

namespace A139972.P69342879900389026
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097958 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139861 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139972.P69342879900389026

/-! ## A139972.P465366975586499560

`∩[A002144(n+1), A139861(n+1)]`
-/

namespace A139972.P465366975586499560
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002144 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139861 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139972.P465366975586499560

/-! ## A139972.P3789241590412288296

`∩[A139861(n+1), A280084(n+1)]`
-/

namespace A139972.P3789241590412288296
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139861 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280084 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139972.P3789241590412288296

/-! ## A139972.P12945788945601273150

`∩[A038900(n+1), A139861(n+1)]`
-/

namespace A139972.P12945788945601273150
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038900 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139861 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139972.P12945788945601273150

/-! ## A139972.P4823264809334386861

`∩[A038880(n+1), A139861(n+1)]`
-/

namespace A139972.P4823264809334386861
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038880 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139861 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139972.P4823264809334386861

/-! ## A139972.P2586448723165343799

`∩[A003626(n+1), A139861(n+1)]`
-/

namespace A139972.P2586448723165343799
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003626 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139861 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139972.P2586448723165343799

/-! ## A139972.P10130794661907313944

`∩[A120960(n+1), A139861(n+1)]`
-/

namespace A139972.P10130794661907313944
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120960 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139861 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139972.P10130794661907313944

/-! ## A139972.P11290706722434201025

`∩[A139861(n+1), A296927(n+1)]`
-/

namespace A139972.P11290706722434201025
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139861 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296927 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139972.P11290706722434201025

/-!
# A139973: Primes of the form 8x^2+8xy+67y^2.

The programs for A139973, there is no canonical definition to state claims against.
-/

/-! ## A139973.P14363302405344860728

`∩[A122870(n+1), A139861(n+1)]`
-/

namespace A139973.P14363302405344860728
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122870 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139861 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139973.P14363302405344860728

/-! ## A139973.P15606468607170085721

`∩[A007520(n+1), A139861(n+1)]`
-/

namespace A139973.P15606468607170085721
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007520 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139861 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139973.P15606468607170085721

/-! ## A139973.P9444183993021547144

`∩[A007520(n+1), A141112(n+1)]`
-/

namespace A139973.P9444183993021547144
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007520 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141112 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139973.P9444183993021547144

/-! ## A139973.P16722638350938225516

`∩[A139861(n+1), A332446(n+1)]`
-/

namespace A139973.P16722638350938225516
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139861 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332446 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139973.P16722638350938225516

/-! ## A139973.P6809495799988441614

`∩[A141112(n+1), A332446(n+1)]`
-/

namespace A139973.P6809495799988441614
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141112 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332446 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139973.P6809495799988441614

/-! ## A139973.P7513367426771240682

`∩[A106906(n+1), A128288(n+2)]`
-/

namespace A139973.P7513367426771240682
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106906 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128288 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139973.P7513367426771240682

/-! ## A139973.P4307030700634004601

`∩[A139861(n+1), A128288(n+2)]`
-/

namespace A139973.P4307030700634004601
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139861 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128288 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139973.P4307030700634004601

/-! ## A139973.P10487381697477616046

`∩[A053027(n+1), A139861(n+1)]`
-/

namespace A139973.P10487381697477616046
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053027 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139861 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139973.P10487381697477616046

/-! ## A139973.P1712563238185983092

`∩[A139861(n+1), A192717(n+1)]`
-/

namespace A139973.P1712563238185983092
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139861 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192717 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139973.P1712563238185983092

/-! ## A139973.P16041182359108071757

`∩[A141112(n+1), A192717(n+1)]`
-/

namespace A139973.P16041182359108071757
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141112 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192717 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139973.P16041182359108071757

/-! ## A139973.P9535210465206704676

`∩[A139861(n+1), A296926(n+1)]`
-/

namespace A139973.P9535210465206704676
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139861 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296926 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139973.P9535210465206704676

/-! ## A139973.P5499585285824486784

`∩[A139861(n+1), A296928(n+1)]`
-/

namespace A139973.P5499585285824486784
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139861 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296928 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139973.P5499585285824486784

/-! ## A139973.P14458045219871784367

`∩[A139513(n+1), A139861(n+1)]`
-/

namespace A139973.P14458045219871784367
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139513 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139861 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139973.P14458045219871784367

/-! ## A139973.P2713116464994444538

`∩[A139861(n+1), A296922(n+1)]`
-/

namespace A139973.P2713116464994444538
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139861 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296922 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139973.P2713116464994444538

/-! ## A139973.P15026383759676749092

`∩[A097955(n+1), A139861(n+1)]`
-/

namespace A139973.P15026383759676749092
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097955 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139861 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139973.P15026383759676749092

/-! ## A139973.P4150294188133297495

`∩[A002145(n+1), A139861(n+1)]`
-/

namespace A139973.P4150294188133297495
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002145 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139861 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139973.P4150294188133297495

/-! ## A139973.P686231469196228290

`∩[A003629(n+1), A139861(n+1)]`
-/

namespace A139973.P686231469196228290
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003629 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139861 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139973.P686231469196228290

/-! ## A139973.P6261332266059003177

`∩[A085760(n+1), A139861(n+1)]`
-/

namespace A139973.P6261332266059003177
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085760 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139861 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139973.P6261332266059003177

/-! ## A139973.P2411998509865617182

`∩[A139861(n+1), A319041(n+1)]`
-/

namespace A139973.P2411998509865617182
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139861 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319041 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139973.P2411998509865617182

/-!
# A139974: Primes of the form 13x^2+40y^2.

The programs for A139974, there is no canonical definition to state claims against.
-/

/-! ## A139974.P371422444211121936

`∩[A107144(n+1), A139863(n+1)]`
-/

namespace A139974.P371422444211121936
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107144 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139863 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139974.P371422444211121936

/-! ## A139974.P10111845084252627925

`∩[A033210(n+1), A107144(n+1)]`
-/

namespace A139974.P10111845084252627925
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033210 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107144 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139974.P10111845084252627925

/-! ## A139974.P13605794362461612463

`∩[A033210(n+1), A139863(n+1)]`
-/

namespace A139974.P13605794362461612463
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033210 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139863 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139974.P13605794362461612463

/-! ## A139974.P48504641895812240

`∩[A033210(n+1), A141179(n+1)]`
-/

namespace A139974.P48504641895812240
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033210 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141179 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139974.P48504641895812240

/-! ## A139974.P8494656455979682483

`∩[A139863(n+1), A141179(n+1)]`
-/

namespace A139974.P8494656455979682483
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139863 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141179 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139974.P8494656455979682483

/-! ## A139974.P8053765121793026507

`∩[A122487(n+1), A139863(n+1)]`
-/

namespace A139974.P8053765121793026507
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122487 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139863 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139974.P8053765121793026507

/-! ## A139974.P5016626009983349346

`∩[A007521(n+1), A139863(n+1)]`
-/

namespace A139974.P5016626009983349346
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007521 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139863 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139974.P5016626009983349346

/-! ## A139974.P1321430021841611954

`∩[A045366(n+1), A139863(n+1)]`
-/

namespace A139974.P1321430021841611954
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045366 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139863 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139974.P1321430021841611954

/-! ## A139974.P4900778954526865163

`∩[A033210(n+1), A106889(n+1)]`
-/

namespace A139974.P4900778954526865163
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033210 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106889 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139974.P4900778954526865163

/-! ## A139974.P13580290386144054670

`∩[A033210(n+1), A128288(n+2)]`
-/

namespace A139974.P13580290386144054670
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033210 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128288 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139974.P13580290386144054670

/-! ## A139974.P6116913568350490140

`∩[A139863(n+1), A128288(n+2)]`
-/

namespace A139974.P6116913568350490140
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139863 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128288 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139974.P6116913568350490140

/-! ## A139974.P11092915384044475668

`∩[A053028(n+1), A139863(n+1)]`
-/

namespace A139974.P11092915384044475668
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053028 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139863 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139974.P11092915384044475668

/-! ## A139974.P12507076679090481831

`∩[A139863(n+1), A385224(n+1)]`
-/

namespace A139974.P12507076679090481831
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139863 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385224 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139974.P12507076679090481831

/-! ## A139974.P4575508332302194012

`∩[A139863(n+1), A392947(n+1)]`
-/

namespace A139974.P4575508332302194012
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139863 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392947 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139974.P4575508332302194012

/-! ## A139974.P5031737501168582079

`∩[A139863(n+1), A395264(n+1)]`
-/

namespace A139974.P5031737501168582079
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139863 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395264 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139974.P5031737501168582079

/-! ## A139974.P10417507123219864832

`∩[A004627(n+1), A139863(n+1)]`
-/

namespace A139974.P10417507123219864832
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004627 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139863 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139974.P10417507123219864832

/-! ## A139974.P13973589345539129252

`∩[A107144(n+1), A296928(n+1)]`
-/

namespace A139974.P13973589345539129252
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107144 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296928 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139974.P13973589345539129252

/-! ## A139974.P12920168528930111172

`∩[A139863(n+1), A296928(n+1)]`
-/

namespace A139974.P12920168528930111172
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139863 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296928 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139974.P12920168528930111172

/-! ## A139974.P1364844802073638376

`∩[A002144(n+1), A139863(n+1)]`
-/

namespace A139974.P1364844802073638376
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002144 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139863 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139974.P1364844802073638376

/-! ## A139974.P11878321870381454208

`∩[A002313(n+1), A139863(n+1)]`
-/

namespace A139974.P11878321870381454208
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002313 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139863 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139974.P11878321870381454208

/-!
# A139975: Primes of the form 20x^2+20xy+31y^2.

The programs for A139975, there is no canonical definition to state claims against.
-/

/-! ## A139975.P7016777212624244565

`∩[A139862(n+1), A141180(n+1)]`
-/

namespace A139975.P7016777212624244565
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139862 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141180 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139975.P7016777212624244565

/-! ## A139975.P12056855811791059111

`∩[A106906(n+1), A139862(n+1)]`
-/

namespace A139975.P12056855811791059111
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106906 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139862 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139975.P12056855811791059111

/-! ## A139975.P3113077352358197000

`∩[A106906(n+1), A141180(n+1)]`
-/

namespace A139975.P3113077352358197000
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106906 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141180 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139975.P3113077352358197000

/-! ## A139975.P11762379478794671153

`∩[A007522(n+1), A139862(n+1)]`
-/

namespace A139975.P11762379478794671153
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007522 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139862 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139975.P11762379478794671153

/-! ## A139975.P13240694685657968928

`∩[A045382(n+1), A139862(n+1)]`
-/

namespace A139975.P13240694685657968928
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045382 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139862 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139975.P13240694685657968928

/-! ## A139975.P10957676068266650899

`∩[A122869(n+1), A139862(n+1)]`
-/

namespace A139975.P10957676068266650899
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122869 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139862 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139975.P10957676068266650899

/-! ## A139975.P13213404810612631538

`∩[A014663(n+1), A139862(n+1)]`
-/

namespace A139975.P13213404810612631538
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014663 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139862 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139975.P13213404810612631538

/-! ## A139975.P12705263211098785830

`∩[A040098(n+1), A139862(n+1)]`
-/

namespace A139975.P12705263211098785830
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040098 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139862 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139975.P12705263211098785830

/-! ## A139975.P4102740273255698368

`∩[A004628(n+1), A139862(n+1)]`
-/

namespace A139975.P4102740273255698368
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004628 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139862 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139975.P4102740273255698368

/-! ## A139975.P565606034717890988

`∩[A040141(n+1), A139862(n+1)]`
-/

namespace A139975.P565606034717890988
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040141 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139862 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139975.P565606034717890988

/-! ## A139975.P14285804772310596656

`∩[A036259(n+1), A139862(n+1)]`
-/

namespace A139975.P14285804772310596656
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036259 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139862 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139975.P14285804772310596656

/-! ## A139975.P4601037960913529271

`∩[A045315(n+1), A139862(n+1)]`
-/

namespace A139975.P4601037960913529271
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045315 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139862 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139975.P4601037960913529271

/-! ## A139975.P3601058603749113774

`∩[A139862(n+1), A296926(n+1)]`
-/

namespace A139975.P3601058603749113774
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139862 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296926 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139975.P3601058603749113774

/-! ## A139975.P4688445623799609347

`∩[A139862(n+1), A296928(n+2)]`
-/

namespace A139975.P4688445623799609347
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139862 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296928 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139975.P4688445623799609347

/-! ## A139975.P9662034359047434186

`∩[A001132(n+1), A139862(n+1)]`
-/

namespace A139975.P9662034359047434186
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001132 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139862 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139975.P9662034359047434186

/-! ## A139975.P2674649009299745939

`∩[A038873(n+1), A139862(n+1)]`
-/

namespace A139975.P2674649009299745939
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038873 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139862 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139975.P2674649009299745939

/-! ## A139975.P6462998887836246570

`∩[A097958(n+1), A139862(n+1)]`
-/

namespace A139975.P6462998887836246570
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097958 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139862 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139975.P6462998887836246570

/-! ## A139975.P20111531718583842

`∩[A097955(n+1), A139862(n+1)]`
-/

namespace A139975.P20111531718583842
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097955 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139862 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139975.P20111531718583842

/-! ## A139975.P7518051117446435621

`∩[A038900(n+1), A139862(n+1)]`
-/

namespace A139975.P7518051117446435621
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038900 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139862 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139975.P7518051117446435621

/-!
# A139976: Primes of the form 23x^2+6xy+23y^2.

The programs for A139976, there is no canonical definition to state claims against.
-/

/-! ## A139976.P14068432156668351455

`∩[A139830(n+1), A139863(n+1)]`
-/

namespace A139976.P14068432156668351455
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139830 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139863 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139976.P14068432156668351455

/-! ## A139976.P1702253607604114379

`∩[A007522(n+1), A139863(n+1)]`
-/

namespace A139976.P1702253607604114379
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007522 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139863 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139976.P1702253607604114379

/-! ## A139976.P7870505053950899035

`∩[A045382(n+1), A139863(n+1)]`
-/

namespace A139976.P7870505053950899035
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045382 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139863 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139976.P7870505053950899035

/-! ## A139976.P7001391511937700647

`∩[A106865(n+1), A139863(n+1)]`
-/

namespace A139976.P7001391511937700647
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106865 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139863 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139976.P7001391511937700647

/-! ## A139976.P10301770792190399140

`∩[A122870(n+1), A139863(n+1)]`
-/

namespace A139976.P10301770792190399140
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122870 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139863 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139976.P10301770792190399140

/-! ## A139976.P4188194093324501006

`∩[A014663(n+1), A139863(n+1)]`
-/

namespace A139976.P4188194093324501006
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014663 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139863 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139976.P4188194093324501006

/-! ## A139976.P4929557320935453239

`∩[A139863(n+1), A385225(n+1)]`
-/

namespace A139976.P4929557320935453239
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139863 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385225 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139976.P4929557320935453239

/-! ## A139976.P3408474518282754254

`∩[A053027(n+1), A139863(n+1)]`
-/

namespace A139976.P3408474518282754254
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053027 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139863 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139976.P3408474518282754254

/-! ## A139976.P12325594432381978249

`∩[A040098(n+1), A139863(n+1)]`
-/

namespace A139976.P12325594432381978249
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040098 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139863 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139976.P12325594432381978249

/-! ## A139976.P6699088928269237691

`∩[A040126(n+1), A139830(n+1)]`
-/

namespace A139976.P6699088928269237691
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040126 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139830 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139976.P6699088928269237691

/-! ## A139976.P12865155854425810369

`∩[A004628(n+1), A139863(n+1)]`
-/

namespace A139976.P12865155854425810369
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004628 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139863 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139976.P12865155854425810369

/-! ## A139976.P7469471650337761771

`∩[A040141(n+1), A139863(n+1)]`
-/

namespace A139976.P7469471650337761771
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040141 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139863 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139976.P7469471650337761771

/-! ## A139976.P14493670116220396131

`∩[A036259(n+1), A139863(n+1)]`
-/

namespace A139976.P14493670116220396131
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036259 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139863 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139976.P14493670116220396131

/-! ## A139976.P17061342238078484499

`∩[A049542(n+1), A139863(n+1)]`
-/

namespace A139976.P17061342238078484499
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049542 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139863 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139976.P17061342238078484499

/-! ## A139976.P18408310986099772575

`∩[A045315(n+1), A139863(n+1)]`
-/

namespace A139976.P18408310986099772575
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045315 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139863 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139976.P18408310986099772575

/-! ## A139976.P3652639799406189904

`∩[A139830(n+1), A296937(n+1)]`
-/

namespace A139976.P3652639799406189904
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139830 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296937 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139976.P3652639799406189904

/-! ## A139976.P3456512932587772947

`∩[A001132(n+1), A139863(n+1)]`
-/

namespace A139976.P3456512932587772947
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001132 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139863 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139976.P3456512932587772947

/-! ## A139976.P1157427017270297567

`∩[A038883(n+1), A139830(n+1)]`
-/

namespace A139976.P1157427017270297567
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038883 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139830 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139976.P1157427017270297567

/-! ## A139976.P8789135073773790286

`∩[A038873(n+1), A139863(n+1)]`
-/

namespace A139976.P8789135073773790286
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038873 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139863 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139976.P8789135073773790286

/-!
# A139977: Primes of the form 4x^2+4xy+191y^2.

The programs for A139977, there is no canonical definition to state claims against.
-/

/-! ## A139977.P5057528149116169007

`∩[A007522(n+1), A139650(n+1)]`
-/

namespace A139977.P5057528149116169007
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007522 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139650 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139977.P5057528149116169007

/-! ## A139977.P4216303797371625357

`∩[A045382(n+1), A139650(n+1)]`
-/

namespace A139977.P4216303797371625357
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045382 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139650 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139977.P4216303797371625357

/-! ## A139977.P13407101270201754119

`∩[A007522(n+1), A267603(n+1)]`
-/

namespace A139977.P13407101270201754119
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007522 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267603 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139977.P13407101270201754119

/-! ## A139977.P8402890942061285662

`∩[A045382(n+1), A267603(n+1)]`
-/

namespace A139977.P8402890942061285662
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045382 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267603 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139977.P8402890942061285662

/-! ## A139977.P9094818663385206811

`∩[A094712(n+1), A139650(n+1)]`
-/

namespace A139977.P9094818663385206811
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094712 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139650 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139977.P9094818663385206811

/-! ## A139977.P16999977157140948580

`∩[A122869(n+1), A139650(n+1)]`
-/

namespace A139977.P16999977157140948580
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122869 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139650 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139977.P16999977157140948580

/-! ## A139977.P8335166772245674219

`∩[A004628(n+1), A139650(n+1)]`
-/

namespace A139977.P8335166772245674219
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004628 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139650 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139977.P8335166772245674219

/-! ## A139977.P1480170465787122801

`∩[A004628(n+1), A267603(n+1)]`
-/

namespace A139977.P1480170465787122801
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004628 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267603 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139977.P1480170465787122801

/-! ## A139977.P17010347400231211569

`∩[A038916(n+1), A139650(n+1)]`
-/

namespace A139977.P17010347400231211569
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038916 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139650 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139977.P17010347400231211569

/-! ## A139977.P6827417680215347101

`∩[A038986(n+1), A139650(n+1)]`
-/

namespace A139977.P6827417680215347101
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038986 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139650 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139977.P6827417680215347101

/-! ## A139977.P11518990290082512552

`∩[A002145(n+1), A139650(n+1)]`
-/

namespace A139977.P11518990290082512552
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002145 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139650 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139977.P11518990290082512552

/-! ## A139977.P14387915186017621

`∩[A003628(n+1), A139650(n+1)]`
-/

namespace A139977.P14387915186017621
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003628 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139650 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139977.P14387915186017621

/-! ## A139977.P7638979637397787958

`∩[A045326(n+1), A139650(n+1)]`
-/

namespace A139977.P7638979637397787958
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045326 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139650 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139977.P7638979637397787958

/-! ## A139977.P16803844576559361098

`∩[A045355(n+1), A139650(n+1)]`
-/

namespace A139977.P16803844576559361098
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045355 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139650 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139977.P16803844576559361098

/-! ## A139977.P17805781365998929979

`∩[A139650(n+1), A296925(n+1)]`
-/

namespace A139977.P17805781365998929979
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139650 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296925 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139977.P17805781365998929979

/-! ## A139977.P13785327632486745558

`∩[A003626(n+1), A139650(n+1)]`
-/

namespace A139977.P13785327632486745558
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003626 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139650 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139977.P13785327632486745558

/-! ## A139977.P5597435370005247504

`∩[A139650(n+1), A296923(n+1)]`
-/

namespace A139977.P5597435370005247504
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139650 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296923 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139977.P5597435370005247504

/-! ## A139977.P10565356283641302260

`∩[A085760(n+1), A139650(n+1)]`
-/

namespace A139977.P10565356283641302260
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085760 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139650 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139977.P10565356283641302260

/-! ## A139977.P11223665952192695537

`∩[A038892(n+1), A139650(n+1)]`
-/

namespace A139977.P11223665952192695537
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038892 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139650 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139977.P11223665952192695537

/-! ## A139977.P5246242007040230373

`∩[A139650(n+1), A297176(n+1)]`
-/

namespace A139977.P5246242007040230373
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139650 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297176 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139977.P5246242007040230373

/-!
# A139978: Primes of the form 5x^2+152y^2.

The programs for A139978, there is no canonical definition to state claims against.
-/

/-! ## A139978.P13187323318191029468

`∩[A107144(n+1), A139885(n+1)]`
-/

namespace A139978.P13187323318191029468
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107144 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139885 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139978.P13187323318191029468

/-! ## A139978.P8284319907745252078

`∩[A107144(n+1), A142956(n+1)]`
-/

namespace A139978.P8284319907745252078
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107144 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142956 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139978.P8284319907745252078

/-! ## A139978.P13011444413902732989

`∩[A139885(n+1), A142956(n+1)]`
-/

namespace A139978.P13011444413902732989
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139885 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142956 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139978.P13011444413902732989

/-! ## A139978.P14594716320810355055

`∩[A141179(n+1), A142956(n+1)]`
-/

namespace A139978.P14594716320810355055
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141179 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142956 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139978.P14594716320810355055

/-! ## A139978.P262088826728683425

`∩[A007521(n+1), A139885(n+1)]`
-/

namespace A139978.P262088826728683425
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007521 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139885 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139978.P262088826728683425

/-! ## A139978.P10870797747347589559

`∩[A045366(n+1), A139885(n+1)]`
-/

namespace A139978.P10870797747347589559
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045366 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139885 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139978.P10870797747347589559

/-! ## A139978.P4089523116948391782

`∩[A106889(n+1), A139885(n+1)]`
-/

namespace A139978.P4089523116948391782
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106889 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139885 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139978.P4089523116948391782

/-! ## A139978.P6805541549418542133

`∩[A106889(n+1), A142956(n+1)]`
-/

namespace A139978.P6805541549418542133
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106889 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142956 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139978.P6805541549418542133

/-! ## A139978.P8531556475344309636

`∩[A053028(n+1), A139885(n+1)]`
-/

namespace A139978.P8531556475344309636
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053028 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139885 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139978.P8531556475344309636

/-! ## A139978.P6493557139975212161

`∩[A139885(n+1), A385224(n+1)]`
-/

namespace A139978.P6493557139975212161
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139885 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385224 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139978.P6493557139975212161

/-! ## A139978.P1821362739716376276

`∩[A139885(n+1), A392947(n+1)]`
-/

namespace A139978.P1821362739716376276
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139885 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392947 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139978.P1821362739716376276

/-! ## A139978.P6413111508770608850

`∩[A139885(n+1), A395264(n+1)]`
-/

namespace A139978.P6413111508770608850
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139885 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395264 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139978.P6413111508770608850

/-! ## A139978.P17632503005220620976

`∩[A004627(n+1), A139885(n+1)]`
-/

namespace A139978.P17632503005220620976
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004627 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139885 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139978.P17632503005220620976

/-! ## A139978.P9828682393606732437

`∩[A038891(n+1), A107144(n+1)]`
-/

namespace A139978.P9828682393606732437
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038891 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107144 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139978.P9828682393606732437

/-! ## A139978.P13987385145925342602

`∩[A038891(n+1), A139885(n+1)]`
-/

namespace A139978.P13987385145925342602
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038891 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139885 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139978.P13987385145925342602

/-! ## A139978.P14300594033256047668

`∩[A002144(n+1), A139885(n+1)]`
-/

namespace A139978.P14300594033256047668
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002144 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139885 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139978.P14300594033256047668

/-! ## A139978.P9589160039774602113

`∩[A002313(n+1), A139885(n+1)]`
-/

namespace A139978.P9589160039774602113
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002313 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139885 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139978.P9589160039774602113

/-! ## A139978.P7171065151566383896

`∩[A106863(n+1), A107144(n+1)]`
-/

namespace A139978.P7171065151566383896
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106863 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107144 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139978.P7171065151566383896

/-! ## A139978.P2398373921204314299

`∩[A107144(n+1), A191019(n+1)]`
-/

namespace A139978.P2398373921204314299
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107144 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191019 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139978.P2398373921204314299

/-! ## A139978.P17636917184430830204

`∩[A139885(n+1), A280084(n+1)]`
-/

namespace A139978.P17636917184430830204
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139885 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280084 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139978.P17636917184430830204

/-!
# A139979: Primes of the form 8x^2+95y^2.

The programs for A139979, there is no canonical definition to state claims against.
-/

/-! ## A139979.P14264258174396774280

`∩[A139830(n+1), A139884(n+1)]`
-/

namespace A139979.P14264258174396774280
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139830 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139884 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139979.P14264258174396774280

/-! ## A139979.P253171425665838821

`∩[A007522(n+1), A139884(n+1)]`
-/

namespace A139979.P253171425665838821
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007522 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139884 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139979.P253171425665838821

/-! ## A139979.P209963515804291055

`∩[A122870(n+1), A139884(n+1)]`
-/

namespace A139979.P209963515804291055
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122870 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139884 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139979.P209963515804291055

/-! ## A139979.P10617345567210416397

`∩[A139830(n+1), A142955(n+1)]`
-/

namespace A139979.P10617345567210416397
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139830 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142955 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139979.P10617345567210416397

/-! ## A139979.P17366850727443670642

`∩[A053027(n+1), A139884(n+1)]`
-/

namespace A139979.P17366850727443670642
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053027 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139884 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139979.P17366850727443670642

/-! ## A139979.P3090115792549852069

`∩[A004628(n+1), A139884(n+1)]`
-/

namespace A139979.P3090115792549852069
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004628 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139884 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139979.P3090115792549852069

/-! ## A139979.P4176973465888914073

`∩[A040145(n+1), A139830(n+1)]`
-/

namespace A139979.P4176973465888914073
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040145 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139830 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139979.P4176973465888914073

/-! ## A139979.P13566041511157107674

`∩[A038891(n+1), A139830(n+1)]`
-/

namespace A139979.P13566041511157107674
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038891 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139830 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139979.P13566041511157107674

/-! ## A139979.P12696725711334657265

`∩[A038891(n+1), A139884(n+1)]`
-/

namespace A139979.P12696725711334657265
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038891 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139884 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139979.P12696725711334657265

/-! ## A139979.P14710479860041526196

`∩[A139513(n+1), A139884(n+1)]`
-/

namespace A139979.P14710479860041526196
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139513 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139884 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139979.P14710479860041526196

/-! ## A139979.P16310722229334990837

`∩[A139884(n+1), A296922(n+1)]`
-/

namespace A139979.P16310722229334990837
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139884 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296922 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139979.P16310722229334990837

/-! ## A139979.P12435824384507355460

`∩[A038915(n+1), A139830(n+1)]`
-/

namespace A139979.P12435824384507355460
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038915 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139830 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139979.P12435824384507355460

/-! ## A139979.P4298608120408079330

`∩[A038986(n+1), A139830(n+1)]`
-/

namespace A139979.P4298608120408079330
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038986 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139830 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139979.P4298608120408079330

/-! ## A139979.P8153359202483841576

`∩[A038986(n+1), A139884(n+1)]`
-/

namespace A139979.P8153359202483841576
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038986 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139884 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139979.P8153359202483841576

/-! ## A139979.P14142679006853254437

`∩[A139830(n+1), A191057(n+1)]`
-/

namespace A139979.P14142679006853254437
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139830 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191057 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139979.P14142679006853254437

/-! ## A139979.P8624261722387873875

`∩[A139830(n+1), A297175(n+1)]`
-/

namespace A139979.P8624261722387873875
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139830 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297175 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139979.P8624261722387873875

/-! ## A139979.P12209916716956622441

`∩[A139884(n+1), A297175(n+1)]`
-/

namespace A139979.P12209916716956622441
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139884 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297175 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139979.P12209916716956622441

/-! ## A139979.P11449503947405324379

`∩[A003628(n+1), A139884(n+1)]`
-/

namespace A139979.P11449503947405324379
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003628 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139884 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139979.P11449503947405324379

/-! ## A139979.P43806206952564678

`∩[A002145(n+1), A139884(n+1)]`
-/

namespace A139979.P43806206952564678
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002145 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139884 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139979.P43806206952564678

/-! ## A139979.P7192568804841271779

`∩[A139830(n+1), A191063(n+1)]`
-/

namespace A139979.P7192568804841271779
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139830 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191063 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139979.P7192568804841271779

/-!
# A139980: Primes of the form 8x^2+8xy+97y^2.

The programs for A139980, there is no canonical definition to state claims against.
-/

/-! ## A139980.P1944570667726920253

`∩[A007519(n+1), A139884(n+1)]`
-/

namespace A139980.P1944570667726920253
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007519 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139884 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139980.P1944570667726920253

/-! ## A139980.P4279841421357212062

`∩[A139884(n+1), A209544(n+1)]`
-/

namespace A139980.P4279841421357212062
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139884 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209544 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139980.P4279841421357212062

/-! ## A139980.P4185322045000699517

`∩[A004625(n+1), A139884(n+1)]`
-/

namespace A139980.P4185322045000699517
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004625 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139884 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139980.P4185322045000699517

/-! ## A139980.P11947264215718106933

`∩[A139884(n+1), A332227(n+1)]`
-/

namespace A139980.P11947264215718106933
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139884 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332227 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139980.P11947264215718106933

/-! ## A139980.P456368555378827266

`∩[A053028(n+1), A139884(n+1)]`
-/

namespace A139980.P456368555378827266
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053028 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139884 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139980.P456368555378827266

/-! ## A139980.P8875947150358819207

`∩[A139884(n+1), A263011(n+1)]`
-/

namespace A139980.P8875947150358819207
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139884 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263011 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139980.P8875947150358819207

/-! ## A139980.P7738323400227200957

`∩[A002144(n+1), A139884(n+1)]`
-/

namespace A139980.P7738323400227200957
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002144 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139884 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139980.P7738323400227200957

/-! ## A139980.P1863597050598987927

`∩[A033200(n+1), A139884(n+1)]`
-/

namespace A139980.P1863597050598987927
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033200 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139884 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139980.P1863597050598987927

/-! ## A139980.P2359604914597810325

`∩[A139884(n+1), A280084(n+1)]`
-/

namespace A139980.P2359604914597810325
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139884 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280084 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139980.P2359604914597810325

/-! ## A139980.P16450136726694270864

`∩[A038916(n+1), A139884(n+1)]`
-/

namespace A139980.P16450136726694270864
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038916 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139884 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139980.P16450136726694270864

/-! ## A139980.P15550365052827297778

`∩[A139884(n+1), A296925(n+1)]`
-/

namespace A139980.P15550365052827297778
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139884 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296925 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139980.P15550365052827297778

/-! ## A139980.P10615950977028683360

`∩[A003626(n+1), A139884(n+1)]`
-/

namespace A139980.P10615950977028683360
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003626 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139884 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139980.P10615950977028683360

/-! ## A139980.P10278020982566132671

`∩[A120960(n+1), A139884(n+1)]`
-/

namespace A139980.P10278020982566132671
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120960 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139884 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139980.P10278020982566132671

/-! ## A139980.P7021716805541094754

`∩[A139884(n+1), A297176(n+1)]`
-/

namespace A139980.P7021716805541094754
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139884 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297176 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139980.P7021716805541094754

/-! ## A139980.P13665075217490713329

`∩[A085759(n+1), A139884(n+1)]`
-/

namespace A139980.P13665075217490713329
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085759 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139884 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139980.P13665075217490713329

/-! ## A139980.P16456501412675093109

`∩[A139884(n+1), A365082(n+1)]`
-/

namespace A139980.P16456501412675093109
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139884 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365082 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139980.P16456501412675093109

/-! ## A139980.P10090400610463651360

`∩[A139884(n+1), A351535(n+1)]`
-/

namespace A139980.P10090400610463651360
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139884 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351535 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139980.P10090400610463651360

/-! ## A139980.P6752812936209778369

`∩[A125018(n+1), A139884(n+1)]`
-/

namespace A139980.P6752812936209778369
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125018 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139884 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139980.P6752812936209778369

/-! ## A139980.P17302106788921644058

`∩[A040146(n+1), A139884(n+1)]`
-/

namespace A139980.P17302106788921644058
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040146 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139884 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139980.P17302106788921644058

/-! ## A139980.P3465509318023038359

`∩[A139884(n+1), A191218(n+1)]`
-/

namespace A139980.P3465509318023038359
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139884 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191218 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139980.P3465509318023038359

/-!
# A139981: Primes of the form 19x^2+40y^2.

The programs for A139981, there is no canonical definition to state claims against.
-/

/-! ## A139981.P15508618996067460847

`∩[A139829(n+1), A139886(n+1)]`
-/

namespace A139981.P15508618996067460847
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139829 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139886 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139981.P15508618996067460847

/-! ## A139981.P15254106973597303714

`∩[A033201(n+1), A139886(n+1)]`
-/

namespace A139981.P15254106973597303714
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033201 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139886 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139981.P15254106973597303714

/-! ## A139981.P16691484643297724074

`∩[A122869(n+1), A139886(n+1)]`
-/

namespace A139981.P16691484643297724074
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122869 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139886 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139981.P16691484643297724074

/-! ## A139981.P5184255912335047037

`∩[A007520(n+1), A139886(n+1)]`
-/

namespace A139981.P5184255912335047037
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007520 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139886 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139981.P5184255912335047037

/-! ## A139981.P6189651628220013037

`∩[A045339(n+1), A139886(n+1)]`
-/

namespace A139981.P6189651628220013037
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045339 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139886 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139981.P6189651628220013037

/-! ## A139981.P13200763583473481536

`∩[A033201(n+1), A142955(n+1)]`
-/

namespace A139981.P13200763583473481536
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033201 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142955 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139981.P13200763583473481536

/-! ## A139981.P14823385717391975322

`∩[A139829(n+1), A142955(n+1)]`
-/

namespace A139981.P14823385717391975322
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139829 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142955 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139981.P14823385717391975322

/-! ## A139981.P12773576671961641835

`∩[A139886(n+1), A142955(n+1)]`
-/

namespace A139981.P12773576671961641835
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139886 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142955 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139981.P12773576671961641835

/-! ## A139981.P15199581785044197274

`∩[A139886(n+1), A332446(n+1)]`
-/

namespace A139981.P15199581785044197274
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139886 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332446 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139981.P15199581785044197274

/-! ## A139981.P6548252693812141697

`∩[A139886(n+1), A163183(n+1)]`
-/

namespace A139981.P6548252693812141697
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139886 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163183 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139981.P6548252693812141697

/-! ## A139981.P5441370383375578473

`∩[A095282(n+1), A139886(n+1)]`
-/

namespace A139981.P5441370383375578473
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095282 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139886 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139981.P5441370383375578473

/-! ## A139981.P6536216322704433388

`∩[A139886(n+1), A192717(n+1)]`
-/

namespace A139981.P6536216322704433388
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139886 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192717 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139981.P6536216322704433388

/-! ## A139981.P2736031336262876924

`∩[A040145(n+1), A139829(n+1)]`
-/

namespace A139981.P2736031336262876924
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040145 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139829 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139981.P2736031336262876924

/-! ## A139981.P6675836556157152562

`∩[A040145(n+1), A139886(n+1)]`
-/

namespace A139981.P6675836556157152562
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040145 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139886 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139981.P6675836556157152562

/-! ## A139981.P505031735721666728

`∩[A051071(n+1), A139886(n+1)]`
-/

namespace A139981.P505031735721666728
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051071 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139886 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139981.P505031735721666728

/-! ## A139981.P14379222766085523164

`∩[A051073(n+1), A139886(n+1)]`
-/

namespace A139981.P14379222766085523164
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051073 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139886 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139981.P14379222766085523164

/-! ## A139981.P4059642155118665479

`∩[A038891(n+1), A139829(n+1)]`
-/

namespace A139981.P4059642155118665479
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038891 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139829 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139981.P4059642155118665479

/-! ## A139981.P3169779028791999375

`∩[A038891(n+1), A139886(n+1)]`
-/

namespace A139981.P3169779028791999375
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038891 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139886 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139981.P3169779028791999375

/-! ## A139981.P11729592602704221452

`∩[A033200(n+1), A139886(n+1)]`
-/

namespace A139981.P11729592602704221452
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033200 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139886 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139981.P11729592602704221452

/-! ## A139981.P5900070471903983058

`∩[A033203(n+1), A139886(n+1)]`
-/

namespace A139981.P5900070471903983058
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033203 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139886 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139981.P5900070471903983058

/-!
# A139982: Primes of the form 20x^2+20xy+43y^2.

The programs for A139982, there is no canonical definition to state claims against.
-/

/-! ## A139982.P8396527711395113209

`∩[A106865(n+1), A139885(n+1)]`
-/

namespace A139982.P8396527711395113209
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106865 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139885 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139982.P8396527711395113209

/-! ## A139982.P3598146524916218265

`∩[A122870(n+1), A139885(n+1)]`
-/

namespace A139982.P3598146524916218265
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122870 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139885 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139982.P3598146524916218265

/-! ## A139982.P5540013583308337344

`∩[A007520(n+1), A139885(n+1)]`
-/

namespace A139982.P5540013583308337344
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007520 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139885 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139982.P5540013583308337344

/-! ## A139982.P2378620937197564395

`∩[A045339(n+1), A139885(n+1)]`
-/

namespace A139982.P2378620937197564395
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045339 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139885 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139982.P2378620937197564395

/-! ## A139982.P17858792914039738248

`∩[A139885(n+1), A332446(n+1)]`
-/

namespace A139982.P17858792914039738248
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139885 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332446 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139982.P17858792914039738248

/-! ## A139982.P15906467108336832600

`∩[A139885(n+1), A163183(n+1)]`
-/

namespace A139982.P15906467108336832600
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139885 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163183 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139982.P15906467108336832600

/-! ## A139982.P11174639523239162171

`∩[A095282(n+1), A139885(n+1)]`
-/

namespace A139982.P11174639523239162171
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095282 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139885 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139982.P11174639523239162171

/-! ## A139982.P11187182910756893838

`∩[A139885(n+1), A385225(n+1)]`
-/

namespace A139982.P11187182910756893838
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139885 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385225 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139982.P11187182910756893838

/-! ## A139982.P8473411921529029116

`∩[A053027(n+1), A139885(n+1)]`
-/

namespace A139982.P8473411921529029116
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053027 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139885 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139982.P8473411921529029116

/-! ## A139982.P2716599657373859582

`∩[A139885(n+1), A192717(n+1)]`
-/

namespace A139982.P2716599657373859582
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139885 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192717 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139982.P2716599657373859582

/-! ## A139982.P17013550255844182197

`∩[A051071(n+1), A139885(n+1)]`
-/

namespace A139982.P17013550255844182197
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051071 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139885 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139982.P17013550255844182197

/-! ## A139982.P868269530379150819

`∩[A051073(n+1), A139885(n+1)]`
-/

namespace A139982.P868269530379150819
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051073 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139885 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139982.P868269530379150819

/-! ## A139982.P11901674611751237341

`∩[A051074(n+1), A139885(n+1)]`
-/

namespace A139982.P11901674611751237341
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051074 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139885 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139982.P11901674611751237341

/-! ## A139982.P6922961074902586138

`∩[A139513(n+1), A139885(n+1)]`
-/

namespace A139982.P6922961074902586138
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139513 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139885 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139982.P6922961074902586138

/-! ## A139982.P9548502434022014879

`∩[A033200(n+1), A139885(n+1)]`
-/

namespace A139982.P9548502434022014879
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033200 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139885 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139982.P9548502434022014879

/-! ## A139982.P14237907745031910812

`∩[A033203(n+1), A139885(n+1)]`
-/

namespace A139982.P14237907745031910812
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033203 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139885 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139982.P14237907745031910812

/-! ## A139982.P6701595185774088277

`∩[A038915(n+1), A139885(n+1)]`
-/

namespace A139982.P6701595185774088277
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038915 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139885 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139982.P6701595185774088277

/-! ## A139982.P6489228065438981396

`∩[A002145(n+1), A139885(n+1)]`
-/

namespace A139982.P6489228065438981396
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002145 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139885 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139982.P6489228065438981396

/-! ## A139982.P4954626780692682108

`∩[A045326(n+1), A139885(n+1)]`
-/

namespace A139982.P4954626780692682108
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045326 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139885 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139982.P4954626780692682108

/-! ## A139982.P10976645135715467960

`∩[A139885(n+1), A296925(n+1)]`
-/

namespace A139982.P10976645135715467960
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139885 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296925 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139982.P10976645135715467960

/-!
# A139983: Primes of the form 29x^2+18xy+29y^2.

The programs for A139983, there is no canonical definition to state claims against.
-/

/-! ## A139983.P8651172619027266371

`∩[A139886(n+1), A216815(n+1)]`
-/

namespace A139983.P8651172619027266371
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139886 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216815 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139983.P8651172619027266371

/-! ## A139983.P15062831579465439410

`∩[A033205(n+1), A139886(n+1)]`
-/

namespace A139983.P15062831579465439410
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033205 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139886 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139983.P15062831579465439410

/-! ## A139983.P8879948386494754122

`∩[A007521(n+1), A139886(n+1)]`
-/

namespace A139983.P8879948386494754122
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007521 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139886 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139983.P8879948386494754122

/-! ## A139983.P17561743521310074602

`∩[A045366(n+1), A139886(n+1)]`
-/

namespace A139983.P17561743521310074602
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045366 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139886 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139983.P17561743521310074602

/-! ## A139983.P7200519366954135363

`∩[A091729(n+1), A139886(n+1)]`
-/

namespace A139983.P7200519366954135363
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091729 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139886 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139983.P7200519366954135363

/-! ## A139983.P2969850227715947874

`∩[A139886(n+1), A385224(n+1)]`
-/

namespace A139983.P2969850227715947874
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139886 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385224 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139983.P2969850227715947874

/-! ## A139983.P5094994291699654125

`∩[A139886(n+1), A392947(n+1)]`
-/

namespace A139983.P5094994291699654125
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139886 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392947 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139983.P5094994291699654125

/-! ## A139983.P13309172188557151096

`∩[A004627(n+1), A139886(n+1)]`
-/

namespace A139983.P13309172188557151096
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004627 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139886 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139983.P13309172188557151096

/-! ## A139983.P2332221115275594299

`∩[A139513(n+1), A139886(n+1)]`
-/

namespace A139983.P2332221115275594299
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139513 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139886 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139983.P2332221115275594299

/-! ## A139983.P12953190112028043257

`∩[A139886(n+1), A240920(n+1)]`
-/

namespace A139983.P12953190112028043257
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139886 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240920 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139983.P12953190112028043257

/-! ## A139983.P15045040155610620920

`∩[A139886(n+1), A296922(n+1)]`
-/

namespace A139983.P15045040155610620920
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139886 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296922 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139983.P15045040155610620920

/-! ## A139983.P16411836795098939288

`∩[A002144(n+1), A139886(n+1)]`
-/

namespace A139983.P16411836795098939288
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002144 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139886 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139983.P16411836795098939288

/-! ## A139983.P13615532308561329950

`∩[A002313(n+1), A139886(n+1)]`
-/

namespace A139983.P13615532308561329950
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002313 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139886 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139983.P13615532308561329950

/-! ## A139983.P8866372080638007131

`∩[A139886(n+1), A280084(n+1)]`
-/

namespace A139983.P8866372080638007131
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139886 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280084 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139983.P8866372080638007131

/-! ## A139983.P1099217536105917210

`∩[A003628(n+1), A139886(n+1)]`
-/

namespace A139983.P1099217536105917210
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003628 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139886 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139983.P1099217536105917210

/-! ## A139983.P7167138676911544444

`∩[A038986(n+1), A139886(n+1)]`
-/

namespace A139983.P7167138676911544444
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038986 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139886 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139983.P7167138676911544444

/-! ## A139983.P14294222653452781721

`∩[A045355(n+1), A139886(n+1)]`
-/

namespace A139983.P14294222653452781721
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045355 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139886 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139983.P14294222653452781721

/-! ## A139983.P11941671965820341111

`∩[A091727(n+1), A139886(n+1)]`
-/

namespace A139983.P11941671965820341111
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091727 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139886 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139983.P11941671965820341111

/-! ## A139983.P5745859910469658749

`∩[A139886(n+1), A296925(n+1)]`
-/

namespace A139983.P5745859910469658749
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139886 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296925 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139983.P5745859910469658749

/-! ## A139983.P9244390871652518778

`∩[A055025(n+1), A139886(n+1)]`
-/

namespace A139983.P9244390871652518778
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055025 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139886 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139983.P9244390871652518778

/-!
# A139984: Primes of the form 3x^2+280y^2.

The programs for A139984, there is no canonical definition to state claims against.
-/

/-! ## A139984.P14580669990639303520

`∩[A139854(n+1), A139888(n+1)]`
-/

namespace A139984.P14580669990639303520
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139854 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139888 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139984.P14580669990639303520

/-! ## A139984.P1093433982754114060

`∩[A139888(n+1), A141304(n+1)]`
-/

namespace A139984.P1093433982754114060
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139888 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141304 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139984.P1093433982754114060

/-! ## A139984.P10341102926213227974

`∩[A107136(n+1), A139888(n+1)]`
-/

namespace A139984.P10341102926213227974
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107136 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139888 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139984.P10341102926213227974

/-! ## A139984.P14717054247564175886

`∩[A102271(n+1), A107136(n+1)]`
-/

namespace A139984.P14717054247564175886
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102271 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107136 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139984.P14717054247564175886

/-! ## A139984.P3603274541691917329

`∩[A102271(n+1), A139854(n+1)]`
-/

namespace A139984.P3603274541691917329
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102271 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139854 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139984.P3603274541691917329

/-! ## A139984.P16373523720858033868

`∩[A102271(n+1), A139888(n+1)]`
-/

namespace A139984.P16373523720858033868
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102271 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139888 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139984.P16373523720858033868

/-! ## A139984.P4839895277556698686

`∩[A139888(n+1), A141373(n+1)]`
-/

namespace A139984.P4839895277556698686
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139888 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141373 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139984.P4839895277556698686

/-! ## A139984.P17051305409727047647

`p?[or(2, A139888(n+1))]`
-/

namespace A139984.P17051305409727047647
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 2 (A139888 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A139984.P17051305409727047647

/-! ## A139984.P7216958156021067236

`∩[A102271(n+1), A141179(n+1)]`
-/

namespace A139984.P7216958156021067236
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102271 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141179 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139984.P7216958156021067236

/-! ## A139984.P4628274315981133990

`∩[A106878(n+1), A139854(n+1)]`
-/

namespace A139984.P4628274315981133990
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106878 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139854 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139984.P4628274315981133990

/-! ## A139984.P4473597199519945729

`∩[A106865(n+1), A139888(n+1)]`
-/

namespace A139984.P4473597199519945729
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106865 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139888 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139984.P4473597199519945729

/-! ## A139984.P13730952799953553932

`∩[A106878(n+1), A141373(n+1)]`
-/

namespace A139984.P13730952799953553932
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106878 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141373 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139984.P13730952799953553932

/-! ## A139984.P13684178168762048734

`∩[A122870(n+1), A139888(n+1)]`
-/

namespace A139984.P13684178168762048734
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122870 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139888 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139984.P13684178168762048734

/-! ## A139984.P4335125091837372593

`∩[A139888(n+1), A141179(n+1)]`
-/

namespace A139984.P4335125091837372593
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139888 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141179 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139984.P4335125091837372593

/-! ## A139984.P7036730056153567629

`∩[A007520(n+1), A139888(n+1)]`
-/

namespace A139984.P7036730056153567629
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007520 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139888 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139984.P7036730056153567629

/-! ## A139984.P15407737136308090464

`∩[A045339(n+1), A139888(n+1)]`
-/

namespace A139984.P15407737136308090464
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045339 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139888 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139984.P15407737136308090464

/-! ## A139984.P13673096499588714865

`∩[A107136(n+1), A141173(n+1)]`
-/

namespace A139984.P13673096499588714865
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107136 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141173 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139984.P13673096499588714865

/-! ## A139984.P2967189181974752132

`∩[A139854(n+1), A141173(n+1)]`
-/

namespace A139984.P2967189181974752132
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139854 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141173 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139984.P2967189181974752132

/-! ## A139984.P10077797959707207028

`∩[A139888(n+1), A141173(n+1)]`
-/

namespace A139984.P10077797959707207028
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139888 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141173 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139984.P10077797959707207028

/-! ## A139984.P14899477524052236918

`∩[A106915(n+1), A139854(n+1)]`
-/

namespace A139984.P14899477524052236918
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106915 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139854 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139984.P14899477524052236918

/-!
# A139985: Primes of the form 4x^2+4xy+211y^2.

The programs for A139985, the canonical program `A139985.P3496674045837818022` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A139985 has offset 1).

The definition of A139985 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4991 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A139985.P10074335952021142142

`∩[A139651(n+1), A139902(n+1)]`
-/

namespace A139985.P10074335952021142142
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139651 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139902 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139985.P10074335952021142142

namespace A139985

/-- `∩[A139651(n+1), A139902(n+1)]` -/
def P10074335952021142142.Spec : Prop :=
  ∀ n, (P10074335952021142142.a n : ℤ) = A139985 (n + 1)

end A139985

/-! ## A139985.P5250249128920169097

`∩[A139651(n+1), A139875(n+1)]`
-/

namespace A139985.P5250249128920169097
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139651 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139875 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139985.P5250249128920169097

namespace A139985

/-- `∩[A139651(n+1), A139875(n+1)]` -/
def P5250249128920169097.Spec : Prop :=
  ∀ n, (P5250249128920169097.a n : ℤ) = A139985 (n + 1)

end A139985

/-! ## A139985.P3496674045837818022

`∩[A139875(n+1), A139902(n+1)]`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A139985

/-- `∩[A139875(n+1), A139902(n+1)]` -/
def P3496674045837818022.Spec : Prop :=
  ∀ n, (P3496674045837818022.a n : ℤ) = A139985 (n + 1)

theorem P3496674045837818022.correct : P3496674045837818022.Spec := by
  intro n
  simp only [A139985, Nat.add_sub_cancel]

end A139985

/-! ## A139985.P18304975824415596088

`∩[A033229(n+1), A139902(n+1)]`
-/

namespace A139985.P18304975824415596088
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033229 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139902 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139985.P18304975824415596088

namespace A139985

/-- `∩[A033229(n+1), A139902(n+1)]` -/
def P18304975824415596088.Spec : Prop :=
  ∀ n, (P18304975824415596088.a n : ℤ) = A139985 (n + 1)

end A139985

/-! ## A139985.P11211703473306592350

`∩[A139503(n+1), A139875(n+1)]`
-/

namespace A139985.P11211703473306592350
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139503 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139875 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139985.P11211703473306592350

namespace A139985

/-- `∩[A139503(n+1), A139875(n+1)]` -/
def P11211703473306592350.Spec : Prop :=
  ∀ n, (P11211703473306592350.a n : ℤ) = A139985 (n + 1)

end A139985

/-! ## A139985.P10011619881933024256

`∩[A139503(n+1), A139902(n+1)]`
-/

namespace A139985.P10011619881933024256
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139503 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139902 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139985.P10011619881933024256

namespace A139985

/-- `∩[A139503(n+1), A139902(n+1)]` -/
def P10011619881933024256.Spec : Prop :=
  ∀ n, (P10011619881933024256.a n : ℤ) = A139985 (n + 1)

end A139985

/-! ## A139985.P16120200291055860009

`∩[A033229(n+1), A139829(n+1)]`
-/

namespace A139985.P16120200291055860009
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033229 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139829 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139985.P16120200291055860009

namespace A139985

/-- `∩[A033229(n+1), A139829(n+1)]` -/
def P16120200291055860009.Spec : Prop :=
  ∀ n, (P16120200291055860009.a n : ℤ) = A139985 (n + 1)

end A139985

/-! ## A139985.P670534095756082468

`∩[A139503(n+1), A139829(n+1)]`
-/

namespace A139985.P670534095756082468
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139503 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139829 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139985.P670534095756082468

namespace A139985

/-- `∩[A139503(n+1), A139829(n+1)]` -/
def P670534095756082468.Spec : Prop :=
  ∀ n, (P670534095756082468.a n : ℤ) = A139985 (n + 1)

end A139985

/-! ## A139985.P6178075650595094436

`∩[A139651(n+1), A139829(n+1)]`
-/

namespace A139985.P6178075650595094436
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139651 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139829 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139985.P6178075650595094436

namespace A139985

/-- `∩[A139651(n+1), A139829(n+1)]` -/
def P6178075650595094436.Spec : Prop :=
  ∀ n, (P6178075650595094436.a n : ℤ) = A139985 (n + 1)

end A139985

/-! ## A139985.P7739492141896727782

`∩[A139829(n+1), A139875(n+1)]`
-/

namespace A139985.P7739492141896727782
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139829 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139875 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139985.P7739492141896727782

namespace A139985

/-- `∩[A139829(n+1), A139875(n+1)]` -/
def P7739492141896727782.Spec : Prop :=
  ∀ n, (P7739492141896727782.a n : ℤ) = A139985 (n + 1)

end A139985

/-! ## A139985.P15475445927278279295

`∩[A139503(n+1), A141373(n+1)]`
-/

namespace A139985.P15475445927278279295
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139503 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141373 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139985.P15475445927278279295

namespace A139985

/-- `∩[A139503(n+1), A141373(n+1)]` -/
def P15475445927278279295.Spec : Prop :=
  ∀ n, (P15475445927278279295.a n : ℤ) = A139985 (n + 1)

end A139985

/-! ## A139985.P17014443661433834655

`∩[A139651(n+1), A141373(n+1)]`
-/

namespace A139985.P17014443661433834655
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139651 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141373 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139985.P17014443661433834655

namespace A139985

/-- `∩[A139651(n+1), A141373(n+1)]` -/
def P17014443661433834655.Spec : Prop :=
  ∀ n, (P17014443661433834655.a n : ℤ) = A139985 (n + 1)

end A139985

/-! ## A139985.P11026888199449509736

`∩[A139503(n+1), A139853(n+1)]`
-/

namespace A139985.P11026888199449509736
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139503 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139853 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139985.P11026888199449509736

namespace A139985

/-- `∩[A139503(n+1), A139853(n+1)]` -/
def P11026888199449509736.Spec : Prop :=
  ∀ n, (P11026888199449509736.a n : ℤ) = A139985 (n + 1)

end A139985

/-! ## A139985.P7497069512269017801

`∩[A139651(n+1), A139853(n+1)]`
-/

namespace A139985.P7497069512269017801
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139651 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139853 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139985.P7497069512269017801

namespace A139985

/-- `∩[A139651(n+1), A139853(n+1)]` -/
def P7497069512269017801.Spec : Prop :=
  ∀ n, (P7497069512269017801.a n : ℤ) = A139985 (n + 1)

end A139985

/-! ## A139985.P3915343319177571223

`∩[A139853(n+1), A139902(n+1)]`
-/

namespace A139985.P3915343319177571223
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139853 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139902 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139985.P3915343319177571223

namespace A139985

/-- `∩[A139853(n+1), A139902(n+1)]` -/
def P3915343319177571223.Spec : Prop :=
  ∀ n, (P3915343319177571223.a n : ℤ) = A139985 (n + 1)

end A139985

/-! ## A139985.P6068247794247390894

`∩[A033229(n+1), A107168(n+1)]`
-/

namespace A139985.P6068247794247390894
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033229 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107168 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139985.P6068247794247390894

namespace A139985

/-- `∩[A033229(n+1), A107168(n+1)]` -/
def P6068247794247390894.Spec : Prop :=
  ∀ n, (P6068247794247390894.a n : ℤ) = A139985 (n + 1)

end A139985

/-! ## A139985.P17754047725372362505

`∩[A107168(n+1), A139651(n+1)]`
-/

namespace A139985.P17754047725372362505
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107168 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139651 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139985.P17754047725372362505

namespace A139985

/-- `∩[A107168(n+1), A139651(n+1)]` -/
def P17754047725372362505.Spec : Prop :=
  ∀ n, (P17754047725372362505.a n : ℤ) = A139985 (n + 1)

end A139985

/-! ## A139985.P6771068848245208199

`∩[A107168(n+1), A139853(n+1)]`
-/

namespace A139985.P6771068848245208199
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107168 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139853 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139985.P6771068848245208199

namespace A139985

/-- `∩[A107168(n+1), A139853(n+1)]` -/
def P6771068848245208199.Spec : Prop :=
  ∀ n, (P6771068848245208199.a n : ℤ) = A139985 (n + 1)

end A139985

/-! ## A139985.P4761512084671001189

`∩[A107168(n+1), A139875(n+1)]`
-/

namespace A139985.P4761512084671001189
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107168 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139875 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139985.P4761512084671001189

namespace A139985

/-- `∩[A107168(n+1), A139875(n+1)]` -/
def P4761512084671001189.Spec : Prop :=
  ∀ n, (P4761512084671001189.a n : ℤ) = A139985 (n + 1)

end A139985

/-! ## A139985.P2994707178490098457

`p?[or(2, A139651(n+1))]`
-/

namespace A139985.P2994707178490098457
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 2 (A139651 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A139985.P2994707178490098457

namespace A139985

/-- `p?[or(2, A139651(n+1))]` -/
def P2994707178490098457.Spec : Prop :=
  ∀ n, P2994707178490098457.a n = A139985 (n + 1)

end A139985

/-!
# A139986: Primes of the form 5x^2+168y^2.

The programs for A139986, the canonical program `A139986.P14602032053010067332` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A139986 has offset 1).

The definition of A139986 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4980 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A139986.P400233163159316593

`∩[A139889(n+1), A140616(n+1)]`
-/

namespace A139986.P400233163159316593
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139889 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140616 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139986.P400233163159316593

namespace A139986

/-- `∩[A139889(n+1), A140616(n+1)]` -/
def P400233163159316593.Spec : Prop :=
  ∀ n, (P400233163159316593.a n : ℤ) = A139986 (n + 1)

end A139986

/-! ## A139986.P6623123874690061827

`∩[A139889(n+1), A139899(n+1)]`
-/

namespace A139986.P6623123874690061827
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139889 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139899 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139986.P6623123874690061827

namespace A139986

/-- `∩[A139889(n+1), A139899(n+1)]` -/
def P6623123874690061827.Spec : Prop :=
  ∀ n, (P6623123874690061827.a n : ℤ) = A139986 (n + 1)

end A139986

/-! ## A139986.P14602032053010067332

`∩[A139899(n+1), A140616(n+1)]`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A139986

/-- `∩[A139899(n+1), A140616(n+1)]` -/
def P14602032053010067332.Spec : Prop :=
  ∀ n, (P14602032053010067332.a n : ℤ) = A139986 (n + 1)

theorem P14602032053010067332.correct : P14602032053010067332.Spec := by
  intro n
  simp only [A139986, Nat.add_sub_cancel]

end A139986

/-! ## A139986.P265079848328100872

`∩[A107003(n+1), A139889(n+1)]`
-/

namespace A139986.P265079848328100872
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107003 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139889 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139986.P265079848328100872

namespace A139986

/-- `∩[A107003(n+1), A139889(n+1)]` -/
def P265079848328100872.Spec : Prop :=
  ∀ n, (P265079848328100872.a n : ℤ) = A139986 (n + 1)

end A139986

/-! ## A139986.P8791190894534248140

`∩[A106972(n+1), A107144(n+1)]`
-/

namespace A139986.P8791190894534248140
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106972 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107144 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139986.P8791190894534248140

namespace A139986

/-- `∩[A106972(n+1), A107144(n+1)]` -/
def P8791190894534248140.Spec : Prop :=
  ∀ n, (P8791190894534248140.a n : ℤ) = A139986 (n + 1)

end A139986

/-! ## A139986.P1941707396106170508

`∩[A106972(n+1), A139889(n+1)]`
-/

namespace A139986.P1941707396106170508
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106972 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139889 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139986.P1941707396106170508

namespace A139986

/-- `∩[A106972(n+1), A139889(n+1)]` -/
def P1941707396106170508.Spec : Prop :=
  ∀ n, (P1941707396106170508.a n : ℤ) = A139986 (n + 1)

end A139986

/-! ## A139986.P13760246996074848824

`∩[A106972(n+1), A139899(n+1)]`
-/

namespace A139986.P13760246996074848824
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106972 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139899 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139986.P13760246996074848824

namespace A139986

/-- `∩[A106972(n+1), A139899(n+1)]` -/
def P13760246996074848824.Spec : Prop :=
  ∀ n, (P13760246996074848824.a n : ℤ) = A139986 (n + 1)

end A139986

/-! ## A139986.P3852013959045817645

`∩[A107144(n+1), A139889(n+1)]`
-/

namespace A139986.P3852013959045817645
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107144 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139889 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139986.P3852013959045817645

namespace A139986

/-- `∩[A107144(n+1), A139889(n+1)]` -/
def P3852013959045817645.Spec : Prop :=
  ∀ n, (P3852013959045817645.a n : ℤ) = A139986 (n + 1)

end A139986

/-! ## A139986.P9016171854958575442

`∩[A107167(n+1), A139889(n+1)]`
-/

namespace A139986.P9016171854958575442
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107167 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139889 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139986.P9016171854958575442

namespace A139986

/-- `∩[A107167(n+1), A139889(n+1)]` -/
def P9016171854958575442.Spec : Prop :=
  ∀ n, (P9016171854958575442.a n : ℤ) = A139986 (n + 1)

end A139986

/-! ## A139986.P9224848628080739326

`∩[A107144(n+1), A140616(n+1)]`
-/

namespace A139986.P9224848628080739326
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107144 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140616 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139986.P9224848628080739326

namespace A139986

/-- `∩[A107144(n+1), A140616(n+1)]` -/
def P9224848628080739326.Spec : Prop :=
  ∀ n, (P9224848628080739326.a n : ℤ) = A139986 (n + 1)

end A139986

/-! ## A139986.P17218525785727873449

`∩[A107167(n+1), A140616(n+1)]`
-/

namespace A139986.P17218525785727873449
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107167 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140616 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139986.P17218525785727873449

namespace A139986

/-- `∩[A107167(n+1), A140616(n+1)]` -/
def P17218525785727873449.Spec : Prop :=
  ∀ n, (P17218525785727873449.a n : ℤ) = A139986 (n + 1)

end A139986

/-! ## A139986.P13578384271112088410

`∩[A139889(n+1), A141303(n+1)]`
-/

namespace A139986.P13578384271112088410
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139889 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141303 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139986.P13578384271112088410

namespace A139986

/-- `∩[A139889(n+1), A141303(n+1)]` -/
def P13578384271112088410.Spec : Prop :=
  ∀ n, (P13578384271112088410.a n : ℤ) = A139986 (n + 1)

end A139986

/-! ## A139986.P587493393907105626

`∩[A140616(n+1), A141303(n+1)]`
-/

namespace A139986.P587493393907105626
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140616 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141303 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139986.P587493393907105626

namespace A139986

/-- `∩[A140616(n+1), A141303(n+1)]` -/
def P587493393907105626.Spec : Prop :=
  ∀ n, (P587493393907105626.a n : ℤ) = A139986 (n + 1)

end A139986

/-! ## A139986.P14009194677225935555

`∩[A139889(n+1), A354084(n+1)]`
-/

namespace A139986.P14009194677225935555
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139889 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354084 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139986.P14009194677225935555

namespace A139986

/-- `∩[A139889(n+1), A354084(n+1)]` -/
def P14009194677225935555.Spec : Prop :=
  ∀ n, (P14009194677225935555.a n : ℤ) = A139986 (n + 1)

end A139986

/-! ## A139986.P3994215135970044388

`∩[A040117(n+1), A139889(n+1)]`
-/

namespace A139986.P3994215135970044388
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040117 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139889 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139986.P3994215135970044388

namespace A139986

/-- `∩[A040117(n+1), A139889(n+1)]` -/
def P3994215135970044388.Spec : Prop :=
  ∀ n, (P3994215135970044388.a n : ℤ) = A139986 (n + 1)

end A139986

/-! ## A139986.P6043376777550632374

`∩[A106859(n+1), A140616(n+1)]`
-/

namespace A139986.P6043376777550632374
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106859 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140616 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139986.P6043376777550632374

namespace A139986

/-- `∩[A106859(n+1), A140616(n+1)]` -/
def P6043376777550632374.Spec : Prop :=
  ∀ n, (P6043376777550632374.a n : ℤ) = A139986 (n + 1)

end A139986

/-! ## A139986.P3923073814547375974

`∩[A106972(n+1), A141179(n+1)]`
-/

namespace A139986.P3923073814547375974
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106972 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141179 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139986.P3923073814547375974

namespace A139986

/-- `∩[A106972(n+1), A141179(n+1)]` -/
def P3923073814547375974.Spec : Prop :=
  ∀ n, (P3923073814547375974.a n : ℤ) = A139986 (n + 1)

end A139986

/-! ## A139986.P8083411570312782683

`∩[A139889(n+1), A141179(n+1)]`
-/

namespace A139986.P8083411570312782683
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139889 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141179 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139986.P8083411570312782683

namespace A139986

/-- `∩[A139889(n+1), A141179(n+1)]` -/
def P8083411570312782683.Spec : Prop :=
  ∀ n, (P8083411570312782683.a n : ℤ) = A139986 (n + 1)

end A139986

/-! ## A139986.P18223614736157343260

`∩[A140616(n+1), A141179(n+1)]`
-/

namespace A139986.P18223614736157343260
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140616 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141179 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139986.P18223614736157343260

namespace A139986

/-- `∩[A140616(n+1), A141179(n+1)]` -/
def P18223614736157343260.Spec : Prop :=
  ∀ n, (P18223614736157343260.a n : ℤ) = A139986 (n + 1)

end A139986

/-! ## A139986.P14393290575618043680

`∩[A139889(n+1), A243183(n+1)]`
-/

namespace A139986.P14393290575618043680
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139889 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243183 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139986.P14393290575618043680

namespace A139986

/-- `∩[A139889(n+1), A243183(n+1)]` -/
def P14393290575618043680.Spec : Prop :=
  ∀ n, (P14393290575618043680.a n : ℤ) = A139986 (n + 1)

end A139986

/-!
# A139987: Primes of the form 7x^2+120y^2.

The programs for A139987, the canonical program `A139987.P2036163733639897663` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A139987 has offset 1).

The definition of A139987 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4997 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A139987.P9996686413024468390

`A139891(eq[3, A139891(n+1)%4]+1)`
-/

namespace A139987.P9996686413024468390
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A139891 (n + 1)) 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139891 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A139987.P9996686413024468390

namespace A139987

/-- `A139891(eq[3, A139891(n+1)%4]+1)` -/
def P9996686413024468390.Spec : Prop :=
  ∀ n, P9996686413024468390.a n = A139987 (n + 1)

end A139987

/-! ## A139987.P7764364918788775791

`∩[A139891(n+1), A140633(n+1)]`
-/

namespace A139987.P7764364918788775791
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139891 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140633 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139987.P7764364918788775791

namespace A139987

/-- `∩[A139891(n+1), A140633(n+1)]` -/
def P7764364918788775791.Spec : Prop :=
  ∀ n, (P7764364918788775791.a n : ℤ) = A139987 (n + 1)

end A139987

/-! ## A139987.P3109384715398506377

`∩[A139848(n+1), A139891(n+1)]`
-/

namespace A139987.P3109384715398506377
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139848 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139891 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139987.P3109384715398506377

namespace A139987

/-- `∩[A139848(n+1), A139891(n+1)]` -/
def P3109384715398506377.Spec : Prop :=
  ∀ n, (P3109384715398506377.a n : ℤ) = A139987 (n + 1)

end A139987

/-! ## A139987.P2036163733639897663

`∩[A139848(n+1), A140633(n+1)]`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A139987

/-- `∩[A139848(n+1), A140633(n+1)]` -/
def P2036163733639897663.Spec : Prop :=
  ∀ n, (P2036163733639897663.a n : ℤ) = A139987 (n + 1)

theorem P2036163733639897663.correct : P2036163733639897663.Spec := by
  intro n
  simp only [A139987, Nat.add_sub_cancel]

end A139987

/-! ## A139987.P17803713508591353495

`∩[A139832(n+1), A139891(n+1)]`
-/

namespace A139987.P17803713508591353495
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139832 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139891 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139987.P17803713508591353495

namespace A139987

/-- `∩[A139832(n+1), A139891(n+1)]` -/
def P17803713508591353495.Spec : Prop :=
  ∀ n, (P17803713508591353495.a n : ℤ) = A139987 (n + 1)

end A139987

/-! ## A139987.P15254835587547851064

`∩[A139891(n+1), A141304(n+1)]`
-/

namespace A139987.P15254835587547851064
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139891 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141304 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139987.P15254835587547851064

namespace A139987

/-- `∩[A139891(n+1), A141304(n+1)]` -/
def P15254835587547851064.Spec : Prop :=
  ∀ n, (P15254835587547851064.a n : ℤ) = A139987 (n + 1)

end A139987

/-! ## A139987.P5425846631308786637

`∩[A139830(n+1), A139848(n+1)]`
-/

namespace A139987.P5425846631308786637
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139830 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139848 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139987.P5425846631308786637

namespace A139987

/-- `∩[A139830(n+1), A139848(n+1)]` -/
def P5425846631308786637.Spec : Prop :=
  ∀ n, (P5425846631308786637.a n : ℤ) = A139987 (n + 1)

end A139987

/-! ## A139987.P16415482989696083800

`∩[A139830(n+1), A139891(n+1)]`
-/

namespace A139987.P16415482989696083800
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139830 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139891 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139987.P16415482989696083800

namespace A139987

/-- `∩[A139830(n+1), A139891(n+1)]` -/
def P16415482989696083800.Spec : Prop :=
  ∀ n, (P16415482989696083800.a n : ℤ) = A139987 (n + 1)

end A139987

/-! ## A139987.P10802125406164683333

`∩[A107006(n+1), A139848(n+1)]`
-/

namespace A139987.P10802125406164683333
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107006 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139848 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139987.P10802125406164683333

namespace A139987

/-- `∩[A107006(n+1), A139848(n+1)]` -/
def P10802125406164683333.Spec : Prop :=
  ∀ n, (P10802125406164683333.a n : ℤ) = A139987 (n + 1)

end A139987

/-! ## A139987.P1973884385313030478

`∩[A107006(n+1), A139891(n+1)]`
-/

namespace A139987.P1973884385313030478
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107006 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139891 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139987.P1973884385313030478

namespace A139987

/-- `∩[A107006(n+1), A139891(n+1)]` -/
def P1973884385313030478.Spec : Prop :=
  ∀ n, (P1973884385313030478.a n : ℤ) = A139987 (n + 1)

end A139987

/-! ## A139987.P16286131706379889155

`∩[A139832(n+1), A139852(n+1)]`
-/

namespace A139987.P16286131706379889155
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139832 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139852 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139987.P16286131706379889155

namespace A139987

/-- `∩[A139832(n+1), A139852(n+1)]` -/
def P16286131706379889155.Spec : Prop :=
  ∀ n, (P16286131706379889155.a n : ℤ) = A139987 (n + 1)

end A139987

/-! ## A139987.P2719232396056389225

`∩[A139848(n+1), A139852(n+1)]`
-/

namespace A139987.P2719232396056389225
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139848 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139852 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139987.P2719232396056389225

namespace A139987

/-- `∩[A139848(n+1), A139852(n+1)]` -/
def P2719232396056389225.Spec : Prop :=
  ∀ n, (P2719232396056389225.a n : ℤ) = A139987 (n + 1)

end A139987

/-! ## A139987.P8553685755360882794

`∩[A139852(n+1), A139891(n+1)]`
-/

namespace A139987.P8553685755360882794
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139852 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139891 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139987.P8553685755360882794

namespace A139987

/-- `∩[A139852(n+1), A139891(n+1)]` -/
def P8553685755360882794.Spec : Prop :=
  ∀ n, (P8553685755360882794.a n : ℤ) = A139987 (n + 1)

end A139987

/-! ## A139987.P115399354042332038

`∩[A139852(n+1), A140633(n+1)]`
-/

namespace A139987.P115399354042332038
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139852 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140633 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139987.P115399354042332038

namespace A139987

/-- `∩[A139852(n+1), A140633(n+1)]` -/
def P115399354042332038.Spec : Prop :=
  ∀ n, (P115399354042332038.a n : ℤ) = A139987 (n + 1)

end A139987

/-! ## A139987.P2170886016977147184

`∩[A139852(n+1), A141304(n+1)]`
-/

namespace A139987.P2170886016977147184
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139852 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141304 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139987.P2170886016977147184

namespace A139987

/-- `∩[A139852(n+1), A141304(n+1)]` -/
def P2170886016977147184.Spec : Prop :=
  ∀ n, (P2170886016977147184.a n : ℤ) = A139987 (n + 1)

end A139987

/-! ## A139987.P7732677420839226886

`p?[or(2, A139891(n+1))]`
-/

namespace A139987.P7732677420839226886
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 2 (A139891 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A139987.P7732677420839226886

namespace A139987

/-- `p?[or(2, A139891(n+1))]` -/
def P7732677420839226886.Spec : Prop :=
  ∀ n, P7732677420839226886.a n = A139987 (n + 1)

end A139987

/-! ## A139987.P2218571668499878709

`∩[A033199(n+1), A139848(n+1)]`
-/

namespace A139987.P2218571668499878709
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033199 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139848 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139987.P2218571668499878709

namespace A139987

/-- `∩[A033199(n+1), A139848(n+1)]` -/
def P2218571668499878709.Spec : Prop :=
  ∀ n, (P2218571668499878709.a n : ℤ) = A139987 (n + 1)

end A139987

/-! ## A139987.P11489265205582192640

`∩[A033199(n+1), A139891(n+1)]`
-/

namespace A139987.P11489265205582192640
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033199 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139891 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139987.P11489265205582192640

namespace A139987

/-- `∩[A033199(n+1), A139891(n+1)]` -/
def P11489265205582192640.Spec : Prop :=
  ∀ n, (P11489265205582192640.a n : ℤ) = A139987 (n + 1)

end A139987

/-! ## A139987.P5822914078398209630

`∩[A139492(n+1), A139830(n+1)]`
-/

namespace A139987.P5822914078398209630
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139492 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139830 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139987.P5822914078398209630

namespace A139987

/-- `∩[A139492(n+1), A139830(n+1)]` -/
def P5822914078398209630.Spec : Prop :=
  ∀ n, (P5822914078398209630.a n : ℤ) = A139987 (n + 1)

end A139987

/-! ## A139987.P1893910129625835557

`∩[A139492(n+1), A140633(n+1)]`
-/

namespace A139987.P1893910129625835557
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139492 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140633 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139987.P1893910129625835557

namespace A139987

/-- `∩[A139492(n+1), A140633(n+1)]` -/
def P1893910129625835557.Spec : Prop :=
  ∀ n, (P1893910129625835557.a n : ℤ) = A139987 (n + 1)

end A139987

/-!
# A139988: Primes of the form 8x^2+105y^2.

The programs for A139988, the canonical program `A139988.P11809578982701821905` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A139988 has offset 1).

The definition of A139988 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4978 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A139988.P11809578982701821905

`∩[A139844(n+1), A139858(n+1)]`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A139988

/-- `∩[A139844(n+1), A139858(n+1)]` -/
def P11809578982701821905.Spec : Prop :=
  ∀ n, (P11809578982701821905.a n : ℤ) = A139988 (n + 1)

theorem P11809578982701821905.correct : P11809578982701821905.Spec := by
  intro n
  simp only [A139988, Nat.add_sub_cancel]

end A139988

/-! ## A139988.P1296250564959095343

`∩[A139858(n+1), A139887(n+1)]`
-/

namespace A139988.P1296250564959095343
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139858 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139887 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139988.P1296250564959095343

namespace A139988

/-- `∩[A139858(n+1), A139887(n+1)]` -/
def P1296250564959095343.Spec : Prop :=
  ∀ n, (P1296250564959095343.a n : ℤ) = A139988 (n + 1)

end A139988

/-! ## A139988.P14179355250160795487

`∩[A139645(n+1), A139844(n+1)]`
-/

namespace A139988.P14179355250160795487
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139645 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139844 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139988.P14179355250160795487

namespace A139988

/-- `∩[A139645(n+1), A139844(n+1)]` -/
def P14179355250160795487.Spec : Prop :=
  ∀ n, (P14179355250160795487.a n : ℤ) = A139988 (n + 1)

end A139988

/-! ## A139988.P16601531423343743091

`∩[A139645(n+1), A139858(n+1)]`
-/

namespace A139988.P16601531423343743091
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139645 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139858 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139988.P16601531423343743091

namespace A139988

/-- `∩[A139645(n+1), A139858(n+1)]` -/
def P16601531423343743091.Spec : Prop :=
  ∀ n, (P16601531423343743091.a n : ℤ) = A139988 (n + 1)

end A139988

/-! ## A139988.P4726204285611567022

`∩[A139645(n+1), A139887(n+1)]`
-/

namespace A139988.P4726204285611567022
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139645 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139887 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139988.P4726204285611567022

namespace A139988

/-- `∩[A139645(n+1), A139887(n+1)]` -/
def P4726204285611567022.Spec : Prop :=
  ∀ n, (P4726204285611567022.a n : ℤ) = A139988 (n + 1)

end A139988

/-! ## A139988.P5337163632346054876

`∩[A107137(n+1), A139645(n+1)]`
-/

namespace A139988.P5337163632346054876
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107137 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139645 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139988.P5337163632346054876

namespace A139988

/-- `∩[A107137(n+1), A139645(n+1)]` -/
def P5337163632346054876.Spec : Prop :=
  ∀ n, (P5337163632346054876.a n : ℤ) = A139988 (n + 1)

end A139988

/-! ## A139988.P4245794529747858208

`∩[A107181(n+1), A139844(n+1)]`
-/

namespace A139988.P4245794529747858208
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107181 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139844 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139988.P4245794529747858208

namespace A139988

/-- `∩[A107181(n+1), A139844(n+1)]` -/
def P4245794529747858208.Spec : Prop :=
  ∀ n, (P4245794529747858208.a n : ℤ) = A139988 (n + 1)

end A139988

/-! ## A139988.P421406476421632173

`∩[A107181(n+1), A139887(n+1)]`
-/

namespace A139988.P421406476421632173
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107181 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139887 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139988.P421406476421632173

namespace A139988

/-- `∩[A107181(n+1), A139887(n+1)]` -/
def P421406476421632173.Spec : Prop :=
  ∀ n, (P421406476421632173.a n : ℤ) = A139988 (n + 1)

end A139988

/-! ## A139988.P2978560898671781052

`∩[A107167(n+1), A139645(n+1)]`
-/

namespace A139988.P2978560898671781052
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107167 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139645 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139988.P2978560898671781052

namespace A139988

/-- `∩[A107167(n+1), A139645(n+1)]` -/
def P2978560898671781052.Spec : Prop :=
  ∀ n, (P2978560898671781052.a n : ℤ) = A139988 (n + 1)

end A139988

/-! ## A139988.P12169295164040620578

`∩[A107167(n+1), A139887(n+1)]`
-/

namespace A139988.P12169295164040620578
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107167 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139887 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139988.P12169295164040620578

namespace A139988

/-- `∩[A107167(n+1), A139887(n+1)]` -/
def P12169295164040620578.Spec : Prop :=
  ∀ n, (P12169295164040620578.a n : ℤ) = A139988 (n + 1)

end A139988

/-! ## A139988.P8139610054802167476

`∩[A139645(n+1), A141303(n+1)]`
-/

namespace A139988.P8139610054802167476
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139645 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141303 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139988.P8139610054802167476

namespace A139988

/-- `∩[A139645(n+1), A141303(n+1)]` -/
def P8139610054802167476.Spec : Prop :=
  ∀ n, (P8139610054802167476.a n : ℤ) = A139988 (n + 1)

end A139988

/-! ## A139988.P18422243159848373619

`∩[A107134(n+1), A107137(n+1)]`
-/

namespace A139988.P18422243159848373619
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107134 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107137 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139988.P18422243159848373619

namespace A139988

/-- `∩[A107134(n+1), A107137(n+1)]` -/
def P18422243159848373619.Spec : Prop :=
  ∀ n, (P18422243159848373619.a n : ℤ) = A139988 (n + 1)

end A139988

/-! ## A139988.P15574696944175366931

`∩[A107134(n+1), A139858(n+1)]`
-/

namespace A139988.P15574696944175366931
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107134 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139858 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139988.P15574696944175366931

namespace A139988

/-- `∩[A107134(n+1), A139858(n+1)]` -/
def P15574696944175366931.Spec : Prop :=
  ∀ n, (P15574696944175366931.a n : ℤ) = A139988 (n + 1)

end A139988

/-! ## A139988.P17848040066816126461

`∩[A107134(n+1), A139887(n+1)]`
-/

namespace A139988.P17848040066816126461
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107134 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139887 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139988.P17848040066816126461

namespace A139988

/-- `∩[A107134(n+1), A139887(n+1)]` -/
def P17848040066816126461.Spec : Prop :=
  ∀ n, (P17848040066816126461.a n : ℤ) = A139988 (n + 1)

end A139988

/-! ## A139988.P205111957425348823

`∩[A139858(n+1), A141172(n+1)]`
-/

namespace A139988.P205111957425348823
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139858 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141172 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139988.P205111957425348823

namespace A139988

/-- `∩[A139858(n+1), A141172(n+1)]` -/
def P205111957425348823.Spec : Prop :=
  ∀ n, (P205111957425348823.a n : ℤ) = A139988 (n + 1)

end A139988

/-! ## A139988.P3825582265695898070

`∩[A007519(n+1), A139844(n+1)]`
-/

namespace A139988.P3825582265695898070
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007519 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139844 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139988.P3825582265695898070

namespace A139988

/-- `∩[A007519(n+1), A139844(n+1)]` -/
def P3825582265695898070.Spec : Prop :=
  ∀ n, (P3825582265695898070.a n : ℤ) = A139988 (n + 1)

end A139988

/-! ## A139988.P1806054848879622596

`∩[A007519(n+1), A139887(n+1)]`
-/

namespace A139988.P1806054848879622596
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007519 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139887 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139988.P1806054848879622596

namespace A139988

/-- `∩[A007519(n+1), A139887(n+1)]` -/
def P1806054848879622596.Spec : Prop :=
  ∀ n, (P1806054848879622596.a n : ℤ) = A139988 (n + 1)

end A139988

/-! ## A139988.P10243481652456997775

`∩[A139844(n+1), A209544(n+1)]`
-/

namespace A139988.P10243481652456997775
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139844 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209544 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139988.P10243481652456997775

namespace A139988

/-- `∩[A139844(n+1), A209544(n+1)]` -/
def P10243481652456997775.Spec : Prop :=
  ∀ n, (P10243481652456997775.a n : ℤ) = A139988 (n + 1)

end A139988

/-! ## A139988.P13582934647437134748

`∩[A139887(n+1), A209544(n+1)]`
-/

namespace A139988.P13582934647437134748
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139887 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209544 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139988.P13582934647437134748

namespace A139988

/-- `∩[A139887(n+1), A209544(n+1)]` -/
def P13582934647437134748.Spec : Prop :=
  ∀ n, (P13582934647437134748.a n : ℤ) = A139988 (n + 1)

end A139988

/-! ## A139988.P8261415140080549427

`∩[A107167(n+1), A141190(n+1)]`
-/

namespace A139988.P8261415140080549427
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107167 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141190 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139988.P8261415140080549427

namespace A139988

/-- `∩[A107167(n+1), A141190(n+1)]` -/
def P8261415140080549427.Spec : Prop :=
  ∀ n, (P8261415140080549427.a n : ℤ) = A139988 (n + 1)

end A139988

/-!
# A139989: Primes of the form 8x^2+8xy+107y^2.

The programs for A139989, the canonical program `A139989.P14604697816370670193` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A139989 has offset 1).

The definition of A139989 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5005 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A139989.P14604697816370670193

`∩[A139887(n+1), A139897(n+1)]`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A139989

/-- `∩[A139887(n+1), A139897(n+1)]` -/
def P14604697816370670193.Spec : Prop :=
  ∀ n, (P14604697816370670193.a n : ℤ) = A139989 (n + 1)

theorem P14604697816370670193.correct : P14604697816370670193.Spec := by
  intro n
  simp only [A139989, Nat.add_sub_cancel]

end A139989

/-! ## A139989.P987986289085966716

`∩[A139887(n+1), A139917(n+1)]`
-/

namespace A139989.P987986289085966716
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139887 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139917 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139989.P987986289085966716

namespace A139989

/-- `∩[A139887(n+1), A139917(n+1)]` -/
def P987986289085966716.Spec : Prop :=
  ∀ n, (P987986289085966716.a n : ℤ) = A139989 (n + 1)

end A139989

/-! ## A139989.P2247861226824302614

`∩[A139897(n+1), A139917(n+1)]`
-/

namespace A139989.P2247861226824302614
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139897 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139917 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139989.P2247861226824302614

namespace A139989

/-- `∩[A139897(n+1), A139917(n+1)]` -/
def P2247861226824302614.Spec : Prop :=
  ∀ n, (P2247861226824302614.a n : ℤ) = A139989 (n + 1)

end A139989

/-! ## A139989.P16389948235277561842

`∩[A139887(n+1), A140617(n+1)]`
-/

namespace A139989.P16389948235277561842
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139887 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140617 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139989.P16389948235277561842

namespace A139989

/-- `∩[A139887(n+1), A140617(n+1)]` -/
def P16389948235277561842.Spec : Prop :=
  ∀ n, (P16389948235277561842.a n : ℤ) = A139989 (n + 1)

end A139989

/-! ## A139989.P2980406661030208509

`∩[A107007(n+1), A139887(n+1)]`
-/

namespace A139989.P2980406661030208509
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107007 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139887 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139989.P2980406661030208509

namespace A139989

/-- `∩[A107007(n+1), A139887(n+1)]` -/
def P2980406661030208509.Spec : Prop :=
  ∀ n, (P2980406661030208509.a n : ℤ) = A139989 (n + 1)

end A139989

/-! ## A139989.P6500585608918822532

`∩[A107007(n+1), A139917(n+1)]`
-/

namespace A139989.P6500585608918822532
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107007 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139917 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139989.P6500585608918822532

namespace A139989

/-- `∩[A107007(n+1), A139917(n+1)]` -/
def P6500585608918822532.Spec : Prop :=
  ∀ n, (P6500585608918822532.a n : ℤ) = A139989 (n + 1)

end A139989

/-! ## A139989.P6546340863083442137

`∩[A139887(n+1), A168539(n+1)]`
-/

namespace A139989.P6546340863083442137
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139887 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168539 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139989.P6546340863083442137

namespace A139989

/-- `∩[A139887(n+1), A168539(n+1)]` -/
def P6546340863083442137.Spec : Prop :=
  ∀ n, (P6546340863083442137.a n : ℤ) = A139989 (n + 1)

end A139989

/-! ## A139989.P8882324734508471204

`∩[A107007(n+1), A107180(n+1)]`
-/

namespace A139989.P8882324734508471204
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107007 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107180 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139989.P8882324734508471204

namespace A139989

/-- `∩[A107007(n+1), A107180(n+1)]` -/
def P8882324734508471204.Spec : Prop :=
  ∀ n, (P8882324734508471204.a n : ℤ) = A139989 (n + 1)

end A139989

/-! ## A139989.P13786294544641650693

`∩[A107180(n+1), A139897(n+1)]`
-/

namespace A139989.P13786294544641650693
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107180 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139897 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139989.P13786294544641650693

namespace A139989

/-- `∩[A107180(n+1), A139897(n+1)]` -/
def P13786294544641650693.Spec : Prop :=
  ∀ n, (P13786294544641650693.a n : ℤ) = A139989 (n + 1)

end A139989

/-! ## A139989.P15397516580989614852

`∩[A107180(n+1), A140617(n+1)]`
-/

namespace A139989.P15397516580989614852
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107180 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140617 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139989.P15397516580989614852

namespace A139989

/-- `∩[A107180(n+1), A140617(n+1)]` -/
def P15397516580989614852.Spec : Prop :=
  ∀ n, (P15397516580989614852.a n : ℤ) = A139989 (n + 1)

end A139989

/-! ## A139989.P4515094375504397187

`∩[A107180(n+1), A168539(n+1)]`
-/

namespace A139989.P4515094375504397187
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107180 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168539 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139989.P4515094375504397187

namespace A139989

/-- `∩[A107180(n+1), A168539(n+1)]` -/
def P4515094375504397187.Spec : Prop :=
  ∀ n, (P4515094375504397187.a n : ℤ) = A139989 (n + 1)

end A139989

/-! ## A139989.P1227065224057729245

`∩[A107169(n+1), A107180(n+1)]`
-/

namespace A139989.P1227065224057729245
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107169 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107180 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139989.P1227065224057729245

namespace A139989

/-- `∩[A107169(n+1), A107180(n+1)]` -/
def P1227065224057729245.Spec : Prop :=
  ∀ n, (P1227065224057729245.a n : ℤ) = A139989 (n + 1)

end A139989

/-! ## A139989.P7019358383164670308

`∩[A107169(n+1), A139887(n+1)]`
-/

namespace A139989.P7019358383164670308
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107169 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139887 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139989.P7019358383164670308

namespace A139989

/-- `∩[A107169(n+1), A139887(n+1)]` -/
def P7019358383164670308.Spec : Prop :=
  ∀ n, (P7019358383164670308.a n : ℤ) = A139989 (n + 1)

end A139989

/-! ## A139989.P1178888138610053270

`∩[A107169(n+1), A139917(n+1)]`
-/

namespace A139989.P1178888138610053270
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107169 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139917 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139989.P1178888138610053270

namespace A139989

/-- `∩[A107169(n+1), A139917(n+1)]` -/
def P1178888138610053270.Spec : Prop :=
  ∀ n, (P1178888138610053270.a n : ℤ) = A139989 (n + 1)

end A139989

/-! ## A139989.P13491943270501955601

`∩[A107169(n+1), A140617(n+1)]`
-/

namespace A139989.P13491943270501955601
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107169 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140617 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139989.P13491943270501955601

namespace A139989

/-- `∩[A107169(n+1), A140617(n+1)]` -/
def P13491943270501955601.Spec : Prop :=
  ∀ n, (P13491943270501955601.a n : ℤ) = A139989 (n + 1)

end A139989

/-! ## A139989.P3315165179990770075

`∩[A139831(n+1), A139917(n+1)]`
-/

namespace A139989.P3315165179990770075
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139831 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139917 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139989.P3315165179990770075

namespace A139989

/-- `∩[A139831(n+1), A139917(n+1)]` -/
def P3315165179990770075.Spec : Prop :=
  ∀ n, (P3315165179990770075.a n : ℤ) = A139989 (n + 1)

end A139989

/-! ## A139989.P986559061876621385

`∩[A139831(n+1), A140617(n+1)]`
-/

namespace A139989.P986559061876621385
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139831 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140617 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139989.P986559061876621385

namespace A139989

/-- `∩[A139831(n+1), A140617(n+1)]` -/
def P986559061876621385.Spec : Prop :=
  ∀ n, (P986559061876621385.a n : ℤ) = A139989 (n + 1)

end A139989

/-! ## A139989.P14822599690853758183

`∩[A102273(n+1), A107180(n+1)]`
-/

namespace A139989.P14822599690853758183
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102273 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107180 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139989.P14822599690853758183

namespace A139989

/-- `∩[A102273(n+1), A107180(n+1)]` -/
def P14822599690853758183.Spec : Prop :=
  ∀ n, (P14822599690853758183.a n : ℤ) = A139989 (n + 1)

end A139989

/-! ## A139989.P16206274816690750543

`∩[A102273(n+1), A139887(n+1)]`
-/

namespace A139989.P16206274816690750543
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102273 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139887 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139989.P16206274816690750543

namespace A139989

/-- `∩[A102273(n+1), A139887(n+1)]` -/
def P16206274816690750543.Spec : Prop :=
  ∀ n, (P16206274816690750543.a n : ℤ) = A139989 (n + 1)

end A139989

/-! ## A139989.P9823728898936312733

`∩[A102273(n+1), A139897(n+1)]`
-/

namespace A139989.P9823728898936312733
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102273 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139897 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139989.P9823728898936312733

namespace A139989

/-- `∩[A102273(n+1), A139897(n+1)]` -/
def P9823728898936312733.Spec : Prop :=
  ∀ n, (P9823728898936312733.a n : ℤ) = A139989 (n + 1)

end A139989

/-!
# A139990: Primes of the form 12*x^2+12*x*y+73*y^2.

The programs for A139990, the canonical program `A139990.P3953884192149250198` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A139990 has offset 1).

The definition of A139990 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4964 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A139990.P5682022569843794355

`∩[A139888(n+1), A139919(n+1)]`
-/

namespace A139990.P5682022569843794355
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139888 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139919 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139990.P5682022569843794355

namespace A139990

/-- `∩[A139888(n+1), A139919(n+1)]` -/
def P5682022569843794355.Spec : Prop :=
  ∀ n, (P5682022569843794355.a n : ℤ) = A139990 (n + 1)

end A139990

/-! ## A139990.P12292924122426394678

`∩[A139849(n+1), A139888(n+1)]`
-/

namespace A139990.P12292924122426394678
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139849 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139888 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139990.P12292924122426394678

namespace A139990

/-- `∩[A139849(n+1), A139888(n+1)]` -/
def P12292924122426394678.Spec : Prop :=
  ∀ n, (P12292924122426394678.a n : ℤ) = A139990 (n + 1)

end A139990

/-! ## A139990.P3953884192149250198

`∩[A139849(n+1), A139919(n+1)]`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A139990

/-- `∩[A139849(n+1), A139919(n+1)]` -/
def P3953884192149250198.Spec : Prop :=
  ∀ n, (P3953884192149250198.a n : ℤ) = A139990 (n + 1)

theorem P3953884192149250198.correct : P3953884192149250198.Spec := by
  intro n
  simp only [A139990, Nat.add_sub_cancel]

end A139990

/-! ## A139990.P11430278341058204906

`∩[A107008(n+1), A139849(n+1)]`
-/

namespace A139990.P11430278341058204906
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107008 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139849 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139990.P11430278341058204906

namespace A139990

/-- `∩[A107008(n+1), A139849(n+1)]` -/
def P11430278341058204906.Spec : Prop :=
  ∀ n, (P11430278341058204906.a n : ℤ) = A139990 (n + 1)

end A139990

/-! ## A139990.P12649064953100444652

`∩[A107008(n+1), A139888(n+1)]`
-/

namespace A139990.P12649064953100444652
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107008 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139888 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139990.P12649064953100444652

namespace A139990

/-- `∩[A107008(n+1), A139888(n+1)]` -/
def P12649064953100444652.Spec : Prop :=
  ∀ n, (P12649064953100444652.a n : ℤ) = A139990 (n + 1)

end A139990

/-! ## A139990.P18330463244499123617

`∩[A107008(n+1), A139919(n+1)]`
-/

namespace A139990.P18330463244499123617
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107008 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139919 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139990.P18330463244499123617

namespace A139990

/-- `∩[A107008(n+1), A139919(n+1)]` -/
def P18330463244499123617.Spec : Prop :=
  ∀ n, (P18330463244499123617.a n : ℤ) = A139990 (n + 1)

end A139990

/-! ## A139990.P2105076664144384800

`∩[A107008(n+1), A107178(n+1)]`
-/

namespace A139990.P2105076664144384800
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107008 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107178 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139990.P2105076664144384800

namespace A139990

/-- `∩[A107008(n+1), A107178(n+1)]` -/
def P2105076664144384800.Spec : Prop :=
  ∀ n, (P2105076664144384800.a n : ℤ) = A139990 (n + 1)

end A139990

/-! ## A139990.P10163678072198730620

`∩[A107178(n+1), A139849(n+1)]`
-/

namespace A139990.P10163678072198730620
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107178 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139849 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139990.P10163678072198730620

namespace A139990

/-- `∩[A107178(n+1), A139849(n+1)]` -/
def P10163678072198730620.Spec : Prop :=
  ∀ n, (P10163678072198730620.a n : ℤ) = A139990 (n + 1)

end A139990

/-! ## A139990.P5317590225593462258

`∩[A107178(n+1), A139888(n+1)]`
-/

namespace A139990.P5317590225593462258
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107178 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139888 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139990.P5317590225593462258

namespace A139990

/-- `∩[A107178(n+1), A139888(n+1)]` -/
def P5317590225593462258.Spec : Prop :=
  ∀ n, (P5317590225593462258.a n : ℤ) = A139990 (n + 1)

end A139990

/-! ## A139990.P4796986574603942590

`∩[A033199(n+1), A139849(n+1)]`
-/

namespace A139990.P4796986574603942590
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033199 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139849 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139990.P4796986574603942590

namespace A139990

/-- `∩[A033199(n+1), A139849(n+1)]` -/
def P4796986574603942590.Spec : Prop :=
  ∀ n, (P4796986574603942590.a n : ℤ) = A139990 (n + 1)

end A139990

/-! ## A139990.P15803258122267161832

`∩[A033199(n+1), A139888(n+1)]`
-/

namespace A139990.P15803258122267161832
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033199 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139888 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139990.P15803258122267161832

namespace A139990

/-- `∩[A033199(n+1), A139888(n+1)]` -/
def P15803258122267161832.Spec : Prop :=
  ∀ n, (P15803258122267161832.a n : ℤ) = A139990 (n + 1)

end A139990

/-! ## A139990.P15505968704167598077

`∩[A033199(n+1), A139919(n+1)]`
-/

namespace A139990.P15505968704167598077
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033199 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139919 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139990.P15505968704167598077

namespace A139990

/-- `∩[A033199(n+1), A139919(n+1)]` -/
def P15505968704167598077.Spec : Prop :=
  ∀ n, (P15505968704167598077.a n : ℤ) = A139990 (n + 1)

end A139990

/-! ## A139990.P9355659848079243234

`∩[A007519(n+1), A139849(n+1)]`
-/

namespace A139990.P9355659848079243234
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007519 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139849 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139990.P9355659848079243234

namespace A139990

/-- `∩[A007519(n+1), A139849(n+1)]` -/
def P9355659848079243234.Spec : Prop :=
  ∀ n, (P9355659848079243234.a n : ℤ) = A139990 (n + 1)

end A139990

/-! ## A139990.P9480866857473709644

`∩[A007519(n+1), A139888(n+1)]`
-/

namespace A139990.P9480866857473709644
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007519 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139888 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139990.P9480866857473709644

namespace A139990

/-- `∩[A007519(n+1), A139888(n+1)]` -/
def P9480866857473709644.Spec : Prop :=
  ∀ n, (P9480866857473709644.a n : ℤ) = A139990 (n + 1)

end A139990

/-! ## A139990.P15707292551902495664

`∩[A045390(n+1), A139849(n+1)]`
-/

namespace A139990.P15707292551902495664
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045390 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139849 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139990.P15707292551902495664

namespace A139990

/-- `∩[A045390(n+1), A139849(n+1)]` -/
def P15707292551902495664.Spec : Prop :=
  ∀ n, (P15707292551902495664.a n : ℤ) = A139990 (n + 1)

end A139990

/-! ## A139990.P17779577169124094667

`∩[A045390(n+1), A139888(n+1)]`
-/

namespace A139990.P17779577169124094667
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045390 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139888 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139990.P17779577169124094667

namespace A139990

/-- `∩[A045390(n+1), A139888(n+1)]` -/
def P17779577169124094667.Spec : Prop :=
  ∀ n, (P17779577169124094667.a n : ℤ) = A139990 (n + 1)

end A139990

/-! ## A139990.P297933033232072450

`∩[A139849(n+1), A209544(n+1)]`
-/

namespace A139990.P297933033232072450
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139849 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209544 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139990.P297933033232072450

namespace A139990

/-- `∩[A139849(n+1), A209544(n+1)]` -/
def P297933033232072450.Spec : Prop :=
  ∀ n, (P297933033232072450.a n : ℤ) = A139990 (n + 1)

end A139990

/-! ## A139990.P5557912909885139897

`∩[A068228(n+1), A107178(n+1)]`
-/

namespace A139990.P5557912909885139897
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068228 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107178 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139990.P5557912909885139897

namespace A139990

/-- `∩[A068228(n+1), A107178(n+1)]` -/
def P5557912909885139897.Spec : Prop :=
  ∀ n, (P5557912909885139897.a n : ℤ) = A139990 (n + 1)

end A139990

/-! ## A139990.P3954742004276806568

`∩[A068228(n+1), A139888(n+1)]`
-/

namespace A139990.P3954742004276806568
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068228 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139888 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139990.P3954742004276806568

namespace A139990

/-- `∩[A068228(n+1), A139888(n+1)]` -/
def P3954742004276806568.Spec : Prop :=
  ∀ n, (P3954742004276806568.a n : ℤ) = A139990 (n + 1)

end A139990

/-! ## A139990.P4296350429092288767

`∩[A068228(n+1), A139919(n+1)]`
-/

namespace A139990.P4296350429092288767
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068228 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139919 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139990.P4296350429092288767

namespace A139990

/-- `∩[A068228(n+1), A139919(n+1)]` -/
def P4296350429092288767.Spec : Prop :=
  ∀ n, (P4296350429092288767.a n : ℤ) = A139990 (n + 1)

end A139990

/-!
# A139991: Primes of the form 15x^2+56y^2.

The programs for A139991, the canonical program `A139991.P14427523625073511135` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A139991 has offset 1).

The definition of A139991 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2511 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A139991.P2785274092823294468

`∩[A139878(n+1), A139893(n+1)]`
-/

namespace A139991.P2785274092823294468
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139878 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139893 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139991.P2785274092823294468

namespace A139991

/-- `∩[A139878(n+1), A139893(n+1)]` -/
def P2785274092823294468.Spec : Prop :=
  ∀ n, (P2785274092823294468.a n : ℤ) = A139991 (n + 1)

end A139991

/-! ## A139991.P10054315212046937923

`∩[A139914(n+1), A139893(n+1)]`
-/

namespace A139991.P10054315212046937923
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139914 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139893 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139991.P10054315212046937923

namespace A139991

/-- `∩[A139914(n+1), A139893(n+1)]` -/
def P10054315212046937923.Spec : Prop :=
  ∀ n, (P10054315212046937923.a n : ℤ) = A139991 (n + 1)

end A139991

/-! ## A139991.P4628071282563221113

`∩[A025023(n+1), A139850(n+1)]`
-/

namespace A139991.P4628071282563221113
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025023 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139850 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139991.P4628071282563221113

namespace A139991

/-- `∩[A025023(n+1), A139850(n+1)]` -/
def P4628071282563221113.Spec : Prop :=
  ∀ n, (P4628071282563221113.a n : ℤ) = A139991 (n + 1)

end A139991

/-! ## A139991.P7238970421634255426

`∩[A025023(n+1), A139878(n+1)]`
-/

namespace A139991.P7238970421634255426
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025023 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139878 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139991.P7238970421634255426

namespace A139991

/-- `∩[A025023(n+1), A139878(n+1)]` -/
def P7238970421634255426.Spec : Prop :=
  ∀ n, (P7238970421634255426.a n : ℤ) = A139991 (n + 1)

end A139991

/-! ## A139991.P11163617626192961651

`∩[A025023(n+1), A139893(n+1)]`
-/

namespace A139991.P11163617626192961651
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025023 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139893 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139991.P11163617626192961651

namespace A139991

/-- `∩[A025023(n+1), A139893(n+1)]` -/
def P11163617626192961651.Spec : Prop :=
  ∀ n, (P11163617626192961651.a n : ℤ) = A139991 (n + 1)

end A139991

/-! ## A139991.P7434228525926085581

`∩[A025023(n+1), A139914(n+1)]`
-/

namespace A139991.P7434228525926085581
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025023 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139914 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139991.P7434228525926085581

namespace A139991

/-- `∩[A025023(n+1), A139914(n+1)]` -/
def P7434228525926085581.Spec : Prop :=
  ∀ n, (P7434228525926085581.a n : ℤ) = A139991 (n + 1)

end A139991

/-! ## A139991.P15624181149825407266

`∩[A025023(n+1), A295835(n+1)]`
-/

namespace A139991.P15624181149825407266
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025023 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295835 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139991.P15624181149825407266

namespace A139991

/-- `∩[A025023(n+1), A295835(n+1)]` -/
def P15624181149825407266.Spec : Prop :=
  ∀ n, (P15624181149825407266.a n : ℤ) = A139991 (n + 1)

end A139991

/-! ## A139991.P5533770528845363826

`∩[A025023(n+1), A033245(n+1)]`
-/

namespace A139991.P5533770528845363826
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025023 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033245 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139991.P5533770528845363826

namespace A139991

/-- `∩[A025023(n+1), A033245(n+1)]` -/
def P5533770528845363826.Spec : Prop :=
  ∀ n, (P5533770528845363826.a n : ℤ) = A139991 (n + 1)

end A139991

/-! ## A139991.P217560673507235796

`∩[A033245(n+1), A139850(n+1)]`
-/

namespace A139991.P217560673507235796
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033245 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139850 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139991.P217560673507235796

namespace A139991

/-- `∩[A033245(n+1), A139850(n+1)]` -/
def P217560673507235796.Spec : Prop :=
  ∀ n, (P217560673507235796.a n : ℤ) = A139991 (n + 1)

end A139991

/-! ## A139991.P5611586867052804021

`∩[A033245(n+1), A139878(n+1)]`
-/

namespace A139991.P5611586867052804021
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033245 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139878 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139991.P5611586867052804021

namespace A139991

/-- `∩[A033245(n+1), A139878(n+1)]` -/
def P5611586867052804021.Spec : Prop :=
  ∀ n, (P5611586867052804021.a n : ℤ) = A139991 (n + 1)

end A139991

/-! ## A139991.P16956190556334464840

`∩[A033245(n+1), A139893(n+1)]`
-/

namespace A139991.P16956190556334464840
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033245 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139893 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139991.P16956190556334464840

namespace A139991

/-- `∩[A033245(n+1), A139893(n+1)]` -/
def P16956190556334464840.Spec : Prop :=
  ∀ n, (P16956190556334464840.a n : ℤ) = A139991 (n + 1)

end A139991

/-! ## A139991.P11536886812725462801

`∩[A025023(n+1), A107148(n+1)]`
-/

namespace A139991.P11536886812725462801
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025023 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107148 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139991.P11536886812725462801

namespace A139991

/-- `∩[A025023(n+1), A107148(n+1)]` -/
def P11536886812725462801.Spec : Prop :=
  ∀ n, (P11536886812725462801.a n : ℤ) = A139991 (n + 1)

end A139991

/-! ## A139991.P10943903399283655704

`∩[A033245(n+1), A107148(n+1)]`
-/

namespace A139991.P10943903399283655704
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033245 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107148 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139991.P10943903399283655704

namespace A139991

/-- `∩[A033245(n+1), A107148(n+1)]` -/
def P10943903399283655704.Spec : Prop :=
  ∀ n, (P10943903399283655704.a n : ℤ) = A139991 (n + 1)

end A139991

/-! ## A139991.P5586045916539296279

`∩[A025023(n+1), A139852(n+1)]`
-/

namespace A139991.P5586045916539296279
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025023 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139852 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139991.P5586045916539296279

namespace A139991

/-- `∩[A025023(n+1), A139852(n+1)]` -/
def P5586045916539296279.Spec : Prop :=
  ∀ n, (P5586045916539296279.a n : ℤ) = A139991 (n + 1)

end A139991

/-! ## A139991.P14427523625073511135

`∩[A107148(n+1), A139850(n+1)]`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A139991

/-- `∩[A107148(n+1), A139850(n+1)]` -/
def P14427523625073511135.Spec : Prop :=
  ∀ n, (P14427523625073511135.a n : ℤ) = A139991 (n + 1)

theorem P14427523625073511135.correct : P14427523625073511135.Spec := by
  intro n
  simp only [A139991, Nat.add_sub_cancel]

end A139991

/-! ## A139991.P3250536195708939076

`∩[A107148(n+1), A139914(n+1)]`
-/

namespace A139991.P3250536195708939076
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107148 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139914 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139991.P3250536195708939076

namespace A139991

/-- `∩[A107148(n+1), A139914(n+1)]` -/
def P3250536195708939076.Spec : Prop :=
  ∀ n, (P3250536195708939076.a n : ℤ) = A139991 (n + 1)

end A139991

/-! ## A139991.P10164270011202213727

`∩[A139850(n+1), A139852(n+1)]`
-/

namespace A139991.P10164270011202213727
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139850 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139852 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139991.P10164270011202213727

namespace A139991

/-- `∩[A139850(n+1), A139852(n+1)]` -/
def P10164270011202213727.Spec : Prop :=
  ∀ n, (P10164270011202213727.a n : ℤ) = A139991 (n + 1)

end A139991

/-! ## A139991.P13738840399820645928

`∩[A139852(n+1), A139893(n+1)]`
-/

namespace A139991.P13738840399820645928
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139852 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139893 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139991.P13738840399820645928

namespace A139991

/-- `∩[A139852(n+1), A139893(n+1)]` -/
def P13738840399820645928.Spec : Prop :=
  ∀ n, (P13738840399820645928.a n : ℤ) = A139991 (n + 1)

end A139991

/-! ## A139991.P15248782891517881667

`∩[A107148(n+1), A295835(n+1)]`
-/

namespace A139991.P15248782891517881667
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107148 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295835 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139991.P15248782891517881667

namespace A139991

/-- `∩[A107148(n+1), A295835(n+1)]` -/
def P15248782891517881667.Spec : Prop :=
  ∀ n, (P15248782891517881667.a n : ℤ) = A139991 (n + 1)

end A139991

/-! ## A139991.P14430099624401838001

`∩[A025023(n+1), A141302(n+1)]`
-/

namespace A139991.P14430099624401838001
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025023 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141302 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139991.P14430099624401838001

namespace A139991

/-- `∩[A025023(n+1), A141302(n+1)]` -/
def P14430099624401838001.Spec : Prop :=
  ∀ n, (P14430099624401838001.a n : ℤ) = A139991 (n + 1)

end A139991

/-!
# A139992: Primes of the form 20x^2+20xy+47y^2.

The programs for A139992, the canonical program `A139992.P15611343354093908935` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A139992 has offset 1).

The definition of A139992 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5003 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A139992.P15611343354093908935

`∩[A139845(n+1), A139857(n+1)]`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A139992

/-- `∩[A139845(n+1), A139857(n+1)]` -/
def P15611343354093908935.Spec : Prop :=
  ∀ n, (P15611343354093908935.a n : ℤ) = A139992 (n + 1)

theorem P15611343354093908935.correct : P15611343354093908935.Spec := by
  intro n
  simp only [A139992, Nat.add_sub_cancel]

end A139992

/-! ## A139992.P8119502306110145833

`∩[A139845(n+1), A139889(n+1)]`
-/

namespace A139992.P8119502306110145833
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139845 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139889 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139992.P8119502306110145833

namespace A139992

/-- `∩[A139845(n+1), A139889(n+1)]` -/
def P8119502306110145833.Spec : Prop :=
  ∀ n, (P8119502306110145833.a n : ℤ) = A139992 (n + 1)

end A139992

/-! ## A139992.P2018067425388166485

`∩[A139845(n+1), A139916(n+1)]`
-/

namespace A139992.P2018067425388166485
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139845 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139916 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139992.P2018067425388166485

namespace A139992

/-- `∩[A139845(n+1), A139916(n+1)]` -/
def P2018067425388166485.Spec : Prop :=
  ∀ n, (P2018067425388166485.a n : ℤ) = A139992 (n + 1)

end A139992

/-! ## A139992.P4671178274785801245

`∩[A139889(n+1), A139916(n+1)]`
-/

namespace A139992.P4671178274785801245
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139889 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139916 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139992.P4671178274785801245

namespace A139992

/-- `∩[A139889(n+1), A139916(n+1)]` -/
def P4671178274785801245.Spec : Prop :=
  ∀ n, (P4671178274785801245.a n : ℤ) = A139992 (n + 1)

end A139992

/-! ## A139992.P9957068873352434971

`∩[A139830(n+1), A139845(n+1)]`
-/

namespace A139992.P9957068873352434971
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139830 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139845 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139992.P9957068873352434971

namespace A139992

/-- `∩[A139830(n+1), A139845(n+1)]` -/
def P9957068873352434971.Spec : Prop :=
  ∀ n, (P9957068873352434971.a n : ℤ) = A139992 (n + 1)

end A139992

/-! ## A139992.P13842619189167797740

`∩[A139830(n+1), A139889(n+1)]`
-/

namespace A139992.P13842619189167797740
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139830 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139889 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139992.P13842619189167797740

namespace A139992

/-- `∩[A139830(n+1), A139889(n+1)]` -/
def P13842619189167797740.Spec : Prop :=
  ∀ n, (P13842619189167797740.a n : ℤ) = A139992 (n + 1)

end A139992

/-! ## A139992.P9713434161750473177

`∩[A107169(n+1), A139889(n+1)]`
-/

namespace A139992.P9713434161750473177
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107169 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139889 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139992.P9713434161750473177

namespace A139992

/-- `∩[A107169(n+1), A139889(n+1)]` -/
def P9713434161750473177.Spec : Prop :=
  ∀ n, (P9713434161750473177.a n : ℤ) = A139992 (n + 1)

end A139992

/-! ## A139992.P4713491049395142739

`∩[A107169(n+1), A139916(n+1)]`
-/

namespace A139992.P4713491049395142739
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107169 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139916 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139992.P4713491049395142739

namespace A139992

/-- `∩[A107169(n+1), A139916(n+1)]` -/
def P4713491049395142739.Spec : Prop :=
  ∀ n, (P4713491049395142739.a n : ℤ) = A139992 (n + 1)

end A139992

/-! ## A139992.P6550485222798083772

`∩[A139831(n+1), A139889(n+1)]`
-/

namespace A139992.P6550485222798083772
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139831 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139889 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139992.P6550485222798083772

namespace A139992

/-- `∩[A139831(n+1), A139889(n+1)]` -/
def P6550485222798083772.Spec : Prop :=
  ∀ n, (P6550485222798083772.a n : ℤ) = A139992 (n + 1)

end A139992

/-! ## A139992.P1732012575728700009

`∩[A139831(n+1), A139916(n+1)]`
-/

namespace A139992.P1732012575728700009
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139831 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139916 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139992.P1732012575728700009

namespace A139992

/-- `∩[A139831(n+1), A139916(n+1)]` -/
def P1732012575728700009.Spec : Prop :=
  ∀ n, (P1732012575728700009.a n : ℤ) = A139992 (n + 1)

end A139992

/-! ## A139992.P13421241997780198940

`∩[A107137(n+1), A139845(n+1)]`
-/

namespace A139992.P13421241997780198940
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107137 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139845 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139992.P13421241997780198940

namespace A139992

/-- `∩[A107137(n+1), A139845(n+1)]` -/
def P13421241997780198940.Spec : Prop :=
  ∀ n, (P13421241997780198940.a n : ℤ) = A139992 (n + 1)

end A139992

/-! ## A139992.P1396211194983159272

`∩[A107137(n+1), A139889(n+1)]`
-/

namespace A139992.P1396211194983159272
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107137 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139889 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139992.P1396211194983159272

namespace A139992

/-- `∩[A107137(n+1), A139889(n+1)]` -/
def P1396211194983159272.Spec : Prop :=
  ∀ n, (P1396211194983159272.a n : ℤ) = A139992 (n + 1)

end A139992

/-! ## A139992.P12008325879964993734

`∩[A107137(n+1), A139916(n+1)]`
-/

namespace A139992.P12008325879964993734
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107137 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139916 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139992.P12008325879964993734

namespace A139992

/-- `∩[A107137(n+1), A139916(n+1)]` -/
def P12008325879964993734.Spec : Prop :=
  ∀ n, (P12008325879964993734.a n : ℤ) = A139992 (n + 1)

end A139992

/-! ## A139992.P1764174061667204077

`∩[A107169(n+1), A107178(n+1)]`
-/

namespace A139992.P1764174061667204077
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107169 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107178 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139992.P1764174061667204077

namespace A139992

/-- `∩[A107169(n+1), A107178(n+1)]` -/
def P1764174061667204077.Spec : Prop :=
  ∀ n, (P1764174061667204077.a n : ℤ) = A139992 (n + 1)

end A139992

/-! ## A139992.P11508575114115703177

`∩[A107178(n+1), A139831(n+1)]`
-/

namespace A139992.P11508575114115703177
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107178 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139831 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139992.P11508575114115703177

namespace A139992

/-- `∩[A107178(n+1), A139831(n+1)]` -/
def P11508575114115703177.Spec : Prop :=
  ∀ n, (P11508575114115703177.a n : ℤ) = A139992 (n + 1)

end A139992

/-! ## A139992.P10405110967916565404

`∩[A107178(n+1), A139845(n+1)]`
-/

namespace A139992.P10405110967916565404
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107178 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139845 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139992.P10405110967916565404

namespace A139992

/-- `∩[A107178(n+1), A139845(n+1)]` -/
def P10405110967916565404.Spec : Prop :=
  ∀ n, (P10405110967916565404.a n : ℤ) = A139992 (n + 1)

end A139992

/-! ## A139992.P15497333983249754063

`∩[A107178(n+1), A139857(n+1)]`
-/

namespace A139992.P15497333983249754063
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107178 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139857 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139992.P15497333983249754063

namespace A139992

/-- `∩[A107178(n+1), A139857(n+1)]` -/
def P15497333983249754063.Spec : Prop :=
  ∀ n, (P15497333983249754063.a n : ℤ) = A139992 (n + 1)

end A139992

/-! ## A139992.P16440093875886364707

`∩[A107178(n+1), A139889(n+1)]`
-/

namespace A139992.P16440093875886364707
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107178 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139889 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139992.P16440093875886364707

namespace A139992

/-- `∩[A107178(n+1), A139889(n+1)]` -/
def P16440093875886364707.Spec : Prop :=
  ∀ n, (P16440093875886364707.a n : ℤ) = A139992 (n + 1)

end A139992

/-! ## A139992.P4965532492983648871

`∩[A107178(n+1), A134517(n+1)]`
-/

namespace A139992.P4965532492983648871
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107178 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134517 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139992.P4965532492983648871

namespace A139992

/-- `∩[A107178(n+1), A134517(n+1)]` -/
def P4965532492983648871.Spec : Prop :=
  ∀ n, (P4965532492983648871.a n : ℤ) = A139992 (n + 1)

end A139992

/-! ## A139992.P1285191123903390992

`∩[A134517(n+1), A139845(n+1)]`
-/

namespace A139992.P1285191123903390992
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134517 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139845 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139992.P1285191123903390992

namespace A139992

/-- `∩[A134517(n+1), A139845(n+1)]` -/
def P1285191123903390992.Spec : Prop :=
  ∀ n, (P1285191123903390992.a n : ℤ) = A139992 (n + 1)

end A139992

/-!
# A139993: Primes of the form 21x^2+40y^2.

The programs for A139993, the canonical program `A139993.P12176979692534737172` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A139993 has offset 1).

The definition of A139993 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4995 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A139993.P16744250379387494453

`∩[A139892(n+1), A139898(n+1)]`
-/

namespace A139993.P16744250379387494453
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139892 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139898 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139993.P16744250379387494453

namespace A139993

/-- `∩[A139892(n+1), A139898(n+1)]` -/
def P16744250379387494453.Spec : Prop :=
  ∀ n, (P16744250379387494453.a n : ℤ) = A139993 (n + 1)

end A139993

/-! ## A139993.P963577751941800912

`∩[A139892(n+1), A139915(n+1)]`
-/

namespace A139993.P963577751941800912
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139892 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139915 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139993.P963577751941800912

namespace A139993

/-- `∩[A139892(n+1), A139915(n+1)]` -/
def P963577751941800912.Spec : Prop :=
  ∀ n, (P963577751941800912.a n : ℤ) = A139993 (n + 1)

end A139993

/-! ## A139993.P12176979692534737172

`∩[A139898(n+1), A139915(n+1)]`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A139993

/-- `∩[A139898(n+1), A139915(n+1)]` -/
def P12176979692534737172.Spec : Prop :=
  ∀ n, (P12176979692534737172.a n : ℤ) = A139993 (n + 1)

theorem P12176979692534737172.correct : P12176979692534737172.Spec := by
  intro n
  simp only [A139993, Nat.add_sub_cancel]

end A139993

/-! ## A139993.P7100094763647844172

`∩[A139880(n+1), A139892(n+1)]`
-/

namespace A139993.P7100094763647844172
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139880 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139892 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139993.P7100094763647844172

namespace A139993

/-- `∩[A139880(n+1), A139892(n+1)]` -/
def P7100094763647844172.Spec : Prop :=
  ∀ n, (P7100094763647844172.a n : ℤ) = A139993 (n + 1)

end A139993

/-! ## A139993.P572520887180907486

`∩[A139880(n+1), A139898(n+1)]`
-/

namespace A139993.P572520887180907486
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139880 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139898 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139993.P572520887180907486

namespace A139993

/-- `∩[A139880(n+1), A139898(n+1)]` -/
def P572520887180907486.Spec : Prop :=
  ∀ n, (P572520887180907486.a n : ℤ) = A139993 (n + 1)

end A139993

/-! ## A139993.P6857546196169512156

`∩[A139880(n+1), A139915(n+1)]`
-/

namespace A139993.P6857546196169512156
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139880 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139915 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139993.P6857546196169512156

namespace A139993

/-- `∩[A139880(n+1), A139915(n+1)]` -/
def P6857546196169512156.Spec : Prop :=
  ∀ n, (P6857546196169512156.a n : ℤ) = A139993 (n + 1)

end A139993

/-! ## A139993.P2366982938545168836

`∩[A107152(n+1), A139880(n+1)]`
-/

namespace A139993.P2366982938545168836
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107152 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139880 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139993.P2366982938545168836

namespace A139993

/-- `∩[A107152(n+1), A139880(n+1)]` -/
def P2366982938545168836.Spec : Prop :=
  ∀ n, (P2366982938545168836.a n : ℤ) = A139993 (n + 1)

end A139993

/-! ## A139993.P6457533218181710730

`∩[A107152(n+1), A139892(n+1)]`
-/

namespace A139993.P6457533218181710730
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107152 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139892 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139993.P6457533218181710730

namespace A139993

/-- `∩[A107152(n+1), A139892(n+1)]` -/
def P6457533218181710730.Spec : Prop :=
  ∀ n, (P6457533218181710730.a n : ℤ) = A139993 (n + 1)

end A139993

/-! ## A139993.P4896578432961084885

`∩[A107152(n+1), A139915(n+1)]`
-/

namespace A139993.P4896578432961084885
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107152 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139915 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139993.P4896578432961084885

namespace A139993

/-- `∩[A107152(n+1), A139915(n+1)]` -/
def P4896578432961084885.Spec : Prop :=
  ∀ n, (P4896578432961084885.a n : ℤ) = A139993 (n + 1)

end A139993

/-! ## A139993.P3509702080841986580

`∩[A107152(n+1), A107179(n+1)]`
-/

namespace A139993.P3509702080841986580
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107152 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107179 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139993.P3509702080841986580

namespace A139993

/-- `∩[A107152(n+1), A107179(n+1)]` -/
def P3509702080841986580.Spec : Prop :=
  ∀ n, (P3509702080841986580.a n : ℤ) = A139993 (n + 1)

end A139993

/-! ## A139993.P6468351207095835086

`∩[A107179(n+1), A139880(n+1)]`
-/

namespace A139993.P6468351207095835086
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107179 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139880 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139993.P6468351207095835086

namespace A139993

/-- `∩[A107179(n+1), A139880(n+1)]` -/
def P6468351207095835086.Spec : Prop :=
  ∀ n, (P6468351207095835086.a n : ℤ) = A139993 (n + 1)

end A139993

/-! ## A139993.P13399618072642617496

`∩[A107179(n+1), A139892(n+1)]`
-/

namespace A139993.P13399618072642617496
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107179 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139892 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139993.P13399618072642617496

namespace A139993

/-- `∩[A107179(n+1), A139892(n+1)]` -/
def P13399618072642617496.Spec : Prop :=
  ∀ n, (P13399618072642617496.a n : ℤ) = A139993 (n + 1)

end A139993

/-! ## A139993.P14620510269209226997

`∩[A107179(n+1), A139898(n+1)]`
-/

namespace A139993.P14620510269209226997
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107179 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139898 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139993.P14620510269209226997

namespace A139993

/-- `∩[A107179(n+1), A139898(n+1)]` -/
def P14620510269209226997.Spec : Prop :=
  ∀ n, (P14620510269209226997.a n : ℤ) = A139993 (n + 1)

end A139993

/-! ## A139993.P11058309225067514195

`∩[A107179(n+1), A139530(n+1)]`
-/

namespace A139993.P11058309225067514195
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107179 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139530 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139993.P11058309225067514195

namespace A139993

/-- `∩[A107179(n+1), A139530(n+1)]` -/
def P11058309225067514195.Spec : Prop :=
  ∀ n, (P11058309225067514195.a n : ℤ) = A139993 (n + 1)

end A139993

/-! ## A139993.P13123102889279272823

`∩[A139530(n+1), A139892(n+1)]`
-/

namespace A139993.P13123102889279272823
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139530 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139892 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139993.P13123102889279272823

namespace A139993

/-- `∩[A139530(n+1), A139892(n+1)]` -/
def P13123102889279272823.Spec : Prop :=
  ∀ n, (P13123102889279272823.a n : ℤ) = A139993 (n + 1)

end A139993

/-! ## A139993.P8584173257698802947

`∩[A139530(n+1), A139915(n+1)]`
-/

namespace A139993.P8584173257698802947
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139530 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139915 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139993.P8584173257698802947

namespace A139993

/-- `∩[A139530(n+1), A139915(n+1)]` -/
def P8584173257698802947.Spec : Prop :=
  ∀ n, (P8584173257698802947.a n : ℤ) = A139993 (n + 1)

end A139993

/-! ## A139993.P12848318070084892842

`∩[A107146(n+1), A107152(n+1)]`
-/

namespace A139993.P12848318070084892842
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107146 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107152 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139993.P12848318070084892842

namespace A139993

/-- `∩[A107146(n+1), A107152(n+1)]` -/
def P12848318070084892842.Spec : Prop :=
  ∀ n, (P12848318070084892842.a n : ℤ) = A139993 (n + 1)

end A139993

/-! ## A139993.P5077972654067750581

`∩[A107146(n+1), A107179(n+1)]`
-/

namespace A139993.P5077972654067750581
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107146 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107179 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139993.P5077972654067750581

namespace A139993

/-- `∩[A107146(n+1), A107179(n+1)]` -/
def P5077972654067750581.Spec : Prop :=
  ∀ n, (P5077972654067750581.a n : ℤ) = A139993 (n + 1)

end A139993

/-! ## A139993.P17722630258968447503

`∩[A107146(n+1), A139898(n+1)]`
-/

namespace A139993.P17722630258968447503
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107146 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139898 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139993.P17722630258968447503

namespace A139993

/-- `∩[A107146(n+1), A139898(n+1)]` -/
def P17722630258968447503.Spec : Prop :=
  ∀ n, (P17722630258968447503.a n : ℤ) = A139993 (n + 1)

end A139993

/-! ## A139993.P8870527069206738272

`∩[A107146(n+1), A139915(n+1)]`
-/

namespace A139993.P8870527069206738272
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107146 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139915 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139993.P8870527069206738272

namespace A139993

/-- `∩[A107146(n+1), A139915(n+1)]` -/
def P8870527069206738272.Spec : Prop :=
  ∀ n, (P8870527069206738272.a n : ℤ) = A139993 (n + 1)

end A139993

/-!
# A139994: Primes of the form 24x^2+35y^2.

The programs for A139994, the canonical program `A139994.P12283442162161992640` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A139994 has offset 1).

The definition of A139994 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4990 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A139994.P18203076241197403118

`∩[A139890(n+1), A139920(n+1)]`
-/

namespace A139994.P18203076241197403118
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139890 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139920 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139994.P18203076241197403118

namespace A139994

/-- `∩[A139890(n+1), A139920(n+1)]` -/
def P18203076241197403118.Spec : Prop :=
  ∀ n, (P18203076241197403118.a n : ℤ) = A139994 (n + 1)

end A139994

/-! ## A139994.P15585270930240970011

`∩[A139874(n+1), A139890(n+1)]`
-/

namespace A139994.P15585270930240970011
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139874 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139890 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139994.P15585270930240970011

namespace A139994

/-- `∩[A139874(n+1), A139890(n+1)]` -/
def P15585270930240970011.Spec : Prop :=
  ∀ n, (P15585270930240970011.a n : ℤ) = A139994 (n + 1)

end A139994

/-! ## A139994.P12283442162161992640

`∩[A139859(n+1), A139874(n+1)]`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A139994

/-- `∩[A139859(n+1), A139874(n+1)]` -/
def P12283442162161992640.Spec : Prop :=
  ∀ n, (P12283442162161992640.a n : ℤ) = A139994 (n + 1)

theorem P12283442162161992640.correct : P12283442162161992640.Spec := by
  intro n
  simp only [A139994, Nat.add_sub_cancel]

end A139994

/-! ## A139994.P6652653044701231257

`∩[A139859(n+1), A139890(n+1)]`
-/

namespace A139994.P6652653044701231257
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139859 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139890 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139994.P6652653044701231257

namespace A139994

/-- `∩[A139859(n+1), A139890(n+1)]` -/
def P6652653044701231257.Spec : Prop :=
  ∀ n, (P6652653044701231257.a n : ℤ) = A139994 (n + 1)

end A139994

/-! ## A139994.P6865248171100775111

`∩[A139859(n+1), A139920(n+1)]`
-/

namespace A139994.P6865248171100775111
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139859 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139920 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139994.P6865248171100775111

namespace A139994

/-- `∩[A139859(n+1), A139920(n+1)]` -/
def P6865248171100775111.Spec : Prop :=
  ∀ n, (P6865248171100775111.a n : ℤ) = A139994 (n + 1)

end A139994

/-! ## A139994.P3792419825632854877

`∩[A107135(n+1), A139874(n+1)]`
-/

namespace A139994.P3792419825632854877
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107135 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139874 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139994.P3792419825632854877

namespace A139994

/-- `∩[A107135(n+1), A139874(n+1)]` -/
def P3792419825632854877.Spec : Prop :=
  ∀ n, (P3792419825632854877.a n : ℤ) = A139994 (n + 1)

end A139994

/-! ## A139994.P646169440053913242

`∩[A107135(n+1), A139890(n+1)]`
-/

namespace A139994.P646169440053913242
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107135 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139890 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139994.P646169440053913242

namespace A139994

/-- `∩[A107135(n+1), A139890(n+1)]` -/
def P646169440053913242.Spec : Prop :=
  ∀ n, (P646169440053913242.a n : ℤ) = A139994 (n + 1)

end A139994

/-! ## A139994.P16884803784060031856

`∩[A107135(n+1), A139920(n+1)]`
-/

namespace A139994.P16884803784060031856
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107135 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139920 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139994.P16884803784060031856

namespace A139994

/-- `∩[A107135(n+1), A139920(n+1)]` -/
def P16884803784060031856.Spec : Prop :=
  ∀ n, (P16884803784060031856.a n : ℤ) = A139994 (n + 1)

end A139994

/-! ## A139994.P6198105209861885875

`∩[A107179(n+1), A139859(n+1)]`
-/

namespace A139994.P6198105209861885875
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107179 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139859 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139994.P6198105209861885875

namespace A139994

/-- `∩[A107179(n+1), A139859(n+1)]` -/
def P6198105209861885875.Spec : Prop :=
  ∀ n, (P6198105209861885875.a n : ℤ) = A139994 (n + 1)

end A139994

/-! ## A139994.P5978351420304495135

`∩[A107179(n+1), A139874(n+1)]`
-/

namespace A139994.P5978351420304495135
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107179 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139874 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139994.P5978351420304495135

namespace A139994

/-- `∩[A107179(n+1), A139874(n+1)]` -/
def P5978351420304495135.Spec : Prop :=
  ∀ n, (P5978351420304495135.a n : ℤ) = A139994 (n + 1)

end A139994

/-! ## A139994.P5586457650750272486

`∩[A107179(n+1), A139890(n+1)]`
-/

namespace A139994.P5586457650750272486
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107179 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139890 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139994.P5586457650750272486

namespace A139994

/-- `∩[A107179(n+1), A139890(n+1)]` -/
def P5586457650750272486.Spec : Prop :=
  ∀ n, (P5586457650750272486.a n : ℤ) = A139994 (n + 1)

end A139994

/-! ## A139994.P6529672193177643961

`∩[A107007(n+1), A107179(n+1)]`
-/

namespace A139994.P6529672193177643961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107007 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107179 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139994.P6529672193177643961

namespace A139994

/-- `∩[A107007(n+1), A107179(n+1)]` -/
def P6529672193177643961.Spec : Prop :=
  ∀ n, (P6529672193177643961.a n : ℤ) = A139994 (n + 1)

end A139994

/-! ## A139994.P13638194840587864126

`∩[A107007(n+1), A139890(n+1)]`
-/

namespace A139994.P13638194840587864126
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107007 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139890 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139994.P13638194840587864126

namespace A139994

/-- `∩[A107007(n+1), A139890(n+1)]` -/
def P13638194840587864126.Spec : Prop :=
  ∀ n, (P13638194840587864126.a n : ℤ) = A139994 (n + 1)

end A139994

/-! ## A139994.P6096299536505252468

`∩[A107007(n+1), A139920(n+1)]`
-/

namespace A139994.P6096299536505252468
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107007 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139920 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139994.P6096299536505252468

namespace A139994

/-- `∩[A107007(n+1), A139920(n+1)]` -/
def P6096299536505252468.Spec : Prop :=
  ∀ n, (P6096299536505252468.a n : ℤ) = A139994 (n + 1)

end A139994

/-! ## A139994.P8208814623848809771

`∩[A107179(n+1), A168539(n+1)]`
-/

namespace A139994.P8208814623848809771
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107179 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168539 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139994.P8208814623848809771

namespace A139994

/-- `∩[A107179(n+1), A168539(n+1)]` -/
def P8208814623848809771.Spec : Prop :=
  ∀ n, (P8208814623848809771.a n : ℤ) = A139994 (n + 1)

end A139994

/-! ## A139994.P10280230181182709655

`∩[A168539(n+1), A139890(n+1)]`
-/

namespace A139994.P10280230181182709655
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168539 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139890 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139994.P10280230181182709655

namespace A139994

/-- `∩[A168539(n+1), A139890(n+1)]` -/
def P10280230181182709655.Spec : Prop :=
  ∀ n, (P10280230181182709655.a n : ℤ) = A139994 (n + 1)

end A139994

/-! ## A139994.P16193526858843613600

`∩[A107135(n+1), A107147(n+1)]`
-/

namespace A139994.P16193526858843613600
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107135 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107147 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139994.P16193526858843613600

namespace A139994

/-- `∩[A107135(n+1), A107147(n+1)]` -/
def P16193526858843613600.Spec : Prop :=
  ∀ n, (P16193526858843613600.a n : ℤ) = A139994 (n + 1)

end A139994

/-! ## A139994.P18303569435140565297

`∩[A107147(n+1), A107179(n+1)]`
-/

namespace A139994.P18303569435140565297
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107147 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107179 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139994.P18303569435140565297

namespace A139994

/-- `∩[A107147(n+1), A107179(n+1)]` -/
def P18303569435140565297.Spec : Prop :=
  ∀ n, (P18303569435140565297.a n : ℤ) = A139994 (n + 1)

end A139994

/-! ## A139994.P16024513606512173543

`∩[A107147(n+1), A139859(n+1)]`
-/

namespace A139994.P16024513606512173543
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107147 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139859 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139994.P16024513606512173543

namespace A139994

/-- `∩[A107147(n+1), A139859(n+1)]` -/
def P16024513606512173543.Spec : Prop :=
  ∀ n, (P16024513606512173543.a n : ℤ) = A139994 (n + 1)

end A139994

/-! ## A139994.P5579900527898392442

`∩[A107147(n+1), A139920(n+1)]`
-/

namespace A139994.P5579900527898392442
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107147 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139920 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139994.P5579900527898392442

namespace A139994

/-- `∩[A107147(n+1), A139920(n+1)]` -/
def P5579900527898392442.Spec : Prop :=
  ∀ n, (P5579900527898392442.a n : ℤ) = A139994 (n + 1)

end A139994

/-!
# A139995: Primes of the form 24x^2+24xy+41y^2.

The programs for A139995, the canonical program `A139995.P6653243888125786699` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A139995 has offset 1).

The definition of A139995 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4973 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A139995.P16897671376293135525

`∩[A139846(n+1), A139890(n+1)]`
-/

namespace A139995.P16897671376293135525
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139846 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139890 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139995.P16897671376293135525

namespace A139995

/-- `∩[A139846(n+1), A139890(n+1)]` -/
def P16897671376293135525.Spec : Prop :=
  ∀ n, (P16897671376293135525.a n : ℤ) = A139995 (n + 1)

end A139995

/-! ## A139995.P6653243888125786699

`∩[A139846(n+1), A139879(n+1)]`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A139995

/-- `∩[A139846(n+1), A139879(n+1)]` -/
def P6653243888125786699.Spec : Prop :=
  ∀ n, (P6653243888125786699.a n : ℤ) = A139995 (n + 1)

theorem P6653243888125786699.correct : P6653243888125786699.Spec := by
  intro n
  simp only [A139995, Nat.add_sub_cancel]

end A139995

/-! ## A139995.P12798206905265827792

`∩[A139879(n+1), A139890(n+1)]`
-/

namespace A139995.P12798206905265827792
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139879 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139890 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139995.P12798206905265827792

namespace A139995

/-- `∩[A139879(n+1), A139890(n+1)]` -/
def P12798206905265827792.Spec : Prop :=
  ∀ n, (P12798206905265827792.a n : ℤ) = A139995 (n + 1)

end A139995

/-! ## A139995.P16237460904796047042

`∩[A107145(n+1), A139846(n+1)]`
-/

namespace A139995.P16237460904796047042
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107145 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139846 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139995.P16237460904796047042

namespace A139995

/-- `∩[A107145(n+1), A139846(n+1)]` -/
def P16237460904796047042.Spec : Prop :=
  ∀ n, (P16237460904796047042.a n : ℤ) = A139995 (n + 1)

end A139995

/-! ## A139995.P5496245465254928350

`∩[A107145(n+1), A139879(n+1)]`
-/

namespace A139995.P5496245465254928350
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107145 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139879 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139995.P5496245465254928350

namespace A139995

/-- `∩[A107145(n+1), A139879(n+1)]` -/
def P5496245465254928350.Spec : Prop :=
  ∀ n, (P5496245465254928350.a n : ℤ) = A139995 (n + 1)

end A139995

/-! ## A139995.P7280764585818316825

`∩[A107145(n+1), A139890(n+1)]`
-/

namespace A139995.P7280764585818316825
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107145 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139890 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139995.P7280764585818316825

namespace A139995

/-- `∩[A107145(n+1), A139890(n+1)]` -/
def P7280764585818316825.Spec : Prop :=
  ∀ n, (P7280764585818316825.a n : ℤ) = A139995 (n + 1)

end A139995

/-! ## A139995.P1841968549078614715

`∩[A107151(n+1), A139879(n+1)]`
-/

namespace A139995.P1841968549078614715
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107151 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139879 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139995.P1841968549078614715

namespace A139995

/-- `∩[A107151(n+1), A139879(n+1)]` -/
def P1841968549078614715.Spec : Prop :=
  ∀ n, (P1841968549078614715.a n : ℤ) = A139995 (n + 1)

end A139995

/-! ## A139995.P10546078691253807602

`∩[A107151(n+1), A139890(n+1)]`
-/

namespace A139995.P10546078691253807602
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107151 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139890 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139995.P10546078691253807602

namespace A139995

/-- `∩[A107151(n+1), A139890(n+1)]` -/
def P10546078691253807602.Spec : Prop :=
  ∀ n, (P10546078691253807602.a n : ℤ) = A139995 (n + 1)

end A139995

/-! ## A139995.P9242759471398405457

`∩[A107145(n+1), A107147(n+1)]`
-/

namespace A139995.P9242759471398405457
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107145 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107147 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139995.P9242759471398405457

namespace A139995

/-- `∩[A107145(n+1), A107147(n+1)]` -/
def P9242759471398405457.Spec : Prop :=
  ∀ n, (P9242759471398405457.a n : ℤ) = A139995 (n + 1)

end A139995

/-! ## A139995.P14252002327929116751

`∩[A107147(n+1), A107151(n+1)]`
-/

namespace A139995.P14252002327929116751
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107147 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107151 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139995.P14252002327929116751

namespace A139995

/-- `∩[A107147(n+1), A107151(n+1)]` -/
def P14252002327929116751.Spec : Prop :=
  ∀ n, (P14252002327929116751.a n : ℤ) = A139995 (n + 1)

end A139995

/-! ## A139995.P11480943535613512398

`∩[A107147(n+1), A139846(n+1)]`
-/

namespace A139995.P11480943535613512398
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107147 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139846 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139995.P11480943535613512398

namespace A139995

/-- `∩[A107147(n+1), A139846(n+1)]` -/
def P11480943535613512398.Spec : Prop :=
  ∀ n, (P11480943535613512398.a n : ℤ) = A139995 (n + 1)

end A139995

/-! ## A139995.P10993726604897721166

`∩[A106972(n+1), A107145(n+1)]`
-/

namespace A139995.P10993726604897721166
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106972 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107145 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139995.P10993726604897721166

namespace A139995

/-- `∩[A106972(n+1), A107145(n+1)]` -/
def P10993726604897721166.Spec : Prop :=
  ∀ n, (P10993726604897721166.a n : ℤ) = A139995 (n + 1)

end A139995

/-! ## A139995.P4096623606065663299

`∩[A106972(n+1), A139890(n+1)]`
-/

namespace A139995.P4096623606065663299
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106972 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139890 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139995.P4096623606065663299

namespace A139995

/-- `∩[A106972(n+1), A139890(n+1)]` -/
def P4096623606065663299.Spec : Prop :=
  ∀ n, (P4096623606065663299.a n : ℤ) = A139995 (n + 1)

end A139995

/-! ## A139995.P902115959516595608

`∩[A107181(n+1), A139846(n+1)]`
-/

namespace A139995.P902115959516595608
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107181 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139846 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139995.P902115959516595608

namespace A139995

/-- `∩[A107181(n+1), A139846(n+1)]` -/
def P902115959516595608.Spec : Prop :=
  ∀ n, (P902115959516595608.a n : ℤ) = A139995 (n + 1)

end A139995

/-! ## A139995.P12528565445525922991

`∩[A107181(n+1), A139890(n+1)]`
-/

namespace A139995.P12528565445525922991
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107181 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139890 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139995.P12528565445525922991

namespace A139995

/-- `∩[A107181(n+1), A139890(n+1)]` -/
def P12528565445525922991.Spec : Prop :=
  ∀ n, (P12528565445525922991.a n : ℤ) = A139995 (n + 1)

end A139995

/-! ## A139995.P16893629530766877723

`p?[and(-3, A139890(n+1))]`
-/

namespace A139995.P16893629530766877723
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-3) (A139890 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A139995.P16893629530766877723

namespace A139995

/-- `p?[and(-3, A139890(n+1))]` -/
def P16893629530766877723.Spec : Prop :=
  ∀ n, P16893629530766877723.a n = A139995 (n + 1)

end A139995

/-! ## A139995.P10893621554114020697

`∩[A033205(n+1), A107147(n+1)]`
-/

namespace A139995.P10893621554114020697
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033205 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107147 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139995.P10893621554114020697

namespace A139995

/-- `∩[A033205(n+1), A107147(n+1)]` -/
def P10893621554114020697.Spec : Prop :=
  ∀ n, (P10893621554114020697.a n : ℤ) = A139995 (n + 1)

end A139995

/-! ## A139995.P4968524596795164527

`∩[A007519(n+1), A139846(n+1)]`
-/

namespace A139995.P4968524596795164527
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007519 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139846 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139995.P4968524596795164527

namespace A139995

/-- `∩[A007519(n+1), A139846(n+1)]` -/
def P4968524596795164527.Spec : Prop :=
  ∀ n, (P4968524596795164527.a n : ℤ) = A139995 (n + 1)

end A139995

/-! ## A139995.P7118659393241407462

`∩[A007519(n+1), A139890(n+1)]`
-/

namespace A139995.P7118659393241407462
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007519 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139890 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139995.P7118659393241407462

namespace A139995

/-- `∩[A007519(n+1), A139890(n+1)]` -/
def P7118659393241407462.Spec : Prop :=
  ∀ n, (P7118659393241407462.a n : ℤ) = A139995 (n + 1)

end A139995

/-! ## A139995.P17589501474345495145

`∩[A033205(n+1), A139879(n+1)]`
-/

namespace A139995.P17589501474345495145
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033205 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139879 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139995.P17589501474345495145

namespace A139995

/-- `∩[A033205(n+1), A139879(n+1)]` -/
def P17589501474345495145.Spec : Prop :=
  ∀ n, (P17589501474345495145.a n : ℤ) = A139995 (n + 1)

end A139995

/-!
# A139996: Primes of the form 28x^2+28xy+37y^2.

The programs for A139996, the canonical program `A139996.P13907857736179143124` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A139996 has offset 1).

The definition of A139996 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4977 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A139996.P18414535988498384576

`A139891(eq[1, A139891(n+1)%4]+1)`
-/

namespace A139996.P18414535988498384576
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A139891 (n + 1)) 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139891 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A139996.P18414535988498384576

namespace A139996

/-- `A139891(eq[1, A139891(n+1)%4]+1)` -/
def P18414535988498384576.Spec : Prop :=
  ∀ n, P18414535988498384576.a n = A139996 (n + 1)

end A139996

/-! ## A139996.P5214721422013363224

`∩[A139860(n+1), A139891(n+1)]`
-/

namespace A139996.P5214721422013363224
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139860 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139891 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139996.P5214721422013363224

namespace A139996

/-- `∩[A139860(n+1), A139891(n+1)]` -/
def P5214721422013363224.Spec : Prop :=
  ∀ n, (P5214721422013363224.a n : ℤ) = A139996 (n + 1)

end A139996

/-! ## A139996.P13907857736179143124

`∩[A139860(n+1), A139918(n+1)]`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A139996

/-- `∩[A139860(n+1), A139918(n+1)]` -/
def P13907857736179143124.Spec : Prop :=
  ∀ n, (P13907857736179143124.a n : ℤ) = A139996 (n + 1)

theorem P13907857736179143124.correct : P13907857736179143124.Spec := by
  intro n
  simp only [A139996, Nat.add_sub_cancel]

end A139996

/-! ## A139996.P9020526459753788018

`∩[A033215(n+1), A139860(n+1)]`
-/

namespace A139996.P9020526459753788018
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033215 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139860 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139996.P9020526459753788018

namespace A139996

/-- `∩[A033215(n+1), A139860(n+1)]` -/
def P9020526459753788018.Spec : Prop :=
  ∀ n, (P9020526459753788018.a n : ℤ) = A139996 (n + 1)

end A139996

/-! ## A139996.P17115550657562926655

`∩[A033215(n+1), A139891(n+1)]`
-/

namespace A139996.P17115550657562926655
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033215 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139891 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139996.P17115550657562926655

namespace A139996

/-- `∩[A033215(n+1), A139891(n+1)]` -/
def P17115550657562926655.Spec : Prop :=
  ∀ n, (P17115550657562926655.a n : ℤ) = A139996 (n + 1)

end A139996

/-! ## A139996.P6809368801513234876

`∩[A033215(n+1), A139918(n+1)]`
-/

namespace A139996.P6809368801513234876
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033215 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139918 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139996.P6809368801513234876

namespace A139996

/-- `∩[A033215(n+1), A139918(n+1)]` -/
def P6809368801513234876.Spec : Prop :=
  ∀ n, (P6809368801513234876.a n : ℤ) = A139996 (n + 1)

end A139996

/-! ## A139996.P10680410870432572859

`∩[A139851(n+1), A139860(n+1)]`
-/

namespace A139996.P10680410870432572859
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139851 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139860 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139996.P10680410870432572859

namespace A139996

/-- `∩[A139851(n+1), A139860(n+1)]` -/
def P10680410870432572859.Spec : Prop :=
  ∀ n, (P10680410870432572859.a n : ℤ) = A139996 (n + 1)

end A139996

/-! ## A139996.P16286508013935989415

`∩[A139851(n+1), A139891(n+1)]`
-/

namespace A139996.P16286508013935989415
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139851 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139891 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139996.P16286508013935989415

namespace A139996

/-- `∩[A139851(n+1), A139891(n+1)]` -/
def P16286508013935989415.Spec : Prop :=
  ∀ n, (P16286508013935989415.a n : ℤ) = A139996 (n + 1)

end A139996

/-! ## A139996.P4861461454511332189

`∩[A033215(n+1), A107136(n+1)]`
-/

namespace A139996.P4861461454511332189
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033215 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107136 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139996.P4861461454511332189

namespace A139996

/-- `∩[A033215(n+1), A107136(n+1)]` -/
def P4861461454511332189.Spec : Prop :=
  ∀ n, (P4861461454511332189.a n : ℤ) = A139996 (n + 1)

end A139996

/-! ## A139996.P5600547414060981937

`∩[A107136(n+1), A139851(n+1)]`
-/

namespace A139996.P5600547414060981937
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107136 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139851 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139996.P5600547414060981937

namespace A139996

/-- `∩[A107136(n+1), A139851(n+1)]` -/
def P5600547414060981937.Spec : Prop :=
  ∀ n, (P5600547414060981937.a n : ℤ) = A139996 (n + 1)

end A139996

/-! ## A139996.P9226223303682908476

`∩[A107136(n+1), A139891(n+1)]`
-/

namespace A139996.P9226223303682908476
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107136 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139891 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139996.P9226223303682908476

namespace A139996

/-- `∩[A107136(n+1), A139891(n+1)]` -/
def P9226223303682908476.Spec : Prop :=
  ∀ n, (P9226223303682908476.a n : ℤ) = A139996 (n + 1)

end A139996

/-! ## A139996.P1325193660849266711

`∩[A107136(n+1), A139918(n+1)]`
-/

namespace A139996.P1325193660849266711
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107136 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139918 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139996.P1325193660849266711

namespace A139996

/-- `∩[A107136(n+1), A139918(n+1)]` -/
def P1325193660849266711.Spec : Prop :=
  ∀ n, (P1325193660849266711.a n : ℤ) = A139996 (n + 1)

end A139996

/-! ## A139996.P15538544149827670943

`∩[A033215(n+1), A107180(n+1)]`
-/

namespace A139996.P15538544149827670943
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033215 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107180 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139996.P15538544149827670943

namespace A139996

/-- `∩[A033215(n+1), A107180(n+1)]` -/
def P15538544149827670943.Spec : Prop :=
  ∀ n, (P15538544149827670943.a n : ℤ) = A139996 (n + 1)

end A139996

/-! ## A139996.P14816192678972967033

`∩[A107180(n+1), A139860(n+1)]`
-/

namespace A139996.P14816192678972967033
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107180 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139860 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139996.P14816192678972967033

namespace A139996

/-- `∩[A107180(n+1), A139860(n+1)]` -/
def P14816192678972967033.Spec : Prop :=
  ∀ n, (P14816192678972967033.a n : ℤ) = A139996 (n + 1)

end A139996

/-! ## A139996.P24743271423945922

`∩[A107180(n+1), A139891(n+1)]`
-/

namespace A139996.P24743271423945922
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107180 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139891 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139996.P24743271423945922

namespace A139996

/-- `∩[A107180(n+1), A139891(n+1)]` -/
def P24743271423945922.Spec : Prop :=
  ∀ n, (P24743271423945922.a n : ℤ) = A139996 (n + 1)

end A139996

/-! ## A139996.P10704584186492291516

`∩[A107180(n+1), A139530(n+1)]`
-/

namespace A139996.P10704584186492291516
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107180 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139530 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139996.P10704584186492291516

namespace A139996

/-- `∩[A107180(n+1), A139530(n+1)]` -/
def P10704584186492291516.Spec : Prop :=
  ∀ n, (P10704584186492291516.a n : ℤ) = A139996 (n + 1)

end A139996

/-! ## A139996.P17808372540972110230

`∩[A139530(n+1), A139891(n+1)]`
-/

namespace A139996.P17808372540972110230
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139530 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139891 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139996.P17808372540972110230

namespace A139996

/-- `∩[A139530(n+1), A139891(n+1)]` -/
def P17808372540972110230.Spec : Prop :=
  ∀ n, (P17808372540972110230.a n : ℤ) = A139996 (n + 1)

end A139996

/-! ## A139996.P4080445701904466830

`∩[A139530(n+1), A139918(n+1)]`
-/

namespace A139996.P4080445701904466830
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139530 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139918 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139996.P4080445701904466830

namespace A139996

/-- `∩[A139530(n+1), A139918(n+1)]` -/
def P4080445701904466830.Spec : Prop :=
  ∀ n, (P4080445701904466830.a n : ℤ) = A139996 (n + 1)

end A139996

/-! ## A139996.P10917362618677635901

`∩[A033215(n+1), A107144(n+1)]`
-/

namespace A139996.P10917362618677635901
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033215 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107144 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139996.P10917362618677635901

namespace A139996

/-- `∩[A033215(n+1), A107144(n+1)]` -/
def P10917362618677635901.Spec : Prop :=
  ∀ n, (P10917362618677635901.a n : ℤ) = A139996 (n + 1)

end A139996

/-! ## A139996.P8908687660416352934

`∩[A107144(n+1), A139891(n+1)]`
-/

namespace A139996.P8908687660416352934
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107144 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139891 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139996.P8908687660416352934

namespace A139996

/-- `∩[A107144(n+1), A139891(n+1)]` -/
def P8908687660416352934.Spec : Prop :=
  ∀ n, (P8908687660416352934.a n : ℤ) = A139996 (n + 1)

end A139996

/-!
# A139997: Primes of the form 29x^2+2xy+29y^2.

The programs for A139997, the canonical program `A139997.P868393966600918844` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A139997 has offset 1).

The definition of A139997 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4992 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A139997.P9675678118135398043

`∩[A139856(n+1), A139893(n+1)]`
-/

namespace A139997.P9675678118135398043
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139856 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139893 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139997.P9675678118135398043

namespace A139997

/-- `∩[A139856(n+1), A139893(n+1)]` -/
def P9675678118135398043.Spec : Prop :=
  ∀ n, (P9675678118135398043.a n : ℤ) = A139997 (n + 1)

end A139997

/-! ## A139997.P868393966600918844

`∩[A139856(n+1), A139877(n+1)]`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A139997

/-- `∩[A139856(n+1), A139877(n+1)]` -/
def P868393966600918844.Spec : Prop :=
  ∀ n, (P868393966600918844.a n : ℤ) = A139997 (n + 1)

theorem P868393966600918844.correct : P868393966600918844.Spec := by
  intro n
  simp only [A139997, Nat.add_sub_cancel]

end A139997

/-! ## A139997.P9044495018354798727

`∩[A139877(n+1), A139893(n+1)]`
-/

namespace A139997.P9044495018354798727
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139877 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139893 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139997.P9044495018354798727

namespace A139997

/-- `∩[A139877(n+1), A139893(n+1)]` -/
def P9044495018354798727.Spec : Prop :=
  ∀ n, (P9044495018354798727.a n : ℤ) = A139997 (n + 1)

end A139997

/-! ## A139997.P566982608584209526

`∩[A139495(n+1), A139856(n+1)]`
-/

namespace A139997.P566982608584209526
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139495 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139856 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139997.P566982608584209526

namespace A139997

/-- `∩[A139495(n+1), A139856(n+1)]` -/
def P566982608584209526.Spec : Prop :=
  ∀ n, (P566982608584209526.a n : ℤ) = A139997 (n + 1)

end A139997

/-! ## A139997.P18005377102555634736

`∩[A139495(n+1), A139877(n+1)]`
-/

namespace A139997.P18005377102555634736
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139495 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139877 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139997.P18005377102555634736

namespace A139997

/-- `∩[A139495(n+1), A139877(n+1)]` -/
def P18005377102555634736.Spec : Prop :=
  ∀ n, (P18005377102555634736.a n : ℤ) = A139997 (n + 1)

end A139997

/-! ## A139997.P7479782103313943101

`∩[A139495(n+1), A139893(n+1)]`
-/

namespace A139997.P7479782103313943101
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139495 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139893 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139997.P7479782103313943101

namespace A139997

/-- `∩[A139495(n+1), A139893(n+1)]` -/
def P7479782103313943101.Spec : Prop :=
  ∀ n, (P7479782103313943101.a n : ℤ) = A139997 (n + 1)

end A139997

/-! ## A139997.P15190188747764460448

`∩[A107135(n+1), A139495(n+1)]`
-/

namespace A139997.P15190188747764460448
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107135 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139495 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139997.P15190188747764460448

namespace A139997

/-- `∩[A107135(n+1), A139495(n+1)]` -/
def P15190188747764460448.Spec : Prop :=
  ∀ n, (P15190188747764460448.a n : ℤ) = A139997 (n + 1)

end A139997

/-! ## A139997.P3671306112850053198

`∩[A107135(n+1), A139877(n+1)]`
-/

namespace A139997.P3671306112850053198
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107135 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139877 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139997.P3671306112850053198

namespace A139997

/-- `∩[A107135(n+1), A139877(n+1)]` -/
def P3671306112850053198.Spec : Prop :=
  ∀ n, (P3671306112850053198.a n : ℤ) = A139997 (n + 1)

end A139997

/-! ## A139997.P11891069930103792270

`∩[A107135(n+1), A139893(n+1)]`
-/

namespace A139997.P11891069930103792270
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107135 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139893 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139997.P11891069930103792270

namespace A139997

/-- `∩[A107135(n+1), A139893(n+1)]` -/
def P11891069930103792270.Spec : Prop :=
  ∀ n, (P11891069930103792270.a n : ℤ) = A139997 (n + 1)

end A139997

/-! ## A139997.P3301495141215565020

`∩[A107151(n+1), A139877(n+1)]`
-/

namespace A139997.P3301495141215565020
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107151 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139877 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139997.P3301495141215565020

namespace A139997

/-- `∩[A107151(n+1), A139877(n+1)]` -/
def P3301495141215565020.Spec : Prop :=
  ∀ n, (P3301495141215565020.a n : ℤ) = A139997 (n + 1)

end A139997

/-! ## A139997.P7464200921620940346

`∩[A107151(n+1), A139893(n+1)]`
-/

namespace A139997.P7464200921620940346
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107151 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139893 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139997.P7464200921620940346

namespace A139997

/-- `∩[A107151(n+1), A139893(n+1)]` -/
def P7464200921620940346.Spec : Prop :=
  ∀ n, (P7464200921620940346.a n : ℤ) = A139997 (n + 1)

end A139997

/-! ## A139997.P8338093948921540655

`∩[A107135(n+1), A139851(n+1)]`
-/

namespace A139997.P8338093948921540655
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107135 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139851 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139997.P8338093948921540655

namespace A139997

/-- `∩[A107135(n+1), A139851(n+1)]` -/
def P8338093948921540655.Spec : Prop :=
  ∀ n, (P8338093948921540655.a n : ℤ) = A139997 (n + 1)

end A139997

/-! ## A139997.P13819267686526415184

`∩[A107151(n+1), A139851(n+1)]`
-/

namespace A139997.P13819267686526415184
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107151 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139851 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139997.P13819267686526415184

namespace A139997

/-- `∩[A107151(n+1), A139851(n+1)]` -/
def P13819267686526415184.Spec : Prop :=
  ∀ n, (P13819267686526415184.a n : ℤ) = A139997 (n + 1)

end A139997

/-! ## A139997.P14896744561914852855

`∩[A139851(n+1), A139856(n+1)]`
-/

namespace A139997.P14896744561914852855
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139851 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139856 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139997.P14896744561914852855

namespace A139997

/-- `∩[A139851(n+1), A139856(n+1)]` -/
def P14896744561914852855.Spec : Prop :=
  ∀ n, (P14896744561914852855.a n : ℤ) = A139997 (n + 1)

end A139997

/-! ## A139997.P9028187111427916419

`∩[A139851(n+1), A139893(n+1)]`
-/

namespace A139997.P9028187111427916419
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139851 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139893 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139997.P9028187111427916419

namespace A139997

/-- `∩[A139851(n+1), A139893(n+1)]` -/
def P9028187111427916419.Spec : Prop :=
  ∀ n, (P9028187111427916419.a n : ℤ) = A139997 (n + 1)

end A139997

/-! ## A139997.P11635299518272994159

`∩[A107003(n+1), A139495(n+1)]`
-/

namespace A139997.P11635299518272994159
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107003 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139495 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139997.P11635299518272994159

namespace A139997

/-- `∩[A107003(n+1), A139495(n+1)]` -/
def P11635299518272994159.Spec : Prop :=
  ∀ n, (P11635299518272994159.a n : ℤ) = A139997 (n + 1)

end A139997

/-! ## A139997.P11648294557169208674

`∩[A107003(n+1), A139893(n+1)]`
-/

namespace A139997.P11648294557169208674
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107003 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139893 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139997.P11648294557169208674

namespace A139997

/-- `∩[A107003(n+1), A139893(n+1)]` -/
def P11648294557169208674.Spec : Prop :=
  ∀ n, (P11648294557169208674.a n : ℤ) = A139997 (n + 1)

end A139997

/-! ## A139997.P4464984407775017336

`∩[A107135(n+1), A107148(n+1)]`
-/

namespace A139997.P4464984407775017336
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107135 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107148 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139997.P4464984407775017336

namespace A139997

/-- `∩[A107135(n+1), A107148(n+1)]` -/
def P4464984407775017336.Spec : Prop :=
  ∀ n, (P4464984407775017336.a n : ℤ) = A139997 (n + 1)

end A139997

/-! ## A139997.P1604259653820014567

`∩[A107148(n+1), A107151(n+1)]`
-/

namespace A139997.P1604259653820014567
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107148 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107151 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139997.P1604259653820014567

namespace A139997

/-- `∩[A107148(n+1), A107151(n+1)]` -/
def P1604259653820014567.Spec : Prop :=
  ∀ n, (P1604259653820014567.a n : ℤ) = A139997 (n + 1)

end A139997

/-! ## A139997.P6879234895059155095

`∩[A107148(n+1), A139495(n+1)]`
-/

namespace A139997.P6879234895059155095
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107148 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139495 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139997.P6879234895059155095

namespace A139997

/-- `∩[A107148(n+1), A139495(n+1)]` -/
def P6879234895059155095.Spec : Prop :=
  ∀ n, (P6879234895059155095.a n : ℤ) = A139997 (n + 1)

end A139997

/-!
# A139998: Primes of the form 31x^2+22xy+31y^2.

The programs for A139998, there is no canonical definition to state claims against.
-/

/-! ## A139998.P9330042643886048726

`∩[A139847(n+1), A139892(n+1)]`
-/

namespace A139998.P9330042643886048726
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139847 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139892 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139998.P9330042643886048726

/-! ## A139998.P7193849313263289805

`∩[A139847(n+1), A139876(n+1)]`
-/

namespace A139998.P7193849313263289805
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139847 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139876 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139998.P7193849313263289805

/-! ## A139998.P14325194734258421837

`∩[A139876(n+1), A139892(n+1)]`
-/

namespace A139998.P14325194734258421837
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139876 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139892 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139998.P14325194734258421837

/-! ## A139998.P16101280993602572412

`∩[A139847(n+1), A139855(n+1)]`
-/

namespace A139998.P16101280993602572412
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139847 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139855 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139998.P16101280993602572412

/-! ## A139998.P9845445437601298546

`∩[A139855(n+1), A139876(n+1)]`
-/

namespace A139998.P9845445437601298546
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139855 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139876 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139998.P9845445437601298546

/-! ## A139998.P8327945448296494861

`∩[A139855(n+1), A139892(n+1)]`
-/

namespace A139998.P8327945448296494861
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139855 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139892 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139998.P8327945448296494861

/-! ## A139998.P5773789939304305879

`∩[A033220(n+1), A139847(n+1)]`
-/

namespace A139998.P5773789939304305879
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033220 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139847 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139998.P5773789939304305879

/-! ## A139998.P7630828596259480487

`∩[A033220(n+1), A139876(n+1)]`
-/

namespace A139998.P7630828596259480487
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033220 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139876 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139998.P7630828596259480487

/-! ## A139998.P5310856621065638298

`∩[A033220(n+1), A139892(n+1)]`
-/

namespace A139998.P5310856621065638298
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033220 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139892 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139998.P5310856621065638298

/-! ## A139998.P9458690715277339683

`∩[A033220(n+1), A102271(n+1)]`
-/

namespace A139998.P9458690715277339683
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033220 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102271 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139998.P9458690715277339683

/-! ## A139998.P3993614090949078288

`∩[A102271(n+1), A139855(n+1)]`
-/

namespace A139998.P3993614090949078288
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102271 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139855 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139998.P3993614090949078288

/-! ## A139998.P11374622914607450228

`∩[A102271(n+1), A139892(n+1)]`
-/

namespace A139998.P11374622914607450228
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102271 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139892 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139998.P11374622914607450228

/-! ## A139998.P17216355018496749701

`∩[A107006(n+1), A139847(n+1)]`
-/

namespace A139998.P17216355018496749701
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107006 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139847 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139998.P17216355018496749701

/-! ## A139998.P16410830562577325810

`∩[A107006(n+1), A139892(n+1)]`
-/

namespace A139998.P16410830562577325810
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107006 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139892 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139998.P16410830562577325810

/-! ## A139998.P16561799877921204724

`∩[A033220(n+1), A107146(n+1)]`
-/

namespace A139998.P16561799877921204724
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033220 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107146 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139998.P16561799877921204724

/-! ## A139998.P10424125397354186631

`∩[A107146(n+1), A139847(n+1)]`
-/

namespace A139998.P10424125397354186631
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107146 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139847 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139998.P10424125397354186631

/-! ## A139998.P2657393777694007032

`∩[A107146(n+1), A139855(n+1)]`
-/

namespace A139998.P2657393777694007032
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107146 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139855 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139998.P2657393777694007032

/-! ## A139998.P12345963567804482776

`∩[A107146(n+1), A107168(n+1)]`
-/

namespace A139998.P12345963567804482776
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107146 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107168 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139998.P12345963567804482776

/-! ## A139998.P6871535513999810760

`∩[A107168(n+1), A139876(n+1)]`
-/

namespace A139998.P6871535513999810760
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107168 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139876 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139998.P6871535513999810760

/-! ## A139998.P13862392855330721148

`∩[A107168(n+1), A139892(n+1)]`
-/

namespace A139998.P13862392855330721148
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107168 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139892 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139998.P13862392855330721148

/-!
# A139999: Primes of the form 3x^2+440y^2.

The programs for A139999, there is no canonical definition to state claims against.
-/

/-! ## A139999.P2982956571847438515

`∩[A139897(n+1), A139929(n+1)]`
-/

namespace A139999.P2982956571847438515
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139897 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139929 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139999.P2982956571847438515

/-! ## A139999.P4510754368676079065

`∩[A107007(n+1), A139929(n+1)]`
-/

namespace A139999.P4510754368676079065
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107007 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139929 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139999.P4510754368676079065

/-! ## A139999.P450304414975782544

`∩[A107138(n+1), A139897(n+1)]`
-/

namespace A139999.P450304414975782544
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107138 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139897 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139999.P450304414975782544

/-! ## A139999.P6212142841648203751

`∩[A107138(n+1), A139929(n+1)]`
-/

namespace A139999.P6212142841648203751
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107138 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139929 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139999.P6212142841648203751

/-! ## A139999.P13486822555390614940

`∩[A107169(n+1), A139929(n+1)]`
-/

namespace A139999.P13486822555390614940
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107169 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139929 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139999.P13486822555390614940

/-! ## A139999.P14853480089215108337

`∩[A107169(n+1), A141776(n+1)]`
-/

namespace A139999.P14853480089215108337
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107169 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141776 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139999.P14853480089215108337

/-! ## A139999.P4401160527082462456

`∩[A139897(n+1), A141776(n+1)]`
-/

namespace A139999.P4401160527082462456
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139897 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141776 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139999.P4401160527082462456

/-! ## A139999.P10430334420736405177

`∩[A107138(n+1), A141179(n+1)]`
-/

namespace A139999.P10430334420736405177
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107138 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141179 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139999.P10430334420736405177

/-! ## A139999.P13871659208439304979

`∩[A139929(n+1), A141179(n+1)]`
-/

namespace A139999.P13871659208439304979
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139929 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141179 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139999.P13871659208439304979

/-! ## A139999.P4285454940110389165

`∩[A084865(n+1), A139929(n+1)]`
-/

namespace A139999.P4285454940110389165
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084865 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139929 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139999.P4285454940110389165

/-! ## A139999.P13390223762040368988

`∩[A106865(n+1), A139929(n+1)]`
-/

namespace A139999.P13390223762040368988
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106865 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139929 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139999.P13390223762040368988

/-! ## A139999.P7291865086461376863

`∩[A122870(n+1), A139929(n+1)]`
-/

namespace A139999.P7291865086461376863
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122870 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139929 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139999.P7291865086461376863

/-! ## A139999.P5559092817903472958

`∩[A139929(n+1), A141123(n+1)]`
-/

namespace A139999.P5559092817903472958
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139929 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141123 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139999.P5559092817903472958

/-! ## A139999.P2050548501656398110

`∩[A139929(n+1), A141187(n+1)]`
-/

namespace A139999.P2050548501656398110
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139929 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141187 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139999.P2050548501656398110

/-! ## A139999.P6470713752727854839

`∩[A007520(n+1), A139929(n+1)]`
-/

namespace A139999.P6470713752727854839
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007520 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139929 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139999.P6470713752727854839

/-! ## A139999.P8271676100854503131

`∩[A045339(n+1), A139929(n+1)]`
-/

namespace A139999.P8271676100854503131
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045339 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139929 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139999.P8271676100854503131

/-! ## A139999.P3299223069112852731

`∩[A139929(n+1), A332446(n+1)]`
-/

namespace A139999.P3299223069112852731
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139929 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332446 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139999.P3299223069112852731

/-! ## A139999.P13506200471061399141

`∩[A107138(n+1), A128288(n+2)]`
-/

namespace A139999.P13506200471061399141
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107138 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128288 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139999.P13506200471061399141

/-! ## A139999.P14450234653851389603

`∩[A139929(n+1), A128288(n+2)]`
-/

namespace A139999.P14450234653851389603
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139929 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128288 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139999.P14450234653851389603

/-! ## A139999.P14036877034575708356

`∩[A095282(n+1), A139929(n+1)]`
-/

namespace A139999.P14036877034575708356
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095282 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139929 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139999.P14036877034575708356

