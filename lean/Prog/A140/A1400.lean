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
import Seq.B000.C025
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
import Seq.B000.C039
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C004
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
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
import Seq.B008.C001
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
# A140000: Primes of the form 4x^2+4xy+331y^2.

The programs for A140000, there is no canonical definition to state claims against.
-/

/-! ## A140000.P6552331408907723502

`∩[A139657(n+1), A139902(n+1)]`
-/

namespace A140000.P6552331408907723502
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139657 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139902 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140000.P6552331408907723502

/-! ## A140000.P11435201010937906532

`∩[A139657(n+1), A332446(n+1)]`
-/

namespace A140000.P11435201010937906532
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139657 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332446 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140000.P11435201010937906532

/-! ## A140000.P8296358083533610134

`∩[A139496(n+1), A139902(n+1)]`
-/

namespace A140000.P8296358083533610134
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139496 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139902 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140000.P8296358083533610134

/-! ## A140000.P16809895097522098505

`∩[A139496(n+1), A332446(n+1)]`
-/

namespace A140000.P16809895097522098505
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139496 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332446 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140000.P16809895097522098505

/-! ## A140000.P17531562658152659049

`∩[A139496(n+1), A139829(n+1)]`
-/

namespace A140000.P17531562658152659049
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139496 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139829 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140000.P17531562658152659049

/-! ## A140000.P6198350241189839037

`∩[A139657(n+1), A139829(n+1)]`
-/

namespace A140000.P6198350241189839037
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139657 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139829 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140000.P6198350241189839037

/-! ## A140000.P7049203349156950330

`∩[A139496(n+1), A141373(n+1)]`
-/

namespace A140000.P7049203349156950330
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139496 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141373 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140000.P7049203349156950330

/-! ## A140000.P15034660645755131993

`∩[A139657(n+1), A141373(n+1)]`
-/

namespace A140000.P15034660645755131993
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139657 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141373 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140000.P15034660645755131993

/-! ## A140000.P11659374556959547330

`∩[A107168(n+1), A139657(n+1)]`
-/

namespace A140000.P11659374556959547330
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107168 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139657 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140000.P11659374556959547330

/-! ## A140000.P7958978182173257474

`p?[or(2, A139657(n+1))]`
-/

namespace A140000.P7958978182173257474
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 2 (A139657 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A140000.P7958978182173257474

/-! ## A140000.P5983064350676315114

`∩[A107013(n+1), A139829(n+1)]`
-/

namespace A140000.P5983064350676315114
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107013 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139829 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140000.P5983064350676315114

/-! ## A140000.P1715104533912591711

`∩[A107013(n+1), A139902(n+1)]`
-/

namespace A140000.P1715104533912591711
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107013 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139902 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140000.P1715104533912591711

/-! ## A140000.P7888468368230103806

`∩[A139829(n+1), A141177(n+1)]`
-/

namespace A140000.P7888468368230103806
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139829 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141177 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140000.P7888468368230103806

/-! ## A140000.P17529589071574195861

`∩[A139902(n+1), A141177(n+1)]`
-/

namespace A140000.P17529589071574195861
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139902 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141177 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140000.P17529589071574195861

/-! ## A140000.P2635649854067815100

`∩[A139902(n+1), A267478(n+1)]`
-/

namespace A140000.P2635649854067815100
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139902 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267478 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140000.P2635649854067815100

/-! ## A140000.P16386702611680814431

`∩[A141373(n+1), A267478(n+1)]`
-/

namespace A140000.P16386702611680814431
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141373 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267478 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140000.P16386702611680814431

/-! ## A140000.P2479976459691113099

`∩[A107168(n+1), A141776(n+1)]`
-/

namespace A140000.P2479976459691113099
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107168 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141776 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140000.P2479976459691113099

/-! ## A140000.P7902509700589847991

`∩[A139902(n+1), A141776(n+1)]`
-/

namespace A140000.P7902509700589847991
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139902 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141776 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140000.P7902509700589847991

/-! ## A140000.P12650877006659543004

`∩[A007520(n+1), A139496(n+1)]`
-/

namespace A140000.P12650877006659543004
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007520 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139496 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140000.P12650877006659543004

/-! ## A140000.P15428290569782851761

`∩[A007520(n+1), A139657(n+1)]`
-/

namespace A140000.P15428290569782851761
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007520 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139657 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140000.P15428290569782851761

/-!
# A140001: Primes of the form 5x^2+264y^2.

The programs for A140001, there is no canonical definition to state claims against.
-/

/-! ## A140001.P104175089701053471

`∩[A139856(n+1), A139930(n+1)]`
-/

namespace A140001.P104175089701053471
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139856 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139930 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140001.P104175089701053471

/-! ## A140001.P12138943390613719279

`∩[A107135(n+1), A139930(n+1)]`
-/

namespace A140001.P12138943390613719279
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107135 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139930 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140001.P12138943390613719279

/-! ## A140001.P5028941365132489619

`∩[A107151(n+1), A139930(n+1)]`
-/

namespace A140001.P5028941365132489619
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107151 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139930 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140001.P5028941365132489619

/-! ## A140001.P1710380426266290923

`∩[A107003(n+1), A139930(n+1)]`
-/

namespace A140001.P1710380426266290923
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107003 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139930 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140001.P1710380426266290923

/-! ## A140001.P15789498817166722482

`p?[and(-3, A139930(n+1))]`
-/

namespace A140001.P15789498817166722482
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-3) (A139930 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A140001.P15789498817166722482

/-! ## A140001.P15942572331876487438

`∩[A008846(n+1), A139930(n+1)]`
-/

namespace A140001.P15942572331876487438
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008846 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139930 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140001.P15942572331876487438

/-! ## A140001.P12978372767531934479

`∩[A107003(n+1), A267478(n+1)]`
-/

namespace A140001.P12978372767531934479
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107003 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267478 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140001.P12978372767531934479

/-! ## A140001.P4352213718067692408

`∩[A139856(n+1), A267478(n+1)]`
-/

namespace A140001.P4352213718067692408
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139856 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267478 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140001.P4352213718067692408

/-! ## A140001.P12345984791286429093

`∩[A107135(n+1), A141182(n+1)]`
-/

namespace A140001.P12345984791286429093
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107135 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141182 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140001.P12345984791286429093

/-! ## A140001.P14157051465610348722

`∩[A139856(n+1), A141182(n+1)]`
-/

namespace A140001.P14157051465610348722
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139856 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141182 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140001.P14157051465610348722

/-! ## A140001.P5726540838814281433

`∩[A139930(n+1), A141182(n+1)]`
-/

namespace A140001.P5726540838814281433
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139930 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141182 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140001.P5726540838814281433

/-! ## A140001.P10348260733859058953

`∩[A139930(n+1), A354084(n+1)]`
-/

namespace A140001.P10348260733859058953
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139930 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354084 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140001.P10348260733859058953

/-! ## A140001.P5592378469976059863

`∩[A033205(n+1), A139930(n+1)]`
-/

namespace A140001.P5592378469976059863
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033205 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139930 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140001.P5592378469976059863

/-! ## A140001.P16979088700290309671

`∩[A007521(n+1), A139930(n+1)]`
-/

namespace A140001.P16979088700290309671
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007521 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139930 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140001.P16979088700290309671

/-! ## A140001.P14678236641188272994

`∩[A040117(n+1), A139930(n+1)]`
-/

namespace A140001.P14678236641188272994
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040117 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139930 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140001.P14678236641188272994

/-! ## A140001.P5629574986313451091

`∩[A045366(n+1), A139930(n+1)]`
-/

namespace A140001.P5629574986313451091
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045366 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139930 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140001.P5629574986313451091

/-! ## A140001.P11757043871380686711

`∩[A139930(n+1), A243183(n+1)]`
-/

namespace A140001.P11757043871380686711
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139930 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243183 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140001.P11757043871380686711

/-! ## A140001.P4900859143503381816

`∩[A084865(n+1), A139930(n+1)]`
-/

namespace A140001.P4900859143503381816
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084865 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139930 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140001.P4900859143503381816

/-! ## A140001.P9003288384927242926

`∩[A091729(n+1), A139930(n+1)]`
-/

namespace A140001.P9003288384927242926
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091729 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139930 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140001.P9003288384927242926

/-! ## A140001.P9231422543091165240

`∩[A107010(n+1), A139856(n+1)]`
-/

namespace A140001.P9231422543091165240
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107010 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139856 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140001.P9231422543091165240

/-!
# A140002: Primes of the form 8*x^2 + 165*y^2.

The programs for A140002, the canonical program `A140002.P18414971143705571415` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A140002 has offset 1).

The definition of A140002 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4996 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A140002.P18414971143705571415

`∩[A139899(n+1), A139928(n+1)]`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A140002

/-- `∩[A139899(n+1), A139928(n+1)]` -/
def P18414971143705571415.Spec : Prop :=
  ∀ n, (P18414971143705571415.a n : ℤ) = A140002 (n + 1)

theorem P18414971143705571415.correct : P18414971143705571415.Spec := by
  intro n
  simp only [A140002, Nat.add_sub_cancel]

end A140002

/-! ## A140002.P6210715010370177923

`∩[A107003(n+1), A139928(n+1)]`
-/

namespace A140002.P6210715010370177923
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107003 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139928 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140002.P6210715010370177923

namespace A140002

/-- `∩[A107003(n+1), A139928(n+1)]` -/
def P6210715010370177923.Spec : Prop :=
  ∀ n, (P6210715010370177923.a n : ℤ) = A140002 (n + 1)

end A140002

/-! ## A140002.P10508233332107078351

`∩[A139827(n+1), A139899(n+1)]`
-/

namespace A140002.P10508233332107078351
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139827 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139899 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140002.P10508233332107078351

namespace A140002

/-- `∩[A139827(n+1), A139899(n+1)]` -/
def P10508233332107078351.Spec : Prop :=
  ∀ n, (P10508233332107078351.a n : ℤ) = A140002 (n + 1)

end A140002

/-! ## A140002.P14670403028511582498

`∩[A107167(n+1), A139838(n+1)]`
-/

namespace A140002.P14670403028511582498
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107167 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139838 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140002.P14670403028511582498

namespace A140002

/-- `∩[A107167(n+1), A139838(n+1)]` -/
def P14670403028511582498.Spec : Prop :=
  ∀ n, (P14670403028511582498.a n : ℤ) = A140002 (n + 1)

end A140002

/-! ## A140002.P12521435936388636955

`∩[A107167(n+1), A139928(n+1)]`
-/

namespace A140002.P12521435936388636955
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107167 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139928 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140002.P12521435936388636955

namespace A140002

/-- `∩[A107167(n+1), A139928(n+1)]` -/
def P12521435936388636955.Spec : Prop :=
  ∀ n, (P12521435936388636955.a n : ℤ) = A140002 (n + 1)

end A140002

/-! ## A140002.P16105077611337171563

`∩[A139838(n+1), A139899(n+1)]`
-/

namespace A140002.P16105077611337171563
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139838 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139899 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140002.P16105077611337171563

namespace A140002

/-- `∩[A139838(n+1), A139899(n+1)]` -/
def P16105077611337171563.Spec : Prop :=
  ∀ n, (P16105077611337171563.a n : ℤ) = A140002 (n + 1)

end A140002

/-! ## A140002.P17897406839692173898

`∩[A139838(n+1), A139928(n+1)]`
-/

namespace A140002.P17897406839692173898
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139838 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139928 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140002.P17897406839692173898

namespace A140002

/-- `∩[A139838(n+1), A139928(n+1)]` -/
def P17897406839692173898.Spec : Prop :=
  ∀ n, (P17897406839692173898.a n : ℤ) = A140002 (n + 1)

end A140002

/-! ## A140002.P13882449905573656537

`∩[A139838(n+1), A141303(n+1)]`
-/

namespace A140002.P13882449905573656537
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139838 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141303 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140002.P13882449905573656537

namespace A140002

/-- `∩[A139838(n+1), A141303(n+1)]` -/
def P13882449905573656537.Spec : Prop :=
  ∀ n, (P13882449905573656537.a n : ℤ) = A140002 (n + 1)

end A140002

/-! ## A140002.P9185167083369795206

`∩[A107144(n+1), A139827(n+1)]`
-/

namespace A140002.P9185167083369795206
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107144 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139827 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140002.P9185167083369795206

namespace A140002

/-- `∩[A107144(n+1), A139827(n+1)]` -/
def P9185167083369795206.Spec : Prop :=
  ∀ n, (P9185167083369795206.a n : ℤ) = A140002 (n + 1)

end A140002

/-! ## A140002.P13570479427508598697

`∩[A107144(n+1), A139928(n+1)]`
-/

namespace A140002.P13570479427508598697
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107144 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139928 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140002.P13570479427508598697

namespace A140002

/-- `∩[A107144(n+1), A139928(n+1)]` -/
def P13570479427508598697.Spec : Prop :=
  ∀ n, (P13570479427508598697.a n : ℤ) = A140002 (n + 1)

end A140002

/-! ## A140002.P7291769086606718394

`p?[and(-3, A139928(n+1))]`
-/

namespace A140002.P7291769086606718394
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-3) (A139928 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A140002.P7291769086606718394

namespace A140002

/-- `p?[and(-3, A139928(n+1))]` -/
def P7291769086606718394.Spec : Prop :=
  ∀ n, P7291769086606718394.a n = A140002 (n + 1)

end A140002

/-! ## A140002.P225783281218926496

`∩[A008846(n+1), A139928(n+1)]`
-/

namespace A140002.P225783281218926496
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008846 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139928 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140002.P225783281218926496

namespace A140002

/-- `∩[A008846(n+1), A139928(n+1)]` -/
def P225783281218926496.Spec : Prop :=
  ∀ n, (P225783281218926496.a n : ℤ) = A140002 (n + 1)

end A140002

/-! ## A140002.P12667124322763075895

`∩[A139838(n+1), A343241(n+1)]`
-/

namespace A140002.P12667124322763075895
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139838 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343241 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140002.P12667124322763075895

namespace A140002

/-- `∩[A139838(n+1), A343241(n+1)]` -/
def P12667124322763075895.Spec : Prop :=
  ∀ n, (P12667124322763075895.a n : ℤ) = A140002 (n + 1)

end A140002

/-! ## A140002.P11477546039970012579

`∩[A007521(n+1), A139928(n+1)]`
-/

namespace A140002.P11477546039970012579
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007521 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139928 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140002.P11477546039970012579

namespace A140002

/-- `∩[A007521(n+1), A139928(n+1)]` -/
def P11477546039970012579.Spec : Prop :=
  ∀ n, (P11477546039970012579.a n : ℤ) = A140002 (n + 1)

end A140002

/-! ## A140002.P338291041414889458

`∩[A040117(n+1), A139928(n+1)]`
-/

namespace A140002.P338291041414889458
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040117 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139928 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140002.P338291041414889458

namespace A140002

/-- `∩[A040117(n+1), A139928(n+1)]` -/
def P338291041414889458.Spec : Prop :=
  ∀ n, (P338291041414889458.a n : ℤ) = A140002 (n + 1)

end A140002

/-! ## A140002.P9869591606617464785

`∩[A106911(n+1), A107003(n+1)]`
-/

namespace A140002.P9869591606617464785
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106911 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107003 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140002.P9869591606617464785

namespace A140002

/-- `∩[A106911(n+1), A107003(n+1)]` -/
def P9869591606617464785.Spec : Prop :=
  ∀ n, (P9869591606617464785.a n : ℤ) = A140002 (n + 1)

end A140002

/-! ## A140002.P12971432445977805847

`∩[A106859(n+1), A139838(n+1)]`
-/

namespace A140002.P12971432445977805847
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106859 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139838 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140002.P12971432445977805847

namespace A140002

/-- `∩[A106859(n+1), A139838(n+1)]` -/
def P12971432445977805847.Spec : Prop :=
  ∀ n, (P12971432445977805847.a n : ℤ) = A140002 (n + 1)

end A140002

/-! ## A140002.P3133278084906875591

`∩[A106911(n+1), A139899(n+1)]`
-/

namespace A140002.P3133278084906875591
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106911 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139899 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140002.P3133278084906875591

namespace A140002

/-- `∩[A106911(n+1), A139899(n+1)]` -/
def P3133278084906875591.Spec : Prop :=
  ∀ n, (P3133278084906875591.a n : ℤ) = A140002 (n + 1)

end A140002

/-! ## A140002.P16934032438629717624

`∩[A107144(n+1), A141176(n+1)]`
-/

namespace A140002.P16934032438629717624
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107144 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141176 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140002.P16934032438629717624

namespace A140002

/-- `∩[A107144(n+1), A141176(n+1)]` -/
def P16934032438629717624.Spec : Prop :=
  ∀ n, (P16934032438629717624.a n : ℤ) = A140002 (n + 1)

end A140002

/-! ## A140002.P4377076181433587851

`∩[A139899(n+1), A141176(n+1)]`
-/

namespace A140002.P4377076181433587851
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139899 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141176 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140002.P4377076181433587851

namespace A140002

/-- `∩[A139899(n+1), A141176(n+1)]` -/
def P4377076181433587851.Spec : Prop :=
  ∀ n, (P4377076181433587851.a n : ℤ) = A140002 (n + 1)

end A140002

/-!
# A140003: Primes of the form 8x^2+8xy+167y^2.

The programs for A140003, the canonical program `A140003.P14266301806652680954` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A140003 has offset 1).

The definition of A140003 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4985 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A140003.P14266301806652680954

`∩[A139857(n+1), A139928(n+1)]`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A140003

/-- `∩[A139857(n+1), A139928(n+1)]` -/
def P14266301806652680954.Spec : Prop :=
  ∀ n, (P14266301806652680954.a n : ℤ) = A140003 (n + 1)

theorem P14266301806652680954.correct : P14266301806652680954.Spec := by
  intro n
  simp only [A140003, Nat.add_sub_cancel]

end A140003

/-! ## A140003.P17942824325946218013

`∩[A139857(n+1), A139867(n+1)]`
-/

namespace A140003.P17942824325946218013
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139857 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139867 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140003.P17942824325946218013

namespace A140003

/-- `∩[A139857(n+1), A139867(n+1)]` -/
def P17942824325946218013.Spec : Prop :=
  ∀ n, (P17942824325946218013.a n : ℤ) = A140003 (n + 1)

end A140003

/-! ## A140003.P5568077410557930982

`∩[A139830(n+1), A139867(n+1)]`
-/

namespace A140003.P5568077410557930982
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139830 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139867 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140003.P5568077410557930982

namespace A140003

/-- `∩[A139830(n+1), A139867(n+1)]` -/
def P5568077410557930982.Spec : Prop :=
  ∀ n, (P5568077410557930982.a n : ℤ) = A140003 (n + 1)

end A140003

/-! ## A140003.P97207952262998908

`∩[A139830(n+1), A139928(n+1)]`
-/

namespace A140003.P97207952262998908
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139830 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139928 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140003.P97207952262998908

namespace A140003

/-- `∩[A139830(n+1), A139928(n+1)]` -/
def P97207952262998908.Spec : Prop :=
  ∀ n, (P97207952262998908.a n : ℤ) = A140003 (n + 1)

end A140003

/-! ## A140003.P14169240992713582147

`∩[A107169(n+1), A139928(n+1)]`
-/

namespace A140003.P14169240992713582147
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107169 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139928 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140003.P14169240992713582147

namespace A140003

/-- `∩[A107169(n+1), A139928(n+1)]` -/
def P14169240992713582147.Spec : Prop :=
  ∀ n, (P14169240992713582147.a n : ℤ) = A140003 (n + 1)

end A140003

/-! ## A140003.P2875339475988636992

`∩[A134517(n+1), A139867(n+1)]`
-/

namespace A140003.P2875339475988636992
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134517 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139867 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140003.P2875339475988636992

namespace A140003

/-- `∩[A134517(n+1), A139867(n+1)]` -/
def P2875339475988636992.Spec : Prop :=
  ∀ n, (P2875339475988636992.a n : ℤ) = A140003 (n + 1)

end A140003

/-! ## A140003.P3440024691461513746

`∩[A134517(n+1), A139928(n+1)]`
-/

namespace A140003.P3440024691461513746
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134517 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139928 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140003.P3440024691461513746

namespace A140003

/-- `∩[A134517(n+1), A139928(n+1)]` -/
def P3440024691461513746.Spec : Prop :=
  ∀ n, (P3440024691461513746.a n : ℤ) = A140003 (n + 1)

end A140003

/-! ## A140003.P5891313621009768474

`p?[or(4, A139867(n+1))]`
-/

namespace A140003.P5891313621009768474
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 4 (A139867 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A140003.P5891313621009768474

namespace A140003

/-- `p?[or(4, A139867(n+1))]` -/
def P5891313621009768474.Spec : Prop :=
  ∀ n, P5891313621009768474.a n = A140003 (n + 1)

end A140003

/-! ## A140003.P12304434273758243226

`∩[A139928(n+1), A369250(n+1)]`
-/

namespace A140003.P12304434273758243226
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139928 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369250 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140003.P12304434273758243226

namespace A140003

/-- `∩[A139928(n+1), A369250(n+1)]` -/
def P12304434273758243226.Spec : Prop :=
  ∀ n, (P12304434273758243226.a n : ℤ) = A140003 (n + 1)

end A140003

/-! ## A140003.P3343693403225243951

`∩[A130063(n+1), A139867(n+1)]`
-/

namespace A140003.P3343693403225243951
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130063 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139867 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140003.P3343693403225243951

namespace A140003

/-- `∩[A130063(n+1), A139867(n+1)]` -/
def P3343693403225243951.Spec : Prop :=
  ∀ n, (P3343693403225243951.a n : ℤ) = A140003 (n + 1)

end A140003

/-! ## A140003.P15193171463866506016

`∩[A130063(n+1), A139928(n+1)]`
-/

namespace A140003.P15193171463866506016
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130063 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139928 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140003.P15193171463866506016

namespace A140003

/-- `∩[A130063(n+1), A139928(n+1)]` -/
def P15193171463866506016.Spec : Prop :=
  ∀ n, (P15193171463866506016.a n : ℤ) = A140003 (n + 1)

end A140003

/-! ## A140003.P11537754671774533009

`∩[A106911(n+1), A134517(n+1)]`
-/

namespace A140003.P11537754671774533009
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106911 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134517 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140003.P11537754671774533009

namespace A140003

/-- `∩[A106911(n+1), A134517(n+1)]` -/
def P11537754671774533009.Spec : Prop :=
  ∀ n, (P11537754671774533009.a n : ℤ) = A140003 (n + 1)

end A140003

/-! ## A140003.P16145765376421362718

`∩[A106911(n+1), A139857(n+1)]`
-/

namespace A140003.P16145765376421362718
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106911 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139857 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140003.P16145765376421362718

namespace A140003

/-- `∩[A106911(n+1), A139857(n+1)]` -/
def P16145765376421362718.Spec : Prop :=
  ∀ n, (P16145765376421362718.a n : ℤ) = A140003 (n + 1)

end A140003

/-! ## A140003.P11729445587019304292

`∩[A139830(n+1), A141176(n+1)]`
-/

namespace A140003.P11729445587019304292
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139830 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141176 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140003.P11729445587019304292

namespace A140003

/-- `∩[A139830(n+1), A141176(n+1)]` -/
def P11729445587019304292.Spec : Prop :=
  ∀ n, (P11729445587019304292.a n : ℤ) = A140003 (n + 1)

end A140003

/-! ## A140003.P269636693028766984

`∩[A139857(n+1), A141176(n+1)]`
-/

namespace A140003.P269636693028766984
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139857 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141176 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140003.P269636693028766984

namespace A140003

/-- `∩[A139857(n+1), A141176(n+1)]` -/
def P269636693028766984.Spec : Prop :=
  ∀ n, (P269636693028766984.a n : ℤ) = A140003 (n + 1)

end A140003

/-! ## A140003.P17872059345217981471

`∩[A007522(n+1), A139867(n+1)]`
-/

namespace A140003.P17872059345217981471
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007522 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139867 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140003.P17872059345217981471

namespace A140003

/-- `∩[A007522(n+1), A139867(n+1)]` -/
def P17872059345217981471.Spec : Prop :=
  ∀ n, (P17872059345217981471.a n : ℤ) = A140003 (n + 1)

end A140003

/-! ## A140003.P3352117170517061148

`∩[A007522(n+1), A139928(n+1)]`
-/

namespace A140003.P3352117170517061148
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007522 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139928 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140003.P3352117170517061148

namespace A140003

/-- `∩[A007522(n+1), A139928(n+1)]` -/
def P3352117170517061148.Spec : Prop :=
  ∀ n, (P3352117170517061148.a n : ℤ) = A140003 (n + 1)

end A140003

/-! ## A140003.P1261999914161503060

`∩[A068231(n+1), A139928(n+1)]`
-/

namespace A140003.P1261999914161503060
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068231 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139928 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140003.P1261999914161503060

namespace A140003

/-- `∩[A068231(n+1), A139928(n+1)]` -/
def P1261999914161503060.Spec : Prop :=
  ∀ n, (P1261999914161503060.a n : ℤ) = A140003 (n + 1)

end A140003

/-! ## A140003.P3315598171957215565

`∩[A122870(n+1), A139928(n+1)]`
-/

namespace A140003.P3315598171957215565
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122870 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139928 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140003.P3315598171957215565

namespace A140003

/-- `∩[A122870(n+1), A139928(n+1)]` -/
def P3315598171957215565.Spec : Prop :=
  ∀ n, (P3315598171957215565.a n : ℤ) = A140003 (n + 1)

end A140003

/-! ## A140003.P15003887451696911902

`∩[A139928(n+1), A141187(n+1)]`
-/

namespace A140003.P15003887451696911902
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139928 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141187 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140003.P15003887451696911902

namespace A140003

/-- `∩[A139928(n+1), A141187(n+1)]` -/
def P15003887451696911902.Spec : Prop :=
  ∀ n, (P15003887451696911902.a n : ℤ) = A140003 (n + 1)

end A140003

/-!
# A140004: Primes of the form 11x^2+120y^2.

The programs for A140004, the canonical program `A140004.P4564587105245799958` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A140004 has offset 1).

The definition of A140004 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2509 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A140004.P1864171534364196846

`∩[A139859(n+1), A139933(n+1)]`
-/

namespace A140004.P1864171534364196846
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139859 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139933 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140004.P1864171534364196846

namespace A140004

/-- `∩[A139859(n+1), A139933(n+1)]` -/
def P1864171534364196846.Spec : Prop :=
  ∀ n, (P1864171534364196846.a n : ℤ) = A140004 (n + 1)

end A140004

/-! ## A140004.P15499564417207855085

`∩[A139933(n+1), A332446(n+1)]`
-/

namespace A140004.P15499564417207855085
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139933 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332446 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140004.P15499564417207855085

namespace A140004

/-- `∩[A139933(n+1), A332446(n+1)]` -/
def P15499564417207855085.Spec : Prop :=
  ∀ n, (P15499564417207855085.a n : ℤ) = A140004 (n + 1)

end A140004

/-! ## A140004.P14598800391234264912

`∩[A107135(n+1), A139933(n+1)]`
-/

namespace A140004.P14598800391234264912
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107135 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139933 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140004.P14598800391234264912

namespace A140004

/-- `∩[A107135(n+1), A139933(n+1)]` -/
def P14598800391234264912.Spec : Prop :=
  ∀ n, (P14598800391234264912.a n : ℤ) = A140004 (n + 1)

end A140004

/-! ## A140004.P14363205136667568218

`∩[A107007(n+1), A139933(n+1)]`
-/

namespace A140004.P14363205136667568218
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107007 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139933 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140004.P14363205136667568218

namespace A140004

/-- `∩[A107007(n+1), A139933(n+1)]` -/
def P14363205136667568218.Spec : Prop :=
  ∀ n, (P14363205136667568218.a n : ℤ) = A140004 (n + 1)

end A140004

/-! ## A140004.P3027828178947591101

`∩[A139933(n+1), A168539(n+1)]`
-/

namespace A140004.P3027828178947591101
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139933 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168539 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140004.P3027828178947591101

namespace A140004

/-- `∩[A139933(n+1), A168539(n+1)]` -/
def P3027828178947591101.Spec : Prop :=
  ∀ n, (P3027828178947591101.a n : ℤ) = A140004 (n + 1)

end A140004

/-! ## A140004.P1011288150716746563

`∩[A139933(n+1), A141302(n+1)]`
-/

namespace A140004.P1011288150716746563
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139933 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141302 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140004.P1011288150716746563

namespace A140004

/-- `∩[A139933(n+1), A141302(n+1)]` -/
def P1011288150716746563.Spec : Prop :=
  ∀ n, (P1011288150716746563.a n : ℤ) = A140004 (n + 1)

end A140004

/-! ## A140004.P11918582970034920

`∩[A139829(n+1), A139933(n+1)]`
-/

namespace A140004.P11918582970034920
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139829 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139933 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140004.P11918582970034920

namespace A140004

/-- `∩[A139829(n+1), A139933(n+1)]` -/
def P11918582970034920.Spec : Prop :=
  ∀ n, (P11918582970034920.a n : ℤ) = A140004 (n + 1)

end A140004

/-! ## A140004.P4564587105245799958

`∩[A107135(n+1), A107201(n+1)]`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A140004

/-- `∩[A107135(n+1), A107201(n+1)]` -/
def P4564587105245799958.Spec : Prop :=
  ∀ n, (P4564587105245799958.a n : ℤ) = A140004 (n + 1)

theorem P4564587105245799958.correct : P4564587105245799958.Spec := by
  intro n
  simp only [A140004, Nat.add_sub_cancel]

end A140004

/-! ## A140004.P8746756707326600432

`∩[A107201(n+1), A139859(n+1)]`
-/

namespace A140004.P8746756707326600432
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107201 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139859 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140004.P8746756707326600432

namespace A140004

/-- `∩[A107201(n+1), A139859(n+1)]` -/
def P8746756707326600432.Spec : Prop :=
  ∀ n, (P8746756707326600432.a n : ℤ) = A140004 (n + 1)

end A140004

/-! ## A140004.P7278691970299651399

`∩[A107201(n+1), A139933(n+1)]`
-/

namespace A140004.P7278691970299651399
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107201 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139933 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140004.P7278691970299651399

namespace A140004

/-- `∩[A107201(n+1), A139933(n+1)]` -/
def P7278691970299651399.Spec : Prop :=
  ∀ n, (P7278691970299651399.a n : ℤ) = A140004 (n + 1)

end A140004

/-! ## A140004.P2363278308913409102

`∩[A107201(n+1), A141302(n+1)]`
-/

namespace A140004.P2363278308913409102
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107201 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141302 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140004.P2363278308913409102

namespace A140004

/-- `∩[A107201(n+1), A141302(n+1)]` -/
def P2363278308913409102.Spec : Prop :=
  ∀ n, (P2363278308913409102.a n : ℤ) = A140004 (n + 1)

end A140004

/-! ## A140004.P1614360612667039192

`∩[A084865(n+1), A139933(n+1)]`
-/

namespace A140004.P1614360612667039192
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084865 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139933 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140004.P1614360612667039192

namespace A140004

/-- `∩[A084865(n+1), A139933(n+1)]` -/
def P1614360612667039192.Spec : Prop :=
  ∀ n, (P1614360612667039192.a n : ℤ) = A140004 (n + 1)

end A140004

/-! ## A140004.P15425924736430816441

`∩[A139829(n+1), A141176(n+1)]`
-/

namespace A140004.P15425924736430816441
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139829 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141176 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140004.P15425924736430816441

namespace A140004

/-- `∩[A139829(n+1), A141176(n+1)]` -/
def P15425924736430816441.Spec : Prop :=
  ∀ n, (P15425924736430816441.a n : ℤ) = A140004 (n + 1)

end A140004

/-! ## A140004.P2779307844031396964

`∩[A139859(n+1), A141176(n+1)]`
-/

namespace A140004.P2779307844031396964
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139859 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141176 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140004.P2779307844031396964

namespace A140004

/-- `∩[A139859(n+1), A141176(n+1)]` -/
def P2779307844031396964.Spec : Prop :=
  ∀ n, (P2779307844031396964.a n : ℤ) = A140004 (n + 1)

end A140004

/-! ## A140004.P1304552195461396006

`∩[A068231(n+1), A139933(n+1)]`
-/

namespace A140004.P1304552195461396006
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068231 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139933 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140004.P1304552195461396006

namespace A140004

/-- `∩[A068231(n+1), A139933(n+1)]` -/
def P1304552195461396006.Spec : Prop :=
  ∀ n, (P1304552195461396006.a n : ℤ) = A140004 (n + 1)

end A140004

/-! ## A140004.P17474296604019960906

`∩[A139933(n+1), A141123(n+1)]`
-/

namespace A140004.P17474296604019960906
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139933 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141123 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140004.P17474296604019960906

namespace A140004

/-- `∩[A139933(n+1), A141123(n+1)]` -/
def P17474296604019960906.Spec : Prop :=
  ∀ n, (P17474296604019960906.a n : ℤ) = A140004 (n + 1)

end A140004

/-! ## A140004.P6997821616673709187

`∩[A139933(n+1), A141187(n+1)]`
-/

namespace A140004.P6997821616673709187
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139933 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141187 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140004.P6997821616673709187

namespace A140004

/-- `∩[A139933(n+1), A141187(n+1)]` -/
def P6997821616673709187.Spec : Prop :=
  ∀ n, (P6997821616673709187.a n : ℤ) = A140004 (n + 1)

end A140004

/-! ## A140004.P13148367061881583607

`∩[A007520(n+1), A139933(n+1)]`
-/

namespace A140004.P13148367061881583607
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007520 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139933 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140004.P13148367061881583607

namespace A140004

/-- `∩[A007520(n+1), A139933(n+1)]` -/
def P13148367061881583607.Spec : Prop :=
  ∀ n, (P13148367061881583607.a n : ℤ) = A140004 (n + 1)

end A140004

/-! ## A140004.P15117670476976747851

`∩[A045339(n+1), A139933(n+1)]`
-/

namespace A140004.P15117670476976747851
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045339 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139933 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140004.P15117670476976747851

namespace A140004

/-- `∩[A045339(n+1), A139933(n+1)]` -/
def P15117670476976747851.Spec : Prop :=
  ∀ n, (P15117670476976747851.a n : ℤ) = A140004 (n + 1)

end A140004

/-! ## A140004.P12308410229045938629

`∩[A122869(n+1), A139933(n+1)]`
-/

namespace A140004.P12308410229045938629
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122869 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139933 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140004.P12308410229045938629

namespace A140004

/-- `∩[A122869(n+1), A139933(n+1)]` -/
def P12308410229045938629.Spec : Prop :=
  ∀ n, (P12308410229045938629.a n : ℤ) = A140004 (n + 1)

end A140004

/-!
# A140005: Primes of the form 12x^2+12xy+113y^2.

The programs for A140005, there is no canonical definition to state claims against.
-/

/-! ## A140005.P18129555064698864610

`∩[A139858(n+1), A139929(n+1)]`
-/

namespace A140005.P18129555064698864610
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139858 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139929 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140005.P18129555064698864610

/-! ## A140005.P7866073704230410471

`∩[A139858(n+1), A139869(n+1)]`
-/

namespace A140005.P7866073704230410471
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139858 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139869 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140005.P7866073704230410471

/-! ## A140005.P12509845290979965198

`∩[A139869(n+1), A139929(n+1)]`
-/

namespace A140005.P12509845290979965198
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139869 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139929 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140005.P12509845290979965198

/-! ## A140005.P7726477840195334243

`∩[A107202(n+1), A139858(n+1)]`
-/

namespace A140005.P7726477840195334243
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107202 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139858 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140005.P7726477840195334243

/-! ## A140005.P18439482428508479123

`∩[A107202(n+1), A139869(n+1)]`
-/

namespace A140005.P18439482428508479123
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107202 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139869 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140005.P18439482428508479123

/-! ## A140005.P7840121006878317978

`∩[A107202(n+1), A139929(n+1)]`
-/

namespace A140005.P7840121006878317978
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107202 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139929 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140005.P7840121006878317978

/-! ## A140005.P2089506604687676454

`∩[A107137(n+1), A107202(n+1)]`
-/

namespace A140005.P2089506604687676454
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107137 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107202 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140005.P2089506604687676454

/-! ## A140005.P5089228639142094002

`∩[A107137(n+1), A139869(n+1)]`
-/

namespace A140005.P5089228639142094002
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107137 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139869 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140005.P5089228639142094002

/-! ## A140005.P11569944689323970910

`∩[A107137(n+1), A139929(n+1)]`
-/

namespace A140005.P11569944689323970910
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107137 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139929 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140005.P11569944689323970910

/-! ## A140005.P11489411722285141096

`∩[A107181(n+1), A139869(n+1)]`
-/

namespace A140005.P11489411722285141096
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107181 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139869 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140005.P11489411722285141096

/-! ## A140005.P15806231493849746732

`∩[A107181(n+1), A139929(n+1)]`
-/

namespace A140005.P15806231493849746732
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107181 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139929 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140005.P15806231493849746732

/-! ## A140005.P10536527991650865193

`∩[A107167(n+1), A107202(n+1)]`
-/

namespace A140005.P10536527991650865193
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107167 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107202 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140005.P10536527991650865193

/-! ## A140005.P2242067376505798353

`∩[A107167(n+1), A139929(n+1)]`
-/

namespace A140005.P2242067376505798353
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107167 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139929 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140005.P2242067376505798353

/-! ## A140005.P1867469441653914060

`∩[A107202(n+1), A141303(n+1)]`
-/

namespace A140005.P1867469441653914060
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107202 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141303 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140005.P1867469441653914060

/-! ## A140005.P3021643213490256348

`∩[A139929(n+1), A141303(n+1)]`
-/

namespace A140005.P3021643213490256348
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139929 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141303 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140005.P3021643213490256348

/-! ## A140005.P5458122927691145665

`p?[and(-7, A139929(n+1))]`
-/

namespace A140005.P5458122927691145665
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-7) (A139929 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A140005.P5458122927691145665

/-! ## A140005.P1535945422975321741

`∩[A139869(n+1), A332227(n+1)]`
-/

namespace A140005.P1535945422975321741
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139869 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332227 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140005.P1535945422975321741

/-! ## A140005.P4508665307091194582

`∩[A139929(n+1), A332227(n+1)]`
-/

namespace A140005.P4508665307091194582
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139929 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332227 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140005.P4508665307091194582

/-! ## A140005.P2469020794056150889

`∩[A008846(n+1), A139929(n+1)]`
-/

namespace A140005.P2469020794056150889
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008846 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139929 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140005.P2469020794056150889

/-! ## A140005.P8359154985278612632

`∩[A107137(n+1), A141182(n+1)]`
-/

namespace A140005.P8359154985278612632
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107137 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141182 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140005.P8359154985278612632

/-!
# A140006: Primes of the form 15x^2+88y^2.

The programs for A140006, there is no canonical definition to state claims against.
-/

/-! ## A140006.P6868817338831768849

`∩[A139868(n+1), A140633(n+1)]`
-/

namespace A140006.P6868817338831768849
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139868 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140633 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140006.P6868817338831768849

/-! ## A140006.P18275835121533158717

`∩[A139868(n+1), A139934(n+1)]`
-/

namespace A140006.P18275835121533158717
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139868 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139934 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140006.P18275835121533158717

/-! ## A140006.P3095730685515464464

`∩[A139934(n+1), A140633(n+1)]`
-/

namespace A140006.P3095730685515464464
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139934 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140633 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140006.P3095730685515464464

/-! ## A140006.P3201506503606323887

`∩[A139832(n+1), A139934(n+1)]`
-/

namespace A140006.P3201506503606323887
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139832 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139934 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140006.P3201506503606323887

/-! ## A140006.P11921515502871117649

`∩[A139934(n+1), A141304(n+1)]`
-/

namespace A140006.P11921515502871117649
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139934 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141304 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140006.P11921515502871117649

/-! ## A140006.P8458383945172504362

`∩[A139830(n+1), A139868(n+1)]`
-/

namespace A140006.P8458383945172504362
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139830 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139868 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140006.P8458383945172504362

/-! ## A140006.P9450219194508406317

`∩[A139830(n+1), A139934(n+1)]`
-/

namespace A140006.P9450219194508406317
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139830 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139934 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140006.P9450219194508406317

/-! ## A140006.P208757365216035714

`∩[A107006(n+1), A139868(n+1)]`
-/

namespace A140006.P208757365216035714
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107006 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139868 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140006.P208757365216035714

/-! ## A140006.P1043885553794933920

`∩[A107006(n+1), A139934(n+1)]`
-/

namespace A140006.P1043885553794933920
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107006 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139934 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140006.P1043885553794933920

/-! ## A140006.P3684710176119393737

`∩[A139832(n+1), A139837(n+1)]`
-/

namespace A140006.P3684710176119393737
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139832 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139837 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140006.P3684710176119393737

/-! ## A140006.P2527346416406885210

`∩[A139837(n+1), A139868(n+1)]`
-/

namespace A140006.P2527346416406885210
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139837 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139868 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140006.P2527346416406885210

/-! ## A140006.P18285464428903281413

`∩[A139837(n+1), A139934(n+1)]`
-/

namespace A140006.P18285464428903281413
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139837 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139934 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140006.P18285464428903281413

/-! ## A140006.P8294199068198916748

`∩[A139837(n+1), A140633(n+1)]`
-/

namespace A140006.P8294199068198916748
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139837 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140633 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140006.P8294199068198916748

/-! ## A140006.P10784093271898800897

`∩[A139837(n+1), A141304(n+1)]`
-/

namespace A140006.P10784093271898800897
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139837 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141304 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140006.P10784093271898800897

/-! ## A140006.P350642410034380775

`p?[or(2, A139934(n+1))]`
-/

namespace A140006.P350642410034380775
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 2 (A139934 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A140006.P350642410034380775

/-! ## A140006.P9747823310825312583

`∩[A107013(n+1), A139830(n+1)]`
-/

namespace A140006.P9747823310825312583
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107013 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139830 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140006.P9747823310825312583

/-! ## A140006.P17185772432839124497

`∩[A107013(n+1), A140633(n+1)]`
-/

namespace A140006.P17185772432839124497
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107013 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140633 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140006.P17185772432839124497

/-! ## A140006.P8596703651579563076

`∩[A139830(n+1), A141177(n+1)]`
-/

namespace A140006.P8596703651579563076
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139830 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141177 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140006.P8596703651579563076

/-! ## A140006.P9320905380051059151

`∩[A140633(n+1), A141177(n+1)]`
-/

namespace A140006.P9320905380051059151
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140633 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141177 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140006.P9320905380051059151

/-! ## A140006.P7656562487322779202

`∩[A033199(n+1), A139868(n+1)]`
-/

namespace A140006.P7656562487322779202
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033199 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139868 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140006.P7656562487322779202

/-!
# A140007: Primes of the form 20x^2+20xy+71y^2.

The programs for A140007, there is no canonical definition to state claims against.
-/

/-! ## A140007.P18347101941049594446

`∩[A139930(n+1), A295835(n+1)]`
-/

namespace A140007.P18347101941049594446
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139930 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295835 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140007.P18347101941049594446

/-! ## A140007.P11009289430460355984

`∩[A139872(n+1), A139930(n+1)]`
-/

namespace A140007.P11009289430460355984
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139872 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139930 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140007.P11009289430460355984

/-! ## A140007.P16665468133325443272

`∩[A139872(n+1), A295835(n+1)]`
-/

namespace A140007.P16665468133325443272
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139872 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295835 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140007.P16665468133325443272

/-! ## A140007.P14575109768425591685

`∩[A139872(n+1), A140614(n+1)]`
-/

namespace A140007.P14575109768425591685
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139872 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140614 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140007.P14575109768425591685

/-! ## A140007.P13266064355041292539

`∩[A139930(n+1), A140614(n+1)]`
-/

namespace A140007.P13266064355041292539
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139930 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140614 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140007.P13266064355041292539

/-! ## A140007.P3457557873931875883

`∩[A140614(n+1), A295835(n+1)]`
-/

namespace A140007.P3457557873931875883
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140614 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295835 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140007.P3457557873931875883

/-! ## A140007.P13788768577289554843

`∩[A107138(n+1), A139930(n+1)]`
-/

namespace A140007.P13788768577289554843
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107138 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139930 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140007.P13788768577289554843

/-! ## A140007.P2641479854572920624

`∩[A107138(n+1), A295835(n+1)]`
-/

namespace A140007.P2641479854572920624
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107138 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295835 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140007.P2641479854572920624

/-! ## A140007.P2155009762333842304

`∩[A139930(n+1), A141302(n+1)]`
-/

namespace A140007.P2155009762333842304
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139930 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141302 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140007.P2155009762333842304

/-! ## A140007.P15497380829792736150

`∩[A140614(n+1), A141302(n+1)]`
-/

namespace A140007.P15497380829792736150
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140614 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141302 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140007.P15497380829792736150

/-! ## A140007.P17297309295652332831

`∩[A134517(n+1), A139872(n+1)]`
-/

namespace A140007.P17297309295652332831
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134517 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139872 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140007.P17297309295652332831

/-! ## A140007.P6274803549720597277

`∩[A134517(n+1), A139930(n+1)]`
-/

namespace A140007.P6274803549720597277
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134517 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139930 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140007.P6274803549720597277

/-! ## A140007.P13680522283704257364

`∩[A139837(n+1), A139872(n+1)]`
-/

namespace A140007.P13680522283704257364
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139837 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139872 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140007.P13680522283704257364

/-! ## A140007.P14565218188777498465

`∩[A139837(n+1), A139930(n+1)]`
-/

namespace A140007.P14565218188777498465
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139837 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139930 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140007.P14565218188777498465

/-! ## A140007.P14867272251466776857

`∩[A139837(n+1), A141302(n+1)]`
-/

namespace A140007.P14867272251466776857
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139837 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141302 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140007.P14867272251466776857

/-! ## A140007.P7415514207259817761

`∩[A139837(n+1), A295835(n+1)]`
-/

namespace A140007.P7415514207259817761
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139837 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295835 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140007.P7415514207259817761

/-! ## A140007.P18313557795047972766

`p?[or(4, A139872(n+1))]`
-/

namespace A140007.P18313557795047972766
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 4 (A139872 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A140007.P18313557795047972766

/-! ## A140007.P299743375180368620

`∩[A139930(n+1), A369250(n+1)]`
-/

namespace A140007.P299743375180368620
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139930 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369250 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140007.P299743375180368620

/-! ## A140007.P2882796096887875783

`∩[A134517(n+1), A267478(n+1)]`
-/

namespace A140007.P2882796096887875783
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134517 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267478 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140007.P2882796096887875783

/-! ## A140007.P3005608710099325533

`∩[A140614(n+1), A267478(n+1)]`
-/

namespace A140007.P3005608710099325533
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140614 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267478 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140007.P3005608710099325533

/-!
# A140008: Primes of the form 24x^2+55y^2.

The programs for A140008, there is no canonical definition to state claims against.
-/

/-! ## A140008.P6000012811814077919

`∩[A139871(n+1), A140613(n+1)]`
-/

namespace A140008.P6000012811814077919
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139871 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140613 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140008.P6000012811814077919

/-! ## A140008.P1551125036459451508

`∩[A139855(n+1), A139871(n+1)]`
-/

namespace A140008.P1551125036459451508
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139855 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139871 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140008.P1551125036459451508

/-! ## A140008.P13004475991932500086

`∩[A139855(n+1), A140613(n+1)]`
-/

namespace A140008.P13004475991932500086
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139855 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140613 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140008.P13004475991932500086

/-! ## A140008.P15741809017182851131

`∩[A139855(n+1), A139931(n+1)]`
-/

namespace A140008.P15741809017182851131
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139855 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139931 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140008.P15741809017182851131

/-! ## A140008.P5191974132909901482

`∩[A139871(n+1), A139931(n+1)]`
-/

namespace A140008.P5191974132909901482
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139871 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139931 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140008.P5191974132909901482

/-! ## A140008.P1349519506725516611

`∩[A139931(n+1), A140613(n+1)]`
-/

namespace A140008.P1349519506725516611
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139931 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140613 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140008.P1349519506725516611

/-! ## A140008.P17203907685106505607

`∩[A033220(n+1), A139871(n+1)]`
-/

namespace A140008.P17203907685106505607
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033220 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139871 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140008.P17203907685106505607

/-! ## A140008.P109601591378066613

`∩[A033220(n+1), A139931(n+1)]`
-/

namespace A140008.P109601591378066613
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033220 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139931 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140008.P109601591378066613

/-! ## A140008.P4768989809887433472

`∩[A033220(n+1), A140613(n+1)]`
-/

namespace A140008.P4768989809887433472
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033220 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140613 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140008.P4768989809887433472

/-! ## A140008.P14086222433237515226

`∩[A033220(n+1), A139828(n+1)]`
-/

namespace A140008.P14086222433237515226
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033220 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139828 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140008.P14086222433237515226

/-! ## A140008.P8321990450587066049

`∩[A139828(n+1), A139855(n+1)]`
-/

namespace A140008.P8321990450587066049
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139828 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139855 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140008.P8321990450587066049

/-! ## A140008.P139486823458765628

`∩[A139828(n+1), A139931(n+1)]`
-/

namespace A140008.P139486823458765628
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139828 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139931 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140008.P139486823458765628

/-! ## A140008.P5710216135538684401

`∩[A107006(n+1), A139871(n+1)]`
-/

namespace A140008.P5710216135538684401
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107006 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139871 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140008.P5710216135538684401

/-! ## A140008.P16368080577644881123

`∩[A107006(n+1), A139931(n+1)]`
-/

namespace A140008.P16368080577644881123
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107006 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139931 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140008.P16368080577644881123

/-! ## A140008.P7944062865163064852

`∩[A107168(n+1), A139931(n+1)]`
-/

namespace A140008.P7944062865163064852
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107168 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139931 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140008.P7944062865163064852

/-! ## A140008.P14390724436416279410

`∩[A107168(n+1), A140613(n+1)]`
-/

namespace A140008.P14390724436416279410
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107168 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140613 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140008.P14390724436416279410

/-! ## A140008.P10559762450131786335

`p?[or(2, A139931(n+1))]`
-/

namespace A140008.P10559762450131786335
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 2 (A139931 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A140008.P10559762450131786335

/-! ## A140008.P10306261213651276724

`∩[A140613(n+1), A243174(n+1)]`
-/

namespace A140008.P10306261213651276724
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140613 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243174 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140008.P10306261213651276724

/-! ## A140008.P1060031701404670898

`∩[A139828(n+1), A141180(n+1)]`
-/

namespace A140008.P1060031701404670898
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139828 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141180 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140008.P1060031701404670898

/-! ## A140008.P17647287561017131075

`∩[A139871(n+1), A141180(n+1)]`
-/

namespace A140008.P17647287561017131075
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139871 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141180 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140008.P17647287561017131075

/-!
# A140009: Primes of the form 24x^2+24xy+61y^2.

The programs for A140009, the canonical program `A140009.P3846978172525219397` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A140009 has offset 1).

The definition of A140009 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A140009.P12493304893502534374

`∩[A139898(n+1), A139931(n+1)]`
-/

namespace A140009.P12493304893502534374
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139898 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139931 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140009.P12493304893502534374

namespace A140009

/-- `∩[A139898(n+1), A139931(n+1)]` -/
def P12493304893502534374.Spec : Prop :=
  ∀ n, (P12493304893502534374.a n : ℤ) = A140009 (n + 1)

end A140009

/-! ## A140009.P3846978172525219397

`∩[A139898(n+1), A140615(n+1)]`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A140009

/-- `∩[A139898(n+1), A140615(n+1)]` -/
def P3846978172525219397.Spec : Prop :=
  ∀ n, (P3846978172525219397.a n : ℤ) = A140009 (n + 1)

theorem P3846978172525219397.correct : P3846978172525219397.Spec := by
  intro n
  simp only [A140009, Nat.add_sub_cancel]

end A140009

/-! ## A140009.P4182434856064473161

`∩[A139931(n+1), A140615(n+1)]`
-/

namespace A140009.P4182434856064473161
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139931 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140615 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140009.P4182434856064473161

namespace A140009

/-- `∩[A139931(n+1), A140615(n+1)]` -/
def P4182434856064473161.Spec : Prop :=
  ∀ n, (P4182434856064473161.a n : ℤ) = A140009 (n + 1)

end A140009

/-! ## A140009.P4466788450781980749

`∩[A107152(n+1), A139931(n+1)]`
-/

namespace A140009.P4466788450781980749
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107152 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139931 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140009.P4466788450781980749

namespace A140009

/-- `∩[A107152(n+1), A139931(n+1)]` -/
def P4466788450781980749.Spec : Prop :=
  ∀ n, (P4466788450781980749.a n : ℤ) = A140009 (n + 1)

end A140009

/-! ## A140009.P7833631001224555390

`∩[A107152(n+1), A140615(n+1)]`
-/

namespace A140009.P7833631001224555390
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107152 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140615 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140009.P7833631001224555390

namespace A140009

/-- `∩[A107152(n+1), A140615(n+1)]` -/
def P7833631001224555390.Spec : Prop :=
  ∀ n, (P7833631001224555390.a n : ℤ) = A140009 (n + 1)

end A140009

/-! ## A140009.P9184498569898553612

`∩[A139530(n+1), A139931(n+1)]`
-/

namespace A140009.P9184498569898553612
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139530 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139931 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140009.P9184498569898553612

namespace A140009

/-- `∩[A139530(n+1), A139931(n+1)]` -/
def P9184498569898553612.Spec : Prop :=
  ∀ n, (P9184498569898553612.a n : ℤ) = A140009 (n + 1)

end A140009

/-! ## A140009.P3444325140176846086

`∩[A107152(n+1), A139838(n+1)]`
-/

namespace A140009.P3444325140176846086
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107152 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139838 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140009.P3444325140176846086

namespace A140009

/-- `∩[A107152(n+1), A139838(n+1)]` -/
def P3444325140176846086.Spec : Prop :=
  ∀ n, (P3444325140176846086.a n : ℤ) = A140009 (n + 1)

end A140009

/-! ## A140009.P11395102746719988750

`∩[A139838(n+1), A139898(n+1)]`
-/

namespace A140009.P11395102746719988750
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139838 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139898 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140009.P11395102746719988750

namespace A140009

/-- `∩[A139838(n+1), A139898(n+1)]` -/
def P11395102746719988750.Spec : Prop :=
  ∀ n, (P11395102746719988750.a n : ℤ) = A140009 (n + 1)

end A140009

/-! ## A140009.P6563380374761678709

`∩[A139838(n+1), A139931(n+1)]`
-/

namespace A140009.P6563380374761678709
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139838 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139931 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140009.P6563380374761678709

namespace A140009

/-- `∩[A139838(n+1), A139931(n+1)]` -/
def P6563380374761678709.Spec : Prop :=
  ∀ n, (P6563380374761678709.a n : ℤ) = A140009 (n + 1)

end A140009

/-! ## A140009.P16244682888218482034

`∩[A139838(n+1), A243174(n+1)]`
-/

namespace A140009.P16244682888218482034
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139838 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243174 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140009.P16244682888218482034

namespace A140009

/-- `∩[A139838(n+1), A243174(n+1)]` -/
def P16244682888218482034.Spec : Prop :=
  ∀ n, (P16244682888218482034.a n : ℤ) = A140009 (n + 1)

end A140009

/-! ## A140009.P762518691223940653

`∩[A140615(n+1), A243174(n+1)]`
-/

namespace A140009.P762518691223940653
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140615 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243174 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140009.P762518691223940653

namespace A140009

/-- `∩[A140615(n+1), A243174(n+1)]` -/
def P762518691223940653.Spec : Prop :=
  ∀ n, (P762518691223940653.a n : ℤ) = A140009 (n + 1)

end A140009

/-! ## A140009.P5995079565013319951

`∩[A139838(n+1), A243188(n+1)]`
-/

namespace A140009.P5995079565013319951
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139838 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243188 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140009.P5995079565013319951

namespace A140009

/-- `∩[A139838(n+1), A243188(n+1)]` -/
def P5995079565013319951.Spec : Prop :=
  ∀ n, (P5995079565013319951.a n : ℤ) = A140009 (n + 1)

end A140009

/-! ## A140009.P11973515485595896217

`∩[A139931(n+1), A243188(n+1)]`
-/

namespace A140009.P11973515485595896217
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139931 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243188 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140009.P11973515485595896217

namespace A140009

/-- `∩[A139931(n+1), A243188(n+1)]` -/
def P11973515485595896217.Spec : Prop :=
  ∀ n, (P11973515485595896217.a n : ℤ) = A140009 (n + 1)

end A140009

/-! ## A140009.P10239817926659847585

`∩[A140615(n+1), A243188(n+1)]`
-/

namespace A140009.P10239817926659847585
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140615 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243188 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140009.P10239817926659847585

namespace A140009

/-- `∩[A140615(n+1), A243188(n+1)]` -/
def P10239817926659847585.Spec : Prop :=
  ∀ n, (P10239817926659847585.a n : ℤ) = A140009 (n + 1)

end A140009

/-! ## A140009.P2969190350116137578

`∩[A008846(n+1), A139931(n+1)]`
-/

namespace A140009.P2969190350116137578
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008846 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139931 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140009.P2969190350116137578

namespace A140009

/-- `∩[A008846(n+1), A139931(n+1)]` -/
def P2969190350116137578.Spec : Prop :=
  ∀ n, (P2969190350116137578.a n : ℤ) = A140009 (n + 1)

end A140009

/-! ## A140009.P15257841806285576415

`∩[A033212(n+1), A139838(n+1)]`
-/

namespace A140009.P15257841806285576415
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033212 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139838 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140009.P15257841806285576415

namespace A140009

/-- `∩[A033212(n+1), A139838(n+1)]` -/
def P15257841806285576415.Spec : Prop :=
  ∀ n, (P15257841806285576415.a n : ℤ) = A140009 (n + 1)

end A140009

/-! ## A140009.P9465514229463014906

`∩[A033212(n+1), A140615(n+1)]`
-/

namespace A140009.P9465514229463014906
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033212 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140615 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140009.P9465514229463014906

namespace A140009

/-- `∩[A033212(n+1), A140615(n+1)]` -/
def P9465514229463014906.Spec : Prop :=
  ∀ n, (P9465514229463014906.a n : ℤ) = A140009 (n + 1)

end A140009

/-! ## A140009.P3067015365602789619

`∩[A068228(n+1), A139931(n+1)]`
-/

namespace A140009.P3067015365602789619
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068228 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139931 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140009.P3067015365602789619

namespace A140009

/-- `∩[A068228(n+1), A139931(n+1)]` -/
def P3067015365602789619.Spec : Prop :=
  ∀ n, (P3067015365602789619.a n : ℤ) = A140009 (n + 1)

end A140009

/-! ## A140009.P12191318304346356601

`∩[A139931(n+1), A216815(n+1)]`
-/

namespace A140009.P12191318304346356601
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139931 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216815 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140009.P12191318304346356601

namespace A140009

/-- `∩[A139931(n+1), A216815(n+1)]` -/
def P12191318304346356601.Spec : Prop :=
  ∀ n, (P12191318304346356601.a n : ℤ) = A140009 (n + 1)

end A140009

/-! ## A140009.P15529865251953457931

`∩[A140615(n+1), A216815(n+1)]`
-/

namespace A140009.P15529865251953457931
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140615 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216815 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140009.P15529865251953457931

namespace A140009

/-- `∩[A140615(n+1), A216815(n+1)]` -/
def P15529865251953457931.Spec : Prop :=
  ∀ n, (P15529865251953457931.a n : ℤ) = A140009 (n + 1)

end A140009

/-!
# A140010: Primes of the form 33x^2+40y^2.

The programs for A140010, there is no canonical definition to state claims against.
-/

/-! ## A140010.P11828434121048066813

`∩[A139873(n+1), A139932(n+1)]`
-/

namespace A140010.P11828434121048066813
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139873 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139932 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140010.P11828434121048066813

/-! ## A140010.P11817042076960512373

`∩[A107008(n+1), A139873(n+1)]`
-/

namespace A140010.P11817042076960512373
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107008 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139873 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140010.P11817042076960512373

/-! ## A140010.P5717314738152489340

`∩[A107008(n+1), A139932(n+1)]`
-/

namespace A140010.P5717314738152489340
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107008 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139932 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140010.P5717314738152489340

/-! ## A140010.P17132391386393699294

`p?[and(-5, A139873(n+1))]`
-/

namespace A140010.P17132391386393699294
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-5) (A139873 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A140010.P17132391386393699294

/-! ## A140010.P2048103830999843821

`∩[A139873(n+1), A332227(n+1)]`
-/

namespace A140010.P2048103830999843821
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139873 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332227 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140010.P2048103830999843821

/-! ## A140010.P13608678468750949350

`∩[A139932(n+1), A332227(n+1)]`
-/

namespace A140010.P13608678468750949350
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139932 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332227 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140010.P13608678468750949350

/-! ## A140010.P7553552410278714178

`∩[A008846(n+1), A139932(n+1)]`
-/

namespace A140010.P7553552410278714178
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008846 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139932 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140010.P7553552410278714178

/-! ## A140010.P5167311053130157140

`∩[A139873(n+1), A242663(n+1)]`
-/

namespace A140010.P5167311053130157140
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139873 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242663 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140010.P5167311053130157140

/-! ## A140010.P15513486668980520403

`∩[A139932(n+1), A242663(n+1)]`
-/

namespace A140010.P15513486668980520403
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139932 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242663 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140010.P15513486668980520403

/-! ## A140010.P12430175224412039749

`∩[A007519(n+1), A139873(n+1)]`
-/

namespace A140010.P12430175224412039749
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007519 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139873 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140010.P12430175224412039749

/-! ## A140010.P3944015604696796547

`∩[A007519(n+1), A139932(n+1)]`
-/

namespace A140010.P3944015604696796547
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007519 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139932 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140010.P3944015604696796547

/-! ## A140010.P16730337695127958620

`∩[A033199(n+1), A139873(n+1)]`
-/

namespace A140010.P16730337695127958620
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033199 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139873 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140010.P16730337695127958620

/-! ## A140010.P4807510194847260387

`∩[A033199(n+1), A139932(n+1)]`
-/

namespace A140010.P4807510194847260387
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033199 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139932 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140010.P4807510194847260387

/-! ## A140010.P10089539181459868728

`∩[A045390(n+1), A139873(n+1)]`
-/

namespace A140010.P10089539181459868728
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045390 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139873 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140010.P10089539181459868728

/-! ## A140010.P17696802866712592026

`∩[A045390(n+1), A139932(n+1)]`
-/

namespace A140010.P17696802866712592026
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045390 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139932 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140010.P17696802866712592026

/-! ## A140010.P14242713251742923516

`∩[A139873(n+1), A209544(n+1)]`
-/

namespace A140010.P14242713251742923516
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139873 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209544 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140010.P14242713251742923516

/-! ## A140010.P5321654063819441467

`∩[A139932(n+1), A209544(n+1)]`
-/

namespace A140010.P5321654063819441467
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139932 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209544 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140010.P5321654063819441467

/-! ## A140010.P15959031106099088650

`∩[A139873(n+1), A354084(n+1)]`
-/

namespace A140010.P15959031106099088650
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139873 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354084 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140010.P15959031106099088650

/-! ## A140010.P11819661340984773654

`∩[A139932(n+1), A354084(n+1)]`
-/

namespace A140010.P11819661340984773654
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139932 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354084 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140010.P11819661340984773654

/-! ## A140010.P17400354592323648458

`∩[A068228(n+1), A139932(n+1)]`
-/

namespace A140010.P17400354592323648458
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068228 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139932 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140010.P17400354592323648458

/-!
# A140011: Primes of the form 37x^2+14xy+37y^2.

The programs for A140011, there is no canonical definition to state claims against.
-/

/-! ## A140011.P5329067944185970567

`∩[A139860(n+1), A139934(n+1)]`
-/

namespace A140011.P5329067944185970567
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139860 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139934 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140011.P5329067944185970567

/-! ## A140011.P7318981858223552972

`A139934(eq[1, A139934(n+1)%4]+1)`
-/

namespace A140011.P7318981858223552972
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A139934 (n + 1)) 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139934 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A140011.P7318981858223552972

/-! ## A140011.P128488227745953109

`∩[A033222(n+1), A139860(n+1)]`
-/

namespace A140011.P128488227745953109
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033222 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139860 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140011.P128488227745953109

/-! ## A140011.P7521075670843918754

`∩[A033222(n+1), A139934(n+1)]`
-/

namespace A140011.P7521075670843918754
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033222 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139934 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140011.P7521075670843918754

/-! ## A140011.P18343930989924779950

`∩[A033222(n+1), A107136(n+1)]`
-/

namespace A140011.P18343930989924779950
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033222 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107136 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140011.P18343930989924779950

/-! ## A140011.P9975160165024060108

`∩[A107136(n+1), A139934(n+1)]`
-/

namespace A140011.P9975160165024060108
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107136 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139934 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140011.P9975160165024060108

/-! ## A140011.P14854128573629183055

`∩[A139530(n+1), A139934(n+1)]`
-/

namespace A140011.P14854128573629183055
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139530 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139934 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140011.P14854128573629183055

/-! ## A140011.P8032703822507069026

`∩[A033222(n+1), A107144(n+1)]`
-/

namespace A140011.P8032703822507069026
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033222 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107144 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140011.P8032703822507069026

/-! ## A140011.P2603740261469974233

`∩[A107144(n+1), A139934(n+1)]`
-/

namespace A140011.P2603740261469974233
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107144 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139934 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140011.P2603740261469974233

/-! ## A140011.P6060820908699812537

`∩[A008846(n+1), A139934(n+1)]`
-/

namespace A140011.P6060820908699812537
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008846 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139934 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140011.P6060820908699812537

/-! ## A140011.P15727340613818596229

`∩[A107013(n+1), A107144(n+1)]`
-/

namespace A140011.P15727340613818596229
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107013 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107144 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140011.P15727340613818596229

/-! ## A140011.P5499037466628777238

`∩[A107013(n+1), A139860(n+1)]`
-/

namespace A140011.P5499037466628777238
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107013 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139860 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140011.P5499037466628777238

/-! ## A140011.P1735522241151156786

`∩[A107136(n+1), A141182(n+1)]`
-/

namespace A140011.P1735522241151156786
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107136 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141182 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140011.P1735522241151156786

/-! ## A140011.P1235871041746780504

`∩[A107144(n+1), A141177(n+1)]`
-/

namespace A140011.P1235871041746780504
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107144 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141177 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140011.P1235871041746780504

/-! ## A140011.P11070459925125016521

`∩[A139860(n+1), A141177(n+1)]`
-/

namespace A140011.P11070459925125016521
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139860 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141177 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140011.P11070459925125016521

/-! ## A140011.P7479948535640289947

`∩[A139860(n+1), A141182(n+1)]`
-/

namespace A140011.P7479948535640289947
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139860 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141182 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140011.P7479948535640289947

/-! ## A140011.P2549374764375741561

`∩[A139934(n+1), A141182(n+1)]`
-/

namespace A140011.P2549374764375741561
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139934 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141182 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140011.P2549374764375741561

/-! ## A140011.P11788852689114375273

`∩[A068228(n+1), A139934(n+1)]`
-/

namespace A140011.P11788852689114375273
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068228 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139934 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140011.P11788852689114375273

/-! ## A140011.P9259792423673147418

`∩[A033222(n+1), A141179(n+1)]`
-/

namespace A140011.P9259792423673147418
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033222 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141179 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140011.P9259792423673147418

/-! ## A140011.P14866324074508095186

`∩[A139934(n+1), A141179(n+1)]`
-/

namespace A140011.P14866324074508095186
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139934 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141179 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140011.P14866324074508095186

/-!
# A140012: Primes of the form 40x^2+40xy+43y^2.

The programs for A140012, the canonical program `A140012.P3091804146325170739` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A140012 has offset 1).

The definition of A140012 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5019 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A140012.P3091804146325170739

`∩[A139854(n+1), A140619(n+1)]`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A140012

/-- `∩[A139854(n+1), A140619(n+1)]` -/
def P3091804146325170739.Spec : Prop :=
  ∀ n, (P3091804146325170739.a n : ℤ) = A140012 (n + 1)

theorem P3091804146325170739.correct : P3091804146325170739.Spec := by
  intro n
  simp only [A140012, Nat.add_sub_cancel]

end A140012

/-! ## A140012.P6605006585489181113

`∩[A139854(n+1), A139932(n+1)]`
-/

namespace A140012.P6605006585489181113
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139854 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139932 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140012.P6605006585489181113

namespace A140012

/-- `∩[A139854(n+1), A139932(n+1)]` -/
def P6605006585489181113.Spec : Prop :=
  ∀ n, (P6605006585489181113.a n : ℤ) = A140012 (n + 1)

end A140012

/-! ## A140012.P14829286687979419836

`∩[A139932(n+1), A140619(n+1)]`
-/

namespace A140012.P14829286687979419836
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139932 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140619 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140012.P14829286687979419836

namespace A140012

/-- `∩[A139932(n+1), A140619(n+1)]` -/
def P14829286687979419836.Spec : Prop :=
  ∀ n, (P14829286687979419836.a n : ℤ) = A140012 (n + 1)

end A140012

/-! ## A140012.P11591675493019287730

`∩[A139932(n+1), A332446(n+1)]`
-/

namespace A140012.P11591675493019287730
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139932 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332446 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140012.P11591675493019287730

namespace A140012

/-- `∩[A139932(n+1), A332446(n+1)]` -/
def P11591675493019287730.Spec : Prop :=
  ∀ n, (P11591675493019287730.a n : ℤ) = A140012 (n + 1)

end A140012

/-! ## A140012.P11800719857743530982

`∩[A139832(n+1), A139932(n+1)]`
-/

namespace A140012.P11800719857743530982
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139832 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139932 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140012.P11800719857743530982

namespace A140012

/-- `∩[A139832(n+1), A139932(n+1)]` -/
def P11800719857743530982.Spec : Prop :=
  ∀ n, (P11800719857743530982.a n : ℤ) = A140012 (n + 1)

end A140012

/-! ## A140012.P9832692977507659781

`∩[A139832(n+1), A140619(n+1)]`
-/

namespace A140012.P9832692977507659781
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139832 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140619 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140012.P9832692977507659781

namespace A140012

/-- `∩[A139832(n+1), A140619(n+1)]` -/
def P9832692977507659781.Spec : Prop :=
  ∀ n, (P9832692977507659781.a n : ℤ) = A140012 (n + 1)

end A140012

/-! ## A140012.P15528472829112676423

`∩[A139932(n+1), A141304(n+1)]`
-/

namespace A140012.P15528472829112676423
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139932 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141304 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140012.P15528472829112676423

namespace A140012

/-- `∩[A139932(n+1), A141304(n+1)]` -/
def P15528472829112676423.Spec : Prop :=
  ∀ n, (P15528472829112676423.a n : ℤ) = A140012 (n + 1)

end A140012

/-! ## A140012.P17181253182166137988

`∩[A140619(n+1), A141304(n+1)]`
-/

namespace A140012.P17181253182166137988
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140619 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141304 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140012.P17181253182166137988

namespace A140012

/-- `∩[A140619(n+1), A141304(n+1)]` -/
def P17181253182166137988.Spec : Prop :=
  ∀ n, (P17181253182166137988.a n : ℤ) = A140012 (n + 1)

end A140012

/-! ## A140012.P9585049123516116767

`∩[A139828(n+1), A139854(n+1)]`
-/

namespace A140012.P9585049123516116767
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139828 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139854 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140012.P9585049123516116767

namespace A140012

/-- `∩[A139828(n+1), A139854(n+1)]` -/
def P9585049123516116767.Spec : Prop :=
  ∀ n, (P9585049123516116767.a n : ℤ) = A140012 (n + 1)

end A140012

/-! ## A140012.P14706666074382832695

`∩[A139828(n+1), A139932(n+1)]`
-/

namespace A140012.P14706666074382832695
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139828 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139932 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140012.P14706666074382832695

namespace A140012

/-- `∩[A139828(n+1), A139932(n+1)]` -/
def P14706666074382832695.Spec : Prop :=
  ∀ n, (P14706666074382832695.a n : ℤ) = A140012 (n + 1)

end A140012

/-! ## A140012.P4656712786257332251

`∩[A107136(n+1), A139828(n+1)]`
-/

namespace A140012.P4656712786257332251
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107136 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139828 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140012.P4656712786257332251

namespace A140012

/-- `∩[A107136(n+1), A139828(n+1)]` -/
def P4656712786257332251.Spec : Prop :=
  ∀ n, (P4656712786257332251.a n : ℤ) = A140012 (n + 1)

end A140012

/-! ## A140012.P15874613515587696615

`∩[A107136(n+1), A139932(n+1)]`
-/

namespace A140012.P15874613515587696615
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107136 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139932 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140012.P15874613515587696615

namespace A140012

/-- `∩[A107136(n+1), A139932(n+1)]` -/
def P15874613515587696615.Spec : Prop :=
  ∀ n, (P15874613515587696615.a n : ℤ) = A140012 (n + 1)

end A140012

/-! ## A140012.P17948291551649260090

`∩[A107136(n+1), A140619(n+1)]`
-/

namespace A140012.P17948291551649260090
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107136 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140619 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140012.P17948291551649260090

namespace A140012

/-- `∩[A107136(n+1), A140619(n+1)]` -/
def P17948291551649260090.Spec : Prop :=
  ∀ n, (P17948291551649260090.a n : ℤ) = A140012 (n + 1)

end A140012

/-! ## A140012.P3295812634589631944

`∩[A139932(n+1), A141373(n+1)]`
-/

namespace A140012.P3295812634589631944
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139932 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141373 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140012.P3295812634589631944

namespace A140012

/-- `∩[A139932(n+1), A141373(n+1)]` -/
def P3295812634589631944.Spec : Prop :=
  ∀ n, (P3295812634589631944.a n : ℤ) = A140012 (n + 1)

end A140012

/-! ## A140012.P16712026791062322036

`∩[A107136(n+1), A107201(n+1)]`
-/

namespace A140012.P16712026791062322036
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107136 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107201 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140012.P16712026791062322036

namespace A140012

/-- `∩[A107136(n+1), A107201(n+1)]` -/
def P16712026791062322036.Spec : Prop :=
  ∀ n, (P16712026791062322036.a n : ℤ) = A140012 (n + 1)

end A140012

/-! ## A140012.P6658854566125145487

`∩[A107201(n+1), A139832(n+1)]`
-/

namespace A140012.P6658854566125145487
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107201 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139832 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140012.P6658854566125145487

namespace A140012

/-- `∩[A107201(n+1), A139832(n+1)]` -/
def P6658854566125145487.Spec : Prop :=
  ∀ n, (P6658854566125145487.a n : ℤ) = A140012 (n + 1)

end A140012

/-! ## A140012.P15529861820535675026

`∩[A107201(n+1), A139854(n+1)]`
-/

namespace A140012.P15529861820535675026
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107201 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139854 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140012.P15529861820535675026

namespace A140012

/-- `∩[A107201(n+1), A139854(n+1)]` -/
def P15529861820535675026.Spec : Prop :=
  ∀ n, (P15529861820535675026.a n : ℤ) = A140012 (n + 1)

end A140012

/-! ## A140012.P3099097653281785627

`∩[A107201(n+1), A139932(n+1)]`
-/

namespace A140012.P3099097653281785627
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107201 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139932 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140012.P3099097653281785627

namespace A140012

/-- `∩[A107201(n+1), A139932(n+1)]` -/
def P3099097653281785627.Spec : Prop :=
  ∀ n, (P3099097653281785627.a n : ℤ) = A140012 (n + 1)

end A140012

/-! ## A140012.P12811307777349208974

`∩[A107201(n+1), A141304(n+1)]`
-/

namespace A140012.P12811307777349208974
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107201 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141304 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140012.P12811307777349208974

namespace A140012

/-- `∩[A107201(n+1), A141304(n+1)]` -/
def P12811307777349208974.Spec : Prop :=
  ∀ n, (P12811307777349208974.a n : ℤ) = A140012 (n + 1)

end A140012

/-! ## A140012.P9417419467103705056

`p?[or(2, A139932(n+1))]`
-/

namespace A140012.P9417419467103705056
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 2 (A139932 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A140012.P9417419467103705056

namespace A140012

/-- `p?[or(2, A139932(n+1))]` -/
def P9417419467103705056.Spec : Prop :=
  ∀ n, P9417419467103705056.a n = A140012 (n + 1)

end A140012

/-!
# A140013: Primes of the form 41*x^2+38*x*y+41*y^2.

The programs for A140013, the canonical program `A140013.P17814475586989594916` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A140013 has offset 1).

The definition of A140013 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2525 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A140013.P1288034347878874369

`∩[A139870(n+1), A139933(n+1)]`
-/

namespace A140013.P1288034347878874369
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139870 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139933 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140013.P1288034347878874369

namespace A140013

/-- `∩[A139870(n+1), A139933(n+1)]` -/
def P1288034347878874369.Spec : Prop :=
  ∀ n, (P1288034347878874369.a n : ℤ) = A140013 (n + 1)

end A140013

/-! ## A140013.P11235566523222951715

`A139933(eq[1, A139933(n+1)%4]+1)`
-/

namespace A140013.P11235566523222951715
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A139933 (n + 1)) 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139933 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A140013.P11235566523222951715

namespace A140013

/-- `A139933(eq[1, A139933(n+1)%4]+1)` -/
def P11235566523222951715.Spec : Prop :=
  ∀ n, P11235566523222951715.a n = A140013 (n + 1)

end A140013

/-! ## A140013.P17814475586989594916

`∩[A107145(n+1), A139870(n+1)]`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A140013

/-- `∩[A107145(n+1), A139870(n+1)]` -/
def P17814475586989594916.Spec : Prop :=
  ∀ n, (P17814475586989594916.a n : ℤ) = A140013 (n + 1)

theorem P17814475586989594916.correct : P17814475586989594916.Spec := by
  intro n
  simp only [A140013, Nat.add_sub_cancel]

end A140013

/-! ## A140013.P8248941499944019151

`∩[A107145(n+1), A139933(n+1)]`
-/

namespace A140013.P8248941499944019151
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107145 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139933 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140013.P8248941499944019151

namespace A140013

/-- `∩[A107145(n+1), A139933(n+1)]` -/
def P8248941499944019151.Spec : Prop :=
  ∀ n, (P8248941499944019151.a n : ℤ) = A140013 (n + 1)

end A140013

/-! ## A140013.P18234563125674302658

`∩[A107151(n+1), A139933(n+1)]`
-/

namespace A140013.P18234563125674302658
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107151 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139933 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140013.P18234563125674302658

namespace A140013

/-- `∩[A107151(n+1), A139933(n+1)]` -/
def P18234563125674302658.Spec : Prop :=
  ∀ n, (P18234563125674302658.a n : ℤ) = A140013 (n + 1)

end A140013

/-! ## A140013.P5321351824163122977

`∩[A107145(n+1), A139827(n+1)]`
-/

namespace A140013.P5321351824163122977
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107145 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139827 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140013.P5321351824163122977

namespace A140013

/-- `∩[A107145(n+1), A139827(n+1)]` -/
def P5321351824163122977.Spec : Prop :=
  ∀ n, (P5321351824163122977.a n : ℤ) = A140013 (n + 1)

end A140013

/-! ## A140013.P10808858619182051510

`∩[A139827(n+1), A139933(n+1)]`
-/

namespace A140013.P10808858619182051510
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139827 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139933 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140013.P10808858619182051510

namespace A140013

/-- `∩[A139827(n+1), A139933(n+1)]` -/
def P10808858619182051510.Spec : Prop :=
  ∀ n, (P10808858619182051510.a n : ℤ) = A140013 (n + 1)

end A140013

/-! ## A140013.P3104686236722209

`∩[A107181(n+1), A139870(n+1)]`
-/

namespace A140013.P3104686236722209
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107181 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139870 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140013.P3104686236722209

namespace A140013

/-- `∩[A107181(n+1), A139870(n+1)]` -/
def P3104686236722209.Spec : Prop :=
  ∀ n, (P3104686236722209.a n : ℤ) = A140013 (n + 1)

end A140013

/-! ## A140013.P7295426638457584756

`∩[A107181(n+1), A139933(n+1)]`
-/

namespace A140013.P7295426638457584756
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107181 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139933 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140013.P7295426638457584756

namespace A140013

/-- `∩[A107181(n+1), A139933(n+1)]` -/
def P7295426638457584756.Spec : Prop :=
  ∀ n, (P7295426638457584756.a n : ℤ) = A140013 (n + 1)

end A140013

/-! ## A140013.P6245774042958508630

`p?[and(-3, A139933(n+1))]`
-/

namespace A140013.P6245774042958508630
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-3) (A139933 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A140013.P6245774042958508630

namespace A140013

/-- `p?[and(-3, A139933(n+1))]` -/
def P6245774042958508630.Spec : Prop :=
  ∀ n, P6245774042958508630.a n = A140013 (n + 1)

end A140013

/-! ## A140013.P10480601499493738943

`∩[A139870(n+1), A332227(n+1)]`
-/

namespace A140013.P10480601499493738943
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139870 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332227 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140013.P10480601499493738943

namespace A140013

/-- `∩[A139870(n+1), A332227(n+1)]` -/
def P10480601499493738943.Spec : Prop :=
  ∀ n, (P10480601499493738943.a n : ℤ) = A140013 (n + 1)

end A140013

/-! ## A140013.P5287450953146748435

`∩[A139933(n+1), A332227(n+1)]`
-/

namespace A140013.P5287450953146748435
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139933 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332227 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140013.P5287450953146748435

namespace A140013

/-- `∩[A139933(n+1), A332227(n+1)]` -/
def P5287450953146748435.Spec : Prop :=
  ∀ n, (P5287450953146748435.a n : ℤ) = A140013 (n + 1)

end A140013

/-! ## A140013.P11342765957108067393

`∩[A008846(n+1), A139933(n+1)]`
-/

namespace A140013.P11342765957108067393
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008846 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139933 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140013.P11342765957108067393

namespace A140013

/-- `∩[A008846(n+1), A139933(n+1)]` -/
def P11342765957108067393.Spec : Prop :=
  ∀ n, (P11342765957108067393.a n : ℤ) = A140013 (n + 1)

end A140013

/-! ## A140013.P9701006418138653427

`∩[A139870(n+1), A242663(n+1)]`
-/

namespace A140013.P9701006418138653427
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139870 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242663 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140013.P9701006418138653427

namespace A140013

/-- `∩[A139870(n+1), A242663(n+1)]` -/
def P9701006418138653427.Spec : Prop :=
  ∀ n, (P9701006418138653427.a n : ℤ) = A140013 (n + 1)

end A140013

/-! ## A140013.P8327886179892993602

`∩[A139933(n+1), A242663(n+1)]`
-/

namespace A140013.P8327886179892993602
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139933 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242663 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140013.P8327886179892993602

namespace A140013

/-- `∩[A139933(n+1), A242663(n+1)]` -/
def P8327886179892993602.Spec : Prop :=
  ∀ n, (P8327886179892993602.a n : ℤ) = A140013 (n + 1)

end A140013

/-! ## A140013.P12250395499593297365

`∩[A007519(n+1), A139870(n+1)]`
-/

namespace A140013.P12250395499593297365
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007519 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139870 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140013.P12250395499593297365

namespace A140013

/-- `∩[A007519(n+1), A139870(n+1)]` -/
def P12250395499593297365.Spec : Prop :=
  ∀ n, (P12250395499593297365.a n : ℤ) = A140013 (n + 1)

end A140013

/-! ## A140013.P2835174949784539547

`∩[A007519(n+1), A139933(n+1)]`
-/

namespace A140013.P2835174949784539547
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007519 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139933 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140013.P2835174949784539547

namespace A140013

/-- `∩[A007519(n+1), A139933(n+1)]` -/
def P2835174949784539547.Spec : Prop :=
  ∀ n, (P2835174949784539547.a n : ℤ) = A140013 (n + 1)

end A140013

/-! ## A140013.P11673692427554001712

`∩[A045390(n+1), A139870(n+1)]`
-/

namespace A140013.P11673692427554001712
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045390 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139870 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140013.P11673692427554001712

namespace A140013

/-- `∩[A045390(n+1), A139870(n+1)]` -/
def P11673692427554001712.Spec : Prop :=
  ∀ n, (P11673692427554001712.a n : ℤ) = A140013 (n + 1)

end A140013

/-! ## A140013.P15626275347960856152

`∩[A045390(n+1), A139933(n+1)]`
-/

namespace A140013.P15626275347960856152
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045390 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139933 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140013.P15626275347960856152

namespace A140013

/-- `∩[A045390(n+1), A139933(n+1)]` -/
def P15626275347960856152.Spec : Prop :=
  ∀ n, (P15626275347960856152.a n : ℤ) = A140013 (n + 1)

end A140013

/-! ## A140013.P8853210227717013121

`∩[A139827(n+1), A141180(n+1)]`
-/

namespace A140013.P8853210227717013121
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139827 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141180 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140013.P8853210227717013121

namespace A140013

/-- `∩[A139827(n+1), A141180(n+1)]` -/
def P8853210227717013121.Spec : Prop :=
  ∀ n, (P8853210227717013121.a n : ℤ) = A140013 (n + 1)

end A140013

/-!
# A140015: Primes of the form 3x^2+455y^2.

The programs for A140015, the canonical program `A140015.P16441771883213652872` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A140015 has offset 1).

The definition of A140015 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 619 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A140015.P1261730781830973461

`∩[A040126(n+1), A139845(n+1)]`
-/

namespace A140015.P1261730781830973461
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040126 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139845 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140015.P1261730781830973461

namespace A140015

/-- `∩[A040126(n+1), A139845(n+1)]` -/
def P1261730781830973461.Spec : Prop :=
  ∀ n, (P1261730781830973461.a n : ℤ) = A140015 (n + 1)

end A140015

/-! ## A140015.P14338962343036499637

`∩[A038979(n+1), A139845(n+1)]`
-/

namespace A140015.P14338962343036499637
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038979 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139845 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140015.P14338962343036499637

namespace A140015

/-- `∩[A038979(n+1), A139845(n+1)]` -/
def P14338962343036499637.Spec : Prop :=
  ∀ n, (P14338962343036499637.a n : ℤ) = A140015 (n + 1)

end A140015

/-! ## A140015.P16441771883213652872

`∩[A038917(n+1), A139845(n+1)]`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A140015

/-- `∩[A038917(n+1), A139845(n+1)]` -/
def P16441771883213652872.Spec : Prop :=
  ∀ n, (P16441771883213652872.a n : ℤ) = A140015 (n + 1)

theorem P16441771883213652872.correct : P16441771883213652872.Spec := by
  intro n
  simp only [A140015, Nat.add_sub_cancel]

end A140015

/-! ## A140015.P12743556855379691839

`∩[A038883(n+1), A139845(n+1)]`
-/

namespace A140015.P12743556855379691839
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038883 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139845 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140015.P12743556855379691839

namespace A140015

/-- `∩[A038883(n+1), A139845(n+1)]` -/
def P12743556855379691839.Spec : Prop :=
  ∀ n, (P12743556855379691839.a n : ℤ) = A140015 (n + 1)

end A140015

/-! ## A140015.P3857069405013793199

`∩[A139845(n+1), A296937(n+1)]`
-/

namespace A140015.P3857069405013793199
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139845 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296937 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140015.P3857069405013793199

namespace A140015

/-- `∩[A139845(n+1), A296937(n+1)]` -/
def P3857069405013793199.Spec : Prop :=
  ∀ n, (P3857069405013793199.a n : ℤ) = A140015 (n + 1)

end A140015

/-! ## A140015.P13620045394744753804

`∩[A139845(n+1), A191085(n+1)]`
-/

namespace A140015.P13620045394744753804
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139845 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191085 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140015.P13620045394744753804

namespace A140015

/-- `∩[A139845(n+1), A191085(n+1)]` -/
def P13620045394744753804.Spec : Prop :=
  ∀ n, (P13620045394744753804.a n : ℤ) = A140015 (n + 1)

end A140015

/-! ## A140015.P17051878298698499272

`∩[A139845(n+1), A296927(n+1)]`
-/

namespace A140015.P17051878298698499272
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139845 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296927 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140015.P17051878298698499272

namespace A140015

/-- `∩[A139845(n+1), A296927(n+1)]` -/
def P17051878298698499272.Spec : Prop :=
  ∀ n, (P17051878298698499272.a n : ℤ) = A140015 (n + 1)

end A140015

/-! ## A140015.P3234572535469873347

`∩[A038946(n+1), A139845(n+1)]`
-/

namespace A140015.P3234572535469873347
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038946 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139845 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140015.P3234572535469873347

namespace A140015

/-- `∩[A038946(n+1), A139845(n+1)]` -/
def P3234572535469873347.Spec : Prop :=
  ∀ n, (P3234572535469873347.a n : ℤ) = A140015 (n + 1)

end A140015

/-! ## A140015.P6423765645325781443

`∩[A139845(n+1), A270997(n+1)]`
-/

namespace A140015.P6423765645325781443
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139845 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270997 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140015.P6423765645325781443

namespace A140015

/-- `∩[A139845(n+1), A270997(n+1)]` -/
def P6423765645325781443.Spec : Prop :=
  ∀ n, (P6423765645325781443.a n : ℤ) = A140015 (n + 1)

end A140015

/-! ## A140015.P7331555436839286812

`∩[A035256(n+1), A139845(n+1)]`
-/

namespace A140015.P7331555436839286812
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035256 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139845 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140015.P7331555436839286812

namespace A140015

/-- `∩[A035256(n+1), A139845(n+1)]` -/
def P7331555436839286812.Spec : Prop :=
  ∀ n, (P7331555436839286812.a n : ℤ) = A140015 (n + 1)

end A140015

/-! ## A140015.P8756386696742827198

`∩[A139845(n+1), A309586(n+1)]`
-/

namespace A140015.P8756386696742827198
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139845 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309586 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140015.P8756386696742827198

namespace A140015

/-- `∩[A139845(n+1), A309586(n+1)]` -/
def P8756386696742827198.Spec : Prop :=
  ∀ n, (P8756386696742827198.a n : ℤ) = A140015 (n + 1)

end A140015

/-!
# A140016: Primes of the form 5x^2+273y^2.

The programs for A140016, there is no canonical definition to state claims against.
-/

/-! ## A140016.P16359320564011432340

`∩[A106972(n+1), A141112(n+1)]`
-/

namespace A140016.P16359320564011432340
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106972 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141112 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140016.P16359320564011432340

/-! ## A140016.P5927830495283704743

`∩[A106986(n+1), A107167(n+1)]`
-/

namespace A140016.P5927830495283704743
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106986 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107167 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140016.P5927830495283704743

/-! ## A140016.P11719550046684188742

`∩[A106986(n+1), A141303(n+1)]`
-/

namespace A140016.P11719550046684188742
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106986 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141303 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140016.P11719550046684188742

/-!
# A140017: Primes of the form 6x^2+6xy+229y^2.

The programs for A140017, there is no canonical definition to state claims against.
-/

/-! ## A140017.P11230624981654709267

`∩[A107152(n+1), A139911(n+1)]`
-/

namespace A140017.P11230624981654709267
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107152 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139911 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140017.P11230624981654709267

/-! ## A140017.P13485512586400069377

`∩[A139911(n+1), A243174(n+1)]`
-/

namespace A140017.P13485512586400069377
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139911 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243174 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140017.P13485512586400069377

/-! ## A140017.P17070667713671101251

`∩[A139911(n+1), A243188(n+1)]`
-/

namespace A140017.P17070667713671101251
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139911 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243188 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140017.P17070667713671101251

/-! ## A140017.P18393377170621106956

`∩[A033212(n+1), A139911(n+1)]`
-/

namespace A140017.P18393377170621106956
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033212 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139911 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140017.P18393377170621106956

/-! ## A140017.P12601838460702607004

`∩[A033205(n+1), A139911(n+1)]`
-/

namespace A140017.P12601838460702607004
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033205 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139911 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140017.P12601838460702607004

/-! ## A140017.P13376265264800775961

`∩[A139911(n+1), A216815(n+1)]`
-/

namespace A140017.P13376265264800775961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139911 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216815 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140017.P13376265264800775961

/-! ## A140017.P10362189245981524176

`∩[A106986(n+1), A107152(n+1)]`
-/

namespace A140017.P10362189245981524176
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106986 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107152 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140017.P10362189245981524176

/-! ## A140017.P2933397777140717280

`∩[A106986(n+1), A243188(n+1)]`
-/

namespace A140017.P2933397777140717280
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106986 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243188 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140017.P2933397777140717280

/-! ## A140017.P14738419074643260731

`∩[A091729(n+1), A139911(n+1)]`
-/

namespace A140017.P14738419074643260731
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091729 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139911 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140017.P14738419074643260731

/-! ## A140017.P106180702109803087

`∩[A106986(n+1), A155570(n+1)]`
-/

namespace A140017.P106180702109803087
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106986 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155570 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140017.P106180702109803087

/-! ## A140017.P16819970380565936437

`∩[A139911(n+1), A155570(n+1)]`
-/

namespace A140017.P16819970380565936437
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139911 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155570 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140017.P16819970380565936437

/-! ## A140017.P10142875221826630791

`∩[A038872(n+1), A139911(n+1)]`
-/

namespace A140017.P10142875221826630791
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038872 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139911 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140017.P10142875221826630791

/-! ## A140017.P3300906602213136282

`∩[A045468(n+1), A139911(n+1)]`
-/

namespace A140017.P3300906602213136282
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045468 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139911 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140017.P3300906602213136282

/-! ## A140017.P4456907683007211818

`∩[A064739(n+1), A139911(n+1)]`
-/

namespace A140017.P4456907683007211818
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064739 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139911 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140017.P4456907683007211818

/-! ## A140017.P7604559841218413791

`∩[A139911(n+1), A191018(n+1)]`
-/

namespace A140017.P7604559841218413791
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139911 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191018 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140017.P7604559841218413791

/-! ## A140017.P15240372672740517945

`∩[A076518(n+1), A139911(n+1)]`
-/

namespace A140017.P15240372672740517945
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076518 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139911 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140017.P15240372672740517945

/-! ## A140017.P3278011919988290014

`∩[A139513(n+1), A139911(n+1)]`
-/

namespace A140017.P3278011919988290014
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139513 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139911 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140017.P3278011919988290014

/-! ## A140017.P18257930517978791266

`∩[A139911(n+1), A240920(n+1)]`
-/

namespace A140017.P18257930517978791266
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139911 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240920 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140017.P18257930517978791266

/-! ## A140017.P16278322947202145499

`∩[A139911(n+1), A296922(n+1)]`
-/

namespace A140017.P16278322947202145499
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139911 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296922 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140017.P16278322947202145499

/-! ## A140017.P9918013159349481179

`∩[A038887(n+1), A139911(n+1)]`
-/

namespace A140017.P9918013159349481179
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038887 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139911 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140017.P9918013159349481179

/-!
# A140018: Primes of the form 7x^2+195y^2.

The programs for A140018, there is no canonical definition to state claims against.
-/

/-! ## A140018.P575603072220427214

`∩[A102271(n+1), A141112(n+1)]`
-/

namespace A140018.P575603072220427214
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102271 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141112 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140018.P575603072220427214

/-! ## A140018.P5167819402024179872

`∩[A106986(n+1), A139832(n+1)]`
-/

namespace A140018.P5167819402024179872
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106986 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139832 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140018.P5167819402024179872

/-! ## A140018.P13566229104300180670

`∩[A106986(n+1), A141304(n+1)]`
-/

namespace A140018.P13566229104300180670
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106986 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141304 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140018.P13566229104300180670

/-! ## A140018.P7588776207127368494

`∩[A020679(n+1), A141112(n+1)]`
-/

namespace A140018.P7588776207127368494
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020679 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141112 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140018.P7588776207127368494

/-!
# A140019: Primes of the form 10x^2+10xy+139y^2.

The programs for A140019, there is no canonical definition to state claims against.
-/

/-! ## A140019.P2255006013238244516

`∩[A139847(n+1), A139908(n+1)]`
-/

namespace A140019.P2255006013238244516
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139847 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139908 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140019.P2255006013238244516

/-! ## A140019.P5757952795918935862

`∩[A107168(n+1), A139908(n+1)]`
-/

namespace A140019.P5757952795918935862
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107168 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139908 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140019.P5757952795918935862

/-! ## A140019.P1626071506538803824

`∩[A139908(n+1), A243174(n+1)]`
-/

namespace A140019.P1626071506538803824
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139908 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243174 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140019.P1626071506538803824

/-! ## A140019.P16216569391875630222

`∩[A033212(n+1), A139908(n+1)]`
-/

namespace A140019.P16216569391875630222
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033212 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139908 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140019.P16216569391875630222

/-! ## A140019.P15107028640081372352

`∩[A139494(n+1), A139847(n+1)]`
-/

namespace A140019.P15107028640081372352
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139494 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139847 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140019.P15107028640081372352

/-! ## A140019.P209234484966587897

`∩[A139847(n+1), A267455(n+1)]`
-/

namespace A140019.P209234484966587897
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139847 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267455 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140019.P209234484966587897

/-! ## A140019.P13541517751654148504

`∩[A102271(n+1), A141111(n+1)]`
-/

namespace A140019.P13541517751654148504
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102271 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141111 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140019.P13541517751654148504

/-! ## A140019.P17902725747743511472

`∩[A139847(n+1), A141111(n+1)]`
-/

namespace A140019.P17902725747743511472
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139847 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141111 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140019.P17902725747743511472

/-! ## A140019.P1917011993020726462

`∩[A139908(n+1), A141111(n+1)]`
-/

namespace A140019.P1917011993020726462
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139908 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141111 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140019.P1917011993020726462

/-! ## A140019.P14963376125174899662

`∩[A122869(n+1), A139908(n+1)]`
-/

namespace A140019.P14963376125174899662
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122869 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139908 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140019.P14963376125174899662

/-! ## A140019.P11825898492839962001

`∩[A053032(n+1), A139908(n+1)]`
-/

namespace A140019.P11825898492839962001
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053032 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139908 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140019.P11825898492839962001

/-! ## A140019.P1786471009022036452

`∩[A112860(n+1), A139908(n+1)]`
-/

namespace A140019.P1786471009022036452
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112860 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139908 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140019.P1786471009022036452

/-! ## A140019.P14038948890558769756

`∩[A139908(n+1), A385192(n+1)]`
-/

namespace A140019.P14038948890558769756
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139908 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385192 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140019.P14038948890558769756

/-! ## A140019.P7184706707318583652

`∩[A040126(n+1), A139847(n+1)]`
-/

namespace A140019.P7184706707318583652
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040126 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139847 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140019.P7184706707318583652

/-! ## A140019.P3937656326574781554

`∩[A040105(n+1), A139908(n+1)]`
-/

namespace A140019.P3937656326574781554
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040105 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139908 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140019.P3937656326574781554

/-! ## A140019.P2946901291443473031

`∩[A040147(n+1), A139908(n+1)]`
-/

namespace A140019.P2946901291443473031
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040147 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139908 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140019.P2946901291443473031

/-! ## A140019.P6006264147315018834

`∩[A038911(n+1), A139908(n+1)]`
-/

namespace A140019.P6006264147315018834
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038911 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139908 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140019.P6006264147315018834

/-! ## A140019.P11199444066449663880

`∩[A038979(n+1), A139847(n+1)]`
-/

namespace A140019.P11199444066449663880
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038979 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139847 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140019.P11199444066449663880

/-! ## A140019.P7420293581122351160

`∩[A038883(n+1), A139847(n+1)]`
-/

namespace A140019.P7420293581122351160
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038883 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139847 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140019.P7420293581122351160

/-! ## A140019.P4310515035119547164

`∩[A038872(n+1), A139908(n+1)]`
-/

namespace A140019.P4310515035119547164
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038872 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139908 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140019.P4310515035119547164

/-!
# A140020: Primes of the form 13x^2+105y^2.

The programs for A140020, there is no canonical definition to state claims against.
-/

/-! ## A140020.P4590256764999546767

`∩[A033210(n+1), A139849(n+1)]`
-/

namespace A140020.P4590256764999546767
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033210 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139849 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140020.P4590256764999546767

/-! ## A140020.P14594377210516614292

`∩[A139494(n+1), A139849(n+1)]`
-/

namespace A140020.P14594377210516614292
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139494 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139849 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140020.P14594377210516614292

/-! ## A140020.P6078067033715335796

`∩[A139849(n+1), A267455(n+1)]`
-/

namespace A140020.P6078067033715335796
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139849 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267455 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140020.P6078067033715335796

/-! ## A140020.P13207711146705553691

`∩[A139849(n+1), A296928(n+1)]`
-/

namespace A140020.P13207711146705553691
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139849 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296928 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140020.P13207711146705553691

/-! ## A140020.P3992028010126159856

`∩[A038917(n+1), A139849(n+1)]`
-/

namespace A140020.P3992028010126159856
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038917 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139849 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140020.P3992028010126159856

/-! ## A140020.P12073356726786764930

`∩[A038883(n+1), A139849(n+1)]`
-/

namespace A140020.P12073356726786764930
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038883 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139849 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140020.P12073356726786764930

/-! ## A140020.P4909797026793688233

`∩[A139849(n+1), A247881(n+1)]`
-/

namespace A140020.P4909797026793688233
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139849 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247881 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140020.P4909797026793688233

/-! ## A140020.P1031595887793495269

`∩[A035245(n+1), A139849(n+1)]`
-/

namespace A140020.P1031595887793495269
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035245 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139849 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140020.P1031595887793495269

/-!
# A140021: Primes of the form 14x^2+14xy+101y^2.

The programs for A140021, there is no canonical definition to state claims against.
-/

/-! ## A140021.P8716812513886448798

`∩[A139846(n+1), A139913(n+1)]`
-/

namespace A140021.P8716812513886448798
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139846 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139913 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140021.P8716812513886448798

/-! ## A140021.P2335471433951063478

`∩[A107151(n+1), A139913(n+1)]`
-/

namespace A140021.P2335471433951063478
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107151 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139913 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140021.P2335471433951063478

/-! ## A140021.P6868057730017378594

`∩[A033210(n+1), A139846(n+1)]`
-/

namespace A140021.P6868057730017378594
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033210 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139846 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140021.P6868057730017378594

/-! ## A140021.P16627779768214116652

`∩[A106972(n+1), A141111(n+1)]`
-/

namespace A140021.P16627779768214116652
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106972 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141111 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140021.P16627779768214116652

/-! ## A140021.P6692050639447158573

`∩[A139846(n+1), A141111(n+1)]`
-/

namespace A140021.P6692050639447158573
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139846 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141111 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140021.P6692050639447158573

/-! ## A140021.P1957263437038130515

`∩[A139913(n+1), A141111(n+1)]`
-/

namespace A140021.P1957263437038130515
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139913 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141111 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140021.P1957263437038130515

/-! ## A140021.P7859826950721892313

`∩[A033205(n+1), A139913(n+1)]`
-/

namespace A140021.P7859826950721892313
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033205 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139913 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140021.P7859826950721892313

/-! ## A140021.P15878266434548995893

`∩[A139913(n+1), A216815(n+1)]`
-/

namespace A140021.P15878266434548995893
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139913 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216815 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140021.P15878266434548995893

/-! ## A140021.P11404812482778388573

`∩[A091729(n+1), A139913(n+1)]`
-/

namespace A140021.P11404812482778388573
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091729 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139913 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140021.P11404812482778388573

/-! ## A140021.P3181134094246342133

`∩[A139913(n+1), A141785(n+1)]`
-/

namespace A140021.P3181134094246342133
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139913 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141785 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140021.P3181134094246342133

/-! ## A140021.P14900718532050985211

`∩[A040998(n+1), A139913(n+1)]`
-/

namespace A140021.P14900718532050985211
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040998 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139913 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140021.P14900718532050985211

/-! ## A140021.P7161139004619858249

`∩[A139846(n+1), A296926(n+1)]`
-/

namespace A140021.P7161139004619858249
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139846 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296926 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140021.P7161139004619858249

/-! ## A140021.P158273162059348709

`∩[A139846(n+1), A296928(n+1)]`
-/

namespace A140021.P158273162059348709
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139846 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296928 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140021.P158273162059348709

/-! ## A140021.P2363214192569114778

`∩[A038945(n+1), A139913(n+1)]`
-/

namespace A140021.P2363214192569114778
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038945 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139913 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140021.P2363214192569114778

/-! ## A140021.P5214120438523191645

`∩[A038883(n+1), A139846(n+1)]`
-/

namespace A140021.P5214120438523191645
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038883 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139846 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140021.P5214120438523191645

/-! ## A140021.P10533776179714831912

`∩[A038872(n+1), A139913(n+1)]`
-/

namespace A140021.P10533776179714831912
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038872 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139913 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140021.P10533776179714831912

/-! ## A140021.P108081715145049195

`∩[A045468(n+1), A139913(n+1)]`
-/

namespace A140021.P108081715145049195
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045468 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139913 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140021.P108081715145049195

/-! ## A140021.P4819835090526723560

`∩[A064739(n+1), A139913(n+1)]`
-/

namespace A140021.P4819835090526723560
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064739 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139913 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140021.P4819835090526723560

/-! ## A140021.P13434260421131030258

`∩[A139513(n+1), A139913(n+1)]`
-/

namespace A140021.P13434260421131030258
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139513 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139913 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140021.P13434260421131030258

/-! ## A140021.P16856164618029474687

`∩[A139913(n+1), A240920(n+1)]`
-/

namespace A140021.P16856164618029474687
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139913 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240920 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140021.P16856164618029474687

/-!
# A140022: Primes of the form 15x^2+91y^2.

The programs for A140022, there is no canonical definition to state claims against.
-/

/-! ## A140022.P434734540876731383

`∩[A139503(n+1), A139910(n+1)]`
-/

namespace A140022.P434734540876731383
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139503 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139910 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140022.P434734540876731383

/-! ## A140022.P13662178670440561397

`∩[A107168(n+1), A139910(n+1)]`
-/

namespace A140022.P13662178670440561397
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107168 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139910 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140022.P13662178670440561397

/-! ## A140022.P3549605841837171264

`∩[A139910(n+1), A243174(n+1)]`
-/

namespace A140022.P3549605841837171264
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139910 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243174 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140022.P3549605841837171264

/-! ## A140022.P5752159870291714965

`∩[A106881(n+1), A139910(n+1)]`
-/

namespace A140022.P5752159870291714965
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106881 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139910 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140022.P5752159870291714965

/-! ## A140022.P635683259452812004

`∩[A033212(n+1), A139910(n+1)]`
-/

namespace A140022.P635683259452812004
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033212 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139910 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140022.P635683259452812004

/-! ## A140022.P3068962655002583918

`∩[A106906(n+1), A139503(n+1)]`
-/

namespace A140022.P3068962655002583918
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106906 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139503 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140022.P3068962655002583918

/-! ## A140022.P8342057275191817339

`∩[A122869(n+1), A139910(n+1)]`
-/

namespace A140022.P8342057275191817339
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122869 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139910 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140022.P8342057275191817339

/-! ## A140022.P11267671850693194859

`∩[A053032(n+1), A139910(n+1)]`
-/

namespace A140022.P11267671850693194859
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053032 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139910 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140022.P11267671850693194859

/-! ## A140022.P12088724247614556976

`∩[A112860(n+1), A139910(n+1)]`
-/

namespace A140022.P12088724247614556976
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112860 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139910 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140022.P12088724247614556976

/-! ## A140022.P13290239225398511420

`∩[A139910(n+1), A385192(n+1)]`
-/

namespace A140022.P13290239225398511420
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139910 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385192 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140022.P13290239225398511420

/-! ## A140022.P16469375202467420841

`∩[A040105(n+1), A139910(n+1)]`
-/

namespace A140022.P16469375202467420841
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040105 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139910 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140022.P16469375202467420841

/-! ## A140022.P5576518594145387435

`∩[A040147(n+1), A139910(n+1)]`
-/

namespace A140022.P5576518594145387435
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040147 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139910 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140022.P5576518594145387435

/-! ## A140022.P3551743993005379420

`∩[A038872(n+1), A139910(n+1)]`
-/

namespace A140022.P3551743993005379420
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038872 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139910 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140022.P3551743993005379420

/-! ## A140022.P13676510483484567084

`∩[A038888(n+1), A139910(n+1)]`
-/

namespace A140022.P13676510483484567084
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038888 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139910 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140022.P13676510483484567084

/-! ## A140022.P17699727268174771261

`∩[A045468(n+1), A139910(n+1)]`
-/

namespace A140022.P17699727268174771261
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045468 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139910 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140022.P17699727268174771261

/-! ## A140022.P2029024157445121833

`∩[A064739(n+1), A139910(n+1)]`
-/

namespace A140022.P2029024157445121833
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064739 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139910 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140022.P2029024157445121833

/-! ## A140022.P11269190009247447892

`∩[A076518(n+1), A139910(n+1)]`
-/

namespace A140022.P11269190009247447892
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076518 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139910 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140022.P11269190009247447892

/-! ## A140022.P17567282029437233934

`∩[A139910(n+1), A191018(n+1)]`
-/

namespace A140022.P17567282029437233934
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139910 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191018 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140022.P17567282029437233934

/-! ## A140022.P9681557680111069716

`∩[A139910(n+1), A191026(n+1)]`
-/

namespace A140022.P9681557680111069716
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139910 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191026 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140022.P9681557680111069716

/-! ## A140022.P17546798715963951312

`∩[A139910(n+1), A341783(n+1)]`
-/

namespace A140022.P17546798715963951312
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139910 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341783 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140022.P17546798715963951312

/-!
# A140023: Primes of the form 21x^2+65y^2.

The programs for A140023, there is no canonical definition to state claims against.
-/

/-! ## A140023.P14711646618960871220

`∩[A139495(n+1), A139907(n+1)]`
-/

namespace A140023.P14711646618960871220
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139495 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139907 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140023.P14711646618960871220

/-! ## A140023.P6774278029155046906

`∩[A107151(n+1), A139907(n+1)]`
-/

namespace A140023.P6774278029155046906
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107151 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139907 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140023.P6774278029155046906

/-! ## A140023.P14928308947113300302

`∩[A106881(n+1), A139907(n+1)]`
-/

namespace A140023.P14928308947113300302
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106881 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139907 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140023.P14928308947113300302

/-! ## A140023.P4662057486921382535

`∩[A033205(n+1), A139907(n+1)]`
-/

namespace A140023.P4662057486921382535
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033205 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139907 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140023.P4662057486921382535

/-! ## A140023.P7380563745696929302

`∩[A139907(n+1), A216815(n+1)]`
-/

namespace A140023.P7380563745696929302
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139907 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216815 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140023.P7380563745696929302

/-! ## A140023.P3969456252049313533

`∩[A106886(n+1), A139495(n+1)]`
-/

namespace A140023.P3969456252049313533
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106886 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139495 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140023.P3969456252049313533

/-! ## A140023.P17487902598145767858

`∩[A091729(n+1), A139907(n+1)]`
-/

namespace A140023.P17487902598145767858
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091729 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139907 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140023.P17487902598145767858

/-! ## A140023.P13038441120249645928

`∩[A139907(n+1), A141785(n+1)]`
-/

namespace A140023.P13038441120249645928
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139907 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141785 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140023.P13038441120249645928

/-! ## A140023.P15392056714305779864

`∩[A038911(n+1), A139907(n+1)]`
-/

namespace A140023.P15392056714305779864
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038911 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139907 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140023.P15392056714305779864

/-! ## A140023.P12743385579970459354

`∩[A038872(n+1), A139907(n+1)]`
-/

namespace A140023.P12743385579970459354
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038872 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139907 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140023.P12743385579970459354

/-! ## A140023.P14882107372593685613

`∩[A045468(n+1), A139907(n+1)]`
-/

namespace A140023.P14882107372593685613
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045468 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139907 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140023.P14882107372593685613

/-! ## A140023.P6199336399843255573

`∩[A139907(n+1), A191026(n+1)]`
-/

namespace A140023.P6199336399843255573
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139907 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191026 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140023.P6199336399843255573

/-! ## A140023.P5266244171427107618

`∩[A038888(n+1), A139907(n+1)]`
-/

namespace A140023.P5266244171427107618
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038888 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139907 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140023.P5266244171427107618

/-! ## A140023.P4868111048632283231

`∩[A139513(n+1), A139907(n+1)]`
-/

namespace A140023.P4868111048632283231
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139513 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139907 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140023.P4868111048632283231

/-! ## A140023.P16349723710212122677

`∩[A139907(n+1), A296922(n+1)]`
-/

namespace A140023.P16349723710212122677
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139907 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296922 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140023.P16349723710212122677

/-! ## A140023.P3540227793831922191

`∩[A139907(n+1), A341783(n+1)]`
-/

namespace A140023.P3540227793831922191
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139907 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341783 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140023.P3540227793831922191

/-! ## A140023.P179830157795604253

`∩[A139907(n+1), A191062(n+1)]`
-/

namespace A140023.P179830157795604253
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139907 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191062 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140023.P179830157795604253

/-! ## A140023.P4240569983205262882

`∩[A038946(n+1), A139907(n+1)]`
-/

namespace A140023.P4240569983205262882
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038946 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139907 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140023.P4240569983205262882

/-! ## A140023.P2660830148103267880

`∩[A091730(n+1), A139907(n+1)]`
-/

namespace A140023.P2660830148103267880
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091730 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139907 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140023.P2660830148103267880

/-! ## A140023.P17665829961934687941

`∩[A139907(n+1), A155565(n+1)]`
-/

namespace A140023.P17665829961934687941
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139907 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155565 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140023.P17665829961934687941

/-!
# A140024: Primes of the form 26x^2+26xy+59y^2.

The programs for A140024, there is no canonical definition to state claims against.
-/

/-! ## A140024.P2819098447724446847

`∩[A139909(n+1), A141302(n+1)]`
-/

namespace A140024.P2819098447724446847
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139909 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141302 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140024.P2819098447724446847

/-! ## A140024.P10560757875230118300

`∩[A106986(n+1), A141302(n+1)]`
-/

namespace A140024.P10560757875230118300
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106986 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141302 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140024.P10560757875230118300

/-! ## A140024.P10940759098823572788

`∩[A122869(n+1), A139909(n+1)]`
-/

namespace A140024.P10940759098823572788
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122869 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139909 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140024.P10940759098823572788

/-! ## A140024.P1194414664691434797

`∩[A139909(n+1), A141785(n+1)]`
-/

namespace A140024.P1194414664691434797
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139909 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141785 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140024.P1194414664691434797

/-! ## A140024.P17598649697027232580

`∩[A053032(n+1), A139909(n+1)]`
-/

namespace A140024.P17598649697027232580
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053032 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139909 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140024.P17598649697027232580

/-! ## A140024.P643478649111943720

`∩[A112860(n+1), A139909(n+1)]`
-/

namespace A140024.P643478649111943720
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112860 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139909 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140024.P643478649111943720

/-! ## A140024.P10505745498465389421

`∩[A139909(n+1), A385192(n+1)]`
-/

namespace A140024.P10505745498465389421
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139909 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385192 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140024.P10505745498465389421

/-! ## A140024.P10844364562708660200

`∩[A040130(n+1), A139909(n+1)]`
-/

namespace A140024.P10844364562708660200
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040130 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139909 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140024.P10844364562708660200

/-! ## A140024.P3189952630645838736

`∩[A040105(n+1), A139909(n+1)]`
-/

namespace A140024.P3189952630645838736
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040105 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139909 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140024.P3189952630645838736

/-! ## A140024.P2495246371136192160

`∩[A040147(n+1), A139909(n+1)]`
-/

namespace A140024.P2495246371136192160
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040147 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139909 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140024.P2495246371136192160

/-! ## A140024.P1395074788833074379

`∩[A040998(n+1), A139909(n+1)]`
-/

namespace A140024.P1395074788833074379
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040998 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139909 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140024.P1395074788833074379

/-! ## A140024.P10824244238580188800

`∩[A038872(n+1), A139909(n+1)]`
-/

namespace A140024.P10824244238580188800
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038872 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139909 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140024.P10824244238580188800

/-! ## A140024.P2659852541711370135

`∩[A038911(n+1), A139909(n+1)]`
-/

namespace A140024.P2659852541711370135
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038911 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139909 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140024.P2659852541711370135

/-! ## A140024.P10529892093079322004

`∩[A045468(n+1), A139909(n+1)]`
-/

namespace A140024.P10529892093079322004
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045468 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139909 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140024.P10529892093079322004

/-! ## A140024.P5085048524805268257

`∩[A064739(n+1), A139909(n+1)]`
-/

namespace A140024.P5085048524805268257
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064739 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139909 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140024.P5085048524805268257

/-! ## A140024.P13616902865795471660

`∩[A076518(n+1), A139909(n+1)]`
-/

namespace A140024.P13616902865795471660
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076518 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139909 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140024.P13616902865795471660

/-! ## A140024.P4618993181369533980

`∩[A003626(n+1), A139909(n+1)]`
-/

namespace A140024.P4618993181369533980
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003626 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139909 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140024.P4618993181369533980

/-! ## A140024.P16150787417686659237

`∩[A038887(n+1), A139909(n+1)]`
-/

namespace A140024.P16150787417686659237
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038887 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139909 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140024.P16150787417686659237

/-! ## A140024.P18128974958012956111

`∩[A097956(n+1), A139909(n+1)]`
-/

namespace A140024.P18128974958012956111
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097956 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139909 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140024.P18128974958012956111

/-! ## A140024.P17063327545226513020

`∩[A139909(n+1), A191062(n+1)]`
-/

namespace A140024.P17063327545226513020
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139909 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191062 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140024.P17063327545226513020

/-!
# A140025: Primes of the form 30x^2+30xy+53y^2.

The programs for A140025, the canonical program `A140025.P5832999856353222194` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A140025 has offset 1).

The definition of A140025 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 639 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A140025.P3426740318139097338

`∩[A033210(n+1), A139844(n+1)]`
-/

namespace A140025.P3426740318139097338
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033210 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139844 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140025.P3426740318139097338

namespace A140025

/-- `∩[A033210(n+1), A139844(n+1)]` -/
def P3426740318139097338.Spec : Prop :=
  ∀ n, (P3426740318139097338.a n : ℤ) = A140025 (n + 1)

end A140025

/-! ## A140025.P1896846435231458940

`∩[A106989(n+1), A107167(n+1)]`
-/

namespace A140025.P1896846435231458940
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106989 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107167 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140025.P1896846435231458940

namespace A140025

/-- `∩[A106989(n+1), A107167(n+1)]` -/
def P1896846435231458940.Spec : Prop :=
  ∀ n, (P1896846435231458940.a n : ℤ) = A140025 (n + 1)

end A140025

/-! ## A140025.P14613648149170849792

`∩[A106989(n+1), A139844(n+1)]`
-/

namespace A140025.P14613648149170849792
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106989 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139844 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140025.P14613648149170849792

namespace A140025

/-- `∩[A106989(n+1), A139844(n+1)]` -/
def P14613648149170849792.Spec : Prop :=
  ∀ n, (P14613648149170849792.a n : ℤ) = A140025 (n + 1)

end A140025

/-! ## A140025.P11143985648345595494

`∩[A106989(n+1), A141303(n+1)]`
-/

namespace A140025.P11143985648345595494
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106989 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141303 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140025.P11143985648345595494

namespace A140025

/-- `∩[A106989(n+1), A141303(n+1)]` -/
def P11143985648345595494.Spec : Prop :=
  ∀ n, (P11143985648345595494.a n : ℤ) = A140025 (n + 1)

end A140025

/-! ## A140025.P12289893650299444688

`∩[A038883(n+1), A139844(n+1)]`
-/

namespace A140025.P12289893650299444688
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038883 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139844 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140025.P12289893650299444688

namespace A140025

/-- `∩[A038883(n+1), A139844(n+1)]` -/
def P12289893650299444688.Spec : Prop :=
  ∀ n, (P12289893650299444688.a n : ℤ) = A140025 (n + 1)

end A140025

/-! ## A140025.P9231402612601144414

`∩[A038979(n+1), A139844(n+1)]`
-/

namespace A140025.P9231402612601144414
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038979 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139844 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140025.P9231402612601144414

namespace A140025

/-- `∩[A038979(n+1), A139844(n+1)]` -/
def P9231402612601144414.Spec : Prop :=
  ∀ n, (P9231402612601144414.a n : ℤ) = A140025 (n + 1)

end A140025

/-! ## A140025.P14047815173698884020

`∩[A139844(n+1), A191054(n+1)]`
-/

namespace A140025.P14047815173698884020
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139844 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191054 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140025.P14047815173698884020

namespace A140025

/-- `∩[A139844(n+1), A191054(n+1)]` -/
def P14047815173698884020.Spec : Prop :=
  ∀ n, (P14047815173698884020.a n : ℤ) = A140025 (n + 1)

end A140025

/-! ## A140025.P10195489642638041915

`∩[A139844(n+1), A296926(n+1)]`
-/

namespace A140025.P10195489642638041915
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139844 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296926 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140025.P10195489642638041915

namespace A140025

/-- `∩[A139844(n+1), A296926(n+1)]` -/
def P10195489642638041915.Spec : Prop :=
  ∀ n, (P10195489642638041915.a n : ℤ) = A140025 (n + 1)

end A140025

/-! ## A140025.P9066574998588431927

`∩[A139844(n+1), A296928(n+1)]`
-/

namespace A140025.P9066574998588431927
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139844 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296928 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140025.P9066574998588431927

namespace A140025

/-- `∩[A139844(n+1), A296928(n+1)]` -/
def P9066574998588431927.Spec : Prop :=
  ∀ n, (P9066574998588431927.a n : ℤ) = A140025 (n + 1)

end A140025

/-! ## A140025.P115414605870792381

`∩[A139844(n+1), A296937(n+1)]`
-/

namespace A140025.P115414605870792381
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139844 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296937 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140025.P115414605870792381

namespace A140025

/-- `∩[A139844(n+1), A296937(n+1)]` -/
def P115414605870792381.Spec : Prop :=
  ∀ n, (P115414605870792381.a n : ℤ) = A140025 (n + 1)

end A140025

/-! ## A140025.P5832999856353222194

`∩[A038918(n+1), A139844(n+1)]`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A140025

/-- `∩[A038918(n+1), A139844(n+1)]` -/
def P5832999856353222194.Spec : Prop :=
  ∀ n, (P5832999856353222194.a n : ℤ) = A140025 (n + 1)

theorem P5832999856353222194.correct : P5832999856353222194.Spec := by
  intro n
  simp only [A140025, Nat.add_sub_cancel]

end A140025

/-! ## A140025.P3429360216180433633

`∩[A139844(n+1), A270997(n+1)]`
-/

namespace A140025.P3429360216180433633
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139844 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270997 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140025.P3429360216180433633

namespace A140025

/-- `∩[A139844(n+1), A270997(n+1)]` -/
def P3429360216180433633.Spec : Prop :=
  ∀ n, (P3429360216180433633.a n : ℤ) = A140025 (n + 1)

end A140025

/-! ## A140025.P12085496662126395089

`∩[A038946(n+1), A139844(n+1)]`
-/

namespace A140025.P12085496662126395089
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038946 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139844 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140025.P12085496662126395089

namespace A140025

/-- `∩[A038946(n+1), A139844(n+1)]` -/
def P12085496662126395089.Spec : Prop :=
  ∀ n, (P12085496662126395089.a n : ℤ) = A140025 (n + 1)

end A140025

/-! ## A140025.P2999963765506071356

`∩[A139844(n+1), A191070(n+1)]`
-/

namespace A140025.P2999963765506071356
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139844 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191070 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140025.P2999963765506071356

namespace A140025

/-- `∩[A139844(n+1), A191070(n+1)]` -/
def P2999963765506071356.Spec : Prop :=
  ∀ n, (P2999963765506071356.a n : ℤ) = A140025 (n + 1)

end A140025

/-!
# A140026: Primes of the form 35x^2+39y^2.

The programs for A140026, the canonical program `A140026.P1796538295663725552` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A140026 has offset 1).

The definition of A140026 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4988 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A140026.P1796538295663725552

`∩[A139850(n+1), A139912(n+1)]`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A140026

/-- `∩[A139850(n+1), A139912(n+1)]` -/
def P1796538295663725552.Spec : Prop :=
  ∀ n, (P1796538295663725552.a n : ℤ) = A140026 (n + 1)

theorem P1796538295663725552.correct : P1796538295663725552.Spec := by
  intro n
  simp only [A140026, Nat.add_sub_cancel]

end A140026

/-! ## A140026.P4721801026568437374

`∩[A139912(n+1), A141302(n+1)]`
-/

namespace A140026.P4721801026568437374
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139912 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141302 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140026.P4721801026568437374

namespace A140026

/-- `∩[A139912(n+1), A141302(n+1)]` -/
def P4721801026568437374.Spec : Prop :=
  ∀ n, (P4721801026568437374.a n : ℤ) = A140026 (n + 1)

end A140026

/-! ## A140026.P6879779346573467727

`∩[A106881(n+1), A139912(n+1)]`
-/

namespace A140026.P6879779346573467727
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106881 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139912 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140026.P6879779346573467727

namespace A140026

/-- `∩[A106881(n+1), A139912(n+1)]` -/
def P6879779346573467727.Spec : Prop :=
  ∀ n, (P6879779346573467727.a n : ℤ) = A140026 (n + 1)

end A140026

/-! ## A140026.P8218202685406831617

`∩[A106989(n+1), A139850(n+1)]`
-/

namespace A140026.P8218202685406831617
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106989 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139850 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140026.P8218202685406831617

namespace A140026

/-- `∩[A106989(n+1), A139850(n+1)]` -/
def P8218202685406831617.Spec : Prop :=
  ∀ n, (P8218202685406831617.a n : ℤ) = A140026 (n + 1)

end A140026

/-! ## A140026.P9056488115671211995

`∩[A106989(n+1), A141302(n+1)]`
-/

namespace A140026.P9056488115671211995
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106989 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141302 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140026.P9056488115671211995

namespace A140026

/-- `∩[A106989(n+1), A141302(n+1)]` -/
def P9056488115671211995.Spec : Prop :=
  ∀ n, (P9056488115671211995.a n : ℤ) = A140026 (n + 1)

end A140026

/-! ## A140026.P10817597592764997833

`∩[A102273(n+1), A141111(n+1)]`
-/

namespace A140026.P10817597592764997833
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102273 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141111 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140026.P10817597592764997833

namespace A140026

/-- `∩[A102273(n+1), A141111(n+1)]` -/
def P10817597592764997833.Spec : Prop :=
  ∀ n, (P10817597592764997833.a n : ℤ) = A140026 (n + 1)

end A140026

/-! ## A140026.P11601336987644643170

`∩[A139850(n+1), A141111(n+1)]`
-/

namespace A140026.P11601336987644643170
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139850 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141111 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140026.P11601336987644643170

namespace A140026

/-- `∩[A139850(n+1), A141111(n+1)]` -/
def P11601336987644643170.Spec : Prop :=
  ∀ n, (P11601336987644643170.a n : ℤ) = A140026 (n + 1)

end A140026

/-! ## A140026.P9852667576804039002

`∩[A139912(n+1), A141111(n+1)]`
-/

namespace A140026.P9852667576804039002
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139912 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141111 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140026.P9852667576804039002

namespace A140026

/-- `∩[A139912(n+1), A141111(n+1)]` -/
def P9852667576804039002.Spec : Prop :=
  ∀ n, (P9852667576804039002.a n : ℤ) = A140026 (n + 1)

end A140026

/-! ## A140026.P15339440213981088588

`∩[A122869(n+1), A139912(n+1)]`
-/

namespace A140026.P15339440213981088588
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122869 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139912 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140026.P15339440213981088588

namespace A140026

/-- `∩[A122869(n+1), A139912(n+1)]` -/
def P15339440213981088588.Spec : Prop :=
  ∀ n, (P15339440213981088588.a n : ℤ) = A140026 (n + 1)

end A140026

/-! ## A140026.P9945818129093329151

`∩[A139912(n+1), A141785(n+1)]`
-/

namespace A140026.P9945818129093329151
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139912 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141785 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140026.P9945818129093329151

namespace A140026

/-- `∩[A139912(n+1), A141785(n+1)]` -/
def P9945818129093329151.Spec : Prop :=
  ∀ n, (P9945818129093329151.a n : ℤ) = A140026 (n + 1)

end A140026

/-! ## A140026.P10931950171697364286

`∩[A053032(n+1), A139912(n+1)]`
-/

namespace A140026.P10931950171697364286
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053032 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139912 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140026.P10931950171697364286

namespace A140026

/-- `∩[A053032(n+1), A139912(n+1)]` -/
def P10931950171697364286.Spec : Prop :=
  ∀ n, (P10931950171697364286.a n : ℤ) = A140026 (n + 1)

end A140026

/-! ## A140026.P12015125831177846861

`∩[A112860(n+1), A139912(n+1)]`
-/

namespace A140026.P12015125831177846861
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112860 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139912 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140026.P12015125831177846861

namespace A140026

/-- `∩[A112860(n+1), A139912(n+1)]` -/
def P12015125831177846861.Spec : Prop :=
  ∀ n, (P12015125831177846861.a n : ℤ) = A140026 (n + 1)

end A140026

/-! ## A140026.P6777084667122996073

`∩[A139912(n+1), A385192(n+1)]`
-/

namespace A140026.P6777084667122996073
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139912 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385192 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140026.P6777084667122996073

namespace A140026

/-- `∩[A139912(n+1), A385192(n+1)]` -/
def P6777084667122996073.Spec : Prop :=
  ∀ n, (P6777084667122996073.a n : ℤ) = A140026 (n + 1)

end A140026

/-! ## A140026.P15598629765826262933

`∩[A040126(n+1), A139850(n+1)]`
-/

namespace A140026.P15598629765826262933
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040126 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139850 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140026.P15598629765826262933

namespace A140026

/-- `∩[A040126(n+1), A139850(n+1)]` -/
def P15598629765826262933.Spec : Prop :=
  ∀ n, (P15598629765826262933.a n : ℤ) = A140026 (n + 1)

end A140026

/-! ## A140026.P7706037189527503689

`∩[A040130(n+1), A139912(n+1)]`
-/

namespace A140026.P7706037189527503689
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040130 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139912 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140026.P7706037189527503689

namespace A140026

/-- `∩[A040130(n+1), A139912(n+1)]` -/
def P7706037189527503689.Spec : Prop :=
  ∀ n, (P7706037189527503689.a n : ℤ) = A140026 (n + 1)

end A140026

/-! ## A140026.P18433219656393344576

`∩[A040105(n+1), A139912(n+1)]`
-/

namespace A140026.P18433219656393344576
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040105 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139912 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140026.P18433219656393344576

namespace A140026

/-- `∩[A040105(n+1), A139912(n+1)]` -/
def P18433219656393344576.Spec : Prop :=
  ∀ n, (P18433219656393344576.a n : ℤ) = A140026 (n + 1)

end A140026

/-! ## A140026.P1782080810390930169

`∩[A040147(n+1), A139912(n+1)]`
-/

namespace A140026.P1782080810390930169
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040147 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139912 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140026.P1782080810390930169

namespace A140026

/-- `∩[A040147(n+1), A139912(n+1)]` -/
def P1782080810390930169.Spec : Prop :=
  ∀ n, (P1782080810390930169.a n : ℤ) = A140026 (n + 1)

end A140026

/-! ## A140026.P9284527888018683884

`∩[A040998(n+1), A139912(n+1)]`
-/

namespace A140026.P9284527888018683884
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040998 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139912 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140026.P9284527888018683884

namespace A140026

/-- `∩[A040998(n+1), A139912(n+1)]` -/
def P9284527888018683884.Spec : Prop :=
  ∀ n, (P9284527888018683884.a n : ℤ) = A140026 (n + 1)

end A140026

/-! ## A140026.P8735849362820839781

`∩[A038917(n+1), A139850(n+1)]`
-/

namespace A140026.P8735849362820839781
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038917 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139850 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140026.P8735849362820839781

namespace A140026

/-- `∩[A038917(n+1), A139850(n+1)]` -/
def P8735849362820839781.Spec : Prop :=
  ∀ n, (P8735849362820839781.a n : ℤ) = A140026 (n + 1)

end A140026

/-! ## A140026.P8989052991619359572

`∩[A038945(n+1), A139850(n+1)]`
-/

namespace A140026.P8989052991619359572
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038945 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139850 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140026.P8989052991619359572

namespace A140026

/-- `∩[A038945(n+1), A139850(n+1)]` -/
def P8989052991619359572.Spec : Prop :=
  ∀ n, (P8989052991619359572.a n : ℤ) = A140026 (n + 1)

end A140026

/-!
# A140027: Primes of the form 37x^2+4xy+37y^2.

The programs for A140027, there is no canonical definition to state claims against.
-/

/-! ## A140027.P3428710223810186239

`∩[A033215(n+1), A141112(n+1)]`
-/

namespace A140027.P3428710223810186239
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033215 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141112 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140027.P3428710223810186239

/-!
# A140028: Primes of the form 42x^2+42xy+43y^2.

The programs for A140028, the canonical program `A140028.P5456480010220163943` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A140028 has offset 1).

The definition of A140028 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 637 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A140028.P1410371501179033571

`∩[A106989(n+1), A139832(n+1)]`
-/

namespace A140028.P1410371501179033571
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106989 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139832 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140028.P1410371501179033571

namespace A140028

/-- `∩[A106989(n+1), A139832(n+1)]` -/
def P1410371501179033571.Spec : Prop :=
  ∀ n, (P1410371501179033571.a n : ℤ) = A140028 (n + 1)

end A140028

/-! ## A140028.P8293505639716166346

`∩[A106989(n+1), A139848(n+1)]`
-/

namespace A140028.P8293505639716166346
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106989 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139848 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140028.P8293505639716166346

namespace A140028

/-- `∩[A106989(n+1), A139848(n+1)]` -/
def P8293505639716166346.Spec : Prop :=
  ∀ n, (P8293505639716166346.a n : ℤ) = A140028 (n + 1)

end A140028

/-! ## A140028.P4545642227782231059

`∩[A106989(n+1), A141304(n+1)]`
-/

namespace A140028.P4545642227782231059
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106989 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141304 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140028.P4545642227782231059

namespace A140028

/-- `∩[A106989(n+1), A141304(n+1)]` -/
def P4545642227782231059.Spec : Prop :=
  ∀ n, (P4545642227782231059.a n : ℤ) = A140028 (n + 1)

end A140028

/-! ## A140028.P13690582656150057800

`∩[A139494(n+1), A139848(n+1)]`
-/

namespace A140028.P13690582656150057800
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139494 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139848 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140028.P13690582656150057800

namespace A140028

/-- `∩[A139494(n+1), A139848(n+1)]` -/
def P13690582656150057800.Spec : Prop :=
  ∀ n, (P13690582656150057800.a n : ℤ) = A140028 (n + 1)

end A140028

/-! ## A140028.P18322696389381982770

`∩[A139848(n+1), A267455(n+1)]`
-/

namespace A140028.P18322696389381982770
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139848 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267455 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140028.P18322696389381982770

namespace A140028

/-- `∩[A139848(n+1), A267455(n+1)]` -/
def P18322696389381982770.Spec : Prop :=
  ∀ n, (P18322696389381982770.a n : ℤ) = A140028 (n + 1)

end A140028

/-! ## A140028.P15267523396485456925

`∩[A040126(n+1), A139848(n+1)]`
-/

namespace A140028.P15267523396485456925
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040126 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139848 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140028.P15267523396485456925

namespace A140028

/-- `∩[A040126(n+1), A139848(n+1)]` -/
def P15267523396485456925.Spec : Prop :=
  ∀ n, (P15267523396485456925.a n : ℤ) = A140028 (n + 1)

end A140028

/-! ## A140028.P10494496942751008483

`∩[A038883(n+1), A139848(n+1)]`
-/

namespace A140028.P10494496942751008483
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038883 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139848 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140028.P10494496942751008483

namespace A140028

/-- `∩[A038883(n+1), A139848(n+1)]` -/
def P10494496942751008483.Spec : Prop :=
  ∀ n, (P10494496942751008483.a n : ℤ) = A140028 (n + 1)

end A140028

/-! ## A140028.P5456480010220163943

`∩[A139848(n+1), A191029(n+1)]`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A140028

/-- `∩[A139848(n+1), A191029(n+1)]` -/
def P5456480010220163943.Spec : Prop :=
  ∀ n, (P5456480010220163943.a n : ℤ) = A140028 (n + 1)

theorem P5456480010220163943.correct : P5456480010220163943.Spec := by
  intro n
  simp only [A140028, Nat.add_sub_cancel]

end A140028

/-! ## A140028.P2021655298214272994

`∩[A139848(n+1), A296937(n+1)]`
-/

namespace A140028.P2021655298214272994
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139848 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296937 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140028.P2021655298214272994

namespace A140028

/-- `∩[A139848(n+1), A296937(n+1)]` -/
def P2021655298214272994.Spec : Prop :=
  ∀ n, (P2021655298214272994.a n : ℤ) = A140028 (n + 1)

end A140028

/-! ## A140028.P9914164183549638855

`∩[A139848(n+1), A191054(n+1)]`
-/

namespace A140028.P9914164183549638855
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139848 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191054 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140028.P9914164183549638855

namespace A140028

/-- `∩[A139848(n+1), A191054(n+1)]` -/
def P9914164183549638855.Spec : Prop :=
  ∀ n, (P9914164183549638855.a n : ℤ) = A140028 (n + 1)

end A140028

/-! ## A140028.P16164422471359510392

`∩[A139848(n+1), A296927(n+1)]`
-/

namespace A140028.P16164422471359510392
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139848 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296927 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140028.P16164422471359510392

namespace A140028

/-- `∩[A139848(n+1), A296927(n+1)]` -/
def P16164422471359510392.Spec : Prop :=
  ∀ n, (P16164422471359510392.a n : ℤ) = A140028 (n + 1)

end A140028

/-! ## A140028.P12404920875116642774

`∩[A139848(n+1), A270997(n+1)]`
-/

namespace A140028.P12404920875116642774
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139848 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270997 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140028.P12404920875116642774

namespace A140028

/-- `∩[A139848(n+1), A270997(n+1)]` -/
def P12404920875116642774.Spec : Prop :=
  ∀ n, (P12404920875116642774.a n : ℤ) = A140028 (n + 1)

end A140028

/-! ## A140028.P14577910635922260837

`∩[A038918(n+1), A139848(n+1)]`
-/

namespace A140028.P14577910635922260837
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038918 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139848 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140028.P14577910635922260837

namespace A140028

/-- `∩[A038918(n+1), A139848(n+1)]` -/
def P14577910635922260837.Spec : Prop :=
  ∀ n, (P14577910635922260837.a n : ℤ) = A140028 (n + 1)

end A140028

/-! ## A140028.P3459581652295979398

`∩[A038946(n+1), A139848(n+1)]`
-/

namespace A140028.P3459581652295979398
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038946 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139848 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140028.P3459581652295979398

namespace A140028

/-- `∩[A038946(n+1), A139848(n+1)]` -/
def P3459581652295979398.Spec : Prop :=
  ∀ n, (P3459581652295979398.a n : ℤ) = A140028 (n + 1)

end A140028

/-! ## A140028.P16363075199616892265

`∩[A038980(n+1), A139848(n+1)]`
-/

namespace A140028.P16363075199616892265
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038980 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139848 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140028.P16363075199616892265

namespace A140028

/-- `∩[A038980(n+1), A139848(n+1)]` -/
def P16363075199616892265.Spec : Prop :=
  ∀ n, (P16363075199616892265.a n : ℤ) = A140028 (n + 1)

end A140028

/-! ## A140028.P15532587936022510662

`∩[A035256(n+1), A139848(n+1)]`
-/

namespace A140028.P15532587936022510662
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035256 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139848 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140028.P15532587936022510662

namespace A140028

/-- `∩[A035256(n+1), A139848(n+1)]` -/
def P15532587936022510662.Spec : Prop :=
  ∀ n, (P15532587936022510662.a n : ℤ) = A140028 (n + 1)

end A140028

/-! ## A140028.P12699517569697199549

`∩[A139848(n+1), A309586(n+1)]`
-/

namespace A140028.P12699517569697199549
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139848 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309586 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140028.P12699517569697199549

namespace A140028

/-- `∩[A139848(n+1), A309586(n+1)]` -/
def P12699517569697199549.Spec : Prop :=
  ∀ n, (P12699517569697199549.a n : ℤ) = A140028 (n + 1)

end A140028

/-!
# A140029: Primes of the form 3x^2+616y^2.

The programs for A140029, there is no canonical definition to state claims against.
-/

/-! ## A140029.P3495146207218564741

`∩[A139964(n+1), A332446(n+1)]`
-/

namespace A140029.P3495146207218564741
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139964 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332446 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140029.P3495146207218564741

/-! ## A140029.P9720765523180839056

`∩[A102271(n+1), A139964(n+1)]`
-/

namespace A140029.P9720765523180839056
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102271 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139964 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140029.P9720765523180839056

/-! ## A140029.P10897113447824751833

`∩[A139964(n+1), A141373(n+1)]`
-/

namespace A140029.P10897113447824751833
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139964 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141373 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140029.P10897113447824751833

/-! ## A140029.P7082324702305060350

`p?[or(2, A139964(n+1))]`
-/

namespace A140029.P7082324702305060350
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 2 (A139964 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A140029.P7082324702305060350

/-! ## A140029.P18123109668871714107

`∩[A102271(n+1), A141776(n+1)]`
-/

namespace A140029.P18123109668871714107
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102271 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141776 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140029.P18123109668871714107

/-! ## A140029.P17706829351312606376

`∩[A139964(n+1), A141776(n+1)]`
-/

namespace A140029.P17706829351312606376
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139964 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141776 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140029.P17706829351312606376

/-! ## A140029.P136035873614401493

`∩[A139964(n+1), A141170(n+1)]`
-/

namespace A140029.P136035873614401493
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139964 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141170 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140029.P136035873614401493

/-! ## A140029.P11332610390128262159

`∩[A007520(n+1), A139964(n+1)]`
-/

namespace A140029.P11332610390128262159
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007520 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139964 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140029.P11332610390128262159

/-! ## A140029.P8800938225348106961

`∩[A045339(n+1), A139964(n+1)]`
-/

namespace A140029.P8800938225348106961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045339 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139964 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140029.P8800938225348106961

/-! ## A140029.P9170538456086886938

`∩[A139964(n+1), A141173(n+1)]`
-/

namespace A140029.P9170538456086886938
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139964 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141173 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140029.P9170538456086886938

/-! ## A140029.P8765803630087253213

`∩[A139964(n+1), A163183(n+1)]`
-/

namespace A140029.P8765803630087253213
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139964 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163183 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140029.P8765803630087253213

/-! ## A140029.P16470563079475017081

`∩[A095282(n+1), A139964(n+1)]`
-/

namespace A140029.P16470563079475017081
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095282 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139964 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140029.P16470563079475017081

/-! ## A140029.P9954833031532400956

`∩[A139964(n+1), A192717(n+1)]`
-/

namespace A140029.P9954833031532400956
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139964 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192717 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140029.P9954833031532400956

/-! ## A140029.P5731934816423180689

`∩[A040107(n+1), A139964(n+1)]`
-/

namespace A140029.P5731934816423180689
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040107 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139964 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140029.P5731934816423180689

/-! ## A140029.P5207742164240570047

`∩[A040152(n+1), A139964(n+1)]`
-/

namespace A140029.P5207742164240570047
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040152 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139964 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140029.P5207742164240570047

/-! ## A140029.P18089297858475911045

`∩[A051071(n+1), A139964(n+1)]`
-/

namespace A140029.P18089297858475911045
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051071 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139964 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140029.P18089297858475911045

/-! ## A140029.P3620772265458473813

`∩[A040112(n+1), A139964(n+1)]`
-/

namespace A140029.P3620772265458473813
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040112 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139964 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140029.P3620772265458473813

/-! ## A140029.P13975372072272049464

`∩[A051073(n+1), A139964(n+1)]`
-/

namespace A140029.P13975372072272049464
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051073 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139964 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140029.P13975372072272049464

/-! ## A140029.P9244639835679813231

`∩[A038876(n+1), A139964(n+1)]`
-/

namespace A140029.P9244639835679813231
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038876 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139964 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140029.P9244639835679813231

/-! ## A140029.P4580385811843732588

`∩[A033200(n+1), A139964(n+1)]`
-/

namespace A140029.P4580385811843732588
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033200 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139964 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140029.P4580385811843732588

/-!
# A140030: Primes of the form 4x^2+4xy+463y^2.

The programs for A140030, there is no canonical definition to state claims against.
-/

/-! ## A140030.P11725666717483131697

`∩[A107006(n+1), A139662(n+1)]`
-/

namespace A140030.P11725666717483131697
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107006 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139662 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140030.P11725666717483131697

/-! ## A140030.P11418349778023598347

`∩[A139662(n+1), A139852(n+1)]`
-/

namespace A140030.P11418349778023598347
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139662 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139852 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140030.P11418349778023598347

/-! ## A140030.P11976159822854453975

`∩[A139662(n+1), A139837(n+1)]`
-/

namespace A140030.P11976159822854453975
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139662 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139837 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140030.P11976159822854453975

/-! ## A140030.P9422329842915795564

`p?[or(2, A139662(n+1))]`
-/

namespace A140030.P9422329842915795564
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 2 (A139662 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A140030.P9422329842915795564

/-! ## A140030.P17959747727261545901

`∩[A107006(n+1), A139493(n+1)]`
-/

namespace A140030.P17959747727261545901
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107006 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139493 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140030.P17959747727261545901

/-! ## A140030.P5942419064425586563

`∩[A107013(n+1), A139852(n+1)]`
-/

namespace A140030.P5942419064425586563
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107013 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139852 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140030.P5942419064425586563

/-! ## A140030.P2622479711488753747

`∩[A139852(n+1), A141177(n+1)]`
-/

namespace A140030.P2622479711488753747
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139852 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141177 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140030.P2622479711488753747

/-! ## A140030.P6104629648513966554

`∩[A139492(n+1), A139837(n+1)]`
-/

namespace A140030.P6104629648513966554
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139492 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139837 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140030.P6104629648513966554

/-! ## A140030.P18224749762439343131

`∩[A139662(n+1), A290402(n+1)]`
-/

namespace A140030.P18224749762439343131
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139662 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290402 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140030.P18224749762439343131

/-! ## A140030.P492467318106948589

`∩[A007522(n+1), A139662(n+1)]`
-/

namespace A140030.P492467318106948589
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007522 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139662 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140030.P492467318106948589

/-! ## A140030.P10487466651590733979

`∩[A045382(n+1), A139662(n+1)]`
-/

namespace A140030.P10487466651590733979
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045382 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139662 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140030.P10487466651590733979

/-! ## A140030.P5071583723234547148

`∩[A094712(n+1), A139662(n+1)]`
-/

namespace A140030.P5071583723234547148
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094712 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139662 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140030.P5071583723234547148

/-! ## A140030.P5297323214517146764

`∩[A107133(n+1), A139662(n+1)]`
-/

namespace A140030.P5297323214517146764
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107133 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139662 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140030.P5297323214517146764

/-! ## A140030.P9510617905993525478

`∩[A068229(n+1), A139662(n+1)]`
-/

namespace A140030.P9510617905993525478
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068229 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139662 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140030.P9510617905993525478

/-! ## A140030.P8318073509031196938

`∩[A139662(n+1), A332514(n+1)]`
-/

namespace A140030.P8318073509031196938
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139662 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332514 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140030.P8318073509031196938

/-! ## A140030.P9206144179564381513

`∩[A004628(n+1), A139662(n+1)]`
-/

namespace A140030.P9206144179564381513
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004628 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139662 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140030.P9206144179564381513

/-! ## A140030.P7111240172418442396

`∩[A139493(n+1), A135659(n)]`
-/

namespace A140030.P7111240172418442396
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139493 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135659 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140030.P7111240172418442396

/-! ## A140030.P1587227460071408628

`∩[A139662(n+1), A135659(n)]`
-/

namespace A140030.P1587227460071408628
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139662 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135659 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140030.P1587227460071408628

/-! ## A140030.P2056631954841015008

`∩[A038896(n+1), A139662(n+1)]`
-/

namespace A140030.P2056631954841015008
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038896 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139662 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140030.P2056631954841015008

/-! ## A140030.P412515933032592872

`∩[A002145(n+1), A139662(n+1)]`
-/

namespace A140030.P412515933032592872
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002145 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139662 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140030.P412515933032592872

/-!
# A140031: Primes of the form 7x^2+264y^2.

The programs for A140031, there is no canonical definition to state claims against.
-/

/-! ## A140031.P17068630485372258550

`∩[A139966(n+1), A140613(n+1)]`
-/

namespace A140031.P17068630485372258550
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139966 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140613 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140031.P17068630485372258550

/-! ## A140031.P16444599128136089380

`∩[A139876(n+1), A139966(n+1)]`
-/

namespace A140031.P16444599128136089380
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139876 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139966 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140031.P16444599128136089380

/-! ## A140031.P13409114843478625687

`∩[A139876(n+1), A140613(n+1)]`
-/

namespace A140031.P13409114843478625687
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139876 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140613 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140031.P13409114843478625687

/-! ## A140031.P10908681368181228875

`∩[A139828(n+1), A139876(n+1)]`
-/

namespace A140031.P10908681368181228875
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139828 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139876 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140031.P10908681368181228875

/-! ## A140031.P11102590571481530744

`∩[A139828(n+1), A139966(n+1)]`
-/

namespace A140031.P11102590571481530744
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139828 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139966 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140031.P11102590571481530744

/-! ## A140031.P4317582891249273387

`∩[A102271(n+1), A139966(n+1)]`
-/

namespace A140031.P4317582891249273387
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102271 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139966 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140031.P4317582891249273387

/-! ## A140031.P3100810715759437184

`∩[A102271(n+1), A140613(n+1)]`
-/

namespace A140031.P3100810715759437184
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102271 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140613 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140031.P3100810715759437184

/-! ## A140031.P5361020611422625437

`∩[A107006(n+1), A139966(n+1)]`
-/

namespace A140031.P5361020611422625437
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107006 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139966 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140031.P5361020611422625437

/-! ## A140031.P18358090853021224418

`∩[A107146(n+1), A139828(n+1)]`
-/

namespace A140031.P18358090853021224418
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107146 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139828 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140031.P18358090853021224418

/-! ## A140031.P8543670996998354349

`∩[A107146(n+1), A139966(n+1)]`
-/

namespace A140031.P8543670996998354349
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107146 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139966 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140031.P8543670996998354349

/-! ## A140031.P8762567499384056306

`∩[A107146(n+1), A140613(n+1)]`
-/

namespace A140031.P8762567499384056306
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107146 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140613 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140031.P8762567499384056306

/-! ## A140031.P15938818012711161356

`p?[or(2, A139966(n+1))]`
-/

namespace A140031.P15938818012711161356
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 2 (A139966 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A140031.P15938818012711161356

/-! ## A140031.P3460522292843692984

`∩[A139966(n+1), A290402(n+1)]`
-/

namespace A140031.P3460522292843692984
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139966 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290402 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140031.P3460522292843692984

/-! ## A140031.P10798777969610086036

`∩[A007522(n+1), A139966(n+1)]`
-/

namespace A140031.P10798777969610086036
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007522 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139966 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140031.P10798777969610086036

/-! ## A140031.P1980858615011158104

`∩[A045382(n+1), A139966(n+1)]`
-/

namespace A140031.P1980858615011158104
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045382 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139966 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140031.P1980858615011158104

/-! ## A140031.P16399490795741472415

`∩[A068229(n+1), A139966(n+1)]`
-/

namespace A140031.P16399490795741472415
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068229 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139966 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140031.P16399490795741472415

/-! ## A140031.P16041156202489021650

`∩[A094712(n+1), A139966(n+1)]`
-/

namespace A140031.P16041156202489021650
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094712 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139966 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140031.P16041156202489021650

/-! ## A140031.P16255863778323677941

`∩[A139828(n+1), A141191(n+1)]`
-/

namespace A140031.P16255863778323677941
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139828 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141191 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140031.P16255863778323677941

/-! ## A140031.P10685257823886295216

`∩[A139966(n+1), A141173(n+1)]`
-/

namespace A140031.P10685257823886295216
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139966 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141173 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140031.P10685257823886295216

/-! ## A140031.P3811085702788725547

`∩[A139966(n+1), A141191(n+1)]`
-/

namespace A140031.P3811085702788725547
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139966 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141191 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140031.P3811085702788725547

/-!
# A140032: Primes of the form 8x^2+231y^2.

The programs for A140032, there is no canonical definition to state claims against.
-/

/-! ## A140032.P2766881928275085626

`∩[A139878(n+1), A139963(n+1)]`
-/

namespace A140032.P2766881928275085626
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139878 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139963 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140032.P2766881928275085626

/-! ## A140032.P6630422171228137770

`∩[A139852(n+1), A139963(n+1)]`
-/

namespace A140032.P6630422171228137770
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139852 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139963 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140032.P6630422171228137770

/-! ## A140032.P5740970040364535423

`∩[A102273(n+1), A139963(n+1)]`
-/

namespace A140032.P5740970040364535423
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102273 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139963 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140032.P5740970040364535423

/-! ## A140032.P5877263288260792926

`∩[A134517(n+1), A139963(n+1)]`
-/

namespace A140032.P5877263288260792926
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134517 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139963 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140032.P5877263288260792926

/-! ## A140032.P14832245104862139604

`p?[or(4, A139963(n+1))]`
-/

namespace A140032.P14832245104862139604
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 4 (A139963 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A140032.P14832245104862139604

/-! ## A140032.P18032245459402905723

`∩[A139963(n+1), A369250(n+1)]`
-/

namespace A140032.P18032245459402905723
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139963 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369250 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140032.P18032245459402905723

/-! ## A140032.P2581300277318948134

`∩[A130063(n+1), A139963(n+1)]`
-/

namespace A140032.P2581300277318948134
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130063 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139963 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140032.P2581300277318948134

/-! ## A140032.P9882832209699823625

`∩[A139852(n+1), A141176(n+1)]`
-/

namespace A140032.P9882832209699823625
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139852 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141176 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140032.P9882832209699823625

/-! ## A140032.P1906355770696076965

`∩[A139878(n+1), A141176(n+1)]`
-/

namespace A140032.P1906355770696076965
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139878 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141176 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140032.P1906355770696076965

/-! ## A140032.P6897040581470232013

`∩[A007522(n+1), A139963(n+1)]`
-/

namespace A140032.P6897040581470232013
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007522 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139963 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140032.P6897040581470232013

/-! ## A140032.P747255141652135041

`∩[A107133(n+1), A139963(n+1)]`
-/

namespace A140032.P747255141652135041
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107133 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139963 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140032.P747255141652135041

/-! ## A140032.P405769842630108524

`∩[A068231(n+1), A139963(n+1)]`
-/

namespace A140032.P405769842630108524
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068231 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139963 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140032.P405769842630108524

/-! ## A140032.P12444287326235492326

`∩[A139963(n+1), A141187(n+1)]`
-/

namespace A140032.P12444287326235492326
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139963 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141187 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140032.P12444287326235492326

/-! ## A140032.P2470748054228574293

`∩[A102273(n+1), A141777(n+1)]`
-/

namespace A140032.P2470748054228574293
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102273 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141777 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140032.P2470748054228574293

/-! ## A140032.P13346167084647144173

`∩[A139878(n+1), A141183(n+1)]`
-/

namespace A140032.P13346167084647144173
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139878 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141183 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140032.P13346167084647144173

/-! ## A140032.P5242146357760989222

`∩[A139878(n+1), A141777(n+1)]`
-/

namespace A140032.P5242146357760989222
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139878 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141777 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140032.P5242146357760989222

/-! ## A140032.P17522174771317744935

`∩[A139963(n+1), A397410(n+1)]`
-/

namespace A140032.P17522174771317744935
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139963 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397410 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140032.P17522174771317744935

/-! ## A140032.P3586069658454529014

`∩[A139963(n+1), A332516(n+1)]`
-/

namespace A140032.P3586069658454529014
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139963 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332516 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140032.P3586069658454529014

/-! ## A140032.P6246592096950236475

`∩[A004628(n+1), A139963(n+1)]`
-/

namespace A140032.P6246592096950236475
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004628 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139963 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140032.P6246592096950236475

/-! ## A140032.P12480790883896576124

`∩[A040152(n+1), A139878(n+1)]`
-/

namespace A140032.P12480790883896576124
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040152 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139878 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140032.P12480790883896576124

/-!
# A140033: Primes of the form 8x^2+8xy+233y^2.

The programs for A140033, the canonical program `A140033.P14179916437465378445` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A140033 has offset 1).

The definition of A140033 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2500 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A140033.P7239947167602741906

`∩[A139645(n+1), A139963(n+1)]`
-/

namespace A140033.P7239947167602741906
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139645 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139963 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140033.P7239947167602741906

namespace A140033

/-- `∩[A139645(n+1), A139963(n+1)]` -/
def P7239947167602741906.Spec : Prop :=
  ∀ n, (P7239947167602741906.a n : ℤ) = A140033 (n + 1)

end A140033

/-! ## A140033.P14179916437465378445

`∩[A139645(n+1), A139827(n+1)]`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A140033

/-- `∩[A139645(n+1), A139827(n+1)]` -/
def P14179916437465378445.Spec : Prop :=
  ∀ n, (P14179916437465378445.a n : ℤ) = A140033 (n + 1)

theorem P14179916437465378445.correct : P14179916437465378445.Spec := by
  intro n
  simp only [A140033, Nat.add_sub_cancel]

end A140033

/-! ## A140033.P9798819574436279947

`∩[A107181(n+1), A139963(n+1)]`
-/

namespace A140033.P9798819574436279947
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107181 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139963 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140033.P9798819574436279947

namespace A140033

/-- `∩[A107181(n+1), A139963(n+1)]` -/
def P9798819574436279947.Spec : Prop :=
  ∀ n, (P9798819574436279947.a n : ℤ) = A140033 (n + 1)

end A140033

/-! ## A140033.P703445256336169382

`p?[and(-3, A139963(n+1))]`
-/

namespace A140033.P703445256336169382
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-3) (A139963 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A140033.P703445256336169382

namespace A140033

/-- `p?[and(-3, A139963(n+1))]` -/
def P703445256336169382.Spec : Prop :=
  ∀ n, P703445256336169382.a n = A140033 (n + 1)

end A140033

/-! ## A140033.P14899620628956854523

`∩[A139963(n+1), A332227(n+1)]`
-/

namespace A140033.P14899620628956854523
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139963 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332227 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140033.P14899620628956854523

namespace A140033

/-- `∩[A139963(n+1), A332227(n+1)]` -/
def P14899620628956854523.Spec : Prop :=
  ∀ n, (P14899620628956854523.a n : ℤ) = A140033 (n + 1)

end A140033

/-! ## A140033.P16993163445555733863

`∩[A008846(n+1), A139963(n+1)]`
-/

namespace A140033.P16993163445555733863
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008846 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139963 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140033.P16993163445555733863

namespace A140033

/-- `∩[A008846(n+1), A139963(n+1)]` -/
def P16993163445555733863.Spec : Prop :=
  ∀ n, (P16993163445555733863.a n : ℤ) = A140033 (n + 1)

end A140033

/-! ## A140033.P17362976619543273980

`∩[A139963(n+1), A242663(n+1)]`
-/

namespace A140033.P17362976619543273980
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139963 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242663 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140033.P17362976619543273980

namespace A140033

/-- `∩[A139963(n+1), A242663(n+1)]` -/
def P17362976619543273980.Spec : Prop :=
  ∀ n, (P17362976619543273980.a n : ℤ) = A140033 (n + 1)

end A140033

/-! ## A140033.P10284130646924491662

`∩[A107134(n+1), A139963(n+1)]`
-/

namespace A140033.P10284130646924491662
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107134 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139963 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140033.P10284130646924491662

namespace A140033

/-- `∩[A107134(n+1), A139963(n+1)]` -/
def P10284130646924491662.Spec : Prop :=
  ∀ n, (P10284130646924491662.a n : ℤ) = A140033 (n + 1)

end A140033

/-! ## A140033.P8363319019215930700

`∩[A007519(n+1), A139963(n+1)]`
-/

namespace A140033.P8363319019215930700
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007519 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139963 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140033.P8363319019215930700

namespace A140033

/-- `∩[A007519(n+1), A139963(n+1)]` -/
def P8363319019215930700.Spec : Prop :=
  ∀ n, (P8363319019215930700.a n : ℤ) = A140033 (n + 1)

end A140033

/-! ## A140033.P8624685026361784338

`∩[A139963(n+1), A209544(n+1)]`
-/

namespace A140033.P8624685026361784338
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139963 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209544 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140033.P8624685026361784338

namespace A140033

/-- `∩[A139963(n+1), A209544(n+1)]` -/
def P8624685026361784338.Spec : Prop :=
  ∀ n, (P8624685026361784338.a n : ℤ) = A140033 (n + 1)

end A140033

/-! ## A140033.P6457445344283866649

`∩[A139827(n+1), A274675(n+1)]`
-/

namespace A140033.P6457445344283866649
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139827 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274675 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140033.P6457445344283866649

namespace A140033

/-- `∩[A139827(n+1), A274675(n+1)]` -/
def P6457445344283866649.Spec : Prop :=
  ∀ n, (P6457445344283866649.a n : ℤ) = A140033 (n + 1)

end A140033

/-! ## A140033.P9053402852008603716

`∩[A139963(n+1), A363147(n+1)]`
-/

namespace A140033.P9053402852008603716
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139963 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363147 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140033.P9053402852008603716

namespace A140033

/-- `∩[A139963(n+1), A363147(n+1)]` -/
def P9053402852008603716.Spec : Prop :=
  ∀ n, (P9053402852008603716.a n : ℤ) = A140033 (n + 1)

end A140033

/-! ## A140033.P14659453193655641628

`∩[A139963(n+1), A290402(n+1)]`
-/

namespace A140033.P14659453193655641628
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139963 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290402 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140033.P14659453193655641628

namespace A140033

/-- `∩[A139963(n+1), A290402(n+1)]` -/
def P14659453193655641628.Spec : Prop :=
  ∀ n, (P14659453193655641628.a n : ℤ) = A140033 (n + 1)

end A140033

/-! ## A140033.P17026551096439192199

`∩[A040117(n+1), A139963(n+1)]`
-/

namespace A140033.P17026551096439192199
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040117 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139963 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140033.P17026551096439192199

namespace A140033

/-- `∩[A040117(n+1), A139963(n+1)]` -/
def P17026551096439192199.Spec : Prop :=
  ∀ n, (P17026551096439192199.a n : ℤ) = A140033 (n + 1)

end A140033

/-! ## A140033.P14777700300793551494

`∩[A139645(n+1), A141176(n+1)]`
-/

namespace A140033.P14777700300793551494
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139645 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141176 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140033.P14777700300793551494

namespace A140033

/-- `∩[A139645(n+1), A141176(n+1)]` -/
def P14777700300793551494.Spec : Prop :=
  ∀ n, (P14777700300793551494.a n : ℤ) = A140033 (n + 1)

end A140033

/-! ## A140033.P10304292080002027631

`∩[A139963(n+1), A332226(n+1)]`
-/

namespace A140033.P10304292080002027631
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139963 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332226 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140033.P10304292080002027631

namespace A140033

/-- `∩[A139963(n+1), A332226(n+1)]` -/
def P10304292080002027631.Spec : Prop :=
  ∀ n, (P10304292080002027631.a n : ℤ) = A140033 (n + 1)

end A140033

/-! ## A140033.P11975798549096895989

`∩[A004625(n+1), A139963(n+1)]`
-/

namespace A140033.P11975798549096895989
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004625 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139963 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140033.P11975798549096895989

namespace A140033

/-- `∩[A004625(n+1), A139963(n+1)]` -/
def P11975798549096895989.Spec : Prop :=
  ∀ n, (P11975798549096895989.a n : ℤ) = A140033 (n + 1)

end A140033

/-! ## A140033.P2384844985796388024

`∩[A139963(n+1), A191218(n+1)]`
-/

namespace A140033.P2384844985796388024
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139963 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191218 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140033.P2384844985796388024

namespace A140033

/-- `∩[A139963(n+1), A191218(n+1)]` -/
def P2384844985796388024.Spec : Prop :=
  ∀ n, (P2384844985796388024.a n : ℤ) = A140033 (n + 1)

end A140033

/-! ## A140033.P13004901874549919278

`∩[A096785(n+1), A139963(n+1)]`
-/

namespace A140033.P13004901874549919278
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096785 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139963 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140033.P13004901874549919278

namespace A140033

/-- `∩[A096785(n+1), A139963(n+1)]` -/
def P13004901874549919278.Spec : Prop :=
  ∀ n, (P13004901874549919278.a n : ℤ) = A140033 (n + 1)

end A140033

/-! ## A140033.P11147226226137645855

`∩[A139963(n+1), A263011(n+1)]`
-/

namespace A140033.P11147226226137645855
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139963 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263011 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140033.P11147226226137645855

namespace A140033

/-- `∩[A139963(n+1), A263011(n+1)]` -/
def P11147226226137645855.Spec : Prop :=
  ∀ n, (P11147226226137645855.a n : ℤ) = A140033 (n + 1)

end A140033

/-!
# A140034: Primes of the form 11x^2+168y^2.

The programs for A140034, there is no canonical definition to state claims against.
-/

/-! ## A140034.P1101252197210535252

`∩[A139967(n+1), A140617(n+1)]`
-/

namespace A140034.P1101252197210535252
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139967 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140617 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140034.P1101252197210535252

/-! ## A140034.P12292810823186840228

`∩[A139967(n+1), A332446(n+1)]`
-/

namespace A140034.P12292810823186840228
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139967 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332446 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140034.P12292810823186840228

/-! ## A140034.P13114843218875929960

`∩[A139967(n+1), A168539(n+1)]`
-/

namespace A140034.P13114843218875929960
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139967 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168539 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140034.P13114843218875929960

/-! ## A140034.P15771374335379203366

`∩[A107007(n+1), A139967(n+1)]`
-/

namespace A140034.P15771374335379203366
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107007 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139967 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140034.P15771374335379203366

/-! ## A140034.P10473833103353237497

`∩[A107138(n+1), A139967(n+1)]`
-/

namespace A140034.P10473833103353237497
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107138 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139967 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140034.P10473833103353237497

/-! ## A140034.P14100420927280478583

`∩[A107138(n+1), A140617(n+1)]`
-/

namespace A140034.P14100420927280478583
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107138 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140617 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140034.P14100420927280478583

/-! ## A140034.P4571391120339666390

`∩[A102273(n+1), A139967(n+1)]`
-/

namespace A140034.P4571391120339666390
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102273 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139967 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140034.P4571391120339666390

/-! ## A140034.P1462698507786137470

`∩[A107138(n+1), A139853(n+1)]`
-/

namespace A140034.P1462698507786137470
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107138 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139853 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140034.P1462698507786137470

/-! ## A140034.P7813911367136022312

`∩[A139853(n+1), A139967(n+1)]`
-/

namespace A140034.P7813911367136022312
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139853 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139967 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140034.P7813911367136022312

/-! ## A140034.P4701453131340914349

`∩[A107007(n+1), A316621(n+1)]`
-/

namespace A140034.P4701453131340914349
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107007 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316621 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140034.P4701453131340914349

/-! ## A140034.P3864496145139101240

`∩[A140617(n+1), A316621(n+1)]`
-/

namespace A140034.P3864496145139101240
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140617 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316621 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140034.P3864496145139101240

/-! ## A140034.P3711315104769725558

`∩[A168539(n+1), A316621(n+1)]`
-/

namespace A140034.P3711315104769725558
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168539 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316621 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140034.P3711315104769725558

/-! ## A140034.P5549323059887264992

`∩[A107007(n+1), A139493(n+1)]`
-/

namespace A140034.P5549323059887264992
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107007 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139493 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140034.P5549323059887264992

/-! ## A140034.P2854099400898910372

`∩[A139493(n+1), A140617(n+1)]`
-/

namespace A140034.P2854099400898910372
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139493 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140617 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140034.P2854099400898910372

/-! ## A140034.P12210227655736870715

`∩[A139493(n+1), A168539(n+1)]`
-/

namespace A140034.P12210227655736870715
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139493 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168539 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140034.P12210227655736870715

/-! ## A140034.P16370745202536785573

`∩[A102273(n+1), A141776(n+1)]`
-/

namespace A140034.P16370745202536785573
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102273 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141776 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140034.P16370745202536785573

/-! ## A140034.P10605123204462774666

`∩[A139967(n+1), A141776(n+1)]`
-/

namespace A140034.P10605123204462774666
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139967 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141776 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140034.P10605123204462774666

/-! ## A140034.P7738854756057441927

`∩[A140617(n+1), A141776(n+1)]`
-/

namespace A140034.P7738854756057441927
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140617 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141776 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140034.P7738854756057441927

/-! ## A140034.P13188184505265851888

`∩[A107138(n+1), A141190(n+1)]`
-/

namespace A140034.P13188184505265851888
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107138 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141190 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140034.P13188184505265851888

/-! ## A140034.P9890306442948036833

`∩[A139967(n+1), A141190(n+1)]`
-/

namespace A140034.P9890306442948036833
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139967 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141190 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140034.P9890306442948036833

/-!
# A140035: Primes of the form 12x^2+12xy+157y^2.

The programs for A140035, there is no canonical definition to state claims against.
-/

/-! ## A140035.P5987012694889420655

`A139964(record[(n+1)/A139964(n+2)%4]+1)`
-/

namespace A140035.P5987012694889420655
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (Int.tmod (A139964 (n + 2)) 4 : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139964 (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 1)).toNat

end

end A140035.P5987012694889420655

/-! ## A140035.P3565663522971861496

`∩[A139880(n+1), A139964(n+1)]`
-/

namespace A140035.P3565663522971861496
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139880 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139964 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140035.P3565663522971861496

/-! ## A140035.P8043590376110998262

`∩[A033222(n+1), A139880(n+1)]`
-/

namespace A140035.P8043590376110998262
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033222 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139880 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140035.P8043590376110998262

/-! ## A140035.P10638065623920565416

`∩[A033222(n+1), A139964(n+1)]`
-/

namespace A140035.P10638065623920565416
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033222 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139964 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140035.P10638065623920565416

/-! ## A140035.P16362772001213890486

`∩[A139530(n+1), A139964(n+1)]`
-/

namespace A140035.P16362772001213890486
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139530 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139964 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140035.P16362772001213890486

/-! ## A140035.P16291146291742672452

`∩[A033222(n+1), A107146(n+1)]`
-/

namespace A140035.P16291146291742672452
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033222 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107146 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140035.P16291146291742672452

/-! ## A140035.P2111574871039669338

`∩[A107146(n+1), A139964(n+1)]`
-/

namespace A140035.P2111574871039669338
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107146 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139964 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140035.P2111574871039669338

/-! ## A140035.P13215703582860886668

`∩[A008846(n+1), A139964(n+1)]`
-/

namespace A140035.P13215703582860886668
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008846 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139964 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140035.P13215703582860886668

/-! ## A140035.P13091787475438555280

`∩[A107013(n+1), A139880(n+1)]`
-/

namespace A140035.P13091787475438555280
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107013 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139880 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140035.P13091787475438555280

/-! ## A140035.P18218417344920011757

`∩[A139880(n+1), A141177(n+1)]`
-/

namespace A140035.P18218417344920011757
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139880 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141177 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140035.P18218417344920011757

/-! ## A140035.P13932092781658972223

`∩[A107146(n+1), A141182(n+1)]`
-/

namespace A140035.P13932092781658972223
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107146 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141182 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140035.P13932092781658972223

/-! ## A140035.P6154259687259415962

`∩[A139880(n+1), A141182(n+1)]`
-/

namespace A140035.P6154259687259415962
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139880 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141182 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140035.P6154259687259415962

/-! ## A140035.P9061479767027030240

`∩[A139964(n+1), A141182(n+1)]`
-/

namespace A140035.P9061479767027030240
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139964 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141182 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140035.P9061479767027030240

/-! ## A140035.P2186928455400206465

`∩[A068228(n+1), A139964(n+1)]`
-/

namespace A140035.P2186928455400206465
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068228 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139964 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140035.P2186928455400206465

/-! ## A140035.P3088129970046304399

`∩[A007521(n+1), A139964(n+1)]`
-/

namespace A140035.P3088129970046304399
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007521 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139964 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140035.P3088129970046304399

/-! ## A140035.P160093210074935539

`∩[A045366(n+1), A139964(n+1)]`
-/

namespace A140035.P160093210074935539
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045366 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139964 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140035.P160093210074935539

/-! ## A140035.P3105830161903504

`∩[A033222(n+1), A141191(n+1)]`
-/

namespace A140035.P3105830161903504
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033222 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141191 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140035.P3105830161903504

/-! ## A140035.P10139175050916324410

`∩[A139964(n+1), A141191(n+1)]`
-/

namespace A140035.P10139175050916324410
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139964 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141191 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140035.P10139175050916324410

/-! ## A140035.P15079166672049029079

`∩[A033222(n+1), A106915(n+1)]`
-/

namespace A140035.P15079166672049029079
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033222 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106915 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140035.P15079166672049029079

/-! ## A140035.P2286232268813537956

`∩[A139964(n+1), A351537(n+1)]`
-/

namespace A140035.P2286232268813537956
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139964 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351537 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140035.P2286232268813537956

/-!
# A140036: Primes of the form 21x^2+88y^2.

The programs for A140036, the canonical program `A140036.P16395373774773885940` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A140036 has offset 1).

The definition of A140036 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2537 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A140036.P7610767755201185585

`∩[A139969(n+1), A140615(n+1)]`
-/

namespace A140036.P7610767755201185585
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139969 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140615 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140036.P7610767755201185585

namespace A140036

/-- `∩[A139969(n+1), A140615(n+1)]` -/
def P7610767755201185585.Spec : Prop :=
  ∀ n, (P7610767755201185585.a n : ℤ) = A140036 (n + 1)

end A140036

/-! ## A140036.P738104418135736455

`∩[A033215(n+1), A139969(n+1)]`
-/

namespace A140036.P738104418135736455
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033215 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139969 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140036.P738104418135736455

namespace A140036

/-- `∩[A033215(n+1), A139969(n+1)]` -/
def P738104418135736455.Spec : Prop :=
  ∀ n, (P738104418135736455.a n : ℤ) = A140036 (n + 1)

end A140036

/-! ## A140036.P1609646389224805473

`∩[A033215(n+1), A140615(n+1)]`
-/

namespace A140036.P1609646389224805473
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033215 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140615 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140036.P1609646389224805473

namespace A140036

/-- `∩[A033215(n+1), A140615(n+1)]` -/
def P1609646389224805473.Spec : Prop :=
  ∀ n, (P1609646389224805473.a n : ℤ) = A140036 (n + 1)

end A140036

/-! ## A140036.P5470597776483903587

`∩[A139851(n+1), A139969(n+1)]`
-/

namespace A140036.P5470597776483903587
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139851 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139969 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140036.P5470597776483903587

namespace A140036

/-- `∩[A139851(n+1), A139969(n+1)]` -/
def P5470597776483903587.Spec : Prop :=
  ∀ n, (P5470597776483903587.a n : ℤ) = A140036 (n + 1)

end A140036

/-! ## A140036.P16395373774773885940

`∩[A139851(n+1), A140615(n+1)]`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A140036

/-- `∩[A139851(n+1), A140615(n+1)]` -/
def P16395373774773885940.Spec : Prop :=
  ∀ n, (P16395373774773885940.a n : ℤ) = A140036 (n + 1)

theorem P16395373774773885940.correct : P16395373774773885940.Spec := by
  intro n
  simp only [A140036, Nat.add_sub_cancel]

end A140036

/-! ## A140036.P15171350885371803848

`∩[A139530(n+1), A139969(n+1)]`
-/

namespace A140036.P15171350885371803848
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139530 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139969 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140036.P15171350885371803848

namespace A140036

/-- `∩[A139530(n+1), A139969(n+1)]` -/
def P15171350885371803848.Spec : Prop :=
  ∀ n, (P15171350885371803848.a n : ℤ) = A140036 (n + 1)

end A140036

/-! ## A140036.P18105788982578986566

`∩[A033215(n+1), A139838(n+1)]`
-/

namespace A140036.P18105788982578986566
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033215 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139838 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140036.P18105788982578986566

namespace A140036

/-- `∩[A033215(n+1), A139838(n+1)]` -/
def P18105788982578986566.Spec : Prop :=
  ∀ n, (P18105788982578986566.a n : ℤ) = A140036 (n + 1)

end A140036

/-! ## A140036.P13036511513319460087

`∩[A139838(n+1), A139969(n+1)]`
-/

namespace A140036.P13036511513319460087
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139838 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139969 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140036.P13036511513319460087

namespace A140036

/-- `∩[A139838(n+1), A139969(n+1)]` -/
def P13036511513319460087.Spec : Prop :=
  ∀ n, (P13036511513319460087.a n : ℤ) = A140036 (n + 1)

end A140036

/-! ## A140036.P10461131267255450733

`∩[A008846(n+1), A139969(n+1)]`
-/

namespace A140036.P10461131267255450733
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008846 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139969 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140036.P10461131267255450733

namespace A140036

/-- `∩[A008846(n+1), A139969(n+1)]` -/
def P10461131267255450733.Spec : Prop :=
  ∀ n, (P10461131267255450733.a n : ℤ) = A140036 (n + 1)

end A140036

/-! ## A140036.P5631695295161624100

`∩[A107134(n+1), A139969(n+1)]`
-/

namespace A140036.P5631695295161624100
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107134 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139969 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140036.P5631695295161624100

namespace A140036

/-- `∩[A107134(n+1), A139969(n+1)]` -/
def P5631695295161624100.Spec : Prop :=
  ∀ n, (P5631695295161624100.a n : ℤ) = A140036 (n + 1)

end A140036

/-! ## A140036.P3854451993920840616

`∩[A107134(n+1), A140615(n+1)]`
-/

namespace A140036.P3854451993920840616
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107134 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140615 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140036.P3854451993920840616

namespace A140036

/-- `∩[A107134(n+1), A140615(n+1)]` -/
def P3854451993920840616.Spec : Prop :=
  ∀ n, (P3854451993920840616.a n : ℤ) = A140036 (n + 1)

end A140036

/-! ## A140036.P4349956125078704355

`∩[A139969(n+1), A141172(n+1)]`
-/

namespace A140036.P4349956125078704355
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139969 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141172 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140036.P4349956125078704355

namespace A140036

/-- `∩[A139969(n+1), A141172(n+1)]` -/
def P4349956125078704355.Spec : Prop :=
  ∀ n, (P4349956125078704355.a n : ℤ) = A140036 (n + 1)

end A140036

/-! ## A140036.P8510422606221607415

`∩[A140615(n+1), A141172(n+1)]`
-/

namespace A140036.P8510422606221607415
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140615 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141172 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140036.P8510422606221607415

namespace A140036

/-- `∩[A140615(n+1), A141172(n+1)]` -/
def P8510422606221607415.Spec : Prop :=
  ∀ n, (P8510422606221607415.a n : ℤ) = A140036 (n + 1)

end A140036

/-! ## A140036.P10412482379166486917

`∩[A068228(n+1), A139969(n+1)]`
-/

namespace A140036.P10412482379166486917
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068228 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139969 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140036.P10412482379166486917

namespace A140036

/-- `∩[A068228(n+1), A139969(n+1)]` -/
def P10412482379166486917.Spec : Prop :=
  ∀ n, (P10412482379166486917.a n : ℤ) = A140036 (n + 1)

end A140036

/-! ## A140036.P695198304073587738

`∩[A139492(n+1), A139838(n+1)]`
-/

namespace A140036.P695198304073587738
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139492 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139838 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140036.P695198304073587738

namespace A140036

/-- `∩[A139492(n+1), A139838(n+1)]` -/
def P695198304073587738.Spec : Prop :=
  ∀ n, (P695198304073587738.a n : ℤ) = A140036 (n + 1)

end A140036

/-! ## A140036.P6627689803624479201

`∩[A139492(n+1), A140615(n+1)]`
-/

namespace A140036.P6627689803624479201
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139492 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140615 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140036.P6627689803624479201

namespace A140036

/-- `∩[A139492(n+1), A140615(n+1)]` -/
def P6627689803624479201.Spec : Prop :=
  ∀ n, (P6627689803624479201.a n : ℤ) = A140036 (n + 1)

end A140036

/-! ## A140036.P16297908299735241946

`∩[A007521(n+1), A139969(n+1)]`
-/

namespace A140036.P16297908299735241946
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007521 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139969 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140036.P16297908299735241946

namespace A140036

/-- `∩[A007521(n+1), A139969(n+1)]` -/
def P16297908299735241946.Spec : Prop :=
  ∀ n, (P16297908299735241946.a n : ℤ) = A140036 (n + 1)

end A140036

/-! ## A140036.P8135407915473816296

`∩[A045366(n+1), A139969(n+1)]`
-/

namespace A140036.P8135407915473816296
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045366 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139969 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140036.P8135407915473816296

namespace A140036

/-- `∩[A045366(n+1), A139969(n+1)]` -/
def P8135407915473816296.Spec : Prop :=
  ∀ n, (P8135407915473816296.a n : ℤ) = A140036 (n + 1)

end A140036

/-! ## A140036.P17717161356519083904

`∩[A033215(n+1), A141777(n+1)]`
-/

namespace A140036.P17717161356519083904
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033215 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141777 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140036.P17717161356519083904

namespace A140036

/-- `∩[A033215(n+1), A141777(n+1)]` -/
def P17717161356519083904.Spec : Prop :=
  ∀ n, (P17717161356519083904.a n : ℤ) = A140036 (n + 1)

end A140036

/-! ## A140036.P18132427125583070132

`∩[A139969(n+1), A141777(n+1)]`
-/

namespace A140036.P18132427125583070132
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139969 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141777 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140036.P18132427125583070132

namespace A140036

/-- `∩[A139969(n+1), A141777(n+1)]` -/
def P18132427125583070132.Spec : Prop :=
  ∀ n, (P18132427125583070132.a n : ℤ) = A140036 (n + 1)

end A140036

/-!
# A140037: Primes of the form 24x^2+77y^2.

The programs for A140037, the canonical program `A140037.P5522360126373441203` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A140037 has offset 1).

The definition of A140037 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2492 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A140037.P9224450597606519296

`∩[A139965(n+1), A140616(n+1)]`
-/

namespace A140037.P9224450597606519296
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139965 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140616 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140037.P9224450597606519296

namespace A140037

/-- `∩[A139965(n+1), A140616(n+1)]` -/
def P9224450597606519296.Spec : Prop :=
  ∀ n, (P9224450597606519296.a n : ℤ) = A140037 (n + 1)

end A140037

/-! ## A140037.P10590894909091812601

`∩[A107003(n+1), A139965(n+1)]`
-/

namespace A140037.P10590894909091812601
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107003 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139965 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140037.P10590894909091812601

namespace A140037

/-- `∩[A107003(n+1), A139965(n+1)]` -/
def P10590894909091812601.Spec : Prop :=
  ∀ n, (P10590894909091812601.a n : ℤ) = A140037 (n + 1)

end A140037

/-! ## A140037.P7997991029960358797

`∩[A139827(n+1), A139965(n+1)]`
-/

namespace A140037.P7997991029960358797
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139827 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139965 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140037.P7997991029960358797

namespace A140037

/-- `∩[A139827(n+1), A139965(n+1)]` -/
def P7997991029960358797.Spec : Prop :=
  ∀ n, (P7997991029960358797.a n : ℤ) = A140037 (n + 1)

end A140037

/-! ## A140037.P5522360126373441203

`∩[A139827(n+1), A140616(n+1)]`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A140037

/-- `∩[A139827(n+1), A140616(n+1)]` -/
def P5522360126373441203.Spec : Prop :=
  ∀ n, (P5522360126373441203.a n : ℤ) = A140037 (n + 1)

theorem P5522360126373441203.correct : P5522360126373441203.Spec := by
  intro n
  simp only [A140037, Nat.add_sub_cancel]

end A140037

/-! ## A140037.P10385984302377683800

`∩[A106972(n+1), A139838(n+1)]`
-/

namespace A140037.P10385984302377683800
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106972 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139838 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140037.P10385984302377683800

namespace A140037

/-- `∩[A106972(n+1), A139838(n+1)]` -/
def P10385984302377683800.Spec : Prop :=
  ∀ n, (P10385984302377683800.a n : ℤ) = A140037 (n + 1)

end A140037

/-! ## A140037.P5820742548120571104

`∩[A106972(n+1), A139965(n+1)]`
-/

namespace A140037.P5820742548120571104
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106972 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139965 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140037.P5820742548120571104

namespace A140037

/-- `∩[A106972(n+1), A139965(n+1)]` -/
def P5820742548120571104.Spec : Prop :=
  ∀ n, (P5820742548120571104.a n : ℤ) = A140037 (n + 1)

end A140037

/-! ## A140037.P12754042847918635012

`∩[A139838(n+1), A139965(n+1)]`
-/

namespace A140037.P12754042847918635012
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139838 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139965 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140037.P12754042847918635012

namespace A140037

/-- `∩[A139838(n+1), A139965(n+1)]` -/
def P12754042847918635012.Spec : Prop :=
  ∀ n, (P12754042847918635012.a n : ℤ) = A140037 (n + 1)

end A140037

/-! ## A140037.P15129880277091888625

`∩[A139838(n+1), A140616(n+1)]`
-/

namespace A140037.P15129880277091888625
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139838 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140616 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140037.P15129880277091888625

namespace A140037

/-- `∩[A139838(n+1), A140616(n+1)]` -/
def P15129880277091888625.Spec : Prop :=
  ∀ n, (P15129880277091888625.a n : ℤ) = A140037 (n + 1)

end A140037

/-! ## A140037.P15151108211300531293

`p?[or(4, A139965(n+1))]`
-/

namespace A140037.P15151108211300531293
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 4 (A139965 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A140037.P15151108211300531293

namespace A140037

/-- `p?[or(4, A139965(n+1))]` -/
def P15151108211300531293.Spec : Prop :=
  ∀ n, P15151108211300531293.a n = A140037 (n + 1)

end A140037

/-! ## A140037.P2346887339803702453

`∩[A008846(n+1), A139965(n+1)]`
-/

namespace A140037.P2346887339803702453
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008846 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139965 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140037.P2346887339803702453

namespace A140037

/-- `∩[A008846(n+1), A139965(n+1)]` -/
def P2346887339803702453.Spec : Prop :=
  ∀ n, (P2346887339803702453.a n : ℤ) = A140037 (n + 1)

end A140037

/-! ## A140037.P3400925498033745343

`∩[A139965(n+1), A354084(n+1)]`
-/

namespace A140037.P3400925498033745343
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139965 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354084 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140037.P3400925498033745343

namespace A140037

/-- `∩[A139965(n+1), A354084(n+1)]` -/
def P3400925498033745343.Spec : Prop :=
  ∀ n, (P3400925498033745343.a n : ℤ) = A140037 (n + 1)

end A140037

/-! ## A140037.P3683612828053702012

`∩[A007521(n+1), A139965(n+1)]`
-/

namespace A140037.P3683612828053702012
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007521 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139965 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140037.P3683612828053702012

namespace A140037

/-- `∩[A007521(n+1), A139965(n+1)]` -/
def P3683612828053702012.Spec : Prop :=
  ∀ n, (P3683612828053702012.a n : ℤ) = A140037 (n + 1)

end A140037

/-! ## A140037.P7769649454069975150

`∩[A040117(n+1), A139965(n+1)]`
-/

namespace A140037.P7769649454069975150
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040117 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139965 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140037.P7769649454069975150

namespace A140037

/-- `∩[A040117(n+1), A139965(n+1)]` -/
def P7769649454069975150.Spec : Prop :=
  ∀ n, (P7769649454069975150.a n : ℤ) = A140037 (n + 1)

end A140037

/-! ## A140037.P10893043927626833258

`∩[A045366(n+1), A139965(n+1)]`
-/

namespace A140037.P10893043927626833258
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045366 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139965 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140037.P10893043927626833258

namespace A140037

/-- `∩[A045366(n+1), A139965(n+1)]` -/
def P10893043927626833258.Spec : Prop :=
  ∀ n, (P10893043927626833258.a n : ℤ) = A140037 (n + 1)

end A140037

/-! ## A140037.P15436502244044577194

`∩[A140616(n+1), A141176(n+1)]`
-/

namespace A140037.P15436502244044577194
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140616 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141176 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140037.P15436502244044577194

namespace A140037

/-- `∩[A140616(n+1), A141176(n+1)]` -/
def P15436502244044577194.Spec : Prop :=
  ∀ n, (P15436502244044577194.a n : ℤ) = A140037 (n + 1)

end A140037

/-! ## A140037.P15494423688733218488

`∩[A139965(n+1), A243183(n+1)]`
-/

namespace A140037.P15494423688733218488
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139965 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243183 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140037.P15494423688733218488

namespace A140037

/-- `∩[A139965(n+1), A243183(n+1)]` -/
def P15494423688733218488.Spec : Prop :=
  ∀ n, (P15494423688733218488.a n : ℤ) = A140037 (n + 1)

end A140037

/-! ## A140037.P10275656319115839721

`∩[A139965(n+1), A141171(n+1)]`
-/

namespace A140037.P10275656319115839721
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139965 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141171 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140037.P10275656319115839721

namespace A140037

/-- `∩[A139965(n+1), A141171(n+1)]` -/
def P10275656319115839721.Spec : Prop :=
  ∀ n, (P10275656319115839721.a n : ℤ) = A140037 (n + 1)

end A140037

/-! ## A140037.P2958422179020225242

`∩[A106972(n+1), A141777(n+1)]`
-/

namespace A140037.P2958422179020225242
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106972 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141777 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140037.P2958422179020225242

namespace A140037

/-- `∩[A106972(n+1), A141777(n+1)]` -/
def P2958422179020225242.Spec : Prop :=
  ∀ n, (P2958422179020225242.a n : ℤ) = A140037 (n + 1)

end A140037

/-! ## A140037.P8166497846278040419

`∩[A139838(n+1), A141160(n+1)]`
-/

namespace A140037.P8166497846278040419
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139838 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141160 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140037.P8166497846278040419

namespace A140037

/-- `∩[A139838(n+1), A141160(n+1)]` -/
def P8166497846278040419.Spec : Prop :=
  ∀ n, (P8166497846278040419.a n : ℤ) = A140037 (n + 1)

end A140037

/-! ## A140037.P5235213785511499983

`∩[A139827(n+1), A141191(n+1)]`
-/

namespace A140037.P5235213785511499983
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139827 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141191 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140037.P5235213785511499983

namespace A140037

/-- `∩[A139827(n+1), A141191(n+1)]` -/
def P5235213785511499983.Spec : Prop :=
  ∀ n, (P5235213785511499983.a n : ℤ) = A140037 (n + 1)

end A140037

/-!
# A140038: Primes of the form 24x^2+24xy+83y^2.

The programs for A140038, the canonical program `A140038.P13603714832296326735` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A140038 has offset 1).

The definition of A140038 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2523 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A140038.P9577864119191576659

`∩[A139874(n+1), A139965(n+1)]`
-/

namespace A140038.P9577864119191576659
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139874 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139965 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140038.P9577864119191576659

namespace A140038

/-- `∩[A139874(n+1), A139965(n+1)]` -/
def P9577864119191576659.Spec : Prop :=
  ∀ n, (P9577864119191576659.a n : ℤ) = A140038 (n + 1)

end A140038

/-! ## A140038.P6810728662941441316

`∩[A139965(n+1), A332446(n+1)]`
-/

namespace A140038.P6810728662941441316
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139965 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332446 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140038.P6810728662941441316

namespace A140038

/-- `∩[A139965(n+1), A332446(n+1)]` -/
def P6810728662941441316.Spec : Prop :=
  ∀ n, (P6810728662941441316.a n : ℤ) = A140038 (n + 1)

end A140038

/-! ## A140038.P3923368692178265761

`∩[A107007(n+1), A139965(n+1)]`
-/

namespace A140038.P3923368692178265761
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107007 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139965 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140038.P3923368692178265761

namespace A140038

/-- `∩[A107007(n+1), A139965(n+1)]` -/
def P3923368692178265761.Spec : Prop :=
  ∀ n, (P3923368692178265761.a n : ℤ) = A140038 (n + 1)

end A140038

/-! ## A140038.P9519919214646749634

`∩[A139965(n+1), A168539(n+1)]`
-/

namespace A140038.P9519919214646749634
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139965 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168539 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140038.P9519919214646749634

namespace A140038

/-- `∩[A139965(n+1), A168539(n+1)]` -/
def P9519919214646749634.Spec : Prop :=
  ∀ n, (P9519919214646749634.a n : ℤ) = A140038 (n + 1)

end A140038

/-! ## A140038.P14770366628583907438

`∩[A107147(n+1), A139965(n+1)]`
-/

namespace A140038.P14770366628583907438
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107147 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139965 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140038.P14770366628583907438

namespace A140038

/-- `∩[A107147(n+1), A139965(n+1)]` -/
def P14770366628583907438.Spec : Prop :=
  ∀ n, (P14770366628583907438.a n : ℤ) = A140038 (n + 1)

end A140038

/-! ## A140038.P3338761508675279216

`∩[A107147(n+1), A107201(n+1)]`
-/

namespace A140038.P3338761508675279216
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107147 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107201 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140038.P3338761508675279216

namespace A140038

/-- `∩[A107147(n+1), A107201(n+1)]` -/
def P3338761508675279216.Spec : Prop :=
  ∀ n, (P3338761508675279216.a n : ℤ) = A140038 (n + 1)

end A140038

/-! ## A140038.P13603714832296326735

`∩[A107201(n+1), A139874(n+1)]`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A140038

/-- `∩[A107201(n+1), A139874(n+1)]` -/
def P13603714832296326735.Spec : Prop :=
  ∀ n, (P13603714832296326735.a n : ℤ) = A140038 (n + 1)

theorem P13603714832296326735.correct : P13603714832296326735.Spec := by
  intro n
  simp only [A140038, Nat.add_sub_cancel]

end A140038

/-! ## A140038.P11459091140362737561

`∩[A107201(n+1), A139965(n+1)]`
-/

namespace A140038.P11459091140362737561
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107201 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139965 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140038.P11459091140362737561

namespace A140038

/-- `∩[A107201(n+1), A139965(n+1)]` -/
def P11459091140362737561.Spec : Prop :=
  ∀ n, (P11459091140362737561.a n : ℤ) = A140038 (n + 1)

end A140038

/-! ## A140038.P8402580628462195384

`∩[A106949(n+1), A139965(n+1)]`
-/

namespace A140038.P8402580628462195384
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106949 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139965 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140038.P8402580628462195384

namespace A140038

/-- `∩[A106949(n+1), A139965(n+1)]` -/
def P8402580628462195384.Spec : Prop :=
  ∀ n, (P8402580628462195384.a n : ℤ) = A140038 (n + 1)

end A140038

/-! ## A140038.P6941489461406322755

`∩[A139874(n+1), A141176(n+1)]`
-/

namespace A140038.P6941489461406322755
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139874 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141176 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140038.P6941489461406322755

namespace A140038

/-- `∩[A139874(n+1), A141176(n+1)]` -/
def P6941489461406322755.Spec : Prop :=
  ∀ n, (P6941489461406322755.a n : ℤ) = A140038 (n + 1)

end A140038

/-! ## A140038.P9800361923114030622

`∩[A068231(n+1), A139965(n+1)]`
-/

namespace A140038.P9800361923114030622
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068231 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139965 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140038.P9800361923114030622

namespace A140038

/-- `∩[A068231(n+1), A139965(n+1)]` -/
def P9800361923114030622.Spec : Prop :=
  ∀ n, (P9800361923114030622.a n : ℤ) = A140038 (n + 1)

end A140038

/-! ## A140038.P7137914173356046983

`∩[A139965(n+1), A141123(n+1)]`
-/

namespace A140038.P7137914173356046983
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139965 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141123 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140038.P7137914173356046983

namespace A140038

/-- `∩[A139965(n+1), A141123(n+1)]` -/
def P7137914173356046983.Spec : Prop :=
  ∀ n, (P7137914173356046983.a n : ℤ) = A140038 (n + 1)

end A140038

/-! ## A140038.P128364091710063141

`∩[A139965(n+1), A141187(n+1)]`
-/

namespace A140038.P128364091710063141
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139965 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141187 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140038.P128364091710063141

namespace A140038

/-- `∩[A139965(n+1), A141187(n+1)]` -/
def P128364091710063141.Spec : Prop :=
  ∀ n, (P128364091710063141.a n : ℤ) = A140038 (n + 1)

end A140038

/-! ## A140038.P2023236353712138912

`∩[A007520(n+1), A139965(n+1)]`
-/

namespace A140038.P2023236353712138912
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007520 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139965 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140038.P2023236353712138912

namespace A140038

/-- `∩[A007520(n+1), A139965(n+1)]` -/
def P2023236353712138912.Spec : Prop :=
  ∀ n, (P2023236353712138912.a n : ℤ) = A140038 (n + 1)

end A140038

/-! ## A140038.P4840226161313496596

`∩[A045339(n+1), A139965(n+1)]`
-/

namespace A140038.P4840226161313496596
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045339 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139965 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140038.P4840226161313496596

namespace A140038

/-- `∩[A045339(n+1), A139965(n+1)]` -/
def P4840226161313496596.Spec : Prop :=
  ∀ n, (P4840226161313496596.a n : ℤ) = A140038 (n + 1)

end A140038

/-! ## A140038.P14584475500993132230

`∩[A107147(n+1), A141183(n+1)]`
-/

namespace A140038.P14584475500993132230
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107147 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141183 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140038.P14584475500993132230

namespace A140038

/-- `∩[A107147(n+1), A141183(n+1)]` -/
def P14584475500993132230.Spec : Prop :=
  ∀ n, (P14584475500993132230.a n : ℤ) = A140038 (n + 1)

end A140038

/-! ## A140038.P12009243335904509880

`∩[A107201(n+1), A141160(n+1)]`
-/

namespace A140038.P12009243335904509880
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107201 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141160 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140038.P12009243335904509880

namespace A140038

/-- `∩[A107201(n+1), A141160(n+1)]` -/
def P12009243335904509880.Spec : Prop :=
  ∀ n, (P12009243335904509880.a n : ℤ) = A140038 (n + 1)

end A140038

/-! ## A140038.P8539338428938388518

`∩[A139874(n+1), A141183(n+1)]`
-/

namespace A140038.P8539338428938388518
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139874 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141183 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140038.P8539338428938388518

namespace A140038

/-- `∩[A139874(n+1), A141183(n+1)]` -/
def P8539338428938388518.Spec : Prop :=
  ∀ n, (P8539338428938388518.a n : ℤ) = A140038 (n + 1)

end A140038

/-! ## A140038.P17209900378638810437

`∩[A139965(n+1), A141173(n+1)]`
-/

namespace A140038.P17209900378638810437
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139965 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141173 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140038.P17209900378638810437

namespace A140038

/-- `∩[A139965(n+1), A141173(n+1)]` -/
def P17209900378638810437.Spec : Prop :=
  ∀ n, (P17209900378638810437.a n : ℤ) = A140038 (n + 1)

end A140038

/-! ## A140038.P7667525479032402394

`∩[A139965(n+1), A141183(n+1)]`
-/

namespace A140038.P7667525479032402394
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139965 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141183 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140038.P7667525479032402394

namespace A140038

/-- `∩[A139965(n+1), A141183(n+1)]` -/
def P7667525479032402394.Spec : Prop :=
  ∀ n, (P7667525479032402394.a n : ℤ) = A140038 (n + 1)

end A140038

/-!
# A140039: Primes of the form 28x^2+28xy+73y^2.

The programs for A140039, there is no canonical definition to state claims against.
-/

/-! ## A140039.P9838788275073110078

`∩[A107008(n+1), A139966(n+1)]`
-/

namespace A140039.P9838788275073110078
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107008 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139966 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140039.P9838788275073110078

/-! ## A140039.P11164264241232480949

`∩[A139966(n+1), A332227(n+1)]`
-/

namespace A140039.P11164264241232480949
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139966 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332227 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140039.P11164264241232480949

/-! ## A140039.P5099749129727250218

`∩[A008846(n+1), A139966(n+1)]`
-/

namespace A140039.P5099749129727250218
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008846 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139966 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140039.P5099749129727250218

/-! ## A140039.P5133435758669253309

`∩[A139966(n+1), A242663(n+1)]`
-/

namespace A140039.P5133435758669253309
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139966 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242663 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140039.P5133435758669253309

/-! ## A140039.P1079730645409757673

`∩[A007519(n+1), A139966(n+1)]`
-/

namespace A140039.P1079730645409757673
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007519 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139966 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140039.P1079730645409757673

/-! ## A140039.P2605492684657854679

`∩[A045390(n+1), A139966(n+1)]`
-/

namespace A140039.P2605492684657854679
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045390 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139966 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140039.P2605492684657854679

/-! ## A140039.P13730134090788842906

`∩[A139966(n+1), A209544(n+1)]`
-/

namespace A140039.P13730134090788842906
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139966 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209544 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140039.P13730134090788842906

/-! ## A140039.P13136642126372007099

`∩[A068228(n+1), A139966(n+1)]`
-/

namespace A140039.P13136642126372007099
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068228 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139966 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140039.P13136642126372007099

/-! ## A140039.P18168397995234272692

`∩[A139966(n+1), A354084(n+1)]`
-/

namespace A140039.P18168397995234272692
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139966 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354084 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140039.P18168397995234272692

/-! ## A140039.P12544052814689919486

`∩[A106950(n+1), A139966(n+1)]`
-/

namespace A140039.P12544052814689919486
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106950 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139966 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140039.P12544052814689919486

/-! ## A140039.P8939114773769116015

`∩[A130063(n+1), A139966(n+1)]`
-/

namespace A140039.P8939114773769116015
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130063 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139966 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140039.P8939114773769116015

/-! ## A140039.P4246331695605736810

`∩[A139966(n+1), A141170(n+1)]`
-/

namespace A140039.P4246331695605736810
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139966 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141170 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140039.P4246331695605736810

/-! ## A140039.P15500804782760655961

`∩[A139966(n+1), A332226(n+1)]`
-/

namespace A140039.P15500804782760655961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139966 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332226 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140039.P15500804782760655961

/-! ## A140039.P15746762847737907392

`∩[A004625(n+1), A139966(n+1)]`
-/

namespace A140039.P15746762847737907392
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004625 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139966 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140039.P15746762847737907392

/-! ## A140039.P939352755179074046

`∩[A139966(n+1), A351537(n+1)]`
-/

namespace A140039.P939352755179074046
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139966 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351537 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140039.P939352755179074046

/-! ## A140039.P2127976755204612214

`∩[A139966(n+1), A354467(n+1)]`
-/

namespace A140039.P2127976755204612214
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139966 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354467 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140039.P2127976755204612214

/-! ## A140039.P595601863082273091

`∩[A139966(n+1), A191218(n+1)]`
-/

namespace A140039.P595601863082273091
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139966 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191218 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140039.P595601863082273091

/-! ## A140039.P3615218909727570354

`∩[A139966(n+1), A263011(n+1)]`
-/

namespace A140039.P3615218909727570354
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139966 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263011 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140039.P3615218909727570354

/-! ## A140039.P18225585272860773300

`∩[A139966(n+1), A103214(n)]`
-/

namespace A140039.P18225585272860773300
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139966 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103214 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140039.P18225585272860773300

/-! ## A140039.P7482362537384727422

`∩[A097934(n+1), A139966(n+1)]`
-/

namespace A140039.P7482362537384727422
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097934 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139966 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140039.P7482362537384727422

/-!
# A140040: Primes of the form 33x^2+56y^2.

The programs for A140040, there is no canonical definition to state claims against.
-/

/-! ## A140040.P8409374748762357403

`∩[A139879(n+1), A139968(n+1)]`
-/

namespace A140040.P8409374748762357403
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139879 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139968 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140040.P8409374748762357403

/-! ## A140040.P16343873696485643285

`∩[A107202(n+1), A139879(n+1)]`
-/

namespace A140040.P16343873696485643285
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107202 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139879 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140040.P16343873696485643285

/-! ## A140040.P4850248385262389463

`∩[A107202(n+1), A139968(n+1)]`
-/

namespace A140040.P4850248385262389463
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107202 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139968 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140040.P4850248385262389463

/-! ## A140040.P10433237928509882350

`∩[A107147(n+1), A107202(n+1)]`
-/

namespace A140040.P10433237928509882350
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107147 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107202 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140040.P10433237928509882350

/-! ## A140040.P11058122169292498054

`∩[A107147(n+1), A139968(n+1)]`
-/

namespace A140040.P11058122169292498054
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107147 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139968 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140040.P11058122169292498054

/-! ## A140040.P14550643579239301504

`∩[A107181(n+1), A139968(n+1)]`
-/

namespace A140040.P14550643579239301504
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107181 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139968 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140040.P14550643579239301504

/-! ## A140040.P14248964689975849861

`∩[A106972(n+1), A107202(n+1)]`
-/

namespace A140040.P14248964689975849861
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106972 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107202 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140040.P14248964689975849861

/-! ## A140040.P17024189769161919825

`∩[A106972(n+1), A139968(n+1)]`
-/

namespace A140040.P17024189769161919825
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106972 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139968 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140040.P17024189769161919825

/-! ## A140040.P7311713429583690494

`∩[A139968(n+1), A332227(n+1)]`
-/

namespace A140040.P7311713429583690494
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139968 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332227 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140040.P7311713429583690494

/-! ## A140040.P1945102617478330635

`∩[A008846(n+1), A139968(n+1)]`
-/

namespace A140040.P1945102617478330635
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008846 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139968 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140040.P1945102617478330635

/-! ## A140040.P2509848332422186635

`∩[A139968(n+1), A242663(n+1)]`
-/

namespace A140040.P2509848332422186635
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139968 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242663 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140040.P2509848332422186635

/-! ## A140040.P13481169697695250103

`∩[A107147(n+1), A141182(n+1)]`
-/

namespace A140040.P13481169697695250103
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107147 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141182 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140040.P13481169697695250103

/-! ## A140040.P12510437642348470064

`∩[A139879(n+1), A141182(n+1)]`
-/

namespace A140040.P12510437642348470064
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139879 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141182 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140040.P12510437642348470064

/-! ## A140040.P5925597378884944658

`∩[A139968(n+1), A141182(n+1)]`
-/

namespace A140040.P5925597378884944658
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139968 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141182 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140040.P5925597378884944658

/-! ## A140040.P12574897165321764359

`∩[A007519(n+1), A139968(n+1)]`
-/

namespace A140040.P12574897165321764359
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007519 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139968 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140040.P12574897165321764359

/-! ## A140040.P13398683806513982203

`∩[A045390(n+1), A139968(n+1)]`
-/

namespace A140040.P13398683806513982203
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045390 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139968 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140040.P13398683806513982203

/-! ## A140040.P7243679928815823728

`∩[A106972(n+1), A141776(n+1)]`
-/

namespace A140040.P7243679928815823728
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106972 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141776 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140040.P7243679928815823728

/-! ## A140040.P12457615525220305949

`∩[A139879(n+1), A141776(n+1)]`
-/

namespace A140040.P12457615525220305949
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139879 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141776 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140040.P12457615525220305949

/-! ## A140040.P2955212981388710508

`∩[A139968(n+1), A141776(n+1)]`
-/

namespace A140040.P2955212981388710508
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139968 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141776 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140040.P2955212981388710508

/-! ## A140040.P5053230681939195565

`∩[A139968(n+1), A209544(n+1)]`
-/

namespace A140040.P5053230681939195565
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139968 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209544 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140040.P5053230681939195565

/-!
# A140041: Primes of the form 43x^2+2xy+43y^2.

The programs for A140041, there is no canonical definition to state claims against.
-/

/-! ## A140041.P6657967674074758858

`∩[A139875(n+1), A140619(n+1)]`
-/

namespace A140041.P6657967674074758858
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139875 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140619 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140041.P6657967674074758858

/-! ## A140041.P13902732245041774040

`∩[A139875(n+1), A139969(n+1)]`
-/

namespace A140041.P13902732245041774040
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139875 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139969 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140041.P13902732245041774040

/-! ## A140041.P15458148766518337850

`∩[A139969(n+1), A140619(n+1)]`
-/

namespace A140041.P15458148766518337850
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139969 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140619 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140041.P15458148766518337850

/-! ## A140041.P4357263160092727603

`∩[A139969(n+1), A332446(n+1)]`
-/

namespace A140041.P4357263160092727603
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139969 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332446 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140041.P4357263160092727603

/-! ## A140041.P16350851758983984721

`∩[A033229(n+1), A139969(n+1)]`
-/

namespace A140041.P16350851758983984721
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033229 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139969 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140041.P16350851758983984721

/-! ## A140041.P326023878983657132

`∩[A033229(n+1), A140619(n+1)]`
-/

namespace A140041.P326023878983657132
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033229 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140619 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140041.P326023878983657132

/-! ## A140041.P16489877101929836567

`∩[A033229(n+1), A139828(n+1)]`
-/

namespace A140041.P16489877101929836567
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033229 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139828 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140041.P16489877101929836567

/-! ## A140041.P18069219458573915303

`∩[A139828(n+1), A139875(n+1)]`
-/

namespace A140041.P18069219458573915303
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139828 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139875 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140041.P18069219458573915303

/-! ## A140041.P4390588936246114651

`∩[A139828(n+1), A139969(n+1)]`
-/

namespace A140041.P4390588936246114651
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139828 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139969 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140041.P4390588936246114651

/-! ## A140041.P7741408418096927231

`∩[A139969(n+1), A141373(n+1)]`
-/

namespace A140041.P7741408418096927231
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139969 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141373 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140041.P7741408418096927231

/-! ## A140041.P8317851053365662837

`∩[A033229(n+1), A107201(n+1)]`
-/

namespace A140041.P8317851053365662837
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033229 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107201 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140041.P8317851053365662837

/-! ## A140041.P6970467857517644391

`∩[A107201(n+1), A139875(n+1)]`
-/

namespace A140041.P6970467857517644391
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107201 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139875 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140041.P6970467857517644391

/-! ## A140041.P15924330548345209745

`∩[A107201(n+1), A139969(n+1)]`
-/

namespace A140041.P15924330548345209745
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107201 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139969 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140041.P15924330548345209745

/-! ## A140041.P696854151672249152

`∩[A139828(n+1), A139853(n+1)]`
-/

namespace A140041.P696854151672249152
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139828 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139853 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140041.P696854151672249152

/-! ## A140041.P8318465181191664545

`∩[A139853(n+1), A139969(n+1)]`
-/

namespace A140041.P8318465181191664545
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139853 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139969 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140041.P8318465181191664545

/-! ## A140041.P9508682692753924676

`∩[A139853(n+1), A140619(n+1)]`
-/

namespace A140041.P9508682692753924676
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139853 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140619 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140041.P9508682692753924676

/-! ## A140041.P10882562128181406124

`p?[or(2, A139969(n+1))]`
-/

namespace A140041.P10882562128181406124
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 2 (A139969 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A140041.P10882562128181406124

/-! ## A140041.P5399886022912974526

`∩[A107201(n+1), A139492(n+1)]`
-/

namespace A140041.P5399886022912974526
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107201 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139492 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140041.P5399886022912974526

/-! ## A140041.P516792118342082872

`∩[A139492(n+1), A140619(n+1)]`
-/

namespace A140041.P516792118342082872
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139492 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140619 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140041.P516792118342082872

/-! ## A140041.P5729244955656560833

`∩[A139828(n+1), A141190(n+1)]`
-/

namespace A140041.P5729244955656560833
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139828 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141190 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140041.P5729244955656560833

/-!
# A140042: Primes of the form 44x^2+44xy+53y^2.

The programs for A140042, there is no canonical definition to state claims against.
-/

/-! ## A140042.P13360094569627994616

`∩[A139877(n+1), A139967(n+1)]`
-/

namespace A140042.P13360094569627994616
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139877 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139967 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140042.P13360094569627994616

/-! ## A140042.P15924577503207381385

`∩[A139851(n+1), A139967(n+1)]`
-/

namespace A140042.P15924577503207381385
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139851 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139967 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140042.P15924577503207381385

/-! ## A140042.P1710363329630332821

`∩[A107003(n+1), A139967(n+1)]`
-/

namespace A140042.P1710363329630332821
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107003 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139967 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140042.P1710363329630332821

/-! ## A140042.P6385436507560916225

`∩[A107148(n+1), A139967(n+1)]`
-/

namespace A140042.P6385436507560916225
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107148 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139967 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140042.P6385436507560916225

/-! ## A140042.P12236126989627476529

`p?[or(4, A139967(n+1))]`
-/

namespace A140042.P12236126989627476529
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 4 (A139967 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A140042.P12236126989627476529

/-! ## A140042.P4573320082530070383

`∩[A107003(n+1), A316621(n+1)]`
-/

namespace A140042.P4573320082530070383
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107003 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316621 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140042.P4573320082530070383

/-! ## A140042.P6161761461965994157

`∩[A139877(n+1), A316621(n+1)]`
-/

namespace A140042.P6161761461965994157
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139877 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316621 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140042.P6161761461965994157

/-! ## A140042.P3251070114280405255

`∩[A008846(n+1), A139967(n+1)]`
-/

namespace A140042.P3251070114280405255
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008846 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139967 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140042.P3251070114280405255

/-! ## A140042.P10067132886185509784

`∩[A107003(n+1), A139493(n+1)]`
-/

namespace A140042.P10067132886185509784
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107003 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139493 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140042.P10067132886185509784

/-! ## A140042.P18369278411289563265

`∩[A139493(n+1), A139877(n+1)]`
-/

namespace A140042.P18369278411289563265
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139493 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139877 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140042.P18369278411289563265

/-! ## A140042.P7639412390616674879

`∩[A107134(n+1), A139967(n+1)]`
-/

namespace A140042.P7639412390616674879
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107134 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139967 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140042.P7639412390616674879

/-! ## A140042.P6935162963186254745

`∩[A107148(n+1), A141182(n+1)]`
-/

namespace A140042.P6935162963186254745
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107148 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141182 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140042.P6935162963186254745

/-! ## A140042.P11058128745489297747

`∩[A139877(n+1), A141182(n+1)]`
-/

namespace A140042.P11058128745489297747
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139877 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141182 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140042.P11058128745489297747

/-! ## A140042.P13320244595806633228

`∩[A139967(n+1), A141172(n+1)]`
-/

namespace A140042.P13320244595806633228
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139967 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141172 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140042.P13320244595806633228

/-! ## A140042.P11268327460133488527

`∩[A139967(n+1), A141182(n+1)]`
-/

namespace A140042.P11268327460133488527
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139967 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141182 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140042.P11268327460133488527

/-! ## A140042.P16042076288441482034

`∩[A139967(n+1), A354084(n+1)]`
-/

namespace A140042.P16042076288441482034
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139967 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354084 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140042.P16042076288441482034

/-! ## A140042.P17562430684999052310

`∩[A007521(n+1), A139967(n+1)]`
-/

namespace A140042.P17562430684999052310
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007521 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139967 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140042.P17562430684999052310

/-! ## A140042.P10904017054605162607

`∩[A040117(n+1), A139967(n+1)]`
-/

namespace A140042.P10904017054605162607
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040117 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139967 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140042.P10904017054605162607

/-! ## A140042.P6074512222186609403

`∩[A045366(n+1), A139967(n+1)]`
-/

namespace A140042.P6074512222186609403
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045366 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139967 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140042.P6074512222186609403

/-! ## A140042.P16121304196378220073

`∩[A107010(n+1), A139851(n+1)]`
-/

namespace A140042.P16121304196378220073
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107010 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139851 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140042.P16121304196378220073

/-!
# A140043: Primes of the form 47x^2+38xy+47y^2.

The programs for A140043, there is no canonical definition to state claims against.
-/

/-! ## A140043.P11773214353243775842

`∩[A139968(n+1), A140614(n+1)]`
-/

namespace A140043.P11773214353243775842
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139968 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140614 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140043.P11773214353243775842

/-! ## A140043.P5966533774733523118

`∩[A107138(n+1), A139968(n+1)]`
-/

namespace A140043.P5966533774733523118
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107138 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139968 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140043.P5966533774733523118

/-! ## A140043.P16434426765004924667

`∩[A134517(n+1), A139968(n+1)]`
-/

namespace A140043.P16434426765004924667
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134517 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139968 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140043.P16434426765004924667

/-! ## A140043.P5870649612501622004

`∩[A139837(n+1), A139968(n+1)]`
-/

namespace A140043.P5870649612501622004
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139837 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139968 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140043.P5870649612501622004

/-! ## A140043.P3250999669305455288

`p?[or(4, A139968(n+1))]`
-/

namespace A140043.P3250999669305455288
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 4 (A139968 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A140043.P3250999669305455288

/-! ## A140043.P3083337062084749544

`∩[A130063(n+1), A139968(n+1)]`
-/

namespace A140043.P3083337062084749544
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130063 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139968 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140043.P3083337062084749544

/-! ## A140043.P12645937204644893839

`∩[A007522(n+1), A139968(n+1)]`
-/

namespace A140043.P12645937204644893839
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007522 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139968 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140043.P12645937204644893839

/-! ## A140043.P1265548105059972226

`∩[A045382(n+1), A139968(n+1)]`
-/

namespace A140043.P1265548105059972226
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045382 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139968 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140043.P1265548105059972226

/-! ## A140043.P15261686432013627847

`∩[A094712(n+1), A139968(n+1)]`
-/

namespace A140043.P15261686432013627847
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094712 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139968 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140043.P15261686432013627847

/-! ## A140043.P9798773425123553354

`∩[A068231(n+1), A139968(n+1)]`
-/

namespace A140043.P9798773425123553354
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068231 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139968 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140043.P9798773425123553354

/-! ## A140043.P15072714276881991742

`∩[A139968(n+1), A141123(n+1)]`
-/

namespace A140043.P15072714276881991742
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139968 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141123 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140043.P15072714276881991742

/-! ## A140043.P15611240533304561385

`∩[A139968(n+1), A141171(n+1)]`
-/

namespace A140043.P15611240533304561385
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139968 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141171 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140043.P15611240533304561385

/-! ## A140043.P14229491852115868970

`∩[A139968(n+1), A141187(n+1)]`
-/

namespace A140043.P14229491852115868970
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139968 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141187 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140043.P14229491852115868970

/-! ## A140043.P13347501732128859464

`∩[A107138(n+1), A141191(n+1)]`
-/

namespace A140043.P13347501732128859464
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107138 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141191 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140043.P13347501732128859464

/-! ## A140043.P8039092997837937763

`∩[A139837(n+1), A141160(n+1)]`
-/

namespace A140043.P8039092997837937763
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139837 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141160 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140043.P8039092997837937763

/-! ## A140043.P6323293997987291388

`∩[A139968(n+1), A141173(n+1)]`
-/

namespace A140043.P6323293997987291388
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139968 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141173 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140043.P6323293997987291388

/-! ## A140043.P5375431898714876333

`∩[A139968(n+1), A141191(n+1)]`
-/

namespace A140043.P5375431898714876333
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139968 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141191 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140043.P5375431898714876333

/-! ## A140043.P10516935038092374899

`∩[A140614(n+1), A141160(n+1)]`
-/

namespace A140043.P10516935038092374899
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140614 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141160 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140043.P10516935038092374899

/-! ## A140043.P9673284103390121497

`∩[A140614(n+1), A141173(n+1)]`
-/

namespace A140043.P9673284103390121497
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140614 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141173 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140043.P9673284103390121497

/-! ## A140043.P9111609510756475470

`∩[A140614(n+1), A141191(n+1)]`
-/

namespace A140043.P9111609510756475470
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140614 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141191 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140043.P9111609510756475470

/-!
# A140046: G.f. satisfies: A(x) = x/(1 - A(x+x^2)).

The programs for A140046, there is no canonical definition to state claims against.
-/

/-! ## A140046.P11673819289215675323

`A316628((n+7)*a(n-1))-n` with `a(0)=1, a(1)=1`
-/

namespace A140046.P11673819289215675323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A316628 ((n + 7 : ℤ) * a (n - 1)).toNat - (n : ℤ)

end

end A140046.P11673819289215675323

/-! ## A140046.P11459274850230133628

`A177152(a(n-1))` with `a(0)=1, a(1)=1, a(2)=3`
-/

namespace A140046.P11459274850230133628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 3] fun n a =>
  A177152 (a (n - 1)).toNat

end

end A140046.P11459274850230133628

/-!
# A140048: a(n) = (1/2)*Sum_{j=0..2^n-1} j^(n-1) for n>=1.

The programs for A140048, there is no canonical definition to state claims against.
-/

/-! ## A140048.P17456310086050530528

`A140047(∑[n+1])`
-/

namespace A140048.P17456310086050530528
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140047 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A140048.P17456310086050530528

/-! ## A140048.P10318225999589010407

`record[A140047(∑[A258133(n)])]`
-/

namespace A140048.P10318225999589010407
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258133 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140047 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A140048.P10318225999589010407

/-! ## A140048.P15308265823343649309

`record[A140047(record[A291701(n)])]`
-/

namespace A140048.P15308265823343649309
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291701 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140047 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A140048.P15308265823343649309

/-!
# A140049: E.g.f. A(x) satisfies: A( x*exp(-x*A(x)) ) = exp(x*A(x)).

The programs for A140049, there is no canonical definition to state claims against.
-/

/-! ## A140049.P6319977701026582771

`A140054(n+1)/(n+1)`
-/

namespace A140049.P6319977701026582771
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A140054 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A140049.P6319977701026582771

/-! ## A140049.P15542376247046805454

`A379168(∑[n+1]+n)`
-/

namespace A140049.P15542376247046805454
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379168 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A140049.P15542376247046805454

/-! ## A140049.P9390767261672136825

`abs(A087962(n+1))/(n+1)`
-/

namespace A140049.P9390767261672136825
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (|A087962 (n + 1)| : ℚ) / (n + 1 : ℚ)

end

end A140049.P9390767261672136825

/-! ## A140049.P1227063122031176476

`gcd(A008683(12*comp[5*n]), A087962(n+1))/(n+1)`
-/

namespace A140049.P1227063122031176476
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 * n

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.gcd (A008683 (12 * SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)) (A087962 (n + 1)) : ℚ) / (n + 1 : ℚ)

end

end A140049.P1227063122031176476

/-! ## A140049.P17415422144661395756

`record[Δ[A087962(A035614(n))]]/(n+1)`
-/

namespace A140049.P17415422144661395756
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087962 (A035614 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) / (n + 1 : ℚ)

end

end A140049.P17415422144661395756

/-!
# A140054: E.g.f. A(x) satisfies: A( x*exp(-A(x)) ) = x.

The programs for A140054, there is no canonical definition to state claims against.
-/

/-! ## A140054.P5371057147150748596

`abs(A087962(n+1))`
-/

namespace A140054.P5371057147150748596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A087962 (n + 1)|

end

end A140054.P5371057147150748596

/-! ## A140054.P16070662016021687902

`(n+1)*A140049(n)`
-/

namespace A140054.P16070662016021687902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A140049 n

end

end A140054.P16070662016021687902

/-! ## A140054.P4382614165940080631

`record[abs(A087962(A008651(n)))]`
-/

namespace A140054.P4382614165940080631
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A087962 (A008651 n).toNat|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A140054.P4382614165940080631

/-! ## A140054.P13956556966849566155

`A033999(n)*A087962(n+1)`
-/

namespace A140054.P13956556966849566155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A087962 (n + 1)

end

end A140054.P13956556966849566155

/-! ## A140054.P7236569314999467827

`gcd(A008683(12*comp[5*n]), A087962(n+1))`
-/

namespace A140054.P7236569314999467827
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 * n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A008683 (12 * SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)) (A087962 (n + 1))

end

end A140054.P7236569314999467827

/-!
# A140057: Numbers such that each decimal digit d (for all d in the range 1 <= d <= 9) occurs only in runs of length exactly d.

The programs for A140057, there is no canonical definition to state claims against.
-/

/-! ## A140057.P15487595616648584016

`A105776(∑[gcd(n+1, ∏{p}[n+1, (n+1)/#])!])`
-/

namespace A140057.P15487595616648584016
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (Int.gcd (n + 1 : ℤ) (SequenceMachineLib.roundAway (∏ p ∈ Nat.primeFactors (f2 n), (n + 1 : ℚ) / (p : ℚ))))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105776 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A140057.P15487595616648584016

/-!
# A140058: Numbers > 24 that are congruent to {5,6,7,8,9} mod 10.

The programs for A140058, the canonical program `A140058.P4006224212658094628` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A140058 has offset 1).

The definition of A140058 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A140058.P4006224212658094628

`10+a(n-5)` with `a(0)=25, a(1)=26, a(2)=27, a(3)=28, a(4)=29`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A140058

/-- `10+a(n-5)` -/
def P4006224212658094628.Spec : Prop :=
  ∀ n, (P4006224212658094628.a n : ℤ) = A140058 (n + 1)

theorem P4006224212658094628.correct : P4006224212658094628.Spec := by
  intro n
  simp only [A140058, Nat.add_sub_cancel]

end A140058

/-! ## A140058.P1297043715704026002

`25+n%5+10*floor(n/5)`
-/

namespace A140058.P1297043715704026002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((25 + n % 5 : ℕ) : ℤ) + 10 * ⌊(n : ℚ) / 5⌋

end

end A140058.P1297043715704026002

namespace A140058

/-- `25+n%5+10*floor(n/5)` -/
def P1297043715704026002.Spec : Prop :=
  ∀ n, P1297043715704026002.a n = A140058 (n + 1)

end A140058

/-! ## A140058.P17871471625664782578

`2*n+25-n%5`
-/

namespace A140058.P17871471625664782578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) + (25 - ((n % 5 : ℕ) : ℤ))

end

end A140058.P17871471625664782578

namespace A140058

/-- `2*n+25-n%5` -/
def P17871471625664782578.Spec : Prop :=
  ∀ n, P17871471625664782578.a n = A140058 (n + 1)

end A140058

/-! ## A140058.P754659315933760451

`5*(floor(n/5)+5)+n`
-/

namespace A140058.P754659315933760451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * (⌊(n : ℚ) / 5⌋ + 5) + (n : ℤ)

end

end A140058.P754659315933760451

namespace A140058

/-- `5*(floor(n/5)+5)+n` -/
def P754659315933760451.Spec : Prop :=
  ∀ n, P754659315933760451.a n = A140058 (n + 1)

end A140058

/-! ## A140058.P12496553281592654560

`A293481(n+11)`
-/

namespace A140058.P12496553281592654560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293481 (n + 11)

end

end A140058.P12496553281592654560

namespace A140058

/-- `A293481(n+11)` -/
def P12496553281592654560.Spec : Prop :=
  ∀ n, P12496553281592654560.a n = A140058 (n + 1)

end A140058

/-! ## A140058.P7095489177120828704

`record[abs(A023467((4*n-A010879(2*n))/2))]`
-/

namespace A140058.P7095489177120828704
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A023467 (SequenceMachineLib.roundAway (((4 * n : ℤ) - A010879 (2 * n) : ℚ) / 2)).toNat|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A140058.P7095489177120828704

namespace A140058

/-- `record[abs(A023467((4*n-A010879(2*n))/2))]` -/
def P7095489177120828704.Spec : Prop :=
  ∀ n, P7095489177120828704.a n = A140058 (n + 1)

end A140058

/-! ## A140058.P14149574693928613363

`lt[A209207(n+1), -A319888(n+5)]`
-/

namespace A140058.P14149574693928613363
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209207 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A319888 (n + 5)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A140058.P14149574693928613363

namespace A140058

/-- `lt[A209207(n+1), -A319888(n+5)]` -/
def P14149574693928613363.Spec : Prop :=
  ∀ n, (P14149574693928613363.a n : ℤ) = A140058 (n + 1)

end A140058

/-! ## A140058.P3337430321706225658

`lt[1, abs(A182492(A130497(n)))]`
-/

namespace A140058.P3337430321706225658
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A182492 (A130497 n).toNat|

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A140058.P3337430321706225658

namespace A140058

/-- `lt[1, abs(A182492(A130497(n)))]` -/
def P3337430321706225658.Spec : Prop :=
  ∀ n, (P3337430321706225658.a n : ℤ) = A140058 (n + 1)

end A140058

/-! ## A140058.P48939662595518282

`lt[9, A117575(A194509(2*n+1)+1)]`
-/

namespace A140058.P48939662595518282
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117575 (A194509 (2 * n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A140058.P48939662595518282

namespace A140058

/-- `lt[9, A117575(A194509(2*n+1)+1)]` -/
def P48939662595518282.Spec : Prop :=
  ∀ n, (P48939662595518282.a n : ℤ) = A140058 (n + 1)

end A140058

/-!
# A140060: Array of quotients.

The programs for A140060, there is no canonical definition to state claims against.
-/

/-! ## A140060.P11988729500384148434

`A004736(∑[A028933(n)]+1)`
-/

namespace A140060.P11988729500384148434
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028933 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (∑ j ∈ Finset.range (n + 1), f1 j + 1).toNat

end

end A140060.P11988729500384148434

/-! ## A140060.P6791929634345050436

`ceil(A099375(∑[A028933(n)])/2)`
-/

namespace A140060.P6791929634345050436
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028933 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A099375 (∑ j ∈ Finset.range (n + 1), f1 j).toNat : ℚ) / 2⌉

end

end A140060.P6791929634345050436

/-! ## A140060.P5976453923633228843

`A008619(A099375(∑[A028933(n)]))`
-/

namespace A140060.P5976453923633228843
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028933 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A099375 (∑ j ∈ Finset.range (n + 1), f1 j).toNat).toNat

end

end A140060.P5976453923633228843

/-! ## A140060.P3984725763770822980

`round(A099375(∑[A028933(n)])/2)%A038660(n+1)`
-/

namespace A140060.P3984725763770822980
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028933 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A099375 (∑ j ∈ Finset.range (n + 1), f1 j).toNat : ℚ) / 2)) (A038660 (n + 1))

end

end A140060.P3984725763770822980

/-! ## A140060.P393707990064919968

`A001511(A130321(∑[A028933(n)]))`
-/

namespace A140060.P393707990064919968
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028933 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (A130321 (∑ j ∈ Finset.range (n + 1), f1 j).toNat).toNat

end

end A140060.P393707990064919968

/-!
# A140061: Triangle of quotients.

The programs for A140061, there is no canonical definition to state claims against.
-/

/-! ## A140061.P8035707704839797932

`A357431(∑[char[∑[n]]]²-n)`
-/

namespace A140061.P8035707704839797932
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357431 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - n)

end

end A140061.P8035707704839797932

/-! ## A140061.P14792982792498794989

`A357431(A194910(n+1))%A325274(2*(n+2))`
-/

namespace A140061.P14792982792498794989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A357431 (A194910 (n + 1)).toNat) (A325274 (2 * (n + 2)))

end

end A140061.P14792982792498794989

/-!
# A140062: a(n) = 101*2^(n-1) - 100.

The programs for A140062, the canonical program `A140062.P937066635946769971` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A140062 has offset 1).

The definition of A140062 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `101*2^n-100` (program `A140062.P937066635946769971`, by `A140062.P937066635946769971.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A140062.P937066635946769971

`101*2^n-100`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A140062

/-- `101*2^n-100` -/
def P937066635946769971.Spec : Prop :=
  ∀ n, P937066635946769971.a n = A140062 (n + 1)

theorem P937066635946769971.correct : P937066635946769971.Spec := by
  intro n
  simp only [A140062, Nat.add_sub_cancel]

end A140062

/-! ## A140062.P16574214526838330534

`2*(a(n-1)+50)` with `a(0)=1`
-/

namespace A140062.P16574214526838330534
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  2 * (a (n - 1) + 50)

end

end A140062.P16574214526838330534

namespace A140062

/-- `2*(a(n-1)+50)` -/
def P16574214526838330534.Spec : Prop :=
  ∀ n, (P16574214526838330534.a n : ℤ) = A140062 (n + 1)

theorem P16574214526838330534.correct : P16574214526838330534.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A140062, Nat.add_sub_cancel, A140062.P16574214526838330534.a, A140062.P937066635946769971.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A140062, Nat.add_sub_cancel, A140062.P16574214526838330534.a, A140062.P937066635946769971.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A140062

/-! ## A140062.P5934319980301596097

`A078787(2^n-1)`
-/

namespace A140062.P5934319980301596097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078787 (2 ^ n - 1)

end

end A140062.P5934319980301596097

namespace A140062

/-- `A078787(2^n-1)` -/
def P5934319980301596097.Spec : Prop :=
  ∀ n, P5934319980301596097.a n = A140062 (n + 1)

end A140062

/-!
# A140063: Binomial transform of [1, 3, 7, 0, 0, 0, ...].

The programs for A140063, the canonical program `A140063.P4903028411934037996` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A140063 has offset 0).

The definition of A140063 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A140063.P4903028411934037996

`n*(7*n-1)/2+1`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A140063

/-- `n*(7*n-1)/2+1` -/
def P4903028411934037996.Spec : Prop :=
  ∀ n, P4903028411934037996.a n = (A140063 n : ℚ)

end A140063

/-! ## A140063.P5268481687571225628

`∑[a(n-1)+7]` with `a(0)=1, a(1)=3`
-/

namespace A140063.P5268481687571225628
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 3] fun n f1 =>
  f1 (n - 1) + 7

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A140063.P5268481687571225628

namespace A140063

/-- `∑[a(n-1)+7]` -/
def P5268481687571225628.Spec : Prop :=
  ∀ n, (P5268481687571225628.a n : ℤ) = A140063 n

end A140063

/-! ## A140063.P7044709757207182586

`∑[ogf((1+x+5x^2)/(1-2x+x^2))]`
-/

namespace A140063.P7044709757207182586
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1, 5] [1, -2, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A140063.P7044709757207182586

namespace A140063

/-- `∑[ogf((1+x+5x^2)/(1-2x+x^2))]` -/
def P7044709757207182586.Spec : Prop :=
  ∀ n, P7044709757207182586.a n = A140063 n

end A140063

/-! ## A140063.P9886815022129881940

`ogf((1+x+5x^2)/(1-3x+3x^2-x^3))`
-/

namespace A140063.P9886815022129881940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1, 5] [1, -3, 3, -1] n

end

end A140063.P9886815022129881940

namespace A140063

/-- `ogf((1+x+5x^2)/(1-3x+3x^2-x^3))` -/
def P9886815022129881940.Spec : Prop :=
  ∀ n, P9886815022129881940.a n = A140063 n

end A140063

/-! ## A140063.P5954817322598681478

`floor(7*n+a(n-1)-4)` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A140063.P5954817322598681478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (7 * n : ℤ) + (a (n - 1) - 4)

end

end A140063.P5954817322598681478

namespace A140063

/-- `floor(7*n+a(n-1)-4)` -/
def P5954817322598681478.Spec : Prop :=
  ∀ n, P5954817322598681478.a n = A140063 n

end A140063

/-! ## A140063.P10613743126918197845

`floor(7*n-(4-a(n-1)))` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A140063.P10613743126918197845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (7 * n : ℤ) - (4 - a (n - 1))

end

end A140063.P10613743126918197845

namespace A140063

/-- `floor(7*n-(4-a(n-1)))` -/
def P10613743126918197845.Spec : Prop :=
  ∀ n, P10613743126918197845.a n = A140063 n

end A140063

/-! ## A140063.P14802492076414380714

`abs((2*n)²-C(n, 2)+1-n)`
-/

namespace A140063.P14802492076414380714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |((2 * n) ^ 2 : ℤ) - (Nat.choose n 2 : ℤ) + 1 - (n : ℤ)|

end

end A140063.P14802492076414380714

namespace A140063

/-- `abs((2*n)²-C(n, 2)+1-n)` -/
def P14802492076414380714.Spec : Prop :=
  ∀ n, P14802492076414380714.a n = A140063 n

end A140063

/-! ## A140063.P7118268813122232788

`floor((2*n)²+ϕ-C(n+1, 2))`
-/

namespace A140063.P7118268813122232788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((2 * n) ^ 2 : ℝ) + (Real.goldenRatio - (Nat.choose (n + 1) 2 : ℝ))⌋

end

end A140063.P7118268813122232788

namespace A140063

/-- `floor((2*n)²+ϕ-C(n+1, 2))` -/
def P7118268813122232788.Spec : Prop :=
  ∀ n, P7118268813122232788.a n = A140063 n

end A140063

/-! ## A140063.P1877862442274835435

`Δ[C(n+3, 3)+(n-3)*n²]`
-/

namespace A140063.P1877862442274835435
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (n + 3) 3 : ℤ) + ((n : ℤ) - 3) * (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A140063.P1877862442274835435

namespace A140063

/-- `Δ[C(n+3, 3)+(n-3)*n²]` -/
def P1877862442274835435.Spec : Prop :=
  ∀ n, P1877862442274835435.a n = A140063 n

end A140063

/-! ## A140063.P1403171598216145099

`abs(abs(8*n-(5-a(n-1)))-(n-1))` with `a(0)=1`
-/

namespace A140063.P1403171598216145099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  |(|(8 * n : ℤ) - (5 - a (n - 1))| - ((n : ℤ) - 1))|

end

end A140063.P1403171598216145099

namespace A140063

/-- `abs(abs(8*n-(5-a(n-1)))-(n-1))` -/
def P1403171598216145099.Spec : Prop :=
  ∀ n, P1403171598216145099.a n = A140063 n

end A140063

/-! ## A140063.P15821783255352379011

`abs(n²-A276819(n))`
-/

namespace A140063.P15821783255352379011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n ^ 2 : ℤ) - A276819 n|

end

end A140063.P15821783255352379011

namespace A140063

/-- `abs(n²-A276819(n))` -/
def P15821783255352379011.Spec : Prop :=
  ∀ n, P15821783255352379011.a n = A140063 n

end A140063

/-! ## A140063.P8206783513924373680

`abs(∑[n]-A053755(n))`
-/

namespace A140063.P8206783513924373680
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A053755 n|

end

end A140063.P8206783513924373680

namespace A140063

/-- `abs(∑[n]-A053755(n))` -/
def P8206783513924373680.Spec : Prop :=
  ∀ n, P8206783513924373680.a n = A140063 n

end A140063

/-! ## A140063.P10047158326960072227

`ceil((A247541(n)-n)/2)`
-/

namespace A140063.P10047158326960072227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A247541 n - (n : ℤ) : ℚ) / 2⌉

end

end A140063.P10047158326960072227

namespace A140063

/-- `ceil((A247541(n)-n)/2)` -/
def P10047158326960072227.Spec : Prop :=
  ∀ n, P10047158326960072227.a n = A140063 n

end A140063

/-! ## A140063.P15958236260260857302

`abs(A001106(n)+Δ[n²])`
-/

namespace A140063.P15958236260260857302
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A001106 n + ((f1 (n + 1) : ℤ) - (f1 n : ℤ))|

end

end A140063.P15958236260260857302

namespace A140063

/-- `abs(A001106(n)+Δ[n²])` -/
def P15958236260260857302.Spec : Prop :=
  ∀ n, P15958236260260857302.a n = A140063 n

end A140063

/-! ## A140063.P2320057385892320866

`(A135703(n)+2+n)/2`
-/

namespace A140063.P2320057385892320866
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A135703 n + 2 + (n : ℤ) : ℚ) / 2

end

end A140063.P2320057385892320866

namespace A140063

/-- `(A135703(n)+2+n)/2` -/
def P2320057385892320866.Spec : Prop :=
  ∀ n, P2320057385892320866.a n = (A140063 n : ℚ)

end A140063

/-! ## A140063.P3446279022651721368

`abs((2*n)²+1-A000217(n))`
-/

namespace A140063.P3446279022651721368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |((2 * n) ^ 2 + 1 : ℤ) - A000217 n|

end

end A140063.P3446279022651721368

namespace A140063

/-- `abs((2*n)²+1-A000217(n))` -/
def P3446279022651721368.Spec : Prop :=
  ∀ n, P3446279022651721368.a n = A140063 n

end A140063

/-! ## A140063.P17764123197315494000

`abs(A056105(n)+∑[n+1]-1)`
-/

namespace A140063.P17764123197315494000
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A056105 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1|

end

end A140063.P17764123197315494000

namespace A140063

/-- `abs(A056105(n)+∑[n+1]-1)` -/
def P17764123197315494000.Spec : Prop :=
  ∀ n, P17764123197315494000.a n = A140063 n

end A140063

/-! ## A140063.P972986183006295796

`abs(∑[or(1, A086570(n))-n]-n)`
-/

namespace A140063.P972986183006295796
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A086570 n) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)|

end

end A140063.P972986183006295796

namespace A140063

/-- `abs(∑[or(1, A086570(n))-n]-n)` -/
def P972986183006295796.Spec : Prop :=
  ∀ n, P972986183006295796.a n = A140063 n

end A140063

/-! ## A140063.P9162248243164536056

`(A022264(n)+1)%∑[14*n+12]`
-/

namespace A140063.P9162248243164536056
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  14 * n + 12

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A022264 n + 1) ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A140063.P9162248243164536056

namespace A140063

/-- `(A022264(n)+1)%∑[14*n+12]` -/
def P9162248243164536056.Spec : Prop :=
  ∀ n, P9162248243164536056.a n = A140063 n

end A140063

/-! ## A140063.P2663904944529979313

`A108099(n)%A081270(n)`
-/

namespace A140063.P2663904944529979313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A108099 n) (A081270 n)

end

end A140063.P2663904944529979313

namespace A140063

/-- `A108099(n)%A081270(n)` -/
def P2663904944529979313.Spec : Prop :=
  ∀ n, P2663904944529979313.a n = A140063 n

end A140063

/-!
# A140064: a(n) = (9*n^2 - 5*n + 2)/2.

The programs for A140064, the canonical program `A140064.P7353964558817087415` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A140064 has offset 0).

The definition of A140064 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(9*n²-5*n+2)/2` (program `A140064.P10863278593309601589`, by `A140064.P10863278593309601589.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A140064.P7353964558817087415

`a(n-1)+9*n-7` with `a(0)=1`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A140064

/-- `a(n-1)+9*n-7` -/
def P7353964558817087415.Spec : Prop :=
  ∀ n, P7353964558817087415.a n = A140064 n

theorem P7353964558817087415.correct : P7353964558817087415.Spec := by
  intro n
  simp only [A140064]

end A140064

/-! ## A140064.P10863278593309601589

`(9*n²-5*n+2)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A140064.P10863278593309601589
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((9 * n ^ 2 : ℤ) - (5 * n : ℤ) + 2 : ℚ) / 2

end

end A140064.P10863278593309601589

namespace A140064

/-- `(9*n²-5*n+2)/2` -/
def P10863278593309601589.Spec : Prop :=
  ∀ n, P10863278593309601589.a n = (A140064 n : ℚ)

theorem P10863278593309601589.correct : P10863278593309601589.Spec := by
  intro n
  induction n with
  | zero => simp [A140064, A140064.P10863278593309601589.a, A140064.P7353964558817087415.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
  | succ m ih =>
    simp only [A140064, Nat.add_sub_cancel, A140064.P10863278593309601589.a, A140064.P7353964558817087415.a, SequenceMachineLib.memo_apply] at ih ⊢
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    try simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
    try push_cast at ih ⊢
    try linarith

end A140064

/-! ## A140064.P3495518907804917038

`∑[a(n-1)+9]` with `a(0)=1, a(1)=2`
-/

namespace A140064.P3495518907804917038
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n f1 =>
  f1 (n - 1) + 9

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A140064.P3495518907804917038

namespace A140064

/-- `∑[a(n-1)+9]` -/
def P3495518907804917038.Spec : Prop :=
  ∀ n, (P3495518907804917038.a n : ℤ) = A140064 n

end A140064

/-! ## A140064.P17944780959045687298

`C(3*n, 2)-(n-1)`
-/

namespace A140064.P17944780959045687298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (3 * n) 2 : ℤ) - ((n : ℤ) - 1)

end

end A140064.P17944780959045687298

namespace A140064

/-- `C(3*n, 2)-(n-1)` -/
def P17944780959045687298.Spec : Prop :=
  ∀ n, P17944780959045687298.a n = A140064 n

end A140064

/-! ## A140064.P17711798310419483757

`∑[ogf((1+8x^2)/(1-2x+x^2))]`
-/

namespace A140064.P17711798310419483757
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 0, 8] [1, -2, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A140064.P17711798310419483757

namespace A140064

/-- `∑[ogf((1+8x^2)/(1-2x+x^2))]` -/
def P17711798310419483757.Spec : Prop :=
  ∀ n, P17711798310419483757.a n = A140064 n

end A140064

/-! ## A140064.P135924996325609430

`ogf((1+8x^2)/(1-3x+3x^2-x^3))`
-/

namespace A140064.P135924996325609430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 0, 8] [1, -3, 3, -1] n

end

end A140064.P135924996325609430

namespace A140064

/-- `ogf((1+8x^2)/(1-3x+3x^2-x^3))` -/
def P135924996325609430.Spec : Prop :=
  ∀ n, P135924996325609430.a n = A140064 n

end A140064

/-! ## A140064.P7683252329339559744

`8-∑[a(n-1)-9]` with `a(0)=7`
-/

namespace A140064.P7683252329339559744
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [7] fun n f1 =>
  f1 (n - 1) - 9

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A140064.P7683252329339559744

namespace A140064

/-- `8-∑[a(n-1)-9]` -/
def P7683252329339559744.Spec : Prop :=
  ∀ n, P7683252329339559744.a n = A140064 n

end A140064

/-! ## A140064.P7182065134719219791

`∑[record[(n+1)^(2-dr(n))]]`
-/

namespace A140064.P7182065134719219791
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ (2 - (SequenceMachineLib.digitalRoot (n : ℤ) : ℤ) : ℤ)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A140064.P7182065134719219791

namespace A140064

/-- `∑[record[(n+1)^(2-dr(n))]]` -/
def P7182065134719219791.Spec : Prop :=
  ∀ n, P7182065134719219791.a n = (A140064 n : ℚ)

end A140064

/-! ## A140064.P11050953985511941721

`9*C(n, 2)+2*n+1`
-/

namespace A140064.P11050953985511941721
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9 * Nat.choose n 2 + (2 * n + 1)

end

end A140064.P11050953985511941721

namespace A140064

/-- `9*C(n, 2)+2*n+1` -/
def P11050953985511941721.Spec : Prop :=
  ∀ n, (P11050953985511941721.a n : ℤ) = A140064 n

end A140064

/-! ## A140064.P6330793370798058499

`A062708(n)+1`
-/

namespace A140064.P6330793370798058499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062708 n + 1

end

end A140064.P6330793370798058499

namespace A140064

/-- `A062708(n)+1` -/
def P6330793370798058499.Spec : Prop :=
  ∀ n, P6330793370798058499.a n = A140064 n

end A140064

/-! ## A140064.P4873409148117301243

`A117625(n)+n`
-/

namespace A140064.P4873409148117301243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117625 n + (n : ℤ)

end

end A140064.P4873409148117301243

namespace A140064

/-- `A117625(n)+n` -/
def P4873409148117301243.Spec : Prop :=
  ∀ n, P4873409148117301243.a n = A140064 n

end A140064

/-! ## A140064.P17574197408437050247

`A080855(n)-n`
-/

namespace A140064.P17574197408437050247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080855 n - (n : ℤ)

end

end A140064.P17574197408437050247

namespace A140064

/-- `A080855(n)-n` -/
def P17574197408437050247.Spec : Prop :=
  ∀ n, P17574197408437050247.a n = A140064 n

end A140064

/-! ## A140064.P738231942017028094

`A389608(n)+n²`
-/

namespace A140064.P738231942017028094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389608 n + (n ^ 2 : ℤ)

end

end A140064.P738231942017028094

namespace A140064

/-- `A389608(n)+n²` -/
def P738231942017028094.Spec : Prop :=
  ∀ n, P738231942017028094.a n = A140064 n

end A140064

/-! ## A140064.P5042503363209061100

`A054552(n)+∑[n]`
-/

namespace A140064.P5042503363209061100
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054552 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A140064.P5042503363209061100

namespace A140064

/-- `A054552(n)+∑[n]` -/
def P5042503363209061100.Spec : Prop :=
  ∀ n, P5042503363209061100.a n = A140064 n

end A140064

/-! ## A140064.P18345185540408537024

`A051682(n)+1+n`
-/

namespace A140064.P18345185540408537024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051682 n + 1 + (n : ℤ)

end

end A140064.P18345185540408537024

namespace A140064

/-- `A051682(n)+1+n` -/
def P18345185540408537024.Spec : Prop :=
  ∀ n, P18345185540408537024.a n = A140064 n

end A140064

/-! ## A140064.P2430473692800182277

`A062741(n)+1-n`
-/

namespace A140064.P2430473692800182277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062741 n + (1 - (n : ℤ))

end

end A140064.P2430473692800182277

namespace A140064

/-- `A062741(n)+1-n` -/
def P2430473692800182277.Spec : Prop :=
  ∀ n, P2430473692800182277.a n = A140064 n

end A140064

/-! ## A140064.P8951996378184679427

`A276819(n)-2*n`
-/

namespace A140064.P8951996378184679427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276819 n - (2 * n : ℤ)

end

end A140064.P8951996378184679427

namespace A140064

/-- `A276819(n)-2*n` -/
def P8951996378184679427.Spec : Prop :=
  ∀ n, P8951996378184679427.a n = A140064 n

end A140064

/-! ## A140064.P17975119670893067024

`A006137(n)-3*n`
-/

namespace A140064.P17975119670893067024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006137 n - (3 * n : ℤ)

end

end A140064.P17975119670893067024

namespace A140064

/-- `A006137(n)-3*n` -/
def P17975119670893067024.Spec : Prop :=
  ∀ n, P17975119670893067024.a n = A140064 n

end A140064

/-! ## A140064.P104716421167262923

`A038764(n)-4*n`
-/

namespace A140064.P104716421167262923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038764 n - (4 * n : ℤ)

end

end A140064.P104716421167262923

namespace A140064

/-- `A038764(n)-4*n` -/
def P104716421167262923.Spec : Prop :=
  ∀ n, P104716421167262923.a n = A140064 n

end A140064

/-! ## A140064.P11939697097739498433

`A064225(n)-5*n`
-/

namespace A140064.P11939697097739498433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064225 n - (5 * n : ℤ)

end

end A140064.P11939697097739498433

namespace A140064

/-- `A064225(n)-5*n` -/
def P11939697097739498433.Spec : Prop :=
  ∀ n, P11939697097739498433.a n = A140064 n

end A140064

/-!
# A140065: a(n) = (7*n^2 - 17*n + 12)/2.

The programs for A140065, the canonical program `A140065.P8537564728411649119` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A140065 has offset 1).

The definition of A140065 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(7*(n+1)²-17*(n+1)+12)/2` (program `A140065.P6583309883078619833`, by `A140065.P6583309883078619833.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A140065.P8537564728411649119

`7*(n+1)+a(n-1)-12` with `a(0)=1`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A140065

/-- `7*(n+1)+a(n-1)-12` -/
def P8537564728411649119.Spec : Prop :=
  ∀ n, P8537564728411649119.a n = A140065 (n + 1)

theorem P8537564728411649119.correct : P8537564728411649119.Spec := by
  intro n
  simp only [A140065, Nat.add_sub_cancel]

end A140065

/-! ## A140065.P6583309883078619833

`(7*(n+1)²-17*(n+1)+12)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A140065.P6583309883078619833
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((7 * (n + 1) ^ 2 : ℤ) - (17 * (n + 1) : ℤ) + 12 : ℚ) / 2

end

end A140065.P6583309883078619833

namespace A140065

/-- `(7*(n+1)²-17*(n+1)+12)/2` -/
def P6583309883078619833.Spec : Prop :=
  ∀ n, P6583309883078619833.a n = (A140065 (n + 1) : ℚ)

theorem P6583309883078619833.correct : P6583309883078619833.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A140065, Nat.add_sub_cancel, A140065.P6583309883078619833.a, A140065.P8537564728411649119.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A140065, Nat.add_sub_cancel, A140065.P6583309883078619833.a, A140065.P8537564728411649119.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A140065

/-! ## A140065.P2657710086272626387

`∑[a(n-1)+7]` with `a(0)=1, a(1)=2`
-/

namespace A140065.P2657710086272626387
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n f1 =>
  f1 (n - 1) + 7

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A140065.P2657710086272626387

namespace A140065

/-- `∑[a(n-1)+7]` -/
def P2657710086272626387.Spec : Prop :=
  ∀ n, (P2657710086272626387.a n : ℤ) = A140065 (n + 1)

end A140065

/-! ## A140065.P3134857024619408839

`∑[ogf((1+6x^2)/(1-2x+x^2))]`
-/

namespace A140065.P3134857024619408839
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 0, 6] [1, -2, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A140065.P3134857024619408839

namespace A140065

/-- `∑[ogf((1+6x^2)/(1-2x+x^2))]` -/
def P3134857024619408839.Spec : Prop :=
  ∀ n, P3134857024619408839.a n = A140065 (n + 1)

end A140065

/-! ## A140065.P6363934817371078522

`ogf((1+6x^2)/(1-3x+3x^2-x^3))`
-/

namespace A140065.P6363934817371078522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 0, 6] [1, -3, 3, -1] n

end

end A140065.P6363934817371078522

namespace A140065

/-- `ogf((1+6x^2)/(1-3x+3x^2-x^3))` -/
def P6363934817371078522.Spec : Prop :=
  ∀ n, P6363934817371078522.a n = A140065 (n + 1)

end A140065

/-! ## A140065.P17375171988997320486

`6-∑[a(n-1)-7]` with `a(0)=5`
-/

namespace A140065.P17375171988997320486
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [5] fun n f1 =>
  f1 (n - 1) - 7

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A140065.P17375171988997320486

namespace A140065

/-- `6-∑[a(n-1)-7]` -/
def P17375171988997320486.Spec : Prop :=
  ∀ n, P17375171988997320486.a n = A140065 (n + 1)

end A140065

/-! ## A140065.P12223156232293597533

`7*C(n, 2)+2*n+1`
-/

namespace A140065.P12223156232293597533
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7 * Nat.choose n 2 + (2 * n + 1)

end

end A140065.P12223156232293597533

namespace A140065

/-- `7*C(n, 2)+2*n+1` -/
def P12223156232293597533.Spec : Prop :=
  ∀ n, (P12223156232293597533.a n : ℤ) = A140065 (n + 1)

end A140065

/-! ## A140065.P8680678417305133267

`a(n-1)+7*n-5` with `a(0)=1`
-/

namespace A140065.P8680678417305133267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + ((7 * n : ℤ) - 5)

end

end A140065.P8680678417305133267

namespace A140065

/-- `a(n-1)+7*n-5` -/
def P8680678417305133267.Spec : Prop :=
  ∀ n, P8680678417305133267.a n = A140065 (n + 1)

end A140065

/-! ## A140065.P4816023404233780646

`abs(C(7*n, 2)/7-(n-1))`
-/

namespace A140065.P4816023404233780646
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(Nat.choose (7 * n) 2 : ℚ) / 7 - ((n : ℤ) - 1 : ℚ)|

end

end A140065.P4816023404233780646

namespace A140065

/-- `abs(C(7*n, 2)/7-(n-1))` -/
def P4816023404233780646.Spec : Prop :=
  ∀ n, P4816023404233780646.a n = (A140065 (n + 1) : ℚ)

end A140065

/-! ## A140065.P9075828569409333299

`floor(C(7*n, 2)/7-(n-1))`
-/

namespace A140065.P9075828569409333299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.choose (7 * n) 2 : ℚ) / 7 - ((n : ℤ) - 1 : ℚ)⌋

end

end A140065.P9075828569409333299

namespace A140065

/-- `floor(C(7*n, 2)/7-(n-1))` -/
def P9075828569409333299.Spec : Prop :=
  ∀ n, P9075828569409333299.a n = A140065 (n + 1)

end A140065

/-! ## A140065.P338111131086306757

`floor(7*n-(5-a(n-1)))` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A140065.P338111131086306757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (7 * n : ℤ) - (5 - a (n - 1))

end

end A140065.P338111131086306757

namespace A140065

/-- `floor(7*n-(5-a(n-1)))` -/
def P338111131086306757.Spec : Prop :=
  ∀ n, P338111131086306757.a n = A140065 (n + 1)

theorem P338111131086306757.correct : P338111131086306757.Spec := by
  intro n
  simp only [A140065, Nat.add_sub_cancel, A140065.P338111131086306757.a, A140065.P8537564728411649119.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A140065

/-! ## A140065.P4587159264854996886

`A218471(n)+1`
-/

namespace A140065.P4587159264854996886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218471 n + 1

end

end A140065.P4587159264854996886

namespace A140065

/-- `A218471(n)+1` -/
def P4587159264854996886.Spec : Prop :=
  ∀ n, P4587159264854996886.a n = A140065 (n + 1)

end A140065

/-! ## A140065.P11446372896272888118

`A389608(n)+n`
-/

namespace A140065.P11446372896272888118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389608 n + (n : ℤ)

end

end A140065.P11446372896272888118

namespace A140065

/-- `A389608(n)+n` -/
def P11446372896272888118.Spec : Prop :=
  ∀ n, P11446372896272888118.a n = A140065 (n + 1)

end A140065

/-! ## A140065.P11964862856542296808

`A140063(n)-n`
-/

namespace A140065.P11964862856542296808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140063 n - (n : ℤ)

end

end A140065.P11964862856542296808

namespace A140065

/-- `A140063(n)-n` -/
def P11964862856542296808.Spec : Prop :=
  ∀ n, P11964862856542296808.a n = A140065 (n + 1)

end A140065

/-! ## A140065.P13531421316941508152

`A192136(n)+n²`
-/

namespace A140065.P13531421316941508152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192136 n + (n ^ 2 : ℤ)

end

end A140065.P13531421316941508152

namespace A140065

/-- `A192136(n)+n²` -/
def P13531421316941508152.Spec : Prop :=
  ∀ n, P13531421316941508152.a n = A140065 (n + 1)

end A140065

/-! ## A140065.P3573682993589337254

`A080855(n)-n²`
-/

namespace A140065.P3573682993589337254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080855 n - (n ^ 2 : ℤ)

end

end A140065.P3573682993589337254

namespace A140065

/-- `A080855(n)-n²` -/
def P3573682993589337254.Spec : Prop :=
  ∀ n, P3573682993589337254.a n = A140065 (n + 1)

end A140065

/-! ## A140065.P12712243118533670333

`A056105(n)+∑[n]`
-/

namespace A140065.P12712243118533670333
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056105 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A140065.P12712243118533670333

namespace A140065

/-- `A056105(n)+∑[n]` -/
def P12712243118533670333.Spec : Prop :=
  ∀ n, P12712243118533670333.a n = A140065 (n + 1)

end A140065

/-! ## A140065.P14890654384465224111

`A316466(n)/4+1`
-/

namespace A140065.P14890654384465224111
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A316466 n : ℚ) / 4 + 1

end

end A140065.P14890654384465224111

namespace A140065

/-- `A316466(n)/4+1` -/
def P14890654384465224111.Spec : Prop :=
  ∀ n, P14890654384465224111.a n = (A140065 (n + 1) : ℚ)

end A140065

/-! ## A140065.P16224189880956449396

`A001106(n)+1+n`
-/

namespace A140065.P16224189880956449396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001106 n + 1 + (n : ℤ)

end

end A140065.P16224189880956449396

namespace A140065

/-- `A001106(n)+1+n` -/
def P16224189880956449396.Spec : Prop :=
  ∀ n, P16224189880956449396.a n = A140065 (n + 1)

end A140065

/-! ## A140065.P9395220351508798652

`A022264(n)+1-n`
-/

namespace A140065.P9395220351508798652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022264 n + (1 - (n : ℤ))

end

end A140065.P9395220351508798652

namespace A140065

/-- `A022264(n)+1-n` -/
def P9395220351508798652.Spec : Prop :=
  ∀ n, P9395220351508798652.a n = A140065 (n + 1)

end A140065

/-!
# A140066: a(n) = (5*n^2 - 11*n + 8)/2.

The programs for A140066, the canonical program `A140066.P434325832109536467` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A140066 has offset 1).

The definition of A140066 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(5*(n+1)²-11*(n+1)+8)/2` (program `A140066.P5235283600620501767`, by `A140066.P5235283600620501767.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A140066.P434325832109536467

`a(n-1)+5*(n+1)-8` with `a(0)=1`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A140066

/-- `a(n-1)+5*(n+1)-8` -/
def P434325832109536467.Spec : Prop :=
  ∀ n, P434325832109536467.a n = A140066 (n + 1)

theorem P434325832109536467.correct : P434325832109536467.Spec := by
  intro n
  simp only [A140066, Nat.add_sub_cancel]

end A140066

/-! ## A140066.P5235283600620501767

`(5*(n+1)²-11*(n+1)+8)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A140066.P5235283600620501767
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((5 * (n + 1) ^ 2 : ℤ) - (11 * (n + 1) : ℤ) + 8 : ℚ) / 2

end

end A140066.P5235283600620501767

namespace A140066

/-- `(5*(n+1)²-11*(n+1)+8)/2` -/
def P5235283600620501767.Spec : Prop :=
  ∀ n, P5235283600620501767.a n = (A140066 (n + 1) : ℚ)

theorem P5235283600620501767.correct : P5235283600620501767.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A140066, Nat.add_sub_cancel, A140066.P5235283600620501767.a, A140066.P434325832109536467.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A140066, Nat.add_sub_cancel, A140066.P5235283600620501767.a, A140066.P434325832109536467.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A140066

/-! ## A140066.P17385433270692065973

`∑[a(n-1)+5]` with `a(0)=1, a(1)=2`
-/

namespace A140066.P17385433270692065973
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n f1 =>
  f1 (n - 1) + 5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A140066.P17385433270692065973

namespace A140066

/-- `∑[a(n-1)+5]` -/
def P17385433270692065973.Spec : Prop :=
  ∀ n, (P17385433270692065973.a n : ℤ) = A140066 (n + 1)

end A140066

/-! ## A140066.P6674778583827834111

`∑[ogf((1+4x^2)/(1-2x+x^2))]`
-/

namespace A140066.P6674778583827834111
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 0, 4] [1, -2, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A140066.P6674778583827834111

namespace A140066

/-- `∑[ogf((1+4x^2)/(1-2x+x^2))]` -/
def P6674778583827834111.Spec : Prop :=
  ∀ n, P6674778583827834111.a n = A140066 (n + 1)

end A140066

/-! ## A140066.P410872537644551101

`ogf((1+4x^2)/(1-3x+3x^2-x^3))`
-/

namespace A140066.P410872537644551101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 0, 4] [1, -3, 3, -1] n

end

end A140066.P410872537644551101

namespace A140066

/-- `ogf((1+4x^2)/(1-3x+3x^2-x^3))` -/
def P410872537644551101.Spec : Prop :=
  ∀ n, P410872537644551101.a n = A140066 (n + 1)

end A140066

/-! ## A140066.P1250204491763923448

`floor(C(2*n, 2)+∑[n]+ϕ)`
-/

namespace A140066.P1250204491763923448
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.choose (2 * n) 2 : ℝ) + (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ) + Real.goldenRatio)⌋

end

end A140066.P1250204491763923448

namespace A140066

/-- `floor(C(2*n, 2)+∑[n]+ϕ)` -/
def P1250204491763923448.Spec : Prop :=
  ∀ n, P1250204491763923448.a n = A140066 (n + 1)

end A140066

/-! ## A140066.P3700873498447978570

`floor(5*n+a(n-1)-3)` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A140066.P3700873498447978570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (5 * n : ℤ) + (a (n - 1) - 3)

end

end A140066.P3700873498447978570

namespace A140066

/-- `floor(5*n+a(n-1)-3)` -/
def P3700873498447978570.Spec : Prop :=
  ∀ n, P3700873498447978570.a n = A140066 (n + 1)

end A140066

/-! ## A140066.P10823500263786224677

`floor(5*n-(3-a(n-1)))` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A140066.P10823500263786224677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (5 * n : ℤ) - (3 - a (n - 1))

end

end A140066.P10823500263786224677

namespace A140066

/-- `floor(5*n-(3-a(n-1)))` -/
def P10823500263786224677.Spec : Prop :=
  ∀ n, P10823500263786224677.a n = A140066 (n + 1)

end A140066

/-! ## A140066.P11641094226695954368

`∑[lcm(2, n-1+n)+n-1]`
-/

namespace A140066.P11641094226695954368
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.lcm 2 ((n : ℤ) - 1 + (n : ℤ)) : ℤ) + ((n : ℤ) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A140066.P11641094226695954368

namespace A140066

/-- `∑[lcm(2, n-1+n)+n-1]` -/
def P11641094226695954368.Spec : Prop :=
  ∀ n, P11641094226695954368.a n = A140066 (n + 1)

end A140066

/-! ## A140066.P7027737143719370861

`5*(n-(3-a(n-1))/5)` with `a(0)=1`
-/

namespace A140066.P7027737143719370861
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  5 * ((n : ℚ) - (3 - a (n - 1)) / 5)

end

end A140066.P7027737143719370861

namespace A140066

/-- `5*(n-(3-a(n-1))/5)` -/
def P7027737143719370861.Spec : Prop :=
  ∀ n, P7027737143719370861.a n = (A140066 (n + 1) : ℚ)

end A140066

/-! ## A140066.P2574099252375650101

`floor((∑[n+3]+9*C(n, 2))/2)`
-/

namespace A140066.P2574099252375650101
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ j ∈ Finset.range (n + 1), f1 j + 9 * Nat.choose n 2 : ℕ) : ℚ) / 2⌋

end

end A140066.P2574099252375650101

namespace A140066

/-- `floor((∑[n+3]+9*C(n, 2))/2)` -/
def P2574099252375650101.Spec : Prop :=
  ∀ n, P2574099252375650101.a n = A140066 (n + 1)

end A140066

/-! ## A140066.P10952327545425385402

`floor(3-∑[a(n-1)-5]-n)` with `a(0)=2`

`floor` is left out, it is the identity on integers.
-/

namespace A140066.P10952327545425385402
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f1 =>
  f1 (n - 1) - 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A140066.P10952327545425385402

namespace A140066

/-- `floor(3-∑[a(n-1)-5]-n)` -/
def P10952327545425385402.Spec : Prop :=
  ∀ n, P10952327545425385402.a n = A140066 (n + 1)

end A140066

/-! ## A140066.P17905037481537714742

`abs(2-(5*(1-n)-a(n-1)))` with `a(0)=1`
-/

namespace A140066.P17905037481537714742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  |2 - (5 * (1 - (n : ℤ)) - a (n - 1))|

end

end A140066.P17905037481537714742

namespace A140066

/-- `abs(2-(5*(1-n)-a(n-1)))` -/
def P17905037481537714742.Spec : Prop :=
  ∀ n, P17905037481537714742.a n = A140066 (n + 1)

end A140066

/-! ## A140066.P14370736663724648378

`abs(C(n+2, 2)+(n-1)*2*n)`
-/

namespace A140066.P14370736663724648378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(Nat.choose (n + 2) 2 : ℤ) + ((n : ℤ) - 1) * (2 * n : ℤ)|

end

end A140066.P14370736663724648378

namespace A140066

/-- `abs(C(n+2, 2)+(n-1)*2*n)` -/
def P14370736663724648378.Spec : Prop :=
  ∀ n, P14370736663724648378.a n = A140066 (n + 1)

end A140066

/-! ## A140066.P2367067815534663595

`∑[4*(2*n)%(n+1)+n+1]`
-/

namespace A140066.P2367067815534663595
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * (2 * n % (n + 1)) + (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A140066.P2367067815534663595

namespace A140066

/-- `∑[4*(2*n)%(n+1)+n+1]` -/
def P2367067815534663595.Spec : Prop :=
  ∀ n, (P2367067815534663595.a n : ℤ) = A140066 (n + 1)

end A140066

/-! ## A140066.P14746143851451285799

`∑[2*a(n-1)-a(n-2)]` with `a(0)=1, a(1)=2, a(2)=7`
-/

namespace A140066.P14746143851451285799
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 7] fun n f1 =>
  2 * f1 (n - 1) - f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A140066.P14746143851451285799

namespace A140066

/-- `∑[2*a(n-1)-a(n-2)]` -/
def P14746143851451285799.Spec : Prop :=
  ∀ n, P14746143851451285799.a n = A140066 (n + 1)

end A140066

/-! ## A140066.P4310666724526752902

`floor(a(n-1)+a(n-1)+5-a(n-2))` with `a(0)=1, a(1)=3`

`floor` is left out, it is the identity on integers.
-/

namespace A140066.P4310666724526752902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  a (n - 1) + (a (n - 1) + 5) - a (n - 2)

end

end A140066.P4310666724526752902

namespace A140066

/-- `floor(a(n-1)+a(n-1)+5-a(n-2))` -/
def P4310666724526752902.Spec : Prop :=
  ∀ n, P4310666724526752902.a n = A140066 (n + 1)

end A140066

/-! ## A140066.P417718497002173105

`floor(a(n-1)-(a(n-2)-a(n-1)-5))` with `a(0)=1, a(1)=3`

`floor` is left out, it is the identity on integers.
-/

namespace A140066.P417718497002173105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  a (n - 1) - (a (n - 2) - a (n - 1) - 5)

end

end A140066.P417718497002173105

namespace A140066

/-- `floor(a(n-1)-(a(n-2)-a(n-1)-5))` -/
def P417718497002173105.Spec : Prop :=
  ∀ n, P417718497002173105.a n = A140066 (n + 1)

end A140066

/-! ## A140066.P10969908203675672151

`A005476(n)+1`
-/

namespace A140066.P10969908203675672151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005476 n + 1

end

end A140066.P10969908203675672151

namespace A140066

/-- `A005476(n)+1` -/
def P10969908203675672151.Spec : Prop :=
  ∀ n, P10969908203675672151.a n = A140066 (n + 1)

end A140066

/-! ## A140066.P6024066515560934025

`A192136(n)+n`
-/

namespace A140066.P6024066515560934025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192136 n + (n : ℤ)

end

end A140066.P6024066515560934025

namespace A140066

/-- `A192136(n)+n` -/
def P6024066515560934025.Spec : Prop :=
  ∀ n, P6024066515560934025.a n = A140066 (n + 1)

end A140066

/-!
# A140067: Records in A137849.

The programs for A140067, there is no canonical definition to state claims against.
-/

/-! ## A140067.P9882298189574499537

`record[gcd(A066926(n+1), A070172(n+1))]`
-/

namespace A140067.P9882298189574499537
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A066926 (n + 1)) (A070172 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A140067.P9882298189574499537

/-! ## A140067.P17792908921188256113

`record[A070172(A197625(A077028(n)))]`
-/

namespace A140067.P17792908921188256113
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070172 (A197625 (A077028 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A140067.P17792908921188256113

/-! ## A140067.P4863295707771045093

`∩[A002093(n+1), A358458(n+1)]`
-/

namespace A140067.P4863295707771045093
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002093 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358458 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140067.P4863295707771045093

/-! ## A140067.P16480432279402603278

`∩[A309943(n+1), A358458(n+1)]`
-/

namespace A140067.P16480432279402603278
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309943 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358458 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140067.P16480432279402603278

/-! ## A140067.P7894495439267753893

`∩[A316886(n+1), A358458(n+1)]`
-/

namespace A140067.P7894495439267753893
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316886 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358458 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140067.P7894495439267753893

/-!
# A140068: Triangle read by rows, n-th row = (n-1)-th power of the matrix X * [1,0,0,0,...] where X = an infinite lower triangular matrix with [1,2,1,2,1,2,...] in the main diagonal and [1,1,1,...] in the subdiagonal.

The programs for A140068, there is no canonical definition to state claims against.
-/

/-! ## A140068.P14733001209804182975

`A209172(∑[char[∑[n]]]²-n)`
-/

namespace A140068.P14733001209804182975
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209172 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - n)

end

end A140068.P14733001209804182975

/-! ## A140068.P2753956327806728373

`and(-1, A209172(A038722(n+1)))`
-/

namespace A140068.P2753956327806728373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A209172 (A038722 (n + 1)).toNat)

end

end A140068.P2753956327806728373

/-! ## A140068.P11160257555723387087

`A209172(A038722(n+1))^A035214(n)`
-/

namespace A140068.P11160257555723387087
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A209172 (A038722 (n + 1)).toNat : ℚ) ^ (A035214 n : ℤ)

end

end A140068.P11160257555723387087

/-! ## A140068.P8667915000052401465

`gcd(A000038(n), A209172(A038722(n+1)))`
-/

namespace A140068.P8667915000052401465
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A209172 (A038722 (n + 1)).toNat)

end

end A140068.P8667915000052401465

/-! ## A140068.P8971583430601988249

`A209172(A038722(n+1))^A000041(C(2, n))`
-/

namespace A140068.P8971583430601988249
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A209172 (A038722 (n + 1)).toNat : ℚ) ^ (A000041 (Nat.choose 2 n) : ℤ)

end

end A140068.P8971583430601988249

/-! ## A140068.P11416680993913422590

`A018252(gcd(n, n+1))*A209172(A038722(n+1))`
-/

namespace A140068.P11416680993913422590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (Nat.gcd n (n + 1)) * A209172 (A038722 (n + 1)).toNat

end

end A140068.P11416680993913422590

/-! ## A140068.P6465747295853019830

`A209172(A038722(n+1))%A000041(n+2)`
-/

namespace A140068.P6465747295853019830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A209172 (A038722 (n + 1)).toNat) (A000041 (n + 2))

end

end A140068.P6465747295853019830

/-! ## A140068.P3603417354360696597

`∑{d}[A209172(A038722(n+1)), A000010(#)]`
-/

namespace A140068.P3603417354360696597
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209172 (A038722 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A140068.P3603417354360696597

/-!
# A140069: Triangle read by rows, n-th row = (n-1)-th power of the matrix X * [1,0,0,0,...]; where X = an infinite lower triangular bidiagonal matrix with [2,1,2,1,2,1,...] and [1,1,1,...] in the subdiagonal.

The programs for A140069, there is no canonical definition to state claims against.
-/

/-! ## A140069.P15227997373660040979

`A209413(∑[char[∑[n]]]²-n)`
-/

namespace A140069.P15227997373660040979
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209413 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - n)

end

end A140069.P15227997373660040979

/-! ## A140069.P1180620275977799465

`A209413(A038722(char[1]+1+n))+char[1]`
-/

namespace A140069.P1180620275977799465
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209413 (A038722 ((if ∃ j, f1 j = n then 1 else 0) + 1 + n)).toNat + ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

end

end A140069.P1180620275977799465

/-! ## A140069.P2615038774932176038

`A000040(n+2)%2*A209413(A038722(n+1))`
-/

namespace A140069.P2615038774932176038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (n + 2)) 2 * A209413 (A038722 (n + 1)).toNat

end

end A140069.P2615038774932176038

/-! ## A140069.P9236098698008166176

`A007318(and(3, 2-n))*A209413(A038722(n+1))`
-/

namespace A140069.P9236098698008166176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Int.land 3 (2 - (n : ℤ))).toNat * A209413 (A038722 (n + 1)).toNat

end

end A140069.P9236098698008166176

/-! ## A140069.P10655455513614510465

`A000041(∑[(-1)^n])*A209413(A038722(n+1))`
-/

namespace A140069.P10655455513614510465
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (∑ j ∈ Finset.range (n + 1), f1 j).toNat * A209413 (A038722 (n + 1)).toNat

end

end A140069.P10655455513614510465

/-! ## A140069.P13711084722747528941

`A014963(10*(n+1))*A209413(A038722(n+1))`
-/

namespace A140069.P13711084722747528941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (10 * (n + 1)) * A209413 (A038722 (n + 1)).toNat

end

end A140069.P13711084722747528941

/-! ## A140069.P12315283299763923993

`∑{d}[A209413(A038722(n+1)), A000010(#)]`
-/

namespace A140069.P12315283299763923993
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209413 (A038722 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A140069.P12315283299763923993

/-! ## A140069.P7555265495632152343

`A209413(∑[A198954(n)-1]+1)%p?[n*(6*n-2)+1]`
-/

namespace A140069.P7555265495632152343
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198954 n - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * ((6 * n : ℤ) - 2) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A209413 (∑ j ∈ Finset.range (n + 1), f1 j + 1).toNat) (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n))

end

end A140069.P7555265495632152343

/-!
# A140070: Triangle read by rows, iterates of matrix X * [1,0,0,0,...], where X = an infinite lower bidiagonal matrix with [1,3,1,3,1,3,...] in the main diagonal and [1,1,1,...] in the subdiagonal.

The programs for A140070, there is no canonical definition to state claims against.
-/

/-! ## A140070.P6197085670861036123

`A124572(n)/A056449(A002262(n))`
-/

namespace A140070.P6197085670861036123
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A124572 n : ℚ) / (A056449 (A002262 n).toNat : ℚ)

end

end A140070.P6197085670861036123

/-! ## A140070.P11216576049138185498

`A124572(n)/A056449(log2(A059268(n)))`
-/

namespace A140070.P11216576049138185498
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A124572 n : ℚ) / (A056449 (SequenceMachineLib.roundAway (Real.logb 2 (A059268 n : ℝ))).toNat : ℚ)

end

end A140070.P11216576049138185498

/-! ## A140070.P5854574015458627205

`A213513(A114276(n+1))`
-/

namespace A140070.P5854574015458627205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213513 (A114276 (n + 1)).toNat

end

end A140070.P5854574015458627205

/-! ## A140070.P12362991108296326753

`A373948(A139382(n+1))`
-/

namespace A140070.P12362991108296326753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373948 (A139382 (n + 1)).toNat

end

end A140070.P12362991108296326753

/-! ## A140070.P2221111443591185968

`and(-A093778(2*n+3), A022167(n))`
-/

namespace A140070.P2221111443591185968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-A093778 (2 * n + 3)) (A022167 n)

end

end A140070.P2221111443591185968

/-!
# A140071: Triangle read by rows: iterates of X * [1,0,0,0,...]; where X = an infinite lower bidiagonal matrix with [3,1,3,1,3,1...] in the main diagonal and [1,1,1,...] in the subdiagonal.

The programs for A140071, there is no canonical definition to state claims against.
-/

/-! ## A140071.P10569561788563102553

`A335462(A055008(n+1))+A106516(n)`
-/

namespace A140071.P10569561788563102553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335462 (A055008 (n + 1)).toNat + A106516 n

end

end A140071.P10569561788563102553

/-! ## A140071.P15034259173178835762

`or(A081603(A064731(n+1)), A106516(n))`
-/

namespace A140071.P15034259173178835762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A081603 (A064731 (n + 1)).toNat) (A106516 n)

end

end A140071.P15034259173178835762

/-! ## A140071.P16944914075294376522

`or(A067742(A106527(n+1)), A106516(n))`
-/

namespace A140071.P16944914075294376522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A067742 (A106527 (n + 1)).toNat) (A106516 n)

end

end A140071.P16944914075294376522

/-! ## A140071.P16246572428607110110

`or(A106516(n), A123391(A110866(n+1)+1))`
-/

namespace A140071.P16246572428607110110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A106516 n) (A123391 (A110866 (n + 1) + 1).toNat)

end

end A140071.P16246572428607110110

/-! ## A140071.P12660722148143067619

`A106516(n)+A046660(A002426(n))`
-/

namespace A140071.P12660722148143067619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106516 n + A046660 (A002426 n).toNat

end

end A140071.P12660722148143067619

/-!
# A140073: Values of y in A033205.

The programs for A140073, there is no canonical definition to state claims against.
-/

/-! ## A140073.P3968764321408860819

`A144079(A107849(n)+A069775(n))`
-/

namespace A140073.P3968764321408860819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144079 (A107849 n + A069775 n).toNat

end

end A140073.P3968764321408860819

/-!
# A140074: Excess over the asymptote of the number of perfect squares between cubes.

The programs for A140074, there is no canonical definition to state claims against.
-/

/-! ## A140074.P3905512457005452625

`A179081(A268781(n+1)+A070333(n))`
-/

namespace A140074.P3905512457005452625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179081 (A268781 (n + 1) + A070333 n).toNat

end

end A140074.P3905512457005452625

/-! ## A140074.P11563772108559215640

`A010060(A290270(n+3)-A093783(n+1))`
-/

namespace A140074.P11563772108559215640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 (A290270 (n + 3) - A093783 (n + 1)).toNat

end

end A140074.P11563772108559215640

/-! ## A140074.P5585274404766440638

`A168046(A168046(2*(n+2))+A027480(n))`
-/

namespace A140074.P5585274404766440638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168046 (A168046 (2 * (n + 2)) + A027480 n).toNat

end

end A140074.P5585274404766440638

/-! ## A140074.P5610536681845640400

`A053867(A189934(A189934(n+1)²))`
-/

namespace A140074.P5610536681845640400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053867 (A189934 (A189934 (n + 1) ^ 2).toNat).toNat

end

end A140074.P5610536681845640400

/-! ## A140074.P3258683674892914393

`A030308(A055941(n+2)+A001248(n+1))`
-/

namespace A140074.P3258683674892914393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030308 (A055941 (n + 2) + A001248 (n + 1)).toNat

end

end A140074.P3258683674892914393

/-!
# A140077: Numbers n such that n and n+1 have 3 distinct prime factors.

The programs for A140077, the canonical program `A140077.P5536516406055941759` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A140077 has offset 1).

The definition of A140077 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3489 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A140077.P5536516406055941759

`∩[A006049(n+1), A033992(n+1)]`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A140077

/-- `∩[A006049(n+1), A033992(n+1)]` -/
def P5536516406055941759.Spec : Prop :=
  ∀ n, (P5536516406055941759.a n : ℤ) = A140077 (n + 1)

theorem P5536516406055941759.correct : P5536516406055941759.Spec := by
  intro n
  simp only [A140077, Nat.add_sub_cancel]

end A140077

/-! ## A140077.P14536242222771475580

`∩[A006049(n+1), A214195(n+1)]`
-/

namespace A140077.P14536242222771475580
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006049 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214195 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140077.P14536242222771475580

namespace A140077

/-- `∩[A006049(n+1), A214195(n+1)]` -/
def P14536242222771475580.Spec : Prop :=
  ∀ n, (P14536242222771475580.a n : ℤ) = A140077 (n + 1)

end A140077

/-! ## A140077.P750106394651399238

`∩[A033992(n+2), A033992(n+1)-1]`
-/

namespace A140077.P750106394651399238
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033992 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033992 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140077.P750106394651399238

namespace A140077

/-- `∩[A033992(n+2), A033992(n+1)-1]` -/
def P750106394651399238.Spec : Prop :=
  ∀ n, (P750106394651399238.a n : ℤ) = A140077 (n + 1)

end A140077

/-! ## A140077.P18418613363524908906

`∩[A214195(n+2)-1, A214195(n+2)]`
-/

namespace A140077.P18418613363524908906
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214195 (n + 2) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214195 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140077.P18418613363524908906

namespace A140077

/-- `∩[A214195(n+2)-1, A214195(n+2)]` -/
def P18418613363524908906.Spec : Prop :=
  ∀ n, (P18418613363524908906.a n : ℤ) = A140077 (n + 1)

end A140077

/-! ## A140077.P17376091666244899480

`A033992(eq[1, A033992(n+2)-A033992(n+1)]+1)`
-/

namespace A140077.P17376091666244899480
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033992 (n + 2) - A033992 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033992 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A140077.P17376091666244899480

namespace A140077

/-- `A033992(eq[1, A033992(n+2)-A033992(n+1)]+1)` -/
def P17376091666244899480.Spec : Prop :=
  ∀ n, P17376091666244899480.a n = A140077 (n + 1)

end A140077

/-! ## A140077.P2234710141914430965

`∩[A006049(n+1), A321502(n+1)]`
-/

namespace A140077.P2234710141914430965
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006049 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321502 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140077.P2234710141914430965

namespace A140077

/-- `∩[A006049(n+1), A321502(n+1)]` -/
def P2234710141914430965.Spec : Prop :=
  ∀ n, (P2234710141914430965.a n : ℤ) = A140077 (n + 1)

end A140077

/-!
# A140079: Numbers n such that n and n+1 have 5 distinct prime factors.

The programs for A140079, there is no canonical definition to state claims against.
-/

/-! ## A140079.P5848091764926060480

`A321505(n+1)%A014889(n+1)`
-/

namespace A140079.P5848091764926060480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A321505 (n + 1)) (A014889 (n + 1))

end

end A140079.P5848091764926060480

/-! ## A140079.P10740197576226981189

`lcm(A164660(3*n), A321505(n+1))`
-/

namespace A140079.P10740197576226981189
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A164660 (3 * n)) (A321505 (n + 1))

end

end A140079.P10740197576226981189

/-! ## A140079.P3828963910679508534

`A321505(n+1)+A000007(A011779(n))`
-/

namespace A140079.P3828963910679508534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321505 (n + 1) + A000007 (A011779 n).toNat

end

end A140079.P3828963910679508534

/-! ## A140079.P755005996606442277

`A366388(A016116(n))+A321505(n+1)`
-/

namespace A140079.P755005996606442277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366388 (A016116 n).toNat + A321505 (n + 1)

end

end A140079.P755005996606442277

/-! ## A140079.P3231141822112079037

`A321505(n+1)%A245210(n)`
-/

namespace A140079.P3231141822112079037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A321505 (n + 1)) (A245210 n)

end

end A140079.P3231141822112079037

/-!
# A140080: Fix e = 3; a(n) = minimal Hamming distance between the binary representation of n and the binary representation of any multiple ke (0 <= k <= n/e) which is a child of n.

The programs for A140080, there is no canonical definition to state claims against.
-/

/-! ## A140080.P4080811125474368189

`A140083(2*n)`
-/

namespace A140080.P4080811125474368189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140083 (2 * n)

end

end A140080.P4080811125474368189

/-! ## A140080.P10100823509057709288

`dr(A140083(lcm(2, n)))`
-/

namespace A140080.P10100823509057709288
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A140083 (Nat.lcm 2 n))

end

end A140080.P10100823509057709288

/-! ## A140080.P17477415299454391668

`A140083(n+n)%3`
-/

namespace A140080.P17477415299454391668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A140083 (n + n)) 3

end

end A140080.P17477415299454391668

/-! ## A140080.P12581576982426192775

`A140083(A004277(n))-A000007(n)`
-/

namespace A140080.P12581576982426192775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140083 (A004277 n).toNat - A000007 n

end

end A140080.P12581576982426192775

/-! ## A140080.P5990125566491429971

`A140083(Δ[n²])-1`
-/

namespace A140080.P5990125566491429971
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140083 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - 1

end

end A140080.P5990125566491429971

/-! ## A140080.P13516111775430773675

`5%A140083(A005408(n))`
-/

namespace A140080.P13516111775430773675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod 5 (A140083 (A005408 n).toNat)

end

end A140080.P13516111775430773675

/-! ## A140080.P12726374350065805297

`(A140083(A005408(n))-1)^A014963(∑[n+1])`
-/

namespace A140080.P12726374350065805297
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A140083 (A005408 n).toNat - 1 : ℚ) ^ (A014963 (∑ j ∈ Finset.range (n + 1), f1 j) : ℤ)

end

end A140080.P12726374350065805297

/-! ## A140080.P1735405393403924667

`xor(A000007(n²), A140083(A004277(n)))`
-/

namespace A140080.P1735405393403924667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000007 (n ^ 2)) (A140083 (A004277 n).toNat)

end

end A140080.P1735405393403924667

/-! ## A140080.P14140234414107592721

`and(A151774(n)+A010125(n), A008576(n²))`
-/

namespace A140080.P14140234414107592721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A151774 n + A010125 n) (A008576 (n ^ 2))

end

end A140080.P14140234414107592721

/-!
# A140081: Period 4: repeat [0, 1, 1, 2].

The programs for A140081, the canonical program `A140081.P14265476151605300908` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A140081 has offset 0).

The definition of A140081 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A140081.P14265476151605300908

`a(n-4)` with `a(0)=0, a(1)=1, a(2)=1, a(3)=2`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A140081

/-- `a(n-4)` -/
def P14265476151605300908.Spec : Prop :=
  ∀ n, (P14265476151605300908.a n : ℤ) = A140081 n

theorem P14265476151605300908.correct : P14265476151605300908.Spec := by
  intro n
  simp only [A140081]

end A140081

/-!
# A140082: Same as A140080, except now e=5.

The programs for A140082, there is no canonical definition to state claims against.
-/

/-! ## A140082.P1473432030267283719

`Δ[A140202(ceil(acot(n)+n)-2)]`
-/

namespace A140082.P1473432030267283719
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140202 (⌈SequenceMachineLib.acot (n : ℝ) + (n : ℝ)⌉ - 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A140082.P1473432030267283719

/-! ## A140082.P3237673791204383551

`Δ[A140202(-1%(n+1)+n)]`
-/

namespace A140082.P3237673791204383551
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140202 (Int.tmod (-1) (n + 1 : ℤ) + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A140082.P3237673791204383551

/-! ## A140082.P15349048467167309342

`Δ[A140202(n-ceil(n/(n+1)))]`
-/

namespace A140082.P15349048467167309342
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140202 ((n : ℤ) - ⌈(n : ℚ) / (n + 1 : ℚ)⌉).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A140082.P15349048467167309342

/-! ## A140082.P13466590811828565861

`abs(Δ[A140202(A004273(n)-n)])`
-/

namespace A140082.P13466590811828565861
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140202 (A004273 n - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A140082.P13466590811828565861

/-! ## A140082.P11934330200889178230

`A140202(n)-A140202((2*n)%(n+1))`
-/

namespace A140082.P11934330200889178230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140202 n - A140202 (2 * n % (n + 1))

end

end A140082.P11934330200889178230

/-! ## A140082.P15321028937107544979

`A140202(n)-A140202(A004273(n)-n)`
-/

namespace A140082.P15321028937107544979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140202 n - A140202 (A004273 n - (n : ℤ)).toNat

end

end A140082.P15321028937107544979

/-!
# A140083: Same as A140080, except now e=6.

The programs for A140083, there is no canonical definition to state claims against.
-/

/-! ## A140083.P9689963616163556618

`A140080(A052928(n))+and(1, n)`
-/

namespace A140083.P9689963616163556618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140080 (A052928 n).toNat + (Nat.land 1 n : ℤ)

end

end A140083.P9689963616163556618

/-! ## A140083.P6032033243975965810

`A140080(A004526(n))+A000035(n)`
-/

namespace A140083.P6032033243975965810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140080 (A004526 n).toNat + A000035 n

end

end A140083.P6032033243975965810

/-! ## A140083.P1951457011547521560

`A140080(A029578(n))+A000035(n)`
-/

namespace A140083.P1951457011547521560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140080 (A029578 n).toNat + A000035 n

end

end A140083.P1951457011547521560

/-! ## A140083.P17355474640735804569

`A140080(A052928(n))+A000035(n)`
-/

namespace A140083.P17355474640735804569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140080 (A052928 n).toNat + A000035 n

end

end A140083.P17355474640735804569

/-! ## A140083.P10410695153148121031

`A140080(A004526(n))+Δ[A008619(n)]`
-/

namespace A140083.P10410695153148121031
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140080 (A004526 n).toNat + (f1 (n + 1) - f1 n)

end

end A140083.P10410695153148121031

/-! ## A140083.P18381104447374645172

`A140080(A123108(n))+Δ[A123108(n)]`
-/

namespace A140083.P18381104447374645172
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140080 (A123108 n).toNat + (f1 (n + 1) - f1 n)

end

end A140083.P18381104447374645172

/-! ## A140083.P1728504112458970816

`A140080(n-A000035(n))+A000035(n)`
-/

namespace A140083.P1728504112458970816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140080 ((n : ℤ) - A000035 n).toNat + A000035 n

end

end A140083.P1728504112458970816

/-! ## A140083.P13023745187076393415

`A140080(A004526(n))+A110654(n)-A004526(n)`
-/

namespace A140083.P13023745187076393415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140080 (A004526 n).toNat + (A110654 n - A004526 n)

end

end A140083.P13023745187076393415

/-! ## A140083.P17131843043019858936

`A140081(2*n)+A140080(A004526(n))`
-/

namespace A140083.P17131843043019858936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140081 (2 * n) + A140080 (A004526 n).toNat

end

end A140083.P17131843043019858936

/-! ## A140083.P5247887290780734159

`A140081(2*n)+A140080(A002265(2*n))`
-/

namespace A140083.P5247887290780734159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140081 (2 * n) + A140080 (A002265 (2 * n)).toNat

end

end A140083.P5247887290780734159

/-!
# A140084: Same as A140080, except now e=7.

The programs for A140084, there is no canonical definition to state claims against.
-/

/-! ## A140084.P14704134761876848519

`Δ[A140204(A259361(n²))]`
-/

namespace A140084.P14704134761876848519
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140204 (A259361 (n ^ 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A140084.P14704134761876848519

/-! ## A140084.P7868311182684994180

`Δ[A140204(A337108(n²))]`
-/

namespace A140084.P7868311182684994180
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140204 (A337108 (n ^ 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A140084.P7868311182684994180

/-! ## A140084.P6249490563550694260

`Δ[A140204(A028310(n)-1)]`
-/

namespace A140084.P6249490563550694260
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140204 (A028310 n - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A140084.P6249490563550694260

/-! ## A140084.P1250041063743883761

`Δ[A140204(A004273(n)-n)]`
-/

namespace A140084.P1250041063743883761
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140204 (A004273 n - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A140084.P1250041063743883761

/-! ## A140084.P18399224715799471557

`Δ[A140204(n-A057427(n))]`
-/

namespace A140084.P18399224715799471557
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140204 ((n : ℤ) - A057427 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A140084.P18399224715799471557

/-! ## A140084.P9385026528265213250

`Δ[A140204(A244325(Δ[n²]))]`
-/

namespace A140084.P9385026528265213250
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140204 (A244325 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A140084.P9385026528265213250

/-! ## A140084.P12793185637740110126

`A140204(n)-A140204((2*n)%(n+1))`
-/

namespace A140084.P12793185637740110126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140204 n - A140204 (2 * n % (n + 1))

end

end A140084.P12793185637740110126

/-! ## A140084.P3104134940412841605

`Δ[A140204(A004524(A004273(n)))]`
-/

namespace A140084.P3104134940412841605
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140204 (A004524 (A004273 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A140084.P3104134940412841605

/-! ## A140084.P9793414512186318130

`Δ[A140204(A025480(A004275(n)))]`
-/

namespace A140084.P9793414512186318130
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140204 (A025480 (A004275 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A140084.P9793414512186318130

/-! ## A140084.P15102099344828109887

`Δ[A140204(A002262(A055998(n)))]`
-/

namespace A140084.P15102099344828109887
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140204 (A002262 (A055998 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A140084.P15102099344828109887

/-!
# A140085: Period 8: repeat [0,1,1,2,1,2,2,3].

The programs for A140085, the canonical program `A140085.P1031405469989729072` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A140085 has offset 0).

The definition of A140085 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A140085.P1031405469989729072

`a(n-8)` with `a(0)=0, a(1)=1, a(2)=1, a(3)=2, a(4)=1, a(5)=2, a(6)=2, a(7)=3`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A140085

/-- `a(n-8)` -/
def P1031405469989729072.Spec : Prop :=
  ∀ n, (P1031405469989729072.a n : ℤ) = A140085 n

theorem P1031405469989729072.correct : P1031405469989729072.Spec := by
  intro n
  simp only [A140085]

end A140085

/-!
# A140086: Same as A140080, except now e=9.

The programs for A140086, there is no canonical definition to state claims against.
-/

/-! ## A140086.P10851194448327226190

`Δ[A140206(A259361(n²))]`
-/

namespace A140086.P10851194448327226190
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140206 (A259361 (n ^ 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A140086.P10851194448327226190

/-! ## A140086.P6718058504746008632

`Δ[A140206(log2(A011782(n)))]`
-/

namespace A140086.P6718058504746008632
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140206 (SequenceMachineLib.roundAway (Real.logb 2 (A011782 n : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A140086.P6718058504746008632

/-! ## A140086.P7763286908360840464

`Δ[A140206(A057428(n)+n)]`
-/

namespace A140086.P7763286908360840464
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140206 (A057428 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A140086.P7763286908360840464

/-! ## A140086.P10412691129063078889

`Δ[A140206(A004273(n)-n)]`
-/

namespace A140086.P10412691129063078889
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140206 (A004273 n - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A140086.P10412691129063078889

/-! ## A140086.P6476254296153829865

`Δ[A140206(n-A057427(n))]`
-/

namespace A140086.P6476254296153829865
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140206 ((n : ℤ) - A057427 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A140086.P6476254296153829865

/-! ## A140086.P1961166378343108688

`Δ[A140206(n-A057428(n)²)]`
-/

namespace A140086.P1961166378343108688
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140206 ((n : ℤ) - A057428 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A140086.P1961166378343108688

/-! ## A140086.P11758333907444883510

`A140206(n)-A140206((2*n)%(n+1))`
-/

namespace A140086.P11758333907444883510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140206 n - A140206 (2 * n % (n + 1))

end

end A140086.P11758333907444883510

/-! ## A140086.P302936974572760440

`Δ[A140206(A004526(A004273(n)))]`
-/

namespace A140086.P302936974572760440
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140206 (A004526 (A004273 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A140086.P302936974572760440

/-! ## A140086.P10722749551188282472

`Δ[A140206(A004526(A004275(n)))]`
-/

namespace A140086.P10722749551188282472
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140206 (A004526 (A004275 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A140086.P10722749551188282472

/-! ## A140086.P2508567951431330253

`Δ[A140206(A003056(A007590(n)))]`
-/

namespace A140086.P2508567951431330253
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140206 (A003056 (A007590 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A140086.P2508567951431330253

/-!
# A140088: Number of primes p such that n!-p is prime.

The programs for A140088, there is no canonical definition to state claims against.
-/

/-! ## A140088.P3915980613291067303

`A062311(n)*A110591(n)`
-/

namespace A140088.P3915980613291067303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062311 n * A110591 n

end

end A140088.P3915980613291067303

/-! ## A140088.P3448842492143199507

`(2-A045840(n))*A062311(n)`
-/

namespace A140088.P3448842492143199507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A045840 n) * A062311 n

end

end A140088.P3448842492143199507

/-! ## A140088.P9646882487258487828

`A008619(floor(sqrt(n)))*A062311(n)`
-/

namespace A140088.P9646882487258487828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (Nat.sqrt n) * A062311 n

end

end A140088.P9646882487258487828

/-! ## A140088.P2500107960835238063

`A062311(n)*A070939(floor(sqrt(n)))`
-/

namespace A140088.P2500107960835238063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062311 n * A070939 (Nat.sqrt n)

end

end A140088.P2500107960835238063

/-! ## A140088.P14783734939569587797

`(comp[A024216(n)]-n)*A062311(n)`
-/

namespace A140088.P14783734939569587797
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024216 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ)) * A062311 n

end

end A140088.P14783734939569587797

/-!
# A140090: a(n) = n*(3*n + 7)/2.

The programs for A140090, the canonical program `A140090.P16690920310591107271` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A140090 has offset 0).

The definition of A140090 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(3*n+7)/2` (program `A140090.P8900055047100795729`, by `A140090.P8900055047100795729.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A140090.P8900055047100795729

`n*(3*n+7)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A140090.P8900055047100795729
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n * (3 * n + 7) : ℚ) / 2

end

end A140090.P8900055047100795729

namespace A140090

/-- `n*(3*n+7)/2` -/
def P8900055047100795729.Spec : Prop :=
  ∀ n, P8900055047100795729.a n = (A140090 n : ℚ)

theorem P8900055047100795729.correct : P8900055047100795729.Spec := by
  intro n
  induction n with
  | zero => simp [A140090, A140090.P8900055047100795729.a, A140090.P16690920310591107271.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
  | succ m ih =>
    simp only [A140090, Nat.add_sub_cancel, A140090.P8900055047100795729.a, A140090.P16690920310591107271.a, SequenceMachineLib.memo_apply] at ih ⊢
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    try simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
    try push_cast at ih ⊢
    try linarith

end A140090

/-! ## A140090.P16690920310591107271

`a(n-1)+3*n+2` with `a(0)=0`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A140090

/-- `a(n-1)+3*n+2` -/
def P16690920310591107271.Spec : Prop :=
  ∀ n, (P16690920310591107271.a n : ℤ) = A140090 n

theorem P16690920310591107271.correct : P16690920310591107271.Spec := by
  intro n
  simp only [A140090]

end A140090

/-! ## A140090.P7922039991156985866

`Δ[(n+3)*C(n, 2)]`
-/

namespace A140090.P7922039991156985866
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 3) * Nat.choose n 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A140090.P7922039991156985866

namespace A140090

/-- `Δ[(n+3)*C(n, 2)]` -/
def P7922039991156985866.Spec : Prop :=
  ∀ n, P7922039991156985866.a n = A140090 n

end A140090

/-! ## A140090.P14487831743678519637

`∑[a(n-1)+3]` with `a(0)=0, a(1)=5`
-/

namespace A140090.P14487831743678519637
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 5] fun n f1 =>
  f1 (n - 1) + 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A140090.P14487831743678519637

namespace A140090

/-- `∑[a(n-1)+3]` -/
def P14487831743678519637.Spec : Prop :=
  ∀ n, (P14487831743678519637.a n : ℤ) = A140090 n

end A140090

/-! ## A140090.P7782758499844809642

`∑[ogf((5x-2x^2)/(1-2x+x^2))]`
-/

namespace A140090.P7782758499844809642
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 5, -2] [1, -2, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A140090.P7782758499844809642

namespace A140090

/-- `∑[ogf((5x-2x^2)/(1-2x+x^2))]` -/
def P7782758499844809642.Spec : Prop :=
  ∀ n, P7782758499844809642.a n = A140090 n

end A140090

/-! ## A140090.P17060482627499001955

`ogf((5x-2x^2)/(1-3x+3x^2-x^3))`
-/

namespace A140090.P17060482627499001955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 5, -2] [1, -3, 3, -1] n

end

end A140090.P17060482627499001955

namespace A140090

/-- `ogf((5x-2x^2)/(1-3x+3x^2-x^3))` -/
def P17060482627499001955.Spec : Prop :=
  ∀ n, P17060482627499001955.a n = A140090 n

end A140090

/-! ## A140090.P7453496794739768811

`3*C(n+2, 2)-(n+3)`
-/

namespace A140090.P7453496794739768811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * Nat.choose (n + 2) 2 : ℤ) - (n + 3 : ℤ)

end

end A140090.P7453496794739768811

namespace A140090

/-- `3*C(n+2, 2)-(n+3)` -/
def P7453496794739768811.Spec : Prop :=
  ∀ n, P7453496794739768811.a n = A140090 n

end A140090

/-! ## A140090.P7554606372923196882

`n-∑[a(n-1)-3]` with `a(0)=0, a(1)=-4`
-/

namespace A140090.P7554606372923196882
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, -4] fun n f1 =>
  f1 (n - 1) - 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A140090.P7554606372923196882

namespace A140090

/-- `n-∑[a(n-1)-3]` -/
def P7554606372923196882.Spec : Prop :=
  ∀ n, P7554606372923196882.a n = A140090 n

end A140090

/-! ## A140090.P10594414684925517372

`∑[(n+1)*2%(n+2)+n]`
-/

namespace A140090.P10594414684925517372
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * (2 % (n + 2)) + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A140090.P10594414684925517372

namespace A140090

/-- `∑[(n+1)*2%(n+2)+n]` -/
def P10594414684925517372.Spec : Prop :=
  ∀ n, (P10594414684925517372.a n : ℤ) = A140090 n

end A140090

/-! ## A140090.P17714541064166386018

`4*n-(n-2-a(n-1))` with `a(0)=0`
-/

namespace A140090.P17714541064166386018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (4 * n : ℤ) - ((n : ℤ) - 2 - a (n - 1))

end

end A140090.P17714541064166386018

namespace A140090

/-- `4*n-(n-2-a(n-1))` -/
def P17714541064166386018.Spec : Prop :=
  ∀ n, P17714541064166386018.a n = A140090 n

end A140090

/-! ## A140090.P12048736070903724158

`a(n-1)+2+n+n+n` with `a(0)=0`
-/

namespace A140090.P12048736070903724158
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + 2 + n + n + n

end

end A140090.P12048736070903724158

namespace A140090

/-- `a(n-1)+2+n+n+n` -/
def P12048736070903724158.Spec : Prop :=
  ∀ n, (P12048736070903724158.a n : ℤ) = A140090 n

theorem P12048736070903724158.correct : P12048736070903724158.Spec := by
  intro n
  simp only [A140090, Nat.add_sub_cancel, A140090.P12048736070903724158.a, A140090.P16690920310591107271.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A140090

/-! ## A140090.P9469967112561020476

`floor((n+1)²+C(n+2, 2)-ϕ)`
-/

namespace A140090.P9469967112561020476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((n + 1) ^ 2 : ℝ) + ((Nat.choose (n + 2) 2 : ℝ) - Real.goldenRatio)⌋

end

end A140090.P9469967112561020476

namespace A140090

/-- `floor((n+1)²+C(n+2, 2)-ϕ)` -/
def P9469967112561020476.Spec : Prop :=
  ∀ n, P9469967112561020476.a n = A140090 n

end A140090

/-! ## A140090.P8274145142861678076

`floor(lcm(n+1, n+2)+∑[n]-ϕ)`
-/

namespace A140090.P8274145142861678076
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.lcm (n + 1) (n + 2) : ℝ) + (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ) - Real.goldenRatio)⌋

end

end A140090.P8274145142861678076

namespace A140090

/-- `floor(lcm(n+1, n+2)+∑[n]-ϕ)` -/
def P8274145142861678076.Spec : Prop :=
  ∀ n, P8274145142861678076.a n = A140090 n

end A140090

/-! ## A140090.P11584271689030780178

`A140091(n)-n`
-/

namespace A140090.P11584271689030780178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140091 n - (n : ℤ)

end

end A140090.P11584271689030780178

namespace A140090

/-- `A140091(n)-n` -/
def P11584271689030780178.Spec : Prop :=
  ∀ n, P11584271689030780178.a n = A140090 n

end A140090

/-! ## A140090.P204651668172496072

`∑[A016789(n)]-2`
-/

namespace A140090.P204651668172496072
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016789 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 2

end

end A140090.P204651668172496072

namespace A140090

/-- `∑[A016789(n)]-2` -/
def P204651668172496072.Spec : Prop :=
  ∀ n, P204651668172496072.a n = A140090 n

end A140090

/-! ## A140090.P13861124006546715115

`Δ[A006000(n)]-3`
-/

namespace A140090.P13861124006546715115
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006000 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 3

end

end A140090.P13861124006546715115

namespace A140090

/-- `Δ[A006000(n)]-3` -/
def P13861124006546715115.Spec : Prop :=
  ∀ n, P13861124006546715115.a n = A140090 n

end A140090

/-! ## A140090.P845084364630837925

`A055999(n)+n²`
-/

namespace A140090.P845084364630837925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055999 n + (n ^ 2 : ℤ)

end

end A140090.P845084364630837925

namespace A140090

/-- `A055999(n)+n²` -/
def P845084364630837925.Spec : Prop :=
  ∀ n, P845084364630837925.a n = A140090 n

end A140090

/-! ## A140090.P11578163837084719339

`A028552(n)+∑[n]`
-/

namespace A140090.P11578163837084719339
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028552 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A140090.P11578163837084719339

namespace A140090

/-- `A028552(n)+∑[n]` -/
def P11578163837084719339.Spec : Prop :=
  ∀ n, P11578163837084719339.a n = A140090 n

end A140090

/-! ## A140090.P15426330791339872389

`A095794(n+1)-1`
-/

namespace A140090.P15426330791339872389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095794 (n + 1) - 1

end

end A140090.P15426330791339872389

namespace A140090

/-- `A095794(n+1)-1` -/
def P15426330791339872389.Spec : Prop :=
  ∀ n, P15426330791339872389.a n = A140090 n

end A140090

/-! ## A140090.P6418505221948750999

`A115067(n+1)+n`
-/

namespace A140090.P6418505221948750999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115067 (n + 1) + (n : ℤ)

end

end A140090.P6418505221948750999

namespace A140090

/-- `A115067(n+1)+n` -/
def P6418505221948750999.Spec : Prop :=
  ∀ n, P6418505221948750999.a n = A140090 n

end A140090

/-!
# A140091: a(n) = 3*n*(n + 3)/2.

The programs for A140091, the canonical program `A140091.P14997291960642192641` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A140091 has offset 0).

The definition of A140091 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3*n*(n+3)/2` (program `A140091.P4598625161674009259`, by `A140091.P4598625161674009259.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A140091.P4598625161674009259

`3*n*(n+3)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A140091.P4598625161674009259
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 * n * (n + 3) : ℚ) / 2

end

end A140091.P4598625161674009259

namespace A140091

/-- `3*n*(n+3)/2` -/
def P4598625161674009259.Spec : Prop :=
  ∀ n, P4598625161674009259.a n = (A140091 n : ℚ)

theorem P4598625161674009259.correct : P4598625161674009259.Spec := by
  intro n
  induction n with
  | zero => simp [A140091, A140091.P4598625161674009259.a, A140091.P14997291960642192641.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
  | succ m ih =>
    simp only [A140091, Nat.add_sub_cancel, A140091.P4598625161674009259.a, A140091.P14997291960642192641.a, SequenceMachineLib.memo_apply] at ih ⊢
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    try simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
    try push_cast at ih ⊢
    try linarith

end A140091

/-! ## A140091.P14997291960642192641

`a(n-1)+3*n+3` with `a(0)=0`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A140091

/-- `a(n-1)+3*n+3` -/
def P14997291960642192641.Spec : Prop :=
  ∀ n, (P14997291960642192641.a n : ℤ) = A140091 n

theorem P14997291960642192641.correct : P14997291960642192641.Spec := by
  intro n
  simp only [A140091]

end A140091

/-! ## A140091.P13408573673181676285

`A000096(n)*3`
-/

namespace A140091.P13408573673181676285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000096 n * 3

end

end A140091.P13408573673181676285

namespace A140091

/-- `A000096(n)*3` -/
def P13408573673181676285.Spec : Prop :=
  ∀ n, P13408573673181676285.a n = A140091 n

end A140091

/-! ## A140091.P9630149382749193110

`Δ[(n+4)*C(n, 2)]`
-/

namespace A140091.P9630149382749193110
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 4) * Nat.choose n 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A140091.P9630149382749193110

namespace A140091

/-- `Δ[(n+4)*C(n, 2)]` -/
def P9630149382749193110.Spec : Prop :=
  ∀ n, P9630149382749193110.a n = A140091 n

end A140091

/-! ## A140091.P4478434569613878974

`record[3*(C(n, 2)-n)]`
-/

namespace A140091.P4478434569613878974
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * ((Nat.choose n 2 : ℤ) - (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A140091.P4478434569613878974

namespace A140091

/-- `record[3*(C(n, 2)-n)]` -/
def P4478434569613878974.Spec : Prop :=
  ∀ n, P4478434569613878974.a n = A140091 n

end A140091

/-! ## A140091.P2842208771038011697

`3*C(n+2, 2)-3`
-/

namespace A140091.P2842208771038011697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * Nat.choose (n + 2) 2 : ℤ) - 3

end

end A140091.P2842208771038011697

namespace A140091

/-- `3*C(n+2, 2)-3` -/
def P2842208771038011697.Spec : Prop :=
  ∀ n, P2842208771038011697.a n = A140091 n

end A140091

/-! ## A140091.P1353131345775634417

`∑[a(n-1)+3]` with `a(0)=0, a(1)=6`
-/

namespace A140091.P1353131345775634417
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 6] fun n f1 =>
  f1 (n - 1) + 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A140091.P1353131345775634417

namespace A140091

/-- `∑[a(n-1)+3]` -/
def P1353131345775634417.Spec : Prop :=
  ∀ n, (P1353131345775634417.a n : ℤ) = A140091 n

end A140091

/-! ## A140091.P7356957455603362408

`∑[ogf(3/(1-2x+x^2))]-3`
-/

namespace A140091.P7356957455603362408
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3] [1, -2, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 3

end

end A140091.P7356957455603362408

namespace A140091

/-- `∑[ogf(3/(1-2x+x^2))]-3` -/
def P7356957455603362408.Spec : Prop :=
  ∀ n, P7356957455603362408.a n = A140091 n

end A140091

/-! ## A140091.P9011687457331642177

`∑[ogf((6x-3x^2)/(1-2x+x^2))]`
-/

namespace A140091.P9011687457331642177
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 6, -3] [1, -2, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A140091.P9011687457331642177

namespace A140091

/-- `∑[ogf((6x-3x^2)/(1-2x+x^2))]` -/
def P9011687457331642177.Spec : Prop :=
  ∀ n, P9011687457331642177.a n = A140091 n

end A140091

/-! ## A140091.P13066859846309788955

`ogf((6x-3x^2)/(1-3x+3x^2-x^3))`
-/

namespace A140091.P13066859846309788955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 6, -3] [1, -3, 3, -1] n

end

end A140091.P13066859846309788955

namespace A140091

/-- `ogf((6x-3x^2)/(1-3x+3x^2-x^3))` -/
def P13066859846309788955.Spec : Prop :=
  ∀ n, P13066859846309788955.a n = A140091 n

end A140091

/-! ## A140091.P16539975290652935935

`record[3*(n-3)*n/2]`
-/

namespace A140091.P16539975290652935935
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  3 * (((n : ℤ) - 3 : ℚ) * ((n : ℚ) / 2))

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A140091.P16539975290652935935

namespace A140091

/-- `record[3*(n-3)*n/2]` -/
def P16539975290652935935.Spec : Prop :=
  ∀ n, P16539975290652935935.a n = (A140091 n : ℚ)

end A140091

/-! ## A140091.P12795812057341665528

`floor(3/acot(∑[n+1]))-3`
-/

namespace A140091.P12795812057341665528
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊3 / SequenceMachineLib.acot ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ)⌋ - 3

end

end A140091.P12795812057341665528

namespace A140091

/-- `floor(3/acot(∑[n+1]))-3` -/
def P12795812057341665528.Spec : Prop :=
  ∀ n, P12795812057341665528.a n = A140091 n

end A140091

/-! ## A140091.P11389728282936818787

`5*n+C(n, 2)+n²`
-/

namespace A140091.P11389728282936818787
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 * n + (Nat.choose n 2 + n ^ 2)

end

end A140091.P11389728282936818787

namespace A140091

/-- `5*n+C(n, 2)+n²` -/
def P11389728282936818787.Spec : Prop :=
  ∀ n, (P11389728282936818787.a n : ℤ) = A140091 n

end A140091

/-! ## A140091.P6727402710288628523

`record[(2-n)²-4]+∑[n]`
-/

namespace A140091.P6727402710288628523
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - (n : ℤ)) ^ 2 - 4

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

end

end A140091.P6727402710288628523

namespace A140091

/-- `record[(2-n)²-4]+∑[n]` -/
def P6727402710288628523.Spec : Prop :=
  ∀ n, P6727402710288628523.a n = A140091 n

end A140091

/-! ## A140091.P14646936340931400220

`C(n+1, 2)+n*(n+4)`
-/

namespace A140091.P14646936340931400220
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 1) 2 + n * (n + 4)

end

end A140091.P14646936340931400220

namespace A140091

/-- `C(n+1, 2)+n*(n+4)` -/
def P14646936340931400220.Spec : Prop :=
  ∀ n, (P14646936340931400220.a n : ℤ) = A140091 n

end A140091

/-! ## A140091.P1647242606869318686

`sqrt(9*∑[xor(n, -1)]²)-3`
-/

namespace A140091.P1647242606869318686
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (-1)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt ((9 * (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℤ) : ℝ) - 3

end

end A140091.P1647242606869318686

namespace A140091

/-- `sqrt(9*∑[xor(n, -1)]²)-3` -/
def P1647242606869318686.Spec : Prop :=
  ∀ n, P1647242606869318686.a n = (A140091 n : ℝ)

end A140091

/-! ## A140091.P7180973773154044958

`n-∑[a(n-1)-3]` with `a(0)=0, a(1)=-5`
-/

namespace A140091.P7180973773154044958
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, -5] fun n f1 =>
  f1 (n - 1) - 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A140091.P7180973773154044958

namespace A140091

/-- `n-∑[a(n-1)-3]` -/
def P7180973773154044958.Spec : Prop :=
  ∀ n, P7180973773154044958.a n = A140091 n

end A140091

/-! ## A140091.P13171571752891240963

`C(n+1, 2)+(n+2)²-4`
-/

namespace A140091.P13171571752891240963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (n + 1) 2 + (n + 2) ^ 2 : ℤ) - 4

end

end A140091.P13171571752891240963

namespace A140091

/-- `C(n+1, 2)+(n+2)²-4` -/
def P13171571752891240963.Spec : Prop :=
  ∀ n, P13171571752891240963.a n = A140091 n

end A140091

/-! ## A140091.P1113310662565033353

`∑[n+3]+lcm(n, n+1)-3`
-/

namespace A140091.P1113310662565033353
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + ((Nat.lcm n (n + 1) : ℤ) - 3)

end

end A140091.P1113310662565033353

namespace A140091

/-- `∑[n+3]+lcm(n, n+1)-3` -/
def P1113310662565033353.Spec : Prop :=
  ∀ n, P1113310662565033353.a n = A140091 n

end A140091

/-! ## A140091.P1528916631102998128

`3-(n-4*n-a(n-1))` with `a(0)=0`
-/

namespace A140091.P1528916631102998128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  3 - ((n : ℤ) - (4 * n : ℤ) - a (n - 1))

end

end A140091.P1528916631102998128

namespace A140091

/-- `3-(n-4*n-a(n-1))` -/
def P1528916631102998128.Spec : Prop :=
  ∀ n, P1528916631102998128.a n = A140091 n

end A140091

/-!
# A140092: G.f. satisfies: A(x) = Series_Reversion[ x/sqrt(1 + 4*A(x)) ] with A(0)=0.

The programs for A140092, there is no canonical definition to state claims against.
-/

/-! ## A140092.P11624816270609883003

`A267808(floor(sqrt(A319465(n))))`
-/

namespace A140092.P11624816270609883003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267808 (Int.sqrt (A319465 n)).toNat

end

end A140092.P11624816270609883003

/-! ## A140092.P8501783079709105896

`A004396(ceil(sqrt(A319465(n))))`
-/

namespace A140092.P8501783079709105896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 ⌈Real.sqrt (A319465 n : ℝ)⌉.toNat

end

end A140092.P8501783079709105896

/-!
# A140094: G.f. satisfies: A(x) = x/(1 - A(A(A(x)))).

The programs for A140094, there is no canonical definition to state claims against.
-/

/-! ## A140094.P2249916324790848501

`A005246(n)+A002264(A005568(n))`
-/

namespace A140094.P2249916324790848501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005246 n + A002264 (A005568 n).toNat

end

end A140094.P2249916324790848501

/-! ## A140094.P14032764161889445245

`A008611(A061279(n)+A005568(n))`
-/

namespace A140094.P14032764161889445245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (A061279 n + A005568 n).toNat

end

end A140094.P14032764161889445245

/-!
# A140095: G.f. satisfies: A(x) = x/(1 - A(A(A(A(x))))).

The programs for A140095, there is no canonical definition to state claims against.
-/

/-! ## A140095.P16671554957417403572

`A003603(A036077(n)-A191389(n))`
-/

namespace A140095.P16671554957417403572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003603 (A036077 n - A191389 n).toNat

end

end A140095.P16671554957417403572

/-! ## A140095.P15300513801002522181

`A016813(A264916(n)-A216652(n+1))`
-/

namespace A140095.P15300513801002522181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016813 (A264916 n - A216652 (n + 1)).toNat

end

end A140095.P15300513801002522181

/-!
# A140096: a(n) = A000045(n) - A113405(n).

The programs for A140096, the canonical program `A140096.P3031810697924802986` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A140096 has offset 0).

The definition of A140096 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A140096.P3031810697924802986

`A000045(n)-A113405(n)`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A140096

/-- `A000045(n)-A113405(n)` -/
def P3031810697924802986.Spec : Prop :=
  ∀ n, P3031810697924802986.a n = A140096 n

theorem P3031810697924802986.correct : P3031810697924802986.Spec := by
  intro n
  simp only [A140096]

end A140096

/-! ## A140096.P8988607949322655845

`A001611(n)-(A113405(n)+1)`
-/

namespace A140096.P8988607949322655845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001611 n - (A113405 n + 1)

end

end A140096.P8988607949322655845

namespace A140096

/-- `A001611(n)-(A113405(n)+1)` -/
def P8988607949322655845.Spec : Prop :=
  ∀ n, P8988607949322655845.a n = A140096 n

end A140096

/-! ## A140096.P49157631274953733

`A212804(n+1)-A113405(n)`
-/

namespace A140096.P49157631274953733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 (n + 1) - A113405 n

end

end A140096.P49157631274953733

namespace A140096

/-- `A212804(n+1)-A113405(n)` -/
def P49157631274953733.Spec : Prop :=
  ∀ n, P49157631274953733.a n = A140096 n

end A140096

/-! ## A140096.P16617104651812511961

`2*A000045(n)-A140428(n)`
-/

namespace A140096.P16617104651812511961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000045 n - A140428 n

end

end A140096.P16617104651812511961

namespace A140096

/-- `2*A000045(n)-A140428(n)` -/
def P16617104651812511961.Spec : Prop :=
  ∀ n, P16617104651812511961.a n = A140096 n

theorem P16617104651812511961.correct : P16617104651812511961.Spec := by
  intro n
  simp only [A140096, Nat.add_sub_cancel, A140096.P16617104651812511961.a, A140096.P3031810697924802986.a, A000045, A000045.P11838749114346432762.a, A113405, A113405.P8021731065096771962.a, A140428, A140428.P11997677646932736718.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A140096

/-! ## A140096.P8804287527819122160

`A103609(2*n)-A113405(n)`
-/

namespace A140096.P8804287527819122160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103609 (2 * n) - A113405 n

end

end A140096.P8804287527819122160

namespace A140096

/-- `A103609(2*n)-A113405(n)` -/
def P8804287527819122160.Spec : Prop :=
  ∀ n, P8804287527819122160.a n = A140096 n

end A140096

/-! ## A140096.P13649566050092127336

`Δ[A000071(n+1)]-A113405(n)`
-/

namespace A140096.P13649566050092127336
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000071 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A113405 n

end

end A140096.P13649566050092127336

namespace A140096

/-- `Δ[A000071(n+1)]-A113405(n)` -/
def P13649566050092127336.Spec : Prop :=
  ∀ n, P13649566050092127336.a n = A140096 n

end A140096

/-! ## A140096.P5586915146974531267

`A192956(n)-(A192958(n)+A113405(n))`
-/

namespace A140096.P5586915146974531267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192956 n - (A192958 n + A113405 n)

end

end A140096.P5586915146974531267

namespace A140096

/-- `A192956(n)-(A192958(n)+A113405(n))` -/
def P5586915146974531267.Spec : Prop :=
  ∀ n, P5586915146974531267.a n = A140096 n

end A140096

/-! ## A140096.P16931960120188559850

`A192979(n)-(A192964(n)+A113405(n))`
-/

namespace A140096.P16931960120188559850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192979 n - (A192964 n + A113405 n)

end

end A140096.P16931960120188559850

namespace A140096

/-- `A192979(n)-(A192964(n)+A113405(n))` -/
def P16931960120188559850.Spec : Prop :=
  ∀ n, P16931960120188559850.a n = A140096 n

end A140096

/-! ## A140096.P13437190863115337595

`A293543(n)+A293545(n)-A113405(n)`
-/

namespace A140096.P13437190863115337595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293543 n + (A293545 n - A113405 n)

end

end A140096.P13437190863115337595

namespace A140096

/-- `A293543(n)+A293545(n)-A113405(n)` -/
def P13437190863115337595.Spec : Prop :=
  ∀ n, P13437190863115337595.a n = A140096 n

end A140096

/-! ## A140096.P17765731560651337153

`A140428(n)-A113405(n)-A113405(n)`
-/

namespace A140096.P17765731560651337153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140428 n - A113405 n - A113405 n

end

end A140096.P17765731560651337153

namespace A140096

/-- `A140428(n)-A113405(n)-A113405(n)` -/
def P17765731560651337153.Spec : Prop :=
  ∀ n, P17765731560651337153.a n = A140096 n

theorem P17765731560651337153.correct : P17765731560651337153.Spec := by
  intro n
  simp only [A140096, Nat.add_sub_cancel, A140096.P17765731560651337153.a, A140096.P3031810697924802986.a, A000045, A000045.P11838749114346432762.a, A113405, A113405.P8021731065096771962.a, A140428, A140428.P11997677646932736718.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A140096

/-! ## A140096.P1428210179026094171

`∑[A212804(n)]-A212804(n)-A113405(n)`
-/

namespace A140096.P1428210179026094171
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A212804 n - A113405 n

end

end A140096.P1428210179026094171

namespace A140096

/-- `∑[A212804(n)]-A212804(n)-A113405(n)` -/
def P1428210179026094171.Spec : Prop :=
  ∀ n, P1428210179026094171.a n = A140096 n

end A140096

/-! ## A140096.P5677930159159090931

`A000045(n)-(A139797(n+1)+A139797(n))`
-/

namespace A140096.P5677930159159090931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n - (A139797 (n + 1) + A139797 n)

end

end A140096.P5677930159159090931

namespace A140096

/-- `A000045(n)-(A139797(n+1)+A139797(n))` -/
def P5677930159159090931.Spec : Prop :=
  ∀ n, P5677930159159090931.a n = A140096 n

end A140096

/-! ## A140096.P2764583883766083495

`A000045(n)-Δ[A153234(n)]`
-/

namespace A140096.P2764583883766083495
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153234 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n - (f1 (n + 1) - f1 n)

end

end A140096.P2764583883766083495

namespace A140096

/-- `A000045(n)-Δ[A153234(n)]` -/
def P2764583883766083495.Spec : Prop :=
  ∀ n, P2764583883766083495.a n = A140096 n

end A140096

/-! ## A140096.P14903418565904606608

`A140428(n)-2*A113405(n)`
-/

namespace A140096.P14903418565904606608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140428 n - 2 * A113405 n

end

end A140096.P14903418565904606608

namespace A140096

/-- `A140428(n)-2*A113405(n)` -/
def P14903418565904606608.Spec : Prop :=
  ∀ n, P14903418565904606608.a n = A140096 n

theorem P14903418565904606608.correct : P14903418565904606608.Spec := by
  intro n
  simp only [A140096, Nat.add_sub_cancel, A140096.P14903418565904606608.a, A140096.P3031810697924802986.a, A000045, A000045.P11838749114346432762.a, A113405, A113405.P8021731065096771962.a, A140428, A140428.P11997677646932736718.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A140096

/-! ## A140096.P12926469436966593660

`A131666(n+1)+A000045(n)-A001045(n)`
-/

namespace A140096.P12926469436966593660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131666 (n + 1) + (A000045 n - A001045 n)

end

end A140096.P12926469436966593660

namespace A140096

/-- `A131666(n+1)+A000045(n)-A001045(n)` -/
def P12926469436966593660.Spec : Prop :=
  ∀ n, P12926469436966593660.a n = A140096 n

end A140096

/-! ## A140096.P16632996465472617001

`sqrt(A245306(n)-1)-A113405(n)`
-/

namespace A140096.P16632996465472617001
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A245306 n - 1 : ℝ) - (A113405 n : ℝ)

end

end A140096.P16632996465472617001

namespace A140096

/-- `sqrt(A245306(n)-1)-A113405(n)` -/
def P16632996465472617001.Spec : Prop :=
  ∀ n, P16632996465472617001.a n = (A140096 n : ℝ)

end A140096

/-! ## A140096.P14469464077854207405

`gcd(A001654(2*n), A001654(n))-A113405(n)`
-/

namespace A140096.P14469464077854207405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd (A001654 (2 * n)) (A001654 n) : ℤ) - A113405 n

end

end A140096.P14469464077854207405

namespace A140096

/-- `gcd(A001654(2*n), A001654(n))-A113405(n)` -/
def P14469464077854207405.Spec : Prop :=
  ∀ n, P14469464077854207405.a n = A140096 n

end A140096

/-!
# A140097: G.f. satisfies: A(x) = Series_Reversion( x/(1 + A(x) + A(x)^2) ).

The programs for A140097, there is no canonical definition to state claims against.
-/

/-! ## A140097.P7251259859963483721

`A211515(Δ[n*a((n+20)%21)])` with `a(0)=0, a(1)=1`
-/

namespace A140097.P7251259859963483721
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  n * f1 ((n + 20) % 21)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211515 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A140097.P7251259859963483721

/-! ## A140097.P7148309918901952787

`A211515(Δ[a(n-1)/n^-1])` with `a(0)=0, a(1)=1`
-/

namespace A140097.P7148309918901952787
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  f1 (n - 1) / (n : ℚ) ^ (-1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211515 (SequenceMachineLib.roundAway (f1 (n + 1) - f1 n)).toNat

end

end A140097.P7148309918901952787

/-!
# A140098: A Beatty sequence: a(n) = [n*(1+1/t)], where t = tribonacci constant (A058265); complement of A140099.

The programs for A140098, the canonical program `A140098.P3927488538195493875` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A140098 has offset 1).

The definition of A140098 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A140098.P10822242930947685134

`comp[A158919(n)+n]`
-/

namespace A140098.P10822242930947685134
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158919 n + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A140098.P10822242930947685134

namespace A140098

/-- `comp[A158919(n)+n]` -/
def P10822242930947685134.Spec : Prop :=
  ∀ n, (P10822242930947685134.a n : ℤ) = A140098 (n + 1)

end A140098

/-! ## A140098.P16954497007436716297

`∑[char[A158919(n+1)]+1]`
-/

namespace A140098.P16954497007436716297
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158919 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = (n : ℤ) then 1 else 0) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A140098.P16954497007436716297

namespace A140098

/-- `∑[char[A158919(n+1)]+1]` -/
def P16954497007436716297.Spec : Prop :=
  ∀ n, (P16954497007436716297.a n : ℤ) = A140098 (n + 1)

end A140098

/-! ## A140098.P2024845514920486459

`comp[A140099(n+1)-1]+1`
-/

namespace A140098.P2024845514920486459
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140099 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A140098.P2024845514920486459

namespace A140098

/-- `comp[A140099(n+1)-1]+1` -/
def P2024845514920486459.Spec : Prop :=
  ∀ n, (P2024845514920486459.a n : ℤ) = A140098 (n + 1)

end A140098

/-! ## A140098.P3927488538195493875

`A184821(n+1)-A158919(n+1)`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A140098

/-- `A184821(n+1)-A158919(n+1)` -/
def P3927488538195493875.Spec : Prop :=
  ∀ n, P3927488538195493875.a n = A140098 (n + 1)

theorem P3927488538195493875.correct : P3927488538195493875.Spec := by
  intro n
  simp only [A140098, Nat.add_sub_cancel]

end A140098

/-! ## A140098.P12615235338708181326

`A140100(n+1)-A276404(n+1)`
-/

namespace A140098.P12615235338708181326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140100 (n + 1) - A276404 (n + 1)

end

end A140098.P12615235338708181326

namespace A140098

/-- `A140100(n+1)-A276404(n+1)` -/
def P12615235338708181326.Spec : Prop :=
  ∀ n, P12615235338708181326.a n = A140098 (n + 1)

theorem P12615235338708181326.correct : P12615235338708181326.Spec := by
  intro n
  simp only [A140098, Nat.add_sub_cancel, A140098.P12615235338708181326.a, A140098.P3927488538195493875.a, A140100, A140100.P9463033727352148210.a, A158919, A158919.P1966360015333059393.a, A184821, A184821.P12244193815727515257.f1, A184821.P12244193815727515257.a, A276404, A276404.P12576647508726385043.a, A276793, A276793.P6692856727762475709.a, A080843, A080843.P14729485223719297457.a, A092782, A092782.P12994304615251165252.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A140098

/-! ## A140098.P628663608126469708

`A140101(n+1)-(A276404(n+1)+A140102(n+1))`
-/

namespace A140098.P628663608126469708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140101 (n + 1) - (A276404 (n + 1) + A140102 (n + 1))

end

end A140098.P628663608126469708

namespace A140098

/-- `A140101(n+1)-(A276404(n+1)+A140102(n+1))` -/
def P628663608126469708.Spec : Prop :=
  ∀ n, P628663608126469708.a n = A140098 (n + 1)

end A140098

/-! ## A140098.P17972992208319437017

`A000196(A260732(2*n)+A005563(n+1))`
-/

namespace A140098.P17972992208319437017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A260732 (2 * n) + A005563 (n + 1)).toNat

end

end A140098.P17972992208319437017

namespace A140098

/-- `A000196(A260732(2*n)+A005563(n+1))` -/
def P17972992208319437017.Spec : Prop :=
  ∀ n, P17972992208319437017.a n = A140098 (n + 1)

end A140098

/-! ## A140098.P15881216146670797815

`A002024(A283733(2*n))-n`
-/

namespace A140098.P15881216146670797815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (A283733 (2 * n)).toNat - (n : ℤ)

end

end A140098.P15881216146670797815

namespace A140098

/-- `A002024(A283733(2*n))-n` -/
def P15881216146670797815.Spec : Prop :=
  ∀ n, P15881216146670797815.a n = A140098 (n + 1)

end A140098

/-!
# A140099: A Beatty sequence: a(n) = [n*(1+t)], where t = tribonacci constant (A058265); complement of A140098.

The programs for A140099, the canonical program `A140099.P7008787564706258569` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A140099 has offset 1).

The definition of A140099 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A158919, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A140099.P7008787564706258569

`A158919(n+1)+n+1`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A140099

/-- `A158919(n+1)+n+1` -/
def P7008787564706258569.Spec : Prop :=
  ∀ n, P7008787564706258569.a n = A140099 (n + 1)

theorem P7008787564706258569.correct : P7008787564706258569.Spec := by
  intro n
  simp only [A140099, Nat.add_sub_cancel]

end A140099

/-! ## A140099.P8550276081345542689

`∑[Δ[A158919(n)]+1]`
-/

namespace A140099.P8550276081345542689
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158919 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A140099.P8550276081345542689

namespace A140099

/-- `∑[Δ[A158919(n)]+1]` -/
def P8550276081345542689.Spec : Prop :=
  ∀ n, P8550276081345542689.a n = A140099 (n + 1)

end A140099

/-! ## A140099.P14441007970352549065

`comp[A140098(n+1)-1]+1`
-/

namespace A140099.P14441007970352549065
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140098 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A140099.P14441007970352549065

namespace A140099

/-- `comp[A140098(n+1)-1]+1` -/
def P14441007970352549065.Spec : Prop :=
  ∀ n, (P14441007970352549065.a n : ℤ) = A140099 (n + 1)

end A140099

/-! ## A140099.P7886710901382869989

`∑[A000040(Δ[A158919(n)])]`
-/

namespace A140099.P7886710901382869989
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158919 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A140099.P7886710901382869989

namespace A140099

/-- `∑[A000040(Δ[A158919(n)])]` -/
def P7886710901382869989.Spec : Prop :=
  ∀ n, P7886710901382869989.a n = A140099 (n + 1)

end A140099

/-! ## A140099.P16069319941276363982

`∑[A158923(Δ[A158919(n)])]`
-/

namespace A140099.P16069319941276363982
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158919 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158923 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A140099.P16069319941276363982

namespace A140099

/-- `∑[A158923(Δ[A158919(n)])]` -/
def P16069319941276363982.Spec : Prop :=
  ∀ n, P16069319941276363982.a n = A140099 (n + 1)

end A140099

/-! ## A140099.P1922982758858531438

`A140098(A158919(n+1))+1`
-/

namespace A140099.P1922982758858531438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140098 (A158919 (n + 1)).toNat + 1

end

end A140099.P1922982758858531438

namespace A140099

/-- `A140098(A158919(n+1))+1` -/
def P1922982758858531438.Spec : Prop :=
  ∀ n, P1922982758858531438.a n = A140099 (n + 1)

end A140099

/-! ## A140099.P7846493209974866331

`A275926(n+1)+∑[A305374(n)]`
-/

namespace A140099.P7846493209974866331
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305374 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275926 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A140099.P7846493209974866331

namespace A140099

/-- `A275926(n+1)+∑[A305374(n)]` -/
def P7846493209974866331.Spec : Prop :=
  ∀ n, P7846493209974866331.a n = A140099 (n + 1)

end A140099

/-! ## A140099.P11678741018840771914

`A275926(n+1)+A140101(n+1)`
-/

namespace A140099.P11678741018840771914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275926 (n + 1) + A140101 (n + 1)

end

end A140099.P11678741018840771914

namespace A140099

/-- `A275926(n+1)+A140101(n+1)` -/
def P11678741018840771914.Spec : Prop :=
  ∀ n, P11678741018840771914.a n = A140099 (n + 1)

theorem P11678741018840771914.correct : P11678741018840771914.Spec := by
  intro n
  simp only [A140099, Nat.add_sub_cancel, A140099.P11678741018840771914.a, A140099.P7008787564706258569.a, A140101, A140101.P15800623837645593610.f1, A140101.P15800623837645593610.a, A158919, A158919.P1966360015333059393.a, A275926, A275926.P14421314080445003667.a, A140100, A140100.P9463033727352148210.a, A276793, A276793.P6692856727762475709.a, A080843, A080843.P14729485223719297457.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A140099

/-! ## A140099.P4093104808681656496

`A140098(A003144(n+1))+A275926(n+1)+1`
-/

namespace A140099.P4093104808681656496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140098 (A003144 (n + 1)).toNat + (A275926 (n + 1) + 1)

end

end A140099.P4093104808681656496

namespace A140099

/-- `A140098(A003144(n+1))+A275926(n+1)+1` -/
def P4093104808681656496.Spec : Prop :=
  ∀ n, P4093104808681656496.a n = A140099 (n + 1)

end A140099

/-! ## A140099.P17210811050027864023

`A003146(n+1)+A275926(n+1)-A003145(n+1)`
-/

namespace A140099.P17210811050027864023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003146 (n + 1) + (A275926 (n + 1) - A003145 (n + 1))

end

end A140099.P17210811050027864023

namespace A140099

/-- `A003146(n+1)+A275926(n+1)-A003145(n+1)` -/
def P17210811050027864023.Spec : Prop :=
  ∀ n, P17210811050027864023.a n = A140099 (n + 1)

end A140099

