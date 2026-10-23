import SequenceMachineLib.Basic
import Seq.B000.C000
import Seq.B000.C008
import Seq.B000.C023
import Seq.B000.C032
import Seq.B001.C003
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C002
import Seq.B008.C001
import Seq.B010.C000
import Seq.B012.C000
import Seq.B013.C000
import Seq.Opaque.C002
import Seq.Opaque.C004
import Seq.Opaque.C006
import Seq.Opaque.C019
import Seq.Opaque.C024
import Seq.Opaque.C025

/-!
# A388304: Numbers that have several prime factors and all prime factors have the same exponent > 2.

The programs for A388304, there is no canonical definition to state claims against.
-/

/-! ## A388304.P15524173823257042633

`∪[A177493(n+1), A390127(n+1)]`
-/

namespace A388304.P15524173823257042633
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177493 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390127 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A388304.P15524173823257042633

/-! ## A388304.P13379666513168817073

`∩[A387255(n+1), A390540(n+1)]`
-/

namespace A388304.P13379666513168817073
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387255 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390540 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A388304.P13379666513168817073

/-! ## A388304.P9130347705764804560

`∩[A372695(n+1), A390540(n+1)]`
-/

namespace A388304.P9130347705764804560
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372695 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390540 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A388304.P9130347705764804560

/-! ## A388304.P10502399492591728294

`∩[A072777(n+1), A372695(n+1)]`
-/

namespace A388304.P10502399492591728294
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072777 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372695 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A388304.P10502399492591728294

/-! ## A388304.P3878893274163267618

`∩[A072777(n+1), A387255(n+1)]`
-/

namespace A388304.P3878893274163267618
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072777 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387255 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A388304.P3878893274163267618

/-! ## A388304.P8994527996451785500

`∩[A072777(n+1), A391416(n+1)]`
-/

namespace A388304.P8994527996451785500
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072777 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391416 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A388304.P8994527996451785500

/-! ## A388304.P4107776903108158023

`∩[A390540(n+1), A391416(n+1)]`
-/

namespace A388304.P4107776903108158023
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390540 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391416 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A388304.P4107776903108158023

/-! ## A388304.P643582681615876201

`∩[A036966(n+1), A303606(n+1)]`
-/

namespace A388304.P643582681615876201
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036966 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303606 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A388304.P643582681615876201

/-! ## A388304.P960506189923758250

`∩[A076467(n+1), A303606(n+1)]`
-/

namespace A388304.P960506189923758250
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076467 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303606 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A388304.P960506189923758250

/-! ## A388304.P14392459956262110207

`∩[A303606(n+1), A349306(n+1)]`
-/

namespace A388304.P14392459956262110207
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303606 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349306 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A388304.P14392459956262110207

/-! ## A388304.P2485003310566249266

`∩[A303606(n+1), A372695(n+1)]`
-/

namespace A388304.P2485003310566249266
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303606 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372695 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A388304.P2485003310566249266

/-! ## A388304.P13209692959915769869

`∩[A303606(n+1), A387255(n+1)]`
-/

namespace A388304.P13209692959915769869
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303606 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387255 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A388304.P13209692959915769869

/-! ## A388304.P11734085053974959522

`∩[A303606(n+1), A390540(n+1)]`
-/

namespace A388304.P11734085053974959522
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303606 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390540 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A388304.P11734085053974959522

/-! ## A388304.P11934515365008607465

`∩[A303606(n+1), A391416(n+1)]`
-/

namespace A388304.P11934515365008607465
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303606 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391416 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A388304.P11934515365008607465

/-! ## A388304.P4889259258399362176

`∩[A072777(n+1), A376936(n+1)]`
-/

namespace A388304.P4889259258399362176
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072777 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376936 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A388304.P4889259258399362176

/-! ## A388304.P7827564099249972277

`∩[A303606(n+1), A376936(n+1)]`
-/

namespace A388304.P7827564099249972277
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303606 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376936 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A388304.P7827564099249972277

/-! ## A388304.P4702130116430264350

`∩[A376936(n+1), A390540(n+1)]`
-/

namespace A388304.P4702130116430264350
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376936 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390540 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A388304.P4702130116430264350

/-! ## A388304.P6022943601984244039

`∩[A076292(n+1), A372695(n+1)]`
-/

namespace A388304.P6022943601984244039
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076292 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372695 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A388304.P6022943601984244039

/-! ## A388304.P16383848954768618349

`∩[A076292(n+1), A376936(n+1)]`
-/

namespace A388304.P16383848954768618349
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076292 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376936 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A388304.P16383848954768618349

/-! ## A388304.P3815943717218310472

`∩[A076292(n+1), A387255(n+1)]`
-/

namespace A388304.P3815943717218310472
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076292 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387255 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A388304.P3815943717218310472

/-!
# A388305: 

The programs for A388305, there is no canonical definition to state claims against.
-/

/-! ## A388305.P1899733816285087499

`∩[A000977(n+1), A059404(n+1)]`
-/

namespace A388305.P1899733816285087499
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000977 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059404 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A388305.P1899733816285087499

/-!
# A388306: Numbers that are not square but divisible by the square of their largest prime factor.

The programs for A388306, there is no canonical definition to state claims against.
-/

/-! ## A388306.P16431805950835701106

`∪[A069236(n+1), A389145(n+1)]`
-/

namespace A388306.P16431805950835701106
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069236 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389145 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A388306.P16431805950835701106

/-! ## A388306.P6156953071994016284

`∪[A102834(n+1), A389145(n+1)]`
-/

namespace A388306.P6156953071994016284
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102834 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389145 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A388306.P6156953071994016284

/-! ## A388306.P9395001165940592518

`filter[A070003(n+1), A049240(#)]`
-/

namespace A388306.P9395001165940592518
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070003 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A049240 (f1 j).toNat = 1) n)

end

end A388306.P9395001165940592518

/-! ## A388306.P14831335670859909298

`filter[A051144(n+1), A319988(#)]`
-/

namespace A388306.P14831335670859909298
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051144 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A319988 (f1 j).toNat = 1) n)

end

end A388306.P14831335670859909298

/-! ## A388306.P13313265948369120650

`∩[A051144(n+1), A070003(n+1)]`
-/

namespace A388306.P13313265948369120650
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051144 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070003 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A388306.P13313265948369120650

/-! ## A388306.P3260602837362457289

`∩[A070003(n+1), A089229(n+1)]`
-/

namespace A388306.P3260602837362457289
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070003 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089229 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A388306.P3260602837362457289

/-! ## A388306.P8701136170993936324

`∩[A000037(n+1), A070003(n+1)]`
-/

namespace A388306.P8701136170993936324
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000037 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070003 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A388306.P8701136170993936324

/-! ## A388306.P1719985841425807404

`∩[A070003(n+1), A164514(n+1)]`
-/

namespace A388306.P1719985841425807404
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070003 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164514 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A388306.P1719985841425807404

/-! ## A388306.P13804404226308296321

`filter[A070003(n+1), A267594(#)]`
-/

namespace A388306.P13804404226308296321
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070003 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A267594 (f1 j).toNat = 1) n)

end

end A388306.P13804404226308296321

/-! ## A388306.P6754116043150444241

`filter[A070003(n+1), A267635(#)]`
-/

namespace A388306.P6754116043150444241
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070003 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A267635 (f1 j).toNat = 1) n)

end

end A388306.P6754116043150444241

