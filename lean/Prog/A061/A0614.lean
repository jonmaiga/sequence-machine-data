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
import Seq.B000.C028
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
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
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
import Seq.Opaque.C021
import Seq.Opaque.C022
import Seq.Opaque.C023
import Seq.Opaque.C024

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A061400: Primes p such that there is no squarefree number between p and the next prime.

The programs for A061400, the canonical program `A061400.P10517408734357051710` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A061400 has offset 1).

The definition of A061400 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 961 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A061400.P10517408734357051710

`p?[A112925(n+1)]`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A061400

/-- `p?[A112925(n+1)]` -/
def P10517408734357051710.Spec : Prop :=
  ∀ n, P10517408734357051710.a n = A061400 (n + 1)

theorem P10517408734357051710.correct : P10517408734357051710.Spec := by
  intro n
  simp only [A061400, Nat.add_sub_cancel]

end A061400

/-! ## A061400.P6848994586648500480

`A000040(A068360(n+1))`
-/

namespace A061400.P6848994586648500480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A068360 (n + 1)).toNat

end

end A061400.P6848994586648500480

namespace A061400

/-- `A000040(A068360(n+1))` -/
def P6848994586648500480.Spec : Prop :=
  ∀ n, P6848994586648500480.a n = A061400 (n + 1)

end A061400

/-! ## A061400.P16493097545602653592

`A112925(A068360(n+1)+1)`
-/

namespace A061400.P16493097545602653592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112925 (A068360 (n + 1) + 1).toNat

end

end A061400.P16493097545602653592

namespace A061400

/-- `A112925(A068360(n+1)+1)` -/
def P16493097545602653592.Spec : Prop :=
  ∀ n, P16493097545602653592.a n = A061400 (n + 1)

end A061400

/-! ## A061400.P15821413273230159965

`∩[A000040(n+1), A112925(n+1)]`
-/

namespace A061400.P15821413273230159965
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112925 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A061400.P15821413273230159965

namespace A061400

/-- `∩[A000040(n+1), A112925(n+1)]` -/
def P15821413273230159965.Spec : Prop :=
  ∀ n, (P15821413273230159965.a n : ℤ) = A061400 (n + 1)

end A061400

/-! ## A061400.P12001951619923870975

`∩[A009087(n+1), A112925(n+1)]`
-/

namespace A061400.P12001951619923870975
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009087 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112925 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A061400.P12001951619923870975

namespace A061400

/-- `∩[A009087(n+1), A112925(n+1)]` -/
def P12001951619923870975.Spec : Prop :=
  ∀ n, (P12001951619923870975.a n : ℤ) = A061400 (n + 1)

end A061400

/-! ## A061400.P15285487096996530910

`∩[A045319(n+1), A112925(n+1)]`
-/

namespace A061400.P15285487096996530910
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112925 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A061400.P15285487096996530910

namespace A061400

/-- `∩[A045319(n+1), A112925(n+1)]` -/
def P15285487096996530910.Spec : Prop :=
  ∀ n, (P15285487096996530910.a n : ℤ) = A061400 (n + 1)

end A061400

/-! ## A061400.P2196562735411224198

`∩[A112925(n+1), A124590(n+1)]`
-/

namespace A061400.P2196562735411224198
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112925 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124590 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A061400.P2196562735411224198

namespace A061400

/-- `∩[A112925(n+1), A124590(n+1)]` -/
def P2196562735411224198.Spec : Prop :=
  ∀ n, (P2196562735411224198.a n : ℤ) = A061400 (n + 1)

end A061400

/-! ## A061400.P3662734217589437845

`∩[A112925(n+1), A175787(n+1)]`
-/

namespace A061400.P3662734217589437845
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112925 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175787 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A061400.P3662734217589437845

namespace A061400

/-- `∩[A112925(n+1), A175787(n+1)]` -/
def P3662734217589437845.Spec : Prop :=
  ∀ n, (P3662734217589437845.a n : ℤ) = A061400 (n + 1)

end A061400

/-! ## A061400.P12968720183195499710

`∩[A112925(n+1), A182986(n+1)]`
-/

namespace A061400.P12968720183195499710
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112925 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A061400.P12968720183195499710

namespace A061400

/-- `∩[A112925(n+1), A182986(n+1)]` -/
def P12968720183195499710.Spec : Prop :=
  ∀ n, (P12968720183195499710.a n : ℤ) = A061400 (n + 1)

end A061400

/-! ## A061400.P756297604028178946

`∩[A112925(n+1), A186285(n+1)]`
-/

namespace A061400.P756297604028178946
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112925 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186285 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A061400.P756297604028178946

namespace A061400

/-- `∩[A112925(n+1), A186285(n+1)]` -/
def P756297604028178946.Spec : Prop :=
  ∀ n, (P756297604028178946.a n : ℤ) = A061400 (n + 1)

end A061400

/-! ## A061400.P10890859908529035954

`∩[A348283(n+1), A112925(n+1)]`
-/

namespace A061400.P10890859908529035954
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348283 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112925 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A061400.P10890859908529035954

namespace A061400

/-- `∩[A348283(n+1), A112925(n+1)]` -/
def P10890859908529035954.Spec : Prop :=
  ∀ n, (P10890859908529035954.a n : ℤ) = A061400 (n + 1)

end A061400

/-! ## A061400.P4678165474614610562

`p?[A001043(n+1)-A112926(n+1)]`
-/

namespace A061400.P4678165474614610562
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001043 (n + 1) - A112926 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A061400.P4678165474614610562

namespace A061400

/-- `p?[A001043(n+1)-A112926(n+1)]` -/
def P4678165474614610562.Spec : Prop :=
  ∀ n, P4678165474614610562.a n = A061400 (n + 1)

end A061400

/-! ## A061400.P6653489537209363884

`p?[A000040(n+1)-A240473(n+1)]`
-/

namespace A061400.P6653489537209363884
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - A240473 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A061400.P6653489537209363884

namespace A061400

/-- `p?[A000040(n+1)-A240473(n+1)]` -/
def P6653489537209363884.Spec : Prop :=
  ∀ n, P6653489537209363884.a n = A061400 (n + 1)

end A061400

/-! ## A061400.P12329975768393516246

`∩[A006093(n+1)+1, A112925(n+1)]`
-/

namespace A061400.P12329975768393516246
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112925 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A061400.P12329975768393516246

namespace A061400

/-- `∩[A006093(n+1)+1, A112925(n+1)]` -/
def P12329975768393516246.Spec : Prop :=
  ∀ n, (P12329975768393516246.a n : ℤ) = A061400 (n + 1)

end A061400

/-! ## A061400.P12722664534668888221

`∩[A112925(n+1), A246551(n+1)]`
-/

namespace A061400.P12722664534668888221
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112925 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246551 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A061400.P12722664534668888221

namespace A061400

/-- `∩[A112925(n+1), A246551(n+1)]` -/
def P12722664534668888221.Spec : Prop :=
  ∀ n, (P12722664534668888221.a n : ℤ) = A061400 (n + 1)

end A061400

/-! ## A061400.P17482039674000523794

`∩[A112925(n+1), A280257(n+1)]`
-/

namespace A061400.P17482039674000523794
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112925 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280257 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A061400.P17482039674000523794

namespace A061400

/-- `∩[A112925(n+1), A280257(n+1)]` -/
def P17482039674000523794.Spec : Prop :=
  ∀ n, (P17482039674000523794.a n : ℤ) = A061400 (n + 1)

end A061400

/-! ## A061400.P2944125336606643578

`∩[A070159(n+1), A112925(n+1)]`
-/

namespace A061400.P2944125336606643578
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070159 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112925 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A061400.P2944125336606643578

namespace A061400

/-- `∩[A070159(n+1), A112925(n+1)]` -/
def P2944125336606643578.Spec : Prop :=
  ∀ n, (P2944125336606643578.a n : ℤ) = A061400 (n + 1)

end A061400

/-! ## A061400.P16987547094448844527

`∩[A000430(n+1), A112925(n+1)]`
-/

namespace A061400.P16987547094448844527
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000430 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112925 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A061400.P16987547094448844527

namespace A061400

/-- `∩[A000430(n+1), A112925(n+1)]` -/
def P16987547094448844527.Spec : Prop :=
  ∀ n, (P16987547094448844527.a n : ℤ) = A061400 (n + 1)

end A061400

/-! ## A061400.P15886551877885596430

`∩[A050376(n+1), A112925(n+1)]`
-/

namespace A061400.P15886551877885596430
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050376 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112925 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A061400.P15886551877885596430

namespace A061400

/-- `∩[A050376(n+1), A112925(n+1)]` -/
def P15886551877885596430.Spec : Prop :=
  ∀ n, (P15886551877885596430.a n : ℤ) = A061400 (n + 1)

end A061400

/-! ## A061400.P3049776517526348699

`∩[A112925(n+1), A115919(n+1)]`
-/

namespace A061400.P3049776517526348699
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112925 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115919 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A061400.P3049776517526348699

namespace A061400

/-- `∩[A112925(n+1), A115919(n+1)]` -/
def P3049776517526348699.Spec : Prop :=
  ∀ n, (P3049776517526348699.a n : ℤ) = A061400 (n + 1)

end A061400

/-!
# A061402: a(n) = floor(n*sqrt(e)).

The programs for A061402, the canonical program `A061402.P2254178269698688534` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A061402 has offset 0).

The definition of A061402 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(n*sqrt(e))` (program `A061402.P2254178269698688534`, by `A061402.P2254178269698688534.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A061402.P2254178269698688534

`floor(n*sqrt(e))`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A061402

/-- `floor(n*sqrt(e))` -/
def P2254178269698688534.Spec : Prop :=
  ∀ n, P2254178269698688534.a n = A061402 n

theorem P2254178269698688534.correct : P2254178269698688534.Spec := by
  intro n
  simp only [A061402]

end A061402

/-! ## A061402.P4411055797020177178

`floor(sqrt(A293412(n)))*A054977(n)`
-/

namespace A061402.P4411055797020177178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A293412 n) * A054977 n

end

end A061402.P4411055797020177178

namespace A061402

/-- `floor(sqrt(A293412(n)))*A054977(n)` -/
def P4411055797020177178.Spec : Prop :=
  ∀ n, P4411055797020177178.a n = A061402 n

end A061402

/-! ## A061402.P7915393966858416029

`floor(sqrt(A293412(n)))%A338667(n+1)`
-/

namespace A061402.P7915393966858416029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.sqrt (A293412 n)) (A338667 (n + 1))

end

end A061402.P7915393966858416029

namespace A061402

/-- `floor(sqrt(A293412(n)))%A338667(n+1)` -/
def P7915393966858416029.Spec : Prop :=
  ∀ n, P7915393966858416029.a n = A061402 n

end A061402

/-! ## A061402.P5935759504847582414

`A000108(((-1)^n)²)*floor(sqrt(A293412(n)))`
-/

namespace A061402.P5935759504847582414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (((-1) ^ n) ^ 2).toNat * Int.sqrt (A293412 n)

end

end A061402.P5935759504847582414

namespace A061402

/-- `A000108(((-1)^n)²)*floor(sqrt(A293412(n)))` -/
def P5935759504847582414.Spec : Prop :=
  ∀ n, P5935759504847582414.a n = A061402 n

end A061402

/-! ## A061402.P15031709842589900977

`A003056(∑[A014681(A022843(n))])`
-/

namespace A061402.P15031709842589900977
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 (A022843 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A061402.P15031709842589900977

namespace A061402

/-- `A003056(∑[A014681(A022843(n))])` -/
def P15031709842589900977.Spec : Prop :=
  ∀ n, P15031709842589900977.a n = A061402 n

end A061402

/-! ## A061402.P13682184470729349853

`A003056(∑[A052928(A022852(n))])`
-/

namespace A061402.P13682184470729349853
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052928 (A022852 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A061402.P13682184470729349853

namespace A061402

/-- `A003056(∑[A052928(A022852(n))])` -/
def P13682184470729349853.Spec : Prop :=
  ∀ n, P13682184470729349853.a n = A061402 n

end A061402

/-! ## A061402.P15407753054257508196

`A003056(∑[A022852(n)-A010060(n)])`
-/

namespace A061402.P15407753054257508196
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022852 n - A010060 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A061402.P15407753054257508196

namespace A061402

/-- `A003056(∑[A022852(n)-A010060(n)])` -/
def P15407753054257508196.Spec : Prop :=
  ∀ n, P15407753054257508196.a n = A061402 n

end A061402

/-! ## A061402.P16997134847564119888

`A003056(∑[A022843(n)]-A327180(n))`
-/

namespace A061402.P16997134847564119888
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022843 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (∑ j ∈ Finset.range (n + 1), f1 j - A327180 n).toNat

end

end A061402.P16997134847564119888

namespace A061402

/-- `A003056(∑[A022843(n)]-A327180(n))` -/
def P16997134847564119888.Spec : Prop :=
  ∀ n, P16997134847564119888.a n = A061402 n

end A061402

/-! ## A061402.P11808429575853371699

`A000196(A293412(n))`
-/

namespace A061402.P11808429575853371699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A293412 n).toNat

end

end A061402.P11808429575853371699

namespace A061402

/-- `A000196(A293412(n))` -/
def P11808429575853371699.Spec : Prop :=
  ∀ n, P11808429575853371699.a n = A061402 n

end A061402

/-!
# A061403: Denominators of coefficients of even powers of x of the expansion of Bessel function J_4(x).

The programs for A061403, the canonical program `A061403.P5776025120662546760` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A061403 has offset 0).

The definition of A061403 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A061403.P5776025120662546760

`2^(2*n+4)*n!*(n+4)!`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A061403

/-- `2^(2*n+4)*n!*(n+4)!` -/
def P5776025120662546760.Spec : Prop :=
  ∀ n, (P5776025120662546760.a n : ℤ) = A061403 n

theorem P5776025120662546760.correct : P5776025120662546760.Spec := by
  intro n
  simp only [A061403]

end A061403

/-! ## A061403.P1547493025169979379

`2^(log2(n!)+n)*A000165(n+4)`
-/

namespace A061403.P1547493025169979379
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (2 : ℝ) ^ (Real.logb 2 (Nat.factorial n : ℝ) + (n : ℝ)) * (A000165 (n + 4) : ℝ)

end

end A061403.P1547493025169979379

namespace A061403

/-- `2^(log2(n!)+n)*A000165(n+4)` -/
def P1547493025169979379.Spec : Prop :=
  ∀ n, P1547493025169979379.a n = (A061403 n : ℝ)

end A061403

/-! ## A061403.P9189181028707881733

`A014401(n)*A020739(n+1)`
-/

namespace A061403.P9189181028707881733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014401 n * A020739 (n + 1)

end

end A061403.P9189181028707881733

namespace A061403

/-- `A014401(n)*A020739(n+1)` -/
def P9189181028707881733.Spec : Prop :=
  ∀ n, P9189181028707881733.a n = A061403 n

end A061403

/-! ## A061403.P975981646108645030

`(A020742(n)+1)*A014401(n)`
-/

namespace A061403.P975981646108645030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A020742 n + 1) * A014401 n

end

end A061403.P975981646108645030

namespace A061403

/-- `(A020742(n)+1)*A014401(n)` -/
def P975981646108645030.Spec : Prop :=
  ∀ n, P975981646108645030.a n = A061403 n

end A061403

/-! ## A061403.P3290608988465047081

`A000165(n+4)*A000165(n)`
-/

namespace A061403.P3290608988465047081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000165 (n + 4) * A000165 n

end

end A061403.P3290608988465047081

namespace A061403

/-- `A000165(n+4)*A000165(n)` -/
def P3290608988465047081.Spec : Prop :=
  ∀ n, P3290608988465047081.a n = A061403 n

theorem P3290608988465047081.correct : P3290608988465047081.Spec := by
  intro n
  simp only [A061403, Nat.add_sub_cancel, A061403.P3290608988465047081.a, A061403.P5776025120662546760.a, A000165, A000165.P16837922414982216743.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A061403

/-!
# A061404: Denominators of coefficients of odd powers of x of the expansion of Bessel function J_5(x).

The programs for A061404, the canonical program `A061404.P3673425282984815520` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A061404 has offset 0).

The definition of A061404 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A061404.P3673425282984815520

`2^(2*n+5)*n!*(n+5)!`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A061404

/-- `2^(2*n+5)*n!*(n+5)!` -/
def P3673425282984815520.Spec : Prop :=
  ∀ n, (P3673425282984815520.a n : ℤ) = A061404 n

theorem P3673425282984815520.correct : P3673425282984815520.Spec := by
  intro n
  simp only [A061404]

end A061404

/-! ## A061404.P2189912307528064058

`A020739(n+2)*A061403(n)`
-/

namespace A061404.P2189912307528064058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020739 (n + 2) * A061403 n

end

end A061404.P2189912307528064058

namespace A061404

/-- `A020739(n+2)*A061403(n)` -/
def P2189912307528064058.Spec : Prop :=
  ∀ n, P2189912307528064058.a n = A061404 n

end A061404

/-! ## A061404.P17602255249986098927

`2*A020710(n)*A061403(n)`
-/

namespace A061404.P17602255249986098927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A020710 n * A061403 n)

end

end A061404.P17602255249986098927

namespace A061404

/-- `2*A020710(n)*A061403(n)` -/
def P17602255249986098927.Spec : Prop :=
  ∀ n, P17602255249986098927.a n = A061404 n

end A061404

/-! ## A061404.P6265171294850596459

`A000165(n+5)*A000165(n)`
-/

namespace A061404.P6265171294850596459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000165 (n + 5) * A000165 n

end

end A061404.P6265171294850596459

namespace A061404

/-- `A000165(n+5)*A000165(n)` -/
def P6265171294850596459.Spec : Prop :=
  ∀ n, P6265171294850596459.a n = A061404 n

theorem P6265171294850596459.correct : P6265171294850596459.Spec := by
  intro n
  simp only [A061404, Nat.add_sub_cancel, A061404.P6265171294850596459.a, A061404.P3673425282984815520.a, A000165, A000165.P16837922414982216743.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A061404

/-! ## A061404.P4181949634928855152

`A004277(A020710(n))*A061403(n)`
-/

namespace A061404.P4181949634928855152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A020710 n).toNat * A061403 n

end

end A061404.P4181949634928855152

namespace A061404

/-- `A004277(A020710(n))*A061403(n)` -/
def P4181949634928855152.Spec : Prop :=
  ∀ n, P4181949634928855152.a n = A061404 n

end A061404

/-!
# A061405: Denominators of coefficients of even powers of x of the expansion of Bessel function J_6(x).

The programs for A061405, the canonical program `A061405.P11379753501622920366` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A061405 has offset 0).

The definition of A061405 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A061405.P11379753501622920366

`2^(2*n+6)*n!*(n+6)!`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A061405

/-- `2^(2*n+6)*n!*(n+6)!` -/
def P11379753501622920366.Spec : Prop :=
  ∀ n, (P11379753501622920366.a n : ℤ) = A061405 n

theorem P11379753501622920366.correct : P11379753501622920366.Spec := by
  intro n
  simp only [A061405]

end A061405

/-! ## A061405.P3131567581682474893

`A000165(n+6)*A000165(n)`
-/

namespace A061405.P3131567581682474893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000165 (n + 6) * A000165 n

end

end A061405.P3131567581682474893

namespace A061405

/-- `A000165(n+6)*A000165(n)` -/
def P3131567581682474893.Spec : Prop :=
  ∀ n, P3131567581682474893.a n = A061405 n

theorem P3131567581682474893.correct : P3131567581682474893.Spec := by
  intro n
  simp only [A061405, Nat.add_sub_cancel, A061405.P3131567581682474893.a, A061405.P11379753501622920366.a, A000165, A000165.P16837922414982216743.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A061405

/-! ## A061405.P11669495374342946598

`A061404(n+1)/Δ[A002378(n)]`
-/

namespace A061405.P11669495374342946598
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002378 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A061404 (n + 1) : ℚ) / (f1 (n + 1) - f1 n : ℚ)

end

end A061405.P11669495374342946598

namespace A061405

/-- `A061404(n+1)/Δ[A002378(n)]` -/
def P11669495374342946598.Spec : Prop :=
  ∀ n, P11669495374342946598.a n = (A061405 n : ℚ)

end A061405

/-! ## A061405.P14718642813972806836

`A061404(n+1)/ratio[A000165(n)]`
-/

namespace A061405.P14718642813972806836
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000165 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A061404 (n + 1) : ℚ) / ((f1 (n + 1) : ℚ) / (f1 n : ℚ))

end

end A061405.P14718642813972806836

namespace A061405

/-- `A061404(n+1)/ratio[A000165(n)]` -/
def P14718642813972806836.Spec : Prop :=
  ∀ n, P14718642813972806836.a n = (A061405 n : ℚ)

theorem P14718642813972806836.correct : P14718642813972806836.Spec := by
  intro n
  simp only [A061405, Nat.add_sub_cancel, A061405.P14718642813972806836.f1, A061405.P14718642813972806836.a, A061405.P11379753501622920366.a, A000165, A000165.P16837922414982216743.a, A061404, A061404.P3673425282984815520.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A061405

/-! ## A061405.P59814087385012601

`A020710(A020742(n))*A061404(n)`
-/

namespace A061405.P59814087385012601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020710 (A020742 n).toNat * A061404 n

end

end A061405.P59814087385012601

namespace A061405

/-- `A020710(A020742(n))*A061404(n)` -/
def P59814087385012601.Spec : Prop :=
  ∀ n, P59814087385012601.a n = A061405 n

end A061405

/-!
# A061406: Denominators of coefficients of odd powers of x of the expansion of Bessel function J_7(x).

The programs for A061406, the canonical program `A061406.P4376514715033615219` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A061406 has offset 0).

The definition of A061406 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A061406.P4376514715033615219

`2^(2*n+7)*n!*(n+7)!`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A061406

/-- `2^(2*n+7)*n!*(n+7)!` -/
def P4376514715033615219.Spec : Prop :=
  ∀ n, (P4376514715033615219.a n : ℤ) = A061406 n

theorem P4376514715033615219.correct : P4376514715033615219.Spec := by
  intro n
  simp only [A061406]

end A061406

/-! ## A061406.P18235173627322857435

`A000165(n+7)*A000165(n)`
-/

namespace A061406.P18235173627322857435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000165 (n + 7) * A000165 n

end

end A061406.P18235173627322857435

namespace A061406

/-- `A000165(n+7)*A000165(n)` -/
def P18235173627322857435.Spec : Prop :=
  ∀ n, P18235173627322857435.a n = A061406 n

theorem P18235173627322857435.correct : P18235173627322857435.Spec := by
  intro n
  simp only [A061406, Nat.add_sub_cancel, A061406.P18235173627322857435.a, A061406.P4376514715033615219.a, A000165, A000165.P16837922414982216743.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A061406

/-! ## A061406.P13122804319928443581

`A033996(A020710(n+1))*A061404(n)`
-/

namespace A061406.P13122804319928443581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033996 (A020710 (n + 1)).toNat * A061404 n

end

end A061406.P13122804319928443581

namespace A061406

/-- `A033996(A020710(n+1))*A061404(n)` -/
def P13122804319928443581.Spec : Prop :=
  ∀ n, P13122804319928443581.a n = A061406 n

end A061406

/-! ## A061406.P3102641159265597130

`A061404(n+2)/ratio[A002474(n)]`
-/

namespace A061406.P3102641159265597130
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002474 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A061404 (n + 2) : ℚ) / ((f1 (n + 1) : ℚ) / (f1 n : ℚ))

end

end A061406.P3102641159265597130

namespace A061406

/-- `A061404(n+2)/ratio[A002474(n)]` -/
def P3102641159265597130.Spec : Prop :=
  ∀ n, P3102641159265597130.a n = (A061406 n : ℚ)

theorem P3102641159265597130.correct : P3102641159265597130.Spec := by
  intro n
  simp only [A061406, Nat.add_sub_cancel, A061406.P3102641159265597130.f1, A061406.P3102641159265597130.a, A061406.P4376514715033615219.a, A002474, A002474.P16488384738285800801.a, A061404, A061404.P3673425282984815520.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A061406

/-! ## A061406.P8840436718711315346

`A061404(n+2)/A033996(n+1)`
-/

namespace A061406.P8840436718711315346
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A061404 (n + 2) : ℚ) / (A033996 (n + 1) : ℚ)

end

end A061406.P8840436718711315346

namespace A061406

/-- `A061404(n+2)/A033996(n+1)` -/
def P8840436718711315346.Spec : Prop :=
  ∀ n, P8840436718711315346.a n = (A061406 n : ℚ)

end A061406

/-!
# A061407: Denominators of coefficients of even powers of x of the expansion of Bessel function J_8(x).

The programs for A061407, the canonical program `A061407.P5368990517732502037` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A061407 has offset 0).

The definition of A061407 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A061407.P5368990517732502037

`2^(2*n+8)*n!*(n+8)!`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A061407

/-- `2^(2*n+8)*n!*(n+8)!` -/
def P5368990517732502037.Spec : Prop :=
  ∀ n, (P5368990517732502037.a n : ℤ) = A061407 n

theorem P5368990517732502037.correct : P5368990517732502037.Spec := by
  intro n
  simp only [A061407]

end A061407

/-! ## A061407.P10742788083244369092

`A000165(n+8)*A000165(n)`
-/

namespace A061407.P10742788083244369092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000165 (n + 8) * A000165 n

end

end A061407.P10742788083244369092

namespace A061407

/-- `A000165(n+8)*A000165(n)` -/
def P10742788083244369092.Spec : Prop :=
  ∀ n, P10742788083244369092.a n = A061407 n

theorem P10742788083244369092.correct : P10742788083244369092.Spec := by
  intro n
  simp only [A061407, Nat.add_sub_cancel, A061407.P10742788083244369092.a, A061407.P5368990517732502037.a, A000165, A000165.P16837922414982216743.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A061407

/-!
# A061408: For each y >= 1 there are only finitely many values of x >= 1 such that x-y and x+y are both positive squares; list all such pairs (x,y) ordered by values of y; sequence gives y values.

The programs for A061408, the canonical program `A061408.P4570989241539993166` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A061408 has offset 0).

The definition of A061408 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A061408.P4570989241539993166

`2*(∑[char[A211264(n+1)]]+1)`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A061408

/-- `2*(∑[char[A211264(n+1)]]+1)` -/
def P4570989241539993166.Spec : Prop :=
  ∀ n, (P4570989241539993166.a n : ℤ) = A061408 n

theorem P4570989241539993166.correct : P4570989241539993166.Spec := by
  intro n
  simp only [A061408]

end A061408

/-! ## A061408.P18169329108713544697

`A103517(∑[char[A211264(n+1)]])`
-/

namespace A061408.P18169329108713544697
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211264 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103517 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A061408.P18169329108713544697

namespace A061408

/-- `A103517(∑[char[A211264(n+1)]])` -/
def P18169329108713544697.Spec : Prop :=
  ∀ n, P18169329108713544697.a n = A061408 n

end A061408

/-! ## A061408.P2212476215255398773

`A005843(∑[char[A211264(n+1)]]+1)`
-/

namespace A061408.P2212476215255398773
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211264 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A061408.P2212476215255398773

namespace A061408

/-- `A005843(∑[char[A211264(n+1)]]+1)` -/
def P2212476215255398773.Spec : Prop :=
  ∀ n, P2212476215255398773.a n = A061408 n

end A061408

/-! ## A061408.P3774250229971224110

`A004275(∑[char[A211264(n+1)]]+2)`
-/

namespace A061408.P3774250229971224110
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211264 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A061408.P3774250229971224110

namespace A061408

/-- `A004275(∑[char[A211264(n+1)]]+2)` -/
def P3774250229971224110.Spec : Prop :=
  ∀ n, P3774250229971224110.a n = A061408 n

end A061408

/-! ## A061408.P11013301841683110759

`A004273(∑[char[A211264(n+1)]])+3`
-/

namespace A061408.P11013301841683110759
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211264 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (∑ j ∈ Finset.range (n + 1), f1 j) + 3

end

end A061408.P11013301841683110759

namespace A061408

/-- `A004273(∑[char[A211264(n+1)]])+3` -/
def P11013301841683110759.Spec : Prop :=
  ∀ n, P11013301841683110759.a n = A061408 n

end A061408

/-! ## A061408.P17794243031068028706

`2*A020725(∑[char[A211264(n+1)]])`
-/

namespace A061408.P17794243031068028706
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211264 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A020725 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A061408.P17794243031068028706

namespace A061408

/-- `2*A020725(∑[char[A211264(n+1)]])` -/
def P17794243031068028706.Spec : Prop :=
  ∀ n, P17794243031068028706.a n = A061408 n

end A061408

/-!
# A061410: Numbers k such that m*2^k+1 is not prime for all coefficients m in the range 0<=m<=k.

The programs for A061410, there is no canonical definition to state claims against.
-/

/-! ## A061410.P14885773597778895766

`lt[n², n*A035050(n)]`
-/

namespace A061410.P14885773597778895766
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A035050 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A061410.P14885773597778895766

/-! ## A061410.P203971182602882133

`eq[n%A035050(n), A028310(n)]`
-/

namespace A061410.P203971182602882133
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n : ℤ) (A035050 n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A061410.P203971182602882133

/-! ## A061410.P9510760104931878516

`lt[A028815(n), A000040(A035050(n))]`
-/

namespace A061410.P9510760104931878516
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028815 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A035050 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A061410.P9510760104931878516

/-! ## A061410.P9515669411581926172

`lt[A054519(n), A006218(A035050(n))]`
-/

namespace A061410.P9515669411581926172
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054519 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 (A035050 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A061410.P9515669411581926172

/-! ## A061410.P5323297111084088652

`lt[A094023(n), A094023(A035050(n))]`
-/

namespace A061410.P5323297111084088652
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094023 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094023 (A035050 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A061410.P5323297111084088652

/-! ## A061410.P11026822382045833405

`lt[A006218(n)+1, A006218(A035050(n))]`
-/

namespace A061410.P11026822382045833405
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 (A035050 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A061410.P11026822382045833405

/-!
# A061411: Numbers k such that m*2^k - 1 is nonprime for all coefficients m in the range 0 <= m <= k.

The programs for A061411, there is no canonical definition to state claims against.
-/

/-! ## A061411.P12279027548536357288

`lt[n², n*A085427(n)]`
-/

namespace A061411.P12279027548536357288
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A085427 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A061411.P12279027548536357288

/-! ## A061411.P14639832945878267262

`lt[n, A127587(n+1)]+1`
-/

namespace A061411.P14639832945878267262
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127587 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A061411.P14639832945878267262

/-! ## A061411.P9824024566861684704

`A028310(lt[n, A127587(n)])`
-/

namespace A061411.P9824024566861684704
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127587 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A061411.P9824024566861684704

/-! ## A061411.P5111503567851820196

`eq[n%A085427(n), A028310(n)]`
-/

namespace A061411.P5111503567851820196
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n : ℤ) (A085427 n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A061411.P5111503567851820196

/-! ## A061411.P16556944188555414174

`record[(n+1)%A085427((n+1)%A247202(n+1))]`
-/

namespace A061411.P16556944188555414174
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 1 : ℤ) (A085427 (Int.tmod (n + 1 : ℤ) (A247202 (n + 1))).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A061411.P16556944188555414174

/-!
# A061413: Coefficient values m resulting from A061412.

The programs for A061413, there is no canonical definition to state claims against.
-/

/-! ## A061413.P13440789657743233239

`A035050(A061412(n+1))`
-/

namespace A061413.P13440789657743233239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035050 (A061412 (n + 1)).toNat

end

end A061413.P13440789657743233239

/-!
# A061415: Coefficient values m resulting from A061414.

The programs for A061415, there is no canonical definition to state claims against.
-/

/-! ## A061415.P9745246547139653086

`A085427(A061414(n+1))`
-/

namespace A061415.P9745246547139653086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085427 (A061414 (n + 1)).toNat

end

end A061415.P9745246547139653086

/-! ## A061415.P1658224583194548823

`A127587(A061414(-xor(n, -1)))+1`
-/

namespace A061415.P1658224583194548823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127587 (A061414 (-Int.xor (n : ℤ) (-1)).toNat).toNat + 1

end

end A061415.P1658224583194548823

/-! ## A061415.P2184797357855620065

`A127587(A061414(Δ[n²]-n))+1`
-/

namespace A061415.P2184797357855620065
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127587 (A061414 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat).toNat + 1

end

end A061415.P2184797357855620065

/-!
# A061417: Number of permutations up to cyclic rotations; permutation siteswap necklaces.

The programs for A061417, there is no canonical definition to state claims against.
-/

/-! ## A061417.P10502671707967108659

`A064649(n+1)/(n+1)`
-/

namespace A061417.P10502671707967108659
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A064649 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A061417.P10502671707967108659

/-! ## A061417.P12591213284999161477

`A008619(A163641(n)+lcm(n, 2*n!))`
-/

namespace A061417.P12591213284999161477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A163641 n + (Nat.lcm n (2 * Nat.factorial n) : ℤ)).toNat

end

end A061417.P12591213284999161477

/-! ## A061417.P5392020771717810175

`A061860(n)-A122179(A117421(n))`
-/

namespace A061417.P5392020771717810175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061860 n - A122179 (A117421 n).toNat

end

end A061417.P5392020771717810175

/-!
# A061418: a(n) = floor(a(n-1)*3/2) with a(1) = 2.

The programs for A061418, the canonical program `A061418.P9129941030312569240` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A061418 has offset 1).

The definition of A061418 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(a(n-1)*3/2)` (program `A061418.P9129941030312569240`, by `A061418.P9129941030312569240.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A061418.P14625307847613039065

`A061419(n+1)+1`
-/

namespace A061418.P14625307847613039065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061419 (n + 1) + 1

end

end A061418.P14625307847613039065

namespace A061418

/-- `A061419(n+1)+1` -/
def P14625307847613039065.Spec : Prop :=
  ∀ n, P14625307847613039065.a n = A061418 (n + 1)

end A061418

/-! ## A061418.P9129941030312569240

`floor(a(n-1)*3/2)` with `a(0)=2`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A061418

/-- `floor(a(n-1)*3/2)` -/
def P9129941030312569240.Spec : Prop :=
  ∀ n, P9129941030312569240.a n = A061418 (n + 1)

theorem P9129941030312569240.correct : P9129941030312569240.Spec := by
  intro n
  simp only [A061418, Nat.add_sub_cancel]

end A061418

/-! ## A061418.P4345222173765246395

`floor(a(n-1)/(1-1/3))` with `a(0)=2`
-/

namespace A061418.P4345222173765246395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  ⌊(a (n - 1) : ℚ) / (1 - (1 : ℚ) / 3)⌋

end

end A061418.P4345222173765246395

namespace A061418

/-- `floor(a(n-1)/(1-1/3))` -/
def P4345222173765246395.Spec : Prop :=
  ∀ n, P4345222173765246395.a n = A061418 (n + 1)

theorem P4345222173765246395.correct : P4345222173765246395.Spec := by
  intro n
  simp only [A061418, Nat.add_sub_cancel, A061418.P4345222173765246395.a, A061418.P9129941030312569240.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A061418

/-! ## A061418.P6139926689587989149

`(a(n-1)+gcd(2, a(n-1)))/2+a(n-1)-1` with `a(0)=2`
-/

namespace A061418.P6139926689587989149
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [2] fun n a =>
  (a (n - 1) + (Int.gcd 2 (SequenceMachineLib.roundAway (a (n - 1))) : ℚ)) / 2 + (a (n - 1) - 1)

end

end A061418.P6139926689587989149

namespace A061418

/-- `(a(n-1)+gcd(2, a(n-1)))/2+a(n-1)-1` -/
def P6139926689587989149.Spec : Prop :=
  ∀ n, P6139926689587989149.a n = (A061418 (n + 1) : ℚ)

end A061418

/-! ## A061418.P7503583778849739995

`a(n-1)+(a(n-1)+(2-a(n-1))%2)/2` with `a(0)=2`
-/

namespace A061418.P7503583778849739995
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [2] fun n a =>
  a (n - 1) + (a (n - 1) + (Int.tmod (SequenceMachineLib.roundAway (2 - a (n - 1))) 2 : ℚ)) / 2

end

end A061418.P7503583778849739995

namespace A061418

/-- `a(n-1)+(a(n-1)+(2-a(n-1))%2)/2` -/
def P7503583778849739995.Spec : Prop :=
  ∀ n, P7503583778849739995.a n = (A061418 (n + 1) : ℚ)

end A061418

/-! ## A061418.P7563303747146862675

`A006999(n)+2`
-/

namespace A061418.P7563303747146862675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006999 n + 2

end

end A061418.P7563303747146862675

namespace A061418

/-- `A006999(n)+2` -/
def P7563303747146862675.Spec : Prop :=
  ∀ n, P7563303747146862675.a n = A061418 (n + 1)

end A061418

/-! ## A061418.P13565735152853549510

`A003312(n+1)-1`
-/

namespace A061418.P13565735152853549510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003312 (n + 1) - 1

end

end A061418.P13565735152853549510

namespace A061418

/-- `A003312(n+1)-1` -/
def P13565735152853549510.Spec : Prop :=
  ∀ n, P13565735152853549510.a n = A061418 (n + 1)

end A061418

/-! ## A061418.P4852261543431755902

`∑[A073941(n+1)]+1`
-/

namespace A061418.P4852261543431755902
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073941 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A061418.P4852261543431755902

namespace A061418

/-- `∑[A073941(n+1)]+1` -/
def P4852261543431755902.Spec : Prop :=
  ∀ n, P4852261543431755902.a n = A061418 (n + 1)

end A061418

/-! ## A061418.P2520805471901216981

`∑[A005428(abs(1-n))]+1`
-/

namespace A061418.P2520805471901216981
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005428 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A061418.P2520805471901216981

namespace A061418

/-- `∑[A005428(abs(1-n))]+1` -/
def P2520805471901216981.Spec : Prop :=
  ∀ n, P2520805471901216981.a n = A061418 (n + 1)

end A061418

/-! ## A061418.P8800594821802275414

`∑[A081848(n+1)/3]+1`
-/

namespace A061418.P8800594821802275414
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A081848 (n + 1) : ℚ) / 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A061418.P8800594821802275414

namespace A061418

/-- `∑[A081848(n+1)/3]+1` -/
def P8800594821802275414.Spec : Prop :=
  ∀ n, P8800594821802275414.a n = (A061418 (n + 1) : ℚ)

end A061418

/-! ## A061418.P11081381584656232896

`A005428(n-1)+a(n-1)` with `a(0)=2`
-/

namespace A061418.P11081381584656232896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A005428 (n - 1) + a (n - 1)

end

end A061418.P11081381584656232896

namespace A061418

/-- `A005428(n-1)+a(n-1)` -/
def P11081381584656232896.Spec : Prop :=
  ∀ n, P11081381584656232896.a n = A061418 (n + 1)

end A061418

/-! ## A061418.P11159331495243065064

`A356556(n+1)+2*A005428(n)`
-/

namespace A061418.P11159331495243065064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356556 (n + 1) + 2 * A005428 n

end

end A061418.P11159331495243065064

namespace A061418

/-- `A356556(n+1)+2*A005428(n)` -/
def P11159331495243065064.Spec : Prop :=
  ∀ n, P11159331495243065064.a n = A061418 (n + 1)

end A061418

/-! ## A061418.P17289376202558749057

`A081848(n+1)+1-A304273(n+1)`
-/

namespace A061418.P17289376202558749057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081848 (n + 1) + (1 - A304273 (n + 1))

end

end A061418.P17289376202558749057

namespace A061418

/-- `A081848(n+1)+1-A304273(n+1)` -/
def P17289376202558749057.Spec : Prop :=
  ∀ n, P17289376202558749057.a n = A061418 (n + 1)

end A061418

/-! ## A061418.P400579918837321477

`A008683(A007918(n))+A003312(n+1)`
-/

namespace A061418.P400579918837321477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A007918 n).toNat + A003312 (n + 1)

end

end A061418.P400579918837321477

namespace A061418

/-- `A008683(A007918(n))+A003312(n+1)` -/
def P400579918837321477.Spec : Prop :=
  ∀ n, P400579918837321477.a n = A061418 (n + 1)

end A061418

/-! ## A061418.P9678102580246301256

`A008683(A088732(n))+A003312(n+1)`
-/

namespace A061418.P9678102580246301256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A088732 n).toNat + A003312 (n + 1)

end

end A061418.P9678102580246301256

namespace A061418

/-- `A008683(A088732(n))+A003312(n+1)` -/
def P9678102580246301256.Spec : Prop :=
  ∀ n, P9678102580246301256.a n = A061418 (n + 1)

end A061418

/-! ## A061418.P12492412038021045239

`A008683(A151800(n))+A003312(n+1)`
-/

namespace A061418.P12492412038021045239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A151800 n).toNat + A003312 (n + 1)

end

end A061418.P12492412038021045239

namespace A061418

/-- `A008683(A151800(n))+A003312(n+1)` -/
def P12492412038021045239.Spec : Prop :=
  ∀ n, P12492412038021045239.a n = A061418 (n + 1)

end A061418

/-! ## A061418.P12192989986740798968

`A308778(A308778(n)²)+A003312(n+1)`
-/

namespace A061418.P12192989986740798968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308778 (A308778 n ^ 2).toNat + A003312 (n + 1)

end

end A061418.P12192989986740798968

namespace A061418

/-- `A308778(A308778(n)²)+A003312(n+1)` -/
def P12192989986740798968.Spec : Prop :=
  ∀ n, P12192989986740798968.a n = A061418 (n + 1)

end A061418

/-! ## A061418.P4397150633169623872

`A073941(n+2)+A356556(n+1)+A073941(n+2)`
-/

namespace A061418.P4397150633169623872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073941 (n + 2) + (A356556 (n + 1) + A073941 (n + 2))

end

end A061418.P4397150633169623872

namespace A061418

/-- `A073941(n+2)+A356556(n+1)+A073941(n+2)` -/
def P4397150633169623872.Spec : Prop :=
  ∀ n, P4397150633169623872.a n = A061418 (n + 1)

end A061418

/-! ## A061418.P17583508402465877719

`ceil((3*a(n-1)-1)/2)` with `a(0)=2`
-/

namespace A061418.P17583508402465877719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  ⌈(3 * a (n - 1) - 1 : ℚ) / 2⌉

end

end A061418.P17583508402465877719

namespace A061418

/-- `ceil((3*a(n-1)-1)/2)` -/
def P17583508402465877719.Spec : Prop :=
  ∀ n, P17583508402465877719.a n = A061418 (n + 1)

end A061418

/-! ## A061418.P582512746784463200

`(3*a(n-1)-a(n-1)%2)/2` with `a(0)=2`
-/

namespace A061418.P582512746784463200
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [2] fun n a =>
  (3 * a (n - 1) - (Int.tmod (SequenceMachineLib.roundAway (a (n - 1))) 2 : ℚ)) / 2

end

end A061418.P582512746784463200

namespace A061418

/-- `(3*a(n-1)-a(n-1)%2)/2` -/
def P582512746784463200.Spec : Prop :=
  ∀ n, P582512746784463200.a n = (A061418 (n + 1) : ℚ)

end A061418

/-!
# A061419: a(n) = ceiling(a(n-1)*3/2) with a(1) = 1.

The programs for A061419, the canonical program `A061419.P18372017784538588970` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A061419 has offset 1).

The definition of A061419 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ceil(a(n-1)*3/2)` (program `A061419.P18372017784538588970`, by `A061419.P18372017784538588970.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A061419.P16125749749138937691

`A061418(n+1)-1`
-/

namespace A061419.P16125749749138937691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061418 (n + 1) - 1

end

end A061419.P16125749749138937691

namespace A061419

/-- `A061418(n+1)-1` -/
def P16125749749138937691.Spec : Prop :=
  ∀ n, P16125749749138937691.a n = A061419 (n + 1)

end A061419

/-! ## A061419.P18372017784538588970

`ceil(a(n-1)*3/2)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A061419

/-- `ceil(a(n-1)*3/2)` -/
def P18372017784538588970.Spec : Prop :=
  ∀ n, P18372017784538588970.a n = A061419 (n + 1)

theorem P18372017784538588970.correct : P18372017784538588970.Spec := by
  intro n
  simp only [A061419, Nat.add_sub_cancel]

end A061419

/-! ## A061419.P17045503396763485712

`round(3/2*a(n-1))` with `a(0)=1`
-/

namespace A061419.P17045503396763485712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  SequenceMachineLib.roundAway ((3 : ℚ) / 2 * (a (n - 1) : ℚ))

end

end A061419.P17045503396763485712

namespace A061419

/-- `round(3/2*a(n-1))` -/
def P17045503396763485712.Spec : Prop :=
  ∀ n, P17045503396763485712.a n = A061419 (n + 1)

end A061419

/-! ## A061419.P9939863008212253263

`ceil(a(n-1)+a(n-1)/2)` with `a(0)=1`
-/

namespace A061419.P9939863008212253263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌈(a (n - 1) : ℚ) + (a (n - 1) : ℚ) / 2⌉

end

end A061419.P9939863008212253263

namespace A061419

/-- `ceil(a(n-1)+a(n-1)/2)` -/
def P9939863008212253263.Spec : Prop :=
  ∀ n, P9939863008212253263.a n = A061419 (n + 1)

theorem P9939863008212253263.correct : P9939863008212253263.Spec := by
  intro n
  simp only [A061419, Nat.add_sub_cancel, A061419.P9939863008212253263.a, A061419.P18372017784538588970.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A061419

/-! ## A061419.P15201960303558603156

`round(a(n-1)+a(n-1)/2)` with `a(0)=1`
-/

namespace A061419.P15201960303558603156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  SequenceMachineLib.roundAway ((a (n - 1) : ℚ) + (a (n - 1) : ℚ) / 2)

end

end A061419.P15201960303558603156

namespace A061419

/-- `round(a(n-1)+a(n-1)/2)` -/
def P15201960303558603156.Spec : Prop :=
  ∀ n, P15201960303558603156.a n = A061419 (n + 1)

end A061419

/-! ## A061419.P15141389850990974364

`floor((a(n-1)+1)/sqrt(4/9))-1` with `a(0)=1`
-/

namespace A061419.P15141389850990974364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌊(a (n - 1) + 1 : ℝ) / Real.sqrt ((4 : ℚ) / 9 : ℝ)⌋ - 1

end

end A061419.P15141389850990974364

namespace A061419

/-- `floor((a(n-1)+1)/sqrt(4/9))-1` -/
def P15141389850990974364.Spec : Prop :=
  ∀ n, P15141389850990974364.a n = A061419 (n + 1)

end A061419

/-! ## A061419.P18164248460415492537

`floor(a(n-1)+(a(n-1)+1)/2)` with `a(0)=1`
-/

namespace A061419.P18164248460415492537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌊(a (n - 1) : ℚ) + (a (n - 1) + 1 : ℚ) / 2⌋

end

end A061419.P18164248460415492537

namespace A061419

/-- `floor(a(n-1)+(a(n-1)+1)/2)` -/
def P18164248460415492537.Spec : Prop :=
  ∀ n, P18164248460415492537.a n = A061419 (n + 1)

end A061419

/-! ## A061419.P4825652283528440089

`1-floor(1-a(n-1)/2-a(n-1))` with `a(0)=1`
-/

namespace A061419.P4825652283528440089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  1 - ⌊1 - (a (n - 1) : ℚ) / 2 - (a (n - 1) : ℚ)⌋

end

end A061419.P4825652283528440089

namespace A061419

/-- `1-floor(1-a(n-1)/2-a(n-1))` -/
def P4825652283528440089.Spec : Prop :=
  ∀ n, P4825652283528440089.a n = A061419 (n + 1)

end A061419

/-! ## A061419.P13466976034733868191

`a(n-1)+(a(n-1)+(a(n-1)+2)%2)/2` with `a(0)=1`
-/

namespace A061419.P13466976034733868191
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (a (n - 1) + (Int.tmod (SequenceMachineLib.roundAway (a (n - 1) + 2)) 2 : ℚ)) / 2

end

end A061419.P13466976034733868191

namespace A061419

/-- `a(n-1)+(a(n-1)+(a(n-1)+2)%2)/2` -/
def P13466976034733868191.Spec : Prop :=
  ∀ n, P13466976034733868191.a n = (A061419 (n + 1) : ℚ)

end A061419

/-! ## A061419.P15565254727762619446

`(a(n-1)-gcd(2, a(n-1)))/2+a(n-1)+1` with `a(0)=1`
-/

namespace A061419.P15565254727762619446
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (a (n - 1) - (Int.gcd 2 (SequenceMachineLib.roundAway (a (n - 1))) : ℚ)) / 2 + (a (n - 1) + 1)

end

end A061419.P15565254727762619446

namespace A061419

/-- `(a(n-1)-gcd(2, a(n-1)))/2+a(n-1)+1` -/
def P15565254727762619446.Spec : Prop :=
  ∀ n, P15565254727762619446.a n = (A061419 (n + 1) : ℚ)

end A061419

/-! ## A061419.P2608920897437027620

`A006999(n)+1`
-/

namespace A061419.P2608920897437027620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006999 n + 1

end

end A061419.P2608920897437027620

namespace A061419

/-- `A006999(n)+1` -/
def P2608920897437027620.Spec : Prop :=
  ∀ n, P2608920897437027620.a n = A061419 (n + 1)

theorem P2608920897437027620.correct : P2608920897437027620.Spec := by
  intro n
  simp only [A061419, Nat.add_sub_cancel, A061419.P2608920897437027620.a, A061419.P18372017784538588970.a, A006999, A006999.P3401224636589051846.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A061419

/-! ## A061419.P12750938276159203572

`∑[A073941(n+1)]`
-/

namespace A061419.P12750938276159203572
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073941 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A061419.P12750938276159203572

namespace A061419

/-- `∑[A073941(n+1)]` -/
def P12750938276159203572.Spec : Prop :=
  ∀ n, P12750938276159203572.a n = A061419 (n + 1)

end A061419

/-! ## A061419.P9596644408412241178

`A003312(n+1)-2`
-/

namespace A061419.P9596644408412241178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003312 (n + 1) - 2

end

end A061419.P9596644408412241178

namespace A061419

/-- `A003312(n+1)-2` -/
def P9596644408412241178.Spec : Prop :=
  ∀ n, P9596644408412241178.a n = A061419 (n + 1)

theorem P9596644408412241178.correct : P9596644408412241178.Spec := by
  intro n
  simp only [A061419, Nat.add_sub_cancel, A061419.P9596644408412241178.a, A061419.P18372017784538588970.a, A003312, A003312.P15694996587841724422.a, A006999, A006999.P3401224636589051846.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A061419

/-! ## A061419.P9080518499993984859

`∑[A005428(abs(1-n))]`
-/

namespace A061419.P9080518499993984859
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005428 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A061419.P9080518499993984859

namespace A061419

/-- `∑[A005428(abs(1-n))]` -/
def P9080518499993984859.Spec : Prop :=
  ∀ n, P9080518499993984859.a n = A061419 (n + 1)

end A061419

/-! ## A061419.P5562032117864044575

`∑[A081848(n+1)/3]`
-/

namespace A061419.P5562032117864044575
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A081848 (n + 1) : ℚ) / 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A061419.P5562032117864044575

namespace A061419

/-- `∑[A081848(n+1)/3]` -/
def P5562032117864044575.Spec : Prop :=
  ∀ n, P5562032117864044575.a n = (A061419 (n + 1) : ℚ)

end A061419

/-! ## A061419.P1608202163192736891

`A081848(n+1)-A304273(n+1)`
-/

namespace A061419.P1608202163192736891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081848 (n + 1) - A304273 (n + 1)

end

end A061419.P1608202163192736891

namespace A061419

/-- `A081848(n+1)-A304273(n+1)` -/
def P1608202163192736891.Spec : Prop :=
  ∀ n, P1608202163192736891.a n = A061419 (n + 1)

end A061419

/-! ## A061419.P13140651927456579654

`A005428(n)+A005428(n)-A304273(n+2)`
-/

namespace A061419.P13140651927456579654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005428 n + (A005428 n - A304273 (n + 2))

end

end A061419.P13140651927456579654

namespace A061419

/-- `A005428(n)+A005428(n)-A304273(n+2)` -/
def P13140651927456579654.Spec : Prop :=
  ∀ n, P13140651927456579654.a n = A061419 (n + 1)

end A061419

/-! ## A061419.P13254449592516220956

`A073941(n+2)+A073941(n+2)-A304273(n+2)`
-/

namespace A061419.P13254449592516220956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073941 (n + 2) + (A073941 (n + 2) - A304273 (n + 2))

end

end A061419.P13254449592516220956

namespace A061419

/-- `A073941(n+2)+A073941(n+2)-A304273(n+2)` -/
def P13254449592516220956.Spec : Prop :=
  ∀ n, P13254449592516220956.a n = A061419 (n + 1)

end A061419

/-! ## A061419.P12316107083689075293

`2*a(n-1)-floor(a(n-1)/2)` with `a(0)=1`
-/

namespace A061419.P12316107083689075293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * a (n - 1) - ⌊(a (n - 1) : ℚ) / 2⌋

end

end A061419.P12316107083689075293

namespace A061419

/-- `2*a(n-1)-floor(a(n-1)/2)` -/
def P12316107083689075293.Spec : Prop :=
  ∀ n, P12316107083689075293.a n = A061419 (n + 1)

end A061419

/-! ## A061419.P10361362479437950123

`floor((3*a(n-1)+1)/2)` with `a(0)=1`
-/

namespace A061419.P10361362479437950123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌊(3 * a (n - 1) + 1 : ℚ) / 2⌋

end

end A061419.P10361362479437950123

namespace A061419

/-- `floor((3*a(n-1)+1)/2)` -/
def P10361362479437950123.Spec : Prop :=
  ∀ n, P10361362479437950123.a n = A061419 (n + 1)

end A061419

/-!
# A061420: a(n) = a(ceiling((n-1)*2/3)) + 1 with a(0) = 0.

The programs for A061420, the canonical program `A061420.P9562388983090630477` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A061420 has offset 0).

The definition of A061420 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(ceil((n-1)*2/3))+1` (program `A061420.P9562388983090630477`, by `A061420.P9562388983090630477.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A061420.P2747811680139721580

`a(floor(2*n/3))+1` with `a(0)=0`
-/

namespace A061420.P2747811680139721580
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a ⌊(2 * n : ℚ) / 3⌋.toNat + 1

end

end A061420.P2747811680139721580

namespace A061420

/-- `a(floor(2*n/3))+1` -/
def P2747811680139721580.Spec : Prop :=
  ∀ n, (P2747811680139721580.a n : ℤ) = A061420 n

end A061420

/-! ## A061420.P9562388983090630477

`a(ceil((n-1)*2/3))+1` with `a(0)=0`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A061420

/-- `a(ceil((n-1)*2/3))+1` -/
def P9562388983090630477.Spec : Prop :=
  ∀ n, (P9562388983090630477.a n : ℤ) = A061420 n

theorem P9562388983090630477.correct : P9562388983090630477.Spec := by
  intro n
  simp only [A061420]

end A061420

/-! ## A061420.P2464735821367033021

`floor(a(floor(n-n/3)))+1` with `a(0)=0`

`floor` is left out, it is the identity on integers.
-/

namespace A061420.P2464735821367033021
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a ⌊(n : ℚ) - (n : ℚ) / 3⌋.toNat + 1

end

end A061420.P2464735821367033021

namespace A061420

/-- `floor(a(floor(n-n/3)))+1` -/
def P2464735821367033021.Spec : Prop :=
  ∀ n, (P2464735821367033021.a n : ℤ) = A061420 n

end A061420

/-! ## A061420.P1040997908524723293

`∑[char[ceil(3/2*a(n-1))]]` with `a(0)=1`
-/

namespace A061420.P1040997908524723293
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f2 =>
  ⌈(3 : ℚ) / 2 * (f2 (n - 1) : ℚ)⌉

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A061420.P1040997908524723293

namespace A061420

/-- `∑[char[ceil(3/2*a(n-1))]]` -/
def P1040997908524723293.Spec : Prop :=
  ∀ n, (P1040997908524723293.a n : ℤ) = A061420 n

end A061420

/-! ## A061420.P18255088635132046173

`ceil(log2(A006998(n+1)))`
-/

namespace A061420.P18255088635132046173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 (A006998 (n + 1) : ℝ)⌉

end

end A061420.P18255088635132046173

namespace A061420

/-- `ceil(log2(A006998(n+1)))` -/
def P18255088635132046173.Spec : Prop :=
  ∀ n, P18255088635132046173.a n = A061420 n

end A061420

/-! ## A061420.P6206511385655992711

`∑[char[A006999(n)+1]]`
-/

namespace A061420.P6206511385655992711
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006999 n + 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A061420.P6206511385655992711

namespace A061420

/-- `∑[char[A006999(n)+1]]` -/
def P6206511385655992711.Spec : Prop :=
  ∀ n, (P6206511385655992711.a n : ℤ) = A061420 n

end A061420

/-! ## A061420.P8964374708457514678

`∑[char[A061419(n+1)]]`
-/

namespace A061420.P8964374708457514678
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061419 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A061420.P8964374708457514678

namespace A061420

/-- `∑[char[A061419(n+1)]]` -/
def P8964374708457514678.Spec : Prop :=
  ∀ n, (P8964374708457514678.a n : ℤ) = A061420 n

end A061420

/-! ## A061420.P8235916531546623058

`∑[char[∑[A073941(n+1)]]]`
-/

namespace A061420.P8235916531546623058
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073941 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A061420.P8235916531546623058

namespace A061420

/-- `∑[char[∑[A073941(n+1)]]]` -/
def P8235916531546623058.Spec : Prop :=
  ∀ n, (P8235916531546623058.a n : ℤ) = A061420 n

end A061420

/-! ## A061420.P12093084854667522193

`∑[char[A061418(n+1)-1]]`
-/

namespace A061420.P12093084854667522193
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061418 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A061420.P12093084854667522193

namespace A061420

/-- `∑[char[A061418(n+1)-1]]` -/
def P12093084854667522193.Spec : Prop :=
  ∀ n, (P12093084854667522193.a n : ℤ) = A061420 n

end A061420

/-! ## A061420.P4000014153236715962

`∑[char[A007494(a(n-1))]]` with `a(0)=1`
-/

namespace A061420.P4000014153236715962
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f2 =>
  A007494 (f2 (n - 1)).toNat

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A061420.P4000014153236715962

namespace A061420

/-- `∑[char[A007494(a(n-1))]]` -/
def P4000014153236715962.Spec : Prop :=
  ∀ n, (P4000014153236715962.a n : ℤ) = A061420 n

end A061420

/-! ## A061420.P17933617997122415230

`A246435(2*n)%(n+1)`
-/

namespace A061420.P17933617997122415230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A246435 (2 * n)) (n + 1 : ℤ)

end

end A061420.P17933617997122415230

namespace A061420

/-- `A246435(2*n)%(n+1)` -/
def P17933617997122415230.Spec : Prop :=
  ∀ n, P17933617997122415230.a n = A061420 n

end A061420

/-! ## A061420.P15968188648816838782

`A214972(A055264(n))`
-/

namespace A061420.P15968188648816838782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214972 (A055264 n).toNat

end

end A061420.P15968188648816838782

namespace A061420

/-- `A214972(A055264(n))` -/
def P15968188648816838782.Spec : Prop :=
  ∀ n, P15968188648816838782.a n = A061420 n

end A061420

/-! ## A061420.P4838943900628978109

`A214972(A214068(n))`
-/

namespace A061420.P4838943900628978109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214972 (A214068 n).toNat

end

end A061420.P4838943900628978109

namespace A061420

/-- `A214972(A214068(n))` -/
def P4838943900628978109.Spec : Prop :=
  ∀ n, P4838943900628978109.a n = A061420 n

end A061420

/-! ## A061420.P5846119484580069246

`A246435(3*n)-1`
-/

namespace A061420.P5846119484580069246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246435 (3 * n) - 1

end

end A061420.P5846119484580069246

namespace A061420

/-- `A246435(3*n)-1` -/
def P5846119484580069246.Spec : Prop :=
  ∀ n, P5846119484580069246.a n = A061420 n

end A061420

/-! ## A061420.P3392100187490732688

`A007456(A006998(n+1))`
-/

namespace A061420.P3392100187490732688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007456 (A006998 (n + 1)).toNat

end

end A061420.P3392100187490732688

namespace A061420

/-- `A007456(A006998(n+1))` -/
def P3392100187490732688.Spec : Prop :=
  ∀ n, P3392100187490732688.a n = A061420 n

end A061420

/-! ## A061420.P13218981468653756103

`A059939(∑[A080686(n+2)+A059939(2*(n+1))])`
-/

namespace A061420.P13218981468653756103
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080686 (n + 2) + A059939 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059939 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A061420.P13218981468653756103

namespace A061420

/-- `A059939(∑[A080686(n+2)+A059939(2*(n+1))])` -/
def P13218981468653756103.Spec : Prop :=
  ∀ n, P13218981468653756103.a n = A061420 n

end A061420

/-! ## A061420.P9096371633354585545

`A329195(A283733(n))`
-/

namespace A061420.P9096371633354585545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329195 (A283733 n).toNat

end

end A061420.P9096371633354585545

namespace A061420

/-- `A329195(A283733(n))` -/
def P9096371633354585545.Spec : Prop :=
  ∀ n, P9096371633354585545.a n = A061420 n

end A061420

/-!
# A061422: Numbers k such that 2^(k-1) + k is prime.

The programs for A061422, there is no canonical definition to state claims against.
-/

/-! ## A061422.P13633302638776841172

`A100359(n+1)+1`
-/

namespace A061422.P13633302638776841172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100359 (n + 1) + 1

end

end A061422.P13633302638776841172

/-! ## A061422.P17735862606600018314

`2*A173053(n+1)+1`
-/

namespace A061422.P17735862606600018314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A173053 (n + 1) + 1

end

end A061422.P17735862606600018314

/-! ## A061422.P16246211021446399520

`xor(1, A100359(A048379(n)))`
-/

namespace A061422.P16246211021446399520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A100359 (A048379 n).toNat)

end

end A061422.P16246211021446399520

/-!
# A061423: Sum of digits = 6 times number of digits.

The programs for A061423, the canonical program `A061423.P247878433871587893` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A061423 has offset 1).

The definition of A061423 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1434 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A061423.P247878433871587893

`∩[A178366(n+1), A274319(n+1)]`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A061423

/-- `∩[A178366(n+1), A274319(n+1)]` -/
def P247878433871587893.Spec : Prop :=
  ∀ n, (P247878433871587893.a n : ℤ) = A061423 (n + 1)

theorem P247878433871587893.correct : P247878433871587893.Spec := by
  intro n
  simp only [A061423, Nat.add_sub_cancel]

end A061423

/-! ## A061423.P9528253099108811689

`∩[A178366(n+1), A061383(n)]`
-/

namespace A061423.P9528253099108811689
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178366 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061383 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A061423.P9528253099108811689

namespace A061423

/-- `∩[A178366(n+1), A061383(n)]` -/
def P9528253099108811689.Spec : Prop :=
  ∀ n, (P9528253099108811689.a n : ℤ) = A061423 (n + 1)

end A061423

/-! ## A061423.P14923084348347286833

`A061383(eq[6, A285093(n)])`
-/

namespace A061423.P14923084348347286833
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285093 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061383 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A061423.P14923084348347286833

namespace A061423

/-- `A061383(eq[6, A285093(n)])` -/
def P14923084348347286833.Spec : Prop :=
  ∀ n, P14923084348347286833.a n = A061423 (n + 1)

end A061423

/-! ## A061423.P8719251093147189434

`∩[A167711(n+1), A178366(n+1)]`
-/

namespace A061423.P8719251093147189434
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167711 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178366 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A061423.P8719251093147189434

namespace A061423

/-- `∩[A167711(n+1), A178366(n+1)]` -/
def P8719251093147189434.Spec : Prop :=
  ∀ n, (P8719251093147189434.a n : ℤ) = A061423 (n + 1)

end A061423

/-! ## A061423.P14691672637616109104

`A061383(eq[6, A004427(A061383(n))])`
-/

namespace A061423.P14691672637616109104
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004427 (A061383 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061383 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A061423.P14691672637616109104

namespace A061423

/-- `A061383(eq[6, A004427(A061383(n))])` -/
def P14691672637616109104.Spec : Prop :=
  ∀ n, P14691672637616109104.a n = A061423 (n + 1)

end A061423

/-! ## A061423.P4442629891994701146

`A375967(a(n-1))` with `a(0)=6`
-/

namespace A061423.P4442629891994701146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [6] fun n a =>
  A375967 (a (n - 1)).toNat

end

end A061423.P4442629891994701146

namespace A061423

/-- `A375967(a(n-1))` -/
def P4442629891994701146.Spec : Prop :=
  ∀ n, P4442629891994701146.a n = A061423 (n + 1)

end A061423

/-! ## A061423.P5892375339292393991

`eq[6, A371383(n)]`
-/

namespace A061423.P5892375339292393991
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371383 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A061423.P5892375339292393991

namespace A061423

/-- `eq[6, A371383(n)]` -/
def P5892375339292393991.Spec : Prop :=
  ∀ n, (P5892375339292393991.a n : ℤ) = A061423 (n + 1)

end A061423

/-! ## A061423.P4858690623567014293

`eq[6, A375968(n)]`
-/

namespace A061423.P4858690623567014293
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375968 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A061423.P4858690623567014293

namespace A061423

/-- `eq[6, A375968(n)]` -/
def P4858690623567014293.Spec : Prop :=
  ∀ n, (P4858690623567014293.a n : ℤ) = A061423 (n + 1)

end A061423

/-! ## A061423.P15218175373876160565

`eq[2*A099838(n), A257295(n)]`
-/

namespace A061423.P15218175373876160565
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A099838 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257295 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A061423.P15218175373876160565

namespace A061423

/-- `eq[2*A099838(n), A257295(n)]` -/
def P15218175373876160565.Spec : Prop :=
  ∀ n, (P15218175373876160565.a n : ℤ) = A061423 (n + 1)

end A061423

/-! ## A061423.P11959680085701008629

`eq[6*A055642(n), A007953(n)]`
-/

namespace A061423.P11959680085701008629
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A055642 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A061423.P11959680085701008629

namespace A061423

/-- `eq[6*A055642(n), A007953(n)]` -/
def P11959680085701008629.Spec : Prop :=
  ∀ n, (P11959680085701008629.a n : ℤ) = A061423 (n + 1)

end A061423

/-! ## A061423.P13081939708414029111

`eq[6, gcd(A004427(n), A007953(n))]`
-/

namespace A061423.P13081939708414029111
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A004427 n) (A007953 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A061423.P13081939708414029111

namespace A061423

/-- `eq[6, gcd(A004427(n), A007953(n))]` -/
def P13081939708414029111.Spec : Prop :=
  ∀ n, (P13081939708414029111.a n : ℤ) = A061423 (n + 1)

end A061423

/-! ## A061423.P13211484389861711628

`eq[2*A275363(n+1), A257295(n)]`
-/

namespace A061423.P13211484389861711628
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A275363 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257295 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A061423.P13211484389861711628

namespace A061423

/-- `eq[2*A275363(n+1), A257295(n)]` -/
def P13211484389861711628.Spec : Prop :=
  ∀ n, (P13211484389861711628.a n : ℤ) = A061423 (n + 1)

end A061423

/-! ## A061423.P1860690481186410236

`eq[2*A347538(n+3), A257295(n)]`
-/

namespace A061423.P1860690481186410236
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A347538 (n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257295 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A061423.P1860690481186410236

namespace A061423

/-- `eq[2*A347538(n+3), A257295(n)]` -/
def P1860690481186410236.Spec : Prop :=
  ∀ n, (P1860690481186410236.a n : ℤ) = A061423 (n + 1)

end A061423

/-! ## A061423.P2339893693082777814

`A061383(eq[6, A004426(A061383(n))])`
-/

namespace A061423.P2339893693082777814
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004426 (A061383 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061383 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A061423.P2339893693082777814

namespace A061423

/-- `A061383(eq[6, A004426(A061383(n))])` -/
def P2339893693082777814.Spec : Prop :=
  ∀ n, P2339893693082777814.a n = A061423 (n + 1)

end A061423

/-! ## A061423.P11207957069091851315

`eq[A007953(n), A169805(A061601(n))]`
-/

namespace A061423.P11207957069091851315
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169805 (A061601 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A061423.P11207957069091851315

namespace A061423

/-- `eq[A007953(n), A169805(A061601(n))]` -/
def P11207957069091851315.Spec : Prop :=
  ∀ n, (P11207957069091851315.a n : ℤ) = A061423 (n + 1)

end A061423

/-! ## A061423.P15796474694930544037

`eq[A007953(n), A169805(A267193(n))]`
-/

namespace A061423.P15796474694930544037
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169805 (A267193 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A061423.P15796474694930544037

namespace A061423

/-- `eq[A007953(n), A169805(A267193(n))]` -/
def P15796474694930544037.Spec : Prop :=
  ∀ n, (P15796474694930544037.a n : ℤ) = A061423 (n + 1)

end A061423

/-! ## A061423.P11812931853793421108

`eq[2*A169805(A061601(n)), A169805(n)]`
-/

namespace A061423.P11812931853793421108
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A169805 (A061601 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169805 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A061423.P11812931853793421108

namespace A061423

/-- `eq[2*A169805(A061601(n)), A169805(n)]` -/
def P11812931853793421108.Spec : Prop :=
  ∀ n, (P11812931853793421108.a n : ℤ) = A061423 (n + 1)

end A061423

/-! ## A061423.P7422085362640814316

`eq[2*A169805(A267193(n)), A169805(n)]`
-/

namespace A061423.P7422085362640814316
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A169805 (A267193 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169805 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A061423.P7422085362640814316

namespace A061423

/-- `eq[2*A169805(A267193(n)), A169805(n)]` -/
def P7422085362640814316.Spec : Prop :=
  ∀ n, (P7422085362640814316.a n : ℤ) = A061423 (n + 1)

end A061423

/-! ## A061423.P621333390358182617

`eq[A169805(A267193(n))+n, A062028(n)]`
-/

namespace A061423.P621333390358182617
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169805 (A267193 n).toNat + (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062028 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A061423.P621333390358182617

namespace A061423

/-- `eq[A169805(A267193(n))+n, A062028(n)]` -/
def P621333390358182617.Spec : Prop :=
  ∀ n, (P621333390358182617.a n : ℤ) = A061423 (n + 1)

end A061423

/-!
# A061424: Sum of digits = 7 times number of digits.

The programs for A061424, the canonical program `A061424.P9634388697526268422` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A061424 has offset 1).

The definition of A061424 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 524 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A061424.P9634388697526268422

`∩[A178367(n+1), A273159(n+1)]`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A061424

/-- `∩[A178367(n+1), A273159(n+1)]` -/
def P9634388697526268422.Spec : Prop :=
  ∀ n, (P9634388697526268422.a n : ℤ) = A061424 (n + 1)

theorem P9634388697526268422.correct : P9634388697526268422.Spec := by
  intro n
  simp only [A061424, Nat.add_sub_cancel]

end A061424

/-! ## A061424.P952490010011570298

`A061383(eq[7, A285093(n)])`
-/

namespace A061424.P952490010011570298
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285093 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061383 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A061424.P952490010011570298

namespace A061424

/-- `A061383(eq[7, A285093(n)])` -/
def P952490010011570298.Spec : Prop :=
  ∀ n, P952490010011570298.a n = A061424 (n + 1)

end A061424

/-! ## A061424.P7518105799767618087

`∩[A178367(n+1), A061383(n)]`
-/

namespace A061424.P7518105799767618087
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178367 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061383 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A061424.P7518105799767618087

namespace A061424

/-- `∩[A178367(n+1), A061383(n)]` -/
def P7518105799767618087.Spec : Prop :=
  ∀ n, (P7518105799767618087.a n : ℤ) = A061424 (n + 1)

end A061424

/-! ## A061424.P738773485485242563

`∩[A273159(n+2), A061383(n)]`
-/

namespace A061424.P738773485485242563
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273159 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061383 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A061424.P738773485485242563

namespace A061424

/-- `∩[A273159(n+2), A061383(n)]` -/
def P738773485485242563.Spec : Prop :=
  ∀ n, (P738773485485242563.a n : ℤ) = A061424 (n + 1)

end A061424

/-! ## A061424.P15328419321609936641

`A375967(a(n-1))` with `a(0)=7`
-/

namespace A061424.P15328419321609936641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [7] fun n a =>
  A375967 (a (n - 1)).toNat

end

end A061424.P15328419321609936641

namespace A061424

/-- `A375967(a(n-1))` -/
def P15328419321609936641.Spec : Prop :=
  ∀ n, P15328419321609936641.a n = A061424 (n + 1)

end A061424

/-! ## A061424.P3205971461567212290

`eq[7, A004185(A257296(n))]`
-/

namespace A061424.P3205971461567212290
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004185 (A257296 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A061424.P3205971461567212290

namespace A061424

/-- `eq[7, A004185(A257296(n))]` -/
def P3205971461567212290.Spec : Prop :=
  ∀ n, (P3205971461567212290.a n : ℤ) = A061424 (n + 1)

end A061424

/-!
# A061425: Sum of digits = 8 times number of digits.

The programs for A061425, there is no canonical definition to state claims against.
-/

/-! ## A061425.P10312653071230276215

`∩[A178368(n+1), A273188(n+1)]`
-/

namespace A061425.P10312653071230276215
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178368 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273188 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A061425.P10312653071230276215

/-! ## A061425.P14710911565247055620

`A375967(a(n-1))` with `a(0)=8`
-/

namespace A061425.P14710911565247055620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [8] fun n a =>
  A375967 (a (n - 1)).toNat

end

end A061425.P14710911565247055620

/-! ## A061425.P8914256937235205450

`eq[8, A004185(A257296(n))]`
-/

namespace A061425.P8914256937235205450
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004185 (A257296 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A061425.P8914256937235205450

/-! ## A061425.P1492146169164177129

`A061383(eq[8, A285093(n)])`
-/

namespace A061425.P1492146169164177129
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285093 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061383 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A061425.P1492146169164177129

/-! ## A061425.P6556547255871083386

`eq[A007953(A061601(n)), A055642(n)]`
-/

namespace A061425.P6556547255871083386
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (A061601 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A061425.P6556547255871083386

/-!
# A061426: Geometric mean of the digits = 2. In other words, the product of the digits is = 2^k where k is the number of digits.

The programs for A061426, there is no canonical definition to state claims against.
-/

/-! ## A061426.P2726391802599272524

`eq[A136399(n+1), A230099(n)]`
-/

namespace A061426.P2726391802599272524
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136399 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230099 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A061426.P2726391802599272524

/-! ## A061426.P243706977570990006

`eq[2^A055642(n), A007954(n)]`
-/

namespace A061426.P243706977570990006
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A055642 n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007954 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℚ)) n

end

end A061426.P243706977570990006

/-! ## A061426.P12109490034226686259

`eq[A004428(n)+2, A004430(n)²]`
-/

namespace A061426.P12109490034226686259
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004428 n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004430 n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A061426.P12109490034226686259

/-! ## A061426.P18438109974566860255

`eq[A001316(A102489(n)), A007954(n)]`
-/

namespace A061426.P18438109974566860255
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 (A102489 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007954 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A061426.P18438109974566860255

/-! ## A061426.P1560016154363404532

`eq[A007954(n)², A329562(A073053(n))]`
-/

namespace A061426.P1560016154363404532
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007954 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329562 (A073053 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A061426.P1560016154363404532

/-!
# A061427: Geometric mean of the digits = 3. In other words, the product of the digits is = 3^k where k is the number of digits.

The programs for A061427, there is no canonical definition to state claims against.
-/

/-! ## A061427.P11120016914896683560

`∩[A039127(n+1), A174813(n+1)]`
-/

namespace A061427.P11120016914896683560
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039127 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174813 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A061427.P11120016914896683560

/-! ## A061427.P15576633995133238490

`eq[3^A055640(n), A007954(n)]`
-/

namespace A061427.P15576633995133238490
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) ^ (A055640 n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007954 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℚ)) n

end

end A061427.P15576633995133238490

/-! ## A061427.P2316394376194405989

`eq[3^A055642(n), A007954(n)]`
-/

namespace A061427.P2316394376194405989
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) ^ (A055642 n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007954 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℚ)) n

end

end A061427.P2316394376194405989

/-! ## A061427.P18044409483185179800

`eq[3^A215887(n), A007954(n)]`
-/

namespace A061427.P18044409483185179800
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) ^ (A215887 n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007954 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℚ)) n

end

end A061427.P18044409483185179800

/-!
# A061428: Geometric mean of the digits = 4. In other words, the product of the digits is = 4^k where k is the number of digits.

The programs for A061428, there is no canonical definition to state claims against.
-/

/-! ## A061428.P14310520030259374345

`eq[4^A055640(n), A007954(n)]`
-/

namespace A061428.P14310520030259374345
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 : ℚ) ^ (A055640 n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007954 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℚ)) n

end

end A061428.P14310520030259374345

/-! ## A061428.P14243290885357515297

`eq[4^A055642(n), A007954(n)]`
-/

namespace A061428.P14243290885357515297
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 : ℚ) ^ (A055642 n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007954 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℚ)) n

end

end A061428.P14243290885357515297

/-! ## A061428.P5833615348917036154

`eq[4^A215887(n), A007954(n)]`
-/

namespace A061428.P5833615348917036154
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 : ℚ) ^ (A215887 n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007954 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℚ)) n

end

end A061428.P5833615348917036154

/-! ## A061428.P4590192031792660560

`eq[4^A160093(n+1), A007954(n)]`
-/

namespace A061428.P4590192031792660560
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 : ℚ) ^ (A160093 (n + 1) : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007954 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℚ)) n

end

end A061428.P4590192031792660560

/-! ## A061428.P10199576684491434823

`eq[A007954(n), A329562(A073053(n))]`
-/

namespace A061428.P10199576684491434823
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007954 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329562 (A073053 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A061428.P10199576684491434823

/-!
# A061430: Geometric mean of the digits is an integer: k-digit numbers such that the product of the digits is a number of the form m^k.

The programs for A061430, the canonical program `A061430.P16664291568719836085` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A061430 has offset 1).

The definition of A061430 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2833 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A061430.P16664291568719836085

`eq[A004428(n)^A055642(n), A007954(n)]`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A061430

/-- `eq[A004428(n)^A055642(n), A007954(n)]` -/
def P16664291568719836085.Spec : Prop :=
  ∀ n, (P16664291568719836085.a n : ℤ) = A061430 (n + 1)

theorem P16664291568719836085.correct : P16664291568719836085.Spec := by
  intro n
  simp only [A061430, Nat.add_sub_cancel]

end A061430

/-! ## A061430.P581812029470452052

`eq[A004428(n), A004430(n)]`
-/

namespace A061430.P581812029470452052
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004428 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004430 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A061430.P581812029470452052

namespace A061430

/-- `eq[A004428(n), A004430(n)]` -/
def P581812029470452052.Spec : Prop :=
  ∀ n, (P581812029470452052.a n : ℤ) = A061430 (n + 1)

end A061430

/-! ## A061430.P1073632449694377007

`eq[A004429(n)^A055642(n), A007954(n)]`
-/

namespace A061430.P1073632449694377007
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004429 n : ℚ) ^ (A055642 n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007954 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℚ)) n

end

end A061430.P1073632449694377007

namespace A061430

/-- `eq[A004429(n)^A055642(n), A007954(n)]` -/
def P1073632449694377007.Spec : Prop :=
  ∀ n, (P1073632449694377007.a n : ℤ) = A061430 (n + 1)

end A061430

/-! ## A061430.P2583146391975526358

`eq[A004430(n)^A055642(n), A007954(n)]`
-/

namespace A061430.P2583146391975526358
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004430 n : ℚ) ^ (A055642 n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007954 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℚ)) n

end

end A061430.P2583146391975526358

namespace A061430

/-- `eq[A004430(n)^A055642(n), A007954(n)]` -/
def P2583146391975526358.Spec : Prop :=
  ∀ n, (P2583146391975526358.a n : ℤ) = A061430 (n + 1)

end A061430

/-! ## A061430.P1205579436148430154

`eq[0, A272677(A257297(n))]`
-/

namespace A061430.P1205579436148430154
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272677 (A257297 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A061430.P1205579436148430154

namespace A061430

/-- `eq[0, A272677(A257297(n))]` -/
def P1205579436148430154.Spec : Prop :=
  ∀ n, (P1205579436148430154.a n : ℤ) = A061430 (n + 1)

end A061430

/-!
# A061431: a(n) = LCM of the n consecutive numbers n(n-1)/2 + 1, ..., n(n+1)/2.

The programs for A061431, there is no canonical definition to state claims against.
-/

/-! ## A061431.P17003984348187911320

`A091794(n)-(∑[n]+1)`
-/

namespace A061431.P17003984348187911320
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091794 n - ((∑ j ∈ Finset.range (n + 1), f1 j + 1 : ℕ) : ℤ)

end

end A061431.P17003984348187911320

/-! ## A061431.P218997372411566073

`A091795(n)-∑[n+1]`
-/

namespace A061431.P218997372411566073
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091795 n - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A061431.P218997372411566073

/-! ## A061431.P9787390636758375019

`A091796(n+1)+∑[n+1]`
-/

namespace A061431.P9787390636758375019
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091796 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A061431.P9787390636758375019

/-! ## A061431.P13273714626589000688

`A062080(n+1)/2`
-/

namespace A061431.P13273714626589000688
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A062080 (n + 1) : ℚ) / 2

end

end A061431.P13273714626589000688

/-! ## A061431.P14682944075875519420

`(A091796(n+1)+A091795(n))/2`
-/

namespace A061431.P14682944075875519420
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A091796 (n + 1) + A091795 n : ℚ) / 2

end

end A061431.P14682944075875519420

/-!
# A061432: a(n) = smallest n-digit square.

The programs for A061432, the canonical program `A061432.P14813839474829668923` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A061432 has offset 1).

The definition of A061432 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A061432.P14813839474829668923

`ceil(sqrt(10^n))²`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A061432

/-- `ceil(sqrt(10^n))²` -/
def P14813839474829668923.Spec : Prop :=
  ∀ n, P14813839474829668923.a n = A061432 (n + 1)

theorem P14813839474829668923.correct : P14813839474829668923.Spec := by
  intro n
  simp only [A061432, Nat.add_sub_cancel]

end A061432

/-! ## A061432.P7821161089825514221

`ceil(sqrt(10^n))^(2%(n+7))`
-/

namespace A061432.P7821161089825514221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (10 ^ n : ℝ)⌉ ^ (2 % (n + 7))

end

end A061432.P7821161089825514221

namespace A061432

/-- `ceil(sqrt(10^n))^(2%(n+7))` -/
def P7821161089825514221.Spec : Prop :=
  ∀ n, P7821161089825514221.a n = A061432 (n + 1)

end A061432

/-! ## A061432.P3512118873096617876

`(floor(10^(n/2))+n%2)²^ceil(sin(n)²)`
-/

namespace A061432.P3512118873096617876
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((⌊(10 : ℝ) ^ ((n : ℚ) / 2 : ℝ)⌋ + ((n % 2 : ℕ) : ℤ)) ^ 2 : ℚ) ^ (⌈Real.sin (n : ℝ) ^ 2⌉ : ℤ)

end

end A061432.P3512118873096617876

namespace A061432

/-- `(floor(10^(n/2))+n%2)²^ceil(sin(n)²)` -/
def P3512118873096617876.Spec : Prop :=
  ∀ n, P3512118873096617876.a n = (A061432 (n + 1) : ℚ)

end A061432

/-! ## A061432.P16629402897926483452

`A017936(n+1)^2`
-/

namespace A061432.P16629402897926483452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017936 (n + 1) ^ 2

end

end A061432.P16629402897926483452

namespace A061432

/-- `A017936(n+1)^2` -/
def P16629402897926483452.Spec : Prop :=
  ∀ n, P16629402897926483452.a n = A061432 (n + 1)

end A061432

/-! ## A061432.P6670552661054389696

`A018074(2*n)²^ceil(sin(n)²)`
-/

namespace A061432.P6670552661054389696
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A018074 (2 * n) ^ 2 : ℚ) ^ (⌈Real.sin (n : ℝ) ^ 2⌉ : ℤ)

end

end A061432.P6670552661054389696

namespace A061432

/-- `A018074(2*n)²^ceil(sin(n)²)` -/
def P6670552661054389696.Spec : Prop :=
  ∀ n, P6670552661054389696.a n = (A061432 (n + 1) : ℚ)

end A061432

/-! ## A061432.P15538030977405634350

`round(A035071(n)/2)²^ceil(sin(n)²)`
-/

namespace A061432.P15538030977405634350
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.roundAway ((A035071 n : ℚ) / 2) ^ 2 : ℚ) ^ (⌈Real.sin (n : ℝ) ^ 2⌉ : ℤ)

end

end A061432.P15538030977405634350

namespace A061432

/-- `round(A035071(n)/2)²^ceil(sin(n)²)` -/
def P15538030977405634350.Spec : Prop :=
  ∀ n, P15538030977405634350.a n = (A061432 (n + 1) : ℚ)

end A061432

/-! ## A061432.P14703331579770784445

`A130080(3*n+1)²^ceil(sin(n)²)`
-/

namespace A061432.P14703331579770784445
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A130080 (3 * n + 1) ^ 2 : ℚ) ^ (⌈Real.sin (n : ℝ) ^ 2⌉ : ℤ)

end

end A061432.P14703331579770784445

namespace A061432

/-- `A130080(3*n+1)²^ceil(sin(n)²)` -/
def P14703331579770784445.Spec : Prop :=
  ∀ n, P14703331579770784445.a n = (A061432 (n + 1) : ℚ)

end A061432

/-! ## A061432.P2402526876850342913

`A130082(4*n+1)²^ceil(sin(n)²)`
-/

namespace A061432.P2402526876850342913
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A130082 (4 * n + 1) ^ 2 : ℚ) ^ (⌈Real.sin (n : ℝ) ^ 2⌉ : ℤ)

end

end A061432.P2402526876850342913

namespace A061432

/-- `A130082(4*n+1)²^ceil(sin(n)²)` -/
def P2402526876850342913.Spec : Prop :=
  ∀ n, P2402526876850342913.a n = (A061432 (n + 1) : ℚ)

end A061432

/-! ## A061432.P3478991570405890420

`A017936(n+1)*A018074(2*n)`
-/

namespace A061432.P3478991570405890420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017936 (n + 1) * A018074 (2 * n)

end

end A061432.P3478991570405890420

namespace A061432

/-- `A017936(n+1)*A018074(2*n)` -/
def P3478991570405890420.Spec : Prop :=
  ∀ n, P3478991570405890420.a n = A061432 (n + 1)

end A061432

/-! ## A061432.P7957328942868757953

`char[A031731(n+1)]+A017936(n+1)²`
-/

namespace A061432.P7957328942868757953
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031731 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) + A017936 (n + 1) ^ 2

end

end A061432.P7957328942868757953

namespace A061432

/-- `char[A031731(n+1)]+A017936(n+1)²` -/
def P7957328942868757953.Spec : Prop :=
  ∀ n, P7957328942868757953.a n = A061432 (n + 1)

end A061432

/-! ## A061432.P8639385284821145724

`A018074(A023443(2*n+1))*A018074(2*n)`
-/

namespace A061432.P8639385284821145724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018074 (A023443 (2 * n + 1)).toNat * A018074 (2 * n)

end

end A061432.P8639385284821145724

namespace A061432

/-- `A018074(A023443(2*n+1))*A018074(2*n)` -/
def P8639385284821145724.Spec : Prop :=
  ∀ n, P8639385284821145724.a n = A061432 (n + 1)

end A061432

/-!
# A061433: Largest n-digit square.

The programs for A061433, the canonical program `A061433.P1434836657270973572` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A061433 has offset 1).

The definition of A061433 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A061433.P1434836657270973572

`floor(sqrt(10^(n+1)-1))²`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A061433

/-- `floor(sqrt(10^(n+1)-1))²` -/
def P1434836657270973572.Spec : Prop :=
  ∀ n, P1434836657270973572.a n = A061433 (n + 1)

theorem P1434836657270973572.correct : P1434836657270973572.Spec := by
  intro n
  simp only [A061433, Nat.add_sub_cancel]

end A061433

/-! ## A061433.P17220235870629985150

`A049416(n+1)^2`
-/

namespace A061433.P17220235870629985150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049416 (n + 1) ^ 2

end

end A061433.P17220235870629985150

namespace A061433

/-- `A049416(n+1)^2` -/
def P17220235870629985150.Spec : Prop :=
  ∀ n, P17220235870629985150.a n = A061433 (n + 1)

end A061433

/-! ## A061433.P12642900070022200226

`∑[A049415(n+1)]^2`
-/

namespace A061433.P12642900070022200226
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049415 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A061433.P12642900070022200226

namespace A061433

/-- `∑[A049415(n+1)]^2` -/
def P12642900070022200226.Spec : Prop :=
  ∀ n, P12642900070022200226.a n = A061433 (n + 1)

end A061433

/-! ## A061433.P12057762696965171955

`A114322(2*(n+1))^2`
-/

namespace A061433.P12057762696965171955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114322 (2 * (n + 1)) ^ 2

end

end A061433.P12057762696965171955

namespace A061433

/-- `A114322(2*(n+1))^2` -/
def P12057762696965171955.Spec : Prop :=
  ∀ n, P12057762696965171955.a n = A061433 (n + 1)

end A061433

/-! ## A061433.P11130854158778096467

`floor((sqrt(A061432(n+2))-1)²)`
-/

namespace A061433.P11130854158778096467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Real.sqrt (A061432 (n + 2) : ℝ) - 1) ^ 2⌋

end

end A061433.P11130854158778096467

namespace A061433

/-- `floor((sqrt(A061432(n+2))-1)²)` -/
def P11130854158778096467.Spec : Prop :=
  ∀ n, P11130854158778096467.a n = A061433 (n + 1)

end A061433

/-! ## A061433.P2101155952952457958

`record[A049416(A002260(n+1))²]`
-/

namespace A061433.P2101155952952457958
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049416 (A002260 (n + 1)).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A061433.P2101155952952457958

namespace A061433

/-- `record[A049416(A002260(n+1))²]` -/
def P2101155952952457958.Spec : Prop :=
  ∀ n, P2101155952952457958.a n = A061433 (n + 1)

end A061433

/-! ## A061433.P10487911074605339349

`or(A049416(n+1)², A000007(n))`
-/

namespace A061433.P10487911074605339349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A049416 (n + 1) ^ 2) (A000007 n)

end

end A061433.P10487911074605339349

namespace A061433

/-- `or(A049416(n+1)², A000007(n))` -/
def P10487911074605339349.Spec : Prop :=
  ∀ n, P10487911074605339349.a n = A061433 (n + 1)

end A061433

/-! ## A061433.P4576874768397349060

`record[A049416(sqrt(A055461(n+1)))²]`
-/

namespace A061433.P4576874768397349060
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049416 (SequenceMachineLib.roundAway (Real.sqrt (A055461 (n + 1) : ℝ))).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A061433.P4576874768397349060

namespace A061433

/-- `record[A049416(sqrt(A055461(n+1)))²]` -/
def P4576874768397349060.Spec : Prop :=
  ∀ n, P4576874768397349060.a n = A061433 (n + 1)

end A061433

/-! ## A061433.P11037169383223076090

`∑[A049415(n+1)]*A049416(n+1)`
-/

namespace A061433.P11037169383223076090
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049415 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A049416 (n + 1)

end

end A061433.P11037169383223076090

namespace A061433

/-- `∑[A049415(n+1)]*A049416(n+1)` -/
def P11037169383223076090.Spec : Prop :=
  ∀ n, P11037169383223076090.a n = A061433 (n + 1)

end A061433

/-! ## A061433.P7177117593591491746

`A114322(2*n+2)*A114322(2*n+2)`
-/

namespace A061433.P7177117593591491746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114322 (2 * n + 2) * A114322 (2 * n + 2)

end

end A061433.P7177117593591491746

namespace A061433

/-- `A114322(2*n+2)*A114322(2*n+2)` -/
def P7177117593591491746.Spec : Prop :=
  ∀ n, P7177117593591491746.a n = A061433 (n + 1)

end A061433

/-! ## A061433.P6464290102033280110

`or(A049416(n+1)², A008683(A000118(n)))`
-/

namespace A061433.P6464290102033280110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A049416 (n + 1) ^ 2) (A008683 (A000118 n).toNat)

end

end A061433.P6464290102033280110

namespace A061433

/-- `or(A049416(n+1)², A008683(A000118(n)))` -/
def P6464290102033280110.Spec : Prop :=
  ∀ n, P6464290102033280110.a n = A061433 (n + 1)

end A061433

/-! ## A061433.P17027579340586021329

`record[A049416(A002260(n+1))]*A049416(n+1)`
-/

namespace A061433.P17027579340586021329
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049416 (A002260 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A049416 (n + 1)

end

end A061433.P17027579340586021329

namespace A061433

/-- `record[A049416(A002260(n+1))]*A049416(n+1)` -/
def P17027579340586021329.Spec : Prop :=
  ∀ n, P17027579340586021329.a n = A061433 (n + 1)

end A061433

/-!
# A061434: a(n) is the smallest n-digit cube.

The programs for A061434, the canonical program `A061434.P7718923489082273746` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A061434 has offset 1).

The definition of A061434 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A061434.P7718923489082273746

`ceil(10^(n/3))^3`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A061434

/-- `ceil(10^(n/3))^3` -/
def P7718923489082273746.Spec : Prop :=
  ∀ n, P7718923489082273746.a n = A061434 (n + 1)

theorem P7718923489082273746.correct : P7718923489082273746.Spec := by
  intro n
  simp only [A061434, Nat.add_sub_cancel]

end A061434

/-! ## A061434.P14461738010932272861

`root(A018005(n+1), 1/3)`
-/

namespace A061434.P14461738010932272861
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A018005 (n + 1) : ℝ) ^ (1 / ((1 : ℚ) / 3 : ℝ))

end

end A061434.P14461738010932272861

namespace A061434

/-- `root(A018005(n+1), 1/3)` -/
def P14461738010932272861.Spec : Prop :=
  ∀ n, P14461738010932272861.a n = (A061434 (n + 1) : ℝ)

end A061434

/-! ## A061434.P4201601874393631341

`root(A130080(2*n+1), 1/3)`
-/

namespace A061434.P4201601874393631341
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A130080 (2 * n + 1) : ℝ) ^ (1 / ((1 : ℚ) / 3 : ℝ))

end

end A061434.P4201601874393631341

namespace A061434

/-- `root(A130080(2*n+1), 1/3)` -/
def P4201601874393631341.Spec : Prop :=
  ∀ n, P4201601874393631341.a n = (A061434 (n + 1) : ℝ)

end A061434

/-! ## A061434.P6270686109471856875

`(A018005(n+1)^3)%A061433(n+1)`
-/

namespace A061434.P6270686109471856875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A018005 (n + 1) ^ 3) (A061433 (n + 1))

end

end A061434.P6270686109471856875

namespace A061434

/-- `(A018005(n+1)^3)%A061433(n+1)` -/
def P6270686109471856875.Spec : Prop :=
  ∀ n, P6270686109471856875.a n = A061434 (n + 1)

end A061434

/-! ## A061434.P4466462198945895491

`A130080(2*n+1)^3/A007318(∑[n])`
-/

namespace A061434.P4466462198945895491
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A130080 (2 * n + 1) ^ 3 : ℚ) / (A007318 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ)

end

end A061434.P4466462198945895491

namespace A061434

/-- `A130080(2*n+1)^3/A007318(∑[n])` -/
def P4466462198945895491.Spec : Prop :=
  ∀ n, P4466462198945895491.a n = (A061434 (n + 1) : ℚ)

end A061434

/-! ## A061434.P9567022078869052879

`A018005(n+1)^dr(A038648(n+1))*A018005(n+1)`
-/

namespace A061434.P9567022078869052879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018005 (n + 1) ^ SequenceMachineLib.digitalRoot (A038648 (n + 1)) * A018005 (n + 1)

end

end A061434.P9567022078869052879

namespace A061434

/-- `A018005(n+1)^dr(A038648(n+1))*A018005(n+1)` -/
def P9567022078869052879.Spec : Prop :=
  ∀ n, P9567022078869052879.a n = A061434 (n + 1)

end A061434

/-! ## A061434.P4719792447556849223

`(A018003(n)+A011655(n))*(A018003(n)+A011655(n))²`
-/

namespace A061434.P4719792447556849223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A018003 n + A011655 n) * (A018003 n + A011655 n) ^ 2

end

end A061434.P4719792447556849223

namespace A061434

/-- `(A018003(n)+A011655(n))*(A018003(n)+A011655(n))²` -/
def P4719792447556849223.Spec : Prop :=
  ∀ n, P4719792447556849223.a n = A061434 (n + 1)

end A061434

/-!
# A061435: a(n) is the largest n-digit cube.

The programs for A061435, the canonical program `A061435.P15455651022825679294` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A061435 has offset 1).

The definition of A061435 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A061435.P15455651022825679294

`(ceil(10^((n+1)/3))-1)^3`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A061435

/-- `(ceil(10^((n+1)/3))-1)^3` -/
def P15455651022825679294.Spec : Prop :=
  ∀ n, P15455651022825679294.a n = A061435 (n + 1)

theorem P15455651022825679294.correct : P15455651022825679294.Spec := by
  intro n
  simp only [A061435, Nat.add_sub_cancel]

end A061435

/-! ## A061435.P10567716338633782307

`root(A061439(n+1), 1/3)`
-/

namespace A061435.P10567716338633782307
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A061439 (n + 1) : ℝ) ^ (1 / ((1 : ℚ) / 3 : ℝ))

end

end A061435.P10567716338633782307

namespace A061435

/-- `root(A061439(n+1), 1/3)` -/
def P10567716338633782307.Spec : Prop :=
  ∀ n, P10567716338633782307.a n = (A061435 (n + 1) : ℝ)

end A061435

/-! ## A061435.P1401679432710354869

`A061439(n+1)^3-A000007(n+1)`
-/

namespace A061435.P1401679432710354869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061439 (n + 1) ^ 3 - A000007 (n + 1)

end

end A061435.P1401679432710354869

namespace A061435

/-- `A061439(n+1)^3-A000007(n+1)` -/
def P1401679432710354869.Spec : Prop :=
  ∀ n, P1401679432710354869.a n = A061435 (n + 1)

end A061435

/-! ## A061435.P7413178977249409898

`A061439(n+1)^3*A001222(A007821(n+1))`
-/

namespace A061435.P7413178977249409898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061439 (n + 1) ^ 3 * A001222 (A007821 (n + 1)).toNat

end

end A061435.P7413178977249409898

namespace A061435

/-- `A061439(n+1)^3*A001222(A007821(n+1))` -/
def P7413178977249409898.Spec : Prop :=
  ∀ n, P7413178977249409898.a n = A061435 (n + 1)

end A061435

/-! ## A061435.P13589710945307288523

`A061439(n+1)^3*A001222(A015913(n+1))`
-/

namespace A061435.P13589710945307288523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061439 (n + 1) ^ 3 * A001222 (A015913 (n + 1)).toNat

end

end A061435.P13589710945307288523

namespace A061435

/-- `A061439(n+1)^3*A001222(A015913(n+1))` -/
def P13589710945307288523.Spec : Prop :=
  ∀ n, P13589710945307288523.a n = A061435 (n + 1)

end A061435

/-!
# A061436: Number of steps for trajectory of n to reach 1 under the map that sends x -> x/3 if x mod 3 = 0, x -> x+3-(x mod 3) if x is not 0 mod 3 (for a 2nd time when n starts at 1).

The programs for A061436, the canonical program `A061436.P8951258914533288784` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A061436 has offset 1).

The definition of A061436 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A061436.P17760706085469604395

`∑{digits}[A007089(n), A014710(#)]`
-/

namespace A061436.P17760706085469604395
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007089 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A014710 x).sum

end

end A061436.P17760706085469604395

namespace A061436

/-- `∑{digits}[A007089(n), A014710(#)]` -/
def P17760706085469604395.Spec : Prop :=
  ∀ n, P17760706085469604395.a n = A061436 (n + 1)

end A061436

/-! ## A061436.P7447456575703783182

`∑{digits}[A007089(n), A030110(#)]`
-/

namespace A061436.P7447456575703783182
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007089 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A030110 x).sum

end

end A061436.P7447456575703783182

namespace A061436

/-- `∑{digits}[A007089(n), A030110(#)]` -/
def P7447456575703783182.Spec : Prop :=
  ∀ n, P7447456575703783182.a n = A061436 (n + 1)

end A061436

/-! ## A061436.P5799699679681774986

`∑{digits}[A007089(n), A035214(#)]`
-/

namespace A061436.P5799699679681774986
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007089 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A035214 x).sum

end

end A061436.P5799699679681774986

namespace A061436

/-- `∑{digits}[A007089(n), A035214(#)]` -/
def P5799699679681774986.Spec : Prop :=
  ∀ n, P5799699679681774986.a n = A061436 (n + 1)

end A061436

/-! ## A061436.P12881218016128404002

`∑{digits}[A007089(n), A060990(#)]`
-/

namespace A061436.P12881218016128404002
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007089 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A060990 x).sum

end

end A061436.P12881218016128404002

namespace A061436

/-- `∑{digits}[A007089(n), A060990(#)]` -/
def P12881218016128404002.Spec : Prop :=
  ∀ n, P12881218016128404002.a n = A061436 (n + 1)

end A061436

/-! ## A061436.P3132823144490985889

`∑{digits}[A007089(n), A127218(#)]`
-/

namespace A061436.P3132823144490985889
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007089 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A127218 x).sum

end

end A061436.P3132823144490985889

namespace A061436

/-- `∑{digits}[A007089(n), A127218(#)]` -/
def P3132823144490985889.Spec : Prop :=
  ∀ n, P3132823144490985889.a n = A061436 (n + 1)

end A061436

/-! ## A061436.P5055332878694636293

`∑{digits}[A007089(n), A141044(#)]`
-/

namespace A061436.P5055332878694636293
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007089 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A141044 x).sum

end

end A061436.P5055332878694636293

namespace A061436

/-- `∑{digits}[A007089(n), A141044(#)]` -/
def P5055332878694636293.Spec : Prop :=
  ∀ n, P5055332878694636293.a n = A061436 (n + 1)

end A061436

/-! ## A061436.P18385240545171806111

`∑{digits}[A007089(n), A245977(#)]`
-/

namespace A061436.P18385240545171806111
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007089 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A245977 x).sum

end

end A061436.P18385240545171806111

namespace A061436

/-- `∑{digits}[A007089(n), A245977(#)]` -/
def P18385240545171806111.Spec : Prop :=
  ∀ n, P18385240545171806111.a n = A061436 (n + 1)

end A061436

/-! ## A061436.P14076922120082262765

`∑{digits}[A007089(n), A076291(#!)]`
-/

namespace A061436.P14076922120082262765
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007089 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A076291 (Nat.factorial x)).sum

end

end A061436.P14076922120082262765

namespace A061436

/-- `∑{digits}[A007089(n), A076291(#!)]` -/
def P14076922120082262765.Spec : Prop :=
  ∀ n, P14076922120082262765.a n = A061436 (n + 1)

end A061436

/-! ## A061436.P8951258914533288784

`2*A081604(n)-A081603(n)`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A061436

/-- `2*A081604(n)-A081603(n)` -/
def P8951258914533288784.Spec : Prop :=
  ∀ n, P8951258914533288784.a n = A061436 (n + 1)

theorem P8951258914533288784.correct : P8951258914533288784.Spec := by
  intro n
  simp only [A061436, Nat.add_sub_cancel]

end A061436

/-! ## A061436.P14269963046257485089

`∑{digits}[A007089(n), A109495(#+1)]`
-/

namespace A061436.P14269963046257485089
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007089 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A109495 (x + 1)).sum

end

end A061436.P14269963046257485089

namespace A061436

/-- `∑{digits}[A007089(n), A109495(#+1)]` -/
def P14269963046257485089.Spec : Prop :=
  ∀ n, P14269963046257485089.a n = A061436 (n + 1)

end A061436

/-! ## A061436.P7293159793995750021

`∑{digits}[A007089(n), 2-A002620(#)]`
-/

namespace A061436.P7293159793995750021
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007089 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => 2 - A002620 x).sum

end

end A061436.P7293159793995750021

namespace A061436

/-- `∑{digits}[A007089(n), 2-A002620(#)]` -/
def P7293159793995750021.Spec : Prop :=
  ∀ n, P7293159793995750021.a n = A061436 (n + 1)

end A061436

/-! ## A061436.P10478651293575971126

`∑{digits}[A007089(n), 2/A000108(#)]`
-/

namespace A061436.P10478651293575971126
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007089 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => 2 / (A000108 x : ℚ)).sum

end

end A061436.P10478651293575971126

namespace A061436

/-- `∑{digits}[A007089(n), 2/A000108(#)]` -/
def P10478651293575971126.Spec : Prop :=
  ∀ n, P10478651293575971126.a n = (A061436 (n + 1) : ℚ)

end A061436

/-! ## A061436.P11557258699646658914

`∑{digits}[A007089(n), 2/A001519(#)]`
-/

namespace A061436.P11557258699646658914
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007089 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => 2 / (A001519 x : ℚ)).sum

end

end A061436.P11557258699646658914

namespace A061436

/-- `∑{digits}[A007089(n), 2/A001519(#)]` -/
def P11557258699646658914.Spec : Prop :=
  ∀ n, P11557258699646658914.a n = (A061436 (n + 1) : ℚ)

end A061436

/-! ## A061436.P3335477138995563125

`∑{digits}[A007089(n), 2/A011782(#)]`
-/

namespace A061436.P3335477138995563125
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007089 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => 2 / (A011782 x : ℚ)).sum

end

end A061436.P3335477138995563125

namespace A061436

/-- `∑{digits}[A007089(n), 2/A011782(#)]` -/
def P3335477138995563125.Spec : Prop :=
  ∀ n, P3335477138995563125.a n = (A061436 (n + 1) : ℚ)

end A061436

/-! ## A061436.P13048294218474451674

`∑{digits}[A007089(n), 2/A027337(#)]`
-/

namespace A061436.P13048294218474451674
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007089 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => 2 / (A027337 x : ℚ)).sum

end

end A061436.P13048294218474451674

namespace A061436

/-- `∑{digits}[A007089(n), 2/A027337(#)]` -/
def P13048294218474451674.Spec : Prop :=
  ∀ n, P13048294218474451674.a n = (A061436 (n + 1) : ℚ)

end A061436

/-! ## A061436.P14713280982397286847

`∑{digits}[A007089(n), 2/A213999(#)]`
-/

namespace A061436.P14713280982397286847
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007089 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => 2 / (A213999 x : ℚ)).sum

end

end A061436.P14713280982397286847

namespace A061436

/-- `∑{digits}[A007089(n), 2/A213999(#)]` -/
def P14713280982397286847.Spec : Prop :=
  ∀ n, P14713280982397286847.a n = (A061436 (n + 1) : ℚ)

end A061436

/-! ## A061436.P1123888115165157207

`∑{digits}[A007089(n), 2/A242695(#)]`
-/

namespace A061436.P1123888115165157207
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007089 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => 2 / (A242695 (x + 16) : ℚ)).sum

end

end A061436.P1123888115165157207

namespace A061436

/-- `∑{digits}[A007089(n), 2/A242695(#)]` -/
def P1123888115165157207.Spec : Prop :=
  ∀ n, P1123888115165157207.a n = (A061436 (n + 1) : ℚ)

end A061436

/-! ## A061436.P10552055745278746348

`∑{digits}[A007089(n), 2/A326977(#)]`
-/

namespace A061436.P10552055745278746348
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007089 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => 2 / (A326977 x : ℚ)).sum

end

end A061436.P10552055745278746348

namespace A061436

/-- `∑{digits}[A007089(n), 2/A326977(#)]` -/
def P10552055745278746348.Spec : Prop :=
  ∀ n, P10552055745278746348.a n = (A061436 (n + 1) : ℚ)

end A061436

/-! ## A061436.P8052012700297022685

`∑{digits}[A007089(n), A000034(A001519(#))]`
-/

namespace A061436.P8052012700297022685
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007089 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A000034 (A001519 x).toNat).sum

end

end A061436.P8052012700297022685

namespace A061436

/-- `∑{digits}[A007089(n), A000034(A001519(#))]` -/
def P8052012700297022685.Spec : Prop :=
  ∀ n, P8052012700297022685.a n = A061436 (n + 1)

end A061436

/-! ## A061436.P1268821893075805600

`∑{digits}[A007089(n), A000032(A004526(#))]`
-/

namespace A061436.P1268821893075805600
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007089 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A000032 (A004526 x).toNat).sum

end

end A061436.P1268821893075805600

namespace A061436

/-- `∑{digits}[A007089(n), A000032(A004526(#))]` -/
def P1268821893075805600.Spec : Prop :=
  ∀ n, P1268821893075805600.a n = A061436 (n + 1)

end A061436

/-!
# A061437: Numbers n such that n+1 divides prime(n)+1.

The programs for A061437, there is no canonical definition to state claims against.
-/

/-! ## A061437.P13849145527538834649

`eq[n, A084316(n+1)]`
-/

namespace A061437.P13849145527538834649
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084316 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A061437.P13849145527538834649

/-! ## A061437.P4116064922423400979

`lt[abs(1-n), A008578(n+1)%(n+1)]`
-/

namespace A061437.P4116064922423400979
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (n : ℤ)|

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008578 (n + 1)) (n + 1 : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A061437.P4116064922423400979

/-! ## A061437.P9518597574162284282

`eq[A028815(n), A076079(n+1)]`
-/

namespace A061437.P9518597574162284282
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028815 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076079 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A061437.P9518597574162284282

/-! ## A061437.P2648072019528482679

`eq[A075526(n), A096197(n+1)]`
-/

namespace A061437.P2648072019528482679
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075526 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096197 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A061437.P2648072019528482679

/-! ## A061437.P11344291085846821444

`eq[A054541(n+1), A096197(n+1)]`
-/

namespace A061437.P11344291085846821444
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054541 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096197 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A061437.P11344291085846821444

/-!
# A061439: Largest number whose cube has n digits.

The programs for A061439, the canonical program `A061439.P5107726913665687421` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A061439 has offset 1).

The definition of A061439 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 300 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A061439.P1016835342277399712

`Δ[ceil(10^(n/3))]+a(n-1)` with `a(0)=2`
-/

namespace A061439.P1016835342277399712
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(10 : ℝ) ^ ((n : ℚ) / 3 : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  f1 (n + 1) - f1 n + a (n - 1)

end

end A061439.P1016835342277399712

namespace A061439

/-- `Δ[ceil(10^(n/3))]+a(n-1)` -/
def P1016835342277399712.Spec : Prop :=
  ∀ n, P1016835342277399712.a n = A061439 (n + 1)

end A061439

/-! ## A061439.P15721048593060492603

`∑[Δ[floor(10^(n/3))]+1-n%3]`
-/

namespace A061439.P15721048593060492603
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(10 : ℝ) ^ ((n : ℚ) / 3 : ℝ)⌋

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n + (1 - ((n % 3 : ℕ) : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A061439.P15721048593060492603

namespace A061439

/-- `∑[Δ[floor(10^(n/3))]+1-n%3]` -/
def P15721048593060492603.Spec : Prop :=
  ∀ n, P15721048593060492603.a n = A061439 (n + 1)

end A061439

/-! ## A061439.P9447677749802038716

`record[ceil(10^(n/3))+floor(1/(γ-n))]`
-/

namespace A061439.P9447677749802038716
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(10 : ℝ) ^ ((n : ℚ) / 3 : ℝ)⌉ + ⌊1 / (Real.eulerMascheroniConstant - (n : ℝ))⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A061439.P9447677749802038716

namespace A061439

/-- `record[ceil(10^(n/3))+floor(1/(γ-n))]` -/
def P9447677749802038716.Spec : Prop :=
  ∀ n, P9447677749802038716.a n = A061439 (n + 1)

end A061439

/-! ## A061439.P9274633728462311192

`∑[A181354(n+1)]`
-/

namespace A061439.P9274633728462311192
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181354 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A061439.P9274633728462311192

namespace A061439

/-- `∑[A181354(n+1)]` -/
def P9274633728462311192.Spec : Prop :=
  ∀ n, P9274633728462311192.a n = A061439 (n + 1)

end A061439

/-! ## A061439.P5107726913665687421

`A018005(n+2)-1`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A061439

/-- `A018005(n+2)-1` -/
def P5107726913665687421.Spec : Prop :=
  ∀ n, P5107726913665687421.a n = A061439 (n + 1)

theorem P5107726913665687421.correct : P5107726913665687421.Spec := by
  intro n
  simp only [A061439, Nat.add_sub_cancel]

end A061439

/-! ## A061439.P11364002000044368998

`∑[A062941(n+1)]-1`
-/

namespace A061439.P11364002000044368998
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062941 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A061439.P11364002000044368998

namespace A061439

/-- `∑[A062941(n+1)]-1` -/
def P11364002000044368998.Spec : Prop :=
  ∀ n, P11364002000044368998.a n = A061439 (n + 1)

end A061439

/-! ## A061439.P16994606128009289689

`A130080(2*n+3)-1`
-/

namespace A061439.P16994606128009289689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130080 (2 * n + 3) - 1

end

end A061439.P16994606128009289689

namespace A061439

/-- `A130080(2*n+3)-1` -/
def P16994606128009289689.Spec : Prop :=
  ∀ n, P16994606128009289689.a n = A061439 (n + 1)

end A061439

/-! ## A061439.P18310446068010181779

`A083380(n+1)+A083378(n+2)-A083380(n+2)`
-/

namespace A061439.P18310446068010181779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083380 (n + 1) + (A083378 (n + 2) - A083380 (n + 2))

end

end A061439.P18310446068010181779

namespace A061439

/-- `A083380(n+1)+A083378(n+2)-A083380(n+2)` -/
def P18310446068010181779.Spec : Prop :=
  ∀ n, P18310446068010181779.a n = A061439 (n + 1)

end A061439

/-!
# A061440: 

The programs for A061440, there is no canonical definition to state claims against.
-/

/-! ## A061440.P4402203743128961627

`A000165(n+9)*A000165(n)`
-/

namespace A061440.P4402203743128961627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000165 (n + 9) * A000165 n

end

end A061440.P4402203743128961627

/-!
# A061441: 

The programs for A061441, there is no canonical definition to state claims against.
-/

/-! ## A061441.P5183556624140588132

`A000165(n+10)*A000165(n)`
-/

namespace A061441.P5183556624140588132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000165 (n + 10) * A000165 n

end

end A061441.P5183556624140588132

/-!
# A061442: Numbers k such that the Lucas Aurifeuillian primitive part A of Lucas(k) is prime.

The programs for A061442, there is no canonical definition to state claims against.
-/

/-! ## A061442.P14236360617956604662

`A017329(lt[A304716(n+1), n+1])`
-/

namespace A061442.P14236360617956604662
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304716 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017329 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A061442.P14236360617956604662

/-! ## A061442.P9962529630347231959

`A017329(lt[A326524(n), A003415(n)])`
-/

namespace A061442.P9962529630347231959
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326524 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017329 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A061442.P9962529630347231959

/-! ## A061442.P14127341070776720542

`A017329(lt[A000726(n), A023896(n+1)])`
-/

namespace A061442.P14127341070776720542
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000726 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023896 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017329 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A061442.P14127341070776720542

/-! ## A061442.P13852903646975302523

`A017329(lt[A144712(n+1), A002618(n+1)])`
-/

namespace A061442.P13852903646975302523
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144712 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002618 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017329 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A061442.P13852903646975302523

/-! ## A061442.P10382894552185176031

`A017329(lt[A048049(n+1), A301674(n)]+1)`
-/

namespace A061442.P10382894552185176031
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048049 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301674 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017329 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1)

end

end A061442.P10382894552185176031

/-!
# A061443: Numbers k such that the Lucas Aurifeuillian primitive part B of Lucas(k) is prime.

The programs for A061443, there is no canonical definition to state claims against.
-/

/-! ## A061443.P1568506952215042679

`lt[A020655(A070291(n+5)), A056239(n+1)]`
-/

namespace A061443.P1568506952215042679
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020655 (A070291 (n + 5)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A061443.P1568506952215042679

/-! ## A061443.P4962432956138986903

`A328983(A162843(n+1))`
-/

namespace A061443.P4962432956138986903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328983 (A162843 (n + 1)).toNat

end

end A061443.P4962432956138986903

/-! ## A061443.P4574848480523378124

`filter[A017329(n), A104108(#)]`
-/

namespace A061443.P4574848480523378124
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017329 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A104108 (f1 j).toNat = 1) n)

end

end A061443.P4574848480523378124

/-! ## A061443.P17753135081012969186

`∑[5*A000188(A028329(n))]`
-/

namespace A061443.P17753135081012969186
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A000188 (A028329 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A061443.P17753135081012969186

/-!
# A061446: Primitive part of Fibonacci(n).

The programs for A061446, the canonical program `A061446.P13544086601414576898` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A061446 has offset 1).

The definition of A061446 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 480 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A061446.P13544086601414576898

`∑[A212804(n)]/A105602(n+1)`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A061446

/-- `∑[A212804(n)]/A105602(n+1)` -/
def P13544086601414576898.Spec : Prop :=
  ∀ n, P13544086601414576898.a n = (A061446 (n + 1) : ℚ)

end A061446

/-! ## A061446.P725324168898832953

`A000045(n+1)/A105602(n+1)`
-/

namespace A061446.P725324168898832953
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000045 (n + 1) : ℚ) / (A105602 (n + 1) : ℚ)

end

end A061446.P725324168898832953

namespace A061446

/-- `A000045(n+1)/A105602(n+1)` -/
def P725324168898832953.Spec : Prop :=
  ∀ n, P725324168898832953.a n = (A061446 (n + 1) : ℚ)

end A061446

/-! ## A061446.P14109411528624355721

`A212804(n+2)/A105602(n+1)`
-/

namespace A061446.P14109411528624355721
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A212804 (n + 2) : ℚ) / (A105602 (n + 1) : ℚ)

end

end A061446.P14109411528624355721

namespace A061446

/-- `A212804(n+2)/A105602(n+1)` -/
def P14109411528624355721.Spec : Prop :=
  ∀ n, P14109411528624355721.a n = (A061446 (n + 1) : ℚ)

end A061446

/-! ## A061446.P12236421630416753018

`(A001060(n)-A000285(n))/A105602(n+1)`
-/

namespace A061446.P12236421630416753018
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001060 n - A000285 n : ℚ) / (A105602 (n + 1) : ℚ)

end

end A061446.P12236421630416753018

namespace A061446

/-- `(A001060(n)-A000285(n))/A105602(n+1)` -/
def P12236421630416753018.Spec : Prop :=
  ∀ n, P12236421630416753018.a n = (A061446 (n + 1) : ℚ)

end A061446

/-! ## A061446.P2151067686824639836

`A036355(A000096(n)-n)/A105602(n+1)`
-/

namespace A061446.P2151067686824639836
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A036355 (A000096 n - (n : ℤ)).toNat : ℚ) / (A105602 (n + 1) : ℚ)

end

end A061446.P2151067686824639836

namespace A061446

/-- `A036355(A000096(n)-n)/A105602(n+1)` -/
def P2151067686824639836.Spec : Prop :=
  ∀ n, P2151067686824639836.a n = (A061446 (n + 1) : ℚ)

end A061446

/-! ## A061446.P5689881245792811212

`A036355(A000096(n))/A105602(n+1)`
-/

namespace A061446.P5689881245792811212
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A036355 (A000096 n).toNat : ℚ) / (A105602 (n + 1) : ℚ)

end

end A061446.P5689881245792811212

namespace A061446

/-- `A036355(A000096(n))/A105602(n+1)` -/
def P5689881245792811212.Spec : Prop :=
  ∀ n, P5689881245792811212.a n = (A061446 (n + 1) : ℚ)

end A061446

/-!
# A061447: Primitive part of Lucas(n).

The programs for A061447, the canonical program `A061447.P2905474837907043685` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A061447 has offset 1).

The definition of A061447 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 243 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A061447.P10426911819448689003

`A000032(n+1)/A126015(n+1)`
-/

namespace A061447.P10426911819448689003
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000032 (n + 1) : ℚ) / (A126015 (n + 1) : ℚ)

end

end A061447.P10426911819448689003

namespace A061447

/-- `A000032(n+1)/A126015(n+1)` -/
def P10426911819448689003.Spec : Prop :=
  ∀ n, P10426911819448689003.a n = (A061447 (n + 1) : ℚ)

end A061447

/-! ## A061447.P15673394605279627167

`A000204(n+1)/A126015(n+1)`
-/

namespace A061447.P15673394605279627167
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000204 (n + 1) : ℚ) / (A126015 (n + 1) : ℚ)

end

end A061447.P15673394605279627167

namespace A061447

/-- `A000204(n+1)/A126015(n+1)` -/
def P15673394605279627167.Spec : Prop :=
  ∀ n, P15673394605279627167.a n = (A061447 (n + 1) : ℚ)

end A061447

/-! ## A061447.P2905474837907043685

`A061446(2*(n+1))`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A061447

/-- `A061446(2*(n+1))` -/
def P2905474837907043685.Spec : Prop :=
  ∀ n, P2905474837907043685.a n = A061447 (n + 1)

theorem P2905474837907043685.correct : P2905474837907043685.Spec := by
  intro n
  simp only [A061447, Nat.add_sub_cancel]

end A061447

/-! ## A061447.P10102447271682196308

`or(A000007(n), A061446(A103517(n)))`
-/

namespace A061447.P10102447271682196308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A061446 (A103517 n).toNat)

end

end A061447.P10102447271682196308

namespace A061447

/-- `or(A000007(n), A061446(A103517(n)))` -/
def P10102447271682196308.Spec : Prop :=
  ∀ n, P10102447271682196308.a n = A061447 (n + 1)

end A061447

/-! ## A061447.P3690861319416026396

`or(A061446(A103517(n)), A063524(n))`
-/

namespace A061447.P3690861319416026396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A061446 (A103517 n).toNat) (A063524 n)

end

end A061447.P3690861319416026396

namespace A061447

/-- `or(A061446(A103517(n)), A063524(n))` -/
def P3690861319416026396.Spec : Prop :=
  ∀ n, P3690861319416026396.a n = A061447 (n + 1)

end A061447

/-! ## A061447.P10471802920716368637

`A061446(A103517(n))+A000007(n+1)`
-/

namespace A061447.P10471802920716368637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061446 (A103517 n).toNat + A000007 (n + 1)

end

end A061447.P10471802920716368637

namespace A061447

/-- `A061446(A103517(n))+A000007(n+1)` -/
def P10471802920716368637.Spec : Prop :=
  ∀ n, P10471802920716368637.a n = A061447 (n + 1)

end A061447

/-! ## A061447.P3381655894327796040

`A061446(A103517(n))-A063524(2*n)`
-/

namespace A061447.P3381655894327796040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061446 (A103517 n).toNat - A063524 (2 * n)

end

end A061447.P3381655894327796040

namespace A061447

/-- `A061446(A103517(n))-A063524(2*n)` -/
def P3381655894327796040.Spec : Prop :=
  ∀ n, P3381655894327796040.a n = A061447 (n + 1)

end A061447

/-! ## A061447.P525782143502325096

`A061446(n+2+n)^A265575(A000010(n+1))`
-/

namespace A061447.P525782143502325096
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A061446 (n + 2 + n) : ℚ) ^ (A265575 (A000010 (n + 1)).toNat : ℤ)

end

end A061447.P525782143502325096

namespace A061447

/-- `A061446(n+2+n)^A265575(A000010(n+1))` -/
def P525782143502325096.Spec : Prop :=
  ∀ n, P525782143502325096.a n = (A061447 (n + 1) : ℚ)

end A061447

/-! ## A061447.P15209887713056648836

`A063524(n)+A061446(A103517(n)-A063524(n))`
-/

namespace A061447.P15209887713056648836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063524 n + A061446 (A103517 n - A063524 n).toNat

end

end A061447.P15209887713056648836

namespace A061447

/-- `A063524(n)+A061446(A103517(n)-A063524(n))` -/
def P15209887713056648836.Spec : Prop :=
  ∀ n, P15209887713056648836.a n = A061447 (n + 1)

end A061447

/-! ## A061447.P2491845395462140115

`(A000045(2*n+1)+A000045(2*n))/A105602(2*(n+1))`
-/

namespace A061447.P2491845395462140115
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000045 (2 * n + 1) + A000045 (2 * n) : ℚ) / (A105602 (2 * (n + 1)) : ℚ)

end

end A061447.P2491845395462140115

namespace A061447

/-- `(A000045(2*n+1)+A000045(2*n))/A105602(2*(n+1))` -/
def P2491845395462140115.Spec : Prop :=
  ∀ n, P2491845395462140115.a n = (A061447 (n + 1) : ℚ)

end A061447

/-! ## A061447.P7303693469240569989

`A072183(A022998(n+1))`
-/

namespace A061447.P7303693469240569989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072183 (A022998 (n + 1)).toNat

end

end A061447.P7303693469240569989

namespace A061447

/-- `A072183(A022998(n+1))` -/
def P7303693469240569989.Spec : Prop :=
  ∀ n, P7303693469240569989.a n = A061447 (n + 1)

end A061447

/-! ## A061447.P2351565641856612760

`A072183(A257088(n+1))`
-/

namespace A061447.P2351565641856612760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072183 (A257088 (n + 1)).toNat

end

end A061447.P2351565641856612760

namespace A061447

/-- `A072183(A257088(n+1))` -/
def P2351565641856612760.Spec : Prop :=
  ∀ n, P2351565641856612760.a n = A061447 (n + 1)

end A061447

/-! ## A061447.P15451885567691012618

`(A381721(n+1)-A380823(n+1))/A126015(n+1)`
-/

namespace A061447.P15451885567691012618
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A381721 (n + 1) - A380823 (n + 1) : ℚ) / (A126015 (n + 1) : ℚ)

end

end A061447.P15451885567691012618

namespace A061447

/-- `(A381721(n+1)-A380823(n+1))/A126015(n+1)` -/
def P15451885567691012618.Spec : Prop :=
  ∀ n, P15451885567691012618.a n = (A061447 (n + 1) : ℚ)

end A061447

/-! ## A061447.P8335135182389704216

`(A382409(n+1)-A382379(n+1))/A126015(n+1)`
-/

namespace A061447.P8335135182389704216
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A382409 (n + 1) - A382379 (n + 1) : ℚ) / (A126015 (n + 1) : ℚ)

end

end A061447.P8335135182389704216

namespace A061447

/-- `(A382409(n+1)-A382379(n+1))/A126015(n+1)` -/
def P8335135182389704216.Spec : Prop :=
  ∀ n, P8335135182389704216.a n = (A061447 (n + 1) : ℚ)

end A061447

/-! ## A061447.P4684550467208208658

`(A001060(2*n+1)-A000285(2*n+1))/A105602(2*(n+1))`
-/

namespace A061447.P4684550467208208658
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001060 (2 * n + 1) - A000285 (2 * n + 1) : ℚ) / (A105602 (2 * (n + 1)) : ℚ)

end

end A061447.P4684550467208208658

namespace A061447

/-- `(A001060(2*n+1)-A000285(2*n+1))/A105602(2*(n+1))` -/
def P4684550467208208658.Spec : Prop :=
  ∀ n, P4684550467208208658.a n = (A061447 (n + 1) : ℚ)

end A061447

/-! ## A061447.P718772585246886929

`A380824(n+1)/(A126015(n+1)*A380823(n+1))`
-/

namespace A061447.P718772585246886929
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A380824 (n + 1) : ℚ) / (A126015 (n + 1) * A380823 (n + 1) : ℚ)

end

end A061447.P718772585246886929

namespace A061447

/-- `A380824(n+1)/(A126015(n+1)*A380823(n+1))` -/
def P718772585246886929.Spec : Prop :=
  ∀ n, P718772585246886929.a n = (A061447 (n + 1) : ℚ)

end A061447

/-!
# A061448: a(1) = 2; a(n+1) = smallest prime > a(n) with leading digit equal to final digit of a(n).

The programs for A061448, there is no canonical definition to state claims against.
-/

/-! ## A061448.P7391077025639547178

`A175565(A276089(n+1))`
-/

namespace A061448.P7391077025639547178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175565 (A276089 (n + 1)).toNat

end

end A061448.P7391077025639547178

/-!
# A061449: a(1) = 1; a(n+1) = smallest square > a(n) with leading digit equal to final digit of a(n) and final digit not 0.

The programs for A061449, there is no canonical definition to state claims against.
-/

/-! ## A061449.P14025844203880087313

`A163256(A117998(n))²`
-/

namespace A061449.P14025844203880087313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163256 (A117998 n).toNat ^ 2

end

end A061449.P14025844203880087313

/-! ## A061449.P18220380786132463813

`A334273(A055236(n))²`
-/

namespace A061449.P18220380786132463813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334273 (A055236 n).toNat ^ 2

end

end A061449.P18220380786132463813

/-!
# A061450: a(1) = 1; a(n+1) = smallest cube > a(n) with leading digit equal to final digit of a(n) and final digit not 0.

The programs for A061450, there is no canonical definition to state claims against.
-/

/-! ## A061450.P3384073323455485945

`A133820(A315702(2*n)+A153862(2*n+1))`
-/

namespace A061450.P3384073323455485945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133820 (A315702 (2 * n) + A153862 (2 * n + 1)).toNat

end

end A061450.P3384073323455485945

/-!
# A061452: n*bigomega(n)^n, where bigomega(n) is the number of prime divisors of n, counted with multiplicity.

The programs for A061452, the canonical program `A061452.P11760889921204026052` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A061452 has offset 1).

The definition of A061452 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 127 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A061452.P11760889921204026052

`(n+1)*∑{e}[n+1, #]^(n+1)`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A061452

/-- `(n+1)*∑{e}[n+1, #]^(n+1)` -/
def P11760889921204026052.Spec : Prop :=
  ∀ n, (P11760889921204026052.a n : ℤ) = A061452 (n + 1)

theorem P11760889921204026052.correct : P11760889921204026052.Spec := by
  intro n
  simp only [A061452, Nat.add_sub_cancel]

end A061452

/-! ## A061452.P7336914206654226773

`(n+1)*Δ[A022559(n)]^(n+1)`
-/

namespace A061452.P7336914206654226773
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022559 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (f1 (n + 1) - f1 n) ^ (n + 1)

end

end A061452.P7336914206654226773

namespace A061452

/-- `(n+1)*Δ[A022559(n)]^(n+1)` -/
def P7336914206654226773.Spec : Prop :=
  ∀ n, P7336914206654226773.a n = A061452 (n + 1)

end A061452

/-! ## A061452.P14920054289707022968

`(n+1)*A001222(n+1)^(n+1)`
-/

namespace A061452.P14920054289707022968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A001222 (n + 1) ^ (n + 1)

end

end A061452.P14920054289707022968

namespace A061452

/-- `(n+1)*A001222(n+1)^(n+1)` -/
def P14920054289707022968.Spec : Prop :=
  ∀ n, P14920054289707022968.a n = A061452 (n + 1)

end A061452

/-! ## A061452.P6122764110698449552

`(n+1)*A252736(2*(n+1))^(n+1)`
-/

namespace A061452.P6122764110698449552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A252736 (2 * (n + 1)) ^ (n + 1)

end

end A061452.P6122764110698449552

namespace A061452

/-- `(n+1)*A252736(2*(n+1))^(n+1)` -/
def P6122764110698449552.Spec : Prop :=
  ∀ n, P6122764110698449552.a n = A061452 (n + 1)

end A061452

/-! ## A061452.P2911361744630087908

`(n+1)*A130836(A000124(n))^(n+1)`
-/

namespace A061452.P2911361744630087908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A130836 (A000124 n).toNat ^ (n + 1)

end

end A061452.P2911361744630087908

namespace A061452

/-- `(n+1)*A130836(A000124(n))^(n+1)` -/
def P2911361744630087908.Spec : Prop :=
  ∀ n, P2911361744630087908.a n = A061452 (n + 1)

end A061452

/-! ## A061452.P12568788037155617229

`(n+1)*A000720(A105560(n+1))^(n+1)`
-/

namespace A061452.P12568788037155617229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A000720 (A105560 (n + 1)).toNat ^ (n + 1)

end

end A061452.P12568788037155617229

namespace A061452

/-- `(n+1)*A000720(A105560(n+1))^(n+1)` -/
def P12568788037155617229.Spec : Prop :=
  ∀ n, P12568788037155617229.a n = A061452 (n + 1)

end A061452

/-! ## A061452.P1945952700638996515

`(n+1)*A051904(A061142(n+1))^(n+1)`
-/

namespace A061452.P1945952700638996515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A051904 (A061142 (n + 1)).toNat ^ (n + 1)

end

end A061452.P1945952700638996515

namespace A061452

/-- `(n+1)*A051904(A061142(n+1))^(n+1)` -/
def P1945952700638996515.Spec : Prop :=
  ∀ n, P1945952700638996515.a n = A061452 (n + 1)

end A061452

/-!
# A061453: a(n) = numerator of the continued fraction [1; 2^2, 3^3, ..., n^n].

The programs for A061453, the canonical program `A061453.P6472466289225079457` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A061453 has offset 1).

The definition of A061453 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A061453.P6472466289225079457

`(n+1)^(n+1)*a(n-1)+a(n-2)` with `a(0)=1, a(1)=5`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A061453

/-- `(n+1)^(n+1)*a(n-1)+a(n-2)` -/
def P6472466289225079457.Spec : Prop :=
  ∀ n, (P6472466289225079457.a n : ℤ) = A061453 (n + 1)

theorem P6472466289225079457.correct : P6472466289225079457.Spec := by
  intro n
  simp only [A061453, Nat.add_sub_cancel]

end A061453

/-!
# A061454: a(n) = denominator of the continued fraction [1; 2^2, 3^3, ..., n^n].

The programs for A061454, the canonical program `A061454.P3741520028590174131` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A061454 has offset 1).

The definition of A061454 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A061454.P3741520028590174131

`(n+1)^(n+1)*a(n-1)+a(n-2)` with `a(0)=1, a(1)=4`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A061454

/-- `(n+1)^(n+1)*a(n-1)+a(n-2)` -/
def P3741520028590174131.Spec : Prop :=
  ∀ n, (P3741520028590174131.a n : ℤ) = A061454 (n + 1)

theorem P3741520028590174131.correct : P3741520028590174131.Spec := by
  intro n
  simp only [A061454, Nat.add_sub_cancel]

end A061454

/-!
# A061455: Triangular numbers whose digit reversal is also a triangular number.

The programs for A061455, there is no canonical definition to state claims against.
-/

/-! ## A061455.P16615410139732162592

`∪[A003098(n+1), A069673(n+1)]`
-/

namespace A061455.P16615410139732162592
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003098 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069673 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A061455.P16615410139732162592

/-! ## A061455.P4001005040726812026

`eq[A010054(A004086(n)), A038763(n)]`
-/

namespace A061455.P4001005040726812026
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 (A004086 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038763 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A061455.P4001005040726812026

/-! ## A061455.P10631856934241360150

`eq[A013610(n), A059268(A004086(n))]`
-/

namespace A061455.P10631856934241360150
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013610 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 (A004086 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A061455.P10631856934241360150

/-! ## A061455.P12754880029149243335

`eq[A010054(A004086(n)), A074909(n)]`
-/

namespace A061455.P12754880029149243335
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 (A004086 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074909 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A061455.P12754880029149243335

/-! ## A061455.P8125947193150045769

`eq[A002260(n+1), A010054(A004086(n))]`
-/

namespace A061455.P8125947193150045769
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 (A004086 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A061455.P8125947193150045769

/-!
# A061457: Squares whose reversal is also a square.

The programs for A061457, there is no canonical definition to state claims against.
-/

/-! ## A061457.P16898749169574454944

`A102859(n+1)²`
-/

namespace A061457.P16898749169574454944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102859 (n + 1) ^ 2

end

end A061457.P16898749169574454944

/-! ## A061457.P14574668007035698995

`A102859(n+1)^A020639(2*(n+1))`
-/

namespace A061457.P14574668007035698995
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A102859 (n + 1) : ℚ) ^ (A020639 (2 * (n + 1)) : ℤ)

end

end A061457.P14574668007035698995

/-! ## A061457.P5169471475413966937

`A102859(n+1)^A001222(A001358(n+1))`
-/

namespace A061457.P5169471475413966937
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A102859 (n + 1) : ℚ) ^ (A001222 (A001358 (n + 1)).toNat : ℤ)

end

end A061457.P5169471475413966937

/-! ## A061457.P3958399451038213795

`(A102859(n+1)+A000007(n))*A102859(n+1)`
-/

namespace A061457.P3958399451038213795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A102859 (n + 1) + A000007 n) * A102859 (n + 1)

end

end A061457.P3958399451038213795

/-! ## A061457.P704610513166153759

`A102859(n+1)^A000005(A001747(n+2)/2)`
-/

namespace A061457.P704610513166153759
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A102859 (n + 1) : ℚ) ^ (A000005 (SequenceMachineLib.roundAway ((A001747 (n + 2) : ℚ) / 2)).toNat : ℤ)

end

end A061457.P704610513166153759

/-! ## A061457.P2599114846183571237

`A102859(A008619(2*n))*A102859(n+1)`
-/

namespace A061457.P2599114846183571237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102859 (A008619 (2 * n)).toNat * A102859 (n + 1)

end

end A061457.P2599114846183571237

/-! ## A061457.P11830197915183609363

`∪[A002779(n+1), A161902(n+1)]`
-/

namespace A061457.P11830197915183609363
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002779 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161902 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A061457.P11830197915183609363

/-! ## A061457.P14643464149744825210

`∪[A156317(n+1), A161902(n+1)]`
-/

namespace A061457.P14643464149744825210
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156317 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161902 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A061457.P14643464149744825210

/-! ## A061457.P8342177128508466047

`A000290(A102859(xor(1, xor(1, n+1))))`
-/

namespace A061457.P8342177128508466047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (A102859 (Nat.xor 1 (Nat.xor 1 (n + 1)))).toNat

end

end A061457.P8342177128508466047

/-! ## A061457.P1345614247941537429

`A000290(A102859(gcd(n, n+1)+n))`
-/

namespace A061457.P1345614247941537429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (A102859 (Nat.gcd n (n + 1) + n)).toNat

end

end A061457.P1345614247941537429

/-! ## A061457.P1910003108357405645

`A000290(A102859(n+1)%A060998(n+1))`
-/

namespace A061457.P1910003108357405645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (Int.tmod (A102859 (n + 1)) (A060998 (n + 1))).toNat

end

end A061457.P1910003108357405645

/-! ## A061457.P18296083420259763375

`A000290(2*A102859(n+1)-A102859(n+1))`
-/

namespace A061457.P18296083420259763375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (2 * A102859 (n + 1) - A102859 (n + 1)).toNat

end

end A061457.P18296083420259763375

/-! ## A061457.P6192220196315971295

`∩[A356417(n+1), n²]`
-/

namespace A061457.P6192220196315971295
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356417 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A061457.P6192220196315971295

/-! ## A061457.P6696112186630045714

`∩[A000290(n), A356417(n+1)]`
-/

namespace A061457.P6696112186630045714
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356417 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A061457.P6696112186630045714

/-! ## A061457.P12427056052508528096

`∩[A188915(n), A356417(n+1)]`
-/

namespace A061457.P12427056052508528096
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188915 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356417 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A061457.P12427056052508528096

/-! ## A061457.P2962266217290729931

`∩[A306273(n+1), n²]`
-/

namespace A061457.P2962266217290729931
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306273 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A061457.P2962266217290729931

/-! ## A061457.P3853582833579812655

`∩[A000290(n), A306273(n+1)]`
-/

namespace A061457.P3853582833579812655
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306273 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A061457.P3853582833579812655

/-!
# A061458: Cubes whose digit reversal is also a cube.

The programs for A061458, there is no canonical definition to state claims against.
-/

/-! ## A061458.P12501063378224389495

`A000578(∪[A002780(n+1), A069494(n+1)])`
-/

namespace A061458.P12501063378224389495
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002780 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069494 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A061458.P12501063378224389495

/-! ## A061458.P1074248804811610001

`A000578(A069494(n+1)%A099804(n+1))`
-/

namespace A061458.P1074248804811610001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 (Int.tmod (A069494 (n + 1)) (A099804 (n + 1))).toNat

end

end A061458.P1074248804811610001

/-! ## A061458.P2255017544671004744

`A132792(A008805(n))+A000578(A069494(n+1))`
-/

namespace A061458.P2255017544671004744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132792 (A008805 n).toNat + A000578 (A069494 (n + 1)).toNat

end

end A061458.P2255017544671004744

/-! ## A061458.P8150321700231516594

`A000578(A069494(n+1))^A014963(A252695(n+1))`
-/

namespace A061458.P8150321700231516594
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000578 (A069494 (n + 1)).toNat : ℚ) ^ (A014963 (A252695 (n + 1)).toNat : ℤ)

end

end A061458.P8150321700231516594

/-! ## A061458.P5584710562602423443

`A000578(A069494(n+1))*A108317(A000040(n+1)-1)`
-/

namespace A061458.P5584710562602423443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 (A069494 (n + 1)).toNat * A108317 (A000040 (n + 1) - 1).toNat

end

end A061458.P5584710562602423443

/-!
# A061459: Squares which produce squares when the leading digit is moved to the end.

The programs for A061459, there is no canonical definition to state claims against.
-/

/-! ## A061459.P17414690279912815851

`∩[A102837(n+1), n²]`
-/

namespace A061459.P17414690279912815851
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102837 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A061459.P17414690279912815851

/-! ## A061459.P13497147646852061012

`∩[A000290(n), A102837(n+1)]`
-/

namespace A061459.P13497147646852061012
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102837 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A061459.P13497147646852061012

/-! ## A061459.P14318333626100896688

`∩[∑[A005408(n)], A102837(n+1)]`
-/

namespace A061459.P14318333626100896688
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102837 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f3 j = (x : ℤ)) n

end

end A061459.P14318333626100896688

/-! ## A061459.P15078258089417427846

`∩[A034793(n+1), A102837(n+1)]`
-/

namespace A061459.P15078258089417427846
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034793 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102837 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A061459.P15078258089417427846

/-! ## A061459.P5076571886163103501

`filter[A102837(n+1), A010052(#)]`
-/

namespace A061459.P5076571886163103501
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102837 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010052 (f1 j).toNat = 1) n)

end

end A061459.P5076571886163103501

/-!
# A061460: Cubes which produce cubes when the leading digit is moved to the end.

The programs for A061460, there is no canonical definition to state claims against.
-/

/-! ## A061460.P13667341723674370791

`A000578(∩[A003592(n+1), A080288(n+1)])`
-/

namespace A061460.P13667341723674370791
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003592 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080288 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A061460.P13667341723674370791

/-!
# A061461: Primes which produce primes when the leading digit is moved to the end.

The programs for A061461, there is no canonical definition to state claims against.
-/

/-! ## A061461.P6861579184999274242

`p?[A097312(n+1)]`
-/

namespace A061461.P6861579184999274242
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097312 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A061461.P6861579184999274242

/-! ## A061461.P14469963680817892222

`∩[A000040(n+1), A097312(n+1)]`
-/

namespace A061461.P14469963680817892222
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097312 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A061461.P14469963680817892222

/-! ## A061461.P863767075483503638

`∩[A008578(n+1), A097312(n+1)]`
-/

namespace A061461.P863767075483503638
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097312 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A061461.P863767075483503638

/-! ## A061461.P6769329678369451675

`∩[A046022(n+1), A097312(n+1)]`
-/

namespace A061461.P6769329678369451675
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046022 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097312 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A061461.P6769329678369451675

/-! ## A061461.P12334789254859995321

`∩[A051948(n+1), A097312(n+1)]`
-/

namespace A061461.P12334789254859995321
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051948 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097312 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A061461.P12334789254859995321

/-! ## A061461.P13702614598134431997

`∩[A053813(n+1), A097312(n+1)]`
-/

namespace A061461.P13702614598134431997
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053813 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097312 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A061461.P13702614598134431997

/-! ## A061461.P1228708265462579085

`∩[A062972(n+1), A097312(n+1)]`
-/

namespace A061461.P1228708265462579085
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062972 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097312 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A061461.P1228708265462579085

/-! ## A061461.P4707477090726277718

`∩[A066050(n+1), A097312(n+1)]`
-/

namespace A061461.P4707477090726277718
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066050 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097312 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A061461.P4707477090726277718

/-! ## A061461.P12881865003448212414

`∩[A067126(n+1), A097312(n+1)]`
-/

namespace A061461.P12881865003448212414
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067126 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097312 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A061461.P12881865003448212414

/-! ## A061461.P12669044289505255544

`∩[A097312(n+1), A116974(n+1)]`
-/

namespace A061461.P12669044289505255544
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097312 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116974 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A061461.P12669044289505255544

/-! ## A061461.P1413785891112918494

`∩[A097312(n+1), A158611(n+1)]`
-/

namespace A061461.P1413785891112918494
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097312 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158611 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A061461.P1413785891112918494

/-! ## A061461.P4851295124097484775

`∩[A097312(n+1), A175787(n+1)]`
-/

namespace A061461.P4851295124097484775
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097312 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175787 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A061461.P4851295124097484775

/-! ## A061461.P17966700023967512032

`∩[A097312(n+1), A182986(n+1)]`
-/

namespace A061461.P17966700023967512032
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097312 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A061461.P17966700023967512032

/-! ## A061461.P1206275605738620457

`∩[A348283(n+1), A097312(n+1)]`
-/

namespace A061461.P1206275605738620457
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348283 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097312 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A061461.P1206275605738620457

/-! ## A061461.P5840275233651000800

`filter[A097312(n+1), A010051(#)]`
-/

namespace A061461.P5840275233651000800
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097312 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A061461.P5840275233651000800

/-! ## A061461.P12912816759649734920

`filter[A097312(n+1), A323152(#)]`
-/

namespace A061461.P12912816759649734920
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097312 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323152 (f1 j).toNat = 1) n)

end

end A061461.P12912816759649734920

/-! ## A061461.P9950954735897711933

`filter[A097312(n+1), A323153(#)]`
-/

namespace A061461.P9950954735897711933
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097312 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323153 (f1 j).toNat = 1) n)

end

end A061461.P9950954735897711933

/-! ## A061461.P7284418258397040604

`∩[A097312(n+1), A106843(n+1)]`
-/

namespace A061461.P7284418258397040604
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097312 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106843 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A061461.P7284418258397040604

/-! ## A061461.P10557270711739280157

`filter[A097312(n+1), A080339(#)]`
-/

namespace A061461.P10557270711739280157
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097312 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080339 (f1 j).toNat = 1) n)

end

end A061461.P10557270711739280157

/-! ## A061461.P17731997660020529031

`∩[A097312(n+1), A166070(n+1)]`
-/

namespace A061461.P17731997660020529031
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097312 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166070 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A061461.P17731997660020529031

/-!
# A061462: The exact power of 2 that divides the n-th Bell number (A000110). Has period 12.

The programs for A061462, the canonical program `A061462.P17162840585742151517` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A061462 has offset 0).

The definition of A061462 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A061462.P17162840585742151517

`gcd(4, gcd(2, n+1)-∑[n%3])`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A061462

/-- `gcd(4, gcd(2, n+1)-∑[n%3])` -/
def P17162840585742151517.Spec : Prop :=
  ∀ n, (P17162840585742151517.a n : ℤ) = A061462 n

theorem P17162840585742151517.correct : P17162840585742151517.Spec := by
  intro n
  simp only [A061462]

end A061462

/-!
# A061463: Numerator of 1 + 1/(2^2) + 1/(3^3) + ... 1/(n^n).

The programs for A061463, there is no canonical definition to state claims against.
-/

/-! ## A061463.P1177169530170955133

`A061464(n)/∏[A000312(n)]*A279017(n)`
-/

namespace A061463.P1177169530170955133
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000312 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A061464 n : ℚ) / ((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) * (A279017 n : ℚ)

end

end A061463.P1177169530170955133

/-!
# A061464: Denominator of 1/(1^1) + 1/(2^2) + 1/(3^3) + ... 1/(n^n).

The programs for A061464, there is no canonical definition to state claims against.
-/

/-! ## A061464.P6306757777892330479

`A107048(n)/A232597(A060632(n))`
-/

namespace A061464.P6306757777892330479
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A107048 n : ℚ) / (A232597 (A060632 n).toNat : ℚ)

end

end A061464.P6306757777892330479

/-! ## A061464.P5095436635348792433

`A107048(n)/A332741(A143603(n+1))`
-/

namespace A061464.P5095436635348792433
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A107048 n : ℚ) / (A332741 (A143603 (n + 1)).toNat : ℚ)

end

end A061464.P5095436635348792433

/-! ## A061464.P17344410915204711321

`A107048(n)/A079901(A158497(n+2)-1)`
-/

namespace A061464.P17344410915204711321
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A107048 n : ℚ) / (A079901 (A158497 (n + 2) - 1).toNat : ℚ)

end

end A061464.P17344410915204711321

/-!
# A061465: a(n) = floor(Sum_{k=1..n} sqrt(2k-1)).

The programs for A061465, the canonical program `A061465.P3147426338817410127` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A061465 has offset 1).

The definition of A061465 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3232 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A061465.P3147426338817410127

`floor(∑[sqrt(Δ[n²])])`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A061465

/-- `floor(∑[sqrt(Δ[n²])])` -/
def P3147426338817410127.Spec : Prop :=
  ∀ n, P3147426338817410127.a n = A061465 (n + 1)

theorem P3147426338817410127.correct : P3147426338817410127.Spec := by
  intro n
  simp only [A061465, Nat.add_sub_cancel]

end A061465

/-! ## A061465.P15881577897718027791

`floor(∑[sqrt(2*n+1)])%∑[n+3]`
-/

namespace A061465.P15881577897718027791
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (2 * n + 1 : ℝ)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋ ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

end

end A061465.P15881577897718027791

namespace A061465

/-- `floor(∑[sqrt(2*n+1)])%∑[n+3]` -/
def P15881577897718027791.Spec : Prop :=
  ∀ n, P15881577897718027791.a n = A061465 (n + 1)

end A061465

/-! ## A061465.P14269874249561754083

`A000027(floor(∑[sqrt(2*n+1)]))`
-/

namespace A061465.P14269874249561754083
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (2 * n + 1 : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋.toNat

end

end A061465.P14269874249561754083

namespace A061465

/-- `A000027(floor(∑[sqrt(2*n+1)]))` -/
def P14269874249561754083.Spec : Prop :=
  ∀ n, P14269874249561754083.a n = A061465 (n + 1)

end A061465

/-! ## A061465.P11479959993431262229

`floor(∑[sqrt(n+1+n)])/A000203(((-1)^n)²)`
-/

namespace A061465.P11479959993431262229
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (n + 1 + n : ℝ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (⌊∑ j ∈ Finset.range (n + 1), f1 j⌋ : ℚ) / (A000203 (((-1) ^ n) ^ 2).toNat : ℚ)

end

end A061465.P11479959993431262229

namespace A061465

/-- `floor(∑[sqrt(n+1+n)])/A000203(((-1)^n)²)` -/
def P11479959993431262229.Spec : Prop :=
  ∀ n, P11479959993431262229.a n = (A061465 (n + 1) : ℚ)

end A061465

/-! ## A061465.P1140511780141678788

`A028310(floor(∑[sqrt(2*n+1)]))`
-/

namespace A061465.P1140511780141678788
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (2 * n + 1 : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋.toNat

end

end A061465.P1140511780141678788

namespace A061465

/-- `A028310(floor(∑[sqrt(2*n+1)]))` -/
def P1140511780141678788.Spec : Prop :=
  ∀ n, P1140511780141678788.a n = A061465 (n + 1)

end A061465

/-! ## A061465.P650893150503958336

`floor(∑[sqrt(n+1+n)])/A038500(n²+1)`
-/

namespace A061465.P650893150503958336
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (n + 1 + n : ℝ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (⌊∑ j ∈ Finset.range (n + 1), f1 j⌋ : ℚ) / (A038500 (n ^ 2 + 1) : ℚ)

end

end A061465.P650893150503958336

namespace A061465

/-- `floor(∑[sqrt(n+1+n)])/A038500(n²+1)` -/
def P650893150503958336.Spec : Prop :=
  ∀ n, P650893150503958336.a n = (A061465 (n + 1) : ℚ)

end A061465

/-!
# A061466: Product of primes prime(3*n+1), prime(3*n+2), prime(3*n+3).

The programs for A061466, the canonical program `A061466.P6591558170122978266` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A061466 has offset 0).

The definition of A061466 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A061466.P6591558170122978266

`A031336(n+1)*A031369(n+1)*A031377(n+1)`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A061466

/-- `A031336(n+1)*A031369(n+1)*A031377(n+1)` -/
def P6591558170122978266.Spec : Prop :=
  ∀ n, P6591558170122978266.a n = A061466 n

theorem P6591558170122978266.correct : P6591558170122978266.Spec := by
  intro n
  simp only [A061466]

end A061466

/-! ## A061466.P9001978412914340738

`A031336(n+1)*A091735(n+1)*A091738(n+1)`
-/

namespace A061466.P9001978412914340738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031336 (n + 1) * A091735 (n + 1) * A091738 (n + 1)

end

end A061466.P9001978412914340738

namespace A061466

/-- `A031336(n+1)*A091735(n+1)*A091738(n+1)` -/
def P9001978412914340738.Spec : Prop :=
  ∀ n, P9001978412914340738.a n = A061466 n

end A061466

/-! ## A061466.P3842175305965675258

`A046301(3*n+1)`
-/

namespace A061466.P3842175305965675258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046301 (3 * n + 1)

end

end A061466.P3842175305965675258

namespace A061466

/-- `A046301(3*n+1)` -/
def P3842175305965675258.Spec : Prop :=
  ∀ n, P3842175305965675258.a n = A061466 n

end A061466

/-! ## A061466.P3906436204281547903

`sqrt(A258155(3*n+1))`
-/

namespace A061466.P3906436204281547903
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A258155 (3 * n + 1) : ℝ)

end

end A061466.P3906436204281547903

namespace A061466

/-- `sqrt(A258155(3*n+1))` -/
def P3906436204281547903.Spec : Prop :=
  ∀ n, P3906436204281547903.a n = (A061466 n : ℝ)

end A061466

/-! ## A061466.P2184939718507722947

`A046301(n+1+n+n)^gcd(n, n+1)`
-/

namespace A061466.P2184939718507722947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046301 (n + 1 + n + n) ^ Nat.gcd n (n + 1)

end

end A061466.P2184939718507722947

namespace A061466

/-- `A046301(n+1+n+n)^gcd(n, n+1)` -/
def P2184939718507722947.Spec : Prop :=
  ∀ n, P2184939718507722947.a n = A061466 n

end A061466

/-! ## A061466.P9415644913793399545

`A065091(3*n+1)*A090076(3*n+1)`
-/

namespace A061466.P9415644913793399545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (3 * n + 1) * A090076 (3 * n + 1)

end

end A061466.P9415644913793399545

namespace A061466

/-- `A065091(3*n+1)*A090076(3*n+1)` -/
def P9415644913793399545.Spec : Prop :=
  ∀ n, P9415644913793399545.a n = A061466 n

end A061466

/-! ## A061466.P7499125198786368828

`A066116(3*(n+1))/A065091(3*n+1)`
-/

namespace A061466.P7499125198786368828
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A066116 (3 * (n + 1)) : ℚ) / (A065091 (3 * n + 1) : ℚ)

end

end A061466.P7499125198786368828

namespace A061466

/-- `A066116(3*(n+1))/A065091(3*n+1)` -/
def P7499125198786368828.Spec : Prop :=
  ∀ n, P7499125198786368828.a n = (A061466 n : ℚ)

end A061466

/-! ## A061466.P11421817444617092925

`gcd(A046302(3*n+1), A066116(3*(n+1)))`
-/

namespace A061466.P11421817444617092925
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A046302 (3 * n + 1)) (A066116 (3 * (n + 1)))

end

end A061466.P11421817444617092925

namespace A061466

/-- `gcd(A046302(3*n+1), A066116(3*(n+1)))` -/
def P11421817444617092925.Spec : Prop :=
  ∀ n, (P11421817444617092925.a n : ℤ) = A061466 n

end A061466

/-! ## A061466.P5347134820215040564

`gcd(A046326(3*n+1), A258155(3*n+1))`
-/

namespace A061466.P5347134820215040564
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A046326 (3 * n + 1)) (A258155 (3 * n + 1))

end

end A061466.P5347134820215040564

namespace A061466

/-- `gcd(A046326(3*n+1), A258155(3*n+1))` -/
def P5347134820215040564.Spec : Prop :=
  ∀ n, (P5347134820215040564.a n : ℤ) = A061466 n

end A061466

/-! ## A061466.P4367400063383929827

`lcm(A006094(3*n+1), A090076(3*n+1))`
-/

namespace A061466.P4367400063383929827
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A006094 (3 * n + 1)) (A090076 (3 * n + 1))

end

end A061466.P4367400063383929827

namespace A061466

/-- `lcm(A006094(3*n+1), A090076(3*n+1))` -/
def P4367400063383929827.Spec : Prop :=
  ∀ n, (P4367400063383929827.a n : ℤ) = A061466 n

end A061466

/-! ## A061466.P1444109641438400815

`(A152530(3*n+1)+A065091(3*n+1))*A065091(3*n+1)`
-/

namespace A061466.P1444109641438400815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A152530 (3 * n + 1) + A065091 (3 * n + 1)) * A065091 (3 * n + 1)

end

end A061466.P1444109641438400815

namespace A061466

/-- `(A152530(3*n+1)+A065091(3*n+1))*A065091(3*n+1)` -/
def P1444109641438400815.Spec : Prop :=
  ∀ n, P1444109641438400815.a n = A061466 n

end A061466

/-! ## A061466.P1041278634286480812

`(A034961(3*n+1)-A001043(3*n+1))*A006094(3*n+1)`
-/

namespace A061466.P1041278634286480812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A034961 (3 * n + 1) - A001043 (3 * n + 1)) * A006094 (3 * n + 1)

end

end A061466.P1041278634286480812

namespace A061466

/-- `(A034961(3*n+1)-A001043(3*n+1))*A006094(3*n+1)` -/
def P1041278634286480812.Spec : Prop :=
  ∀ n, P1041278634286480812.a n = A061466 n

end A061466

/-!
# A061467: Remainder when the larger of n and its reverse is divided by the smaller.

The programs for A061467, there is no canonical definition to state claims against.
-/

/-! ## A061467.P14479081939172965338

`A056964(n)%A068636(A028310(n))`
-/

namespace A061467.P14479081939172965338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A056964 n) (A068636 (A028310 n).toNat)

end

end A061467.P14479081939172965338

/-! ## A061467.P17919147749723221213

`(A004086(n)+n)%A068636(A028310(n))`
-/

namespace A061467.P17919147749723221213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004086 n + (n : ℤ)) (A068636 (A028310 n).toNat)

end

end A061467.P17919147749723221213

/-! ## A061467.P2023521928805842075

`(A160927(n+1)-1)%A068636(A028310(n))`
-/

namespace A061467.P2023521928805842075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A160927 (n + 1) - 1) (A068636 (A028310 n).toNat)

end

end A061467.P2023521928805842075

/-! ## A061467.P983045983424056766

`(2*n-A056965(n))%A068636(A028310(n))`
-/

namespace A061467.P983045983424056766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((2 * n : ℤ) - A056965 n) (A068636 (A028310 n).toNat)

end

end A061467.P983045983424056766

/-! ## A061467.P13255811036588316585

`(xor(n, A256756(n))+n)%A068636(A028310(n))`
-/

namespace A061467.P13255811036588316585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.xor (n : ℤ) (A256756 n) + (n : ℤ)) (A068636 (A028310 n).toNat)

end

end A061467.P13255811036588316585

/-! ## A061467.P12494016653053778969

`(A340479(n)+A066568(n))%A068636(A028310(n))`
-/

namespace A061467.P12494016653053778969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A340479 n + A066568 n) (A068636 (A028310 n).toNat)

end

end A061467.P12494016653053778969

/-! ## A061467.P13010425137986594644

`(A005408(n)-(A056965(n)+1))%A068636(A028310(n))`
-/

namespace A061467.P13010425137986594644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005408 n - (A056965 n + 1)) (A068636 (A028310 n).toNat)

end

end A061467.P13010425137986594644

/-! ## A061467.P10503272339964241372

`(1-(A024000(n)-A004086(n)))%A068636(A028310(n))`
-/

namespace A061467.P10503272339964241372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (1 - (A024000 n - A004086 n)) (A068636 (A028310 n).toNat)

end

end A061467.P10503272339964241372

/-! ## A061467.P5176986086688334014

`(A004093(5*n)+n)%A068636(A028310(n))`
-/

namespace A061467.P5176986086688334014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004093 (5 * n) + (n : ℤ)) (A068636 (A028310 n).toNat)

end

end A061467.P5176986086688334014

/-! ## A061467.P12437617655847279042

`(n-A001057(2*A004086(n)))%A068636(A028310(n))`
-/

namespace A061467.P12437617655847279042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((n : ℤ) - A001057 (2 * A004086 n).toNat) (A068636 (A028310 n).toNat)

end

end A061467.P12437617655847279042

/-! ## A061467.P6887637261584094276

`(A103168(A008706(2*n))+n)%A068636(A028310(n))`
-/

namespace A061467.P6887637261584094276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A103168 (A008706 (2 * n)).toNat + (n : ℤ)) (A068636 (A028310 n).toNat)

end

end A061467.P6887637261584094276

/-! ## A061467.P1332909318770097254

`A056967(A244112(n))%A028310(A004185(n))`
-/

namespace A061467.P1332909318770097254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A056967 (A244112 n).toNat) (A028310 (A004185 n).toNat)

end

end A061467.P1332909318770097254

/-! ## A061467.P11088026503642455218

`A004186(n)%A004185(A137734(n²))`
-/

namespace A061467.P11088026503642455218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004186 n) (A004185 (A137734 (n ^ 2)).toNat)

end

end A061467.P11088026503642455218

/-! ## A061467.P424124329235808962

`A052008(n)%A004185(A137735(n²))`
-/

namespace A061467.P424124329235808962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A052008 n) (A004185 (A137735 (n ^ 2)).toNat)

end

end A061467.P424124329235808962

/-! ## A061467.P16387851662783939537

`A151949(n)%A004185(A137735(n²))`
-/

namespace A061467.P16387851662783939537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A151949 n) (A004185 (A137735 (n ^ 2)).toNat)

end

end A061467.P16387851662783939537

/-!
# A061468: a(n) = d(n) + phi(n), where d(n) is the number of divisors (A000005) and phi(n) is Euler's totient function (A000010).

The programs for A061468, the canonical program `A061468.P9127133299873505687` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A061468 has offset 1).

The definition of A061468 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A061468.P7903591443365362098

`∑{d}[n+1, #]-(∑{d}[n+1, #-1]-(n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1])`
-/

namespace A061468.P7903591443365362098
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℚ) - (((∑ d ∈ Nat.divisors (f2 n), ((d : ℤ) - 1) : ℤ) : ℚ) - (n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f3 n), p : ℕ) : ℚ) * ((∏ p ∈ Nat.primeFactors (f4 n), ((p : ℤ) - 1) : ℤ) : ℚ))

end

end A061468.P7903591443365362098

namespace A061468

/-- `∑{d}[n+1, #]-(∑{d}[n+1, #-1]-(n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1])` -/
def P7903591443365362098.Spec : Prop :=
  ∀ n, P7903591443365362098.a n = (A061468 (n + 1) : ℚ)

end A061468

/-! ## A061468.P15386225441890010731

`A073757(n+1)+1`
-/

namespace A061468.P15386225441890010731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073757 (n + 1) + 1

end

end A061468.P15386225441890010731

namespace A061468

/-- `A073757(n+1)+1` -/
def P15386225441890010731.Spec : Prop :=
  ∀ n, P15386225441890010731.a n = A061468 (n + 1)

end A061468

/-! ## A061468.P9127133299873505687

`2-A045763(n+1)+n`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A061468

/-- `2-A045763(n+1)+n` -/
def P9127133299873505687.Spec : Prop :=
  ∀ n, P9127133299873505687.a n = A061468 (n + 1)

theorem P9127133299873505687.correct : P9127133299873505687.Spec := by
  intro n
  simp only [A061468, Nat.add_sub_cancel]

end A061468

/-! ## A061468.P13807282750350803404

`3-A046640(n+1)+n`
-/

namespace A061468.P13807282750350803404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - A046640 (n + 1) + (n : ℤ)

end

end A061468.P13807282750350803404

namespace A061468

/-- `3-A046640(n+1)+n` -/
def P13807282750350803404.Spec : Prop :=
  ∀ n, P13807282750350803404.a n = A061468 (n + 1)

theorem P13807282750350803404.correct : P13807282750350803404.Spec := by
  intro n
  simp only [A061468, Nat.add_sub_cancel, A061468.P13807282750350803404.a, A061468.P9127133299873505687.a, A045763, A045763.P10750903732750680223.a, A046640, A046640.P10355392584185486359.a, A016035, A016035.P3669285434667491181.f1, A016035.P3669285434667491181.f2, A016035.P3669285434667491181.a, A070824, A070824.P6802822783910193033.f1, A070824.P6802822783910193033.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A061468

/-! ## A061468.P785019192928357072

`(A083245(n+1)+n+3)/2`
-/

namespace A061468.P785019192928357072
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A083245 (n + 1) + (n + 3 : ℤ) : ℚ) / 2

end

end A061468.P785019192928357072

namespace A061468

/-- `(A083245(n+1)+n+3)/2` -/
def P785019192928357072.Spec : Prop :=
  ∀ n, P785019192928357072.a n = (A061468 (n + 1) : ℚ)

end A061468

/-! ## A061468.P12301187287542275671

`A000010(n+1)+∏{e}[n+1, #+1]`
-/

namespace A061468.P12301187287542275671
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) + ((∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1) : ℕ) : ℤ)

end

end A061468.P12301187287542275671

namespace A061468

/-- `A000010(n+1)+∏{e}[n+1, #+1]` -/
def P12301187287542275671.Spec : Prop :=
  ∀ n, P12301187287542275671.a n = A061468 (n + 1)

end A061468

/-! ## A061468.P14696975370565405782

`A000005(n+1)+(n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1]`
-/

namespace A061468.P14696975370565405782
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000005 (n + 1) : ℚ) + (n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) * ((∏ p ∈ Nat.primeFactors (f2 n), ((p : ℤ) - 1) : ℤ) : ℚ)

end

end A061468.P14696975370565405782

namespace A061468

/-- `A000005(n+1)+(n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1]` -/
def P14696975370565405782.Spec : Prop :=
  ∀ n, P14696975370565405782.a n = (A061468 (n + 1) : ℚ)

end A061468

/-! ## A061468.P14419109613409997895

`A020725(A073757(n+1))`
-/

namespace A061468.P14419109613409997895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A073757 (n + 1)).toNat

end

end A061468.P14419109613409997895

namespace A061468

/-- `A020725(A073757(n+1))` -/
def P14419109613409997895.Spec : Prop :=
  ∀ n, P14419109613409997895.a n = A061468 (n + 1)

end A061468

/-! ## A061468.P4207922846724659258

`Δ[A006218(n)+A005728(n)]`
-/

namespace A061468.P4207922846724659258
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n + A005728 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A061468.P4207922846724659258

namespace A061468

/-- `Δ[A006218(n)+A005728(n)]` -/
def P4207922846724659258.Spec : Prop :=
  ∀ n, P4207922846724659258.a n = A061468 (n + 1)

end A061468

/-! ## A061468.P8675130607983886865

`Δ[A054519(n)+A005728(n)]`
-/

namespace A061468.P8675130607983886865
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054519 n + A005728 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A061468.P8675130607983886865

namespace A061468

/-- `Δ[A054519(n)+A005728(n)]` -/
def P8675130607983886865.Spec : Prop :=
  ∀ n, P8675130607983886865.a n = A061468 (n + 1)

end A061468

/-! ## A061468.P12597247171354225279

`A000005(n+1)+Δ[A002088(n)]`
-/

namespace A061468.P12597247171354225279
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) + (f1 (n + 1) - f1 n)

end

end A061468.P12597247171354225279

namespace A061468

/-- `A000005(n+1)+Δ[A002088(n)]` -/
def P12597247171354225279.Spec : Prop :=
  ∀ n, P12597247171354225279.a n = A061468 (n + 1)

end A061468

/-! ## A061468.P8352329252816229244

`A000005(n+1)+Δ[A005728(n)]`
-/

namespace A061468.P8352329252816229244
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005728 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) + (f1 (n + 1) - f1 n)

end

end A061468.P8352329252816229244

namespace A061468

/-- `A000005(n+1)+Δ[A005728(n)]` -/
def P8352329252816229244.Spec : Prop :=
  ∀ n, P8352329252816229244.a n = A061468 (n + 1)

end A061468

/-! ## A061468.P1341710784377271442

`A000010(n+1)+Δ[A006218(n)]`
-/

namespace A061468.P1341710784377271442
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) + (f1 (n + 1) - f1 n)

end

end A061468.P1341710784377271442

namespace A061468

/-- `A000010(n+1)+Δ[A006218(n)]` -/
def P1341710784377271442.Spec : Prop :=
  ∀ n, P1341710784377271442.a n = A061468 (n + 1)

end A061468

/-! ## A061468.P7635932285194806859

`A000010(n+1)+Δ[A054519(n)]`
-/

namespace A061468.P7635932285194806859
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054519 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) + (f1 (n + 1) - f1 n)

end

end A061468.P7635932285194806859

namespace A061468

/-- `A000010(n+1)+Δ[A054519(n)]` -/
def P7635932285194806859.Spec : Prop :=
  ∀ n, P7635932285194806859.a n = A061468 (n + 1)

end A061468

/-! ## A061468.P5735709615131522244

`A000005(n+1)+A000010(n+1)`
-/

namespace A061468.P5735709615131522244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) + A000010 (n + 1)

end

end A061468.P5735709615131522244

namespace A061468

/-- `A000005(n+1)+A000010(n+1)` -/
def P5735709615131522244.Spec : Prop :=
  ∀ n, P5735709615131522244.a n = A061468 (n + 1)

end A061468

/-! ## A061468.P3277223131274393483

`A057859(n+1)+A033273(n+1)`
-/

namespace A061468.P3277223131274393483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057859 (n + 1) + A033273 (n + 1)

end

end A061468.P3277223131274393483

namespace A061468

/-- `A057859(n+1)+A033273(n+1)` -/
def P3277223131274393483.Spec : Prop :=
  ∀ n, P3277223131274393483.a n = A061468 (n + 1)

end A061468

/-! ## A061468.P15706841046731991709

`A082514(n+1)+A037228(n+1)`
-/

namespace A061468.P15706841046731991709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082514 (n + 1) + A037228 (n + 1)

end

end A061468.P15706841046731991709

namespace A061468

/-- `A082514(n+1)+A037228(n+1)` -/
def P15706841046731991709.Spec : Prop :=
  ∀ n, P15706841046731991709.a n = A061468 (n + 1)

theorem P15706841046731991709.correct : P15706841046731991709.Spec := by
  intro n
  simp only [A061468, Nat.add_sub_cancel, A061468.P15706841046731991709.a, A061468.P9127133299873505687.a, A037228, A037228.P8123356914219364626.a, A045763, A045763.P10750903732750680223.a, A082514, A082514.P13229630575248176506.a, A000005, A000005.P16091521709108585461.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A016035, A016035.P3669285434667491181.f1, A016035.P3669285434667491181.f2, A016035.P3669285434667491181.a, A070824, A070824.P6802822783910193033.f1, A070824.P6802822783910193033.a, A152993, A152993.P5731568849682305493.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A061468

/-! ## A061468.P2776400723045103067

`A063070(n+1)+A062011(n+1)`
-/

namespace A061468.P2776400723045103067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063070 (n + 1) + A062011 (n + 1)

end

end A061468.P2776400723045103067

namespace A061468

/-- `A063070(n+1)+A062011(n+1)` -/
def P2776400723045103067.Spec : Prop :=
  ∀ n, P2776400723045103067.a n = A061468 (n + 1)

end A061468

/-! ## A061468.P970277638143964286

`A083245(n+1)+A046640(n+1)`
-/

namespace A061468.P970277638143964286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083245 (n + 1) + A046640 (n + 1)

end

end A061468.P970277638143964286

namespace A061468

/-- `A083245(n+1)+A046640(n+1)` -/
def P970277638143964286.Spec : Prop :=
  ∀ n, P970277638143964286.a n = A061468 (n + 1)

end A061468

/-! ## A061468.P3791010009769008451

`A179179(n+1)+A163523(n+1)`
-/

namespace A061468.P3791010009769008451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179179 (n + 1) + A163523 (n + 1)

end

end A061468.P3791010009769008451

namespace A061468

/-- `A179179(n+1)+A163523(n+1)` -/
def P3791010009769008451.Spec : Prop :=
  ∀ n, P3791010009769008451.a n = A061468 (n + 1)

end A061468

/-!
# A061469: GCD of the amicable pairs: a(n) = gcd(A002025(n), A002046(n)).

The programs for A061469, there is no canonical definition to state claims against.
-/

/-! ## A061469.P17677252591514599573

`gcd(A002025(n+1), A002046(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A061469.P17677252591514599573
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002025 (n + 1)) (A002046 (n + 1))

end

end A061469.P17677252591514599573

/-! ## A061469.P10796719508107314001

`A002025(n+1)/A180326(n+1)`
-/

namespace A061469.P10796719508107314001
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002025 (n + 1) : ℚ) / (A180326 (n + 1) : ℚ)

end

end A061469.P10796719508107314001

/-! ## A061469.P9367001571709980149

`A002046(n+1)/A180327(n+1)`
-/

namespace A061469.P9367001571709980149
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002046 (n + 1) : ℚ) / (A180327 (n + 1) : ℚ)

end

end A061469.P9367001571709980149

/-! ## A061469.P12740727203600011959

`gcd(A066539(n+1)+A002025(n+1), A066539(n+1))`
-/

namespace A061469.P12740727203600011959
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A066539 (n + 1) + A002025 (n + 1)) (A066539 (n + 1))

end

end A061469.P12740727203600011959

/-! ## A061469.P9277496874995873601

`gcd(A180164(n+1)+A002025(n+1), A180164(n+1))`
-/

namespace A061469.P9277496874995873601
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A180164 (n + 1) + A002025 (n + 1)) (A180164 (n + 1))

end

end A061469.P9277496874995873601

/-! ## A061469.P11575718473593316241

`A259180(2*(n+1))/A180327(n+1)`
-/

namespace A061469.P11575718473593316241
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A259180 (2 * (n + 1)) : ℚ) / (A180327 (n + 1) : ℚ)

end

end A061469.P11575718473593316241

/-! ## A061469.P10835260024829784333

`A259180(2*n+1)/A180326(n+1)`
-/

namespace A061469.P10835260024829784333
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A259180 (2 * n + 1) : ℚ) / (A180326 (n + 1) : ℚ)

end

end A061469.P10835260024829784333

/-! ## A061469.P7118598605659364452

`gcd(A259180(2*n+1), A259180(2*(n+1)))`
-/

namespace A061469.P7118598605659364452
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A259180 (2 * n + 1)) (A259180 (2 * (n + 1)))

end

end A061469.P7118598605659364452

/-!
# A061470: First (leftmost) digit - second digit + third digit - fourth digit .... = 1.

The programs for A061470, there is no canonical definition to state claims against.
-/

/-! ## A061470.P8197407766314526211

`eq[1, A225693(n)]`
-/

namespace A061470.P8197407766314526211
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225693 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A061470.P8197407766314526211

/-! ## A061470.P11235923267437674010

`eq[1, A055017(A004086(n))]`
-/

namespace A061470.P11235923267437674010
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055017 (A004086 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A061470.P11235923267437674010

/-! ## A061470.P2189578270576016090

`record[A061870(n+1)*A225693(A061870(n+1))]`
-/

namespace A061470.P2189578270576016090
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061870 (n + 1) * A225693 (A061870 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A061470.P2189578270576016090

/-! ## A061470.P10410892585701024620

`record[A054684(n+1)/A225693(A054684(n+1))]`
-/

namespace A061470.P10410892585701024620
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A054684 (n + 1) : ℚ) / (A225693 (A054684 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A061470.P10410892585701024620

/-! ## A061470.P4074206466859898256

`A000720(p?[A008578(n+1)*A225693(n)])`
-/

namespace A061470.P4074206466859898256
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1) * A225693 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A061470.P4074206466859898256

/-!
# A061471: First (leftmost) digit - second digit + third digit - fourth digit .... = 2.

The programs for A061471, the canonical program `A061471.P7279720619341012991` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A061471 has offset 1).

The definition of A061471 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 667 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A061471.P16873719838178700073

`eq[2, A225693(n)]`
-/

namespace A061471.P16873719838178700073
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225693 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A061471.P16873719838178700073

namespace A061471

/-- `eq[2, A225693(n)]` -/
def P16873719838178700073.Spec : Prop :=
  ∀ n, (P16873719838178700073.a n : ℤ) = A061471 (n + 1)

end A061471

/-! ## A061471.P7279720619341012991

`eq[0, A000038(n)+n%10-a(floor(n/10))]` with `a(0)=2`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A061471

/-- `eq[0, A000038(n)+n%10-a(floor(n/10))]` -/
def P7279720619341012991.Spec : Prop :=
  ∀ n, (P7279720619341012991.a n : ℤ) = A061471 (n + 1)

theorem P7279720619341012991.correct : P7279720619341012991.Spec := by
  intro n
  simp only [A061471, Nat.add_sub_cancel]

end A061471

/-! ## A061471.P72487388139220144

`eq[2, A055017(A004086(n))]`
-/

namespace A061471.P72487388139220144
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055017 (A004086 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A061471.P72487388139220144

namespace A061471

/-- `eq[2, A055017(A004086(n))]` -/
def P72487388139220144.Spec : Prop :=
  ∀ n, (P72487388139220144.a n : ℤ) = A061471 (n + 1)

end A061471

/-! ## A061471.P4528632024303543515

`eq[0, A010879(n)-a(A059995(n))]` with `a(0)=2`
-/

namespace A061471.P4528632024303543515
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f2 =>
  A010879 n - f2 (A059995 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A061471.P4528632024303543515

namespace A061471

/-- `eq[0, A010879(n)-a(A059995(n))]` -/
def P4528632024303543515.Spec : Prop :=
  ∀ n, (P4528632024303543515.a n : ℤ) = A061471 (n + 1)

end A061471

/-! ## A061471.P9345764849087957534

`∩[lt[1, A225693(n)], A061871(n+1)]`
-/

namespace A061471.P9345764849087957534
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225693 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061871 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f4 j = (x : ℤ)) n

end

end A061471.P9345764849087957534

namespace A061471

/-- `∩[lt[1, A225693(n)], A061871(n+1)]` -/
def P9345764849087957534.Spec : Prop :=
  ∀ n, (P9345764849087957534.a n : ℤ) = A061471 (n + 1)

end A061471

/-!
# A061472: First (leftmost) digit - second digit + third digit - fourth digit .... = 3.

The programs for A061472, the canonical program `A061472.P7918386733509279837` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A061472 has offset 1).

The definition of A061472 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 638 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A061472.P11407877345020855685

`eq[3, A225693(n)]`
-/

namespace A061472.P11407877345020855685
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225693 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A061472.P11407877345020855685

namespace A061472

/-- `eq[3, A225693(n)]` -/
def P11407877345020855685.Spec : Prop :=
  ∀ n, (P11407877345020855685.a n : ℤ) = A061472 (n + 1)

end A061472

/-! ## A061472.P7918386733509279837

`eq[0, A000038(n)+n%10-a(floor(n/10))]` with `a(0)=3`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A061472

/-- `eq[0, A000038(n)+n%10-a(floor(n/10))]` -/
def P7918386733509279837.Spec : Prop :=
  ∀ n, (P7918386733509279837.a n : ℤ) = A061472 (n + 1)

theorem P7918386733509279837.correct : P7918386733509279837.Spec := by
  intro n
  simp only [A061472, Nat.add_sub_cancel]

end A061472

/-! ## A061472.P2230894664540202616

`eq[3, A055017(A004086(n))]`
-/

namespace A061472.P2230894664540202616
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055017 (A004086 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A061472.P2230894664540202616

namespace A061472

/-- `eq[3, A055017(A004086(n))]` -/
def P2230894664540202616.Spec : Prop :=
  ∀ n, (P2230894664540202616.a n : ℤ) = A061472 (n + 1)

end A061472

/-! ## A061472.P12112215348495748591

`eq[0, A010879(n)-a(A059995(n))]` with `a(0)=3`
-/

namespace A061472.P12112215348495748591
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.rec [3] fun n f2 =>
  A010879 n - f2 (A059995 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A061472.P12112215348495748591

namespace A061472

/-- `eq[0, A010879(n)-a(A059995(n))]` -/
def P12112215348495748591.Spec : Prop :=
  ∀ n, (P12112215348495748591.a n : ℤ) = A061472 (n + 1)

end A061472

/-! ## A061472.P18193452523972149432

`lt[A138902(A225693(n)²²), A225693(n)]`
-/

namespace A061472.P18193452523972149432
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138902 ((A225693 n ^ 2) ^ 2).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225693 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A061472.P18193452523972149432

namespace A061472

/-- `lt[A138902(A225693(n)²²), A225693(n)]` -/
def P18193452523972149432.Spec : Prop :=
  ∀ n, (P18193452523972149432.a n : ℤ) = A061472 (n + 1)

end A061472

/-!
# A061473: First (leftmost) digit - second digit + third digit - fourth digit .... = 4.

The programs for A061473, the canonical program `A061473.P12784798883308001340` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A061473 has offset 1).

The definition of A061473 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 595 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A061473.P14891231934985911623

`eq[4, A225693(n)]`
-/

namespace A061473.P14891231934985911623
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225693 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A061473.P14891231934985911623

namespace A061473

/-- `eq[4, A225693(n)]` -/
def P14891231934985911623.Spec : Prop :=
  ∀ n, (P14891231934985911623.a n : ℤ) = A061473 (n + 1)

end A061473

/-! ## A061473.P12784798883308001340

`eq[0, A000038(n)+n%10-a(floor(n/10))]` with `a(0)=4`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A061473

/-- `eq[0, A000038(n)+n%10-a(floor(n/10))]` -/
def P12784798883308001340.Spec : Prop :=
  ∀ n, (P12784798883308001340.a n : ℤ) = A061473 (n + 1)

theorem P12784798883308001340.correct : P12784798883308001340.Spec := by
  intro n
  simp only [A061473, Nat.add_sub_cancel]

end A061473

/-! ## A061473.P4260425773672907031

`eq[4, A055017(A004086(n))]`
-/

namespace A061473.P4260425773672907031
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055017 (A004086 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A061473.P4260425773672907031

namespace A061473

/-- `eq[4, A055017(A004086(n))]` -/
def P4260425773672907031.Spec : Prop :=
  ∀ n, (P4260425773672907031.a n : ℤ) = A061473 (n + 1)

end A061473

/-! ## A061473.P1612168263200701719

`eq[0, A010879(n)-a(A059995(n))]` with `a(0)=4`
-/

namespace A061473.P1612168263200701719
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.rec [4] fun n f2 =>
  A010879 n - f2 (A059995 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A061473.P1612168263200701719

namespace A061473

/-- `eq[0, A010879(n)-a(A059995(n))]` -/
def P1612168263200701719.Spec : Prop :=
  ∀ n, (P1612168263200701719.a n : ℤ) = A061473 (n + 1)

end A061473

/-! ## A061473.P7121811938821616728

`∩[lt[1, A225693(n)], A061873(n+1)]`
-/

namespace A061473.P7121811938821616728
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225693 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061873 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f4 j = (x : ℤ)) n

end

end A061473.P7121811938821616728

namespace A061473

/-- `∩[lt[1, A225693(n)], A061873(n+1)]` -/
def P7121811938821616728.Spec : Prop :=
  ∀ n, (P7121811938821616728.a n : ℤ) = A061473 (n + 1)

end A061473

/-!
# A061474: First (leftmost) digit - second digit + third digit - fourth digit .... = 5.

The programs for A061474, the canonical program `A061474.P6394223303749271842` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A061474 has offset 1).

The definition of A061474 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 541 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A061474.P11668245124882413014

`eq[5, A225693(n)]`
-/

namespace A061474.P11668245124882413014
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225693 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A061474.P11668245124882413014

namespace A061474

/-- `eq[5, A225693(n)]` -/
def P11668245124882413014.Spec : Prop :=
  ∀ n, (P11668245124882413014.a n : ℤ) = A061474 (n + 1)

end A061474

/-! ## A061474.P6394223303749271842

`eq[0, A000038(n)+n%10-a(floor(n/10))]` with `a(0)=5`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A061474

/-- `eq[0, A000038(n)+n%10-a(floor(n/10))]` -/
def P6394223303749271842.Spec : Prop :=
  ∀ n, (P6394223303749271842.a n : ℤ) = A061474 (n + 1)

theorem P6394223303749271842.correct : P6394223303749271842.Spec := by
  intro n
  simp only [A061474, Nat.add_sub_cancel]

end A061474

/-! ## A061474.P11506704031130649104

`eq[5, A055017(A004086(n))]`
-/

namespace A061474.P11506704031130649104
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055017 (A004086 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A061474.P11506704031130649104

namespace A061474

/-- `eq[5, A055017(A004086(n))]` -/
def P11506704031130649104.Spec : Prop :=
  ∀ n, (P11506704031130649104.a n : ℤ) = A061474 (n + 1)

end A061474

/-! ## A061474.P8523088118254265455

`eq[0, A010879(n)-a(A059995(n))]` with `a(0)=5`
-/

namespace A061474.P8523088118254265455
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.rec [5] fun n f2 =>
  A010879 n - f2 (A059995 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A061474.P8523088118254265455

namespace A061474

/-- `eq[0, A010879(n)-a(A059995(n))]` -/
def P8523088118254265455.Spec : Prop :=
  ∀ n, (P8523088118254265455.a n : ℤ) = A061474 (n + 1)

end A061474

/-! ## A061474.P7511147792448772922

`∩[lt[1, A225693(n)], A061874(n+1)]`
-/

namespace A061474.P7511147792448772922
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225693 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061874 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f4 j = (x : ℤ)) n

end

end A061474.P7511147792448772922

namespace A061474

/-- `∩[lt[1, A225693(n)], A061874(n+1)]` -/
def P7511147792448772922.Spec : Prop :=
  ∀ n, (P7511147792448772922.a n : ℤ) = A061474 (n + 1)

end A061474

/-!
# A061475: First (leftmost) digit - second digit + third digit - fourth digit .... = 6.

The programs for A061475, the canonical program `A061475.P655871579169783819` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A061475 has offset 1).

The definition of A061475 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 479 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A061475.P13254243393774966002

`eq[6, A225693(n)]`
-/

namespace A061475.P13254243393774966002
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225693 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A061475.P13254243393774966002

namespace A061475

/-- `eq[6, A225693(n)]` -/
def P13254243393774966002.Spec : Prop :=
  ∀ n, (P13254243393774966002.a n : ℤ) = A061475 (n + 1)

end A061475

/-! ## A061475.P655871579169783819

`eq[0, A000038(n)+n%10-a(floor(n/10))]` with `a(0)=6`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A061475

/-- `eq[0, A000038(n)+n%10-a(floor(n/10))]` -/
def P655871579169783819.Spec : Prop :=
  ∀ n, (P655871579169783819.a n : ℤ) = A061475 (n + 1)

theorem P655871579169783819.correct : P655871579169783819.Spec := by
  intro n
  simp only [A061475, Nat.add_sub_cancel]

end A061475

/-! ## A061475.P2793538580420614777

`eq[6, A055017(A004086(n))]`
-/

namespace A061475.P2793538580420614777
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055017 (A004086 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A061475.P2793538580420614777

namespace A061475

/-- `eq[6, A055017(A004086(n))]` -/
def P2793538580420614777.Spec : Prop :=
  ∀ n, (P2793538580420614777.a n : ℤ) = A061475 (n + 1)

end A061475

/-! ## A061475.P149344951032133942

`eq[0, A010879(n)-a(A059995(n))]` with `a(0)=6`
-/

namespace A061475.P149344951032133942
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.rec [6] fun n f2 =>
  A010879 n - f2 (A059995 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A061475.P149344951032133942

namespace A061475

/-- `eq[0, A010879(n)-a(A059995(n))]` -/
def P149344951032133942.Spec : Prop :=
  ∀ n, (P149344951032133942.a n : ℤ) = A061475 (n + 1)

end A061475

/-! ## A061475.P10014883844649572052

`A061875(n+4)%p?[A061882(n)]`
-/

namespace A061475.P10014883844649572052
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061882 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A061875 (n + 4)) (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A061475.P10014883844649572052

namespace A061475

/-- `A061875(n+4)%p?[A061882(n)]` -/
def P10014883844649572052.Spec : Prop :=
  ∀ n, P10014883844649572052.a n = A061475 (n + 1)

end A061475

/-!
# A061476: First (leftmost) digit - second digit + third digit - fourth digit .... = 7.

The programs for A061476, the canonical program `A061476.P279424405032594170` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A061476 has offset 1).

The definition of A061476 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 412 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A061476.P13266018352883051272

`eq[7, A225693(n)]`
-/

namespace A061476.P13266018352883051272
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225693 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A061476.P13266018352883051272

namespace A061476

/-- `eq[7, A225693(n)]` -/
def P13266018352883051272.Spec : Prop :=
  ∀ n, (P13266018352883051272.a n : ℤ) = A061476 (n + 1)

end A061476

/-! ## A061476.P279424405032594170

`eq[0, A000038(n)+n%10-a(floor(n/10))]` with `a(0)=7`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A061476

/-- `eq[0, A000038(n)+n%10-a(floor(n/10))]` -/
def P279424405032594170.Spec : Prop :=
  ∀ n, (P279424405032594170.a n : ℤ) = A061476 (n + 1)

theorem P279424405032594170.correct : P279424405032594170.Spec := by
  intro n
  simp only [A061476, Nat.add_sub_cancel]

end A061476

/-! ## A061476.P7732236922346546625

`eq[7, A055017(A004086(n))]`
-/

namespace A061476.P7732236922346546625
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055017 (A004086 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A061476.P7732236922346546625

namespace A061476

/-- `eq[7, A055017(A004086(n))]` -/
def P7732236922346546625.Spec : Prop :=
  ∀ n, (P7732236922346546625.a n : ℤ) = A061476 (n + 1)

end A061476

/-! ## A061476.P1727470068489042445

`eq[0, A010879(n)-a(A059995(n))]` with `a(0)=7`
-/

namespace A061476.P1727470068489042445
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.rec [7] fun n f2 =>
  A010879 n - f2 (A059995 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A061476.P1727470068489042445

namespace A061476

/-- `eq[0, A010879(n)-a(A059995(n))]` -/
def P1727470068489042445.Spec : Prop :=
  ∀ n, (P1727470068489042445.a n : ℤ) = A061476 (n + 1)

end A061476

/-! ## A061476.P1530994077747651249

`∩[lt[1, A225693(n)], A061876(n+1)]`
-/

namespace A061476.P1530994077747651249
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225693 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061876 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f4 j = (x : ℤ)) n

end

end A061476.P1530994077747651249

namespace A061476

/-- `∩[lt[1, A225693(n)], A061876(n+1)]` -/
def P1530994077747651249.Spec : Prop :=
  ∀ n, (P1530994077747651249.a n : ℤ) = A061476 (n + 1)

end A061476

/-!
# A061477: First (leftmost) digit - second digit + third digit - fourth digit .... = 8.

The programs for A061477, the canonical program `A061477.P4513353281043858727` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A061477 has offset 1).

The definition of A061477 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 343 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A061477.P6806994299523768358

`eq[8, A225693(n)]`
-/

namespace A061477.P6806994299523768358
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225693 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A061477.P6806994299523768358

namespace A061477

/-- `eq[8, A225693(n)]` -/
def P6806994299523768358.Spec : Prop :=
  ∀ n, (P6806994299523768358.a n : ℤ) = A061477 (n + 1)

end A061477

/-! ## A061477.P4513353281043858727

`eq[0, A000038(n)+n%10-a(floor(n/10))]` with `a(0)=8`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A061477

/-- `eq[0, A000038(n)+n%10-a(floor(n/10))]` -/
def P4513353281043858727.Spec : Prop :=
  ∀ n, (P4513353281043858727.a n : ℤ) = A061477 (n + 1)

theorem P4513353281043858727.correct : P4513353281043858727.Spec := by
  intro n
  simp only [A061477, Nat.add_sub_cancel]

end A061477

/-! ## A061477.P888369392249796783

`eq[8, A055017(A004086(n))]`
-/

namespace A061477.P888369392249796783
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055017 (A004086 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A061477.P888369392249796783

namespace A061477

/-- `eq[8, A055017(A004086(n))]` -/
def P888369392249796783.Spec : Prop :=
  ∀ n, (P888369392249796783.a n : ℤ) = A061477 (n + 1)

end A061477

/-! ## A061477.P3953225831734846110

`eq[0, A010879(n)-a(A059995(n))]` with `a(0)=8`
-/

namespace A061477.P3953225831734846110
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.rec [8] fun n f2 =>
  A010879 n - f2 (A059995 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A061477.P3953225831734846110

namespace A061477

/-- `eq[0, A010879(n)-a(A059995(n))]` -/
def P3953225831734846110.Spec : Prop :=
  ∀ n, (P3953225831734846110.a n : ℤ) = A061477 (n + 1)

end A061477

/-! ## A061477.P2536045784034931494

`A061877(lt[A061897(n), A061914(2*(n+1))])`
-/

namespace A061477.P2536045784034931494
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061897 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061914 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061877 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A061477.P2536045784034931494

namespace A061477

/-- `A061877(lt[A061897(n), A061914(2*(n+1))])` -/
def P2536045784034931494.Spec : Prop :=
  ∀ n, P2536045784034931494.a n = A061477 (n + 1)

end A061477

/-!
# A061478: First (leftmost) digit - second digit + third digit - fourth digit .... = 9.

The programs for A061478, there is no canonical definition to state claims against.
-/

/-! ## A061478.P14004634247820219391

`eq[9, A225693(n)]`
-/

namespace A061478.P14004634247820219391
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225693 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A061478.P14004634247820219391

/-! ## A061478.P13254389035359570341

`eq[9, A055017(A004086(n))]`
-/

namespace A061478.P13254389035359570341
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055017 (A004086 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A061478.P13254389035359570341

/-! ## A061478.P16148383382226527668

`A061878(n+1)%A326733(n+4)²`
-/

namespace A061478.P16148383382226527668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A061878 (n + 1)) (A326733 (n + 4) ^ 2)

end

end A061478.P16148383382226527668

/-! ## A061478.P13940847060714622226

`A061878(n+1)+A000007(A060922(n))`
-/

namespace A061478.P13940847060714622226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061878 (n + 1) + A000007 (A060922 n).toNat

end

end A061478.P13940847060714622226

/-! ## A061478.P14432291691001096513

`A005131(A033428(n))*A061878(n+1)`
-/

namespace A061478.P14432291691001096513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005131 (A033428 n).toNat * A061878 (n + 1)

end

end A061478.P14432291691001096513

/-! ## A061478.P11443159839712964436

`lcm(A033999(A061866(n)), A061878(n+1))`
-/

namespace A061478.P11443159839712964436
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 (A061866 n).toNat) (A061878 (n + 1))

end

end A061478.P11443159839712964436

/-! ## A061478.P4090826717577595495

`A061878(n+1)+A000007(A176248(n+1))`
-/

namespace A061478.P4090826717577595495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061878 (n + 1) + A000007 (A176248 (n + 1)).toNat

end

end A061478.P4090826717577595495

/-!
# A061479: Smallest number m such that first digit - second digit + third digit - fourth digit ... (of m) = n.

The programs for A061479, there is no canonical definition to state claims against.
-/

/-! ## A061479.P671377438678612184

`a(n-1)+(A010785(n-dr(n))+1)²` with `a(0)=0`
-/

namespace A061479.P671377438678612184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + (A010785 (n - SequenceMachineLib.digitalRoot (n : ℤ)) + 1) ^ 2

end

end A061479.P671377438678612184

/-! ## A061479.P15618976231886721399

`∑[Δ[A037124(A028310(n))]²]`
-/

namespace A061479.P15618976231886721399
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037124 (A028310 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A061479.P15618976231886721399

/-! ## A061479.P14032210404305498251

`∑[(A037124(n+1)-A037124(A028310(n)))²]`
-/

namespace A061479.P14032210404305498251
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A037124 (n + 1) - A037124 (A028310 n).toNat) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A061479.P14032210404305498251

/-! ## A061479.P16774066456528125388

`A051022(A051885(n))`
-/

namespace A061479.P16774066456528125388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051022 (A051885 n).toNat

end

end A061479.P16774066456528125388

/-! ## A061479.P15707764555088161912

`A051022(eq[n, A061486(n)])`
-/

namespace A061479.P15707764555088161912
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061486 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051022 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A061479.P15707764555088161912

/-!
# A061480: n-th digit in decimal expansion of 1/n.

The programs for A061480, the canonical program `A061480.P15132731593938314608` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A061480 has offset 1).

The definition of A061480 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A061480.P15132731593938314608

`floor(1/(n+1)*10^(n+1))%10`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A061480

/-- `floor(1/(n+1)*10^(n+1))%10` -/
def P15132731593938314608.Spec : Prop :=
  ∀ n, P15132731593938314608.a n = A061480 (n + 1)

theorem P15132731593938314608.correct : P15132731593938314608.Spec := by
  intro n
  simp only [A061480, Nat.add_sub_cancel]

end A061480

/-! ## A061480.P3214511320309682704

`floor(A178501(n+2)%A008592(n+1)/(n+1))`
-/

namespace A061480.P3214511320309682704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Int.tmod (A178501 (n + 2)) (A008592 (n + 1)) : ℚ) / (n + 1 : ℚ)⌋

end

end A061480.P3214511320309682704

namespace A061480

/-- `floor(A178501(n+2)%A008592(n+1)/(n+1))` -/
def P3214511320309682704.Spec : Prop :=
  ∀ n, P3214511320309682704.a n = A061480 (n + 1)

end A061480

/-! ## A061480.P18004180895372347861

`and(A054354(n+1), A237593(A217350(n+2)))`
-/

namespace A061480.P18004180895372347861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A054354 (n + 1)) (A237593 (A217350 (n + 2)).toNat)

end

end A061480.P18004180895372347861

namespace A061480

/-- `and(A054354(n+1), A237593(A217350(n+2)))` -/
def P18004180895372347861.Spec : Prop :=
  ∀ n, P18004180895372347861.a n = A061480 (n + 1)

end A061480

/-! ## A061480.P10254968688625873013

`xor(A001227(n+1), A095248(A216630(n+1)))`
-/

namespace A061480.P10254968688625873013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A001227 (n + 1)) (A095248 (A216630 (n + 1)).toNat)

end

end A061480.P10254968688625873013

namespace A061480

/-- `xor(A001227(n+1), A095248(A216630(n+1)))` -/
def P10254968688625873013.Spec : Prop :=
  ∀ n, P10254968688625873013.a n = A061480 (n + 1)

end A061480

/-!
# A061481: a(n) = floor(e^(n/e)).

The programs for A061481, the canonical program `A061481.P12329520319360046103` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A061481 has offset 0).

The definition of A061481 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 626 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A061481.P12329520319360046103

`floor(exp(n/e))`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A061481

/-- `floor(exp(n/e))` -/
def P12329520319360046103.Spec : Prop :=
  ∀ n, P12329520319360046103.a n = A061481 n

theorem P12329520319360046103.correct : P12329520319360046103.Spec := by
  intro n
  simp only [A061481]

end A061481

/-! ## A061481.P15729861690239410333

`ceil(exp(n/e))+log2(A011782(n))-n`
-/

namespace A061481.P15729861690239410333
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (⌈Real.exp ((n : ℝ) / Real.exp 1)⌉ : ℝ) + Real.logb 2 (A011782 n : ℝ) - (n : ℝ)

end

end A061481.P15729861690239410333

namespace A061481

/-- `ceil(exp(n/e))+log2(A011782(n))-n` -/
def P15729861690239410333.Spec : Prop :=
  ∀ n, P15729861690239410333.a n = (A061481 n : ℝ)

end A061481

/-! ## A061481.P9187063167594843734

`ceil(exp(n/e))-A000035(A154761(n+1))`
-/

namespace A061481.P9187063167594843734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.exp ((n : ℝ) / Real.exp 1)⌉ - A000035 (A154761 (n + 1)).toNat

end

end A061481.P9187063167594843734

namespace A061481

/-- `ceil(exp(n/e))-A000035(A154761(n+1))` -/
def P9187063167594843734.Spec : Prop :=
  ∀ n, P9187063167594843734.a n = A061481 n

end A061481

/-! ## A061481.P507975654690333681

`ceil(exp(n/e))-A000035(A048701(n))`
-/

namespace A061481.P507975654690333681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.exp ((n : ℝ) / Real.exp 1)⌉ - A000035 (A048701 n).toNat

end

end A061481.P507975654690333681

namespace A061481

/-- `ceil(exp(n/e))-A000035(A048701(n))` -/
def P507975654690333681.Spec : Prop :=
  ∀ n, P507975654690333681.a n = A061481 n

end A061481

/-! ## A061481.P8699864690305780366

`ceil(exp(n/e)-A186641(n+1)%2)`
-/

namespace A061481.P8699864690305780366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.exp ((n : ℝ) / Real.exp 1) - (Int.tmod (A186641 (n + 1)) 2 : ℝ)⌉

end

end A061481.P8699864690305780366

namespace A061481

/-- `ceil(exp(n/e)-A186641(n+1)%2)` -/
def P8699864690305780366.Spec : Prop :=
  ∀ n, P8699864690305780366.a n = A061481 n

end A061481

/-! ## A061481.P12611084841346971485

`ceil(exp(n/e))-A000035(A186641(n+1))`
-/

namespace A061481.P12611084841346971485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.exp ((n : ℝ) / Real.exp 1)⌉ - A000035 (A186641 (n + 1)).toNat

end

end A061481.P12611084841346971485

namespace A061481

/-- `ceil(exp(n/e))-A000035(A186641(n+1))` -/
def P12611084841346971485.Spec : Prop :=
  ∀ n, P12611084841346971485.a n = A061481 n

end A061481

/-! ## A061481.P17269139254523863119

`ceil(exp(n/e))-A000035(A154755(n+1))`
-/

namespace A061481.P17269139254523863119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.exp ((n : ℝ) / Real.exp 1)⌉ - A000035 (A154755 (n + 1)).toNat

end

end A061481.P17269139254523863119

namespace A061481

/-- `ceil(exp(n/e))-A000035(A154755(n+1))` -/
def P17269139254523863119.Spec : Prop :=
  ∀ n, P17269139254523863119.a n = A061481 n

end A061481

/-!
# A061482: a(1) = 1, a(2) = 2, a(n) = sum of products of previous terms taking n-2 at a time.

The programs for A061482, there is no canonical definition to state claims against.
-/

/-! ## A061482.P626455970746700434

`∑[A138997(n!²)]`
-/

namespace A061482.P626455970746700434
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138997 (Nat.factorial n ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A061482.P626455970746700434

/-!
# A061483: Numerator of 1 + 1/2 + 2/3 + 3/4 + ... + (n-1)/n.

The programs for A061483, there is no canonical definition to state claims against.
-/

/-! ## A061483.P6796765205419138670

`A121586(n)/A056612(round(sqrt(n²+1)))`
-/

namespace A061483.P6796765205419138670
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A121586 n : ℚ) / (A056612 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat : ℚ)

end

end A061483.P6796765205419138670

/-! ## A061483.P12220614380498738390

`round(A121586(n)/A056612(A028310(n)))`
-/

namespace A061483.P12220614380498738390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A121586 n : ℚ) / (A056612 (A028310 n).toNat : ℚ))

end

end A061483.P12220614380498738390

/-! ## A061483.P6851098440310225237

`A121586(n)/gcd(A000774(n), A001710(n))`
-/

namespace A061483.P6851098440310225237
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A121586 n : ℚ) / (Int.gcd (A000774 n) (A001710 n) : ℚ)

end

end A061483.P6851098440310225237

/-! ## A061483.P11371535730472270541

`lcm(A056612(n+1), A121586(n))/A056612(n+1)`
-/

namespace A061483.P11371535730472270541
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A056612 (n + 1)) (A121586 n) : ℚ) / (A056612 (n + 1) : ℚ)

end

end A061483.P11371535730472270541

/-! ## A061483.P12526867388898573183

`A000007(n+1)+A121586(n)/A056612(A028310(n))`
-/

namespace A061483.P12526867388898573183
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000007 (n + 1) : ℚ) + (A121586 n : ℚ) / (A056612 (A028310 n).toNat : ℚ)

end

end A061483.P12526867388898573183

/-!
# A061484: Numerator of 1/3 + 3/5 + 5/7 + ... + (2n - 1)/(2n + 1).

The programs for A061484, there is no canonical definition to state claims against.
-/

/-! ## A061484.P7618711094554840372

`A025461(A000143(n)*A017101(n))`
-/

namespace A061484.P7618711094554840372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025461 (A000143 n * A017101 n).toNat

end

end A061484.P7618711094554840372

/-!
# A061486: Let the number of digits in n be k; a(n) = sum of the products of the digits of n taken r at a time where r ranges from 1 to k.

The programs for A061486, the canonical program `A061486.P447125539068347262` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A061486 has offset 0).

The definition of A061486 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A061486.P447125539068347262

`∏{digits}[n, #+1]-1`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A061486

/-- `∏{digits}[n, #+1]-1` -/
def P447125539068347262.Spec : Prop :=
  ∀ n, P447125539068347262.a n = A061486 n

theorem P447125539068347262.correct : P447125539068347262.Spec := by
  intro n
  simp only [A061486]

end A061486

/-! ## A061486.P5454162016072480181

`floor(∏{digits}[n, n/(n+1)+#])`
-/

namespace A061486.P5454162016072480181
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => (n : ℚ) / (n + 1 : ℚ) + (x : ℚ)).prod⌋

end

end A061486.P5454162016072480181

namespace A061486

/-- `floor(∏{digits}[n, n/(n+1)+#])` -/
def P5454162016072480181.Spec : Prop :=
  ∀ n, P5454162016072480181.a n = A061486 n

end A061486

/-! ## A061486.P8840931761367903807

`A089898(n)-1`
-/

namespace A061486.P8840931761367903807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089898 n - 1

end

end A061486.P8840931761367903807

namespace A061486

/-- `A089898(n)-1` -/
def P8840931761367903807.Spec : Prop :=
  ∀ n, P8840931761367903807.a n = A061486 n

end A061486

/-! ## A061486.P9546444060789741639

`A264600(n)-A264668(n)`
-/

namespace A061486.P9546444060789741639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264600 n - A264668 n

end

end A061486.P9546444060789741639

namespace A061486

/-- `A264600(n)-A264668(n)` -/
def P9546444060789741639.Spec : Prop :=
  ∀ n, P9546444060789741639.a n = A061486 n

end A061486

/-! ## A061486.P12038294958097889148

`A023443(∏{digits}[n, #+1])`
-/

namespace A061486.P12038294958097889148
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x + 1).prod

end

end A061486.P12038294958097889148

namespace A061486

/-- `A023443(∏{digits}[n, #+1])` -/
def P12038294958097889148.Spec : Prop :=
  ∀ n, P12038294958097889148.a n = A061486 n

end A061486

/-! ## A061486.P9358736525920207471

`A023443(A089898(n))`
-/

namespace A061486.P9358736525920207471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A089898 n).toNat

end

end A061486.P9358736525920207471

namespace A061486

/-- `A023443(A089898(n))` -/
def P9358736525920207471.Spec : Prop :=
  ∀ n, P9358736525920207471.a n = A061486 n

end A061486

/-! ## A061486.P5323722301776844796

`A023444(A089898(n)+1)`
-/

namespace A061486.P5323722301776844796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 (A089898 n + 1).toNat

end

end A061486.P5323722301776844796

namespace A061486

/-- `A023444(A089898(n)+1)` -/
def P5323722301776844796.Spec : Prop :=
  ∀ n, P5323722301776844796.a n = A061486 n

end A061486

/-! ## A061486.P7484059685068614709

`A023444(2*A089898(n))/2`
-/

namespace A061486.P7484059685068614709
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A023444 (2 * A089898 n).toNat : ℚ) / 2

end

end A061486.P7484059685068614709

namespace A061486

/-- `A023444(2*A089898(n))/2` -/
def P7484059685068614709.Spec : Prop :=
  ∀ n, P7484059685068614709.a n = (A061486 n : ℚ)

end A061486

/-! ## A061486.P9713563863747893152

`A064553(A113581(n))-1`
-/

namespace A061486.P9713563863747893152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064553 (A113581 n).toNat - 1

end

end A061486.P9713563863747893152

namespace A061486

/-- `A064553(A113581(n))-1` -/
def P9713563863747893152.Spec : Prop :=
  ∀ n, P9713563863747893152.a n = A061486 n

end A061486

/-! ## A061486.P9721238257305761719

`A003963(A359802(n))-1`
-/

namespace A061486.P9721238257305761719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (A359802 n).toNat - 1

end

end A061486.P9721238257305761719

namespace A061486

/-- `A003963(A359802(n))-1` -/
def P9721238257305761719.Spec : Prop :=
  ∀ n, P9721238257305761719.a n = A061486 n

end A061486

/-! ## A061486.P11758703840078503247

`A070198(n)%A089898(n)`
-/

namespace A061486.P11758703840078503247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A070198 n) (A089898 n)

end

end A061486.P11758703840078503247

namespace A061486

/-- `A070198(n)%A089898(n)` -/
def P11758703840078503247.Spec : Prop :=
  ∀ n, P11758703840078503247.a n = A061486 n

end A061486

/-! ## A061486.P14739001199495870375

`A079782(n+1)%A089898(n)`
-/

namespace A061486.P14739001199495870375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A079782 (n + 1)) (A089898 n)

end

end A061486.P14739001199495870375

namespace A061486

/-- `A079782(n+1)%A089898(n)` -/
def P14739001199495870375.Spec : Prop :=
  ∀ n, P14739001199495870375.a n = A061486 n

end A061486

/-! ## A061486.P15729850134406758546

`A083685(n+1)%A089898(n)`
-/

namespace A061486.P15729850134406758546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A083685 (n + 1)) (A089898 n)

end

end A061486.P15729850134406758546

namespace A061486

/-- `A083685(n+1)%A089898(n)` -/
def P15729850134406758546.Spec : Prop :=
  ∀ n, P15729850134406758546.a n = A061486 n

end A061486

/-! ## A061486.P4597324234691319271

`A121934(n+1)%A089898(n)`
-/

namespace A061486.P4597324234691319271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A121934 (n + 1)) (A089898 n)

end

end A061486.P4597324234691319271

namespace A061486

/-- `A121934(n+1)%A089898(n)` -/
def P4597324234691319271.Spec : Prop :=
  ∀ n, P4597324234691319271.a n = A061486 n

end A061486

/-! ## A061486.P7251033973762619606

`A257297(n)+A007953(n)`
-/

namespace A061486.P7251033973762619606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257297 n + A007953 n

end

end A061486.P7251033973762619606

namespace A061486

/-- `A257297(n)+A007953(n)` -/
def P7251033973762619606.Spec : Prop :=
  ∀ n, P7251033973762619606.a n = A061486 n

end A061486

/-! ## A061486.P8183480337108778760

`∑{d}[n+1, A151909(#-1)*A264600((n+1)/#-1)]`
-/

namespace A061486.P8183480337108778760
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A151909 (d - 1) * A264600 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ) - 1)).toNat

end

end A061486.P8183480337108778760

namespace A061486

/-- `∑{d}[n+1, A151909(#-1)*A264600((n+1)/#-1)]` -/
def P8183480337108778760.Spec : Prop :=
  ∀ n, P8183480337108778760.a n = A061486 n

end A061486

/-! ## A061486.P762083116030606004

`A264600(n*A293290(A264668(n)))`
-/

namespace A061486.P762083116030606004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264600 ((n : ℤ) * A293290 (A264668 n).toNat).toNat

end

end A061486.P762083116030606004

namespace A061486

/-- `A264600(n*A293290(A264668(n)))` -/
def P762083116030606004.Spec : Prop :=
  ∀ n, P762083116030606004.a n = A061486 n

end A061486

/-!
# A061487: a(n) = sum of all the distinct numbers of all sizes formed by the digits of n.

The programs for A061487, there is no canonical definition to state claims against.
-/

/-! ## A061487.P6585612492109854338

`A002244(A221221(n+2))`
-/

namespace A061487.P6585612492109854338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002244 (A221221 (n + 2)).toNat

end

end A061487.P6585612492109854338

/-! ## A061487.P2008486105062050231

`∑[A331311(A067661(n)!)]`
-/

namespace A061487.P2008486105062050231
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331311 (Nat.factorial (A067661 n).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A061487.P2008486105062050231

/-! ## A061487.P3250145080930483356

`∑[A047726(or(7, A335407(n)))]`
-/

namespace A061487.P3250145080930483356
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047726 (Int.lor 7 (A335407 n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A061487.P3250145080930483356

/-! ## A061487.P15061009414885870489

`∩[A002244(n+1), A032947(n+1)]`
-/

namespace A061487.P15061009414885870489
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002244 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032947 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A061487.P15061009414885870489

/-! ## A061487.P1062054574126862724

`lt[A000041(A339238(n+1)), A246335(n)]`
-/

namespace A061487.P1062054574126862724
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (A339238 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246335 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A061487.P1062054574126862724

/-!
# A061488: Factorize the Fibonacci numbers in order, skipping F(0)-F(2), F(6)=8 and F(12)=144; at each step at least one new prime will occur; append to the sequence the smallest such new prime.

The programs for A061488, there is no canonical definition to state claims against.
-/

/-! ## A061488.P8477409217245659231

`p?[A001578(n+1)]`
-/

namespace A061488.P8477409217245659231
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001578 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A061488.P8477409217245659231

/-! ## A061488.P12147108381678989659

`p?[A001578(ϕ²-(ϕ-n))-char[1]]`
-/

namespace A061488.P12147108381678989659
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001578 (SequenceMachineLib.roundAway (Real.goldenRatio ^ 2 - (Real.goldenRatio - (n : ℝ)))).toNat - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A061488.P12147108381678989659

/-! ## A061488.P10520926563398305924

`p?[A001578(ϕ²-(ϕ-n))*A057427(n)]`
-/

namespace A061488.P10520926563398305924
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001578 (SequenceMachineLib.roundAway (Real.goldenRatio ^ 2 - (Real.goldenRatio - (n : ℝ)))).toNat * A057427 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A061488.P10520926563398305924

/-! ## A061488.P15315588272637641017

`p?[A001578(ϕ²-(ϕ-n))%A000032(n)]`
-/

namespace A061488.P15315588272637641017
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001578 (SequenceMachineLib.roundAway (Real.goldenRatio ^ 2 - (Real.goldenRatio - (n : ℝ)))).toNat) (A000032 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A061488.P15315588272637641017

/-! ## A061488.P9703079335673111454

`p?[A007318(C(2, n))*A001578(ϕ²-(ϕ-n))]`
-/

namespace A061488.P9703079335673111454
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A001578 (SequenceMachineLib.roundAway (Real.goldenRatio ^ 2 - (Real.goldenRatio - (n : ℝ)))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A061488.P9703079335673111454

/-!
# A061489: Numbers that are Fibonacci numbers plus or minus 1.

The programs for A061489, the canonical program `A061489.P13512089676603139105` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A061489 has offset 1).

The definition of A061489 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 956 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A061489.P13512089676603139105

`record[A103609(n)+A062157(n)]`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A061489

/-- `record[A103609(n)+A062157(n)]` -/
def P13512089676603139105.Spec : Prop :=
  ∀ n, P13512089676603139105.a n = A061489 (n + 1)

theorem P13512089676603139105.correct : P13512089676603139105.Spec := by
  intro n
  simp only [A061489, Nat.add_sub_cancel]

end A061489

/-! ## A061489.P1607566658947812120

`record[A226649(A014681(A052938(n)))]`
-/

namespace A061489.P1607566658947812120
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226649 (A014681 (A052938 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A061489.P1607566658947812120

namespace A061489

/-- `record[A226649(A014681(A052938(n)))]` -/
def P1607566658947812120.Spec : Prop :=
  ∀ n, P1607566658947812120.a n = A061489 (n + 1)

end A061489

/-! ## A061489.P2368597673350390675

`record[A000045(A008647(n))-A049347(n)]`
-/

namespace A061489.P2368597673350390675
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A008647 n).toNat - A049347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A061489.P2368597673350390675

namespace A061489

/-- `record[A000045(A008647(n))-A049347(n)]` -/
def P2368597673350390675.Spec : Prop :=
  ∀ n, P2368597673350390675.a n = A061489 (n + 1)

end A061489

/-! ## A061489.P8452734616353072052

`record[A000045(A008647(n))-A056594(n)]`
-/

namespace A061489.P8452734616353072052
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A008647 n).toNat - A056594 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A061489.P8452734616353072052

namespace A061489

/-- `record[A000045(A008647(n))-A056594(n)]` -/
def P8452734616353072052.Spec : Prop :=
  ∀ n, P8452734616353072052.a n = A061489 (n + 1)

end A061489

/-! ## A061489.P10738682708697544562

`record[A000045(A081753(n))-A034947(n+1)]`
-/

namespace A061489.P10738682708697544562
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A081753 n).toNat - A034947 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A061489.P10738682708697544562

namespace A061489

/-- `record[A000045(A081753(n))-A034947(n+1)]` -/
def P10738682708697544562.Spec : Prop :=
  ∀ n, P10738682708697544562.a n = A061489 (n + 1)

end A061489

/-! ## A061489.P14402583189091518026

`record[A000045(A008616(n))-A175922(n+1)]`
-/

namespace A061489.P14402583189091518026
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A008616 n).toNat - A175922 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A061489.P14402583189091518026

namespace A061489

/-- `record[A000045(A008616(n))-A175922(n+1)]` -/
def P14402583189091518026.Spec : Prop :=
  ∀ n, P14402583189091518026.a n = A061489 (n + 1)

end A061489

/-! ## A061489.P16366729697083000373

`record[A000045(A008616(n))-A009001(2*n)]`
-/

namespace A061489.P16366729697083000373
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A008616 n).toNat - A009001 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A061489.P16366729697083000373

namespace A061489

/-- `record[A000045(A008616(n))-A009001(2*n)]` -/
def P16366729697083000373.Spec : Prop :=
  ∀ n, P16366729697083000373.a n = A061489 (n + 1)

end A061489

/-! ## A061489.P12965036315021409157

`record[A000045(A008624(n))-A056594(2*n)]`
-/

namespace A061489.P12965036315021409157
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A008624 n).toNat - A056594 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A061489.P12965036315021409157

namespace A061489

/-- `record[A000045(A008624(n))-A056594(2*n)]` -/
def P12965036315021409157.Spec : Prop :=
  ∀ n, P12965036315021409157.a n = A061489 (n + 1)

end A061489

/-! ## A061489.P9887633447877327130

`∪[A000071(n+2)+2, A000071(n+2)]`
-/

namespace A061489.P9887633447877327130
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000071 (n + 2) + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000071 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A061489.P9887633447877327130

namespace A061489

/-- `∪[A000071(n+2)+2, A000071(n+2)]` -/
def P9887633447877327130.Spec : Prop :=
  ∀ n, (P9887633447877327130.a n : ℤ) = A061489 (n + 1)

end A061489

/-! ## A061489.P11532568724291146918

`A259623(n+1)-A290683(n)%3`
-/

namespace A061489.P11532568724291146918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259623 (n + 1) - Int.tmod (A290683 n) 3

end

end A061489.P11532568724291146918

namespace A061489

/-- `A259623(n+1)-A290683(n)%3` -/
def P11532568724291146918.Spec : Prop :=
  ∀ n, P11532568724291146918.a n = A061489 (n + 1)

end A061489

/-! ## A061489.P18058840883334217596

`record[A134824(A032741(n))+A108037(n)]`
-/

namespace A061489.P18058840883334217596
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134824 (A032741 n).toNat + A108037 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A061489.P18058840883334217596

namespace A061489

/-- `record[A134824(A032741(n))+A108037(n)]` -/
def P18058840883334217596.Spec : Prop :=
  ∀ n, P18058840883334217596.a n = A061489 (n + 1)

end A061489

/-!
# A061490: Smallest number which when iterated n times under A003285 gives a square.

The programs for A061490, there is no canonical definition to state claims against.
-/

/-! ## A061490.P15372452366370073127

`A243731(∏[∑[n!]])`
-/

namespace A061490.P15372452366370073127
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243731 (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A061490.P15372452366370073127

/-!
# A061493: Roman numerals written using 1 for I, 2 for V, 3 for X, 4 for L, 5 for C, 6 for D, 7 for M.

The programs for A061493, there is no canonical definition to state claims against.
-/

/-! ## A061493.P10855416097305197132

`A222229(A093788(n+1)^A054124(n))`
-/

namespace A061493.P10855416097305197132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222229 (SequenceMachineLib.roundAway ((A093788 (n + 1) : ℚ) ^ (A054124 n : ℤ))).toNat

end

end A061493.P10855416097305197132

/-! ## A061493.P7905156261970311444

`A222229(A093788(n+1)^A044949(n+1))`
-/

namespace A061493.P7905156261970311444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222229 (SequenceMachineLib.roundAway ((A093788 (n + 1) : ℚ) ^ (A044949 (n + 1) : ℤ))).toNat

end

end A061493.P7905156261970311444

/-! ## A061493.P8405079296252770928

`A222229(A093788(n+1)^A123962(n+1))`
-/

namespace A061493.P8405079296252770928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222229 (SequenceMachineLib.roundAway ((A093788 (n + 1) : ℚ) ^ (A123962 (n + 1) : ℤ))).toNat

end

end A061493.P8405079296252770928

/-! ## A061493.P8963788728763782087

`A222229(A093788(n+1)^A327401(n+1))`
-/

namespace A061493.P8963788728763782087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222229 (SequenceMachineLib.roundAway ((A093788 (n + 1) : ℚ) ^ (A327401 (n + 1) : ℤ))).toNat

end

end A061493.P8963788728763782087

/-!
# A061494: Relative class number h- of cyclotomic field Q(zeta_n) where n runs through positive integers not congruent to 2 (mod 4) [A042965, but omitting the initial 0].

The programs for A061494, there is no canonical definition to state claims against.
-/

/-! ## A061494.P17774278965348805292

`A061653(A042965(n+2))`
-/

namespace A061494.P17774278965348805292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061653 (A042965 (n + 2)).toNat

end

end A061494.P17774278965348805292

/-! ## A061494.P13944834472838463357

`A061653(∑[((n+1)%3)!])`
-/

namespace A061494.P13944834472838463357
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial ((n + 1) % 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061653 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A061494.P13944834472838463357

/-! ## A061494.P5789129438860670007

`A061653(ceil((8*n+6)/6))`
-/

namespace A061494.P5789129438860670007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061653 ⌈(8 * n + 6 : ℚ) / 6⌉.toNat

end

end A061494.P5789129438860670007

/-!
# A061495: a(n) = lcm(3n+1, 3n+2, 3n+3).

The programs for A061495, the canonical program `A061495.P11761007507645167560` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A061495 has offset 0).

The definition of A061495 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A061495.P11761007507645167560

`lcm(3*n+1, lcm(3*n+2, 3*n+3))`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A061495

/-- `lcm(3*n+1, lcm(3*n+2, 3*n+3))` -/
def P11761007507645167560.Spec : Prop :=
  ∀ n, (P11761007507645167560.a n : ℤ) = A061495 n

theorem P11761007507645167560.correct : P11761007507645167560.Spec := by
  intro n
  simp only [A061495]

end A061495

/-! ## A061495.P1680338058754593538

`lcm(∑[a(n-1)+18], 3*n+1)` with `a(0)=6`
-/

namespace A061495.P1680338058754593538
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [6] fun n f1 =>
  f1 (n - 1) + 18

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm (∑ j ∈ Finset.range (n + 1), f1 j) (3 * n + 1)

end

end A061495.P1680338058754593538

namespace A061495

/-- `lcm(∑[a(n-1)+18], 3*n+1)` -/
def P1680338058754593538.Spec : Prop :=
  ∀ n, (P1680338058754593538.a n : ℤ) = A061495 n

end A061495

/-! ## A061495.P17459763991107011866

`A061506(n)/2`
-/

namespace A061495.P17459763991107011866
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A061506 n : ℚ) / 2

end

end A061495.P17459763991107011866

namespace A061495

/-- `A061506(n)/2` -/
def P17459763991107011866.Spec : Prop :=
  ∀ n, P17459763991107011866.a n = (A061495 n : ℚ)

theorem P17459763991107011866.correct : P17459763991107011866.Spec := by
  intro n
  simp only [A061495, Nat.add_sub_cancel, A061495.P17459763991107011866.a, A061495.P11761007507645167560.a, A061506, A061506.P12700610903727524690.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A061495

/-! ## A061495.P10058771340340084922

`lcm(3*(n+1), A001504(n))`
-/

namespace A061495.P10058771340340084922
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (3 * (n + 1) : ℤ) (A001504 n)

end

end A061495.P10058771340340084922

namespace A061495

/-- `lcm(3*(n+1), A001504(n))` -/
def P10058771340340084922.Spec : Prop :=
  ∀ n, (P10058771340340084922.a n : ℤ) = A061495 n

end A061495

/-! ## A061495.P5517289847795190406

`A000217(3*n+1)*A298026(n+1)`
-/

namespace A061495.P5517289847795190406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (3 * n + 1) * A298026 (n + 1)

end

end A061495.P5517289847795190406

namespace A061495

/-- `A000217(3*n+1)*A298026(n+1)` -/
def P5517289847795190406.Spec : Prop :=
  ∀ n, P5517289847795190406.a n = A061495 n

end A061495

/-! ## A061495.P17152540571018481337

`(A016789(n)+A016789(n)²)*A165355(n)`
-/

namespace A061495.P17152540571018481337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A016789 n + A016789 n ^ 2) * A165355 n

end

end A061495.P17152540571018481337

namespace A061495

/-- `(A016789(n)+A016789(n)²)*A165355(n)` -/
def P17152540571018481337.Spec : Prop :=
  ∀ n, P17152540571018481337.a n = A061495 n

end A061495

/-! ## A061495.P3976659675622674414

`lcm(A016777(n), A152743(n+1))`
-/

namespace A061495.P3976659675622674414
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A016777 n) (A152743 (n + 1))

end

end A061495.P3976659675622674414

namespace A061495

/-- `lcm(A016777(n), A152743(n+1))` -/
def P3976659675622674414.Spec : Prop :=
  ∀ n, (P3976659675622674414.a n : ℤ) = A061495 n

end A061495

/-! ## A061495.P12373103561854994980

`lcm(A008585(n+1), A173102(2*n+1))`
-/

namespace A061495.P12373103561854994980
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A008585 (n + 1)) (A173102 (2 * n + 1))

end

end A061495.P12373103561854994980

namespace A061495

/-- `lcm(A008585(n+1), A173102(2*n+1))` -/
def P12373103561854994980.Spec : Prop :=
  ∀ n, (P12373103561854994980.a n : ℤ) = A061495 n

end A061495

/-! ## A061495.P1402609858867071883

`A033931(3*n+1)`
-/

namespace A061495.P1402609858867071883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033931 (3 * n + 1)

end

end A061495.P1402609858867071883

namespace A061495

/-- `A033931(3*n+1)` -/
def P1402609858867071883.Spec : Prop :=
  ∀ n, P1402609858867071883.a n = A061495 n

end A061495

/-! ## A061495.P12600512192291042537

`6*A067046(3*n+1)`
-/

namespace A061495.P12600512192291042537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A067046 (3 * n + 1)

end

end A061495.P12600512192291042537

namespace A061495

/-- `6*A067046(3*n+1)` -/
def P12600512192291042537.Spec : Prop :=
  ∀ n, P12600512192291042537.a n = A061495 n

end A061495

/-! ## A061495.P190416608086305163

`lcm(n+1, A033931(n+1+n+n))`
-/

namespace A061495.P190416608086305163
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n + 1 : ℤ) (A033931 (n + 1 + (n + n)))

end

end A061495.P190416608086305163

namespace A061495

/-- `lcm(n+1, A033931(n+1+n+n))` -/
def P190416608086305163.Spec : Prop :=
  ∀ n, (P190416608086305163.a n : ℤ) = A061495 n

end A061495

/-! ## A061495.P9598927150211214539

`A026741(3*n+1)*A152743(n+1)`
-/

namespace A061495.P9598927150211214539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (3 * n + 1) * A152743 (n + 1)

end

end A061495.P9598927150211214539

namespace A061495

/-- `A026741(3*n+1)*A152743(n+1)` -/
def P9598927150211214539.Spec : Prop :=
  ∀ n, P9598927150211214539.a n = A061495 n

end A061495

/-! ## A061495.P3377360947536514936

`lcm(A265225(3*n), A276805(3*n+1))`
-/

namespace A061495.P3377360947536514936
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A265225 (3 * n)) (A276805 (3 * n + 1))

end

end A061495.P3377360947536514936

namespace A061495

/-- `lcm(A265225(3*n), A276805(3*n+1))` -/
def P3377360947536514936.Spec : Prop :=
  ∀ n, (P3377360947536514936.a n : ℤ) = A061495 n

end A061495

/-! ## A061495.P13610148443564350775

`(A133090(3*n+1)+1)*A117748(2*(n+1))`
-/

namespace A061495.P13610148443564350775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A133090 (3 * n + 1) + 1) * A117748 (2 * (n + 1))

end

end A061495.P13610148443564350775

namespace A061495

/-- `(A133090(3*n+1)+1)*A117748(2*(n+1))` -/
def P13610148443564350775.Spec : Prop :=
  ∀ n, P13610148443564350775.a n = A061495 n

end A061495

/-! ## A061495.P10005009970889929581

`A045896(A165367(2*n))*A165367(2*n)`
-/

namespace A061495.P10005009970889929581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045896 (A165367 (2 * n)).toNat * A165367 (2 * n)

end

end A061495.P10005009970889929581

namespace A061495

/-- `A045896(A165367(2*n))*A165367(2*n)` -/
def P10005009970889929581.Spec : Prop :=
  ∀ n, P10005009970889929581.a n = A061495 n

end A061495

/-! ## A061495.P7171982807556988032

`lcm(3*n+1, A002378(3*n+2))`
-/

namespace A061495.P7171982807556988032
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (3 * n + 1 : ℤ) (A002378 (3 * n + 2))

end

end A061495.P7171982807556988032

namespace A061495

/-- `lcm(3*n+1, A002378(3*n+2))` -/
def P7171982807556988032.Spec : Prop :=
  ∀ n, (P7171982807556988032.a n : ℤ) = A061495 n

end A061495

/-! ## A061495.P4280204943298936301

`lcm(A002378(A016789(n)), A016777(n))`
-/

namespace A061495.P4280204943298936301
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A002378 (A016789 n).toNat) (A016777 n)

end

end A061495.P4280204943298936301

namespace A061495

/-- `lcm(A002378(A016789(n)), A016777(n))` -/
def P4280204943298936301.Spec : Prop :=
  ∀ n, (P4280204943298936301.a n : ℤ) = A061495 n

end A061495

/-!
# A061496: a(n) = gcd(abundant(n), abundant(n+1)) where abundant(n) is the n-th abundant number.

The programs for A061496, the canonical program `A061496.P15702873449731097200` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A061496 has offset 1).

The definition of A061496 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005101, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A061496.P15702873449731097200

`gcd(A005101(n+1), A005101(n+2))`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A061496

/-- `gcd(A005101(n+1), A005101(n+2))` -/
def P15702873449731097200.Spec : Prop :=
  ∀ n, (P15702873449731097200.a n : ℤ) = A061496 (n + 1)

theorem P15702873449731097200.correct : P15702873449731097200.Spec := by
  intro n
  simp only [A061496, Nat.add_sub_cancel]

end A061496

/-! ## A061496.P12192241065914005348

`gcd(A091196(n+1), A091196(n+2))`
-/

namespace A061496.P12192241065914005348
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A091196 (n + 1)) (A091196 (n + 2))

end

end A061496.P12192241065914005348

namespace A061496

/-- `gcd(A091196(n+1), A091196(n+2))` -/
def P12192241065914005348.Spec : Prop :=
  ∀ n, (P12192241065914005348.a n : ℤ) = A061496 (n + 1)

end A061496

/-! ## A061496.P15678145308049138675

`gcd(A224907(n+1)/2, Δ[A224907(n+1)/2])`
-/

namespace A061496.P15678145308049138675
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A224907 (n + 1) : ℚ) / 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (SequenceMachineLib.roundAway ((A224907 (n + 1) : ℚ) / 2)) (SequenceMachineLib.roundAway (f1 (n + 1) - f1 n))

end

end A061496.P15678145308049138675

namespace A061496

/-- `gcd(A224907(n+1)/2, Δ[A224907(n+1)/2])` -/
def P15678145308049138675.Spec : Prop :=
  ∀ n, (P15678145308049138675.a n : ℤ) = A061496 (n + 1)

end A061496

/-! ## A061496.P5917860745074777305

`A004526(gcd(A224907(n+1), A224907(n+2)))`
-/

namespace A061496.P5917860745074777305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (Int.gcd (A224907 (n + 1)) (A224907 (n + 2)))

end

end A061496.P5917860745074777305

namespace A061496

/-- `A004526(gcd(A224907(n+1), A224907(n+2)))` -/
def P5917860745074777305.Spec : Prop :=
  ∀ n, P5917860745074777305.a n = A061496 (n + 1)

end A061496

/-! ## A061496.P14950939125379703232

`A125115(n+1)-A005101(n+2)%A125115(n+1)`
-/

namespace A061496.P14950939125379703232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125115 (n + 1) - Int.tmod (A005101 (n + 2)) (A125115 (n + 1))

end

end A061496.P14950939125379703232

namespace A061496

/-- `A125115(n+1)-A005101(n+2)%A125115(n+1)` -/
def P14950939125379703232.Spec : Prop :=
  ∀ n, P14950939125379703232.a n = A061496 (n + 1)

end A061496

/-!
# A061497: Product of all distinct nonzero numbers that can be formed from the digits of n.

The programs for A061497, there is no canonical definition to state claims against.
-/

/-! ## A061497.P11899423169016707626

`(A061147(n+1)*A067032(n))%A063055(2*n)`
-/

namespace A061497.P11899423169016707626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A061147 (n + 1) * A067032 n) (A063055 (2 * n))

end

end A061497.P11899423169016707626

/-! ## A061497.P11201175231107107471

`A062003(n+1)*A067032(n)*A010684(2*A000045(n))`
-/

namespace A061497.P11201175231107107471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062003 (n + 1) * A067032 n * A010684 (2 * A000045 n).toNat

end

end A061497.P11201175231107107471

/-! ## A061497.P1892666583692607153

`record[∑[A154925(A205574(n))]]`
-/

namespace A061497.P1892666583692607153
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154925 (A205574 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A061497.P1892666583692607153

/-! ## A061497.P15474561743852224361

`A124975(A007318(n)!)+n`
-/

namespace A061497.P15474561743852224361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124975 (Nat.factorial (A007318 n).toNat) + (n : ℤ)

end

end A061497.P15474561743852224361

/-! ## A061497.P16137074062893606397

`A124975(A285357(n+1))+n`
-/

namespace A061497.P16137074062893606397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124975 (A285357 (n + 1)).toNat + (n : ℤ)

end

end A061497.P16137074062893606397

/-!
# A061498: Number of distinct terms in the first difference sequence of reduced residue system[=dRRS] for n.

The programs for A061498, there is no canonical definition to state claims against.
-/

/-! ## A061498.P9000295963145760455

`Δ[A002088(n)]-A076363(n+1)`
-/

namespace A061498.P9000295963145760455
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A076363 (n + 1)

end

end A061498.P9000295963145760455

/-! ## A061498.P16470205210119724326

`Δ[A005728(n)]-A076363(n+1)`
-/

namespace A061498.P16470205210119724326
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005728 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A076363 (n + 1)

end

end A061498.P16470205210119724326

/-! ## A061498.P7782872605355604795

`A000010(n+1)-A076363(n+1)`
-/

namespace A061498.P7782872605355604795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) - A076363 (n + 1)

end

end A061498.P7782872605355604795

/-! ## A061498.P2697094373511560902

`A349137(Δ[n²])-A076363(n+1)`
-/

namespace A061498.P2697094373511560902
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349137 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - A076363 (n + 1)

end

end A061498.P2697094373511560902

/-! ## A061498.P6760164007332423749

`sqrt(A127473(n+1))-A076363(n+1)`
-/

namespace A061498.P6760164007332423749
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A127473 (n + 1) : ℝ) - (A076363 (n + 1) : ℝ)

end

end A061498.P6760164007332423749

/-! ## A061498.P12707619536672202081

`A039649(n+1)-(A076363(n+1)+1)`
-/

namespace A061498.P12707619536672202081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039649 (n + 1) - (A076363 (n + 1) + 1)

end

end A061498.P12707619536672202081

/-! ## A061498.P13844934395821236613

`n+1-(A076363(n+1)+A051953(n+1))`
-/

namespace A061498.P13844934395821236613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - (A076363 (n + 1) + A051953 (n + 1))

end

end A061498.P13844934395821236613

/-! ## A061498.P2060774593174592586

`A002618(n+1)/(n+1)-A076363(n+1)`
-/

namespace A061498.P2060774593174592586
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002618 (n + 1) : ℚ) / (n + 1 : ℚ) - (A076363 (n + 1) : ℚ)

end

end A061498.P2060774593174592586

/-! ## A061498.P15950743789590137221

`∑{d}[n+1, (n+1)/#*A008683(#)]-A076363(n+1)`
-/

namespace A061498.P15950743789590137221
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (n + 1 : ℚ) / (d : ℚ) * (A008683 d : ℚ) - (A076363 (n + 1) : ℚ)

end

end A061498.P15950743789590137221

/-! ## A061498.P12039173990362849729

`log2(A066781(n+1))-A076363(n+1)`
-/

namespace A061498.P12039173990362849729
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A066781 (n + 1) : ℝ) - (A076363 (n + 1) : ℝ)

end

end A061498.P12039173990362849729

