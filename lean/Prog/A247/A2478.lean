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
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C021
import Seq.B000.C023
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C002
import Seq.B005.C000
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
import Seq.B008.C001
import Seq.B009.C000
import Seq.B010.C000
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
# A247800: Numbers in decimal representation with distinct digits, such that in Czech their digits are in alphabetic order.

The programs for A247800, there is no canonical definition to state claims against.
-/

/-! ## A247800.P15361025607216725851

`∩[A010784(n+1), A247750(n+1)]`
-/

namespace A247800.P15361025607216725851
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010784 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247750 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A247800.P15361025607216725851

/-! ## A247800.P8662979912323846515

`∩[A043096(n+1), A247750(n+1)]`
-/

namespace A247800.P8662979912323846515
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043096 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247750 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A247800.P8662979912323846515

/-! ## A247800.P8260476623599047732

`record[A320486(A247750(n+1))]`
-/

namespace A247800.P8260476623599047732
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320486 (A247750 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A247800.P8260476623599047732

/-! ## A247800.P13055182289015806028

`filter[A247750(n+1), A178788(#)]`
-/

namespace A247800.P13055182289015806028
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247750 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A178788 (f1 j).toNat = 1) n)

end

end A247800.P13055182289015806028

/-! ## A247800.P3288859008767668491

`filter[A247750(n+1), A196368(#)]`
-/

namespace A247800.P3288859008767668491
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247750 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A196368 (f1 j).toNat = 1) n)

end

end A247800.P3288859008767668491

/-! ## A247800.P10089238119189071877

`∩[A247750(n+1), record[A137564(n)]]`
-/

namespace A247800.P10089238119189071877
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247750 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137564 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => ∀ l < j, f3 l < f3 j) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A247800.P10089238119189071877

/-! ## A247800.P209146163415146495

`∩[A247750(n+1), A355301(n+1)]`
-/

namespace A247800.P209146163415146495
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247750 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355301 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A247800.P209146163415146495

/-!
# A247801: Numbers in decimal representation with distinct digits, such that in Danish their digits are in alphabetic order.

The programs for A247801, there is no canonical definition to state claims against.
-/

/-! ## A247801.P8261949997680883893

`∩[A010784(n+1), A247751(n+1)]`
-/

namespace A247801.P8261949997680883893
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010784 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247751 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A247801.P8261949997680883893

/-! ## A247801.P16344302833983688987

`∩[A043096(n+1), A247751(n+1)]`
-/

namespace A247801.P16344302833983688987
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043096 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247751 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A247801.P16344302833983688987

/-! ## A247801.P4386542050649859874

`record[A137564(A247751(n+1))]`
-/

namespace A247801.P4386542050649859874
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137564 (A247751 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A247801.P4386542050649859874

/-! ## A247801.P11864926027281089557

`filter[A247751(n+1), A178788(#)]`
-/

namespace A247801.P11864926027281089557
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247751 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A178788 (f1 j).toNat = 1) n)

end

end A247801.P11864926027281089557

/-! ## A247801.P14280177268655033035

`filter[A247751(n+1), A196368(#)]`
-/

namespace A247801.P14280177268655033035
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247751 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A196368 (f1 j).toNat = 1) n)

end

end A247801.P14280177268655033035

/-!
# A247802: Numbers in decimal representation with distinct digits, such that in Dutch their digits are in alphabetic order.

The programs for A247802, there is no canonical definition to state claims against.
-/

/-! ## A247802.P2473546295170219716

`∩[A010784(n+1), A247752(n+1)]`
-/

namespace A247802.P2473546295170219716
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010784 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247752 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A247802.P2473546295170219716

/-! ## A247802.P12891763086755752213

`∩[A043096(n+1), A247752(n+1)]`
-/

namespace A247802.P12891763086755752213
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043096 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247752 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A247802.P12891763086755752213

/-! ## A247802.P1375931088924191409

`record[A320486(A247752(n+1))]`
-/

namespace A247802.P1375931088924191409
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320486 (A247752 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A247802.P1375931088924191409

/-! ## A247802.P12179944488452991950

`filter[A247752(n+1), A178788(#)]`
-/

namespace A247802.P12179944488452991950
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247752 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A178788 (f1 j).toNat = 1) n)

end

end A247802.P12179944488452991950

/-! ## A247802.P4936094532644092441

`filter[A247752(n+1), A196368(#)]`
-/

namespace A247802.P4936094532644092441
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247752 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A196368 (f1 j).toNat = 1) n)

end

end A247802.P4936094532644092441

/-!
# A247803: Numbers in decimal representation with distinct digits, such that in Finnish their digits are in alphabetic order.

The programs for A247803, there is no canonical definition to state claims against.
-/

/-! ## A247803.P4085617803281003651

`∩[A010784(n+1), A247753(n+1)]`
-/

namespace A247803.P4085617803281003651
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010784 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247753 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A247803.P4085617803281003651

/-! ## A247803.P10430638316133921319

`record[A137564(A247753(n+1))]`
-/

namespace A247803.P10430638316133921319
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137564 (A247753 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A247803.P10430638316133921319

/-! ## A247803.P16901923045274471654

`filter[A247753(n+1), A178788(#)]`
-/

namespace A247803.P16901923045274471654
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247753 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A178788 (f1 j).toNat = 1) n)

end

end A247803.P16901923045274471654

/-! ## A247803.P9714632278616813050

`filter[A247753(n+1), A196368(#)]`
-/

namespace A247803.P9714632278616813050
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247753 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A196368 (f1 j).toNat = 1) n)

end

end A247803.P9714632278616813050

/-! ## A247803.P1299507025432214753

`∩[A043096(n+1), A247753(n+1)]`
-/

namespace A247803.P1299507025432214753
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043096 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247753 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A247803.P1299507025432214753

/-! ## A247803.P1624651315548045444

`∩[A247753(n+1), A355301(n+1)]`
-/

namespace A247803.P1624651315548045444
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247753 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355301 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A247803.P1624651315548045444

/-!
# A247805: Numbers in decimal representation with distinct digits, such that in German their digits are in alphabetic order.

The programs for A247805, there is no canonical definition to state claims against.
-/

/-! ## A247805.P509163510686928637

`∩[A010784(n+1), A247755(n+1)]`
-/

namespace A247805.P509163510686928637
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010784 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247755 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A247805.P509163510686928637

/-! ## A247805.P4266321215460925529

`∩[A043096(n+1), A247755(n+1)]`
-/

namespace A247805.P4266321215460925529
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043096 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247755 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A247805.P4266321215460925529

/-! ## A247805.P17708962469826932018

`record[A320485(A247755(n+1))]`
-/

namespace A247805.P17708962469826932018
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320485 (A247755 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A247805.P17708962469826932018

/-! ## A247805.P17362525691980664735

`filter[A247755(n+1), A178788(#)]`
-/

namespace A247805.P17362525691980664735
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247755 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A178788 (f1 j).toNat = 1) n)

end

end A247805.P17362525691980664735

/-! ## A247805.P2857922671300213832

`filter[A247755(n+1), A196368(#)]`
-/

namespace A247805.P2857922671300213832
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247755 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A196368 (f1 j).toNat = 1) n)

end

end A247805.P2857922671300213832

/-! ## A247805.P17406929869256134875

`∩[eq[0, A107846(n)], A247755(n+1)]`
-/

namespace A247805.P17406929869256134875
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107846 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247755 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f4 j = (x : ℤ)) n

end

end A247805.P17406929869256134875

/-! ## A247805.P1308258789690135554

`∩[A247755(n+1), A355301(n+1)]`
-/

namespace A247805.P1308258789690135554
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247755 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355301 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A247805.P1308258789690135554

/-!
# A247806: Numbers in decimal representation with distinct digits, such that in Hungarian their digits are in alphabetic order.

The programs for A247806, there is no canonical definition to state claims against.
-/

/-! ## A247806.P8620481328344965694

`∩[A010784(n+1), A247756(n+1)]`
-/

namespace A247806.P8620481328344965694
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010784 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247756 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A247806.P8620481328344965694

/-! ## A247806.P13159433082632767768

`∩[A043096(n+1), A247756(n+1)]`
-/

namespace A247806.P13159433082632767768
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043096 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247756 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A247806.P13159433082632767768

/-! ## A247806.P8695501006253410617

`record[A320485(A247756(n+1))]`
-/

namespace A247806.P8695501006253410617
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320485 (A247756 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A247806.P8695501006253410617

/-! ## A247806.P7150296379696634007

`filter[A247756(n+1), A178788(#)]`
-/

namespace A247806.P7150296379696634007
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247756 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A178788 (f1 j).toNat = 1) n)

end

end A247806.P7150296379696634007

/-! ## A247806.P12194790958274453327

`filter[A247756(n+1), A196368(#)]`
-/

namespace A247806.P12194790958274453327
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247756 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A196368 (f1 j).toNat = 1) n)

end

end A247806.P12194790958274453327

/-!
# A247807: Numbers in decimal representation with distinct digits, such that in Italian and Portuguese their digits are in alphabetic order.

The programs for A247807, there is no canonical definition to state claims against.
-/

/-! ## A247807.P15249951746229184289

`∩[A010784(n+1), A247757(n+1)]`
-/

namespace A247807.P15249951746229184289
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010784 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247757 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A247807.P15249951746229184289

/-! ## A247807.P10672733586396780210

`record[A137564(A247757(n+1))]`
-/

namespace A247807.P10672733586396780210
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137564 (A247757 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A247807.P10672733586396780210

/-! ## A247807.P2242338219361927844

`filter[A247757(n+1), A178788(#)]`
-/

namespace A247807.P2242338219361927844
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247757 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A178788 (f1 j).toNat = 1) n)

end

end A247807.P2242338219361927844

/-! ## A247807.P1643236021751078059

`filter[A247757(n+1), A196368(#)]`
-/

namespace A247807.P1643236021751078059
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247757 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A196368 (f1 j).toNat = 1) n)

end

end A247807.P1643236021751078059

/-! ## A247807.P17689336466750892865

`∩[A247757(n+1), record[A320485(n)]]`
-/

namespace A247807.P17689336466750892865
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247757 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320485 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => ∀ l < j, f3 l < f3 j) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A247807.P17689336466750892865

/-! ## A247807.P14907149136190467674

`∩[A247757(n+1), record[A320486(n)]]`
-/

namespace A247807.P14907149136190467674
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247757 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320486 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => ∀ l < j, f3 l < f3 j) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A247807.P14907149136190467674

/-! ## A247807.P15898754335176921992

`∩[A043096(n+1), A247757(n+1)]`
-/

namespace A247807.P15898754335176921992
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043096 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247757 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A247807.P15898754335176921992

/-! ## A247807.P1051151841055395817

`∩[comp[A109303(n+1)], A247757(n+1)]`
-/

namespace A247807.P1051151841055395817
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109303 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247757 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f3 j = (x : ℤ)) n

end

end A247807.P1051151841055395817

/-! ## A247807.P12778964680899514278

`∩[A247757(n+1), A355301(n+1)]`
-/

namespace A247807.P12778964680899514278
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247757 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355301 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A247807.P12778964680899514278

/-!
# A247808: Numbers in decimal representation with distinct digits, such that in Latin their digits are in alphabetic order.

The programs for A247808, there is no canonical definition to state claims against.
-/

/-! ## A247808.P12495057561428260787

`∩[A010784(n+1), A247758(n+1)]`
-/

namespace A247808.P12495057561428260787
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010784 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247758 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A247808.P12495057561428260787

/-! ## A247808.P12592150130617934025

`record[A137564(A247758(n+1))]`
-/

namespace A247808.P12592150130617934025
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137564 (A247758 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A247808.P12592150130617934025

/-! ## A247808.P17148589013478422730

`filter[A247758(n+1), A178788(#)]`
-/

namespace A247808.P17148589013478422730
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247758 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A178788 (f1 j).toNat = 1) n)

end

end A247808.P17148589013478422730

/-! ## A247808.P18020736210345422878

`filter[A247758(n+1), A196368(#)]`
-/

namespace A247808.P18020736210345422878
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247758 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A196368 (f1 j).toNat = 1) n)

end

end A247808.P18020736210345422878

/-! ## A247808.P2732705183577343949

`∩[A043096(n+1), A247758(n+1)]`
-/

namespace A247808.P2732705183577343949
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043096 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247758 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A247808.P2732705183577343949

/-! ## A247808.P5651796354051917802

`∩[eq[0, A107846(n)], A247758(n+1)]`
-/

namespace A247808.P5651796354051917802
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107846 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247758 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f4 j = (x : ℤ)) n

end

end A247808.P5651796354051917802

/-! ## A247808.P14315785319019455138

`∩[A247758(n+1), A355301(n+1)]`
-/

namespace A247808.P14315785319019455138
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247758 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355301 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A247808.P14315785319019455138

/-!
# A247809: Numbers in decimal representation with distinct digits, such that in Swedish their digits are in alphabetic order.

The programs for A247809, there is no canonical definition to state claims against.
-/

/-! ## A247809.P9537305543323827535

`∩[A010784(n+1), A247759(n+1)]`
-/

namespace A247809.P9537305543323827535
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010784 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247759 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A247809.P9537305543323827535

/-! ## A247809.P13910075608347086164

`∩[A043096(n+1), A247759(n+1)]`
-/

namespace A247809.P13910075608347086164
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043096 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247759 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A247809.P13910075608347086164

/-! ## A247809.P6004385077604090884

`filter[A247759(n+1), A178788(#)]`
-/

namespace A247809.P6004385077604090884
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247759 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A178788 (f1 j).toNat = 1) n)

end

end A247809.P6004385077604090884

/-! ## A247809.P7976960859869107180

`filter[A247759(n+1), A196368(#)]`
-/

namespace A247809.P7976960859869107180
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247759 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A196368 (f1 j).toNat = 1) n)

end

end A247809.P7976960859869107180

/-! ## A247809.P1609314216765012522

`lt[A193231(A226806(n+1)), A094747(n+2)]`
-/

namespace A247809.P1609314216765012522
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193231 (A226806 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094747 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A247809.P1609314216765012522

/-!
# A247810: Numbers in decimal representation with distinct digits, such that in Polish their digits are in alphabetic order.

The programs for A247810, there is no canonical definition to state claims against.
-/

/-! ## A247810.P9717152405507863355

`∩[A010784(n+1), A247760(n+1)]`
-/

namespace A247810.P9717152405507863355
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010784 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247760 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A247810.P9717152405507863355

/-! ## A247810.P7172604482049303673

`record[A320486(A247760(n+1))]`
-/

namespace A247810.P7172604482049303673
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320486 (A247760 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A247810.P7172604482049303673

/-! ## A247810.P15389992345082915853

`filter[A247760(n+1), A178788(#)]`
-/

namespace A247810.P15389992345082915853
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247760 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A178788 (f1 j).toNat = 1) n)

end

end A247810.P15389992345082915853

/-! ## A247810.P15173946879748518108

`filter[A247760(n+1), A196368(#)]`
-/

namespace A247810.P15173946879748518108
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247760 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A196368 (f1 j).toNat = 1) n)

end

end A247810.P15173946879748518108

/-! ## A247810.P12635373442806104984

`∩[A043096(n+1), A247760(n+1)]`
-/

namespace A247810.P12635373442806104984
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043096 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247760 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A247810.P12635373442806104984

/-! ## A247810.P7577742476974762294

`∩[A247760(n+1), A355301(n+1)]`
-/

namespace A247810.P7577742476974762294
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247760 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355301 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A247810.P7577742476974762294

/-!
# A247811: Numbers in decimal representation with distinct digits, such that in Russian their digits are in alphabetic order.

The programs for A247811, there is no canonical definition to state claims against.
-/

/-! ## A247811.P10568270533334060918

`∩[A010784(n+1), A247761(n+1)]`
-/

namespace A247811.P10568270533334060918
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010784 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247761 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A247811.P10568270533334060918

/-! ## A247811.P16567163401009517520

`filter[A247761(n+1), A178788(#)]`
-/

namespace A247811.P16567163401009517520
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247761 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A178788 (f1 j).toNat = 1) n)

end

end A247811.P16567163401009517520

/-! ## A247811.P1758692239607308534

`filter[A247761(n+1), A196368(#)]`
-/

namespace A247811.P1758692239607308534
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247761 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A196368 (f1 j).toNat = 1) n)

end

end A247811.P1758692239607308534

/-! ## A247811.P17881610042492570292

`∩[A247761(n+1), record[A320485(n)]]`
-/

namespace A247811.P17881610042492570292
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247761 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320485 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => ∀ l < j, f3 l < f3 j) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A247811.P17881610042492570292

/-! ## A247811.P13721858268200751475

`∩[A043096(n+1), A247761(n+1)]`
-/

namespace A247811.P13721858268200751475
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043096 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247761 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A247811.P13721858268200751475

/-!
# A247812: Numbers in decimal representation with distinct digits, such that in Slovak their digits are in alphabetic order.

The programs for A247812, there is no canonical definition to state claims against.
-/

/-! ## A247812.P5825644053430164939

`∩[A010784(n+1), A247762(n+1)]`
-/

namespace A247812.P5825644053430164939
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010784 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247762 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A247812.P5825644053430164939

/-! ## A247812.P8474242334704238898

`∩[A043096(n+1), A247762(n+1)]`
-/

namespace A247812.P8474242334704238898
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043096 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247762 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A247812.P8474242334704238898

/-! ## A247812.P881045270960873955

`record[A137564(A247762(n+1))]`
-/

namespace A247812.P881045270960873955
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137564 (A247762 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A247812.P881045270960873955

/-! ## A247812.P8530383734830589080

`filter[A247762(n+1), A178788(#)]`
-/

namespace A247812.P8530383734830589080
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247762 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A178788 (f1 j).toNat = 1) n)

end

end A247812.P8530383734830589080

/-! ## A247812.P17361499617487822719

`filter[A247762(n+1), A196368(#)]`
-/

namespace A247812.P17361499617487822719
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247762 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A196368 (f1 j).toNat = 1) n)

end

end A247812.P17361499617487822719

/-! ## A247812.P13242722966337738391

`∩[A247762(n+1), record[A320486(n)]]`
-/

namespace A247812.P13242722966337738391
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247762 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320486 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => ∀ l < j, f3 l < f3 j) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A247812.P13242722966337738391

/-! ## A247812.P9845882435174765002

`∩[A247762(n+1), A355301(n+1)]`
-/

namespace A247812.P9845882435174765002
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247762 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355301 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A247812.P9845882435174765002

/-!
# A247813: Numbers in decimal representation with distinct digits, such that in Spanish their digits are in alphabetic order.

The programs for A247813, there is no canonical definition to state claims against.
-/

/-! ## A247813.P17949184228953734504

`record[A137564(A161390(n+1))]`
-/

namespace A247813.P17949184228953734504
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137564 (A161390 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A247813.P17949184228953734504

/-! ## A247813.P13247050748367744052

`filter[A161390(n+1), A178788(#)]`
-/

namespace A247813.P13247050748367744052
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161390 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A178788 (f1 j).toNat = 1) n)

end

end A247813.P13247050748367744052

/-! ## A247813.P5016406688963112313

`filter[A161390(n+1), A196368(#)]`
-/

namespace A247813.P5016406688963112313
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161390 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A196368 (f1 j).toNat = 1) n)

end

end A247813.P5016406688963112313

/-! ## A247813.P17535956957214921643

`∩[A010784(n+1), A161390(n+1)]`
-/

namespace A247813.P17535956957214921643
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010784 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161390 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A247813.P17535956957214921643

/-! ## A247813.P5779243407511324355

`∩[A043096(n+1), A161390(n+1)]`
-/

namespace A247813.P5779243407511324355
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043096 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161390 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A247813.P5779243407511324355

/-!
# A247814: Numbers in decimal representation with distinct digits, such that in Turkish their digits are in alphabetic order.

The programs for A247814, there is no canonical definition to state claims against.
-/

/-! ## A247814.P13325884650883712387

`∩[A010784(n+1), A247764(n+1)]`
-/

namespace A247814.P13325884650883712387
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010784 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247764 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A247814.P13325884650883712387

/-! ## A247814.P5239207675649983459

`∩[A043096(n+1), A247764(n+1)]`
-/

namespace A247814.P5239207675649983459
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043096 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247764 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A247814.P5239207675649983459

/-! ## A247814.P5308048344098931869

`record[A137564(A247764(n+1))]`
-/

namespace A247814.P5308048344098931869
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137564 (A247764 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A247814.P5308048344098931869

/-! ## A247814.P4915299485075155380

`filter[A247764(n+1), A178788(#)]`
-/

namespace A247814.P4915299485075155380
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247764 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A178788 (f1 j).toNat = 1) n)

end

end A247814.P4915299485075155380

/-! ## A247814.P12754740292349640842

`filter[A247764(n+1), A196368(#)]`
-/

namespace A247814.P12754740292349640842
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247764 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A196368 (f1 j).toNat = 1) n)

end

end A247814.P12754740292349640842

/-! ## A247814.P5530350517020903290

`∩[A247764(n+1), record[A320486(n)]]`
-/

namespace A247814.P5530350517020903290
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247764 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320486 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => ∀ l < j, f3 l < f3 j) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A247814.P5530350517020903290

/-! ## A247814.P4677951793292940961

`∩[A247764(n+1), lt[A332550(n), 10]]`
-/

namespace A247814.P4677951793292940961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247764 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332550 n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f3 j < (f4 j : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A247814.P4677951793292940961

/-!
# A247815: Number of primes in n-th row of triangle A077581.

The programs for A247815, there is no canonical definition to state claims against.
-/

/-! ## A247815.P18309168747668146808

`A000720(A069213(n+1))-A001221(n+1)`
-/

namespace A247815.P18309168747668146808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A069213 (n + 1)).toNat - A001221 (n + 1)

end

end A247815.P18309168747668146808

/-! ## A247815.P4719326197357842941

`A000720(A069213(n+1))-∑{p}[n+1, A001222(#)]`
-/

namespace A247815.P4719326197357842941
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A069213 (n + 1)).toNat - ∑ p ∈ Nat.primeFactors (f1 n), A001222 p

end

end A247815.P4719326197357842941

/-! ## A247815.P3355362336609528949

`A000720(A069213(n+1))-A001222(∏{p}[n+1, #])`
-/

namespace A247815.P3355362336609528949
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A069213 (n + 1)).toNat - A001222 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A247815.P3355362336609528949

/-! ## A247815.P7076795102347882689

`A000720(A077665(n+1)-(n+1))-A001221(n+1)`
-/

namespace A247815.P7076795102347882689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A077665 (n + 1) - (n + 1 : ℤ)).toNat - A001221 (n + 1)

end

end A247815.P7076795102347882689

/-! ## A247815.P5016483940307878121

`A000720(A077665(n+1)-(n+1))-∑{p}[n+1, A001222(#)]`
-/

namespace A247815.P5016483940307878121
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A077665 (n + 1) - (n + 1 : ℤ)).toNat - ∑ p ∈ Nat.primeFactors (f1 n), A001222 p

end

end A247815.P5016483940307878121

/-! ## A247815.P13814345528790450623

`A000720(A077665(n+1)-(n+1))-A001222(∏{p}[n+1, #])`
-/

namespace A247815.P13814345528790450623
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A077665 (n + 1) - (n + 1 : ℤ)).toNat - A001222 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A247815.P13814345528790450623

/-! ## A247815.P2833289997419451517

`A000720(A126571(∑[n+1]))-A001221(n+1)`
-/

namespace A247815.P2833289997419451517
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A126571 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat - A001221 (n + 1)

end

end A247815.P2833289997419451517

/-! ## A247815.P3593750412119454881

`A000720(A077581(∑[n+1]))-A001221(n+1)`
-/

namespace A247815.P3593750412119454881
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A077581 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat - A001221 (n + 1)

end

end A247815.P3593750412119454881

/-! ## A247815.P1405811099625180681

`A000720(A077664(∑[n+1])-(n+1))-A001221(n+1)`
-/

namespace A247815.P1405811099625180681
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A077664 (∑ j ∈ Finset.range (n + 1), f1 j) - (n + 1 : ℤ)).toNat - A001221 (n + 1)

end

end A247815.P1405811099625180681

/-! ## A247815.P14030194278511013271

`1-A247892(n+1)+n`
-/

namespace A247815.P14030194278511013271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A247892 (n + 1) + (n : ℤ)

end

end A247815.P14030194278511013271

/-!
# A247816: a(n) is the smallest k such that prime(k+i) = 1 (mod 6) for i = 0, 1,...,n-1.

The programs for A247816, there is no canonical definition to state claims against.
-/

/-! ## A247816.P1407905661572231876

`A392107(∑[2^n])`
-/

namespace A247816.P1407905661572231876
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392107 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A247816.P1407905661572231876

/-! ## A247816.P8935387098399252778

`A000720(A057620(n+1))`
-/

namespace A247816.P8935387098399252778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A057620 (n + 1)).toNat

end

end A247816.P8935387098399252778

/-! ## A247816.P13234235797775086916

`A391807(A077082(n+1))`
-/

namespace A247816.P13234235797775086916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391807 (A077082 (n + 1)).toNat

end

end A247816.P13234235797775086916

/-!
# A247817: a(n) = Sum_{k=2..n} 4^k.

The programs for A247817, the canonical program `A247817.P10889549234210315046` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A247817 has offset 1).

The definition of A247817 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A247817.P14763621479866951928

`(4^(n+2)-16)/3`
-/

namespace A247817.P14763621479866951928
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((4 ^ (n + 2) : ℤ) - 16 : ℚ) / 3

end

end A247817.P14763621479866951928

namespace A247817

/-- `(4^(n+2)-16)/3` -/
def P14763621479866951928.Spec : Prop :=
  ∀ n, P14763621479866951928.a n = (A247817 (n + 1) : ℚ)

theorem P14763621479866951928.correct : P14763621479866951928.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A247817, Nat.add_sub_cancel, A247817.P14763621479866951928.a, A247817.P10889549234210315046.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A247817, Nat.add_sub_cancel, A247817.P14763621479866951928.a, A247817.P10889549234210315046.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A247817

/-! ## A247817.P10702067817477871155

`a(n-1)+4^(n+1)` with `a(0)=0`
-/

namespace A247817.P10702067817477871155
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + 4 ^ (n + 1)

end

end A247817.P10702067817477871155

namespace A247817

/-- `a(n-1)+4^(n+1)` -/
def P10702067817477871155.Spec : Prop :=
  ∀ n, (P10702067817477871155.a n : ℤ) = A247817 (n + 1)

end A247817

/-! ## A247817.P10889549234210315046

`5*a(n-1)-4*a(n-2)` with `a(0)=0, a(1)=16`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A247817

/-- `5*a(n-1)-4*a(n-2)` -/
def P10889549234210315046.Spec : Prop :=
  ∀ n, P10889549234210315046.a n = A247817 (n + 1)

theorem P10889549234210315046.correct : P10889549234210315046.Spec := by
  intro n
  simp only [A247817, Nat.add_sub_cancel]

end A247817

/-! ## A247817.P13038518449271108099

`8*A020988(n)`
-/

namespace A247817.P13038518449271108099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * A020988 n

end

end A247817.P13038518449271108099

namespace A247817

/-- `8*A020988(n)` -/
def P13038518449271108099.Spec : Prop :=
  ∀ n, P13038518449271108099.a n = A247817 (n + 1)

end A247817

/-! ## A247817.P9796653178081387051

`16*A002450(n)`
-/

namespace A247817.P9796653178081387051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  16 * A002450 n

end

end A247817.P9796653178081387051

namespace A247817

/-- `16*A002450(n)` -/
def P9796653178081387051.Spec : Prop :=
  ∀ n, P9796653178081387051.a n = A247817 (n + 1)

end A247817

/-! ## A247817.P14777416109883700342

`A080674(n+1)-4`
-/

namespace A247817.P14777416109883700342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080674 (n + 1) - 4

end

end A247817.P14777416109883700342

namespace A247817

/-- `A080674(n+1)-4` -/
def P14777416109883700342.Spec : Prop :=
  ∀ n, P14777416109883700342.a n = A247817 (n + 1)

end A247817

/-! ## A247817.P3441390277293262572

`ogf(16x/(1-5x+4x^2))`
-/

namespace A247817.P3441390277293262572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 16] [1, -5, 4] n

end

end A247817.P3441390277293262572

namespace A247817

/-- `ogf(16x/(1-5x+4x^2))` -/
def P3441390277293262572.Spec : Prop :=
  ∀ n, P3441390277293262572.a n = A247817 (n + 1)

end A247817

/-! ## A247817.P13771704145423050838

`xor(4, ∑[4^(n+1)])`
-/

namespace A247817.P13771704145423050838
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 ^ (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 4 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A247817.P13771704145423050838

namespace A247817

/-- `xor(4, ∑[4^(n+1)])` -/
def P13771704145423050838.Spec : Prop :=
  ∀ n, (P13771704145423050838.a n : ℤ) = A247817 (n + 1)

end A247817

/-! ## A247817.P12090168249539938983

`4*xor(1, ∑[4^n])`
-/

namespace A247817.P12090168249539938983
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 ^ n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * Nat.xor 1 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A247817.P12090168249539938983

namespace A247817

/-- `4*xor(1, ∑[4^n])` -/
def P12090168249539938983.Spec : Prop :=
  ∀ n, (P12090168249539938983.a n : ℤ) = A247817 (n + 1)

end A247817

/-! ## A247817.P3493273994588661506

`lcm(16, ∑[4^n]-1)`
-/

namespace A247817.P3493273994588661506
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 ^ n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 16 (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1)

end

end A247817.P3493273994588661506

namespace A247817

/-- `lcm(16, ∑[4^n]-1)` -/
def P3493273994588661506.Spec : Prop :=
  ∀ n, (P3493273994588661506.a n : ℤ) = A247817 (n + 1)

end A247817

/-! ## A247817.P12342916798479392230

`∑[4*and(4^n, -2)]`
-/

namespace A247817.P12342916798479392230
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * Int.land (4 ^ n : ℤ) (-2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A247817.P12342916798479392230

namespace A247817

/-- `∑[4*and(4^n, -2)]` -/
def P12342916798479392230.Spec : Prop :=
  ∀ n, P12342916798479392230.a n = A247817 (n + 1)

end A247817

/-! ## A247817.P4516267344699614024

`4*(a(n-1)+4)` with `a(0)=0`
-/

namespace A247817.P4516267344699614024
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  4 * (a (n - 1) + 4)

end

end A247817.P4516267344699614024

namespace A247817

/-- `4*(a(n-1)+4)` -/
def P4516267344699614024.Spec : Prop :=
  ∀ n, (P4516267344699614024.a n : ℤ) = A247817 (n + 1)

end A247817

/-! ## A247817.P2646580208726365743

`4*or(4, a(n-1))` with `a(0)=0`
-/

namespace A247817.P2646580208726365743
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  4 * Nat.lor 4 (a (n - 1))

end

end A247817.P2646580208726365743

namespace A247817

/-- `4*or(4, a(n-1))` -/
def P2646580208726365743.Spec : Prop :=
  ∀ n, (P2646580208726365743.a n : ℤ) = A247817 (n + 1)

end A247817

/-! ## A247817.P6449851916650461934

`∑[4*a(n-1)]` with `a(0)=0, a(1)=16`
-/

namespace A247817.P6449851916650461934
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 16] fun n f1 =>
  4 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A247817.P6449851916650461934

namespace A247817

/-- `∑[4*a(n-1)]` -/
def P6449851916650461934.Spec : Prop :=
  ∀ n, (P6449851916650461934.a n : ℤ) = A247817 (n + 1)

end A247817

/-! ## A247817.P2596786963320836891

`∑[and(-5, 4^(n+1))]`
-/

namespace A247817.P2596786963320836891
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-5) (4 ^ (n + 1) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A247817.P2596786963320836891

namespace A247817

/-- `∑[and(-5, 4^(n+1))]` -/
def P2596786963320836891.Spec : Prop :=
  ∀ n, P2596786963320836891.a n = A247817 (n + 1)

end A247817

/-! ## A247817.P11749743266527839194

`∑[4^n*4%(n+4)]`
-/

namespace A247817.P11749743266527839194
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 ^ n * (4 % (n + 4))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A247817.P11749743266527839194

namespace A247817

/-- `∑[4^n*4%(n+4)]` -/
def P11749743266527839194.Spec : Prop :=
  ∀ n, (P11749743266527839194.a n : ℤ) = A247817 (n + 1)

end A247817

/-! ## A247817.P13872834983552533437

`4*(4-floor(-a(n-1)))` with `a(0)=0`

`floor` is left out, it is the identity on integers.
-/

namespace A247817.P13872834983552533437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  4 * (4 - (-a (n - 1)))

end

end A247817.P13872834983552533437

namespace A247817

/-- `4*(4-floor(-a(n-1)))` -/
def P13872834983552533437.Spec : Prop :=
  ∀ n, P13872834983552533437.a n = A247817 (n + 1)

end A247817

/-! ## A247817.P18171322712639197014

`4*(4-ceil(-a(n-1)))` with `a(0)=0`

`ceil` is left out, it is the identity on integers.
-/

namespace A247817.P18171322712639197014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  4 * (4 - (-a (n - 1)))

end

end A247817.P18171322712639197014

namespace A247817

/-- `4*(4-ceil(-a(n-1)))` -/
def P18171322712639197014.Spec : Prop :=
  ∀ n, P18171322712639197014.a n = A247817 (n + 1)

end A247817

/-! ## A247817.P17568627967564296973

`4*(4-round(-a(n-1)))` with `a(0)=0`

`round` is left out, it is the identity on integers.
-/

namespace A247817.P17568627967564296973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  4 * (4 - (-a (n - 1)))

end

end A247817.P17568627967564296973

namespace A247817

/-- `4*(4-round(-a(n-1)))` -/
def P17568627967564296973.Spec : Prop :=
  ∀ n, P17568627967564296973.a n = A247817 (n + 1)

end A247817

/-! ## A247817.P17842143186204675092

`4*(4-floor(1/2-a(n-1)))` with `a(0)=0`
-/

namespace A247817.P17842143186204675092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  4 * (4 - ⌊(1 : ℚ) / 2 - (a (n - 1) : ℚ)⌋)

end

end A247817.P17842143186204675092

namespace A247817

/-- `4*(4-floor(1/2-a(n-1)))` -/
def P17842143186204675092.Spec : Prop :=
  ∀ n, P17842143186204675092.a n = A247817 (n + 1)

end A247817

/-!
# A247819: Integers such that A247552(n) is not a repunit.

The programs for A247819, there is no canonical definition to state claims against.
-/

/-! ## A247819.P5526751093480767529

`lt[5, A006530((n-1)^(A008835(n+1)²%(n+1))+1)]`
-/

namespace A247819.P5526751093480767529
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (SequenceMachineLib.roundAway (((n : ℤ) - 1 : ℚ) ^ (Int.tmod (A008835 (n + 1) ^ 2) (n + 1 : ℤ) : ℤ) + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A247819.P5526751093480767529

/-! ## A247819.P8265557546256398689

`lt[A141256(A332499(2*(n+2))), A141256(n)]`
-/

namespace A247819.P8265557546256398689
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141256 (A332499 (2 * (n + 2))).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141256 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A247819.P8265557546256398689

/-! ## A247819.P17504391327500717066

`lt[1, A144079(A141256(n)²)]`
-/

namespace A247819.P17504391327500717066
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144079 (A141256 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A247819.P17504391327500717066

/-! ## A247819.P5154039868696518572

`lt[A300983(n), A000005(A301333(n))]`
-/

namespace A247819.P5154039868696518572
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300983 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A301333 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A247819.P5154039868696518572

/-! ## A247819.P13727291288191771981

`eq[A014709(A364493(n)), A040258(n)]`
-/

namespace A247819.P13727291288191771981
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014709 (A364493 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040258 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A247819.P13727291288191771981

/-!
# A247820: Numbers k such that sigma(2*k-1) is a prime p.

The programs for A247820, there is no canonical definition to state claims against.
-/

/-! ## A247820.P7764356566515652696

`ceil(A278911(n+1)/2)`
-/

namespace A247820.P7764356566515652696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A278911 (n + 1) : ℚ) / 2⌉

end

end A247820.P7764356566515652696

/-! ## A247820.P4242159103316936095

`(A273459(n+1)+2)/4`
-/

namespace A247820.P4242159103316936095
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A273459 (n + 1) + 2 : ℚ) / 4

end

end A247820.P4242159103316936095

/-! ## A247820.P16968582974018859280

`ceil(A193070(n+1)²/2)`
-/

namespace A247820.P16968582974018859280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A193070 (n + 1) ^ 2 : ℚ) / 2⌉

end

end A247820.P16968582974018859280

/-! ## A247820.P3654483233017468055

`or(round(A278911(n+1)/2), A000035(n))`
-/

namespace A247820.P3654483233017468055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (SequenceMachineLib.roundAway ((A278911 (n + 1) : ℚ) / 2)) (A000035 n)

end

end A247820.P3654483233017468055

/-! ## A247820.P8815792247581075980

`round(A278911(n+1)/2)%A153159(n+1)`
-/

namespace A247820.P8815792247581075980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A278911 (n + 1) : ℚ) / 2)) (A153159 (n + 1))

end

end A247820.P8815792247581075980

/-! ## A247820.P4350848237577614601

`or(round(A278911(n+1)/2), A010052(n+1))`
-/

namespace A247820.P4350848237577614601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (SequenceMachineLib.roundAway ((A278911 (n + 1) : ℚ) / 2)) (A010052 (n + 1))

end

end A247820.P4350848237577614601

/-! ## A247820.P2780328568422677155

`round(A193070(n+1)²/2+A118175(n)/2)`
-/

namespace A247820.P2780328568422677155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A193070 (n + 1) ^ 2 : ℚ) / 2 + (A118175 n : ℚ) / 2)

end

end A247820.P2780328568422677155

/-! ## A247820.P10487273030206723900

`round(A278911(n+1)/2)*char[A285715(n+1)]`
-/

namespace A247820.P10487273030206723900
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285715 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A278911 (n + 1) : ℚ) / 2) * ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A247820.P10487273030206723900

/-! ## A247820.P12072079469528658209

`round(A278911(n+1)/2*A014963(4*n+10))`
-/

namespace A247820.P12072079469528658209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A278911 (n + 1) : ℚ) / 2 * (A014963 (4 * n + 10) : ℚ))

end

end A247820.P12072079469528658209

/-! ## A247820.P9726478963290763502

`round(A278911(n+1)/2*A008683(gcd(n, n+1)))`
-/

namespace A247820.P9726478963290763502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A278911 (n + 1) : ℚ) / 2 * (A008683 (Nat.gcd n (n + 1)) : ℚ))

end

end A247820.P9726478963290763502

/-! ## A247820.P12290205821164718898

`floor(A000265(2^A282495(n+1))+A193070(n+1)²/2)`
-/

namespace A247820.P12290205821164718898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000265 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A282495 (n + 1) : ℤ))).toNat : ℚ) + (A193070 (n + 1) ^ 2 : ℚ) / 2⌋

end

end A247820.P12290205821164718898

/-! ## A247820.P10802022211148310150

`round(A002262(∑[n+1])+A193070(n+1)²/2)`
-/

namespace A247820.P10802022211148310150
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A002262 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ) + (A193070 (n + 1) ^ 2 : ℚ) / 2)

end

end A247820.P10802022211148310150

/-! ## A247820.P16441957942693830470

`(A278911(n+1)+A001222(A078722(n)))/2`
-/

namespace A247820.P16441957942693830470
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A278911 (n + 1) + A001222 (A078722 n).toNat : ℚ) / 2

end

end A247820.P16441957942693830470

/-! ## A247820.P4982040634330501371

`A000982(A193070(n+1))`
-/

namespace A247820.P4982040634330501371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000982 (A193070 (n + 1)).toNat

end

end A247820.P4982040634330501371

/-! ## A247820.P4573031516028331213

`A099392(A193070(n+1)+1)`
-/

namespace A247820.P4573031516028331213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099392 (A193070 (n + 1) + 1).toNat

end

end A247820.P4573031516028331213

/-! ## A247820.P11951263250716673164

`A334320(A193070(n+1)+1)`
-/

namespace A247820.P11951263250716673164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334320 (A193070 (n + 1) + 1).toNat

end

end A247820.P11951263250716673164

/-!
# A247821: Numbers k such that sigma(sigma(2k-1)) is a prime p.

The programs for A247821, there is no canonical definition to state claims against.
-/

/-! ## A247821.P5276510644953232191

`(A247838(n+1)+1)/2`
-/

namespace A247821.P5276510644953232191
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A247838 (n + 1) + 1 : ℚ) / 2

end

end A247821.P5276510644953232191

/-! ## A247821.P18389078051229493630

`ceil(A247838(n+1)/2)`
-/

namespace A247821.P18389078051229493630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A247838 (n + 1) : ℚ) / 2⌉

end

end A247821.P18389078051229493630

/-!
# A247822: Corresponding values of primes p from A247821 and A247838.

The programs for A247822, there is no canonical definition to state claims against.
-/

/-! ## A247822.P7305233261181337263

`A247823(floor(sqrt(A311309(n))))`
-/

namespace A247822.P7305233261181337263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247823 (Int.sqrt (A311309 n)).toNat

end

end A247822.P7305233261181337263

/-! ## A247822.P4802126799836277246

`A247823(round(log(A066819(n+1))))`
-/

namespace A247822.P4802126799836277246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247823 (SequenceMachineLib.roundAway (Real.log (A066819 (n + 1) : ℝ))).toNat

end

end A247822.P4802126799836277246

/-! ## A247822.P9520511510326082579

`A126646(ceil(log2(A247838(n+1))))`
-/

namespace A247822.P9520511510326082579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126646 ⌈Real.logb 2 (A247838 (n + 1) : ℝ)⌉.toNat

end

end A247822.P9520511510326082579

/-! ## A247822.P5330950525883433257

`A247823(A272613(n))`
-/

namespace A247822.P5330950525883433257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247823 (A272613 n).toNat

end

end A247822.P5330950525883433257

/-! ## A247822.P6832444132411395817

`A126646(val(A175906(n+1), 2))`
-/

namespace A247822.P6832444132411395817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126646 (SequenceMachineLib.valuation (A175906 (n + 1)).toNat 2)

end

end A247822.P6832444132411395817

/-!
# A247823: Mersenne primes p such that there is a number k with sigma(sigma(2k-1)) = p.

The programs for A247823, there is no canonical definition to state claims against.
-/

/-! ## A247823.P4037558042636794696

`A000668(comp[A275784(n)-1])`
-/

namespace A247823.P4037558042636794696
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275784 n - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000668 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A247823.P4037558042636794696

/-! ## A247823.P1105762826723861784

`A000668(A074816(2*n+1)+n+1)`
-/

namespace A247823.P1105762826723861784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000668 (A074816 (2 * n + 1) + (n + 1 : ℤ)).toNat

end

end A247823.P1105762826723861784

/-! ## A247823.P9213705216770988866

`A000668(A091935(2*n+1)+n+1)`
-/

namespace A247823.P9213705216770988866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000668 (A091935 (2 * n + 1) + (n + 1 : ℤ)).toNat

end

end A247823.P9213705216770988866

/-!
# A247827: Least prime factor of A247676.

The programs for A247827, there is no canonical definition to state claims against.
-/

/-! ## A247827.P17761557922501950081

`A020639(A247676(n+1))`
-/

namespace A247827.P17761557922501950081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A247676 (n + 1)).toNat

end

end A247827.P17761557922501950081

/-! ## A247827.P9862299133053546778

`A020639(∩[A092256(n+1), A017185(n)])`
-/

namespace A247827.P9862299133053546778
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092256 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017185 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A247827.P9862299133053546778

/-! ## A247827.P4154794988131120691

`p?[A281680(A017221(n))]`
-/

namespace A247827.P4154794988131120691
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281680 (A017221 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A247827.P4154794988131120691

/-! ## A247827.P12665719649201223799

`A107286(or(1, A247676(n+1)))`
-/

namespace A247827.P12665719649201223799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107286 (Int.lor 1 (A247676 (n + 1))).toNat

end

end A247827.P12665719649201223799

/-! ## A247827.P1996860071577013679

`p?[A107286(A017185(2*n+1))]`
-/

namespace A247827.P1996860071577013679
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107286 (A017185 (2 * n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A247827.P1996860071577013679

/-! ## A247827.P4077783262861665401

`p?[A074828(A017197(2*n+1)-1)]`
-/

namespace A247827.P4077783262861665401
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074828 (A017197 (2 * n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A247827.P4077783262861665401

/-! ## A247827.P11042913974991104671

`p?[A074828(A017209(2*n+1)-2)]`
-/

namespace A247827.P11042913974991104671
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074828 (A017209 (2 * n + 1) - 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A247827.P11042913974991104671

/-! ## A247827.P8560788318108320100

`p?[A107286(A017209(2*n+1)-2)]`
-/

namespace A247827.P8560788318108320100
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107286 (A017209 (2 * n + 1) - 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A247827.P8560788318108320100

/-! ## A247827.P1617869134353118689

`p?[A022998(A107286(A017185(n)))]`
-/

namespace A247827.P1617869134353118689
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022998 (A107286 (A017185 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A247827.P1617869134353118689

/-! ## A247827.P6520643144286405879

`p?[A107286(A000035(n)*A017185(n))]`
-/

namespace A247827.P6520643144286405879
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107286 (A000035 n * A017185 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A247827.P6520643144286405879

/-! ## A247827.P7542275370420096493

`p?[A040001(n)*A107286(A017185(n))]`
-/

namespace A247827.P7542275370420096493
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040001 n * A107286 (A017185 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A247827.P7542275370420096493

/-! ## A247827.P3245481595133232836

`p?[A107286(A017185(n))%A093178(n)]`
-/

namespace A247827.P3245481595133232836
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A107286 (A017185 n).toNat) (A093178 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A247827.P3245481595133232836

/-! ## A247827.P8284648050387062511

`A111787(or(1, A247676(n+1)))`
-/

namespace A247827.P8284648050387062511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111787 (Int.lor 1 (A247676 (n + 1))).toNat

end

end A247827.P8284648050387062511

/-! ## A247827.P8251553055135853855

`p?[A111787(A017209(2*n+1)-2)]`
-/

namespace A247827.P8251553055135853855
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111787 (A017209 (2 * n + 1) - 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A247827.P8251553055135853855

/-! ## A247827.P16167639427449734021

`A111787(2*A247676(n+1)-A247676(n+1))`
-/

namespace A247827.P16167639427449734021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111787 (2 * A247676 (n + 1) - A247676 (n + 1)).toNat

end

end A247827.P16167639427449734021

/-! ## A247827.P11967526218438461193

`A014673(2*A247676(n+1))`
-/

namespace A247827.P11967526218438461193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014673 (2 * A247676 (n + 1)).toNat

end

end A247827.P11967526218438461193

/-! ## A247827.P5762129227801369974

`A111787(2*A247676(n+1))`
-/

namespace A247827.P5762129227801369974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111787 (2 * A247676 (n + 1)).toNat

end

end A247827.P5762129227801369974

/-! ## A247827.P11954344891031674857

`A014673(A247676(n+1)+A247676(n+1))`
-/

namespace A247827.P11954344891031674857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014673 (A247676 (n + 1) + A247676 (n + 1)).toNat

end

end A247827.P11954344891031674857

/-!
# A247828: Number of tilings of a 5 X n rectangle using n pentominoes of any shape including exactly one X shape.

The programs for A247828, there is no canonical definition to state claims against.
-/

/-! ## A247828.P2432831545397462040

`A001065(A335508(n)+1)`
-/

namespace A247828.P2432831545397462040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (A335508 n + 1).toNat

end

end A247828.P2432831545397462040

/-! ## A247828.P10971416217722963399

`Δ[A062108(∏[A302119(n)])]`
-/

namespace A247828.P10971416217722963399
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302119 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062108 (∏ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A247828.P10971416217722963399

/-! ## A247828.P1619976332908626407

`A002266(floor(∑[A054370(n)]/(n+1)))`
-/

namespace A247828.P1619976332908626407
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054370 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002266 ⌊((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (n + 1 : ℚ)⌋.toNat

end

end A247828.P1619976332908626407

/-!
# A247829: a(3*k) = k*(k+1), a(3*k+1) = (2*k-1)*(2*k+1), a(3*k+2) = (2*k-1)*(2*k+3).

The programs for A247829, the canonical program `A247829.P14367956813106832364` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A247829 has offset 0).

The definition of A247829 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A247829.P14367956813106832364

`3*a(n-3)-3*a(n-6)+a(n-9)` with `a(0)=0, a(1)=-1, a(2)=-3, a(3)=2, a(4)=3, a(5)=5, a(6)=6, a(7)=15, a(8)=21`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A247829

/-- `3*a(n-3)-3*a(n-6)+a(n-9)` -/
def P14367956813106832364.Spec : Prop :=
  ∀ n, P14367956813106832364.a n = A247829 n

theorem P14367956813106832364.correct : P14367956813106832364.Spec := by
  intro n
  simp only [A247829]

end A247829

/-! ## A247829.P4571807525816865755

`A214297(xor(1, round((lcm(3, n)+n)/3)))`
-/

namespace A247829.P4571807525816865755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214297 (Int.xor 1 (SequenceMachineLib.roundAway ((Nat.lcm 3 n + n : ℚ) / 3))).toNat

end

end A247829.P4571807525816865755

namespace A247829

/-- `A214297(xor(1, round((lcm(3, n)+n)/3)))` -/
def P4571807525816865755.Spec : Prop :=
  ∀ n, P4571807525816865755.a n = A247829 n

end A247829

/-! ## A247829.P4402589614458624678

`A214297(xor(1, A006369(n)))`
-/

namespace A247829.P4402589614458624678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214297 (Int.xor 1 (A006369 n)).toNat

end

end A247829.P4402589614458624678

namespace A247829

/-- `A214297(xor(1, A006369(n)))` -/
def P4402589614458624678.Spec : Prop :=
  ∀ n, P4402589614458624678.a n = A247829 n

end A247829

/-! ## A247829.P16047218653460051829

`A214297(1-A135997(n)+n)`
-/

namespace A247829.P16047218653460051829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214297 (1 - A135997 n + (n : ℤ)).toNat

end

end A247829.P16047218653460051829

namespace A247829

/-- `A214297(1-A135997(n)+n)` -/
def P16047218653460051829.Spec : Prop :=
  ∀ n, P16047218653460051829.a n = A247829 n

end A247829

/-! ## A247829.P10152341524630895859

`A214297(1-(A135997(n)-n))`
-/

namespace A247829.P10152341524630895859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214297 (1 - (A135997 n - (n : ℤ))).toNat

end

end A247829.P10152341524630895859

namespace A247829

/-- `A214297(1-(A135997(n)-n))` -/
def P10152341524630895859.Spec : Prop :=
  ∀ n, P10152341524630895859.a n = A247829 n

end A247829

/-! ## A247829.P17175374652597176963

`A214297(A004442(A006369(n)))`
-/

namespace A247829.P17175374652597176963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214297 (A004442 (A006369 n).toNat).toNat

end

end A247829.P17175374652597176963

namespace A247829

/-- `A214297(A004442(A006369(n)))` -/
def P17175374652597176963.Spec : Prop :=
  ∀ n, P17175374652597176963.a n = A247829 n

end A247829

/-!
# A247830: Pseudoprimes to base 2 divisible by 1093^2.

The programs for A247830, there is no canonical definition to state claims against.
-/

/-! ## A247830.P2243107420943440747

`record[A158358(A066099(n+4))]`
-/

namespace A247830.P2243107420943440747
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158358 (A066099 (n + 4)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A247830.P2243107420943440747

/-! ## A247830.P6863173551584047869

`A158358(A375577(∑[char[1]+1+n]))`
-/

namespace A247830.P6863173551584047869
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = n then 1 else 0) + 1 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158358 (A375577 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A247830.P6863173551584047869

/-! ## A247830.P8256329556659439705

`A158358(A065475(n+1)^A306454(n+1))`
-/

namespace A247830.P8256329556659439705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158358 (SequenceMachineLib.roundAway ((A065475 (n + 1) : ℚ) ^ (A306454 (n + 1) : ℤ))).toNat

end

end A247830.P8256329556659439705

/-! ## A247830.P1690149925086358104

`A158358(A057427(n)+A032555(n+1))`
-/

namespace A247830.P1690149925086358104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158358 (A057427 n + A032555 (n + 1)).toNat

end

end A247830.P1690149925086358104

/-! ## A247830.P7755590355483792200

`A158358(A057427(n)+A032559(n+1))`
-/

namespace A247830.P7755590355483792200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158358 (A057427 n + A032559 (n + 1)).toNat

end

end A247830.P7755590355483792200

/-!
# A247832: Least number k such that u(k) - Pi < 1/5^n, where u is defined using the Borchardt-Pfaff algorithm; see Comments.

The programs for A247832, there is no canonical definition to state claims against.
-/

/-! ## A247832.P15151241333154360011

`A102515(A135706(n))-A004277(n)`
-/

namespace A247832.P15151241333154360011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102515 (A135706 n).toNat - A004277 n

end

end A247832.P15151241333154360011

/-! ## A247832.P6572694901460121534

`A002024(∑[10*n]+1)%(2*(n+1))`
-/

namespace A247832.P6572694901460121534
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002024 (∑ j ∈ Finset.range (n + 1), f1 j + 1)) (2 * (n + 1) : ℤ)

end

end A247832.P6572694901460121534

/-! ## A247832.P16270945696613505834

`A394247(A109414(n))`
-/

namespace A247832.P16270945696613505834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394247 (A109414 n).toNat

end

end A247832.P16270945696613505834

/-!
# A247836: Primes p of the form sigma(2q-1) where q is a prime.

The programs for A247836, there is no canonical definition to state claims against.
-/

/-! ## A247836.P7994286122580249991

`p?[∑{d}[A192618(n+1), #]]`
-/

namespace A247836.P7994286122580249991
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192618 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n).natAbs, d

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A247836.P7994286122580249991

/-! ## A247836.P14024984746226954133

`p?[A247787(n+1)]`
-/

namespace A247836.P14024984746226954133
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247787 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A247836.P14024984746226954133

/-! ## A247836.P16659403234796815977

`p?[A000203(A192577(n+1))]`
-/

namespace A247836.P16659403234796815977
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A192577 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A247836.P16659403234796815977

/-! ## A247836.P7191497429729171533

`p?[A000203(A192618(n+1))]`
-/

namespace A247836.P7191497429729171533
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A192618 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A247836.P7191497429729171533

/-! ## A247836.P16331914076499135179

`p?[A000203(A033945(n+2))]`
-/

namespace A247836.P16331914076499135179
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A033945 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A247836.P16331914076499135179

/-!
# A247837: Primes p of the form sigma(2k-1) for a number k.

The programs for A247837, there is no canonical definition to state claims against.
-/

/-! ## A247837.P5780749007135037084

`∩[A003424(n+1), A065768(n+1)]`
-/

namespace A247837.P5780749007135037084
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003424 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065768 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A247837.P5780749007135037084

/-! ## A247837.P6910762331639910880

`∩[A023195(n+1), A065768(n+1)]`
-/

namespace A247837.P6910762331639910880
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023195 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065768 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A247837.P6910762331639910880

/-! ## A247837.P15212908910710422379

`∩[A065768(n+1), A085104(n+1)]`
-/

namespace A247837.P15212908910710422379
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065768 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085104 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A247837.P15212908910710422379

/-! ## A247837.P4454272548320960298

`∩[A065768(n+1), A206864(n+1)]`
-/

namespace A247837.P4454272548320960298
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065768 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206864 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A247837.P4454272548320960298

/-! ## A247837.P15557241129468441979

`∩[A065768(n+1), A206946(n+1)]`
-/

namespace A247837.P15557241129468441979
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065768 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206946 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A247837.P15557241129468441979

/-!
# A247838: Numbers k such that sigma(sigma(k)) is prime.

The programs for A247838, there is no canonical definition to state claims against.
-/

/-! ## A247838.P9636797963906113396

`2*A247821(n+1)-1`
-/

namespace A247838.P9636797963906113396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A247821 (n + 1) - 1

end

end A247838.P9636797963906113396

/-! ## A247838.P16819481929477159586

`A063103(A151659(n)+n)`
-/

namespace A247838.P16819481929477159586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063103 (A151659 n + (n : ℤ)).toNat

end

end A247838.P16819481929477159586

/-! ## A247838.P17664031756488876060

`A063103(A103517(n)-n)`
-/

namespace A247838.P17664031756488876060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063103 (A103517 n - (n : ℤ)).toNat

end

end A247838.P17664031756488876060

/-! ## A247838.P5576746122030704647

`record[A063103(Δ[A035106(n+1)])]`
-/

namespace A247838.P5576746122030704647
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035106 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063103 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A247838.P5576746122030704647

/-!
# A247839: Smallest Brady number with n digits.

The programs for A247839, there is no canonical definition to state claims against.
-/

/-! ## A247839.P9666273144674942922

`A247698(A313090(n)^A046774(n))`
-/

namespace A247839.P9666273144674942922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247698 (SequenceMachineLib.roundAway ((A313090 n : ℚ) ^ (A046774 n : ℤ))).toNat

end

end A247839.P9666273144674942922

/-! ## A247839.P4638484073131752351

`A247698(record[A313090(n)/A046774(n)])`
-/

namespace A247839.P4638484073131752351
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A313090 n : ℚ) / (A046774 n : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247698 (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))).toNat

end

end A247839.P4638484073131752351

/-!
# A247840: a(n) = Sum_{k=2..n} 6^k.

The programs for A247840, the canonical program `A247840.P9398059799867711768` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A247840 has offset 1).

The definition of A247840 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A247840.P8289868737335590847

`a(n-1)+6^(n+1)` with `a(0)=0`
-/

namespace A247840.P8289868737335590847
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + 6 ^ (n + 1)

end

end A247840.P8289868737335590847

namespace A247840

/-- `a(n-1)+6^(n+1)` -/
def P8289868737335590847.Spec : Prop :=
  ∀ n, (P8289868737335590847.a n : ℤ) = A247840 (n + 1)

end A247840

/-! ## A247840.P9398059799867711768

`7*a(n-1)-6*a(n-2)` with `a(0)=0, a(1)=36`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A247840

/-- `7*a(n-1)-6*a(n-2)` -/
def P9398059799867711768.Spec : Prop :=
  ∀ n, P9398059799867711768.a n = A247840 (n + 1)

theorem P9398059799867711768.correct : P9398059799867711768.Spec := by
  intro n
  simp only [A247840, Nat.add_sub_cancel]

end A247840

/-! ## A247840.P4545860331429317013

`36*A003464(n)`
-/

namespace A247840.P4545860331429317013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  36 * A003464 n

end

end A247840.P4545860331429317013

namespace A247840

/-- `36*A003464(n)` -/
def P4545860331429317013.Spec : Prop :=
  ∀ n, P4545860331429317013.a n = A247840 (n + 1)

end A247840

/-! ## A247840.P7741760939288695391

`A105281(n+1)-6`
-/

namespace A247840.P7741760939288695391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105281 (n + 1) - 6

end

end A247840.P7741760939288695391

namespace A247840

/-- `A105281(n+1)-6` -/
def P7741760939288695391.Spec : Prop :=
  ∀ n, P7741760939288695391.a n = A247840 (n + 1)

end A247840

/-! ## A247840.P3614697023943506459

`(6^(n+2)-36)/5`
-/

namespace A247840.P3614697023943506459
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((6 ^ (n + 2) : ℤ) - 36 : ℚ) / 5

end

end A247840.P3614697023943506459

namespace A247840

/-- `(6^(n+2)-36)/5` -/
def P3614697023943506459.Spec : Prop :=
  ∀ n, P3614697023943506459.a n = (A247840 (n + 1) : ℚ)

theorem P3614697023943506459.correct : P3614697023943506459.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A247840, Nat.add_sub_cancel, A247840.P3614697023943506459.a, A247840.P9398059799867711768.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A247840, Nat.add_sub_cancel, A247840.P3614697023943506459.a, A247840.P9398059799867711768.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A247840

/-! ## A247840.P12994563005213523999

`6*(a(n-1)+6)` with `a(0)=0`
-/

namespace A247840.P12994563005213523999
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  6 * (a (n - 1) + 6)

end

end A247840.P12994563005213523999

namespace A247840

/-- `6*(a(n-1)+6)` -/
def P12994563005213523999.Spec : Prop :=
  ∀ n, (P12994563005213523999.a n : ℤ) = A247840 (n + 1)

end A247840

/-! ## A247840.P17870227876320523709

`∑[6*a(n-1)]` with `a(0)=0, a(1)=36`
-/

namespace A247840.P17870227876320523709
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 36] fun n f1 =>
  6 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A247840.P17870227876320523709

namespace A247840

/-- `∑[6*a(n-1)]` -/
def P17870227876320523709.Spec : Prop :=
  ∀ n, (P17870227876320523709.a n : ℤ) = A247840 (n + 1)

end A247840

/-! ## A247840.P13482415751264440046

`∑[and(-n, 6^(n+1))]`
-/

namespace A247840.P13482415751264440046
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-(n : ℤ)) (6 ^ (n + 1) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A247840.P13482415751264440046

namespace A247840

/-- `∑[and(-n, 6^(n+1))]` -/
def P13482415751264440046.Spec : Prop :=
  ∀ n, P13482415751264440046.a n = A247840 (n + 1)

end A247840

/-! ## A247840.P5451577850522395522

`∑[(3*2%(n+2))^(n+1)]`
-/

namespace A247840.P5451577850522395522
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (3 * (2 % (n + 2))) ^ (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A247840.P5451577850522395522

namespace A247840

/-- `∑[(3*2%(n+2))^(n+1)]` -/
def P5451577850522395522.Spec : Prop :=
  ∀ n, (P5451577850522395522.a n : ℤ) = A247840 (n + 1)

end A247840

/-! ## A247840.P9461888056504604782

`6*A105281(n)`
-/

namespace A247840.P9461888056504604782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A105281 n

end

end A247840.P9461888056504604782

namespace A247840

/-- `6*A105281(n)` -/
def P9461888056504604782.Spec : Prop :=
  ∀ n, P9461888056504604782.a n = A247840 (n + 1)

end A247840

/-! ## A247840.P17735441628501216967

`3*(A233325(n)-1)`
-/

namespace A247840.P17735441628501216967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (A233325 n - 1)

end

end A247840.P17735441628501216967

namespace A247840

/-- `3*(A233325(n)-1)` -/
def P17735441628501216967.Spec : Prop :=
  ∀ n, P17735441628501216967.a n = A247840 (n + 1)

end A247840

/-! ## A247840.P6291987742748352833

`4*(A199412(n)-2)`
-/

namespace A247840.P6291987742748352833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (A199412 n - 2)

end

end A247840.P6291987742748352833

namespace A247840

/-- `4*(A199412(n)-2)` -/
def P6291987742748352833.Spec : Prop :=
  ∀ n, P6291987742748352833.a n = A247840 (n + 1)

end A247840

/-! ## A247840.P14771937329677123689

`A003464(n+2)-7`
-/

namespace A247840.P14771937329677123689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003464 (n + 2) - 7

end

end A247840.P14771937329677123689

namespace A247840

/-- `A003464(n+2)-7` -/
def P14771937329677123689.Spec : Prop :=
  ∀ n, P14771937329677123689.a n = A247840 (n + 1)

end A247840

/-! ## A247840.P12272202031594306369

`3*(A005618(n)-4)`
-/

namespace A247840.P12272202031594306369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (A005618 n - 4)

end

end A247840.P12272202031594306369

namespace A247840

/-- `3*(A005618(n)-4)` -/
def P12272202031594306369.Spec : Prop :=
  ∀ n, P12272202031594306369.a n = A247840 (n + 1)

end A247840

/-! ## A247840.P12192777806570600227

`A047851(n+2)-8`
-/

namespace A247840.P12192777806570600227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047851 (n + 2) - 8

end

end A247840.P12192777806570600227

namespace A247840

/-- `A047851(n+2)-8` -/
def P12192777806570600227.Spec : Prop :=
  ∀ n, P12192777806570600227.a n = A247840 (n + 1)

end A247840

/-! ## A247840.P15446340538314828470

`3*(A005610(n+1)-2)`
-/

namespace A247840.P15446340538314828470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (A005610 (n + 1) - 2)

end

end A247840.P15446340538314828470

namespace A247840

/-- `3*(A005610(n+1)-2)` -/
def P15446340538314828470.Spec : Prop :=
  ∀ n, P15446340538314828470.a n = A247840 (n + 1)

end A247840

/-! ## A247840.P7204952691860065523

`2*(A125682(n+1)-3)`
-/

namespace A247840.P7204952691860065523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A125682 (n + 1) - 3)

end

end A247840.P7204952691860065523

namespace A247840

/-- `2*(A125682(n+1)-3)` -/
def P7204952691860065523.Spec : Prop :=
  ∀ n, P7204952691860065523.a n = A247840 (n + 1)

end A247840

/-! ## A247840.P11705160558139306360

`A178672(n+1)/A000351(n)*A003948(n)`
-/

namespace A247840.P11705160558139306360
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A178672 (n + 1) : ℚ) / (A000351 n : ℚ) * (A003948 n : ℚ)

end

end A247840.P11705160558139306360

namespace A247840

/-- `A178672(n+1)/A000351(n)*A003948(n)` -/
def P11705160558139306360.Spec : Prop :=
  ∀ n, P11705160558139306360.a n = (A247840 (n + 1) : ℚ)

end A247840

/-!
# A247841: a(n) = Sum_{k=2..n} 8^k.

The programs for A247841, the canonical program `A247841.P13921417242103604511` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A247841 has offset 1).

The definition of A247841 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A247841.P7342258054256323401

`a(n-1)+8^(n+1)` with `a(0)=0`
-/

namespace A247841.P7342258054256323401
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + 8 ^ (n + 1)

end

end A247841.P7342258054256323401

namespace A247841

/-- `a(n-1)+8^(n+1)` -/
def P7342258054256323401.Spec : Prop :=
  ∀ n, (P7342258054256323401.a n : ℤ) = A247841 (n + 1)

end A247841

/-! ## A247841.P13921417242103604511

`9*a(n-1)-8*a(n-2)` with `a(0)=0, a(1)=64`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A247841

/-- `9*a(n-1)-8*a(n-2)` -/
def P13921417242103604511.Spec : Prop :=
  ∀ n, P13921417242103604511.a n = A247841 (n + 1)

theorem P13921417242103604511.correct : P13921417242103604511.Spec := by
  intro n
  simp only [A247841, Nat.add_sub_cancel]

end A247841

/-! ## A247841.P14356134171051930399

`A052379(n)-8`
-/

namespace A247841.P14356134171051930399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052379 n - 8

end

end A247841.P14356134171051930399

namespace A247841

/-- `A052379(n)-8` -/
def P14356134171051930399.Spec : Prop :=
  ∀ n, P14356134171051930399.a n = A247841 (n + 1)

end A247841

/-! ## A247841.P3945945070006696206

`16*A108019(n)`
-/

namespace A247841.P3945945070006696206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  16 * A108019 n

end

end A247841.P3945945070006696206

namespace A247841

/-- `16*A108019(n)` -/
def P3945945070006696206.Spec : Prop :=
  ∀ n, P3945945070006696206.a n = A247841 (n + 1)

end A247841

/-! ## A247841.P15445736117564555411

`64*A023001(n)`
-/

namespace A247841.P15445736117564555411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  64 * A023001 n

end

end A247841.P15445736117564555411

namespace A247841

/-- `64*A023001(n)` -/
def P15445736117564555411.Spec : Prop :=
  ∀ n, P15445736117564555411.a n = A247841 (n + 1)

end A247841

/-! ## A247841.P10499088838156250221

`32*A125835(n+1)`
-/

namespace A247841.P10499088838156250221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  32 * A125835 (n + 1)

end

end A247841.P10499088838156250221

namespace A247841

/-- `32*A125835(n+1)` -/
def P10499088838156250221.Spec : Prop :=
  ∀ n, P10499088838156250221.a n = A247841 (n + 1)

end A247841

/-! ## A247841.P12403531014194251384

`(8^(n+2)-64)/7`
-/

namespace A247841.P12403531014194251384
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((8 ^ (n + 2) : ℤ) - 64 : ℚ) / 7

end

end A247841.P12403531014194251384

namespace A247841

/-- `(8^(n+2)-64)/7` -/
def P12403531014194251384.Spec : Prop :=
  ∀ n, P12403531014194251384.a n = (A247841 (n + 1) : ℚ)

theorem P12403531014194251384.correct : P12403531014194251384.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A247841, Nat.add_sub_cancel, A247841.P12403531014194251384.a, A247841.P13921417242103604511.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A247841, Nat.add_sub_cancel, A247841.P12403531014194251384.a, A247841.P13921417242103604511.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A247841

/-! ## A247841.P5626789680657670966

`xor(8, ∑[8^(n+1)])`
-/

namespace A247841.P5626789680657670966
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8 ^ (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 8 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A247841.P5626789680657670966

namespace A247841

/-- `xor(8, ∑[8^(n+1)])` -/
def P5626789680657670966.Spec : Prop :=
  ∀ n, (P5626789680657670966.a n : ℤ) = A247841 (n + 1)

end A247841

/-! ## A247841.P4549846084613156743

`8*xor(1, ∑[8^n])`
-/

namespace A247841.P4549846084613156743
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8 ^ n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8 * Nat.xor 1 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A247841.P4549846084613156743

namespace A247841

/-- `8*xor(1, ∑[8^n])` -/
def P4549846084613156743.Spec : Prop :=
  ∀ n, (P4549846084613156743.a n : ℤ) = A247841 (n + 1)

end A247841

/-! ## A247841.P4571208943081657579

`8*(a(n-1)+8)` with `a(0)=0`
-/

namespace A247841.P4571208943081657579
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  8 * (a (n - 1) + 8)

end

end A247841.P4571208943081657579

namespace A247841

/-- `8*(a(n-1)+8)` -/
def P4571208943081657579.Spec : Prop :=
  ∀ n, (P4571208943081657579.a n : ℤ) = A247841 (n + 1)

end A247841

/-! ## A247841.P9877426792657083221

`8*or(8, a(n-1))` with `a(0)=0`
-/

namespace A247841.P9877426792657083221
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  8 * Nat.lor 8 (a (n - 1))

end

end A247841.P9877426792657083221

namespace A247841

/-- `8*or(8, a(n-1))` -/
def P9877426792657083221.Spec : Prop :=
  ∀ n, (P9877426792657083221.a n : ℤ) = A247841 (n + 1)

end A247841

/-! ## A247841.P7443534406837397889

`∑[and(-9, 8^(n+1))]`
-/

namespace A247841.P7443534406837397889
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-9) (8 ^ (n + 1) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A247841.P7443534406837397889

namespace A247841

/-- `∑[and(-9, 8^(n+1))]` -/
def P7443534406837397889.Spec : Prop :=
  ∀ n, P7443534406837397889.a n = A247841 (n + 1)

end A247841

/-! ## A247841.P11999071708975900286

`8*∑[8*a(n-1)]` with `a(0)=0, a(1)=8`
-/

namespace A247841.P11999071708975900286
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 8] fun n f1 =>
  8 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A247841.P11999071708975900286

namespace A247841

/-- `8*∑[8*a(n-1)]` -/
def P11999071708975900286.Spec : Prop :=
  ∀ n, (P11999071708975900286.a n : ℤ) = A247841 (n + 1)

end A247841

/-! ## A247841.P773706386576864645

`∑[(4*2%(n+2))^(n+1)]`
-/

namespace A247841.P773706386576864645
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (4 * (2 % (n + 2))) ^ (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A247841.P773706386576864645

namespace A247841

/-- `∑[(4*2%(n+2))^(n+1)]` -/
def P773706386576864645.Spec : Prop :=
  ∀ n, (P773706386576864645.a n : ℤ) = A247841 (n + 1)

end A247841

/-! ## A247841.P6194124055207611796

`∑[((2^(n+1))%(5^n))^3]`
-/

namespace A247841.P6194124055207611796
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 ^ (n + 1) % 5 ^ n) ^ 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A247841.P6194124055207611796

namespace A247841

/-- `∑[((2^(n+1))%(5^n))^3]` -/
def P6194124055207611796.Spec : Prop :=
  ∀ n, (P6194124055207611796.a n : ℤ) = A247841 (n + 1)

end A247841

/-! ## A247841.P11430178959118934144

`4*(A233328(n)-1)`
-/

namespace A247841.P11430178959118934144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (A233328 n - 1)

end

end A247841.P11430178959118934144

namespace A247841

/-- `4*(A233328(n)-1)` -/
def P11430178959118934144.Spec : Prop :=
  ∀ n, P11430178959118934144.a n = A247841 (n + 1)

end A247841

/-! ## A247841.P791104268279218933

`A023001(n+2)-9`
-/

namespace A247841.P791104268279218933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023001 (n + 2) - 9

end

end A247841.P791104268279218933

namespace A247841

/-- `A023001(n+2)-9` -/
def P791104268279218933.Spec : Prop :=
  ∀ n, P791104268279218933.a n = A247841 (n + 1)

end A247841

/-! ## A247841.P7318164065165560671

`∑[A186949(n+1)^3]`
-/

namespace A247841.P7318164065165560671
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186949 (n + 1) ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A247841.P7318164065165560671

namespace A247841

/-- `∑[A186949(n+1)^3]` -/
def P7318164065165560671.Spec : Prop :=
  ∀ n, P7318164065165560671.a n = A247841 (n + 1)

end A247841

/-!
# A247842: a(n) = Sum_{k=2..n} 9^k.

The programs for A247842, the canonical program `A247842.P13661834873816820068` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A247842 has offset 1).

The definition of A247842 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A247842.P11304613880554221687

`a(n-1)+9^(n+1)` with `a(0)=0`
-/

namespace A247842.P11304613880554221687
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + 9 ^ (n + 1)

end

end A247842.P11304613880554221687

namespace A247842

/-- `a(n-1)+9^(n+1)` -/
def P11304613880554221687.Spec : Prop :=
  ∀ n, (P11304613880554221687.a n : ℤ) = A247842 (n + 1)

end A247842

/-! ## A247842.P13661834873816820068

`10*a(n-1)-9*a(n-2)` with `a(0)=0, a(1)=81`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A247842

/-- `10*a(n-1)-9*a(n-2)` -/
def P13661834873816820068.Spec : Prop :=
  ∀ n, P13661834873816820068.a n = A247842 (n + 1)

theorem P13661834873816820068.correct : P13661834873816820068.Spec := by
  intro n
  simp only [A247842, Nat.add_sub_cancel]

end A247842

/-! ## A247842.P5892991039543508663

`81*A002452(n)`
-/

namespace A247842.P5892991039543508663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  81 * A002452 n

end

end A247842.P5892991039543508663

namespace A247842

/-- `81*A002452(n)` -/
def P5892991039543508663.Spec : Prop :=
  ∀ n, P5892991039543508663.a n = A247842 (n + 1)

end A247842

/-! ## A247842.P9765993366080713578

`A052386(n+1)-9`
-/

namespace A247842.P9765993366080713578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052386 (n + 1) - 9

end

end A247842.P9765993366080713578

namespace A247842

/-- `A052386(n+1)-9` -/
def P9765993366080713578.Spec : Prop :=
  ∀ n, P9765993366080713578.a n = A247842 (n + 1)

end A247842

/-! ## A247842.P11704198338788209307

`(9^(n+2)-81)/8`
-/

namespace A247842.P11704198338788209307
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((9 ^ (n + 2) : ℤ) - 81 : ℚ) / 8

end

end A247842.P11704198338788209307

namespace A247842

/-- `(9^(n+2)-81)/8` -/
def P11704198338788209307.Spec : Prop :=
  ∀ n, P11704198338788209307.a n = (A247842 (n + 1) : ℚ)

theorem P11704198338788209307.correct : P11704198338788209307.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A247842, Nat.add_sub_cancel, A247842.P11704198338788209307.a, A247842.P13661834873816820068.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A247842, Nat.add_sub_cancel, A247842.P11704198338788209307.a, A247842.P13661834873816820068.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A247842

/-! ## A247842.P13118474300911250260

`9*(a(n-1)+9)` with `a(0)=0`
-/

namespace A247842.P13118474300911250260
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  9 * (a (n - 1) + 9)

end

end A247842.P13118474300911250260

namespace A247842

/-- `9*(a(n-1)+9)` -/
def P13118474300911250260.Spec : Prop :=
  ∀ n, (P13118474300911250260.a n : ℤ) = A247842 (n + 1)

end A247842

/-! ## A247842.P11321603583589891446

`∑[dr(9*n)^(n+1)]`
-/

namespace A247842.P11321603583589891446
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (9 * n : ℤ) ^ (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A247842.P11321603583589891446

namespace A247842

/-- `∑[dr(9*n)^(n+1)]` -/
def P11321603583589891446.Spec : Prop :=
  ∀ n, (P11321603583589891446.a n : ℤ) = A247842 (n + 1)

end A247842

/-! ## A247842.P13483113519393379924

`9*lcm(9, floor(9^n/8))`
-/

namespace A247842.P13483113519393379924
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9 * Int.lcm 9 ⌊(9 ^ n : ℚ) / 8⌋

end

end A247842.P13483113519393379924

namespace A247842

/-- `9*lcm(9, floor(9^n/8))` -/
def P13483113519393379924.Spec : Prop :=
  ∀ n, (P13483113519393379924.a n : ℤ) = A247842 (n + 1)

end A247842

/-! ## A247842.P3760532329906427369

`9*∑[9*a(n-1)]` with `a(0)=0, a(1)=9`
-/

namespace A247842.P3760532329906427369
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 9] fun n f1 =>
  9 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A247842.P3760532329906427369

namespace A247842

/-- `9*∑[9*a(n-1)]` -/
def P3760532329906427369.Spec : Prop :=
  ∀ n, (P3760532329906427369.a n : ℤ) = A247842 (n + 1)

end A247842

/-! ## A247842.P18140467141098865766

`9*∑[((3^n)%(4^n))²]`
-/

namespace A247842.P18140467141098865766
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (3 ^ n % 4 ^ n) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A247842.P18140467141098865766

namespace A247842

/-- `9*∑[((3^n)%(4^n))²]` -/
def P18140467141098865766.Spec : Prop :=
  ∀ n, (P18140467141098865766.a n : ℤ) = A247842 (n + 1)

end A247842

/-! ## A247842.P12908370689620551953

`∑[(3*3%(n+3))^(n+1)]`
-/

namespace A247842.P12908370689620551953
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (3 * (3 % (n + 3))) ^ (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A247842.P12908370689620551953

namespace A247842

/-- `∑[(3*3%(n+3))^(n+1)]` -/
def P12908370689620551953.Spec : Prop :=
  ∀ n, (P12908370689620551953.a n : ℤ) = A247842 (n + 1)

end A247842

/-! ## A247842.P15583182506952667276

`9*A052386(n)`
-/

namespace A247842.P15583182506952667276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 * A052386 n

end

end A247842.P15583182506952667276

namespace A247842

/-- `9*A052386(n)` -/
def P15583182506952667276.Spec : Prop :=
  ∀ n, P15583182506952667276.a n = A247842 (n + 1)

end A247842

/-! ## A247842.P7757485053464004147

`∑[A180599(n)^(n+1)]`
-/

namespace A247842.P7757485053464004147
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180599 n ^ (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A247842.P7757485053464004147

namespace A247842

/-- `∑[A180599(n)^(n+1)]` -/
def P7757485053464004147.Spec : Prop :=
  ∀ n, P7757485053464004147.a n = A247842 (n + 1)

end A247842

/-! ## A247842.P264585976088754762

`abs(9-∑[A001019(n+1)])`
-/

namespace A247842.P264585976088754762
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001019 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |9 - ∑ j ∈ Finset.range (n + 1), f1 j|

end

end A247842.P264585976088754762

namespace A247842

/-- `abs(9-∑[A001019(n+1)])` -/
def P264585976088754762.Spec : Prop :=
  ∀ n, P264585976088754762.a n = A247842 (n + 1)

end A247842

/-! ## A247842.P7887922343506635090

`abs(9-∑[9*A001019(n)])`
-/

namespace A247842.P7887922343506635090
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 * A001019 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |9 - ∑ j ∈ Finset.range (n + 1), f1 j|

end

end A247842.P7887922343506635090

namespace A247842

/-- `abs(9-∑[9*A001019(n)])` -/
def P7887922343506635090.Spec : Prop :=
  ∀ n, P7887922343506635090.a n = A247842 (n + 1)

end A247842

/-! ## A247842.P6449065035704629473

`∑[(A301571(n+1)-n)²]`
-/

namespace A247842.P6449065035704629473
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A301571 (n + 1) - (n : ℤ)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A247842.P6449065035704629473

namespace A247842

/-- `∑[(A301571(n+1)-n)²]` -/
def P6449065035704629473.Spec : Prop :=
  ∀ n, P6449065035704629473.a n = A247842 (n + 1)

end A247842

/-! ## A247842.P14890716662965822287

`∑[(A113923(n+1)^(n+1))²]`
-/

namespace A247842.P14890716662965822287
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A113923 (n + 1) ^ (n + 1)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A247842.P14890716662965822287

namespace A247842

/-- `∑[(A113923(n+1)^(n+1))²]` -/
def P14890716662965822287.Spec : Prop :=
  ∀ n, P14890716662965822287.a n = A247842 (n + 1)

end A247842

/-!
# A247843: Consecutive exclusionary squares: Numbers n such that n^2 does not contain digits of n and (n+1)^2 does not contain digits of n+1.

The programs for A247843, there is no canonical definition to state claims against.
-/

/-! ## A247843.P10466770806215269714

`∩[A029783(n+1)-1, A029783(n+1)]`
-/

namespace A247843.P10466770806215269714
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029783 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029783 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A247843.P10466770806215269714

/-! ## A247843.P10707879508664648930

`A029783(eq[1, A029783(n+2)-A029783(n+1)]+1)`
-/

namespace A247843.P10707879508664648930
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029783 (n + 2) - A029783 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029783 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A247843.P10707879508664648930

/-! ## A247843.P17963941680863189690

`eq[tan(A076493(n+1)), A076493(n)]`
-/

namespace A247843.P17963941680863189690
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.tan (A076493 (n + 1) : ℝ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076493 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℝ)) n

end

end A247843.P17963941680863189690

/-! ## A247843.P7201187033490160563

`∩[lt[2, A253600(n+1)], A029783(n+1)]`
-/

namespace A247843.P7201187033490160563
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253600 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029783 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f4 j = (x : ℤ)) n

end

end A247843.P7201187033490160563

/-! ## A247843.P9662955891496340495

`∩[A029783(n+1), A023443(A029783(n+1))]`
-/

namespace A247843.P9662955891496340495
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029783 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A029783 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A247843.P9662955891496340495

/-!
# A247845: Primes, p, that generate the prime quadruplets, p^2-2p+2k (for k = -2, -1, 1, 2).

The programs for A247845, there is no canonical definition to state claims against.
-/

/-! ## A247845.P9008910817178996708

`floor(sqrt(A247846(n+1)))+2`
-/

namespace A247845.P9008910817178996708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A247846 (n + 1)) + 2

end

end A247845.P9008910817178996708

/-! ## A247845.P3482164704075970816

`ceil(sqrt(A247846(n+1)+A113403(n+1)))`
-/

namespace A247845.P3482164704075970816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A247846 (n + 1) + A113403 (n + 1) : ℝ)⌉

end

end A247845.P3482164704075970816

/-! ## A247845.P13287991008844001009

`ceil(sqrt(A247846(n+1)+A113404(n+1)))`
-/

namespace A247845.P13287991008844001009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A247846 (n + 1) + A113404 (n + 1) : ℝ)⌉

end

end A247845.P13287991008844001009

/-! ## A247845.P8054200420882842900

`ceil(sqrt(A247846(n+1)+A160264(n+1)))`
-/

namespace A247845.P8054200420882842900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A247846 (n + 1) + A160264 (n + 1) : ℝ)⌉

end

end A247845.P8054200420882842900

/-! ## A247845.P2778398744754363789

`ceil(sqrt(A342809(n+1)+A247846(n+1)))`
-/

namespace A247845.P2778398744754363789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A342809 (n + 1) + A247846 (n + 1) : ℝ)⌉

end

end A247845.P2778398744754363789

/-!
# A247850: The 5th Hermite Polynomial evaluated at n: H_5(n) = 32*n^5 - 160*n^3 + 120*n.

The programs for A247850, the canonical program `A247850.P7070770291260649494` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A247850 has offset 0).

The definition of A247850 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `32*n^5-160*n^3+120*n` (program `A247850.P7070770291260649494`, by `A247850.P7070770291260649494.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A247850.P7070770291260649494

`32*n^5-160*n^3+120*n`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A247850

/-- `32*n^5-160*n^3+120*n` -/
def P7070770291260649494.Spec : Prop :=
  ∀ n, P7070770291260649494.a n = A247850 n

theorem P7070770291260649494.correct : P7070770291260649494.Spec := by
  intro n
  simp only [A247850]

end A247850

/-!
# A247851: The 6th Hermite Polynomial evaluated at n: H_6(n) = 64*n^6-480*n^4+720*n^2-120.

The programs for A247851, the canonical program `A247851.P6851998974270576176` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A247851 has offset 0).

The definition of A247851 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `64*n^6-480*n^4+720*n²-120` (program `A247851.P6851998974270576176`, by `A247851.P6851998974270576176.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A247851.P6851998974270576176

`64*n^6-480*n^4+720*n²-120`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A247851

/-- `64*n^6-480*n^4+720*n²-120` -/
def P6851998974270576176.Spec : Prop :=
  ∀ n, P6851998974270576176.a n = A247851 n

theorem P6851998974270576176.correct : P6851998974270576176.Spec := by
  intro n
  simp only [A247851]

end A247851

/-!
# A247857: Primes of the form a^2 + b^4, with repetition.

The programs for A247857, there is no canonical definition to state claims against.
-/

/-! ## A247857.P15579206605422372100

`A028916(A060144(2*(n+2))^A213217(n))`
-/

namespace A247857.P15579206605422372100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028916 (SequenceMachineLib.roundAway ((A060144 (2 * (n + 2)) : ℚ) ^ (A213217 n : ℤ))).toNat

end

end A247857.P15579206605422372100

/-!
# A247859: The product of the first n Catalan numbers and 2^(n^2).

The programs for A247859, there is no canonical definition to state claims against.
-/

/-! ## A247859.P3549720775603479156

`2^n²*A003046(n)`
-/

namespace A247859.P3549720775603479156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n ^ 2 : ℤ) * A003046 n

end

end A247859.P3549720775603479156

/-! ## A247859.P12276368624631945056

`∏[C(2*n, n)/(n+1)*ceil(4^n/2)]`
-/

namespace A247859.P12276368624631945056
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose (2 * n) n : ℚ) / (n + 1 : ℚ) * (⌈(4 ^ n : ℚ) / 2⌉ : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A247859.P12276368624631945056

/-! ## A247859.P18160889581730120785

`2^n²*∏[A000108(n)]`
-/

namespace A247859.P18160889581730120785
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n ^ 2 : ℤ) * (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A247859.P18160889581730120785

/-! ## A247859.P6371449239521923353

`∏[A000108(n)*A081294(n)]`
-/

namespace A247859.P6371449239521923353
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n * A081294 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A247859.P6371449239521923353

/-! ## A247859.P5967176248037584463

`∏[abs(A168491(n))*A081294(n)]`
-/

namespace A247859.P5967176248037584463
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A168491 n| * A081294 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A247859.P5967176248037584463

/-!
# A247866: Numbers k such that k!3 + 3^4 is prime.

The programs for A247866, there is no canonical definition to state claims against.
-/

/-! ## A247866.P7701777533632870301

`eq[A049084(A081271(n)), A077267(n)]`
-/

namespace A247866.P7701777533632870301
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049084 (A081271 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077267 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A247866.P7701777533632870301

/-!
# A247867: a(n) is the smallest prime in the interval [k*sqrt(k), k*sqrt(k+2)], where k = A001359(n), or a(n)=0 if there is no prime in this interval.

The programs for A247867, there is no canonical definition to state claims against.
-/

/-! ## A247867.P10715771759875897863

`A276881(A267167(n))-A321336(n)`
-/

namespace A247867.P10715771759875897863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276881 (A267167 n).toNat - A321336 n

end

end A247867.P10715771759875897863

/-!
# A247869: (prime(A247824(n)) + prime(n)) / (A247824(n) + n).

The programs for A247869, there is no canonical definition to state claims against.
-/

/-! ## A247869.P9880978716790050831

`A055642(A008778(n))+char[A283182(n)]`
-/

namespace A247869.P9880978716790050831
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283182 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 (A008778 n).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A247869.P9880978716790050831

/-!
# A247870: Least prime factor of odd numbers congruent to 4 modulo 9.

The programs for A247870, there is no canonical definition to state claims against.
-/

/-! ## A247870.P13586301427531867568

`A020639(A247678(n+1))`
-/

namespace A247870.P13586301427531867568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A247678 (n + 1)).toNat

end

end A247870.P13586301427531867568

/-! ## A247870.P7185089717317864870

`A020639(∩[A091300(n+1), A017209(n)])`
-/

namespace A247870.P7185089717317864870
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091300 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017209 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A247870.P7185089717317864870

/-! ## A247870.P10039969556743504365

`p?[A281680(A017221(n)+1)]`
-/

namespace A247870.P10039969556743504365
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281680 (A017221 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A247870.P10039969556743504365

/-! ## A247870.P9807161465752823298

`A107286(or(1, A247678(n+1)))`
-/

namespace A247870.P9807161465752823298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107286 (Int.lor 1 (A247678 (n + 1))).toNat

end

end A247870.P9807161465752823298

/-! ## A247870.P834390835270089141

`p?[A074828(A017209(2*n+1))]`
-/

namespace A247870.P834390835270089141
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074828 (A017209 (2 * n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A247870.P834390835270089141

/-! ## A247870.P4253880593966115737

`p?[A074828(A017197(2*n+1)+1)]`
-/

namespace A247870.P4253880593966115737
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074828 (A017197 (2 * n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A247870.P4253880593966115737

/-! ## A247870.P5627390481383383111

`p?[A107286(A017185(2*n+1)+2)]`
-/

namespace A247870.P5627390481383383111
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107286 (A017185 (2 * n + 1) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A247870.P5627390481383383111

/-! ## A247870.P8140939952421478877

`p?[A107286(A017221(2*n+1)-1)]`
-/

namespace A247870.P8140939952421478877
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107286 (A017221 (2 * n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A247870.P8140939952421478877

/-! ## A247870.P3364355493334719385

`p?[A107286(12*n+11+A016789(2*n))]`
-/

namespace A247870.P3364355493334719385
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107286 ((12 * n + 11 : ℤ) + A016789 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A247870.P3364355493334719385

/-! ## A247870.P2763441224558854064

`p?[A107286(A062545(A017221(n)))]`
-/

namespace A247870.P2763441224558854064
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107286 (A062545 (A017221 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A247870.P2763441224558854064

/-! ## A247870.P8239142923196928096

`p?[A065530(A107286(A017209(n)))]`
-/

namespace A247870.P8239142923196928096
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065530 (A107286 (A017209 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A247870.P8239142923196928096

/-! ## A247870.P12808036661088460079

`p?[A111787(A017209(A004273(n)))]`
-/

namespace A247870.P12808036661088460079
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111787 (A017209 (A004273 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A247870.P12808036661088460079

/-! ## A247870.P8598699637322948563

`p?[A111787(2*A017209(2*n+1))]`
-/

namespace A247870.P8598699637322948563
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111787 (2 * A017209 (2 * n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A247870.P8598699637322948563

/-!
# A247871: Least prime factor of A247679.

The programs for A247871, there is no canonical definition to state claims against.
-/

/-! ## A247871.P8208421040813812204

`A020639(A247679(n+1))`
-/

namespace A247871.P8208421040813812204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A247679 (n + 1)).toNat

end

end A247871.P8208421040813812204

/-! ## A247871.P16135566594511713543

`p?[A020639(A239129(n+1))%A016921(n)]`
-/

namespace A247871.P16135566594511713543
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A020639 (A239129 (n + 1)).toNat) (A016921 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A247871.P16135566594511713543

/-! ## A247871.P2291816867389438146

`A020639(∩[A092256(n+1), A017257(n)])`
-/

namespace A247871.P2291816867389438146
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092256 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017257 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A247871.P2291816867389438146

/-! ## A247871.P171042167664767677

`p?[A281680(3*3*(n+1)-1)]`
-/

namespace A247871.P171042167664767677
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281680 (3 * (3 * (n + 1)) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A247871.P171042167664767677

/-! ## A247871.P5728880039397588010

`p?[A107286(A239129(n+1))]`
-/

namespace A247871.P5728880039397588010
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107286 (A239129 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A247871.P5728880039397588010

/-! ## A247871.P2549035651001529565

`p?[A074828(A161705(n+1)-2)]`
-/

namespace A247871.P2549035651001529565
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074828 (A161705 (n + 1) - 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A247871.P2549035651001529565

/-! ## A247871.P16503070231739081371

`p?[A074828(A017245(2*n+1)+1)]`
-/

namespace A247871.P16503070231739081371
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074828 (A017245 (2 * n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A247871.P16503070231739081371

/-! ## A247871.P7373396763932356889

`p?[A107286(A016969(A016789(n)))]`
-/

namespace A247871.P7373396763932356889
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107286 (A016969 (A016789 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A247871.P7373396763932356889

/-!
# A247872: Least prime factor of A247681(n).

The programs for A247872, there is no canonical definition to state claims against.
-/

/-! ## A247872.P602931445115409958

`A020639(A247681(n+2))`
-/

namespace A247872.P602931445115409958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A247681 (n + 2)).toNat

end

end A247872.P602931445115409958

/-! ## A247872.P14871429347896981762

`p?[A281680(9*n)]`
-/

namespace A247872.P14871429347896981762
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281680 (9 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A247872.P14871429347896981762

/-! ## A247872.P15673502397320926981

`p?[A074828(A161705(n))]`
-/

namespace A247872.P15673502397320926981
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074828 (A161705 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A247872.P15673502397320926981

/-! ## A247872.P14942075679309688565

`p?[A107286(A239129(n+1)+2)]`
-/

namespace A247872.P14942075679309688565
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107286 (A239129 (n + 1) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A247872.P14942075679309688565

/-! ## A247872.P10698751247329112261

`p?[A107286(A017185(2*n)-1)]`
-/

namespace A247872.P10698751247329112261
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107286 (A017185 (2 * n) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A247872.P10698751247329112261

/-! ## A247872.P2717078896830912268

`p?[A074828(A017197(2*n)-2)]`
-/

namespace A247872.P2717078896830912268
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074828 (A017197 (2 * n) - 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A247872.P2717078896830912268

/-! ## A247872.P18419046894840086557

`p?[A107286(A001651(12*n+1))]`
-/

namespace A247872.P18419046894840086557
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107286 (A001651 (12 * n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A247872.P18419046894840086557

/-! ## A247872.P4675160357030483007

`p?[A250480(A250480(3*6*n+1)+1)]`
-/

namespace A247872.P4675160357030483007
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250480 (A250480 (3 * (6 * n) + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A247872.P4675160357030483007

/-!
# A247874: Lesser of twin primes (p, q=p+2) such that 7 is a square mod p and mod q.

The programs for A247874, there is no canonical definition to state claims against.
-/

/-! ## A247874.P13124551585592833249

`∩[A038878(n+1)-2, A038878(n+1)]`
-/

namespace A247874.P13124551585592833249
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038878 (n + 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038878 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A247874.P13124551585592833249

/-! ## A247874.P584649278234796686

`∩[A296934(n+1)-2, A296934(n+1)]`
-/

namespace A247874.P584649278234796686
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296934 (n + 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296934 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A247874.P584649278234796686

/-! ## A247874.P3427780929102034239

`A038878(eq[2, A038878(n+2)-A038878(n+1)]+1)`
-/

namespace A247874.P3427780929102034239
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038878 (n + 2) - A038878 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038878 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A247874.P3427780929102034239

/-! ## A247874.P4807142431163303040

`∩[A047299(A047248(2*n+5)), A111166(n+1)]`
-/

namespace A247874.P4807142431163303040
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047299 (A047248 (2 * n + 5)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111166 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A247874.P4807142431163303040

/-! ## A247874.P11141069641747620502

`∩[A047299(A047248(2*n+5)), A006512(n+1)-2]`
-/

namespace A247874.P11141069641747620502
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047299 (A047248 (2 * n + 5)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006512 (n + 1) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A247874.P11141069641747620502

/-! ## A247874.P4510842739371960823

`p?[Δ[A008794(A038878(n+1))]]`
-/

namespace A247874.P4510842739371960823
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008794 (A038878 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A247874.P4510842739371960823

/-!
# A247875: Numbers that are even or whose binary expansions contain one or more pairs of adjacent zeros when odd.

The programs for A247875, the canonical program `A247875.P746312147594678811` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A247875 has offset 1).

The definition of A247875 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A247875.P10753647433569770387

`comp[2*eq[and(n, 2*n+1), and(n, 2*n+n+2)]+1]`
-/

namespace A247875.P10753647433569770387
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land n (2 * n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land n (2 * n + (n + 2))

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun j => f2 j = f3 j) n + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A247875.P10753647433569770387

namespace A247875

/-- `comp[2*eq[and(n, 2*n+1), and(n, 2*n+n+2)]+1]` -/
def P10753647433569770387.Spec : Prop :=
  ∀ n, (P10753647433569770387.a n : ℤ) = A247875 (n + 1)

end A247875

/-! ## A247875.P8918898941737791951

`comp[A247648(n+1)]`
-/

namespace A247875.P8918898941737791951
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247648 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A247875.P8918898941737791951

namespace A247875

/-- `comp[A247648(n+1)]` -/
def P8918898941737791951.Spec : Prop :=
  ∀ n, (P8918898941737791951.a n : ℤ) = A247875 (n + 1)

end A247875

/-! ## A247875.P7851008573638477450

`comp[or(1, A265716(n))]`
-/

namespace A247875.P7851008573638477450
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A265716 n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A247875.P7851008573638477450

namespace A247875

/-- `comp[or(1, A265716(n))]` -/
def P7851008573638477450.Spec : Prop :=
  ∀ n, (P7851008573638477450.a n : ℤ) = A247875 (n + 1)

end A247875

/-! ## A247875.P2574734224591675219

`comp[2*A052499(n)-1]`
-/

namespace A247875.P2574734224591675219
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A052499 n - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A247875.P2574734224591675219

namespace A247875

/-- `comp[2*A052499(n)-1]` -/
def P2574734224591675219.Spec : Prop :=
  ∀ n, (P2574734224591675219.a n : ℤ) = A247875 (n + 1)

end A247875

/-! ## A247875.P11305473942033443625

`comp[or(1, A003754(n+1))]`
-/

namespace A247875.P11305473942033443625
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A003754 (n + 1))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A247875.P11305473942033443625

namespace A247875

/-- `comp[or(1, A003754(n+1))]` -/
def P11305473942033443625.Spec : Prop :=
  ∀ n, (P11305473942033443625.a n : ℤ) = A247875 (n + 1)

end A247875

/-! ## A247875.P4247467155237969925

`comp[xor(n, A053738(n+1))]`
-/

namespace A247875.P4247467155237969925
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (A053738 (n + 1))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A247875.P4247467155237969925

namespace A247875

/-- `comp[xor(n, A053738(n+1))]` -/
def P4247467155237969925.Spec : Prop :=
  ∀ n, (P4247467155237969925.a n : ℤ) = A247875 (n + 1)

end A247875

/-! ## A247875.P10829399572406180080

`∪[2*n, A004751(n+1)]`
-/

namespace A247875.P10829399572406180080
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004751 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A247875.P10829399572406180080

namespace A247875

/-- `∪[2*n, A004751(n+1)]` -/
def P10829399572406180080.Spec : Prop :=
  ∀ n, (P10829399572406180080.a n : ℤ) = A247875 (n + 1)

end A247875

/-! ## A247875.P10047607412735415399

`∪[2*n, A004753(n+1)]`
-/

namespace A247875.P10047607412735415399
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004753 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A247875.P10047607412735415399

namespace A247875

/-- `∪[2*n, A004753(n+1)]` -/
def P10047607412735415399.Spec : Prop :=
  ∀ n, (P10047607412735415399.a n : ℤ) = A247875 (n + 1)

end A247875

/-! ## A247875.P8190291352657331505

`lt[2, A006530(or(n+1, 2*n)+2)]`
-/

namespace A247875.P8190291352657331505
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (Nat.lor (n + 1) (2 * n) + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A247875.P8190291352657331505

namespace A247875

/-- `lt[2, A006530(or(n+1, 2*n)+2)]` -/
def P8190291352657331505.Spec : Prop :=
  ∀ n, (P8190291352657331505.a n : ℤ) = A247875 (n + 1)

end A247875

/-! ## A247875.P12454076507665340844

`∪[A004751(n+1), A005843(n)]`
-/

namespace A247875.P12454076507665340844
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004751 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A247875.P12454076507665340844

namespace A247875

/-- `∪[A004751(n+1), A005843(n)]` -/
def P12454076507665340844.Spec : Prop :=
  ∀ n, (P12454076507665340844.a n : ℤ) = A247875 (n + 1)

end A247875

/-! ## A247875.P17333557843284644664

`∪[A004753(n+1), A005843(n)]`
-/

namespace A247875.P17333557843284644664
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004753 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A247875.P17333557843284644664

namespace A247875

/-- `∪[A004753(n+1), A005843(n)]` -/
def P17333557843284644664.Spec : Prop :=
  ∀ n, (P17333557843284644664.a n : ℤ) = A247875 (n + 1)

end A247875

/-! ## A247875.P4083768429041923273

`∪[A004753(n+1), A130824(n)]`
-/

namespace A247875.P4083768429041923273
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004753 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130824 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A247875.P4083768429041923273

namespace A247875

/-- `∪[A004753(n+1), A130824(n)]` -/
def P4083768429041923273.Spec : Prop :=
  ∀ n, (P4083768429041923273.a n : ℤ) = A247875 (n + 1)

end A247875

/-! ## A247875.P9130507140058207972

`∪[A004753(n+1), A047395(n+1)]`
-/

namespace A247875.P9130507140058207972
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004753 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047395 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A247875.P9130507140058207972

namespace A247875

/-- `∪[A004753(n+1), A047395(n+1)]` -/
def P9130507140058207972.Spec : Prop :=
  ∀ n, (P9130507140058207972.a n : ℤ) = A247875 (n + 1)

end A247875

/-! ## A247875.P746312147594678811

`lt[A135416(or(n+1, 2*n)+1), A059126(n)]`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A247875

/-- `lt[A135416(or(n+1, 2*n)+1), A059126(n)]` -/
def P746312147594678811.Spec : Prop :=
  ∀ n, (P746312147594678811.a n : ℤ) = A247875 (n + 1)

theorem P746312147594678811.correct : P746312147594678811.Spec := by
  intro n
  simp only [A247875, Nat.add_sub_cancel]

end A247875

/-! ## A247875.P15783473466782622793

`eq[A036987(2*n), A036987(A334076(n)+1)]`
-/

namespace A247875.P15783473466782622793
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036987 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036987 (A334076 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A247875.P15783473466782622793

namespace A247875

/-- `eq[A036987(2*n), A036987(A334076(n)+1)]` -/
def P15783473466782622793.Spec : Prop :=
  ∀ n, (P15783473466782622793.a n : ℤ) = A247875 (n + 1)

end A247875

/-! ## A247875.P5185717264552615396

`lt[A000265(n+2), exp(A107782(n))+n+1]`
-/

namespace A247875.P5185717264552615396
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (n + 2)

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.exp (A107782 n : ℝ) + (n + 1 : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A247875.P5185717264552615396

namespace A247875

/-- `lt[A000265(n+2), exp(A107782(n))+n+1]` -/
def P5185717264552615396.Spec : Prop :=
  ∀ n, (P5185717264552615396.a n : ℤ) = A247875 (n + 1)

end A247875

/-! ## A247875.P1394824792723294564

`lt[A000035(n), exp(A107782(n))]`
-/

namespace A247875.P1394824792723294564
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 n

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.exp (A107782 n : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A247875.P1394824792723294564

namespace A247875

/-- `lt[A000035(n), exp(A107782(n))]` -/
def P1394824792723294564.Spec : Prop :=
  ∀ n, (P1394824792723294564.a n : ℤ) = A247875 (n + 1)

end A247875

/-! ## A247875.P7632147247713325627

`lt[2, A102457(n+2)+char[A004751(n+1)]]`
-/

namespace A247875.P7632147247713325627
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004751 (n + 1)

open Classical in
def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102457 (n + 2) + ((if ∃ j, f3 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A247875.P7632147247713325627

namespace A247875

/-- `lt[2, A102457(n+2)+char[A004751(n+1)]]` -/
def P7632147247713325627.Spec : Prop :=
  ∀ n, (P7632147247713325627.a n : ℤ) = A247875 (n + 1)

end A247875

/-! ## A247875.P4553602413033423328

`comp[A370762(n)]`
-/

namespace A247875.P4553602413033423328
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370762 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A247875.P4553602413033423328

namespace A247875

/-- `comp[A370762(n)]` -/
def P4553602413033423328.Spec : Prop :=
  ∀ n, (P4553602413033423328.a n : ℤ) = A247875 (n + 1)

end A247875

/-! ## A247875.P15216023570670867044

`comp[or(n, A359194(n))]`
-/

namespace A247875.P15216023570670867044
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n : ℤ) (A359194 n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A247875.P15216023570670867044

namespace A247875

/-- `comp[or(n, A359194(n))]` -/
def P15216023570670867044.Spec : Prop :=
  ∀ n, (P15216023570670867044.a n : ℤ) = A247875 (n + 1)

end A247875

/-!
# A247876: Least prime factor of A247682.

The programs for A247876, there is no canonical definition to state claims against.
-/

/-! ## A247876.P503709982588641754

`A020639(A247682(n+1))`
-/

namespace A247876.P503709982588641754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A247682 (n + 1)).toNat

end

end A247876.P503709982588641754

/-! ## A247876.P8002109734984248386

`p?[A020639(A146509(2*(n+1)))%A146509(2*n+1)]`
-/

namespace A247876.P8002109734984248386
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A020639 (A146509 (2 * (n + 1))).toNat) (A146509 (2 * n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A247876.P8002109734984248386

/-! ## A247876.P9704757582482884456

`A020639(∩[A092256(n+1), A017221(n)])`
-/

namespace A247876.P9704757582482884456
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092256 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017221 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A247876.P9704757582482884456

/-! ## A247876.P8448292596551351558

`p?[A281680(9*n+2)]`
-/

namespace A247876.P8448292596551351558
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281680 (9 * n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A247876.P8448292596551351558

/-! ## A247876.P2324772417304740321

`p?[A107286(A017221(2*n))]`
-/

namespace A247876.P2324772417304740321
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107286 (A017221 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A247876.P2324772417304740321

/-! ## A247876.P16447744924905650891

`A107286(or(1, A247682(n+1)))`
-/

namespace A247876.P16447744924905650891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107286 (Int.lor 1 (A247682 (n + 1))).toNat

end

end A247876.P16447744924905650891

/-! ## A247876.P10624516281336497656

`p?[A074828(A017209(2*n)+1)]`
-/

namespace A247876.P10624516281336497656
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074828 (A017209 (2 * n) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A247876.P10624516281336497656

/-! ## A247876.P13171680083412856077

`p?[A107286(A017209(2*n)+1)]`
-/

namespace A247876.P13171680083412856077
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107286 (A017209 (2 * n) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A247876.P13171680083412856077

/-! ## A247876.P10433730701754714923

`p?[A074828(A017197(2*n)+2)]`
-/

namespace A247876.P10433730701754714923
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074828 (A017197 (2 * n) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A247876.P10433730701754714923

/-! ## A247876.P18302201340433574559

`p?[A074828(A017245(2*n)-2)]`
-/

namespace A247876.P18302201340433574559
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074828 (A017245 (2 * n) - 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A247876.P18302201340433574559

/-! ## A247876.P14620957009689794503

`p?[A111787(A017209(2*n)+1)]`
-/

namespace A247876.P14620957009689794503
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111787 (A017209 (2 * n) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A247876.P14620957009689794503

/-!
# A247877: Least prime factor of A247683.

The programs for A247877, there is no canonical definition to state claims against.
-/

/-! ## A247877.P12419153386515772631

`A020639(A247683(n+1))`
-/

namespace A247877.P12419153386515772631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A247683 (n + 1)).toNat

end

end A247877.P12419153386515772631

/-! ## A247877.P14141545023659262340

`p?[A020639(A239129(n+1)+8)%(A239129(n+1)+8)]`
-/

namespace A247877.P14141545023659262340
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A020639 (A239129 (n + 1) + 8).toNat) (A239129 (n + 1) + 8)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A247877.P14141545023659262340

/-! ## A247877.P8834411728931018248

`A020639(∩[A091300(n+1), A017245(n)])`
-/

namespace A247877.P8834411728931018248
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091300 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017245 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A247877.P8834411728931018248

/-! ## A247877.P18363340073453994206

`p?[A281680(9*n+3)]`
-/

namespace A247877.P18363340073453994206
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281680 (9 * n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A247877.P18363340073453994206

/-! ## A247877.P4032237613794295037

`p?[A074828(A017245(2*n))]`
-/

namespace A247877.P4032237613794295037
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074828 (A017245 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A247877.P4032237613794295037

/-! ## A247877.P10889402771208231285

`p?[A107286(A019426(3*n))]`
-/

namespace A247877.P10889402771208231285
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107286 (A019426 (3 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A247877.P10889402771208231285

/-! ## A247877.P7421632704362901274

`A107286(or(1, A247683(n+1)))`
-/

namespace A247877.P7421632704362901274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107286 (Int.lor 1 (A247683 (n + 1))).toNat

end

end A247877.P7421632704362901274

/-! ## A247877.P18305302409433915210

`p?[A107286(A017221(2*n)+2)]`
-/

namespace A247877.P18305302409433915210
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107286 (A017221 (2 * n) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A247877.P18305302409433915210

/-! ## A247877.P6424909121960836698

`A107286(A247683(n+1))%A017233(n)`
-/

namespace A247877.P6424909121960836698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A107286 (A247683 (n + 1)).toNat) (A017233 n)

end

end A247877.P6424909121960836698

/-! ## A247877.P5852497970365515209

`A107286(A247683(n+1)%A287173(n+1))`
-/

namespace A247877.P5852497970365515209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107286 (Int.tmod (A247683 (n + 1)) (A287173 (n + 1))).toNat

end

end A247877.P5852497970365515209

/-! ## A247877.P1811402145449195939

`p?[A107286(A016969(2*n)+A016789(2*n))]`
-/

namespace A247877.P1811402145449195939
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107286 (A016969 (2 * n) + A016789 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A247877.P1811402145449195939

/-! ## A247877.P10776618399547958110

`A111787(or(1, A247683(n+1)))`
-/

namespace A247877.P10776618399547958110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111787 (Int.lor 1 (A247683 (n + 1))).toNat

end

end A247877.P10776618399547958110

/-! ## A247877.P1815760680021299658

`p?[A111787(A004273(A017209(n)))]`
-/

namespace A247877.P1815760680021299658
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111787 (A004273 (A017209 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A247877.P1815760680021299658

/-! ## A247877.P591415553371137301

`A111787(2*A247683(n+1)-A247683(n+1))`
-/

namespace A247877.P591415553371137301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111787 (2 * A247683 (n + 1) - A247683 (n + 1)).toNat

end

end A247877.P591415553371137301

/-! ## A247877.P5975310999793117769

`A111787(2*A247683(n+1))`
-/

namespace A247877.P5975310999793117769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111787 (2 * A247683 (n + 1)).toNat

end

end A247877.P5975310999793117769

/-!
# A247880: For bases b = 2, 3, ..., n, let the base-b expansion of n be [c_{1,b} c_{2,b} .. c_{r_b,b}], with the most significant "digit" on the left, 0 <= c_{i,b} < b, and c_{1,b} != 0; then a(n) is the number whose base-n expansion is the sum of all those expansions, regarding the c_{i,j} as integers mod n.

The programs for A247880, there is no canonical definition to state claims against.
-/

/-! ## A247880.P11452010050689443695

`A169867(∑[∑[A079623(n+1)]])`
-/

namespace A247880.P11452010050689443695
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079623 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169867 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A247880.P11452010050689443695

/-! ## A247880.P16641338227085281309

`A169867(A238531(n)+A002378(n))`
-/

namespace A247880.P16641338227085281309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169867 (A238531 n + A002378 n).toNat

end

end A247880.P16641338227085281309

/-!
# A247881: Numbers of the form x^2 + 13*y^2.

The programs for A247881, there is no canonical definition to state claims against.
-/

/-! ## A247881.P9202873465145824321

`lt[0, A033725(n)]`
-/

namespace A247881.P9202873465145824321
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033725 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A247881.P9202873465145824321

/-! ## A247881.P12817638098709217349

`eq[0, A000038(A033725(n)²)]`
-/

namespace A247881.P12817638098709217349
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 (A033725 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A247881.P12817638098709217349

/-! ## A247881.P1073497017809691332

`eq[1, A002828(A033725(n)²)]`
-/

namespace A247881.P1073497017809691332
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002828 (A033725 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A247881.P1073497017809691332

/-! ## A247881.P10785602463069032322

`eq[1, A011582(A033725(n)²)]`
-/

namespace A247881.P10785602463069032322
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011582 (A033725 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A247881.P10785602463069032322

/-! ## A247881.P13911081748141359894

`eq[1, A011615(A033725(n)²)]`
-/

namespace A247881.P13911081748141359894
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011615 (A033725 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A247881.P13911081748141359894

/-! ## A247881.P17153265240148191274

`eq[1, A011626(A033725(n)²)]`
-/

namespace A247881.P17153265240148191274
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011626 (A033725 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A247881.P17153265240148191274

/-! ## A247881.P13444200615031551722

`eq[2, A000122(A033725(n)²)]`
-/

namespace A247881.P13444200615031551722
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000122 (A033725 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A247881.P13444200615031551722

/-! ## A247881.P237157509433171908

`eq[2, A033725(A033725(n)²)]`
-/

namespace A247881.P237157509433171908
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033725 (A033725 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A247881.P237157509433171908

/-! ## A247881.P10957162746349896583

`eq[n*A000038(n), A000038(A033725(n))]`
-/

namespace A247881.P10957162746349896583
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 (A033725 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A247881.P10957162746349896583

/-! ## A247881.P3910861960049719458

`eq[A000038(n+1), A000038(A033725(n))]`
-/

namespace A247881.P3910861960049719458
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 (A033725 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A247881.P3910861960049719458

/-!
# A247883: Consecutive exclusionary cubes: Digits of n are not present in n^3 and digits of n+1 are not present in (n+1)^3.

The programs for A247883, there is no canonical definition to state claims against.
-/

/-! ## A247883.P4330384015225632052

`∩[A029785(n+1)-1, A029785(n+1)]`
-/

namespace A247883.P4330384015225632052
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029785 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029785 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A247883.P4330384015225632052

/-! ## A247883.P13526535286919918093

`∩[A029785(n+1), A023443(A029785(n+1))]`
-/

namespace A247883.P13526535286919918093
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029785 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A029785 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A247883.P13526535286919918093

/-!
# A247886: Numbers n such that n!3 + 3^3 is prime.

The programs for A247886, there is no canonical definition to state claims against.
-/

/-! ## A247886.P9573544962403803479

`A004526(lt[A311019(n), A311021(n)])`
-/

namespace A247886.P9573544962403803479
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311019 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311021 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A247886.P9573544962403803479

/-! ## A247886.P4968050923516375853

`A060525(n+1)+A000002(A001008(n+1))`
-/

namespace A247886.P4968050923516375853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060525 (n + 1) + A000002 (A001008 (n + 1)).toNat

end

end A247886.P4968050923516375853

/-! ## A247886.P14354079902352081620

`lt[A285550(A321304(n+2)+1), A321336(n+1)]`
-/

namespace A247886.P14354079902352081620
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285550 (A321304 (n + 2) + 1).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321336 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A247886.P14354079902352081620

/-!
# A247887: Numbers n such that n + A007953(n) contains the same digits as n.

The programs for A247887, there is no canonical definition to state claims against.
-/

/-! ## A247887.P17517126942168621019

`eq[A086066(A062028(n)), A086066(n)]`
-/

namespace A247887.P17517126942168621019
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086066 (A062028 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086066 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A247887.P17517126942168621019

/-! ## A247887.P5176186480146371716

`eq[A227362(A062028(n)), A227362(n)]`
-/

namespace A247887.P5176186480146371716
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227362 (A062028 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227362 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A247887.P5176186480146371716

/-! ## A247887.P785460755151566657

`eq[A230959(A062028(n)), A230959(n)]`
-/

namespace A247887.P785460755151566657
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230959 (A062028 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230959 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A247887.P785460755151566657

/-!
# A247888: Zeroless numbers n such that n + A007954(n) contains the same digits as n.

The programs for A247888, there is no canonical definition to state claims against.
-/

/-! ## A247888.P10044582837474337106

`A243102(A062399(n+1))`
-/

namespace A247888.P10044582837474337106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243102 (A062399 (n + 1)).toNat

end

end A247888.P10044582837474337106

/-! ## A247888.P8087064159710984661

`A075617(A243102(n+1))`
-/

namespace A247888.P8087064159710984661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075617 (A243102 (n + 1)).toNat

end

end A247888.P8087064159710984661

/-! ## A247888.P7884033533708088836

`A243102(A351870(n+1))`
-/

namespace A247888.P7884033533708088836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243102 (A351870 (n + 1)).toNat

end

end A247888.P7884033533708088836

/-! ## A247888.P11286965279818848985

`A243102(A227549(n+1)+1)`
-/

namespace A247888.P11286965279818848985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243102 (A227549 (n + 1) + 1).toNat

end

end A247888.P11286965279818848985

/-! ## A247888.P3596789886372843804

`filter[A243102(n+1), A316824(#)]`
-/

namespace A247888.P3596789886372843804
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243102 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A316824 (f1 j).toNat = 1) n)

end

end A247888.P3596789886372843804

/-!
# A247890: Number of digits in (R_n)^n.

The programs for A247890, there is no canonical definition to state claims against.
-/

/-! ## A247890.P5505442370711974527

`A004526(A059534(n+1)+A001105(n))`
-/

namespace A247890.P5505442370711974527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A059534 (n + 1) + A001105 n).toNat

end

end A247890.P5505442370711974527

/-! ## A247890.P11076220538264088193

`A123108(A059534(n+1)+A001105(n))`
-/

namespace A247890.P11076220538264088193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (A059534 (n + 1) + A001105 n).toNat

end

end A247890.P11076220538264088193

/-! ## A247890.P12811204272602548936

`A121900(A085473(n))+n²`
-/

namespace A247890.P12811204272602548936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121900 (A085473 n).toNat + (n ^ 2 : ℤ)

end

end A247890.P12811204272602548936

/-! ## A247890.P8588950506819083408

`A036445(A053228(n+1))+n²`
-/

namespace A247890.P8588950506819083408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036445 (A053228 (n + 1)).toNat + (n ^ 2 : ℤ)

end

end A247890.P8588950506819083408

/-! ## A247890.P481266469159342065

`A253641(A390894(2*(n+2)))+A002378(n)`
-/

namespace A247890.P481266469159342065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253641 (A390894 (2 * (n + 2))).toNat + A002378 n

end

end A247890.P481266469159342065

/-!
# A247891: a(n) is Gray-coded in base 4 into n.

The programs for A247891, there is no canonical definition to state claims against.
-/

/-! ## A247891.P6926225162519938654

`A004468(A163486(A064707(n)))`
-/

namespace A247891.P6926225162519938654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004468 (A163486 (A064707 n).toNat).toNat

end

end A247891.P6926225162519938654

/-! ## A247891.P4422991506100823972

`A147995(A163238(n))`
-/

namespace A247891.P4422991506100823972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147995 (A163238 n).toNat

end

end A247891.P4422991506100823972

/-! ## A247891.P1830450840472328203

`A147995(A163234(A163241(n)))`
-/

namespace A247891.P1830450840472328203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147995 (A163234 (A163241 n).toNat).toNat

end

end A247891.P1830450840472328203

/-! ## A247891.P8423634210930356524

`A163237(A163240(A147995(A163240(n))))`
-/

namespace A247891.P8423634210930356524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163237 (A163240 (A147995 (A163240 n).toNat).toNat).toNat

end

end A247891.P8423634210930356524

/-! ## A247891.P2006469809176316486

`A163545(A163240(n))`
-/

namespace A247891.P2006469809176316486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163545 (A163240 n).toNat

end

end A247891.P2006469809176316486

/-! ## A247891.P10135470177966620382

`A147995(A163234(A163237(A163234(n))))`
-/

namespace A247891.P10135470177966620382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147995 (A163234 (A163237 (A163234 n).toNat).toNat).toNat

end

end A247891.P10135470177966620382

/-! ## A247891.P12511992631729595806

`A147995(A163234(A163239(A163236(n))))`
-/

namespace A247891.P12511992631729595806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147995 (A163234 (A163239 (A163236 n).toNat).toNat).toNat

end

end A247891.P12511992631729595806

/-!
# A247892: Number of nonprimes in n-th row of triangle A077581.

The programs for A247892, there is no canonical definition to state claims against.
-/

/-! ## A247892.P12726946142419128488

`1-A247815(n+1)+n`
-/

namespace A247892.P12726946142419128488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A247815 (n + 1) + (n : ℤ)

end

end A247892.P12726946142419128488

/-! ## A247892.P13793979695968445548

`1-(A247815(Δ[n²]-n)-n)`
-/

namespace A247892.P13793979695968445548
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (A247815 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat - (n : ℤ))

end

end A247892.P13793979695968445548

/-! ## A247892.P13121379840026563999

`n-log2(1/2)-A247815(n-log2(1/2))`
-/

namespace A247892.P13121379840026563999
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n : ℝ) - Real.logb 2 ((1 : ℚ) / 2 : ℝ) - (A247815 (SequenceMachineLib.roundAway ((n : ℝ) - Real.logb 2 ((1 : ℚ) / 2 : ℝ))).toNat : ℝ)

end

end A247892.P13121379840026563999

/-! ## A247892.P2390513573356162541

`A024000(A247815(n+1))+n`
-/

namespace A247892.P2390513573356162541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024000 (A247815 (n + 1)).toNat + (n : ℤ)

end

end A247892.P2390513573356162541

/-! ## A247892.P3673900802174103850

`abs(A247815(n+1)+A001478(n+1))`
-/

namespace A247892.P3673900802174103850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A247815 (n + 1) + A001478 (n + 1)|

end

end A247892.P3673900802174103850

/-! ## A247892.P7498345683862844435

`abs(A247815(n+1)+A001489(n+1))`
-/

namespace A247892.P7498345683862844435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A247815 (n + 1) + A001489 (n + 1)|

end

end A247892.P7498345683862844435

/-! ## A247892.P6181922067229939272

`A001489(A247815(n+1))+A000027(n+1)`
-/

namespace A247892.P6181922067229939272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001489 (A247815 (n + 1)).toNat + A000027 (n + 1)

end

end A247892.P6181922067229939272

/-! ## A247892.P10865002365297412360

`A008619(2*n)+A001489(A247815(n+1))`
-/

namespace A247892.P10865002365297412360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (2 * n) + A001489 (A247815 (n + 1)).toNat

end

end A247892.P10865002365297412360

/-!
# A247893: Least integer k > 0 such that prime(k) - k*n is a square.

The programs for A247893, there is no canonical definition to state claims against.
-/

/-! ## A247893.P18113392118379390799

`A112088(2*(n+1))-A051277(A197175(n+1))`
-/

namespace A247893.P18113392118379390799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112088 (2 * (n + 1)) - A051277 (A197175 (n + 1)).toNat

end

end A247893.P18113392118379390799

/-!
# A247894: Integer part of square root of A010807: a(n) = floor(sqrt(n^19)).

The programs for A247894, the canonical program `A247894.P11502239712089098656` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A247894 has offset 0).

The definition of A247894 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(sqrt(n^19))` (program `A247894.P11502239712089098656`, by `A247894.P11502239712089098656.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A247894.P11502239712089098656

`floor(sqrt(n^19))`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A247894

/-- `floor(sqrt(n^19))` -/
def P11502239712089098656.Spec : Prop :=
  ∀ n, (P11502239712089098656.a n : ℤ) = A247894 n

theorem P11502239712089098656.correct : P11502239712089098656.Spec := by
  intro n
  simp only [A247894]

end A247894

/-! ## A247894.P9456123669033138794

`ceil(1/acot(sqrt(n^19)))-1`
-/

namespace A247894.P9456123669033138794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈1 / SequenceMachineLib.acot (Real.sqrt (n ^ 19 : ℝ))⌉ - 1

end

end A247894.P9456123669033138794

namespace A247894

/-- `ceil(1/acot(sqrt(n^19)))-1` -/
def P9456123669033138794.Spec : Prop :=
  ∀ n, P9456123669033138794.a n = A247894 n

end A247894

/-!
# A247895: Least integer k > 0 such that prime(k) - k*n is prime.

The programs for A247895, there is no canonical definition to state claims against.
-/

/-! ## A247895.P16862097925108022566

`xor(A238353(n+2), A339501(A000079(n)))`
-/

namespace A247895.P16862097925108022566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A238353 (n + 2)) (A339501 (A000079 n).toNat)

end

end A247895.P16862097925108022566

/-! ## A247895.P860133264189740939

`or(A287740(n), A293137(A245156(n+3)))`
-/

namespace A247895.P860133264189740939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A287740 n) (A293137 (A245156 (n + 3)).toNat)

end

end A247895.P860133264189740939

/-!
# A247896: Primes that produce a different prime when one of its digits is added to it.

The programs for A247896, there is no canonical definition to state claims against.
-/

/-! ## A247896.P772813098985425896

`p?[(n+1)*A241180(n+1)]`
-/

namespace A247896.P772813098985425896
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A241180 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A247896.P772813098985425896

/-! ## A247896.P1870327948431942620

`p?[A241180(n+1)*A326178(n)]`
-/

namespace A247896.P1870327948431942620
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241180 (n + 1) * A326178 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A247896.P1870327948431942620

/-! ## A247896.P9206611639761451662

`p?[lcm(A004482(n), A241180(n+1))]`
-/

namespace A247896.P9206611639761451662
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A004482 n) (A241180 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A247896.P9206611639761451662

/-! ## A247896.P5310664873244418939

`p?[eq[A241180(n+1), A342956(n+1)]+1]`
-/

namespace A247896.P5310664873244418939
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241180 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342956 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j = f3 j) n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A247896.P5310664873244418939

/-! ## A247896.P3400171952321247428

`eq[A175126(n), A241180(A028310(n))]`
-/

namespace A247896.P3400171952321247428
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175126 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241180 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A247896.P3400171952321247428

/-!
# A247897: First differences of A247676.

The programs for A247897, the canonical program `A247897.P17986607596554966549` is in `Seq.B008.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A247897 has offset 1).

The definition of A247897 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A247897.P17986607596554966549

`Δ[A247676(n+1)]`

The canonical program, it is in `Seq.B008.C001`.
-/

namespace A247897

/-- `Δ[A247676(n+1)]` -/
def P17986607596554966549.Spec : Prop :=
  ∀ n, P17986607596554966549.a n = A247897 (n + 1)

theorem P17986607596554966549.correct : P17986607596554966549.Spec := by
  intro n
  simp only [A247897, Nat.add_sub_cancel]

end A247897

/-! ## A247897.P5752183995736521525

`abs(Δ[A247676(-xor(n, -1))])`
-/

namespace A247897.P5752183995736521525
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247676 (-Int.xor (n : ℤ) (-1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A247897.P5752183995736521525

namespace A247897

/-- `abs(Δ[A247676(-xor(n, -1))])` -/
def P5752183995736521525.Spec : Prop :=
  ∀ n, P5752183995736521525.a n = A247897 (n + 1)

end A247897

/-! ## A247897.P1891550272748994627

`A000027(Δ[A247676(-xor(n, -1))])`
-/

namespace A247897.P1891550272748994627
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247676 (-Int.xor (n : ℤ) (-1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (n + 1) - f1 n).toNat

end

end A247897.P1891550272748994627

namespace A247897

/-- `A000027(Δ[A247676(-xor(n, -1))])` -/
def P1891550272748994627.Spec : Prop :=
  ∀ n, P1891550272748994627.a n = A247897 (n + 1)

end A247897

/-! ## A247897.P407181975272856020

`A247676(n+2)-A247676(n+1)`
-/

namespace A247897.P407181975272856020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247676 (n + 2) - A247676 (n + 1)

end

end A247897.P407181975272856020

namespace A247897

/-- `A247676(n+2)-A247676(n+1)` -/
def P407181975272856020.Spec : Prop :=
  ∀ n, P407181975272856020.a n = A247897 (n + 1)

theorem P407181975272856020.correct : P407181975272856020.Spec := by
  intro n
  simp only [A247897, Nat.add_sub_cancel, A247897.P407181975272856020.a, A247897.P17986607596554966549.f1, A247897.P17986607596554966549.a, SequenceMachineLib.memo_apply]

end A247897

/-! ## A247897.P3067101069453834789

`A020705(Δ[A247676(-xor(n, -1))]-4)`
-/

namespace A247897.P3067101069453834789
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247676 (-Int.xor (n : ℤ) (-1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020705 (f1 (n + 1) - f1 n - 4).toNat

end

end A247897.P3067101069453834789

namespace A247897

/-- `A020705(Δ[A247676(-xor(n, -1))]-4)` -/
def P3067101069453834789.Spec : Prop :=
  ∀ n, P3067101069453834789.a n = A247897 (n + 1)

end A247897

/-! ## A247897.P1090774282183615106

`A247676(A020725(n+1))%A247676(n+1)`
-/

namespace A247897.P1090774282183615106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A247676 (A020725 (n + 1)).toNat) (A247676 (n + 1))

end

end A247897.P1090774282183615106

namespace A247897

/-- `A247676(A020725(n+1))%A247676(n+1)` -/
def P1090774282183615106.Spec : Prop :=
  ∀ n, P1090774282183615106.a n = A247897 (n + 1)

end A247897

/-! ## A247897.P13964785264314647054

`Δ[∩[A092256(n+1), A017185(n)]]`
-/

namespace A247897.P13964785264314647054
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092256 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017185 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∧ ∃ j, f3 j = (x : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A247897.P13964785264314647054

namespace A247897

/-- `Δ[∩[A092256(n+1), A017185(n)]]` -/
def P13964785264314647054.Spec : Prop :=
  ∀ n, P13964785264314647054.a n = A247897 (n + 1)

end A247897

/-!
# A247898: First differences of A247678.

The programs for A247898, the canonical program `A247898.P765327756351924158` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A247898 has offset 1).

The definition of A247898 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A247898.P765327756351924158

`Δ[A247678(n+1)]`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A247898

/-- `Δ[A247678(n+1)]` -/
def P765327756351924158.Spec : Prop :=
  ∀ n, P765327756351924158.a n = A247898 (n + 1)

theorem P765327756351924158.correct : P765327756351924158.Spec := by
  intro n
  simp only [A247898, Nat.add_sub_cancel]

end A247898

/-! ## A247898.P3668450257601560429

`abs(Δ[A247678(-xor(n, -1))])`
-/

namespace A247898.P3668450257601560429
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247678 (-Int.xor (n : ℤ) (-1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A247898.P3668450257601560429

namespace A247898

/-- `abs(Δ[A247678(-xor(n, -1))])` -/
def P3668450257601560429.Spec : Prop :=
  ∀ n, P3668450257601560429.a n = A247898 (n + 1)

end A247898

/-! ## A247898.P1585426768238573967

`A000027(Δ[A247678(-xor(n, -1))])`
-/

namespace A247898.P1585426768238573967
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247678 (-Int.xor (n : ℤ) (-1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (n + 1) - f1 n).toNat

end

end A247898.P1585426768238573967

namespace A247898

/-- `A000027(Δ[A247678(-xor(n, -1))])` -/
def P1585426768238573967.Spec : Prop :=
  ∀ n, P1585426768238573967.a n = A247898 (n + 1)

end A247898

/-! ## A247898.P3531452804882807728

`A247678(n+2)-A247678(n+1)`
-/

namespace A247898.P3531452804882807728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247678 (n + 2) - A247678 (n + 1)

end

end A247898.P3531452804882807728

namespace A247898

/-- `A247678(n+2)-A247678(n+1)` -/
def P3531452804882807728.Spec : Prop :=
  ∀ n, P3531452804882807728.a n = A247898 (n + 1)

theorem P3531452804882807728.correct : P3531452804882807728.Spec := by
  intro n
  simp only [A247898, Nat.add_sub_cancel, A247898.P3531452804882807728.a, A247898.P765327756351924158.f1, A247898.P765327756351924158.a, SequenceMachineLib.memo_apply]

end A247898

/-! ## A247898.P17257755585656811035

`A247678(n+2)%A247678(A000027(n+1))`
-/

namespace A247898.P17257755585656811035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A247678 (n + 2)) (A247678 (A000027 (n + 1)).toNat)

end

end A247898.P17257755585656811035

namespace A247898

/-- `A247678(n+2)%A247678(A000027(n+1))` -/
def P17257755585656811035.Spec : Prop :=
  ∀ n, P17257755585656811035.a n = A247898 (n + 1)

end A247898

/-! ## A247898.P3885336098716860846

`Δ[record[A171435(A017233(n)+43)]]`
-/

namespace A247898.P3885336098716860846
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171435 (A017233 n + 43).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A247898.P3885336098716860846

namespace A247898

/-- `Δ[record[A171435(A017233(n)+43)]]` -/
def P3885336098716860846.Spec : Prop :=
  ∀ n, P3885336098716860846.a n = A247898 (n + 1)

end A247898

/-! ## A247898.P14848034395282108251

`Δ[∩[A091300(n+1), A017209(n)]]`
-/

namespace A247898.P14848034395282108251
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091300 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017209 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∧ ∃ j, f3 j = (x : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A247898.P14848034395282108251

namespace A247898

/-- `Δ[∩[A091300(n+1), A017209(n)]]` -/
def P14848034395282108251.Spec : Prop :=
  ∀ n, P14848034395282108251.a n = A247898 (n + 1)

end A247898

/-!
# A247899: First differences of A247679.

The programs for A247899, the canonical program `A247899.P5216710372688080822` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A247899 has offset 1).

The definition of A247899 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A247899.P5216710372688080822

`Δ[A247679(n+1)]`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A247899

/-- `Δ[A247679(n+1)]` -/
def P5216710372688080822.Spec : Prop :=
  ∀ n, P5216710372688080822.a n = A247899 (n + 1)

theorem P5216710372688080822.correct : P5216710372688080822.Spec := by
  intro n
  simp only [A247899, Nat.add_sub_cancel]

end A247899

/-! ## A247899.P10129609464734799016

`abs(Δ[A247679(-xor(n, -1))])`
-/

namespace A247899.P10129609464734799016
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247679 (-Int.xor (n : ℤ) (-1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A247899.P10129609464734799016

namespace A247899

/-- `abs(Δ[A247679(-xor(n, -1))])` -/
def P10129609464734799016.Spec : Prop :=
  ∀ n, P10129609464734799016.a n = A247899 (n + 1)

end A247899

/-! ## A247899.P4176688586158984656

`A000027(Δ[A247679(-xor(n, -1))])`
-/

namespace A247899.P4176688586158984656
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247679 (-Int.xor (n : ℤ) (-1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (n + 1) - f1 n).toNat

end

end A247899.P4176688586158984656

namespace A247899

/-- `A000027(Δ[A247679(-xor(n, -1))])` -/
def P4176688586158984656.Spec : Prop :=
  ∀ n, P4176688586158984656.a n = A247899 (n + 1)

end A247899

/-! ## A247899.P861745799223807097

`A247679(n+2)-A247679(n+1)`
-/

namespace A247899.P861745799223807097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247679 (n + 2) - A247679 (n + 1)

end

end A247899.P861745799223807097

namespace A247899

/-- `A247679(n+2)-A247679(n+1)` -/
def P861745799223807097.Spec : Prop :=
  ∀ n, P861745799223807097.a n = A247899 (n + 1)

theorem P861745799223807097.correct : P861745799223807097.Spec := by
  intro n
  simp only [A247899, Nat.add_sub_cancel, A247899.P861745799223807097.a, A247899.P5216710372688080822.f1, A247899.P5216710372688080822.a, SequenceMachineLib.memo_apply]

end A247899

/-! ## A247899.P18389384784326326553

`Δ[record[A171435(A239129(n+2))]]`
-/

namespace A247899.P18389384784326326553
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171435 (A239129 (n + 2)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A247899.P18389384784326326553

namespace A247899

/-- `Δ[record[A171435(A239129(n+2))]]` -/
def P18389384784326326553.Spec : Prop :=
  ∀ n, P18389384784326326553.a n = A247899 (n + 1)

end A247899

/-! ## A247899.P12949010581747881278

`Δ[∩[A092256(n+1), A017257(n)]]`
-/

namespace A247899.P12949010581747881278
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092256 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017257 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∧ ∃ j, f3 j = (x : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A247899.P12949010581747881278

namespace A247899

/-- `Δ[∩[A092256(n+1), A017257(n)]]` -/
def P12949010581747881278.Spec : Prop :=
  ∀ n, P12949010581747881278.a n = A247899 (n + 1)

end A247899

