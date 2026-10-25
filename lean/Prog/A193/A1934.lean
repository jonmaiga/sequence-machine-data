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
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C036
import Seq.B000.C037
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
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
import Seq.B008.C001
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
import Seq.B012.C000
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
# A193400: Hyper-Wiener index of a benzenoid consisting of a chain of n hexagons characterized by the encoding s = 1133 (see the Gutman et al. reference, Sec. 5).

The programs for A193400, there is no canonical definition to state claims against.
-/

/-! ## A193400.P15294419928969097903

`A193394(n+1)+A003194(A007097(n))`
-/

namespace A193400.P15294419928969097903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193394 (n + 1) + A003194 (A007097 n).toNat

end

end A193400.P15294419928969097903

/-!
# A193402: The Matula-Göbel numbers of the rooted trees such that 2 is an eigenvalue of the Laplacian matrix.

The programs for A193402, there is no canonical definition to state claims against.
-/

/-! ## A193402.P16714571532730530134

`∪[A193405(n+1), A017151(n)]`
-/

namespace A193402.P16714571532730530134
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193405 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017151 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A193402.P16714571532730530134

/-! ## A193402.P8732164015337326283

`∪[A193405(n+1), A017247(n)]`
-/

namespace A193402.P8732164015337326283
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193405 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017247 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A193402.P8732164015337326283

/-! ## A193402.P13756931555751405514

`∪[A193405(n+1), A017355(n)]`
-/

namespace A193402.P13756931555751405514
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193405 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017355 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A193402.P13756931555751405514

/-! ## A193402.P2252332823502589459

`∪[A193405(n+1), A017475(n)]`
-/

namespace A193402.P2252332823502589459
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193405 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017475 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A193402.P2252332823502589459

/-! ## A193402.P4650064560916072661

`∪[A193405(n+1), A017607(n)]`
-/

namespace A193402.P4650064560916072661
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193405 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017607 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A193402.P4650064560916072661

/-! ## A193402.P4910164909077847516

`∪[A043395(n+1), A193405(n+1)]`
-/

namespace A193402.P4910164909077847516
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043395 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193405 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A193402.P4910164909077847516

/-! ## A193402.P3611922647719535615

`∪[A045269(n+1), A193405(n+1)]`
-/

namespace A193402.P3611922647719535615
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045269 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193405 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A193402.P3611922647719535615

/-! ## A193402.P14046950555036340811

`∪[A047739(n+1), A193405(n+1)]`
-/

namespace A193402.P14046950555036340811
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047739 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193405 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A193402.P14046950555036340811

/-! ## A193402.P13389955082863277845

`∪[A052084(n+1), A193405(n+1)]`
-/

namespace A193402.P13389955082863277845
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052084 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193405 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A193402.P13389955082863277845

/-! ## A193402.P306682777521047367

`∪[A075546(n+1), A193405(n+1)]`
-/

namespace A193402.P306682777521047367
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075546 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193405 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A193402.P306682777521047367

/-!
# A193403: Triangle read by rows: row n contains the coefficients (of the increasing powers of the variable x) of the matching polynomial of the rooted tree having Matula-Goebel number n.

The programs for A193403, there is no canonical definition to state claims against.
-/

/-! ## A193403.P16630737708586804228

`A049310(∑[A020985(A217028(n+1))])`
-/

namespace A193403.P16630737708586804228
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020985 (A217028 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049310 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A193403.P16630737708586804228

/-! ## A193403.P1707532635409853905

`A112712(A196467(n)-A230849(n+1))`
-/

namespace A193403.P1707532635409853905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112712 (A196467 n - A230849 (n + 1)).toNat

end

end A193403.P1707532635409853905

/-! ## A193403.P8262587223534496458

`xor(A023532(n), A102283(A233411(n)))`
-/

namespace A193403.P8262587223534496458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A023532 n) (A102283 (A233411 n).toNat)

end

end A193403.P8262587223534496458

/-! ## A193403.P15082991425250537641

`A188510(2*n+1)-A188510(A020342(n+2))`
-/

namespace A193403.P15082991425250537641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188510 (2 * n + 1) - A188510 (A020342 (n + 2)).toNat

end

end A193403.P15082991425250537641

/-!
# A193404: Number of matchings (independent edge subsets) in the rooted tree with Matula-Goebel number n.

The programs for A193404, there is no canonical definition to state claims against.
-/

/-! ## A193404.P10157207941009430424

`A347966(A348067(n+1))`
-/

namespace A193404.P10157207941009430424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347966 (A348067 (n + 1)).toNat

end

end A193404.P10157207941009430424

/-!
# A193405: The Matula numbers of the rooted trees that have a perfect matching.

The programs for A193405, there is no canonical definition to state claims against.
-/

/-! ## A193405.P4269623105272990175

`eq[1, A347967(n+2)]+2`
-/

namespace A193405.P4269623105272990175
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347967 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A193405.P4269623105272990175

/-! ## A193405.P9165527694301252795

`record[root(A020725(n+1), A347967(n+2))]`
-/

namespace A193405.P9165527694301252795
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A020725 (n + 1) : ℝ) ^ (1 / (A347967 (n + 2) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A193405.P9165527694301252795

/-! ## A193405.P14374374358495168551

`record[root(A000027(n+2), A347967(n+2))]`
-/

namespace A193405.P14374374358495168551
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A000027 (n + 2) : ℝ) ^ (1 / (A347967 (n + 2) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A193405.P14374374358495168551

/-! ## A193405.P9788632117167093128

`record[A052410(A193402(n+1))]`
-/

namespace A193405.P9788632117167093128
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052410 (A193402 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A193405.P9788632117167093128

/-! ## A193405.P12763682924445457843

`filter[A193402(n+1), A109720(#)]`
-/

namespace A193405.P12763682924445457843
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193402 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A109720 (f1 j).toNat = 1) n)

end

end A193405.P12763682924445457843

/-! ## A193405.P1445336325633924481

`filter[A193402(n+1), A132350(#)]`
-/

namespace A193405.P1445336325633924481
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193402 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A132350 (f1 j).toNat = 1) n)

end

end A193405.P1445336325633924481

/-! ## A193405.P15494459375599214827

`∩[A000398(n+1), A193402(n+1)]`
-/

namespace A193405.P15494459375599214827
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000398 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193402 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A193405.P15494459375599214827

/-! ## A193405.P975171501312992158

`∩[A007412(n+1), A193402(n+1)]`
-/

namespace A193405.P975171501312992158
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007412 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193402 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A193405.P975171501312992158

/-! ## A193405.P5334553244202886645

`∩[A007916(n+1), A193402(n+1)]`
-/

namespace A193405.P5334553244202886645
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007916 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193402 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A193405.P5334553244202886645

/-! ## A193405.P10042719565538903026

`∩[A047304(n+1), A193402(n+1)]`
-/

namespace A193405.P10042719565538903026
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047304 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193402 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A193405.P10042719565538903026

/-!
# A193406: The Matula numbers of the rooted trees that have no perfect matchings.

The programs for A193406, there is no canonical definition to state claims against.
-/

/-! ## A193406.P8538786862085720407

`comp[A193402(n+1)-1]+1`
-/

namespace A193406.P8538786862085720407
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193402 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A193406.P8538786862085720407

/-! ## A193406.P15002476761416560497

`comp[A193405(n+1)-1]+1`
-/

namespace A193406.P15002476761416560497
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193405 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A193406.P15002476761416560497

/-! ## A193406.P7040957841606256483

`lt[1, A347967(3*(n+1))]+1`
-/

namespace A193406.P7040957841606256483
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347967 (3 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A193406.P7040957841606256483

/-! ## A193406.P17208646710829585684

`comp[eq[1, A347967(n+2)]+1]+1`
-/

namespace A193406.P17208646710829585684
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347967 (n + 2)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1

end

end A193406.P17208646710829585684

/-! ## A193406.P6497220677606191243

`lt[1, A347967(A001747(n+1))]`
-/

namespace A193406.P6497220677606191243
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347967 (A001747 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A193406.P6497220677606191243

/-! ## A193406.P11103859808020814738

`eq[char[A193402(n+1)], A151933(n)]`
-/

namespace A193406.P11103859808020814738
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193402 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151933 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A193406.P11103859808020814738

/-! ## A193406.P4153733809295372010

`eq[char[A193405(n+1)], A151933(n)]`
-/

namespace A193406.P4153733809295372010
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193405 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151933 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A193406.P4153733809295372010

/-!
# A193407: Mountain numbers (version 2).

The programs for A193407, there is no canonical definition to state claims against.
-/

/-! ## A193407.P13928221866947465525

`filter[A193408(n+1), A196368(#)]`
-/

namespace A193407.P13928221866947465525
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193408 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A196368 (f1 j).toNat = 1) n)

end

end A193407.P13928221866947465525

/-! ## A193407.P12658158950167172728

`∩[A043096(n+1), A193408(n+1)]`
-/

namespace A193407.P12658158950167172728
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043096 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193408 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A193407.P12658158950167172728

/-! ## A193407.P11909567232401563303

`∩[A134853(n+1), A193408(n+1)]`
-/

namespace A193407.P11909567232401563303
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134853 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193408 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A193407.P11909567232401563303

/-! ## A193407.P15853233695684835889

`A056142(lt[11*floor(n/10)-n, 0])`
-/

namespace A193407.P15853233695684835889
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  11 * ⌊(n : ℚ) / 10⌋ - (n : ℤ)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056142 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A193407.P15853233695684835889

/-!
# A193409: Crater numbers.

The programs for A193409, there is no canonical definition to state claims against.
-/

/-! ## A193409.P6382406223554231257

`A082216(A138142(n+1))`
-/

namespace A193409.P6382406223554231257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082216 (A138142 (n + 1)).toNat

end

end A193409.P6382406223554231257

/-! ## A193409.P17479185218598125102

`∩[A266139(n+1), A056142(A247107(n))]`
-/

namespace A193409.P17479185218598125102
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266139 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056142 (A247107 n).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A193409.P17479185218598125102

/-! ## A193409.P16867624616869508997

`A141033(A061511(n+1))`
-/

namespace A193409.P16867624616869508997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141033 (A061511 (n + 1)).toNat

end

end A193409.P16867624616869508997

/-! ## A193409.P163352391562591626

`A141033(A158699(n+1))`
-/

namespace A193409.P163352391562591626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141033 (A158699 (n + 1)).toNat

end

end A193409.P163352391562591626

/-! ## A193409.P1015405075871437105

`A141033(A247107(n+1))`
-/

namespace A193409.P1015405075871437105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141033 (A247107 (n + 1)).toNat

end

end A193409.P1015405075871437105

/-!
# A193410: Expansion of (1-3*x)/(1-6*x+18*x^2).

The programs for A193410, the canonical program `A193410.P10914749330347459465` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A193410 has offset 0).

The definition of A193410 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-3x)/(1-6x+18x^2))` (program `A193410.P10914749330347459465`, by `A193410.P10914749330347459465.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A193410.P10914749330347459465

`ogf((1-3x)/(1-6x+18x^2))`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A193410

/-- `ogf((1-3x)/(1-6x+18x^2))` -/
def P10914749330347459465.Spec : Prop :=
  ∀ n, P10914749330347459465.a n = A193410 n

theorem P10914749330347459465.correct : P10914749330347459465.Spec := by
  intro n
  simp only [A193410]

end A193410

/-! ## A193410.P10980549563534974614

`6*a(n-1)-18*a(n-2)` with `a(0)=1, a(1)=3`
-/

namespace A193410.P10980549563534974614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  6 * a (n - 1) - 18 * a (n - 2)

end

end A193410.P10980549563534974614

namespace A193410

/-- `6*a(n-1)-18*a(n-2)` -/
def P10980549563534974614.Spec : Prop :=
  ∀ n, P10980549563534974614.a n = A193410 n

end A193410

/-! ## A193410.P1174049437921312707

`3^n*A146559(n)`
-/

namespace A193410.P1174049437921312707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 ^ n : ℤ) * A146559 n

end

end A193410.P1174049437921312707

namespace A193410

/-- `3^n*A146559(n)` -/
def P1174049437921312707.Spec : Prop :=
  ∀ n, P1174049437921312707.a n = A193410 n

end A193410

/-! ## A193410.P520187803806539766

`(-3)^n*A009116(n)`
-/

namespace A193410.P520187803806539766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-3) ^ n * A009116 n

end

end A193410.P520187803806539766

namespace A193410

/-- `(-3)^n*A009116(n)` -/
def P520187803806539766.Spec : Prop :=
  ∀ n, P520187803806539766.a n = A193410 n

end A193410

/-! ## A193410.P17071506100503696205

`3^n/2*A099087(n+1)`
-/

namespace A193410.P17071506100503696205
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 ^ n : ℚ) / 2 * (A099087 (n + 1) : ℚ)

end

end A193410.P17071506100503696205

namespace A193410

/-- `3^n/2*A099087(n+1)` -/
def P17071506100503696205.Spec : Prop :=
  ∀ n, P17071506100503696205.a n = (A193410 n : ℚ)

end A193410

/-! ## A193410.P17322812680603267902

`A046980(n)*A130505(n)`
-/

namespace A193410.P17322812680603267902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046980 n * A130505 n

end

end A193410.P17322812680603267902

namespace A193410

/-- `A046980(n)*A130505(n)` -/
def P17322812680603267902.Spec : Prop :=
  ∀ n, P17322812680603267902.a n = A193410 n

end A193410

/-! ## A193410.P15032877524181117792

`A009116(n)*A352779(n)`
-/

namespace A193410.P15032877524181117792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009116 n * A352779 n

end

end A193410.P15032877524181117792

namespace A193410

/-- `A009116(n)*A352779(n)` -/
def P15032877524181117792.Spec : Prop :=
  ∀ n, P15032877524181117792.a n = A193410 n

end A193410

/-! ## A193410.P12505158276394327668

`Δ[A009545(n)]*A000244(n)`
-/

namespace A193410.P12505158276394327668
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009545 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A000244 n

end

end A193410.P12505158276394327668

namespace A193410

/-- `Δ[A009545(n)]*A000244(n)` -/
def P12505158276394327668.Spec : Prop :=
  ∀ n, P12505158276394327668.a n = A193410 n

end A193410

/-! ## A193410.P4561644460225743934

`A146559(n)*A254006(2*n)`
-/

namespace A193410.P4561644460225743934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146559 n * A254006 (2 * n)

end

end A193410.P4561644460225743934

namespace A193410

/-- `A146559(n)*A254006(2*n)` -/
def P4561644460225743934.Spec : Prop :=
  ∀ n, P4561644460225743934.a n = A193410 n

end A193410

/-! ## A193410.P2632950786761375976

`A000244(n)*A138231(2*n+1)`
-/

namespace A193410.P2632950786761375976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000244 n * A138231 (2 * n + 1)

end

end A193410.P2632950786761375976

namespace A193410

/-- `A000244(n)*A138231(2*n+1)` -/
def P2632950786761375976.Spec : Prop :=
  ∀ n, P2632950786761375976.a n = A193410 n

end A193410

/-! ## A193410.P13179731108312339747

`round(sqrt(A001019(n))*A146559(n))`
-/

namespace A193410.P13179731108312339747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A001019 n : ℝ) * (A146559 n : ℝ))

end

end A193410.P13179731108312339747

namespace A193410

/-- `round(sqrt(A001019(n))*A146559(n))` -/
def P13179731108312339747.Spec : Prop :=
  ∀ n, P13179731108312339747.a n = A193410 n

end A193410

/-!
# A193411: Primes which are sums of two or more distinct 4th powers of primes.

The programs for A193411, there is no canonical definition to state claims against.
-/

/-! ## A193411.P2464789152095481582

`p?[A130833(n+1)]`
-/

namespace A193411.P2464789152095481582
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130833 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A193411.P2464789152095481582

/-! ## A193411.P14672178344922912021

`p?[record[A130833(A133310(n))]]`
-/

namespace A193411.P14672178344922912021
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130833 (A133310 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A193411.P14672178344922912021

/-! ## A193411.P13058093848726349200

`p?[record[A130833(A154958(n))]]`
-/

namespace A193411.P13058093848726349200
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130833 (A154958 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A193411.P13058093848726349200

/-! ## A193411.P7954591624066885174

`p?[record[A130833(A328397(n))]]`
-/

namespace A193411.P7954591624066885174
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130833 (A328397 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A193411.P7954591624066885174

/-! ## A193411.P4900836883024031930

`p?[A130833(n-log2(1/2))]*A093178(2*n²)`
-/

namespace A193411.P4900836883024031930
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130833 (SequenceMachineLib.roundAway ((n : ℝ) - Real.logb 2 ((1 : ℚ) / 2 : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) * A093178 (2 * n ^ 2)

end

end A193411.P4900836883024031930

/-!
# A193412: 1..9 followed by the canyon numbers A134970.

The programs for A193412, there is no canonical definition to state claims against.
-/

/-! ## A193412.P8650616057078415367

`filter[A193413(n+1), A196368(#)]`
-/

namespace A193412.P8650616057078415367
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193413 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A196368 (f1 j).toNat = 1) n)

end

end A193412.P8650616057078415367

/-! ## A193412.P8798612130817430727

`∩[A043096(n+1), A193413(n+1)]`
-/

namespace A193412.P8798612130817430727
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043096 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193413 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A193412.P8798612130817430727

/-! ## A193412.P6942865385401174753

`∪[A069747(n+1), A134970(n+1)]`
-/

namespace A193412.P6942865385401174753
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069747 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134970 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A193412.P6942865385401174753

/-! ## A193412.P16282104897554960354

`∪[A134970(n+1), A276142(n+1)]`
-/

namespace A193412.P16282104897554960354
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134970 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276142 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A193412.P16282104897554960354

/-! ## A193412.P8038329172649091684

`∪[A134970(n+1), A193409(n+2)]`
-/

namespace A193412.P8038329172649091684
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134970 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193409 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A193412.P8038329172649091684

/-! ## A193412.P16752431819855850873

`A266139(n+2)%∑[A330031(n+4)]`
-/

namespace A193412.P16752431819855850873
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330031 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A266139 (n + 2)) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A193412.P16752431819855850873

/-! ## A193412.P816308163286326692

`∪[A051022(A028431(n+1)), A134970(n+1)]`
-/

namespace A193412.P816308163286326692
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051022 (A028431 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134970 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A193412.P816308163286326692

/-! ## A193412.P8160455098337070150

`∪[A056142(A032889(n+1)), A134970(n+1)]`
-/

namespace A193412.P8160455098337070150
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056142 (A032889 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134970 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A193412.P8160455098337070150

/-! ## A193412.P10654060328399281380

`∪[A056142(A056142(n+1)), A134970(n+1)]`
-/

namespace A193412.P10654060328399281380
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056142 (A056142 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134970 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A193412.P10654060328399281380

/-! ## A193412.P10657123404729441299

`∪[A083136(A083136(n+1)), A134970(n+1)]`
-/

namespace A193412.P10657123404729441299
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083136 (A083136 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134970 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A193412.P10657123404729441299

/-!
# A193413: Valley numbers.

The programs for A193413, there is no canonical definition to state claims against.
-/

/-! ## A193413.P16459887351895154245

`A110785(n+1)+A000007(A152977(n))`
-/

namespace A193413.P16459887351895154245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110785 (n + 1) + A000007 (A152977 n).toNat

end

end A193413.P16459887351895154245

/-! ## A193413.P13864867142499181960

`A110785(n+1)%A000217(A246081(n+3))`
-/

namespace A193413.P13864867142499181960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A110785 (n + 1)) (A000217 (A246081 (n + 3)).toNat)

end

end A193413.P13864867142499181960

/-! ## A193413.P12621769803715331075

`A110785(n+1)-A355523(A019546(2*n+5))`
-/

namespace A193413.P12621769803715331075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110785 (n + 1) - A355523 (A019546 (2 * n + 5)).toNat

end

end A193413.P12621769803715331075

/-! ## A193413.P1820583002843086544

`A110785(n+1)%A326624(n+1)`
-/

namespace A193413.P1820583002843086544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A110785 (n + 1)) (A326624 (n + 1))

end

end A193413.P1820583002843086544

/-! ## A193413.P4687462310479090255

`lcm(A110785(n+1), A123271(n+2))`
-/

namespace A193413.P4687462310479090255
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A110785 (n + 1)) (A123271 (n + 2))

end

end A193413.P4687462310479090255

/-!
# A193414: Numbers m such that written in base 2 the structure of digits represents a valley.

The programs for A193414, there is no canonical definition to state claims against.
-/

/-! ## A193414.P15483620690220431663

`lt[1, acot(2*a(n-1-and(n, 2*n)))]` with `a(0)=0`
-/

namespace A193414.P15483620690220431663
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℝ := SequenceMachineLib.rec [0] fun n f2 =>
  SequenceMachineLib.acot (2 * f2 ((n : ℤ) - 1 - (Nat.land n (2 * n) : ℤ)).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A193414.P15483620690220431663

/-! ## A193414.P12823585184181892893

`lt[2, 4/(a(n-1-and(n, 2*n))+1)]` with `a(0)=0`
-/

namespace A193414.P12823585184181892893
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℚ := SequenceMachineLib.rec [0] fun n f2 =>
  4 / (f2 ((n : ℤ) - 1 - (Nat.land n (2 * n) : ℤ)).toNat + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) < f2 j) n

end

end A193414.P12823585184181892893

/-! ## A193414.P8146260519597858090

`lt[xor(4, a(and(n-1, -(2*n+1)))+1), 3]` with `a(0)=3`
-/

namespace A193414.P8146260519597858090
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [3] fun n f1 =>
  Nat.xor 4 (f1 (Int.land ((n : ℤ) - 1) (-(2 * n + 1 : ℤ))).toNat + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A193414.P8146260519597858090

/-! ## A193414.P8348150075771392874

`lt[a(n-1-and(n, 2*n))+1, 6*n%2]` with `a(0)=1`
-/

namespace A193414.P8348150075771392874
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  f1 ((n : ℤ) - 1 - (Nat.land n (2 * n) : ℤ)).toNat + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 * (n % 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A193414.P8348150075771392874

/-! ## A193414.P544757388405459801

`lt[a(n-1-and(n, 2*n))+1, 1-a(n-1)]` with `a(0)=-2`
-/

namespace A193414.P544757388405459801
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [-2] fun n f1 =>
  f1 ((n : ℤ) - 1 - (Nat.land n (2 * n) : ℤ)).toNat + 1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [-2] fun n f2 =>
  1 - f2 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A193414.P544757388405459801

/-! ## A193414.P15905128544310252609

`eq[1, 5%A088748(n)]`
-/

namespace A193414.P15905128544310252609
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod 5 (A088748 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A193414.P15905128544310252609

/-! ## A193414.P9979451389350436149

`eq[3, lcm(3, A005811(n))]`
-/

namespace A193414.P9979451389350436149
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 3 (A005811 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A193414.P9979451389350436149

/-! ## A193414.P16255948631393121755

`eq[5, lcm(5, A090079(n))]`
-/

namespace A193414.P16255948631393121755
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 5 (A090079 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A193414.P16255948631393121755

/-! ## A193414.P12905097681446384793

`eq[1, and(9, A136004(n))]`
-/

namespace A193414.P12905097681446384793
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 9 (A136004 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A193414.P12905097681446384793

/-! ## A193414.P14670042789522581751

`eq[13, or(8, A073334(n))]`
-/

namespace A193414.P14670042789522581751
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 8 (A073334 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A193414.P14670042789522581751

/-!
# A193415: Numbers from A193414 written in base 2.

The programs for A193415, there is no canonical definition to state claims against.
-/

/-! ## A193415.P14607300625457905437

`A007088(lt[2, 4/(a(n-1-and(n, 2*n))+1)])` with `a(0)=0`
-/

namespace A193415.P14607300625457905437
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℚ := SequenceMachineLib.rec [0] fun n f2 =>
  4 / (f2 ((n : ℤ) - 1 - (Nat.land n (2 * n) : ℤ)).toNat + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (SequenceMachineLib.nth (fun j => (f1 j : ℚ) < f2 j) n)

end

end A193415.P14607300625457905437

/-! ## A193415.P1378997077512478208

`A007088(lt[a(n-1-and(n, 2*n))+1, 8*n%2])` with `a(0)=3`
-/

namespace A193415.P1378997077512478208
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [3] fun n f1 =>
  f1 ((n : ℤ) - 1 - (Nat.land n (2 * n) : ℤ)).toNat + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8 * (n % 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A193415.P1378997077512478208

/-! ## A193415.P5171146024472708746

`A007088(A193414(n+1))`
-/

namespace A193415.P5171146024472708746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A193414 (n + 1)).toNat

end

end A193415.P5171146024472708746

/-! ## A193415.P14734992656872013085

`A099821(A171987(n+1))`
-/

namespace A193415.P14734992656872013085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099821 (A171987 (n + 1)).toNat

end

end A193415.P14734992656872013085

/-! ## A193415.P8376377270903028512

`A099821(record[A187769(n+1)])`
-/

namespace A193415.P8376377270903028512
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187769 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099821 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A193415.P8376377270903028512

/-!
# A193416: Minimum surface area of polycubes with volume n.

The programs for A193416, there is no canonical definition to state claims against.
-/

/-! ## A193416.P426985132131857235

`6*(n+1)-2*A007818(n+1)`
-/

namespace A193416.P426985132131857235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (6 * (n + 1) : ℤ) - 2 * A007818 (n + 1)

end

end A193416.P426985132131857235

/-! ## A193416.P2500282103640785047

`A103517(A016789(n)-A007818(n+1))`
-/

namespace A193416.P2500282103640785047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103517 (A016789 n - A007818 (n + 1)).toNat

end

end A193416.P2500282103640785047

/-! ## A193416.P2378597846266597033

`A020725(A016969(n)-2*A007818(n+1))`
-/

namespace A193416.P2378597846266597033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A016969 n - 2 * A007818 (n + 1)).toNat

end

end A193416.P2378597846266597033

/-! ## A193416.P13814539929406227317

`A017029(n)-(A007818(n+1)+n-2)-A007818(n+1)`
-/

namespace A193416.P13814539929406227317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017029 n - (A007818 (n + 1) + ((n : ℤ) - 2)) - A007818 (n + 1)

end

end A193416.P13814539929406227317

/-! ## A193416.P3389704160038749181

`A020725(A016969(n)-A007818(n+1)-A007818(n+1))`
-/

namespace A193416.P3389704160038749181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A016969 n - A007818 (n + 1) - A007818 (n + 1)).toNat

end

end A193416.P3389704160038749181

/-! ## A193416.P10963780110525861637

`abs(A007818(n+1)-A008588(n+1))-A007818(n+1)`
-/

namespace A193416.P10963780110525861637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A007818 (n + 1) - A008588 (n + 1)| - A007818 (n + 1)

end

end A193416.P10963780110525861637

/-! ## A193416.P7865364041958822606

`A118659(n+1)-A007818(n+1)`
-/

namespace A193416.P7865364041958822606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118659 (n + 1) - A007818 (n + 1)

end

end A193416.P7865364041958822606

/-!
# A193418: Expansion of x*(x^2+x-1)/(3*x^6-4*x^5+x^4-3*x^2+4*x-1).

The programs for A193418, the canonical program `A193418.P18228898828716339561` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A193418 has offset 1).

The definition of A193418 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-x-x^2)/(1-4x+3x^2-x^4+4x^5-3x^6))` (program `A193418.P18228898828716339561`, by `A193418.P18228898828716339561.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A193418.P18228898828716339561

`ogf((1-x-x^2)/(1-4x+3x^2-x^4+4x^5-3x^6))`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A193418

/-- `ogf((1-x-x^2)/(1-4x+3x^2-x^4+4x^5-3x^6))` -/
def P18228898828716339561.Spec : Prop :=
  ∀ n, P18228898828716339561.a n = A193418 (n + 1)

theorem P18228898828716339561.correct : P18228898828716339561.Spec := by
  intro n
  simp only [A193418, Nat.add_sub_cancel]

end A193418

/-! ## A193418.P5838120293856149076

`ceil(∑[A006342(n+1)/2])`
-/

namespace A193418.P5838120293856149076
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006342 (n + 1) : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈∑ j ∈ Finset.range (n + 1), f1 j⌉

end

end A193418.P5838120293856149076

namespace A193418

/-- `ceil(∑[A006342(n+1)/2])` -/
def P5838120293856149076.Spec : Prop :=
  ∀ n, P5838120293856149076.a n = A193418 (n + 1)

end A193418

/-! ## A193418.P14612131374801705821

`∑[A097137(n+1)+A008621(n)]`
-/

namespace A193418.P14612131374801705821
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097137 (n + 1) + A008621 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A193418.P14612131374801705821

namespace A193418

/-- `∑[A097137(n+1)+A008621(n)]` -/
def P14612131374801705821.Spec : Prop :=
  ∀ n, P14612131374801705821.a n = A193418 (n + 1)

end A193418

/-! ## A193418.P2648227576570468367

`∑[ceil(∑[3^(n+1)/8])]`
-/

namespace A193418.P2648227576570468367
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 ^ (n + 1) : ℚ) / 8

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈∑ j ∈ Finset.range (n + 1), f2 j⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A193418.P2648227576570468367

namespace A193418

/-- `∑[ceil(∑[3^(n+1)/8])]` -/
def P2648227576570468367.Spec : Prop :=
  ∀ n, P2648227576570468367.a n = A193418 (n + 1)

end A193418

/-! ## A193418.P473119174326650628

`round(A183119(n+2)/4)`
-/

namespace A193418.P473119174326650628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A183119 (n + 2) : ℚ) / 4)

end

end A193418.P473119174326650628

namespace A193418

/-- `round(A183119(n+2)/4)` -/
def P473119174326650628.Spec : Prop :=
  ∀ n, P473119174326650628.a n = A193418 (n + 1)

end A193418

/-! ## A193418.P388933265766638933

`round(∑[A006342(n+1)/2])%A282835(n+1)`
-/

namespace A193418.P388933265766638933
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006342 (n + 1) : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)) (A282835 (n + 1))

end

end A193418.P388933265766638933

namespace A193418

/-- `round(∑[A006342(n+1)/2])%A282835(n+1)` -/
def P388933265766638933.Spec : Prop :=
  ∀ n, P388933265766638933.a n = A193418 (n + 1)

end A193418

/-!
# A193419: Numbers n such that 4n+3 is a palindromic prime.

The programs for A193419, there is no canonical definition to state claims against.
-/

/-! ## A193419.P4942846884291866633

`record[floor(A093178(A322947(n+1))/2)]`
-/

namespace A193419.P4942846884291866633
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A093178 (A322947 (n + 1)).toNat : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A193419.P4942846884291866633

/-! ## A193419.P8275671044143520023

`record[A057979(A322947(n+1))]`
-/

namespace A193419.P8275671044143520023
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 (A322947 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A193419.P8275671044143520023

/-! ## A193419.P11726595445486735761

`record[A057979(floor(A002385(n+1)/2))]`
-/

namespace A193419.P11726595445486735761
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 ⌊(A002385 (n + 1) : ℚ) / 2⌋.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A193419.P11726595445486735761

/-! ## A193419.P6869075133876410671

`record[A057979(floor(A069217(n+3)/2))]`
-/

namespace A193419.P6869075133876410671
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 ⌊(A069217 (n + 3) : ℚ) / 2⌋.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A193419.P6869075133876410671

/-! ## A193419.P12228912239319740401

`eq[A004156(2*n+1), A060264(2*n+1)]`
-/

namespace A193419.P12228912239319740401
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004156 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060264 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A193419.P12228912239319740401

/-!
# A193420: -log( Sum_{n>=0} (-x)^n/n!^3 ) = Sum_{n>=1} a(n)*x^n/n!^3.

The programs for A193420, there is no canonical definition to state claims against.
-/

/-! ## A193420.P13785848675312379497

`abs(A287696(A000124(n+1)))`
-/

namespace A193420.P13785848675312379497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A287696 (A000124 (n + 1)).toNat|

end

end A193420.P13785848675312379497

/-! ## A193420.P6910854987189237003

`abs(A287696(eq[1, A139601(n)]))`
-/

namespace A193420.P6910854987189237003
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139601 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A287696 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)|

end

end A193420.P6910854987189237003

/-! ## A193420.P15100677631373703836

`record[gcd(A266832(n+1), A287696(n))]`
-/

namespace A193420.P15100677631373703836
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A266832 (n + 1)) (A287696 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A193420.P15100677631373703836

/-!
# A193421: E.g.f.: Sum_{n>=0} x^n * exp(n^2*x).

The programs for A193421, there is no canonical definition to state claims against.
-/

/-! ## A193421.P8850640525823708778

`A268293(n+1)+A015910(A057331(n))`
-/

namespace A193421.P8850640525823708778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268293 (n + 1) + A015910 (A057331 n).toNat

end

end A193421.P8850640525823708778

/-! ## A193421.P17230833563505198374

`A268293(n+1)+A221171(A002529(n))`
-/

namespace A193421.P17230833563505198374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268293 (n + 1) + A221171 (A002529 n).toNat

end

end A193421.P17230833563505198374

/-!
# A193422: Smallest number m such that A193358(m) = n.

The programs for A193422, the canonical program `A193422.P15534027446405871215` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A193422 has offset 1).

The definition of A193422 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A193422.P15534027446405871215

`a(n-1)+2*a(n-2)-2*a(n-3)-a(n-4)+a(n-5)` with `a(0)=0, a(1)=1, a(2)=4, a(3)=2, a(4)=10, a(5)=6, a(6)=18`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A193422

/-- `a(n-1)+2*a(n-2)-2*a(n-3)-a(n-4)+a(n-5)` -/
def P15534027446405871215.Spec : Prop :=
  ∀ n, P15534027446405871215.a n = A193422 (n + 1)

theorem P15534027446405871215.correct : P15534027446405871215.Spec := by
  intro n
  simp only [A193422, Nat.add_sub_cancel]

end A193422

/-! ## A193422.P5174638395157017923

`A185061(n+1)-1`
-/

namespace A193422.P5174638395157017923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185061 (n + 1) - 1

end

end A193422.P5174638395157017923

namespace A193422

/-- `A185061(n+1)-1` -/
def P5174638395157017923.Spec : Prop :=
  ∀ n, P5174638395157017923.a n = A193422 (n + 1)

end A193422

/-! ## A193422.P10615854302947714983

`char[1]+A338041(n+1)-(n+1)`
-/

namespace A193422.P10615854302947714983
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) + (A338041 (n + 1) - (n + 1 : ℤ))

end

end A193422.P10615854302947714983

namespace A193422

/-- `char[1]+A338041(n+1)-(n+1)` -/
def P10615854302947714983.Spec : Prop :=
  ∀ n, P10615854302947714983.a n = A193422 (n + 1)

end A193422

/-! ## A193422.P12874605921907233470

`A110660(n)+n*A266591(n)`
-/

namespace A193422.P12874605921907233470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110660 n + (n : ℤ) * A266591 n

end

end A193422.P12874605921907233470

namespace A193422

/-- `A110660(n)+n*A266591(n)` -/
def P12874605921907233470.Spec : Prop :=
  ∀ n, P12874605921907233470.a n = A193422 (n + 1)

end A193422

/-! ## A193422.P1182245009841016513

`A338041(n+1)-(A199969(n+1)+1)`
-/

namespace A193422.P1182245009841016513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338041 (n + 1) - (A199969 (n + 1) + 1)

end

end A193422.P1182245009841016513

namespace A193422

/-- `A338041(n+1)-(A199969(n+1)+1)` -/
def P1182245009841016513.Spec : Prop :=
  ∀ n, P1182245009841016513.a n = A193422 (n + 1)

end A193422

/-! ## A193422.P14453718885366293360

`n²%A168269(n+1)*∑[A267043(n)]`
-/

namespace A193422.P14453718885366293360
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267043 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n ^ 2 : ℤ) (A168269 (n + 1)) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A193422.P14453718885366293360

namespace A193422

/-- `n²%A168269(n+1)*∑[A267043(n)]` -/
def P14453718885366293360.Spec : Prop :=
  ∀ n, P14453718885366293360.a n = A193422 (n + 1)

end A193422

/-! ## A193422.P7822754504091801168

`A052938(A004442(n))*A123108(A004442(n))`
-/

namespace A193422.P7822754504091801168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052938 (A004442 n).toNat * A123108 (A004442 n).toNat

end

end A193422.P7822754504091801168

namespace A193422

/-- `A052938(A004442(n))*A123108(A004442(n))` -/
def P7822754504091801168.Spec : Prop :=
  ∀ n, P7822754504091801168.a n = A193422 (n + 1)

end A193422

/-! ## A193422.P14704519924459672916

`A004526(A266222(n)+n)+A004526(n)²`
-/

namespace A193422.P14704519924459672916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A266222 n + (n : ℤ)).toNat + A004526 n ^ 2

end

end A193422.P14704519924459672916

namespace A193422

/-- `A004526(A266222(n)+n)+A004526(n)²` -/
def P14704519924459672916.Spec : Prop :=
  ∀ n, P14704519924459672916.a n = A193422 (n + 1)

end A193422

/-! ## A193422.P16264139832288177221

`A004273(A008795(n))-A033999(n)`
-/

namespace A193422.P16264139832288177221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A008795 n).toNat - A033999 n

end

end A193422.P16264139832288177221

namespace A193422

/-- `A004273(A008795(n))-A033999(n)` -/
def P16264139832288177221.Spec : Prop :=
  ∀ n, P16264139832288177221.a n = A193422 (n + 1)

end A193422

/-! ## A193422.P15622195611194682206

`A033999(n+1)+A004273(A008795(n))`
-/

namespace A193422.P15622195611194682206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (n + 1) + A004273 (A008795 n).toNat

end

end A193422.P15622195611194682206

namespace A193422

/-- `A033999(n+1)+A004273(A008795(n))` -/
def P15622195611194682206.Spec : Prop :=
  ∀ n, P15622195611194682206.a n = A193422 (n + 1)

end A193422

/-! ## A193422.P11922225882187730634

`A110660(n)+A008574(A110660(n))%A141310(n)`
-/

namespace A193422.P11922225882187730634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110660 n + Int.tmod (A008574 (A110660 n).toNat) (A141310 n)

end

end A193422.P11922225882187730634

namespace A193422

/-- `A110660(n)+A008574(A110660(n))%A141310(n)` -/
def P11922225882187730634.Spec : Prop :=
  ∀ n, P11922225882187730634.a n = A193422 (n + 1)

end A193422

/-! ## A193422.P16902548155635552198

`A023443(A185061(n+1))`
-/

namespace A193422.P16902548155635552198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A185061 (n + 1)).toNat

end

end A193422.P16902548155635552198

namespace A193422

/-- `A023443(A185061(n+1))` -/
def P16902548155635552198.Spec : Prop :=
  ∀ n, P16902548155635552198.a n = A193422 (n + 1)

end A193422

/-!
# A193423: Primes of the form x^2+y^3 with x, y and y^3 - x^2 >= 0.

The programs for A193423, there is no canonical definition to state claims against.
-/

/-! ## A193423.P3830369618338905774

`p?[A340038(n+1)]`
-/

namespace A193423.P3830369618338905774
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340038 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A193423.P3830369618338905774

/-! ## A193423.P11328612537819570103

`p?[record[A340038(A117910(n))]]`
-/

namespace A193423.P11328612537819570103
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340038 (A117910 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A193423.P11328612537819570103

/-! ## A193423.P8987920041616606492

`p?[record[A340038(A126759(n))]]`
-/

namespace A193423.P8987920041616606492
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340038 (A126759 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A193423.P8987920041616606492

/-! ## A193423.P12847440396608421483

`record[A020639(A340040(n+2))]`
-/

namespace A193423.P12847440396608421483
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A340040 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A193423.P12847440396608421483

/-! ## A193423.P6398427409641314043

`record[A020639(A340038(n+3))]`
-/

namespace A193423.P6398427409641314043
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A340038 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A193423.P6398427409641314043

/-!
# A193425: Expansion of e.g.f.: (1 - 2*x)^(-1/(1-x)).

The programs for A193425, there is no canonical definition to state claims against.
-/

/-! ## A193425.P11437982462452025486

`2^n*A235802(n)`
-/

namespace A193425.P11437982462452025486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A235802 n

end

end A193425.P11437982462452025486

/-! ## A193425.P10731075926769093844

`A235802(n)+A000225(n)*A235802(n)`
-/

namespace A193425.P10731075926769093844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235802 n + A000225 n * A235802 n

end

end A193425.P10731075926769093844

/-! ## A193425.P14609461964537663909

`lcm(A011782(n+1)*A235802(n), A011782(n))`
-/

namespace A193425.P14609461964537663909
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A011782 (n + 1) * A235802 n) (A011782 n)

end

end A193425.P14609461964537663909

/-! ## A193425.P9939213889105340069

`or(A011782(n+1)*A235802(n), A000007(n))`
-/

namespace A193425.P9939213889105340069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A011782 (n + 1) * A235802 n) (A000007 n)

end

end A193425.P9939213889105340069

/-! ## A193425.P15380357133822337737

`2^n/A235802(n)^A008683(A006450(n+1))`
-/

namespace A193425.P15380357133822337737
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℚ) / (A235802 n : ℚ) ^ (A008683 (A006450 (n + 1)).toNat : ℤ)

end

end A193425.P15380357133822337737

/-!
# A193426: Expansion of (a(q^2) + a(q^3) - 2*a(q^6)) / 6 in powers of q where a() is a cubic AGM function.

The programs for A193426, the canonical program `A193426.P7960739282691465682` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A193426 has offset 1).

The definition of A193426 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A193426.P7250538913561166976

`A113447(n+1)*A128834(n)`
-/

namespace A193426.P7250538913561166976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113447 (n + 1) * A128834 n

end

end A193426.P7250538913561166976

namespace A193426

/-- `A113447(n+1)*A128834(n)` -/
def P7250538913561166976.Spec : Prop :=
  ∀ n, P7250538913561166976.a n = A193426 (n + 1)

end A193426

/-! ## A193426.P3652974774551822904

`-(A093829(n+1)*A102283(n))`
-/

namespace A193426.P3652974774551822904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(A093829 (n + 1) * A102283 n)

end

end A193426.P3652974774551822904

namespace A193426

/-- `-(A093829(n+1)*A102283(n))` -/
def P3652974774551822904.Spec : Prop :=
  ∀ n, P3652974774551822904.a n = A193426 (n + 1)

end A193426

/-! ## A193426.P9171791035490955030

`A093829(n+1)-A115235(n+1)`
-/

namespace A193426.P9171791035490955030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093829 (n + 1) - A115235 (n + 1)

end

end A193426.P9171791035490955030

namespace A193426

/-- `A093829(n+1)-A115235(n+1)` -/
def P9171791035490955030.Spec : Prop :=
  ∀ n, P9171791035490955030.a n = A193426 (n + 1)

end A193426

/-! ## A193426.P11710065486467512136

`(1-Δ[A130481(n)])*A093829(n+1)`
-/

namespace A193426.P11710065486467512136
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130481 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - (f1 (n + 1) - f1 n)) * A093829 (n + 1)

end

end A193426.P11710065486467512136

namespace A193426

/-- `(1-Δ[A130481(n)])*A093829(n+1)` -/
def P11710065486467512136.Spec : Prop :=
  ∀ n, P11710065486467512136.a n = A193426 (n + 1)

end A193426

/-! ## A193426.P1646342041229065895

`A093829(n+1)*A102283(2*n)`
-/

namespace A193426.P1646342041229065895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093829 (n + 1) * A102283 (2 * n)

end

end A193426.P1646342041229065895

namespace A193426

/-- `A093829(n+1)*A102283(2*n)` -/
def P1646342041229065895.Spec : Prop :=
  ∀ n, P1646342041229065895.a n = A193426 (n + 1)

end A193426

/-! ## A193426.P10344018476469749868

`A093829(n+1)*A131736(2*n+1)`
-/

namespace A193426.P10344018476469749868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093829 (n + 1) * A131736 (2 * n + 1)

end

end A193426.P10344018476469749868

namespace A193426

/-- `A093829(n+1)*A131736(2*n+1)` -/
def P10344018476469749868.Spec : Prop :=
  ∀ n, P10344018476469749868.a n = A193426 (n + 1)

end A193426

/-! ## A193426.P17068834575964730521

`A093829(2*(n+1))*A128834(2*n)`
-/

namespace A193426.P17068834575964730521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093829 (2 * (n + 1)) * A128834 (2 * n)

end

end A193426.P17068834575964730521

namespace A193426

/-- `A093829(2*(n+1))*A128834(2*n)` -/
def P17068834575964730521.Spec : Prop :=
  ∀ n, P17068834575964730521.a n = A193426 (n + 1)

end A193426

/-! ## A193426.P7960739282691465682

`A131719(2*n)*A261884(2*(n+1))`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A193426

/-- `A131719(2*n)*A261884(2*(n+1))` -/
def P7960739282691465682.Spec : Prop :=
  ∀ n, P7960739282691465682.a n = A193426 (n + 1)

theorem P7960739282691465682.correct : P7960739282691465682.Spec := by
  intro n
  simp only [A193426, Nat.add_sub_cancel]

end A193426

/-! ## A193426.P12831011835979040775

`(2-A080425(n)-A080425(n+1))*A113447(2*(n+1))`
-/

namespace A193426.P12831011835979040775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A080425 n - A080425 (n + 1)) * A113447 (2 * (n + 1))

end

end A193426.P12831011835979040775

namespace A193426

/-- `(2-A080425(n)-A080425(n+1))*A113447(2*(n+1))` -/
def P12831011835979040775.Spec : Prop :=
  ∀ n, P12831011835979040775.a n = A193426 (n + 1)

end A193426

/-! ## A193426.P9885288637916544552

`(A049347(2*n+1)-A049347(n+1))*A093829(2*(n+1))`
-/

namespace A193426.P9885288637916544552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A049347 (2 * n + 1) - A049347 (n + 1)) * A093829 (2 * (n + 1))

end

end A193426.P9885288637916544552

namespace A193426

/-- `(A049347(2*n+1)-A049347(n+1))*A093829(2*(n+1))` -/
def P9885288637916544552.Spec : Prop :=
  ∀ n, P9885288637916544552.a n = A193426 (n + 1)

end A193426

/-! ## A193426.P10394475588889306129

`(A049347(n+1)-A049347(2*n+1))*A113447(2*(n+1))`
-/

namespace A193426.P10394475588889306129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A049347 (n + 1) - A049347 (2 * n + 1)) * A113447 (2 * (n + 1))

end

end A193426.P10394475588889306129

namespace A193426

/-- `(A049347(n+1)-A049347(2*n+1))*A113447(2*(n+1))` -/
def P10394475588889306129.Spec : Prop :=
  ∀ n, P10394475588889306129.a n = A193426 (n + 1)

end A193426

/-! ## A193426.P17731776316241297692

`(A010892(2*n)-A010892(2*n+1))*A093829(2*(n+1))`
-/

namespace A193426.P17731776316241297692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A010892 (2 * n) - A010892 (2 * n + 1)) * A093829 (2 * (n + 1))

end

end A193426.P17731776316241297692

namespace A193426

/-- `(A010892(2*n)-A010892(2*n+1))*A093829(2*(n+1))` -/
def P17731776316241297692.Spec : Prop :=
  ∀ n, P17731776316241297692.a n = A193426 (n + 1)

end A193426

/-! ## A193426.P6206049500447364952

`(A010892(2*n+1)-A010892(2*n))*A113447(2*(n+1))`
-/

namespace A193426.P6206049500447364952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A010892 (2 * n + 1) - A010892 (2 * n)) * A113447 (2 * (n + 1))

end

end A193426.P6206049500447364952

namespace A193426

/-- `(A010892(2*n+1)-A010892(2*n))*A113447(2*(n+1))` -/
def P6206049500447364952.Spec : Prop :=
  ∀ n, P6206049500447364952.a n = A193426 (n + 1)

end A193426

/-! ## A193426.P1946261278345146106

`A093829(n+1)*A112300(2*n+3)`
-/

namespace A193426.P1946261278345146106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093829 (n + 1) * A112300 (2 * n + 3)

end

end A193426.P1946261278345146106

namespace A193426

/-- `A093829(n+1)*A112300(2*n+3)` -/
def P1946261278345146106.Spec : Prop :=
  ∀ n, P1946261278345146106.a n = A193426 (n + 1)

end A193426

/-! ## A193426.P15708897579455746057

`A093829(n+1)*A134667(2*n+3)`
-/

namespace A193426.P15708897579455746057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093829 (n + 1) * A134667 (2 * n + 3)

end

end A193426.P15708897579455746057

namespace A193426

/-- `A093829(n+1)*A134667(2*n+3)` -/
def P15708897579455746057.Spec : Prop :=
  ∀ n, P15708897579455746057.a n = A193426 (n + 1)

end A193426

/-!
# A193427: G.f.: Product_{k>=1} 1/(1-x^k)^(8*k).

The programs for A193427, there is no canonical definition to state claims against.
-/

/-! ## A193427.P12391980358743436613

`A255961(Δ[A101853(n+4)])`
-/

namespace A193427.P12391980358743436613
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101853 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255961 (f1 (n + 1) - f1 n).toNat

end

end A193427.P12391980358743436613

/-! ## A193427.P5387564982799636535

`A255961(A055998(n+7)-6)`
-/

namespace A193427.P5387564982799636535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255961 (A055998 (n + 7) - 6).toNat

end

end A193427.P5387564982799636535

/-! ## A193427.P8733997656513688948

`A255961(A000217(n+9)-9)`
-/

namespace A193427.P8733997656513688948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255961 (A000217 (n + 9) - 9).toNat

end

end A193427.P8733997656513688948

/-! ## A193427.P1039140761702819296

`A255961(Δ[Δ[A101854(n+3)]])`
-/

namespace A193427.P1039140761702819296
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101854 (n + 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255961 (f1 (n + 1) - f1 n).toNat

end

end A193427.P1039140761702819296

/-! ## A193427.P11066119494635417043

`record[A255961(A051936(n+4)%A000051(n))]`
-/

namespace A193427.P11066119494635417043
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255961 (Int.tmod (A051936 (n + 4)) (A000051 n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A193427.P11066119494635417043

/-! ## A193427.P11510718349585328028

`A255961(A101853(n+5)-A101853(n+4))`
-/

namespace A193427.P11510718349585328028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255961 (A101853 (n + 5) - A101853 (n + 4)).toNat

end

end A193427.P11510718349585328028

/-! ## A193427.P17472141459385630849

`A255961(A036572(n+4)+A036572(n+9))`
-/

namespace A193427.P17472141459385630849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255961 (A036572 (n + 4) + A036572 (n + 9)).toNat

end

end A193427.P17472141459385630849

/-! ## A193427.P1561076775787393121

`A255961(A101853(n+5)%A101853(n+4))`
-/

namespace A193427.P1561076775787393121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255961 (Int.tmod (A101853 (n + 5)) (A101853 (n + 4))).toNat

end

end A193427.P1561076775787393121

/-!
# A193431: Put the natural numbers together without spaces and read them three at a time advancing one space each time.

The programs for A193431, there is no canonical definition to state claims against.
-/

/-! ## A193431.P8980764025456139123

`10*(10*A007376(n+1)+A007376(n+2))+A007376(n+3)`
-/

namespace A193431.P8980764025456139123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  10 * (10 * A007376 (n + 1) + A007376 (n + 2)) + A007376 (n + 3)

end

end A193431.P8980764025456139123

/-! ## A193431.P5540119992675038458

`floor(A193492(n+1)/10)`
-/

namespace A193431.P5540119992675038458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A193492 (n + 1) : ℚ) / 10⌋

end

end A193431.P5540119992675038458

/-! ## A193431.P12613446227067123141

`floor(floor(A193493(n+1)/10)/10)`
-/

namespace A193431.P12613446227067123141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(⌊(A193493 (n + 1) : ℚ) / 10⌋ : ℚ) / 10⌋

end

end A193431.P12613446227067123141

/-! ## A193431.P3056574036381377266

`A059995(A193492(n+1))`
-/

namespace A193431.P3056574036381377266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059995 (A193492 (n + 1)).toNat

end

end A193431.P3056574036381377266

/-! ## A193431.P6602361848160349058

`A059995(floor(A193493(n+1)/10))`
-/

namespace A193431.P6602361848160349058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059995 ⌊(A193493 (n + 1) : ℚ) / 10⌋.toNat

end

end A193431.P6602361848160349058

/-! ## A193431.P9248371696215186975

`A224841(∑[n+2]+4)`
-/

namespace A193431.P9248371696215186975
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224841 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A193431.P9248371696215186975

/-!
# A193432: Number of divisors of n^2 + 1.

The programs for A193432, the canonical program `A193432.P15803049534732017682` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A193432 has offset 0).

The definition of A193432 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A193432.P15803049534732017682

`A000005(A002522(n))`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A193432

/-- `A000005(A002522(n))` -/
def P15803049534732017682.Spec : Prop :=
  ∀ n, P15803049534732017682.a n = A193432 n

theorem P15803049534732017682.correct : P15803049534732017682.Spec := by
  intro n
  simp only [A193432]

end A193432

/-! ## A193432.P10264491125088199398

`A000005(A278162(n))`
-/

namespace A193432.P10264491125088199398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A278162 n).toNat

end

end A193432.P10264491125088199398

namespace A193432

/-- `A000005(A278162(n))` -/
def P10264491125088199398.Spec : Prop :=
  ∀ n, P10264491125088199398.a n = A193432 n

end A193432

/-! ## A193432.P4598427805508201648

`A333167(n)/A105397(n)`
-/

namespace A193432.P4598427805508201648
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A333167 n : ℚ) / (A105397 n : ℚ)

end

end A193432.P4598427805508201648

namespace A193432

/-- `A333167(n)/A105397(n)` -/
def P4598427805508201648.Spec : Prop :=
  ∀ n, P4598427805508201648.a n = (A193432 n : ℚ)

end A193432

/-! ## A193432.P2296643591985416815

`(A049744(n)-(A051132(n)+A046109(n)))/A105397(n)`
-/

namespace A193432.P2296643591985416815
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A049744 n - (A051132 n + A046109 n) : ℚ) / (A105397 n : ℚ)

end

end A193432.P2296643591985416815

namespace A193432

/-- `(A049744(n)-(A051132(n)+A046109(n)))/A105397(n)` -/
def P2296643591985416815.Spec : Prop :=
  ∀ n, P2296643591985416815.a n = (A193432 n : ℚ)

end A193432

/-! ## A193432.P10383299721834110967

`∏{e}[n²+1, #+1]`
-/

namespace A193432.P10383299721834110967
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1)

end

end A193432.P10383299721834110967

namespace A193432

/-- `∏{e}[n²+1, #+1]` -/
def P10383299721834110967.Spec : Prop :=
  ∀ n, (P10383299721834110967.a n : ℤ) = A193432 n

end A193432

/-! ## A193432.P4879316197196353812

`∑{d}[n²+1, gcd(3, #)]`
-/

namespace A193432.P4879316197196353812
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), Nat.gcd 3 d

end

end A193432.P4879316197196353812

namespace A193432

/-- `∑{d}[n²+1, gcd(3, #)]` -/
def P4879316197196353812.Spec : Prop :=
  ∀ n, (P4879316197196353812.a n : ℤ) = A193432 n

end A193432

/-! ## A193432.P3994022415788512175

`∑{d}[n²+1, floor(atan(#+1))]`
-/

namespace A193432.P3994022415788512175
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), ⌊Real.arctan (d + 1 : ℝ)⌋

end

end A193432.P3994022415788512175

namespace A193432

/-- `∑{d}[n²+1, floor(atan(#+1))]` -/
def P3994022415788512175.Spec : Prop :=
  ∀ n, P3994022415788512175.a n = A193432 n

end A193432

/-! ## A193432.P905195512948450793

`∑{d}[4*(n²+1), val(#, 4)]`
-/

namespace A193432.P905195512948450793
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * (n ^ 2 + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), SequenceMachineLib.valuation d 4

end

end A193432.P905195512948450793

namespace A193432

/-- `∑{d}[4*(n²+1), val(#, 4)]` -/
def P905195512948450793.Spec : Prop :=
  ∀ n, (P905195512948450793.a n : ℤ) = A193432 n

end A193432

/-! ## A193432.P8372996365048776512

`A000005(1+n²)`
-/

namespace A193432.P8372996365048776512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (1 + n ^ 2)

end

end A193432.P8372996365048776512

namespace A193432

/-- `A000005(1+n²)` -/
def P8372996365048776512.Spec : Prop :=
  ∀ n, P8372996365048776512.a n = A193432 n

end A193432

/-! ## A193432.P17153645312944315310

`A000005(∑[2*n]-(n-1))%(n+2)`
-/

namespace A193432.P17153645312944315310
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000005 (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - ((n : ℤ) - 1)).toNat) (n + 2 : ℤ)

end

end A193432.P17153645312944315310

namespace A193432

/-- `A000005(∑[2*n]-(n-1))%(n+2)` -/
def P17153645312944315310.Spec : Prop :=
  ∀ n, P17153645312944315310.a n = A193432 n

end A193432

/-! ## A193432.P6963443633886211379

`A000005(∑[2*n+1]-2*n)+C(2, n+3)`
-/

namespace A193432.P6963443633886211379
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (∑ j ∈ Finset.range (n + 1), f1 j - 2 * n) + (Nat.choose 2 (n + 3) : ℤ)

end

end A193432.P6963443633886211379

namespace A193432

/-- `A000005(∑[2*n+1]-2*n)+C(2, n+3)` -/
def P6963443633886211379.Spec : Prop :=
  ∀ n, P6963443633886211379.a n = A193432 n

end A193432

/-! ## A193432.P5668887002826665518

`A000027(A000005(n*n+1))`
-/

namespace A193432.P5668887002826665518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A000005 (n * n + 1)).toNat

end

end A193432.P5668887002826665518

namespace A193432

/-- `A000027(A000005(n*n+1))` -/
def P5668887002826665518.Spec : Prop :=
  ∀ n, P5668887002826665518.a n = A193432 n

end A193432

/-! ## A193432.P11584731962886761688

`abs(A000005(A000290(n)+1)-1)+1`
-/

namespace A193432.P11584731962886761688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000005 (A000290 n + 1).toNat - 1| + 1

end

end A193432.P11584731962886761688

namespace A193432

/-- `abs(A000005(A000290(n)+1)-1)+1` -/
def P11584731962886761688.Spec : Prop :=
  ∀ n, P11584731962886761688.a n = A193432 n

end A193432

/-! ## A193432.P1410514758727860167

`A167447(n²+1)`
-/

namespace A193432.P1410514758727860167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167447 (n ^ 2 + 1)

end

end A193432.P1410514758727860167

namespace A193432

/-- `A167447(n²+1)` -/
def P1410514758727860167.Spec : Prop :=
  ∀ n, P1410514758727860167.a n = A193432 n

end A193432

/-! ## A193432.P7509070833482744856

`A331308(n²+1)`
-/

namespace A193432.P7509070833482744856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331308 (n ^ 2 + 1)

end

end A193432.P7509070833482744856

namespace A193432

/-- `A331308(n²+1)` -/
def P7509070833482744856.Spec : Prop :=
  ∀ n, P7509070833482744856.a n = A193432 n

end A193432

/-! ## A193432.P13763087244645583262

`A174273(A005893(n))`
-/

namespace A193432.P13763087244645583262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174273 (A005893 n).toNat

end

end A193432.P13763087244645583262

namespace A193432

/-- `A174273(A005893(n))` -/
def P13763087244645583262.Spec : Prop :=
  ∀ n, P13763087244645583262.a n = A193432 n

end A193432

/-! ## A193432.P9185420457215028815

`A358216(n²+1)`
-/

namespace A193432.P9185420457215028815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358216 (n ^ 2 + 1)

end

end A193432.P9185420457215028815

namespace A193432

/-- `A358216(n²+1)` -/
def P9185420457215028815.Spec : Prop :=
  ∀ n, P9185420457215028815.a n = A193432 n

end A193432

/-! ## A193432.P7170348222744157496

`A322986(n²+1)`
-/

namespace A193432.P7170348222744157496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322986 (n ^ 2 + 1)

end

end A193432.P7170348222744157496

namespace A193432

/-- `A322986(n²+1)` -/
def P7170348222744157496.Spec : Prop :=
  ∀ n, P7170348222744157496.a n = A193432 n

end A193432

/-! ## A193432.P17205374717517411391

`A320111(A152947(2*n+1)+n+1)`
-/

namespace A193432.P17205374717517411391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320111 (A152947 (2 * n + 1) + (n + 1 : ℤ)).toNat

end

end A193432.P17205374717517411391

namespace A193432

/-- `A320111(A152947(2*n+1)+n+1)` -/
def P17205374717517411391.Spec : Prop :=
  ∀ n, P17205374717517411391.a n = A193432 n

end A193432

/-! ## A193432.P16375490161164216907

`A035181(n²+1)`
-/

namespace A193432.P16375490161164216907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035181 (n ^ 2 + 1)

end

end A193432.P16375490161164216907

namespace A193432

/-- `A035181(n²+1)` -/
def P16375490161164216907.Spec : Prop :=
  ∀ n, P16375490161164216907.a n = A193432 n

end A193432

/-!
# A193433: Sum of the divisors of n^2+1.

The programs for A193433, the canonical program `A193433.P11352703702187817550` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A193433 has offset 0).

The definition of A193433 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A193433.P11352703702187817550

`A000203(A002522(n))`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A193433

/-- `A000203(A002522(n))` -/
def P11352703702187817550.Spec : Prop :=
  ∀ n, P11352703702187817550.a n = A193433 n

theorem P11352703702187817550.correct : P11352703702187817550.Spec := by
  intro n
  simp only [A193433]

end A193433

/-! ## A193433.P8273365823918516526

`A333173(n)/8`
-/

namespace A193433.P8273365823918516526
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A333173 n : ℚ) / 8

end

end A193433.P8273365823918516526

namespace A193433

/-- `A333173(n)/8` -/
def P8273365823918516526.Spec : Prop :=
  ∀ n, P8273365823918516526.a n = (A193433 n : ℚ)

theorem P8273365823918516526.correct : P8273365823918516526.Spec := by
  intro n
  simp only [A193433, Nat.add_sub_cancel, A193433.P8273365823918516526.a, A193433.P11352703702187817550.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A002522, A002522.P3778392011853271743.a, A333173, A333173.P13774738622394836103.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A193433

/-! ## A193433.P4460833368014803983

`∑{d}[n²+1, #]`
-/

namespace A193433.P4460833368014803983
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), d

end

end A193433.P4460833368014803983

namespace A193433

/-- `∑{d}[n²+1, #]` -/
def P4460833368014803983.Spec : Prop :=
  ∀ n, (P4460833368014803983.a n : ℤ) = A193433 n

end A193433

/-! ## A193433.P11521557406770934834

`∑{d}[A000290(n)+1, #]%(A016873(n)^4)`
-/

namespace A193433.P11521557406770934834
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((∑ d ∈ Nat.divisors (f1 n).natAbs, d : ℕ) : ℤ) (A016873 n ^ 4)

end

end A193433.P11521557406770934834

namespace A193433

/-- `∑{d}[A000290(n)+1, #]%(A016873(n)^4)` -/
def P11521557406770934834.Spec : Prop :=
  ∀ n, P11521557406770934834.a n = A193433 n

end A193433

/-! ## A193433.P9448442123239382943

`A000027(∑{d}[A002522(n), #])`
-/

namespace A193433.P9448442123239382943
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002522 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (∑ d ∈ Nat.divisors (f1 n).natAbs, d)

end

end A193433.P9448442123239382943

namespace A193433

/-- `A000027(∑{d}[A002522(n), #])` -/
def P9448442123239382943.Spec : Prop :=
  ∀ n, P9448442123239382943.a n = A193433 n

end A193433

/-! ## A193433.P10219355296769695026

`A000203(n²+1)`
-/

namespace A193433.P10219355296769695026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n ^ 2 + 1)

end

end A193433.P10219355296769695026

namespace A193433

/-- `A000203(n²+1)` -/
def P10219355296769695026.Spec : Prop :=
  ∀ n, P10219355296769695026.a n = A193433 n

end A193433

/-! ## A193433.P7457166663464291092

`A000203(∑[2*n]-(n-1))+C(2, n+3)`
-/

namespace A193433.P7457166663464291092
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - ((n : ℤ) - 1)).toNat + (Nat.choose 2 (n + 3) : ℤ)

end

end A193433.P7457166663464291092

namespace A193433

/-- `A000203(∑[2*n]-(n-1))+C(2, n+3)` -/
def P7457166663464291092.Spec : Prop :=
  ∀ n, P7457166663464291092.a n = A193433 n

end A193433

/-! ## A193433.P17734081121289553943

`A000203(∑[2*n+1]-2*n)+and(1, 2*n)`
-/

namespace A193433.P17734081121289553943
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (∑ j ∈ Finset.range (n + 1), f1 j - 2 * n) + (Nat.land 1 (2 * n) : ℤ)

end

end A193433.P17734081121289553943

namespace A193433

/-- `A000203(∑[2*n+1]-2*n)+and(1, 2*n)` -/
def P17734081121289553943.Spec : Prop :=
  ∀ n, P17734081121289553943.a n = A193433 n

end A193433

/-! ## A193433.P12752999761887522764

`A000027(A000203(n*n+1))`
-/

namespace A193433.P12752999761887522764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A000203 (n * n + 1)).toNat

end

end A193433.P12752999761887522764

namespace A193433

/-- `A000027(A000203(n*n+1))` -/
def P12752999761887522764.Spec : Prop :=
  ∀ n, P12752999761887522764.a n = A193433 n

end A193433

/-! ## A193433.P6751891825812297520

`abs(A000203(A000290(n)+1)-1)+1`
-/

namespace A193433.P6751891825812297520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000203 (A000290 n + 1).toNat - 1| + 1

end

end A193433.P6751891825812297520

namespace A193433

/-- `abs(A000203(A000290(n)+1)-1)+1` -/
def P6751891825812297520.Spec : Prop :=
  ∀ n, P6751891825812297520.a n = A193433 n

end A193433

/-! ## A193433.P3726532121707482267

`A000203(A097066(2*n))%(37*n-3)²`
-/

namespace A193433.P3726532121707482267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000203 (A097066 (2 * n)).toNat) (((37 * n : ℤ) - 3) ^ 2)

end

end A193433.P3726532121707482267

namespace A193433

/-- `A000203(A097066(2*n))%(37*n-3)²` -/
def P3726532121707482267.Spec : Prop :=
  ∀ n, P3726532121707482267.a n = A193433 n

end A193433

/-! ## A193433.P3737209989131278572

`A000203(A000290(n)+1)*A166486(A166466(n+1))`
-/

namespace A193433.P3737209989131278572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A000290 n + 1).toNat * A166486 (A166466 (n + 1)).toNat

end

end A193433.P3737209989131278572

namespace A193433

/-- `A000203(A000290(n)+1)*A166486(A166466(n+1))` -/
def P3737209989131278572.Spec : Prop :=
  ∀ n, P3737209989131278572.a n = A193433 n

end A193433

/-! ## A193433.P557303482025166156

`A155085(n²+1)-(n²+1)`
-/

namespace A193433.P557303482025166156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155085 (n ^ 2 + 1) - (n ^ 2 + 1 : ℤ)

end

end A193433.P557303482025166156

namespace A193433

/-- `A155085(n²+1)-(n²+1)` -/
def P557303482025166156.Spec : Prop :=
  ∀ n, P557303482025166156.a n = A193433 n

end A193433

/-! ## A193433.P8443012708000262526

`A193462(n)+A023890(A002522(n))`
-/

namespace A193433.P8443012708000262526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193462 n + A023890 (A002522 n).toNat

end

end A193433.P8443012708000262526

namespace A193433

/-- `A193462(n)+A023890(A002522(n))` -/
def P8443012708000262526.Spec : Prop :=
  ∀ n, P8443012708000262526.a n = A193433 n

end A193433

/-! ## A193433.P13049273679345026412

`A069184(n²+1)`
-/

namespace A193433.P13049273679345026412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069184 (n ^ 2 + 1)

end

end A193433.P13049273679345026412

namespace A193433

/-- `A069184(n²+1)` -/
def P13049273679345026412.Spec : Prop :=
  ∀ n, P13049273679345026412.a n = A193433 n

end A193433

/-! ## A193433.P7591554127905685955

`A046897(n²+1)`
-/

namespace A193433.P7591554127905685955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046897 (n ^ 2 + 1)

end

end A193433.P7591554127905685955

namespace A193433

/-- `A046897(n²+1)` -/
def P7591554127905685955.Spec : Prop :=
  ∀ n, P7591554127905685955.a n = A193433 n

end A193433

/-! ## A193433.P720545698200031400

`A046913(n²+1)`
-/

namespace A193433.P720545698200031400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046913 (n ^ 2 + 1)

end

end A193433.P720545698200031400

namespace A193433

/-- `A046913(n²+1)` -/
def P720545698200031400.Spec : Prop :=
  ∀ n, P720545698200031400.a n = A193433 n

end A193433

/-! ## A193433.P18163666649951249599

`A074847(n²+1)`
-/

namespace A193433.P18163666649951249599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074847 (n ^ 2 + 1)

end

end A193433.P18163666649951249599

namespace A193433

/-- `A074847(n²+1)` -/
def P18163666649951249599.Spec : Prop :=
  ∀ n, P18163666649951249599.a n = A193433 n

end A193433

/-! ## A193433.P9190111106888538394

`A078708(n²+1)`
-/

namespace A193433.P9190111106888538394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078708 (n ^ 2 + 1)

end

end A193433.P9190111106888538394

namespace A193433

/-- `A078708(n²+1)` -/
def P9190111106888538394.Spec : Prop :=
  ∀ n, P9190111106888538394.a n = A193433 n

end A193433

/-!
# A193434: 6*n/5 = (n written backwards), n > 0.

The programs for A193434, the canonical program `A193434.P7686401616035730516` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A193434 has offset 1).

The definition of A193434 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A057148, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A193434.P7686401616035730516

`45*A057148(n+2)`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A193434

/-- `45*A057148(n+2)` -/
def P7686401616035730516.Spec : Prop :=
  ∀ n, P7686401616035730516.a n = A193434 (n + 1)

theorem P7686401616035730516.correct : P7686401616035730516.Spec := by
  intro n
  simp only [A193434, Nat.add_sub_cancel]

end A193434

/-! ## A193434.P6174252118176047083

`A101705(n+2)/12`
-/

namespace A193434.P6174252118176047083
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A101705 (n + 2) : ℚ) / 12

end

end A193434.P6174252118176047083

namespace A193434

/-- `A101705(n+2)/12` -/
def P6174252118176047083.Spec : Prop :=
  ∀ n, P6174252118176047083.a n = (A193434 (n + 1) : ℚ)

theorem P6174252118176047083.correct : P6174252118176047083.Spec := by
  intro n
  simp only [A193434, Nat.add_sub_cancel, A193434.P6174252118176047083.a, A193434.P7686401616035730516.a, A057148, A057148.P2713208974406448353.f1, A057148.P2713208974406448353.f2, A057148.P2713208974406448353.a, A101705, A101705.P9918575441970631908.a, A342036, A342036.P14204125781141140411.a, A342040, A342040.P10166415705382760406.a, A007088, A007088.P12432121332583687413.a, A048700, A048700.P8855454458622307026.a, A048701, A048701.P12021779623566832141.a, A003817, A003817.P16251594020616633079.a, A030101, A030101.P16184294017372777612.a, A044918, A044918.P15631491038652286374.a, A062383, A062383.P4595411753464333460.a, A097256, A097256.P18324559811505528946.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A193434

/-! ## A193434.P5775008836108839663

`45*A007088(∑[A164126(n+1)])`
-/

namespace A193434.P5775008836108839663
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164126 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  45 * A007088 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A193434.P5775008836108839663

namespace A193434

/-- `45*A007088(∑[A164126(n+1)])` -/
def P5775008836108839663.Spec : Prop :=
  ∀ n, P5775008836108839663.a n = A193434 (n + 1)

end A193434

/-! ## A193434.P489911607795748799

`record[45*A215256(n)]`
-/

namespace A193434.P489911607795748799
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  45 * A215256 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A193434.P489911607795748799

namespace A193434

/-- `record[45*A215256(n)]` -/
def P489911607795748799.Spec : Prop :=
  ∀ n, P489911607795748799.a n = A193434 (n + 1)

end A193434

/-! ## A193434.P7525249005023843745

`5*A097256(record[A265509(n)])`
-/

namespace A193434.P7525249005023843745
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265509 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A097256 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A193434.P7525249005023843745

namespace A193434

/-- `5*A097256(record[A265509(n)])` -/
def P7525249005023843745.Spec : Prop :=
  ∀ n, P7525249005023843745.a n = A193434 (n + 1)

end A193434

/-! ## A193434.P5185215835437563464

`5*A097256(∑[A164126(n+1)])`
-/

namespace A193434.P5185215835437563464
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164126 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A097256 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A193434.P5185215835437563464

namespace A193434

/-- `5*A097256(∑[A164126(n+1)])` -/
def P5185215835437563464.Spec : Prop :=
  ∀ n, P5185215835437563464.a n = A193434 (n + 1)

end A193434

/-! ## A193434.P3539406645897582435

`5*A097256(record[A175297(n+1)])`
-/

namespace A193434.P3539406645897582435
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175297 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A097256 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A193434.P3539406645897582435

namespace A193434

/-- `5*A097256(record[A175297(n+1)])` -/
def P3539406645897582435.Spec : Prop :=
  ∀ n, P3539406645897582435.a n = A193434 (n + 1)

end A193434

/-! ## A193434.P13458950774819421107

`45*A215256(∑[A164126(n+1)])`
-/

namespace A193434.P13458950774819421107
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164126 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  45 * A215256 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A193434.P13458950774819421107

namespace A193434

/-- `45*A215256(∑[A164126(n+1)])` -/
def P13458950774819421107.Spec : Prop :=
  ∀ n, P13458950774819421107.a n = A193434 (n + 1)

end A193434

/-! ## A193434.P15752811282566041895

`A097256(A164302(n+1))/2`
-/

namespace A193434.P15752811282566041895
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A097256 (A164302 (n + 1)).toNat : ℚ) / 2

end

end A193434.P15752811282566041895

namespace A193434

/-- `A097256(A164302(n+1))/2` -/
def P15752811282566041895.Spec : Prop :=
  ∀ n, P15752811282566041895.a n = (A193434 (n + 1) : ℚ)

end A193434

/-!
# A193435: exp( Sum_{n>=1} x^n / (n*(n+1)/2) ) = Sum_{n>=0} a(n)*x^n / (n!*(n+1)!).

The programs for A193435, there is no canonical definition to state claims against.
-/

/-! ## A193435.P9163496093335895558

`∑[A343313(Δ[A277463(n)])]`
-/

namespace A193435.P9163496093335895558
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277463 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343313 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A193435.P9163496093335895558

/-!
# A193436: exp( Sum_{n>=1} x^n/n^3 ) = Sum_{n>=0} a(n)*x^n/n!^3.

The programs for A193436, there is no canonical definition to state claims against.
-/

/-! ## A193436.P10560328486295699402

`A258873(n)/A006480(n)`
-/

namespace A193436.P10560328486295699402
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A258873 n : ℚ) / (A006480 n : ℚ)

end

end A193436.P10560328486295699402

/-! ## A193436.P16170417504558615562

`A258873(n)/(C(3*n, n)*A000984(n))`
-/

namespace A193436.P16170417504558615562
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A258873 n : ℚ) / ((Nat.choose (3 * n) n : ℤ) * A000984 n : ℚ)

end

end A193436.P16170417504558615562

/-! ## A193436.P70968826757754542

`A258873(n)/A104684(A046092(n))`
-/

namespace A193436.P70968826757754542
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A258873 n : ℚ) / (A104684 (A046092 n).toNat : ℚ)

end

end A193436.P70968826757754542

/-! ## A193436.P13740180984312988909

`A258873(n)/A104684(4*A000217(n))`
-/

namespace A193436.P13740180984312988909
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A258873 n : ℚ) / (A104684 (4 * A000217 n).toNat : ℚ)

end

end A193436.P13740180984312988909

/-!
# A193437: Expansion of e.g.f. exp( Sum_{n>=0} x^(3*n+1)/(3*n+1) ).

The programs for A193437, the canonical program `A193437.P347403233249078028` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A193437 has offset 0).

The definition of A193437 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A193437.P347403233249078028

`a(n-1)+(n-3)*(n-2)*(n-1)*a(n-3)` with `a(0)=1, a(1)=1, a(2)=1`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A193437

/-- `a(n-1)+(n-3)*(n-2)*(n-1)*a(n-3)` -/
def P347403233249078028.Spec : Prop :=
  ∀ n, P347403233249078028.a n = A193437 n

theorem P347403233249078028.correct : P347403233249078028.Spec := by
  intro n
  simp only [A193437]

end A193437

/-! ## A193437.P12898722789231073645

`A000265(A061138(n)+A053497(n))`
-/

namespace A193437.P12898722789231073645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A061138 n + A053497 n).toNat

end

end A193437.P12898722789231073645

namespace A193437

/-- `A000265(A061138(n)+A053497(n))` -/
def P12898722789231073645.Spec : Prop :=
  ∀ n, P12898722789231073645.a n = A193437 n

end A193437

/-! ## A193437.P9721532459343254094

`A061138(n)+A053497(A087036(n))`
-/

namespace A193437.P9721532459343254094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061138 n + A053497 (A087036 n).toNat

end

end A193437.P9721532459343254094

namespace A193437

/-- `A061138(n)+A053497(A087036(n))` -/
def P9721532459343254094.Spec : Prop :=
  ∀ n, P9721532459343254094.a n = A193437 n

end A193437

/-! ## A193437.P12540551745286891237

`A029574(n)+A004442(A061138(n))`
-/

namespace A193437.P12540551745286891237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029574 n + A004442 (A061138 n).toNat

end

end A193437.P12540551745286891237

namespace A193437

/-- `A029574(n)+A004442(A061138(n))` -/
def P12540551745286891237.Spec : Prop :=
  ∀ n, P12540551745286891237.a n = A193437 n

end A193437

/-! ## A193437.P15718728716671893835

`A109613(A061138(n)+A029574(n))`
-/

namespace A193437.P15718728716671893835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109613 (A061138 n + A029574 n).toNat

end

end A193437.P15718728716671893835

namespace A193437

/-- `A109613(A061138(n)+A029574(n))` -/
def P15718728716671893835.Spec : Prop :=
  ∀ n, P15718728716671893835.a n = A193437 n

end A193437

/-!
# A193438: Expansion of e.g.f. exp( Sum_{n>=0} x^(4*n+1)/(4*n+1) ).

The programs for A193438, the canonical program `A193438.P749064996955600509` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A193438 has offset 0).

The definition of A193438 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A193438.P749064996955600509

`a(n-1)+(n-4)*(n-3)*(n-2)*(n-1)*a(n-4)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=1`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A193438

/-- `a(n-1)+(n-4)*(n-3)*(n-2)*(n-1)*a(n-4)` -/
def P749064996955600509.Spec : Prop :=
  ∀ n, P749064996955600509.a n = A193438 n

theorem P749064996955600509.correct : P749064996955600509.Spec := by
  intro n
  simp only [A193438]

end A193438

/-! ## A193438.P9045359069691710646

`A029576(n)+A000265(A052501(n))`
-/

namespace A193438.P9045359069691710646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029576 n + A000265 (A052501 n).toNat

end

end A193438.P9045359069691710646

namespace A193438

/-- `A029576(n)+A000265(A052501(n))` -/
def P9045359069691710646.Spec : Prop :=
  ∀ n, P9045359069691710646.a n = A193438 n

end A193438

/-! ## A193438.P1099214930546968438

`A052501(n)+A029576(A062399(n))`
-/

namespace A193438.P1099214930546968438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052501 n + A029576 (A062399 n).toNat

end

end A193438.P1099214930546968438

namespace A193438

/-- `A052501(n)+A029576(A062399(n))` -/
def P1099214930546968438.Spec : Prop :=
  ∀ n, P1099214930546968438.a n = A193438 n

end A193438

/-! ## A193438.P16506551821674848659

`A029576(A062399(n))+A008307(A167499(n+2))`
-/

namespace A193438.P16506551821674848659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029576 (A062399 n).toNat + A008307 (A167499 (n + 2)).toNat

end

end A193438.P16506551821674848659

namespace A193438

/-- `A029576(A062399(n))+A008307(A167499(n+2))` -/
def P16506551821674848659.Spec : Prop :=
  ∀ n, P16506551821674848659.a n = A193438 n

end A193438

/-! ## A193438.P16848979172165910335

`A052501(n)+A029576(A087036(n))`
-/

namespace A193438.P16848979172165910335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052501 n + A029576 (A087036 n).toNat

end

end A193438.P16848979172165910335

namespace A193438

/-- `A052501(n)+A029576(A087036(n))` -/
def P16848979172165910335.Spec : Prop :=
  ∀ n, P16848979172165910335.a n = A193438 n

end A193438

/-!
# A193439: exp( Sum_{n>=1} a(n-1)*x^n/n!^3 ) = Sum_{n>=0} a(n)/n!^3.

The programs for A193439, there is no canonical definition to state claims against.
-/

/-! ## A193439.P1631187211189893381

`A364911(∏{p}[n+1, #]+2*4^n)`
-/

namespace A193439.P1631187211189893381
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364911 (∏ p ∈ Nat.primeFactors (f1 n), p + 2 * 4 ^ n)

end

end A193439.P1631187211189893381

/-!
# A193440: exp( Sum_{n>=1} x^n/G(n) ) = Sum_{n>=0} a(n)*x^n/G(n), where G(n) = Product_{k=0..n} k! = BarnesG(n+2), (see A000178).

The programs for A193440, there is no canonical definition to state claims against.
-/

/-! ## A193440.P14914456098838381900

`A155510(n!)`
-/

namespace A193440.P14914456098838381900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155510 (Nat.factorial n)

end

end A193440.P14914456098838381900

/-!
# A193441: E.g.f.: exp( Sum_{n>=1} n!^2*x^(2*n)/(2*n)! ) = Sum_{n>=0} a(n)*x^(2*n)/(2*n)!.

The programs for A193441, there is no canonical definition to state claims against.
-/

/-! ## A193441.P5864026048463439061

`A323369(A000670(n)²)`
-/

namespace A193441.P5864026048463439061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323369 (A000670 n ^ 2).toNat

end

end A193441.P5864026048463439061

/-!
# A193442: E.g.f.: exp( Sum_{n>=1} x^(2*n)/A000108(n) ) = Sum_{n>=0} a(n)*x^(2*n)/(2*n)!, where A000108 is the Catalan numbers.

The programs for A193442, there is no canonical definition to state claims against.
-/

/-! ## A193442.P12848370011147199116

`A000010(∑[A025274(3*n+2)])`
-/

namespace A193442.P12848370011147199116
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025274 (3 * n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A193442.P12848370011147199116

/-!
# A193443: E.g.f.: exp( Sum_{n>=1} x^(2*n)/(2*A000108(n)) ) = Sum_{n>=0} a(n)*x^(2*n)/(2*n)!, where A000108 is the Catalan numbers.

The programs for A193443, there is no canonical definition to state claims against.
-/

/-! ## A193443.P4712363422354647496

`A006257(∏[A018249(n)])`
-/

namespace A193443.P4712363422354647496
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018249 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006257 (∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A193443.P4712363422354647496

/-!
# A193444: E.g.f.: exp( Sum_{n>=1} n!*x^(2*n)/(2*n)! ) = Sum_{n>=0} a(n)*x^(2*n)/(2*n)!.

The programs for A193444, there is no canonical definition to state claims against.
-/

/-! ## A193444.P12372133332016828417

`A368207(n!²)`
-/

namespace A193444.P12372133332016828417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368207 (Nat.factorial n ^ 2)

end

end A193444.P12372133332016828417

/-!
# A193445: a(n) = n! * Sum_{d|n} H(d)*H(n/d), where H(n) is the n-th harmonic number.

The programs for A193445, there is no canonical definition to state claims against.
-/

/-! ## A193445.P16525191349314837720

`A019554(A128052(2*n)-A000225(n))`
-/

namespace A193445.P16525191349314837720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019554 (A128052 (2 * n) - A000225 n).toNat

end

end A193445.P16525191349314837720

/-!
# A193446: a(n) = n! * Sum_{k=1..n-1} H(k)*H(n-k) for n>=2, where H(n) is the n-th harmonic number.

The programs for A193446, there is no canonical definition to state claims against.
-/

/-! ## A193446.P12154893282926743990

`2*A001706(n)`
-/

namespace A193446.P12154893282926743990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001706 n

end

end A193446.P12154893282926743990

/-! ## A193446.P1083296298800324812

`2*A376634(∑[n])`
-/

namespace A193446.P1083296298800324812
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A376634 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A193446.P1083296298800324812

/-! ## A193446.P4792549970428440010

`record[2*A376634(n)]`
-/

namespace A193446.P4792549970428440010
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A376634 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A193446.P4792549970428440010

/-! ## A193446.P7428263721986287096

`2*A145324(∑[n+3]+1)`
-/

namespace A193446.P7428263721986287096
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A145324 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A193446.P7428263721986287096

/-! ## A193446.P14696621578311089622

`2*A136124(A167499(n+1)-1)`
-/

namespace A193446.P14696621578311089622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A136124 (A167499 (n + 1) - 1).toNat

end

end A193446.P14696621578311089622

/-! ## A193446.P12923784556824627407

`2*A136124(A167499(n)+1+n)`
-/

namespace A193446.P12923784556824627407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A136124 (A167499 n + 1 + (n : ℤ)).toNat

end

end A193446.P12923784556824627407

/-! ## A193446.P9507080970089114440

`2*or(char[1], A145324(A034856(n+2)))`
-/

namespace A193446.P9507080970089114440
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A145324 (A034856 (n + 2)).toNat)

end

end A193446.P9507080970089114440

/-! ## A193446.P12721062299336009213

`A001706(A053615(n²))+A001706(n)`
-/

namespace A193446.P12721062299336009213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001706 (A053615 (n ^ 2)).toNat + A001706 n

end

end A193446.P12721062299336009213

/-! ## A193446.P13544406794612877521

`A001706(n)+A001706(n)+A000007(n+1)`
-/

namespace A193446.P13544406794612877521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001706 n + (A001706 n + A000007 (n + 1))

end

end A193446.P13544406794612877521

/-!
# A193448: a(n) = 4*(5*n^2 - 5*n + 1).

The programs for A193448, the canonical program `A193448.P11663024226554784206` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A193448 has offset 1).

The definition of A193448 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `4*(5*(n+1)²-5*(n+1)+1)` (program `A193448.P11663024226554784206`, by `A193448.P11663024226554784206.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A193448.P11663024226554784206

`4*(5*(n+1)²-5*(n+1)+1)`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A193448

/-- `4*(5*(n+1)²-5*(n+1)+1)` -/
def P11663024226554784206.Spec : Prop :=
  ∀ n, P11663024226554784206.a n = A193448 (n + 1)

theorem P11663024226554784206.correct : P11663024226554784206.Spec := by
  intro n
  simp only [A193448, Nat.add_sub_cancel]

end A193448

/-! ## A193448.P10766438085787857379

`3*a(n-1)-3*a(n-2)+a(n-3)` with `a(0)=4, a(1)=44, a(2)=124`
-/

namespace A193448.P10766438085787857379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4, 44, 124] fun n a =>
  3 * a (n - 1) - 3 * a (n - 2) + a (n - 3)

end

end A193448.P10766438085787857379

namespace A193448

/-- `3*a(n-1)-3*a(n-2)+a(n-3)` -/
def P10766438085787857379.Spec : Prop :=
  ∀ n, P10766438085787857379.a n = A193448 (n + 1)

theorem P10766438085787857379.correct : P10766438085787857379.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 =>
      simp [A193448, Nat.add_sub_cancel, A193448.P10766438085787857379.a, A193448.P11663024226554784206.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 3 =>
      have h1 := ih (m + 2) (by omega)
      have h2 := ih (m + 1) (by omega)
      have h3 := ih m (by omega)
      simp only [A193448, Nat.add_sub_cancel, A193448.P10766438085787857379.a, A193448.P11663024226554784206.a, SequenceMachineLib.memo_apply] at h1 h2 h3 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 3 - 1 = m + 2 by omega, show m + 3 - 2 = m + 1 by omega, show m + 3 - 3 = m by omega, show m + 2 < m + 3 by omega, show m + 1 < m + 3 by omega, show m < m + 3 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 ⊢
      rw [h1, h2, h3]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A193448

/-! ## A193448.P16729498070999450541

`or(4, ∑[40*n])`
-/

namespace A193448.P16729498070999450541
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  40 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 4 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A193448.P16729498070999450541

namespace A193448

/-- `or(4, ∑[40*n])` -/
def P16729498070999450541.Spec : Prop :=
  ∀ n, (P16729498070999450541.a n : ℤ) = A193448 (n + 1)

end A193448

/-! ## A193448.P12985211953667492712

`xor(4, ∑[40*n])`
-/

namespace A193448.P12985211953667492712
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  40 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 4 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A193448.P12985211953667492712

namespace A193448

/-- `xor(4, ∑[40*n])` -/
def P12985211953667492712.Spec : Prop :=
  ∀ n, (P12985211953667492712.a n : ℤ) = A193448 (n + 1)

end A193448

/-! ## A193448.P1447557357029439598

`lcm(4, ∑[10*n]+1)`
-/

namespace A193448.P1447557357029439598
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 4 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A193448.P1447557357029439598

namespace A193448

/-- `lcm(4, ∑[10*n]+1)` -/
def P1447557357029439598.Spec : Prop :=
  ∀ n, (P1447557357029439598.a n : ℤ) = A193448 (n + 1)

end A193448

/-! ## A193448.P12963136409631789360

`∑[a(n-1)+40]` with `a(0)=4, a(1)=40`
-/

namespace A193448.P12963136409631789360
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [4, 40] fun n f1 =>
  f1 (n - 1) + 40

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A193448.P12963136409631789360

namespace A193448

/-- `∑[a(n-1)+40]` -/
def P12963136409631789360.Spec : Prop :=
  ∀ n, (P12963136409631789360.a n : ℤ) = A193448 (n + 1)

end A193448

/-! ## A193448.P7056939397879036587

`and(5*(2*n+1)², -2)`
-/

namespace A193448.P7056939397879036587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (5 * (2 * n + 1) ^ 2 : ℤ) (-2)

end

end A193448.P7056939397879036587

namespace A193448

/-- `and(5*(2*n+1)², -2)` -/
def P7056939397879036587.Spec : Prop :=
  ∀ n, P7056939397879036587.a n = A193448 (n + 1)

end A193448

/-! ## A193448.P15349285275792258985

`Δ[5*C(2*n+1, 3)-n]`
-/

namespace A193448.P15349285275792258985
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (5 * Nat.choose (2 * n + 1) 3 : ℤ) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A193448.P15349285275792258985

namespace A193448

/-- `Δ[5*C(2*n+1, 3)-n]` -/
def P15349285275792258985.Spec : Prop :=
  ∀ n, P15349285275792258985.a n = A193448 (n + 1)

theorem P15349285275792258985.correct : P15349285275792258985.Spec := by
  intro n
  simp only [A193448, Nat.add_sub_cancel, A193448.P15349285275792258985.f1, A193448.P15349285275792258985.a, A193448.P11663024226554784206.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A193448

/-! ## A193448.P11473885101178902378

`floor(a(n-1)+5*8*n)` with `a(0)=4`

`floor` is left out, it is the identity on integers.
-/

namespace A193448.P11473885101178902378
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [4] fun n a =>
  a (n - 1) + 5 * (8 * n)

end

end A193448.P11473885101178902378

namespace A193448

/-- `floor(a(n-1)+5*8*n)` -/
def P11473885101178902378.Spec : Prop :=
  ∀ n, (P11473885101178902378.a n : ℤ) = A193448 (n + 1)

theorem P11473885101178902378.correct : P11473885101178902378.Spec := by
  intro n
  induction n with
  | zero => simp [A193448, A193448.P11473885101178902378.a, A193448.P11663024226554784206.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
  | succ m ih =>
    simp only [A193448, Nat.add_sub_cancel, A193448.P11473885101178902378.a, A193448.P11663024226554784206.a, SequenceMachineLib.memo_apply] at ih ⊢
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    try simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
    try push_cast at ih ⊢
    try linarith

end A193448

/-! ## A193448.P12518475282109959569

`floor(A332243(n)/3)`
-/

namespace A193448.P12518475282109959569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A332243 n : ℚ) / 3⌋

end

end A193448.P12518475282109959569

namespace A193448

/-- `floor(A332243(n)/3)` -/
def P12518475282109959569.Spec : Prop :=
  ∀ n, P12518475282109959569.a n = A193448 (n + 1)

end A193448

/-! ## A193448.P13476552685203476183

`A195317(n+1)+3`
-/

namespace A193448.P13476552685203476183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195317 (n + 1) + 3

end

end A193448.P13476552685203476183

namespace A193448

/-- `A195317(n+1)+3` -/
def P13476552685203476183.Spec : Prop :=
  ∀ n, P13476552685203476183.a n = A193448 (n + 1)

theorem P13476552685203476183.correct : P13476552685203476183.Spec := by
  intro n
  simp only [A193448, Nat.add_sub_cancel, A193448.P13476552685203476183.a, A193448.P11663024226554784206.a, A195317, A195317.P14364024188265800422.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A193448

/-! ## A193448.P10908288979040248769

`5*A016754(n)-1`
-/

namespace A193448.P10908288979040248769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A016754 n - 1

end

end A193448.P10908288979040248769

namespace A193448

/-- `5*A016754(n)-1` -/
def P10908288979040248769.Spec : Prop :=
  ∀ n, P10908288979040248769.a n = A193448 (n + 1)

theorem P10908288979040248769.correct : P10908288979040248769.Spec := by
  intro n
  simp only [A193448, Nat.add_sub_cancel, A193448.P10908288979040248769.a, A193448.P11663024226554784206.a, A016754, A016754.P2987865549988322084.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A193448

/-! ## A193448.P16469715952767814604

`A017330(n)/5-1`
-/

namespace A193448.P16469715952767814604
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017330 n : ℚ) / 5 - 1

end

end A193448.P16469715952767814604

namespace A193448

/-- `A017330(n)/5-1` -/
def P16469715952767814604.Spec : Prop :=
  ∀ n, P16469715952767814604.a n = (A193448 (n + 1) : ℚ)

theorem P16469715952767814604.correct : P16469715952767814604.Spec := by
  intro n
  simp only [A193448, Nat.add_sub_cancel, A193448.P16469715952767814604.a, A193448.P11663024226554784206.a, A017330, A017330.P10434817311625232981.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A193448

/-! ## A193448.P4198965644823850785

`(A152161(n)-1)/5`
-/

namespace A193448.P4198965644823850785
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A152161 n - 1 : ℚ) / 5

end

end A193448.P4198965644823850785

namespace A193448

/-- `(A152161(n)-1)/5` -/
def P4198965644823850785.Spec : Prop :=
  ∀ n, P4198965644823850785.a n = (A193448 (n + 1) : ℚ)

theorem P4198965644823850785.correct : P4198965644823850785.Spec := by
  intro n
  simp only [A193448, Nat.add_sub_cancel, A193448.P4198965644823850785.a, A193448.P11663024226554784206.a, A152161, A152161.P9122304770913121613.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A193448

/-! ## A193448.P5205625176906994204

`5*A033996(n)+4`
-/

namespace A193448.P5205625176906994204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A033996 n + 4

end

end A193448.P5205625176906994204

namespace A193448

/-- `5*A033996(n)+4` -/
def P5205625176906994204.Spec : Prop :=
  ∀ n, P5205625176906994204.a n = A193448 (n + 1)

theorem P5205625176906994204.correct : P5205625176906994204.Spec := by
  intro n
  simp only [A193448, Nat.add_sub_cancel, A193448.P5205625176906994204.a, A193448.P11663024226554784206.a, A033996, A033996.P3972738276246908348.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A193448

/-! ## A193448.P11077907976281991200

`A016754(n)+A001539(n)`
-/

namespace A193448.P11077907976281991200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016754 n + A001539 n

end

end A193448.P11077907976281991200

namespace A193448

/-- `A016754(n)+A001539(n)` -/
def P11077907976281991200.Spec : Prop :=
  ∀ n, P11077907976281991200.a n = A193448 (n + 1)

theorem P11077907976281991200.correct : P11077907976281991200.Spec := by
  intro n
  simp only [A193448, Nat.add_sub_cancel, A193448.P11077907976281991200.a, A193448.P11663024226554784206.a, A001539, A001539.P2367673173120689746.a, A016754, A016754.P2987865549988322084.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A193448

/-! ## A193448.P16652542197256172846

`A033574(n)+A017101(n)`
-/

namespace A193448.P16652542197256172846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033574 n + A017101 n

end

end A193448.P16652542197256172846

namespace A193448

/-- `A033574(n)+A017101(n)` -/
def P16652542197256172846.Spec : Prop :=
  ∀ n, P16652542197256172846.a n = A193448 (n + 1)

theorem P16652542197256172846.correct : P16652542197256172846.Spec := by
  intro n
  simp only [A193448, Nat.add_sub_cancel, A193448.P16652542197256172846.a, A193448.P11663024226554784206.a, A017101, A017101.P13562222580894225451.a, A033574, A033574.P17979063128835907106.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A193448

/-! ## A193448.P11425745870507998607

`A033996(n)+A016826(n)`
-/

namespace A193448.P11425745870507998607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033996 n + A016826 n

end

end A193448.P11425745870507998607

namespace A193448

/-- `A033996(n)+A016826(n)` -/
def P11425745870507998607.Spec : Prop :=
  ∀ n, P11425745870507998607.a n = A193448 (n + 1)

theorem P11425745870507998607.correct : P11425745870507998607.Spec := by
  intro n
  simp only [A193448, Nat.add_sub_cancel, A193448.P11425745870507998607.a, A193448.P11663024226554784206.a, A016826, A016826.P3235835473290805917.a, A033996, A033996.P3972738276246908348.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A193448

/-! ## A193448.P543739651960762787

`A173309(n)+A027689(n)`
-/

namespace A193448.P543739651960762787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173309 n + A027689 n

end

end A193448.P543739651960762787

namespace A193448

/-- `A173309(n)+A027689(n)` -/
def P543739651960762787.Spec : Prop :=
  ∀ n, P543739651960762787.a n = A193448 (n + 1)

theorem P543739651960762787.correct : P543739651960762787.Spec := by
  intro n
  simp only [A193448, Nat.add_sub_cancel, A193448.P543739651960762787.a, A193448.P11663024226554784206.a, A027689, A027689.P1842390006618827741.a, A173309, A173309.P14730977432803289593.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A193448

/-! ## A193448.P15368012694720111131

`A157870(n)+A060626(n)`
-/

namespace A193448.P15368012694720111131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157870 n + A060626 n

end

end A193448.P15368012694720111131

namespace A193448

/-- `A157870(n)+A060626(n)` -/
def P15368012694720111131.Spec : Prop :=
  ∀ n, P15368012694720111131.a n = A193448 (n + 1)

theorem P15368012694720111131.correct : P15368012694720111131.Spec := by
  intro n
  simp only [A193448, Nat.add_sub_cancel, A193448.P15368012694720111131.a, A193448.P11663024226554784206.a, A060626, A060626.P7741157105463878735.a, A157870, A157870.P6469800247760931367.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A193448

/-!
# A193449: Products of the Jacobsthal numbers and the integers: a(n) = n * A001045(n+1).

The programs for A193449, the canonical program `A193449.P6960319491840512109` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A193449 has offset 0).

The definition of A193449 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*A001045(n+1)` (program `A193449.P6960319491840512109`, by `A193449.P6960319491840512109.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A193449.P6960319491840512109

`n*A001045(n+1)`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A193449

/-- `n*A001045(n+1)` -/
def P6960319491840512109.Spec : Prop :=
  ∀ n, P6960319491840512109.a n = A193449 n

theorem P6960319491840512109.correct : P6960319491840512109.Spec := by
  intro n
  simp only [A193449]

end A193449

/-! ## A193449.P11630706470623714044

`n*(2^(n+1)+(-1)^n)/3`
-/

namespace A193449.P11630706470623714044
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) * ((2 ^ (n + 1) : ℤ) + (-1) ^ n) : ℚ) / 3

end

end A193449.P11630706470623714044

namespace A193449

/-- `n*(2^(n+1)+(-1)^n)/3` -/
def P11630706470623714044.Spec : Prop :=
  ∀ n, P11630706470623714044.a n = (A193449 n : ℚ)

end A193449

/-! ## A193449.P12315404402586547367

`abs(n*A077925(n))`
-/

namespace A193449.P12315404402586547367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n : ℤ) * A077925 n|

end

end A193449.P12315404402586547367

namespace A193449

/-- `abs(n*A077925(n))` -/
def P12315404402586547367.Spec : Prop :=
  ∀ n, P12315404402586547367.a n = A193449 n

end A193449

/-! ## A193449.P5743094329461079172

`n*∑[A078008(n)]`
-/

namespace A193449.P5743094329461079172
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078008 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A193449.P5743094329461079172

namespace A193449

/-- `n*∑[A078008(n)]` -/
def P5743094329461079172.Spec : Prop :=
  ∀ n, P5743094329461079172.a n = A193449 n

end A193449

/-! ## A193449.P14717984302477263845

`n*Δ[A000975(n)]`
-/

namespace A193449.P14717984302477263845
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000975 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (f1 (n + 1) - f1 n)

end

end A193449.P14717984302477263845

namespace A193449

/-- `n*Δ[A000975(n)]` -/
def P14717984302477263845.Spec : Prop :=
  ∀ n, P14717984302477263845.a n = A193449 n

end A193449

/-! ## A193449.P1883436834059961196

`n*A152046(n+1)`
-/

namespace A193449.P1883436834059961196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A152046 (n + 1)

end

end A193449.P1883436834059961196

namespace A193449

/-- `n*A152046(n+1)` -/
def P1883436834059961196.Spec : Prop :=
  ∀ n, P1883436834059961196.a n = A193449 n

end A193449

/-! ## A193449.P14380948501646604920

`n*A167167(n+1)`
-/

namespace A193449.P14380948501646604920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A167167 (n + 1)

end

end A193449.P14380948501646604920

namespace A193449

/-- `n*A167167(n+1)` -/
def P14380948501646604920.Spec : Prop :=
  ∀ n, P14380948501646604920.a n = A193449 n

end A193449

/-! ## A193449.P9379707293305197132

`n*(A052953(n)-1)`
-/

namespace A193449.P9379707293305197132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A052953 n - 1)

end

end A193449.P9379707293305197132

namespace A193449

/-- `n*(A052953(n)-1)` -/
def P9379707293305197132.Spec : Prop :=
  ∀ n, P9379707293305197132.a n = A193449 n

end A193449

/-! ## A193449.P7410516380155564428

`n*(A135231(n)-1)`
-/

namespace A193449.P7410516380155564428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A135231 n - 1)

end

end A193449.P7410516380155564428

namespace A193449

/-- `n*(A135231(n)-1)` -/
def P7410516380155564428.Spec : Prop :=
  ∀ n, P7410516380155564428.a n = A193449 n

end A193449

/-! ## A193449.P5612797823578094427

`n*A135318(2*n)`
-/

namespace A193449.P5612797823578094427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A135318 (2 * n)

end

end A193449.P5612797823578094427

namespace A193449

/-- `n*A135318(2*n)` -/
def P5612797823578094427.Spec : Prop :=
  ∀ n, P5612797823578094427.a n = A193449 n

end A193449

/-! ## A193449.P5821020893441538

`n*A375476(3*n)`
-/

namespace A193449.P5821020893441538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A375476 (3 * n)

end

end A193449.P5821020893441538

namespace A193449

/-- `n*A375476(3*n)` -/
def P5821020893441538.Spec : Prop :=
  ∀ n, P5821020893441538.a n = A193449 n

end A193449

/-! ## A193449.P15746108471121503170

`n*(A081660(n)-n)`
-/

namespace A193449.P15746108471121503170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A081660 n - (n : ℤ))

end

end A193449.P15746108471121503170

namespace A193449

/-- `n*(A081660(n)-n)` -/
def P15746108471121503170.Spec : Prop :=
  ∀ n, P15746108471121503170.a n = A193449 n

theorem P15746108471121503170.correct : P15746108471121503170.Spec := by
  intro n
  simp only [A193449, Nat.add_sub_cancel, A193449.P15746108471121503170.a, A193449.P6960319491840512109.a, A001045, A001045.P7867134490160464591.a, A081660, A081660.P3609957473961011549.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A193449

/-! ## A193449.P8330426019756082582

`n*A112031(Δ[n²])`
-/

namespace A193449.P8330426019756082582
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A112031 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A193449.P8330426019756082582

namespace A193449

/-- `n*A112031(Δ[n²])` -/
def P8330426019756082582.Spec : Prop :=
  ∀ n, P8330426019756082582.a n = A193449 n

end A193449

/-! ## A193449.P3582155153915747667

`n*A112387(Δ[n²])`
-/

namespace A193449.P3582155153915747667
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A112387 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A193449.P3582155153915747667

namespace A193449

/-- `n*A112387(Δ[n²])` -/
def P3582155153915747667.Spec : Prop :=
  ∀ n, P3582155153915747667.a n = A193449 n

end A193449

/-! ## A193449.P16615745892281581794

`n*A112447(Δ[n²])`
-/

namespace A193449.P16615745892281581794
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A112447 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A193449.P16615745892281581794

namespace A193449

/-- `n*A112447(Δ[n²])` -/
def P16615745892281581794.Spec : Prop :=
  ∀ n, P16615745892281581794.a n = A193449 n

end A193449

/-! ## A193449.P957655287740589029

`abs(n*A077953(2*n))`
-/

namespace A193449.P957655287740589029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n : ℤ) * A077953 (2 * n)|

end

end A193449.P957655287740589029

namespace A193449

/-- `abs(n*A077953(2*n))` -/
def P957655287740589029.Spec : Prop :=
  ∀ n, P957655287740589029.a n = A193449 n

end A193449

/-! ## A193449.P5839333101568019410

`abs(n*A077980(2*n))`
-/

namespace A193449.P5839333101568019410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n : ℤ) * A077980 (2 * n)|

end

end A193449.P5839333101568019410

namespace A193449

/-- `abs(n*A077980(2*n))` -/
def P5839333101568019410.Spec : Prop :=
  ∀ n, P5839333101568019410.a n = A193449 n

end A193449

/-! ## A193449.P2653622518503623509

`abs(n*A117576(2*n))`
-/

namespace A193449.P2653622518503623509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n : ℤ) * A117576 (2 * n)|

end

end A193449.P2653622518503623509

namespace A193449

/-- `abs(n*A117576(2*n))` -/
def P2653622518503623509.Spec : Prop :=
  ∀ n, P2653622518503623509.a n = A193449 n

end A193449

/-! ## A193449.P11270662936540518637

`n*Δ[A005578(n+1)]`
-/

namespace A193449.P11270662936540518637
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005578 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (f1 (n + 1) - f1 n)

end

end A193449.P11270662936540518637

namespace A193449

/-- `n*Δ[A005578(n+1)]` -/
def P11270662936540518637.Spec : Prop :=
  ∀ n, P11270662936540518637.a n = A193449 n

end A193449

/-! ## A193449.P869461357842305003

`n*(A167030(n+1)+1)`
-/

namespace A193449.P869461357842305003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A167030 (n + 1) + 1)

end

end A193449.P869461357842305003

namespace A193449

/-- `n*(A167030(n+1)+1)` -/
def P869461357842305003.Spec : Prop :=
  ∀ n, P869461357842305003.a n = A193449 n

end A193449

/-!
# A193450: Triangle of a binomial convolution sum related to Jacobsthal numbers.

The programs for A193450, there is no canonical definition to state claims against.
-/

/-! ## A193450.P14699711718385891782

`∑[char[∑[n+1]]]*A059259(n)`
-/

namespace A193450.P14699711718385891782
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A059259 n

end

end A193450.P14699711718385891782

/-! ## A193450.P10169403146504270924

`abs(∑[char[∑[n+1]]]*A220074(n))`
-/

namespace A193450.P10169403146504270924
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A220074 n|

end

end A193450.P10169403146504270924

/-! ## A193450.P1273267662135920662

`abs(A220074(n))*A003056(n)`
-/

namespace A193450.P1273267662135920662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A220074 n| * A003056 n

end

end A193450.P1273267662135920662

/-! ## A193450.P8252612725969402545

`A059259(n)*A259361(2*n)`
-/

namespace A193450.P8252612725969402545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059259 n * A259361 (2 * n)

end

end A193450.P8252612725969402545

/-! ## A193450.P13104083720334522265

`abs(A220074(n))*Δ[A006463(n)]`
-/

namespace A193450.P13104083720334522265
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006463 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A220074 n| * (f1 (n + 1) - f1 n)

end

end A193450.P13104083720334522265

/-! ## A193450.P8018565356297563328

`A003056(n)*A059260(A061579(n))`
-/

namespace A193450.P8018565356297563328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 n * A059260 (A061579 n).toNat

end

end A193450.P8018565356297563328

/-! ## A193450.P87283147576557317

`A059259(n)*A062003(A003056(n))`
-/

namespace A193450.P87283147576557317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059259 n * A062003 (A003056 n).toNat

end

end A193450.P87283147576557317

/-! ## A193450.P3463153785877068992

`A059259(n)*A099026(A057944(n))`
-/

namespace A193450.P3463153785877068992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059259 n * A099026 (A057944 n).toNat

end

end A193450.P3463153785877068992

/-!
# A193451: Triangle of a binomial convolution sum related to Jacobsthal numbers.

The programs for A193451, there is no canonical definition to state claims against.
-/

/-! ## A193451.P4113089206445193465

`A200057(n+1)-A123245(A059034(n))`
-/

namespace A193451.P4113089206445193465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200057 (n + 1) - A123245 (A059034 n).toNat

end

end A193451.P4113089206445193465

/-! ## A193451.P16550391245000322626

`A200057(n+1)-A337243(A294609(n))`
-/

namespace A193451.P16550391245000322626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200057 (n + 1) - A337243 (A294609 n).toNat

end

end A193451.P16550391245000322626

/-! ## A193451.P9433988454903233210

`A348687(A091042(n)+1)`
-/

namespace A193451.P9433988454903233210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348687 (A091042 n + 1).toNat

end

end A193451.P9433988454903233210

/-! ## A193451.P2662530104884415116

`A001222(A103279(n)^A029653(n))`
-/

namespace A193451.P2662530104884415116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway ((A103279 n : ℚ) ^ (A029653 n : ℤ))).toNat

end

end A193451.P2662530104884415116

/-! ## A193451.P16089614613781992105

`A001222(A208910(n+1)^A029653(n))`
-/

namespace A193451.P16089614613781992105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway ((A208910 (n + 1) : ℚ) ^ (A029653 n : ℤ))).toNat

end

end A193451.P16089614613781992105

/-!
# A193452: a(n) is the sum of all pairwise Manhattan distances for optimal towns with n buildings.

The programs for A193452, there is no canonical definition to state claims against.
-/

/-! ## A193452.P4342595615829575396

`A000194(∑[A368813(n+1)])`
-/

namespace A193452.P4342595615829575396
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368813 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A193452.P4342595615829575396

/-! ## A193452.P13417005041917433460

`∑[A003313(∑[A225293(n)])]`
-/

namespace A193452.P13417005041917433460
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225293 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003313 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A193452.P13417005041917433460

/-! ## A193452.P7587517203624434297

`∑[record[A303660(A143586(n+1))]]`
-/

namespace A193452.P7587517203624434297
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303660 (A143586 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A193452.P7587517203624434297

/-! ## A193452.P6379127851492605466

`A007504(n)-A001222(A109156(n))`
-/

namespace A193452.P6379127851492605466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n - A001222 (A109156 n).toNat

end

end A193452.P6379127851492605466

/-! ## A193452.P2470543564325152028

`A374519(A002061(n))+A056239(n+1)`
-/

namespace A193452.P2470543564325152028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374519 (A002061 n).toNat + A056239 (n + 1)

end

end A193452.P2470543564325152028

/-!
# A193453: Number of odd divisors of phi(n).

The programs for A193453, the canonical program `A193453.P6993732054623460770` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A193453 has offset 1).

The definition of A193453 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A193453.P6993732054623460770

`A001227(A000010(n+1))`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A193453

/-- `A001227(A000010(n+1))` -/
def P6993732054623460770.Spec : Prop :=
  ∀ n, P6993732054623460770.a n = A193453 (n + 1)

theorem P6993732054623460770.correct : P6993732054623460770.Spec := by
  intro n
  simp only [A193453, Nat.add_sub_cancel]

end A193453

/-! ## A193453.P7769754706638149220

`A000005(A053575(n+1))`
-/

namespace A193453.P7769754706638149220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A053575 (n + 1)).toNat

end

end A193453.P7769754706638149220

namespace A193453

/-- `A000005(A053575(n+1))` -/
def P7769754706638149220.Spec : Prop :=
  ∀ n, P7769754706638149220.a n = A193453 (n + 1)

end A193453

/-! ## A193453.P12764618895872357271

`A001227(Δ[A002088(n)])`
-/

namespace A193453.P12764618895872357271
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001227 (f1 (n + 1) - f1 n).toNat

end

end A193453.P12764618895872357271

namespace A193453

/-- `A001227(Δ[A002088(n)])` -/
def P12764618895872357271.Spec : Prop :=
  ∀ n, P12764618895872357271.a n = A193453 (n + 1)

end A193453

/-! ## A193453.P15691977663410346807

`A001227(Δ[A005728(n)])`
-/

namespace A193453.P15691977663410346807
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005728 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001227 (f1 (n + 1) - f1 n).toNat

end

end A193453.P15691977663410346807

namespace A193453

/-- `A001227(Δ[A005728(n)])` -/
def P15691977663410346807.Spec : Prop :=
  ∀ n, P15691977663410346807.a n = A193453 (n + 1)

end A193453

/-! ## A193453.P7216476123815060622

`A320107(Δ[A005728(n)])`
-/

namespace A193453.P7216476123815060622
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005728 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320107 (f1 (n + 1) - f1 n).toNat

end

end A193453.P7216476123815060622

namespace A193453

/-- `A320107(Δ[A005728(n)])` -/
def P7216476123815060622.Spec : Prop :=
  ∀ n, P7216476123815060622.a n = A193453 (n + 1)

end A193453

/-! ## A193453.P18257083064571891437

`A001227(A046073(n+1))`
-/

namespace A193453.P18257083064571891437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001227 (A046073 (n + 1)).toNat

end

end A193453.P18257083064571891437

namespace A193453

/-- `A001227(A046073(n+1))` -/
def P18257083064571891437.Spec : Prop :=
  ∀ n, P18257083064571891437.a n = A193453 (n + 1)

end A193453

/-! ## A193453.P3615505304205908695

`A001227(A055034(n+1))`
-/

namespace A193453.P3615505304205908695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001227 (A055034 (n + 1)).toNat

end

end A193453.P3615505304205908695

namespace A193453

/-- `A001227(A055034(n+1))` -/
def P3615505304205908695.Spec : Prop :=
  ∀ n, P3615505304205908695.a n = A193453 (n + 1)

end A193453

/-! ## A193453.P15977215652975621923

`A001227(A055035(n+1))`
-/

namespace A193453.P15977215652975621923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001227 (A055035 (n + 1)).toNat

end

end A193453.P15977215652975621923

namespace A193453

/-- `A001227(A055035(n+1))` -/
def P15977215652975621923.Spec : Prop :=
  ∀ n, P15977215652975621923.a n = A193453 (n + 1)

end A193453

/-! ## A193453.P4901908246633060081

`A001227(A062570(n+1))`
-/

namespace A193453.P4901908246633060081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001227 (A062570 (n + 1)).toNat

end

end A193453.P4901908246633060081

namespace A193453

/-- `A001227(A062570(n+1))` -/
def P4901908246633060081.Spec : Prop :=
  ∀ n, P4901908246633060081.a n = A193453 (n + 1)

end A193453

/-! ## A193453.P6471597815061105396

`A001227(A070306(n+1))`
-/

namespace A193453.P6471597815061105396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001227 (A070306 (n + 1)).toNat

end

end A193453.P6471597815061105396

namespace A193453

/-- `A001227(A070306(n+1))` -/
def P6471597815061105396.Spec : Prop :=
  ∀ n, P6471597815061105396.a n = A193453 (n + 1)

end A193453

/-! ## A193453.P6274811829750446461

`A001227(A089692(n+1))`
-/

namespace A193453.P6274811829750446461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001227 (A089692 (n + 1)).toNat

end

end A193453.P6274811829750446461

namespace A193453

/-- `A001227(A089692(n+1))` -/
def P6274811829750446461.Spec : Prop :=
  ∀ n, P6274811829750446461.a n = A193453 (n + 1)

end A193453

/-! ## A193453.P8411309859273232457

`A001227(A232626(n+1))`
-/

namespace A193453.P8411309859273232457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001227 (A232626 (n + 1)).toNat

end

end A193453.P8411309859273232457

namespace A193453

/-- `A001227(A232626(n+1))` -/
def P8411309859273232457.Spec : Prop :=
  ∀ n, P8411309859273232457.a n = A193453 (n + 1)

end A193453

/-! ## A193453.P12936203520671633719

`A001227(A250207(n+1))`
-/

namespace A193453.P12936203520671633719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001227 (A250207 (n + 1)).toNat

end

end A193453.P12936203520671633719

namespace A193453

/-- `A001227(A250207(n+1))` -/
def P12936203520671633719.Spec : Prop :=
  ∀ n, P12936203520671633719.a n = A193453 (n + 1)

end A193453

/-! ## A193453.P9897491153582828218

`A001227(A293485(n+1))`
-/

namespace A193453.P9897491153582828218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001227 (A293485 (n + 1)).toNat

end

end A193453.P9897491153582828218

namespace A193453

/-- `A001227(A293485(n+1))` -/
def P9897491153582828218.Spec : Prop :=
  ∀ n, P9897491153582828218.a n = A193453 (n + 1)

end A193453

/-! ## A193453.P8711662487163421109

`A001227(2*A053575(n+1))`
-/

namespace A193453.P8711662487163421109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001227 (2 * A053575 (n + 1)).toNat

end

end A193453.P8711662487163421109

namespace A193453

/-- `A001227(2*A053575(n+1))` -/
def P8711662487163421109.Spec : Prop :=
  ∀ n, P8711662487163421109.a n = A193453 (n + 1)

end A193453

/-! ## A193453.P1188147694081201225

`∑{d}[A000010(n+1), A000035(#)]`
-/

namespace A193453.P1188147694081201225
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000035 d

end

end A193453.P1188147694081201225

namespace A193453

/-- `∑{d}[A000010(n+1), A000035(#)]` -/
def P1188147694081201225.Spec : Prop :=
  ∀ n, P1188147694081201225.a n = A193453 (n + 1)

end A193453

/-! ## A193453.P13827686352993029952

`A054844(A000010(2*(n+1)))/2`
-/

namespace A193453.P13827686352993029952
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A054844 (A000010 (2 * (n + 1))).toNat : ℚ) / 2

end

end A193453.P13827686352993029952

namespace A193453

/-- `A054844(A000010(2*(n+1)))/2` -/
def P13827686352993029952.Spec : Prop :=
  ∀ n, P13827686352993029952.a n = (A193453 (n + 1) : ℚ)

end A193453

/-! ## A193453.P11748083308070589657

`A091954(xor(1, A000010(n+1)+1))`
-/

namespace A193453.P11748083308070589657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091954 (Int.xor 1 (A000010 (n + 1) + 1)).toNat

end

end A193453.P11748083308070589657

namespace A193453

/-- `A091954(xor(1, A000010(n+1)+1))` -/
def P11748083308070589657.Spec : Prop :=
  ∀ n, P11748083308070589657.a n = A193453 (n + 1)

end A193453

/-! ## A193453.P4639362953817907281

`A062821(n+1)-A193386(n+1)`
-/

namespace A193453.P4639362953817907281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062821 (n + 1) - A193386 (n + 1)

end

end A193453.P4639362953817907281

namespace A193453

/-- `A062821(n+1)-A193386(n+1)` -/
def P4639362953817907281.Spec : Prop :=
  ∀ n, P4639362953817907281.a n = A193453 (n + 1)

theorem P4639362953817907281.correct : P4639362953817907281.Spec := by
  intro n
  simp only [A193453, Nat.add_sub_cancel, A193453.P4639362953817907281.a, A193453.P6993732054623460770.a, A000010, A000010.P4673923239450215316.a, A001227, A001227.P17291574635237243988.f1, A001227.P17291574635237243988.a, A062821, A062821.P4034696018881516945.a, A193386, A193386.P2341240866290404182.a, A000005, A000005.P16091521709108585461.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P15666735857375843373.a, A001221, A001221.P10258181745752134128.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A023900, A023900.P6802385856234332486.f1, A023900.P6802385856234332486.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, A005089, A005089.P4329807401814625450.f1, A005089.P4329807401814625450.a, A005091, A005091.P2802037195389751204.f1, A005091.P2802037195389751204.a, A059841, A059841.P2666504972441551157.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A193453

/-! ## A193453.P14555835903193333393

`A001227(A140434(n+1))`
-/

namespace A193453.P14555835903193333393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001227 (A140434 (n + 1)).toNat

end

end A193453.P14555835903193333393

namespace A193453

/-- `A001227(A140434(n+1))` -/
def P14555835903193333393.Spec : Prop :=
  ∀ n, P14555835903193333393.a n = A193453 (n + 1)

end A193453

/-!
# A193454: Sum of odd divisors of phi(n).

The programs for A193454, the canonical program `A193454.P14726844864907007468` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A193454 has offset 1).

The definition of A193454 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A193454.P14726844864907007468

`A000593(A000010(n+1))`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A193454

/-- `A000593(A000010(n+1))` -/
def P14726844864907007468.Spec : Prop :=
  ∀ n, P14726844864907007468.a n = A193454 (n + 1)

theorem P14726844864907007468.correct : P14726844864907007468.Spec := by
  intro n
  simp only [A193454, Nat.add_sub_cancel]

end A193454

/-! ## A193454.P156397017975994597

`∑{d}[A053575(n+1), #]`
-/

namespace A193454.P156397017975994597
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053575 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A193454.P156397017975994597

namespace A193454

/-- `∑{d}[A053575(n+1), #]` -/
def P156397017975994597.Spec : Prop :=
  ∀ n, (P156397017975994597.a n : ℤ) = A193454 (n + 1)

end A193454

/-! ## A193454.P4342858840135869830

`A000593(Δ[A002088(n)])`
-/

namespace A193454.P4342858840135869830
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000593 (f1 (n + 1) - f1 n).toNat

end

end A193454.P4342858840135869830

namespace A193454

/-- `A000593(Δ[A002088(n)])` -/
def P4342858840135869830.Spec : Prop :=
  ∀ n, P4342858840135869830.a n = A193454 (n + 1)

end A193454

/-! ## A193454.P3901825040105652415

`A000593(Δ[A005728(n)])`
-/

namespace A193454.P3901825040105652415
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005728 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000593 (f1 (n + 1) - f1 n).toNat

end

end A193454.P3901825040105652415

namespace A193454

/-- `A000593(Δ[A005728(n)])` -/
def P3901825040105652415.Spec : Prop :=
  ∀ n, P3901825040105652415.a n = A193454 (n + 1)

end A193454

/-! ## A193454.P12972954331405107155

`A000593(A046073(n+1))`
-/

namespace A193454.P12972954331405107155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000593 (A046073 (n + 1)).toNat

end

end A193454.P12972954331405107155

namespace A193454

/-- `A000593(A046073(n+1))` -/
def P12972954331405107155.Spec : Prop :=
  ∀ n, P12972954331405107155.a n = A193454 (n + 1)

end A193454

/-! ## A193454.P12071605943972682799

`A000203(A053575(n+1))`
-/

namespace A193454.P12071605943972682799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A053575 (n + 1)).toNat

end

end A193454.P12071605943972682799

namespace A193454

/-- `A000203(A053575(n+1))` -/
def P12071605943972682799.Spec : Prop :=
  ∀ n, P12071605943972682799.a n = A193454 (n + 1)

end A193454

/-! ## A193454.P6823783162339104265

`A000593(A055034(n+1))`
-/

namespace A193454.P6823783162339104265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000593 (A055034 (n + 1)).toNat

end

end A193454.P6823783162339104265

namespace A193454

/-- `A000593(A055034(n+1))` -/
def P6823783162339104265.Spec : Prop :=
  ∀ n, P6823783162339104265.a n = A193454 (n + 1)

end A193454

/-! ## A193454.P10626363333123867516

`A000593(A055035(n+1))`
-/

namespace A193454.P10626363333123867516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000593 (A055035 (n + 1)).toNat

end

end A193454.P10626363333123867516

namespace A193454

/-- `A000593(A055035(n+1))` -/
def P10626363333123867516.Spec : Prop :=
  ∀ n, P10626363333123867516.a n = A193454 (n + 1)

end A193454

/-! ## A193454.P17303898960880695411

`A000593(A062570(n+1))`
-/

namespace A193454.P17303898960880695411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000593 (A062570 (n + 1)).toNat

end

end A193454.P17303898960880695411

namespace A193454

/-- `A000593(A062570(n+1))` -/
def P17303898960880695411.Spec : Prop :=
  ∀ n, P17303898960880695411.a n = A193454 (n + 1)

end A193454

/-! ## A193454.P17964014801659271612

`A000593(A070306(n+1))`
-/

namespace A193454.P17964014801659271612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000593 (A070306 (n + 1)).toNat

end

end A193454.P17964014801659271612

namespace A193454

/-- `A000593(A070306(n+1))` -/
def P17964014801659271612.Spec : Prop :=
  ∀ n, P17964014801659271612.a n = A193454 (n + 1)

end A193454

/-! ## A193454.P7045959172672122790

`A000593(A089692(n+1))`
-/

namespace A193454.P7045959172672122790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000593 (A089692 (n + 1)).toNat

end

end A193454.P7045959172672122790

namespace A193454

/-- `A000593(A089692(n+1))` -/
def P7045959172672122790.Spec : Prop :=
  ∀ n, P7045959172672122790.a n = A193454 (n + 1)

end A193454

/-! ## A193454.P31326822787341617

`A000593(A232626(n+1))`
-/

namespace A193454.P31326822787341617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000593 (A232626 (n + 1)).toNat

end

end A193454.P31326822787341617

namespace A193454

/-- `A000593(A232626(n+1))` -/
def P31326822787341617.Spec : Prop :=
  ∀ n, P31326822787341617.a n = A193454 (n + 1)

end A193454

/-! ## A193454.P6713498424266158302

`A000593(A250207(n+1))`
-/

namespace A193454.P6713498424266158302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000593 (A250207 (n + 1)).toNat

end

end A193454.P6713498424266158302

namespace A193454

/-- `A000593(A250207(n+1))` -/
def P6713498424266158302.Spec : Prop :=
  ∀ n, P6713498424266158302.a n = A193454 (n + 1)

end A193454

/-! ## A193454.P7842961017701380407

`A000593(A293485(n+1))`
-/

namespace A193454.P7842961017701380407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000593 (A293485 (n + 1)).toNat

end

end A193454.P7842961017701380407

namespace A193454

/-- `A000593(A293485(n+1))` -/
def P7842961017701380407.Spec : Prop :=
  ∀ n, P7842961017701380407.a n = A193454 (n + 1)

end A193454

/-! ## A193454.P1274728971065841230

`A000593(A109606(n+1)+1)`
-/

namespace A193454.P1274728971065841230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000593 (A109606 (n + 1) + 1).toNat

end

end A193454.P1274728971065841230

namespace A193454

/-- `A000593(A109606(n+1)+1)` -/
def P1274728971065841230.Spec : Prop :=
  ∀ n, P1274728971065841230.a n = A193454 (n + 1)

theorem P1274728971065841230.correct : P1274728971065841230.Spec := by
  intro n
  simp only [A193454, Nat.add_sub_cancel, A193454.P1274728971065841230.a, A193454.P14726844864907007468.a, A000010, A000010.P4673923239450215316.a, A000593, A000593.P13640346029616979906.a, A109606, A109606.P2415810041766612210.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A003557, A003557.P6364735403900941810.a, A038712, A038712.P3404197303190209645.a, A173557, A173557.P15666735857375843373.a, A001221, A001221.P10258181745752134128.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A023900, A023900.P6802385856234332486.f1, A023900.P6802385856234332486.a, A005089, A005089.P4329807401814625450.f1, A005089.P4329807401814625450.a, A005091, A005091.P2802037195389751204.f1, A005091.P2802037195389751204.a, A059841, A059841.P2666504972441551157.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A193454

/-! ## A193454.P11252511641360654823

`A000593(A039649(n+1)-1)`
-/

namespace A193454.P11252511641360654823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000593 (A039649 (n + 1) - 1).toNat

end

end A193454.P11252511641360654823

namespace A193454

/-- `A000593(A039649(n+1)-1)` -/
def P11252511641360654823.Spec : Prop :=
  ∀ n, P11252511641360654823.a n = A193454 (n + 1)

theorem P11252511641360654823.correct : P11252511641360654823.Spec := by
  intro n
  simp only [A193454, Nat.add_sub_cancel, A193454.P11252511641360654823.a, A193454.P14726844864907007468.a, A000010, A000010.P4673923239450215316.a, A000593, A000593.P13640346029616979906.a, A039649, A039649.P16717312505280968063.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A003557, A003557.P6364735403900941810.a, A038712, A038712.P3404197303190209645.a, A173557, A173557.P15666735857375843373.a, A001221, A001221.P10258181745752134128.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A023900, A023900.P6802385856234332486.f1, A023900.P6802385856234332486.a, A005089, A005089.P4329807401814625450.f1, A005089.P4329807401814625450.a, A005091, A005091.P2802037195389751204.f1, A005091.P2802037195389751204.a, A059841, A059841.P2666504972441551157.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A193454

/-! ## A193454.P860177583554595493

`A326135(A000010(2*(n+1)))`
-/

namespace A193454.P860177583554595493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326135 (A000010 (2 * (n + 1))).toNat

end

end A193454.P860177583554595493

namespace A193454

/-- `A326135(A000010(2*(n+1)))` -/
def P860177583554595493.Spec : Prop :=
  ∀ n, P860177583554595493.a n = A193454 (n + 1)

end A193454

/-! ## A193454.P5205777479395894216

`A326135(2*A046073(n+1))`
-/

namespace A193454.P5205777479395894216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326135 (2 * A046073 (n + 1)).toNat

end

end A193454.P5205777479395894216

namespace A193454

/-- `A326135(2*A046073(n+1))` -/
def P5205777479395894216.Spec : Prop :=
  ∀ n, P5205777479395894216.a n = A193454 (n + 1)

end A193454

/-! ## A193454.P10139800695997862887

`A353416(2*A053575(n+1))`
-/

namespace A193454.P10139800695997862887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353416 (2 * A053575 (n + 1)).toNat

end

end A193454.P10139800695997862887

namespace A193454

/-- `A353416(2*A053575(n+1))` -/
def P10139800695997862887.Spec : Prop :=
  ∀ n, P10139800695997862887.a n = A193454 (n + 1)

end A193454

/-! ## A193454.P13286605121901044893

`A062402(n+1)-A193388(n+1)`
-/

namespace A193454.P13286605121901044893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062402 (n + 1) - A193388 (n + 1)

end

end A193454.P13286605121901044893

namespace A193454

/-- `A062402(n+1)-A193388(n+1)` -/
def P13286605121901044893.Spec : Prop :=
  ∀ n, P13286605121901044893.a n = A193454 (n + 1)

theorem P13286605121901044893.correct : P13286605121901044893.Spec := by
  intro n
  simp only [A193454, Nat.add_sub_cancel, A193454.P13286605121901044893.a, A193454.P14726844864907007468.a, A000010, A000010.P4673923239450215316.a, A000593, A000593.P13640346029616979906.a, A062402, A062402.P8430549949511934837.f2, A062402.P8430549949511934837.f3, A062402.P8430549949511934837.f1, A062402.P8430549949511934837.a, A193388, A193388.P4473864990657091494.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A003557, A003557.P6364735403900941810.a, A038712, A038712.P3404197303190209645.a, A173557, A173557.P15666735857375843373.a, A001221, A001221.P10258181745752134128.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A023900, A023900.P6802385856234332486.f1, A023900.P6802385856234332486.a, A005089, A005089.P4329807401814625450.f1, A005089.P4329807401814625450.a, A005091, A005091.P2802037195389751204.f1, A005091.P2802037195389751204.a, A059841, A059841.P2666504972441551157.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A193454

/-!
# A193455: Paradigm shift sequence with procedure length p=3.

The programs for A193455, there is no canonical definition to state claims against.
-/

/-! ## A193455.P15809731687433657556

`lt[A124422(n), A295291(n+1)]+1`
-/

namespace A193455.P15809731687433657556
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124422 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295291 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A193455.P15809731687433657556

/-! ## A193455.P14996754848692462863

`lt[A259689(n+2), A100118(n+1)]+1`
-/

namespace A193455.P14996754848692462863
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259689 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100118 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A193455.P14996754848692462863

/-! ## A193455.P2551833886805701212

`lt[A259689(n+2), A353178(n+1)]+1`
-/

namespace A193455.P2551833886805701212
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259689 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353178 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A193455.P2551833886805701212

/-! ## A193455.P13976151546238548071

`lt[A259689(n+2), A005843(n+2)]+1`
-/

namespace A193455.P13976151546238548071
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259689 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A193455.P13976151546238548071

/-! ## A193455.P17691432039240566419

`lt[A259689(n+2), A000027(2*n+5)]+1`
-/

namespace A193455.P17691432039240566419
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259689 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (2 * n + 5)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A193455.P17691432039240566419

/-!
# A193456: Paradigm shift sequence with procedure length p=4.

The programs for A193456, there is no canonical definition to state claims against.
-/

/-! ## A193456.P16610498511027474062

`lt[A007290(A108786(n)), n]`
-/

namespace A193456.P16610498511027474062
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007290 (A108786 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A193456.P16610498511027474062

/-! ## A193456.P4733358580091821955

`lt[A000389(A152063(n+1)), n]`
-/

namespace A193456.P4733358580091821955
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000389 (A152063 (n + 1)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A193456.P4733358580091821955

/-! ## A193456.P7628702847318301399

`lt[A152063(n+1), A108852(n)]`
-/

namespace A193456.P7628702847318301399
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152063 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108852 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A193456.P7628702847318301399

/-! ## A193456.P5813074153149254480

`lt[A100861(n), A278064(n+1)]`
-/

namespace A193456.P5813074153149254480
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100861 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278064 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A193456.P5813074153149254480

/-! ## A193456.P4147328528741582834

`lt[A008315(n)², A324704(n+1)]`
-/

namespace A193456.P4147328528741582834
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008315 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324704 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A193456.P4147328528741582834

/-!
# A193457: Paradigm shift sequence with procedure length p=5.

The programs for A193457, there is no canonical definition to state claims against.
-/

/-! ## A193457.P18003797727273096936

`lt[A188440(n), A225486(n+1)]`
-/

namespace A193457.P18003797727273096936
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188440 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225486 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A193457.P18003797727273096936

/-! ## A193457.P3322334562302244575

`lt[A327873(n+1), A327706(n+1)]`
-/

namespace A193457.P3322334562302244575
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327873 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327706 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A193457.P3322334562302244575

/-! ## A193457.P16998479471030173286

`lt[A379623(n+1), A074373(A020986(n))]`
-/

namespace A193457.P16998479471030173286
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379623 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074373 (A020986 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A193457.P16998479471030173286

/-! ## A193457.P6268204191837785983

`lt[A327873(n+1), A110011(A052382(n+1))]`
-/

namespace A193457.P6268204191837785983
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327873 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110011 (A052382 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A193457.P6268204191837785983

/-! ## A193457.P9277979619690180452

`lt[A164011(A108263(n)), A057686(n)]`
-/

namespace A193457.P9277979619690180452
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164011 (A108263 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057686 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A193457.P9277979619690180452

/-!
# A193459: Total number of distinct divisors of all numbers that can be written by rearranging the digits of n in decimal representation.

The programs for A193459, there is no canonical definition to state claims against.
-/

/-! ## A193459.P570425232459835725

`A243759(A258352(n))+A000005(n+1)`
-/

namespace A193459.P570425232459835725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243759 (A258352 n).toNat + A000005 (n + 1)

end

end A193459.P570425232459835725

/-! ## A193459.P2770879157421585236

`∑{d}[A187829(n+1), A001221(A000601(#))]`
-/

namespace A193459.P2770879157421585236
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187829 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A001221 (A000601 d).toNat

end

end A193459.P2770879157421585236

/-! ## A193459.P9074207174286313684

`A261488(∑[A001405(n)])+A000005(n+1)`
-/

namespace A193459.P9074207174286313684
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001405 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261488 (∑ j ∈ Finset.range (n + 1), f1 j).toNat + A000005 (n + 1)

end

end A193459.P9074207174286313684

/-! ## A193459.P7789778478755230998

`A147861(A066013(n+1))+A124224(n+1)`
-/

namespace A193459.P7789778478755230998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147861 (A066013 (n + 1)).toNat + A124224 (n + 1)

end

end A193459.P7789778478755230998

/-! ## A193459.P3140550689071711044

`A107846(A008965(n+3))+A000005(n+1)`
-/

namespace A193459.P3140550689071711044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107846 (A008965 (n + 3)).toNat + A000005 (n + 1)

end

end A193459.P3140550689071711044

/-!
# A193460: Numbers m such that A193459(m) = A000005(m).

The programs for A193460, the canonical program `A193460.P12134665306941346168` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A193460 has offset 1).

The definition of A193460 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1791 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A193460.P12134665306941346168

`∪[∑[A027828(n)], A051885(n)+1]`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A193460

/-- `∪[∑[A027828(n)], A051885(n)+1]` -/
def P12134665306941346168.Spec : Prop :=
  ∀ n, (P12134665306941346168.a n : ℤ) = A193460 (n + 1)

theorem P12134665306941346168.correct : P12134665306941346168.Spec := by
  intro n
  simp only [A193460, Nat.add_sub_cancel]

end A193460

/-! ## A193460.P3802282039906658173

`∪[A010785(n+1), A037124(n+1)]`
-/

namespace A193460.P3802282039906658173
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010785 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037124 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A193460.P3802282039906658173

namespace A193460

/-- `∪[A010785(n+1), A037124(n+1)]` -/
def P3802282039906658173.Spec : Prop :=
  ∀ n, (P3802282039906658173.a n : ℤ) = A193460 (n + 1)

end A193460

/-! ## A193460.P15972907408736031906

`∪[A014181(n+1), A037124(n+1)]`
-/

namespace A193460.P15972907408736031906
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014181 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037124 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A193460.P15972907408736031906

namespace A193460

/-- `∪[A014181(n+1), A037124(n+1)]` -/
def P15972907408736031906.Spec : Prop :=
  ∀ n, (P15972907408736031906.a n : ℤ) = A193460 (n + 1)

end A193460

/-! ## A193460.P2896973783331794568

`∪[A037124(n+1), A179309(n+1)]`
-/

namespace A193460.P2896973783331794568
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037124 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179309 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A193460.P2896973783331794568

namespace A193460

/-- `∪[A037124(n+1), A179309(n+1)]` -/
def P2896973783331794568.Spec : Prop :=
  ∀ n, (P2896973783331794568.a n : ℤ) = A193460 (n + 1)

end A193460

/-! ## A193460.P15022524624706887417

`∩[A009996(n+1), A287478(n+1)]`
-/

namespace A193460.P15022524624706887417
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009996 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287478 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A193460.P15022524624706887417

namespace A193460

/-- `∩[A009996(n+1), A287478(n+1)]` -/
def P15022524624706887417.Spec : Prop :=
  ∀ n, (P15022524624706887417.a n : ℤ) = A193460 (n + 1)

end A193460

/-! ## A193460.P5118304642899994672

`eq[1, A055098(n+1)]+1`
-/

namespace A193460.P5118304642899994672
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055098 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A193460.P5118304642899994672

namespace A193460

/-- `eq[1, A055098(n+1)]+1` -/
def P5118304642899994672.Spec : Prop :=
  ∀ n, (P5118304642899994672.a n : ℤ) = A193460 (n + 1)

end A193460

/-! ## A193460.P15795011713330102212

`eq[A000005(n+1), A193459(n+1)]+1`
-/

namespace A193460.P15795011713330102212
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193459 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A193460.P15795011713330102212

namespace A193460

/-- `eq[A000005(n+1), A193459(n+1)]+1` -/
def P15795011713330102212.Spec : Prop :=
  ∀ n, (P15795011713330102212.a n : ℤ) = A193460 (n + 1)

end A193460

/-! ## A193460.P17022783573227119420

`eq[A004186(n+1), A328447(n+1)]+1`
-/

namespace A193460.P17022783573227119420
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004186 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328447 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A193460.P17022783573227119420

namespace A193460

/-- `eq[A004186(n+1), A328447(n+1)]+1` -/
def P17022783573227119420.Spec : Prop :=
  ∀ n, (P17022783573227119420.a n : ℤ) = A193460 (n + 1)

end A193460

/-!
# A193461: Numbers n such that phi(n) divides 2*(n-1).

The programs for A193461, there is no canonical definition to state claims against.
-/

/-! ## A193461.P12932043201824226707

`lt[n+1, ∑{p}[10*n, #]]`
-/

namespace A193461.P12932043201824226707
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10 * n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n), p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A193461.P12932043201824226707

/-! ## A193461.P966009886457983296

`lt[(n-1)^∑{e}[2*n, #], (2*n)²]`
-/

namespace A193461.P966009886457983296
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) ^ (∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n

end

end A193461.P966009886457983296

/-! ## A193461.P2834108794695597812

`lt[∏{e}[2*n, (n-1)^#], (2*n)²]`
-/

namespace A193461.P2834108794695597812
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), ((n : ℤ) - 1) ^ Nat.factorization (f2 n) p

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n

end

end A193461.P2834108794695597812

/-! ## A193461.P1664377767057448530

`record[A138221(n+1)]`
-/

namespace A193461.P1664377767057448530
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138221 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A193461.P1664377767057448530

/-! ## A193461.P1461489705781720144

`record[gcd(n, A064502(n))]`
-/

namespace A193461.P1461489705781720144
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A064502 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A193461.P1461489705781720144

/-! ## A193461.P14506387751119556644

`lt[C(A003415(n), 4), n]`
-/

namespace A193461.P14506387751119556644
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A003415 n).toNat 4

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A193461.P14506387751119556644

/-! ## A193461.P18104589308882847292

`eq[0, A243823(n+1)]+1`
-/

namespace A193461.P18104589308882847292
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243823 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A193461.P18104589308882847292

/-! ## A193461.P4738368576925186261

`eq[1, A029934(n+1)]+1`
-/

namespace A193461.P4738368576925186261
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029934 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A193461.P4738368576925186261

/-! ## A193461.P15436391089928761483

`lt[A068322(n+1), 2]+1`
-/

namespace A193461.P15436391089928761483
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068322 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A193461.P15436391089928761483

/-! ## A193461.P5461023022594708768

`lt[A075255(n+1), 2]+1`
-/

namespace A193461.P5461023022594708768
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075255 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A193461.P5461023022594708768

/-!
# A193462: Sum of the distinct prime divisors of n^2+1.

The programs for A193462, the canonical program `A193462.P8276630005811575209` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A193462 has offset 0).

The definition of A193462 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A193462.P8276630005811575209

`∑{p}[n²+1, #]`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A193462

/-- `∑{p}[n²+1, #]` -/
def P8276630005811575209.Spec : Prop :=
  ∀ n, (P8276630005811575209.a n : ℤ) = A193462 n

theorem P8276630005811575209.correct : P8276630005811575209.Spec := by
  intro n
  simp only [A193462]

end A193462

/-! ## A193462.P16775928985168174089

`∑{p}[A000290(n)+1, #]%∑[4*n+2]`
-/

namespace A193462.P16775928985168174089
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ p ∈ Nat.primeFactors (f1 n).natAbs, p) % (∑ j ∈ Finset.range (n + 1), f2 j)

end

end A193462.P16775928985168174089

namespace A193462

/-- `∑{p}[A000290(n)+1, #]%∑[4*n+2]` -/
def P16775928985168174089.Spec : Prop :=
  ∀ n, (P16775928985168174089.a n : ℤ) = A193462 n

end A193462

/-! ## A193462.P234724085828694781

`A008472(n²+1)`
-/

namespace A193462.P234724085828694781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (n ^ 2 + 1)

end

end A193462.P234724085828694781

namespace A193462

/-- `A008472(n²+1)` -/
def P234724085828694781.Spec : Prop :=
  ∀ n, P234724085828694781.a n = A193462 n

end A193462

/-! ## A193462.P1682165335848113448

`A001414(∏{p}[n²+1, #])`
-/

namespace A193462.P1682165335848113448
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A193462.P1682165335848113448

namespace A193462

/-- `A001414(∏{p}[n²+1, #])` -/
def P1682165335848113448.Spec : Prop :=
  ∀ n, P1682165335848113448.a n = A193462 n

end A193462

/-! ## A193462.P11743678934194694699

`A008475(∏{p}[n²+1, #])`
-/

namespace A193462.P11743678934194694699
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008475 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A193462.P11743678934194694699

namespace A193462

/-- `A008475(∏{p}[n²+1, #])` -/
def P11743678934194694699.Spec : Prop :=
  ∀ n, P11743678934194694699.a n = A193462 n

end A193462

/-! ## A193462.P6832302858217702685

`A001414(A007947(n²+1))`
-/

namespace A193462.P6832302858217702685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (A007947 (n ^ 2 + 1)).toNat

end

end A193462.P6832302858217702685

namespace A193462

/-- `A001414(A007947(n²+1))` -/
def P6832302858217702685.Spec : Prop :=
  ∀ n, P6832302858217702685.a n = A193462 n

end A193462

/-! ## A193462.P12318282294404234669

`sqrt(A235323(n²+1))`
-/

namespace A193462.P12318282294404234669
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A235323 (n ^ 2 + 1) : ℝ)

end

end A193462.P12318282294404234669

namespace A193462

/-- `sqrt(A235323(n²+1))` -/
def P12318282294404234669.Spec : Prop :=
  ∀ n, P12318282294404234669.a n = (A193462 n : ℝ)

end A193462

/-! ## A193462.P14529044542093562844

`A074372(n²+1)-1`
-/

namespace A193462.P14529044542093562844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074372 (n ^ 2 + 1) - 1

end

end A193462.P14529044542093562844

namespace A193462

/-- `A074372(n²+1)-1` -/
def P14529044542093562844.Spec : Prop :=
  ∀ n, P14529044542093562844.a n = A193462 n

theorem P14529044542093562844.correct : P14529044542093562844.Spec := by
  intro n
  simp only [A193462, Nat.add_sub_cancel, A193462.P14529044542093562844.a, A193462.P8276630005811575209.f1, A193462.P8276630005811575209.a, A074372, A074372.P4137528993984796168.a, A008472, A008472.P6567490011312877583.f1, A008472.P6567490011312877583.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A193462

/-! ## A193462.P6002419314155538146

`∑{d}[n²+1, A061397(#)]`
-/

namespace A193462.P6002419314155538146
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A061397 d

end

end A193462.P6002419314155538146

namespace A193462

/-- `∑{d}[n²+1, A061397(#)]` -/
def P6002419314155538146.Spec : Prop :=
  ∀ n, P6002419314155538146.a n = A193462 n

end A193462

/-! ## A193462.P14702857904058973888

`A001414(A015052(n²+1))`
-/

namespace A193462.P14702857904058973888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (A015052 (n ^ 2 + 1)).toNat

end

end A193462.P14702857904058973888

namespace A193462

/-- `A001414(A015052(n²+1))` -/
def P14702857904058973888.Spec : Prop :=
  ∀ n, P14702857904058973888.a n = A193462 n

end A193462

/-!
# A193463: Row sums of triangle A076732.

The programs for A193463, there is no canonical definition to state claims against.
-/

/-! ## A193463.P2486239156729377956

`Δ[A003470(n)+A000034(n)]`
-/

namespace A193463.P2486239156729377956
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003470 n + A000034 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A193463.P2486239156729377956

/-! ## A193463.P16122751936983364487

`Δ[A003470(n)+A000035(n)]`
-/

namespace A193463.P16122751936983364487
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003470 n + A000035 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A193463.P16122751936983364487

/-! ## A193463.P13464065603889372178

`A033999(n)+Δ[A003470(n)]`
-/

namespace A193463.P13464065603889372178
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003470 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n + (f1 (n + 1) - f1 n)

end

end A193463.P13464065603889372178

/-! ## A193463.P16323543170264157547

`Δ[A003470(n)+Δ[A004526(n)]]`
-/

namespace A193463.P16323543170264157547
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003470 n + (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A193463.P16323543170264157547

/-! ## A193463.P963257121771139517

`Δ[A003470(n)]+A004442(n)-n`
-/

namespace A193463.P963257121771139517
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003470 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (A004442 n - (n : ℤ))

end

end A193463.P963257121771139517

/-! ## A193463.P3798294702562715023

`Δ[A003470(n)+A001045(n)]-A001045(n)`
-/

namespace A193463.P3798294702562715023
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003470 n + A001045 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A001045 n

end

end A193463.P3798294702562715023

/-! ## A193463.P3080417204297119490

`Δ[A003470(n)]+A001045(n+1)/A077925(n)`
-/

namespace A193463.P3080417204297119490
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003470 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) + (A001045 (n + 1) : ℚ) / (A077925 n : ℚ)

end

end A193463.P3080417204297119490

/-!
# A193464: Row sums of triangle A076731.

The programs for A193464, there is no canonical definition to state claims against.
-/

/-! ## A193464.P10008921374342378123

`∑[abs(Δ[A003470(n)])]`
-/

namespace A193464.P10008921374342378123
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003470 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A193464.P10008921374342378123

/-! ## A193464.P11406202721478505609

`A003470(n+1)-1`
-/

namespace A193464.P11406202721478505609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003470 (n + 1) - 1

end

end A193464.P11406202721478505609

/-! ## A193464.P10371407930384587953

`record[Δ[A003470(A057979(n))]]`
-/

namespace A193464.P10371407930384587953
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003470 (A057979 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A193464.P10371407930384587953

/-! ## A193464.P16757815625531433645

`∑[A193463(n+1)-A033999(n)]`
-/

namespace A193464.P16757815625531433645
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193463 (n + 1) - A033999 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A193464.P16757815625531433645

/-! ## A193464.P16297380568282849215

`∑[A000007(n+1)+Δ[A003470(n)]]`
-/

namespace A193464.P16297380568282849215
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003470 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (n + 1) + (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A193464.P16297380568282849215

/-! ## A193464.P1267229454414115890

`A033999(2*n+1)+A003470(n+1)`
-/

namespace A193464.P1267229454414115890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (2 * n + 1) + A003470 (n + 1)

end

end A193464.P1267229454414115890

/-!
# A193465: Row sums of triangle A061312.

The programs for A193465, the canonical program `A193465.P11340921606981764370` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A193465 has offset 0).

The definition of A193465 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A193465.P5736391216467600006

`(n+1)*A180191(n+1)`
-/

namespace A193465.P5736391216467600006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A180191 (n + 1)

end

end A193465.P5736391216467600006

namespace A193465

/-- `(n+1)*A180191(n+1)` -/
def P5736391216467600006.Spec : Prop :=
  ∀ n, P5736391216467600006.a n = A193465 n

end A193465

/-! ## A193465.P11340921606981764370

`A002467(n+2)-(n+1)!`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A193465

/-- `A002467(n+2)-(n+1)!` -/
def P11340921606981764370.Spec : Prop :=
  ∀ n, P11340921606981764370.a n = A193465 n

theorem P11340921606981764370.correct : P11340921606981764370.Spec := by
  intro n
  simp only [A193465]

end A193465

/-! ## A193465.P11851657757157141798

`(n+1)*(n+1)!-A000166(n+2)`
-/

namespace A193465.P11851657757157141798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) * Nat.factorial (n + 1) : ℤ) - A000166 (n + 2)

end

end A193465.P11851657757157141798

namespace A193465

/-- `(n+1)*(n+1)!-A000166(n+2)` -/
def P11851657757157141798.Spec : Prop :=
  ∀ n, P11851657757157141798.a n = A193465 n

end A193465

/-! ## A193465.P8258176857239368515

`Δ[A180191(n+1)]-A000166(n)`
-/

namespace A193465.P8258176857239368515
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180191 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A000166 n

end

end A193465.P8258176857239368515

namespace A193465

/-- `Δ[A180191(n+1)]-A000166(n)` -/
def P8258176857239368515.Spec : Prop :=
  ∀ n, P8258176857239368515.a n = A193465 n

end A193465

/-! ## A193465.P16684710503825422120

`A002467(n+2)-A000142(n+1)`
-/

namespace A193465.P16684710503825422120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002467 (n + 2) - A000142 (n + 1)

end

end A193465.P16684710503825422120

namespace A193465

/-- `A002467(n+2)-A000142(n+1)` -/
def P16684710503825422120.Spec : Prop :=
  ∀ n, P16684710503825422120.a n = A193465 n

end A193465

/-! ## A193465.P18289788127095479650

`A180191(n+2)-A002467(n+1)`
-/

namespace A193465.P18289788127095479650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180191 (n + 2) - A002467 (n + 1)

end

end A193465.P18289788127095479650

namespace A193465

/-- `A180191(n+2)-A002467(n+1)` -/
def P18289788127095479650.Spec : Prop :=
  ∀ n, P18289788127095479650.a n = A193465 n

end A193465

/-! ## A193465.P6097931813362051541

`(n+1)*A324362(A034856(n+1))`
-/

namespace A193465.P6097931813362051541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A324362 (A034856 (n + 1)).toNat

end

end A193465.P6097931813362051541

namespace A193465

/-- `(n+1)*A324362(A034856(n+1))` -/
def P6097931813362051541.Spec : Prop :=
  ∀ n, P6097931813362051541.a n = A193465 n

end A193465

/-! ## A193465.P1519764212497253292

`Δ[A002467(n+1)]-A000166(n+1)`
-/

namespace A193465.P1519764212497253292
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002467 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A000166 (n + 1)

end

end A193465.P1519764212497253292

namespace A193465

/-- `Δ[A002467(n+1)]-A000166(n+1)` -/
def P1519764212497253292.Spec : Prop :=
  ∀ n, P1519764212497253292.a n = A193465 n

end A193465

/-! ## A193465.P16151655384572403091

`(n+1)*(record[A047920(n)]-A000255(n))`
-/

namespace A193465.P16151655384572403091
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047920 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A000255 n)

end

end A193465.P16151655384572403091

namespace A193465

/-- `(n+1)*(record[A047920(n)]-A000255(n))` -/
def P16151655384572403091.Spec : Prop :=
  ∀ n, P16151655384572403091.a n = A193465 n

end A193465

/-! ## A193465.P14676452496382490992

`(n+1)*(A000142(n+1)-A000255(n))`
-/

namespace A193465.P14676452496382490992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A000142 (n + 1) - A000255 n)

end

end A193465.P14676452496382490992

namespace A193465

/-- `(n+1)*(A000142(n+1)-A000255(n))` -/
def P14676452496382490992.Spec : Prop :=
  ∀ n, P14676452496382490992.a n = A193465 n

end A193465

/-!
# A193466: E.g.f.: Sum_{n>=0} x^n * Product_{k=1..n} cosh(k*x).

The programs for A193466, there is no canonical definition to state claims against.
-/

/-! ## A193466.P11991350283347300176

`A028310(n)*A193468(A028310(n))`
-/

namespace A193466.P11991350283347300176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n * A193468 (A028310 n).toNat

end

end A193466.P11991350283347300176

/-! ## A193466.P6142669073185790066

`A114806(n)*A193468(A114806(n))`
-/

namespace A193466.P6142669073185790066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114806 n * A193468 (A114806 n).toNat

end

end A193466.P6142669073185790066

/-!
# A193467: E.g.f.: Sum_{n>=0} x^n * exp(n*(n+1)/2*x).

The programs for A193467, there is no canonical definition to state claims against.
-/

/-! ## A193467.P4365689341938716719

`A028310(n)*A193469(A028310(n))`
-/

namespace A193467.P4365689341938716719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n * A193469 (A028310 n).toNat

end

end A193467.P4365689341938716719

/-! ## A193467.P11099590792992248171

`A065033(2*n)*A193469(A065033(2*n))`
-/

namespace A193467.P11099590792992248171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (2 * n) * A193469 (A065033 (2 * n)).toNat

end

end A193467.P11099590792992248171

/-! ## A193467.P2416303441921640444

`A114806(n)*A193469(A114806(n))`
-/

namespace A193467.P2416303441921640444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114806 n * A193469 (A114806 n).toNat

end

end A193467.P2416303441921640444

/-!
# A193468: a(n) = A193466(n)/n for n>=1.

The programs for A193468, there is no canonical definition to state claims against.
-/

/-! ## A193468.P2921097430146262742

`A193466(n+1)/(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A193468.P2921097430146262742
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A193466 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A193468.P2921097430146262742

/-! ## A193468.P15941797867927773157

`A020662(A305550(n))`
-/

namespace A193468.P15941797867927773157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020662 (A305550 n).toNat

end

end A193468.P15941797867927773157

/-!
# A193469: a(n) = A193467(n)/n for n>=1.

The programs for A193469, there is no canonical definition to state claims against.
-/

/-! ## A193469.P2334028416139145725

`A193467(n+1)/(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A193469.P2334028416139145725
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A193467 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A193469.P2334028416139145725

/-! ## A193469.P17719479077491643489

`record[A193467(A051340(n))/A051340(n)]`
-/

namespace A193469.P17719479077491643489
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A193467 (A051340 n).toNat : ℚ) / (A051340 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A193469.P17719479077491643489

/-!
# A193470: Square array A(n,k) (n>=1, k>=0) read by antidiagonals: A(n,0) = 0 and A(n,k) is the least integer > A(n,k-1) that can be expressed as a triangular number divided by n.

The programs for A193470, there is no canonical definition to state claims against.
-/

/-! ## A193470.P14634200701943829811

`A279027(A125105(n+1)%A125097(n))`
-/

namespace A193470.P14634200701943829811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279027 (Int.tmod (A125105 (n + 1)) (A125097 n)).toNat

end

end A193470.P14634200701943829811

/-! ## A193470.P7847958405326513991

`A004396(n)%A000005(A138533(2*(n+2)))`
-/

namespace A193470.P7847958405326513991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004396 n) (A000005 (A138533 (2 * (n + 2))).toNat)

end

end A193470.P7847958405326513991

/-! ## A193470.P8972101539643621753

`round(2*n/3)%A174209(A019538(n+1))`
-/

namespace A193470.P8972101539643621753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway (2 * ((n : ℚ) / 3))) (A174209 (A019538 (n + 1)).toNat)

end

end A193470.P8972101539643621753

/-! ## A193470.P15811087551409970425

`and(round(2*n/3), A226518(A090995(n+1)))`
-/

namespace A193470.P15811087551409970425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (SequenceMachineLib.roundAway (2 * ((n : ℚ) / 3))) (A226518 (A090995 (n + 1)).toNat)

end

end A193470.P15811087551409970425

/-! ## A193470.P14607511445710624607

`A004396(n)%A065291(A013611(n))`
-/

namespace A193470.P14607511445710624607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004396 n) (A065291 (A013611 n).toNat)

end

end A193470.P14607511445710624607

/-!
# A193472: Numerator of ez(n-1)*n!/(4^n-2^n) where ez(n) is the n-th coefficient of sec(t)+tan(t) for n>0, a(0) = 1.

The programs for A193472, there is no canonical definition to state claims against.
-/

/-! ## A193472.P2468857460512166014

`A336898(n)*A342318(n)`
-/

namespace A193472.P2468857460512166014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336898 n * A342318 n

end

end A193472.P2468857460512166014

/-! ## A193472.P4863197697806969008

`A246006(n)*A336898(A093178(n))`
-/

namespace A193472.P4863197697806969008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246006 n * A336898 (A093178 n).toNat

end

end A193472.P4863197697806969008

/-! ## A193472.P9062693570439372180

`A093178(gcd(n, A131135(n)))*A246006(n)`
-/

namespace A193472.P9062693570439372180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093178 (Int.gcd (n : ℤ) (A131135 n)) * A246006 n

end

end A193472.P9062693570439372180

/-! ## A193472.P4685814858684926334

`gcd(A009002(n), A336898(n))*A246006(n)`
-/

namespace A193472.P4685814858684926334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd (A009002 n) (A336898 n) : ℤ) * A246006 n

end

end A193472.P4685814858684926334

/-! ## A193472.P9679326266039682382

`gcd(A246006(n)*A336898(n), A027641(n))`
-/

namespace A193472.P9679326266039682382
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A246006 n * A336898 n) (A027641 n)

end

end A193472.P9679326266039682382

/-!
# A193473: Denominator of ez(n-1)*n!/(4^n-2^n) where ez(n) is the n-th coefficient of sec(t)+tan(t) for n>0, a(0) = 1.

The programs for A193473, there is no canonical definition to state claims against.
-/

/-! ## A193473.P14843904302273035222

`A342319(n)/gcd(n, A342319(n))`
-/

namespace A193473.P14843904302273035222
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A342319 n : ℚ) / (Int.gcd (n : ℤ) (A342319 n) : ℚ)

end

end A193473.P14843904302273035222

/-! ## A193473.P3568504925314931168

`A336898(n)/A028310(n)*A342319(n)`
-/

namespace A193473.P3568504925314931168
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A336898 n : ℚ) / (A028310 n : ℚ) * (A342319 n : ℚ)

end

end A193473.P3568504925314931168

/-! ## A193473.P8830216682803674558

`A342319(n)/A028310(n/A336898(n))`
-/

namespace A193473.P8830216682803674558
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A342319 n : ℚ) / (A028310 (SequenceMachineLib.roundAway ((n : ℚ) / (A336898 n : ℚ))).toNat : ℚ)

end

end A193473.P8830216682803674558

/-! ## A193473.P5012345088339139256

`lcm(A004277(n), A342319(n))/A028310(n)`
-/

namespace A193473.P5012345088339139256
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A004277 n) (A342319 n) : ℚ) / (A028310 n : ℚ)

end

end A193473.P5012345088339139256

/-! ## A193473.P7295419281770173901

`gcd(A106458(n), A336899(n))`
-/

namespace A193473.P7295419281770173901
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A106458 n) (A336899 n)

end

end A193473.P7295419281770173901

/-!
# A193474: Table read by rows: The coefficients of the polynomials P(n, x) = Sum_{k=0..n} Sum_{j=0..k} (-1)^j * 2^(-k) * binomial(k, j) * (k-2*j)^n * x^(n-k).

The programs for A193474, there is no canonical definition to state claims against.
-/

/-! ## A193474.P10007634869537147377

`A136630(A061579(n))*A233543(A061579(n))`
-/

namespace A193474.P10007634869537147377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136630 (A061579 n).toNat * A233543 (A061579 n).toNat

end

end A193474.P10007634869537147377

/-! ## A193474.P1665553493416496800

`A047922(n)%ceil(exp(A021009(n)))`
-/

namespace A193474.P1665553493416496800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A047922 n) ⌈Real.exp (A021009 n : ℝ)⌉

end

end A193474.P1665553493416496800

/-! ## A193474.P7524925594789270008

`lcm(A016336(A166350(n+1)), A047922(n))`
-/

namespace A193474.P7524925594789270008
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A016336 (A166350 (n + 1)).toNat) (A047922 n)

end

end A193474.P7524925594789270008

/-! ## A193474.P14885031790452847222

`A004555(A023304(n+2))*A047922(n)`
-/

namespace A193474.P14885031790452847222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004555 (A023304 (n + 2)).toNat * A047922 n

end

end A193474.P14885031790452847222

/-! ## A193474.P16545970722822955929

`and(A047922(n), A060863(A237752(3*n+5)))`
-/

namespace A193474.P16545970722822955929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A047922 n) (A060863 (A237752 (3 * n + 5)).toNat)

end

end A193474.P16545970722822955929

/-!
# A193475: a(n) = 4*16^n - 2*4^n.

The programs for A193475, the canonical program `A193475.P12518125261963949965` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A193475 has offset 0).

The definition of A193475 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `4*16^n-2*4^n` (program `A193475.P12518125261963949965`, by `A193475.P12518125261963949965.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A193475.P12518125261963949965

`4*16^n-2*4^n`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A193475

/-- `4*16^n-2*4^n` -/
def P12518125261963949965.Spec : Prop :=
  ∀ n, P12518125261963949965.a n = A193475 n

theorem P12518125261963949965.correct : P12518125261963949965.Spec := by
  intro n
  simp only [A193475]

end A193475

/-! ## A193475.P17214412444712009297

`2*C(2*4^n, 2)`
-/

namespace A193475.P17214412444712009297
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * Nat.choose (2 * 4 ^ n) 2

end

end A193475.P17214412444712009297

namespace A193475

/-- `2*C(2*4^n, 2)` -/
def P17214412444712009297.Spec : Prop :=
  ∀ n, (P17214412444712009297.a n : ℤ) = A193475 n

end A193475

/-! ## A193475.P15113224412491987268

`(∑[4*a(n-1)]²-1)/4` with `a(0)=3`
-/

namespace A193475.P15113224412491987268
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [3] fun n f1 =>
  4 * f1 (n - 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℤ) - 1 : ℚ) / 4

end

end A193475.P15113224412491987268

namespace A193475

/-- `(∑[4*a(n-1)]²-1)/4` -/
def P15113224412491987268.Spec : Prop :=
  ∀ n, P15113224412491987268.a n = (A193475 n : ℚ)

end A193475

/-! ## A193475.P18238393303719179022

`2*A079598(n)`
-/

namespace A193475.P18238393303719179022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A079598 n

end

end A193475.P18238393303719179022

namespace A193475

/-- `2*A079598(n)` -/
def P18238393303719179022.Spec : Prop :=
  ∀ n, P18238393303719179022.a n = A193475 n

end A193475

/-! ## A193475.P8078166002460950952

`A020522(Δ[n²])`
-/

namespace A193475.P8078166002460950952
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020522 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A193475.P8078166002460950952

namespace A193475

/-- `A020522(Δ[n²])` -/
def P8078166002460950952.Spec : Prop :=
  ∀ n, P8078166002460950952.a n = A193475 n

end A193475

/-! ## A193475.P5470668453770778264

`A113980(4*(n+1))`
-/

namespace A193475.P5470668453770778264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113980 (4 * (n + 1))

end

end A193475.P5470668453770778264

namespace A193475

/-- `A113980(4*(n+1))` -/
def P5470668453770778264.Spec : Prop :=
  ∀ n, P5470668453770778264.a n = A193475 n

end A193475

/-! ## A193475.P7266167945533450601

`2*A171476(2*n)`
-/

namespace A193475.P7266167945533450601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A171476 (2 * n)

end

end A193475.P7266167945533450601

namespace A193475

/-- `2*A171476(2*n)` -/
def P7266167945533450601.Spec : Prop :=
  ∀ n, P7266167945533450601.a n = A193475 n

end A193475

/-! ## A193475.P12452746597395468633

`A059153(2*n)/2`
-/

namespace A193475.P12452746597395468633
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A059153 (2 * n) : ℚ) / 2

end

end A193475.P12452746597395468633

namespace A193475

/-- `A059153(2*n)/2` -/
def P12452746597395468633.Spec : Prop :=
  ∀ n, P12452746597395468633.a n = (A193475 n : ℚ)

end A193475

/-! ## A193475.P12445629726731806428

`2*A003665(Δ[n²])`
-/

namespace A193475.P12445629726731806428
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A003665 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A193475.P12445629726731806428

namespace A193475

/-- `2*A003665(Δ[n²])` -/
def P12445629726731806428.Spec : Prop :=
  ∀ n, P12445629726731806428.a n = A193475 n

end A193475

/-! ## A193475.P17813877295626420376

`2*A006516(Δ[n²])`
-/

namespace A193475.P17813877295626420376
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A006516 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A193475.P17813877295626420376

namespace A193475

/-- `2*A006516(Δ[n²])` -/
def P17813877295626420376.Spec : Prop :=
  ∀ n, P17813877295626420376.a n = A193475 n

end A193475

/-!
# A193476: The denominators of the Bernoulli secant numbers at odd indices.

The programs for A193476, there is no canonical definition to state claims against.
-/

/-! ## A193476.P16034785297976242055

`A004171(n)*A303449(n)`
-/

namespace A193476.P16034785297976242055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004171 n * A303449 n

end

end A193476.P16034785297976242055

/-! ## A193476.P18036155727326681537

`(A083420(n)+1)*A303449(n)`
-/

namespace A193476.P18036155727326681537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A083420 n + 1) * A303449 n

end

end A193476.P18036155727326681537

/-! ## A193476.P16445803942864190004

`2*A000079(n)²*A090633(2*n+1)`
-/

namespace A193476.P16445803942864190004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000079 n ^ 2 * A090633 (2 * n + 1)

end

end A193476.P16445803942864190004

/-! ## A193476.P13977805256819669744

`A000079(2*n+1)*A090633(2*n+1)`
-/

namespace A193476.P13977805256819669744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (2 * n + 1) * A090633 (2 * n + 1)

end

end A193476.P13977805256819669744

/-! ## A193476.P4736121984460129780

`(A126646(2*n)+1)*A090633(2*n+1)`
-/

namespace A193476.P4736121984460129780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A126646 (2 * n) + 1) * A090633 (2 * n + 1)

end

end A193476.P4736121984460129780

/-!
# A193477: a(n) = denominator(n!/floor(n/2)!^4).

The programs for A193477, there is no canonical definition to state claims against.
-/

/-! ## A193477.P6437140521916578349

`A081123(n)/A182923(n)*A081123(n)`
-/

namespace A193477.P6437140521916578349
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A081123 n : ℚ) / (A182923 n : ℚ) * (A081123 n : ℚ)

end

end A193477.P6437140521916578349

/-! ## A193477.P18152399957949601295

`A180064(n)/A182923(n)`
-/

namespace A193477.P18152399957949601295
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A180064 n : ℚ) / (A182923 n : ℚ)

end

end A193477.P18152399957949601295

/-! ## A193477.P7018758694131371938

`A081123(n)²/A182923(n)`
-/

namespace A193477.P7018758694131371938
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A081123 n ^ 2 : ℚ) / (A182923 n : ℚ)

end

end A193477.P7018758694131371938

/-! ## A193477.P10749450582109036907

`A001044(A004526(n))/A182923(n)`
-/

namespace A193477.P10749450582109036907
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001044 (A004526 n).toNat : ℚ) / (A182923 n : ℚ)

end

end A193477.P10749450582109036907

/-! ## A193477.P4770485400843598486

`A055773(n)/A056040(n)*A180064(n)`
-/

namespace A193477.P4770485400843598486
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A055773 n : ℚ) / (A056040 n : ℚ) * (A180064 n : ℚ)

end

end A193477.P4770485400843598486

/-! ## A193477.P15057264972492194604

`A182922(n)/A182923(n)²`
-/

namespace A193477.P15057264972492194604
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A182922 n : ℚ) / (A182923 n ^ 2 : ℚ)

end

end A193477.P15057264972492194604

/-! ## A193477.P6331190019609061938

`A180064(n)/A182922(n)*A180064(n)`
-/

namespace A193477.P6331190019609061938
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A180064 n : ℚ) / (A182922 n : ℚ) * (A180064 n : ℚ)

end

end A193477.P6331190019609061938

/-! ## A193477.P4832156642334247423

`A000142(n)/(A056040(n)*A182923(n))`
-/

namespace A193477.P4832156642334247423
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000142 n : ℚ) / (A056040 n * A182923 n : ℚ)

end

end A193477.P4832156642334247423

/-! ## A193477.P13982567199405088286

`A180064(n)²/A182922(n)`
-/

namespace A193477.P13982567199405088286
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A180064 n ^ 2 : ℚ) / (A182922 n : ℚ)

end

end A193477.P13982567199405088286

/-!
# A193478: G.f. A(x) satisfies: 1/(1-x) = Sum_{n>=0} A(x)^n/sf(n), where A(x) = Sum_{n>=1} a(n)*x^n/sf(n), and sf(n) = Product_{k=0..n} k! is the superfactorial of n (A000178).

The programs for A193478, there is no canonical definition to state claims against.
-/

/-! ## A193478.P13442594280396960722

`A023705(∏[A149343(n)])`
-/

namespace A193478.P13442594280396960722
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149343 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023705 (∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A193478.P13442594280396960722

/-!
# A193480: Number of n X n symmetric 0..1 arrays with each element equal to the product mod 2 of two of its horizontal and vertical neighbors.

The programs for A193480, there is no canonical definition to state claims against.
-/

/-! ## A193480.P12803941325082449463

`A159788(n!+n)`
-/

namespace A193480.P12803941325082449463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159788 (Nat.factorial n + n)

end

end A193480.P12803941325082449463

/-!
# A193481: Number of n X n symmetric 0..2 arrays with each element equal to the product mod 3 of two of its horizontal and vertical neighbors.

The programs for A193481, there is no canonical definition to state claims against.
-/

/-! ## A193481.P13793205419707590474

`A057353(xor(A052774(n), A329607(n+1)))`
-/

namespace A193481.P13793205419707590474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057353 (Int.xor (A052774 n) (A329607 (n + 1))).toNat

end

end A193481.P13793205419707590474

/-!
# A193487: Number of rooted trees with n nodes and omega-valency 2.

The programs for A193487, there is no canonical definition to state claims against.
-/

/-! ## A193487.P2448985248215386024

`A224985(A066983(n+1)-1)`
-/

namespace A193487.P2448985248215386024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224985 (A066983 (n + 1) - 1).toNat

end

end A193487.P2448985248215386024

/-! ## A193487.P8474364916401633205

`A224985(xor(1, A066983(n+1)))`
-/

namespace A193487.P8474364916401633205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224985 (Int.xor 1 (A066983 (n + 1))).toNat

end

end A193487.P8474364916401633205

/-! ## A193487.P3763499702753831991

`A055086(A073617(n))-1`
-/

namespace A193487.P3763499702753831991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055086 (A073617 n).toNat - 1

end

end A193487.P3763499702753831991

/-! ## A193487.P4521823301590166635

`A303534(A231934(n)-A108611(n))`
-/

namespace A193487.P4521823301590166635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303534 (A231934 n - A108611 n).toNat

end

end A193487.P4521823301590166635

/-! ## A193487.P5765457713145927182

`A006530(A000266(n))%A344490(n)`
-/

namespace A193487.P5765457713145927182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A006530 (A000266 n).toNat) (A344490 n)

end

end A193487.P5765457713145927182

/-!
# A193488: Number of rooted trees with n nodes and omega-valency 3.

The programs for A193488, there is no canonical definition to state claims against.
-/

/-! ## A193488.P10810288070814581780

`A049828(A148473(n))`
-/

namespace A193488.P10810288070814581780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049828 (A148473 n).toNat

end

end A193488.P10810288070814581780

/-! ## A193488.P8610526925576858855

`A048484(A205480(n))`
-/

namespace A193488.P8610526925576858855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048484 (A205480 n).toNat

end

end A193488.P8610526925576858855

/-! ## A193488.P10247438612913522717

`A241272(A098969(n))`
-/

namespace A193488.P10247438612913522717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241272 (A098969 n).toNat

end

end A193488.P10247438612913522717

/-! ## A193488.P10619706402016496156

`A008615(A340611(n²))`
-/

namespace A193488.P10619706402016496156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (A340611 (n ^ 2)).toNat

end

end A193488.P10619706402016496156

/-! ## A193488.P3630622600254200666

`∑[A234514(∑[A051337(n)])]`
-/

namespace A193488.P3630622600254200666
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051337 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234514 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A193488.P3630622600254200666

/-!
# A193489: Number of rooted trees with n nodes and omega-valency 4.

The programs for A193489, there is no canonical definition to state claims against.
-/

/-! ## A193489.P8336242162202321633

`A177220(A357643(n))%A005676(n)`
-/

namespace A193489.P8336242162202321633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A177220 (A357643 n).toNat) (A005676 n)

end

end A193489.P8336242162202321633

/-! ## A193489.P5078644175719716979

`A028879(n+1)%A274625(A000078(n))`
-/

namespace A193489.P5078644175719716979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A028879 (n + 1)) (A274625 (A000078 n).toNat)

end

end A193489.P5078644175719716979

/-! ## A193489.P6440461032093206789

`A341182(A001008(n+1))%A005676(n)`
-/

namespace A193489.P6440461032093206789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A341182 (A001008 (n + 1)).toNat) (A005676 n)

end

end A193489.P6440461032093206789

/-! ## A193489.P4639585955897567069

`A092242(n+1)%A362311(A000322(n))`
-/

namespace A193489.P4639585955897567069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A092242 (n + 1)) (A362311 (A000322 n).toNat)

end

end A193489.P4639585955897567069

/-! ## A193489.P9101499048926411230

`A149685(n+1)%A278949(A339848(n+1))`
-/

namespace A193489.P9101499048926411230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A149685 (n + 1)) (A278949 (A339848 (n + 1)).toNat)

end

end A193489.P9101499048926411230

/-!
# A193490: Number of rooted trees with n nodes and omega-valency 5.

The programs for A193490, there is no canonical definition to state claims against.
-/

/-! ## A193490.P1784234102618623658

`A181153(n+1)%A007918(n)²`
-/

namespace A193490.P1784234102618623658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A181153 (n + 1)) (A007918 n ^ 2)

end

end A193490.P1784234102618623658

/-! ## A193490.P758621369833771965

`A109708(A002024(or(n, 7*2^n-2)))`
-/

namespace A193490.P758621369833771965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109708 (A002024 (Int.lor (n : ℤ) ((7 * 2 ^ n : ℤ) - 2)).toNat).toNat

end

end A193490.P758621369833771965

/-! ## A193490.P3508338784000660912

`A185254(A047309(n+1))%A000032(n)`
-/

namespace A193490.P3508338784000660912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A185254 (A047309 (n + 1)).toNat) (A000032 n)

end

end A193490.P3508338784000660912

/-! ## A193490.P15423858809136491710

`A286470(A209253(n+2)+A185645(n+1))`
-/

namespace A193490.P15423858809136491710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286470 (A209253 (n + 2) + A185645 (n + 1)).toNat

end

end A193490.P15423858809136491710

/-! ## A193490.P11042140326564675244

`A184974(n+1)%A034706(A316563(n+4))`
-/

namespace A193490.P11042140326564675244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A184974 (n + 1)) (A034706 (A316563 (n + 4)).toNat)

end

end A193490.P11042140326564675244

/-!
# A193492: Put the natural numbers together without spaces and read them four at a time advancing one space each time.

The programs for A193492, there is no canonical definition to state claims against.
-/

/-! ## A193492.P8982934622202223082

`10*(10*(10*A007376(n+1)+A007376(n+2))+A007376(n+3))+A007376(n+4)`
-/

namespace A193492.P8982934622202223082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  10 * (10 * (10 * A007376 (n + 1) + A007376 (n + 2)) + A007376 (n + 3)) + A007376 (n + 4)

end

end A193492.P8982934622202223082

/-! ## A193492.P14304362046437386468

`floor(A193493(n+1)/10)`
-/

namespace A193492.P14304362046437386468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A193493 (n + 1) : ℚ) / 10⌋

end

end A193492.P14304362046437386468

/-! ## A193492.P13179309783127158991

`A224841(A052905(n)+9)`
-/

namespace A193492.P13179309783127158991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224841 (A052905 n + 9).toNat

end

end A193492.P13179309783127158991

/-! ## A193492.P11955318475472954542

`A224841(A055999(n)+10)`
-/

namespace A193492.P11955318475472954542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224841 (A055999 n + 10).toNat

end

end A193492.P11955318475472954542

/-! ## A193492.P14312057728274172834

`A224841(A167614(n+2)+1)`
-/

namespace A193492.P14312057728274172834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224841 (A167614 (n + 2) + 1).toNat

end

end A193492.P14312057728274172834

/-! ## A193492.P13570386958271114529

`A224841(A166136(n+2)-2)`
-/

namespace A193492.P13570386958271114529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224841 (A166136 (n + 2) - 2).toNat

end

end A193492.P13570386958271114529

/-! ## A193492.P11587703623321562945

`A224841(A166136(n+1)+1+n)`
-/

namespace A193492.P11587703623321562945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224841 (A166136 (n + 1) + 1 + (n : ℤ)).toNat

end

end A193492.P11587703623321562945

/-! ## A193492.P804280389117625930

`A224841(A034856(n+1)+n+9)`
-/

namespace A193492.P804280389117625930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224841 (A034856 (n + 1) + (n + 9 : ℤ)).toNat

end

end A193492.P804280389117625930

/-!
# A193493: Put the natural numbers together without spaces and read them five at a time advancing one space each time.

The programs for A193493, there is no canonical definition to state claims against.
-/

/-! ## A193493.P17612932213257970268

`A224841(A167499(n+3))`
-/

namespace A193493.P17612932213257970268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224841 (A167499 (n + 3)).toNat

end

end A193493.P17612932213257970268

/-! ## A193493.P16959295087911496950

`A224841(A155212(n)+13)`
-/

namespace A193493.P16959295087911496950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224841 (A155212 n + 13).toNat

end

end A193493.P16959295087911496950

/-! ## A193493.P2018785886716643828

`A224841(A056000(n)+15)`
-/

namespace A193493.P2018785886716643828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224841 (A056000 n + 15).toNat

end

end A193493.P2018785886716643828

/-! ## A193493.P15043979265406115493

`A224841(A166136(n+3)-1)`
-/

namespace A193493.P15043979265406115493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224841 (A166136 (n + 3) - 1).toNat

end

end A193493.P15043979265406115493

/-! ## A193493.P10007543632833964552

`A224841(A000217(n+4)+5)`
-/

namespace A193493.P10007543632833964552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224841 (A000217 (n + 4) + 5).toNat

end

end A193493.P10007543632833964552

/-! ## A193493.P12730668948181341556

`A224841(A055998(n+2)+8)`
-/

namespace A193493.P12730668948181341556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224841 (A055998 (n + 2) + 8).toNat

end

end A193493.P12730668948181341556

/-! ## A193493.P14822494744598583886

`A224841(A161680(n+5)+5)`
-/

namespace A193493.P14822494744598583886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224841 (A161680 (n + 5) + 5).toNat

end

end A193493.P14822494744598583886

/-! ## A193493.P9014561718942946484

`A224841(eq[6, A131818(n+1)])`
-/

namespace A193493.P9014561718942946484
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224841 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A193493.P9014561718942946484

/-!
# A193494: Worst case of an unbalanced recursive algorithm over all n-node binary trees.

The programs for A193494, the canonical program `A193494.P4992485085862482001` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A193494 has offset 0).

The definition of A193494 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A193494.P4992485085862482001

`(A006046(n+1)-1)/2`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A193494

/-- `(A006046(n+1)-1)/2` -/
def P4992485085862482001.Spec : Prop :=
  ∀ n, P4992485085862482001.a n = (A193494 n : ℚ)

end A193494

/-! ## A193494.P5808246056280455106

`floor(∑[2*a(and(n, n-1))]/2)` with `a(0)=1`
-/

namespace A193494.P5808246056280455106
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  2 * f1 (Int.land (n : ℤ) ((n : ℤ) - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / 2⌋

end

end A193494.P5808246056280455106

namespace A193494

/-- `floor(∑[2*a(and(n, n-1))]/2)` -/
def P5808246056280455106.Spec : Prop :=
  ∀ n, P5808246056280455106.a n = A193494 n

end A193494

/-! ## A193494.P9180856927400468532

`∑[char[2^n]+2*a(and(n, n-1))]` with `a(0)=0, a(1)=1`
-/

namespace A193494.P9180856927400468532
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  (if ∃ j, f2 j = n then 1 else 0) + 2 * f1 (Int.land (n : ℤ) ((n : ℤ) - 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A193494.P9180856927400468532

namespace A193494

/-- `∑[char[2^n]+2*a(and(n, n-1))]` -/
def P9180856927400468532.Spec : Prop :=
  ∀ n, (P9180856927400468532.a n : ℤ) = A193494 n

end A193494

/-! ## A193494.P9478212459684101085

`1+a(floor((n-1)/2))+a(ceil((n-1)/2))+a(floor((n-1)/2))` with `a(0)=0`
-/

namespace A193494.P9478212459684101085
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  1 + a ⌊((n : ℤ) - 1 : ℚ) / 2⌋.toNat + a ⌈((n : ℤ) - 1 : ℚ) / 2⌉.toNat + a ⌊((n : ℤ) - 1 : ℚ) / 2⌋.toNat

end

end A193494.P9478212459684101085

namespace A193494

/-- `1+a(floor((n-1)/2))+a(ceil((n-1)/2))+a(floor((n-1)/2))` -/
def P9478212459684101085.Spec : Prop :=
  ∀ n, (P9478212459684101085.a n : ℤ) = A193494 n

end A193494

/-! ## A193494.P11293601911077653330

`∑[A088512(n)]+n`
-/

namespace A193494.P11293601911077653330
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088512 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A193494.P11293601911077653330

namespace A193494

/-- `∑[A088512(n)]+n` -/
def P11293601911077653330.Spec : Prop :=
  ∀ n, P11293601911077653330.a n = A193494 n

end A193494

/-! ## A193494.P1465109413984323526

`(A267700(n)+n)/2`
-/

namespace A193494.P1465109413984323526
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A267700 n + (n : ℤ) : ℚ) / 2

end

end A193494.P1465109413984323526

namespace A193494

/-- `(A267700(n)+n)/2` -/
def P1465109413984323526.Spec : Prop :=
  ∀ n, P1465109413984323526.a n = (A193494 n : ℚ)

end A193494

/-! ## A193494.P10636818275156653411

`∑[floor(A001316(n)/2)]`
-/

namespace A193494.P10636818275156653411
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A001316 n : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A193494.P10636818275156653411

namespace A193494

/-- `∑[floor(A001316(n)/2)]` -/
def P10636818275156653411.Spec : Prop :=
  ∀ n, P10636818275156653411.a n = A193494 n

end A193494

/-! ## A193494.P6486597561493671404

`floor(A006046(n+1)/2)`
-/

namespace A193494.P6486597561493671404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A006046 (n + 1) : ℚ) / 2⌋

end

end A193494.P6486597561493671404

namespace A193494

/-- `floor(A006046(n+1)/2)` -/
def P6486597561493671404.Spec : Prop :=
  ∀ n, P6486597561493671404.a n = A193494 n

end A193494

/-! ## A193494.P14252655151078938043

`floor(A151788(n+1)/3)`
-/

namespace A193494.P14252655151078938043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A151788 (n + 1) : ℚ) / 3⌋

end

end A193494.P14252655151078938043

namespace A193494

/-- `floor(A151788(n+1)/3)` -/
def P14252655151078938043.Spec : Prop :=
  ∀ n, P14252655151078938043.a n = A193494 n

end A193494

/-! ## A193494.P10344362552895356711

`(∑[A038573(n)]+n)/2`
-/

namespace A193494.P10344362552895356711
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038573 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ) : ℤ) : ℚ) / 2

end

end A193494.P10344362552895356711

namespace A193494

/-- `(∑[A038573(n)]+n)/2` -/
def P10344362552895356711.Spec : Prop :=
  ∀ n, P10344362552895356711.a n = (A193494 n : ℚ)

end A193494

/-! ## A193494.P7272160407029805842

`∑[floor(sqrt(A102376(n))/2)]`
-/

namespace A193494.P7272160407029805842
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt (A102376 n : ℝ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A193494.P7272160407029805842

namespace A193494

/-- `∑[floor(sqrt(A102376(n))/2)]` -/
def P7272160407029805842.Spec : Prop :=
  ∀ n, P7272160407029805842.a n = A193494 n

end A193494

/-! ## A193494.P13249298808659204667

`∑[floor(A060632(2*n)/2)]`
-/

namespace A193494.P13249298808659204667
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A060632 (2 * n) : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A193494.P13249298808659204667

namespace A193494

/-- `∑[floor(A060632(2*n)/2)]` -/
def P13249298808659204667.Spec : Prop :=
  ∀ n, P13249298808659204667.a n = A193494 n

end A193494

/-! ## A193494.P816141538844771923

`(∑[A151787(n+1)]-1)/3`
-/

namespace A193494.P816141538844771923
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151787 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j - 1 : ℤ) : ℚ) / 3

end

end A193494.P816141538844771923

namespace A193494

/-- `(∑[A151787(n+1)]-1)/3` -/
def P816141538844771923.Spec : Prop :=
  ∀ n, P816141538844771923.a n = (A193494 n : ℚ)

end A193494

/-! ## A193494.P5549360127079355136

`∑[A131577(A000120(n))]`
-/

namespace A193494.P5549360127079355136
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131577 (A000120 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A193494.P5549360127079355136

namespace A193494

/-- `∑[A131577(A000120(n))]` -/
def P5549360127079355136.Spec : Prop :=
  ∀ n, P5549360127079355136.a n = A193494 n

end A193494

/-! ## A193494.P6758072971863752390

`∑[A108715(A038573(n))]`
-/

namespace A193494.P6758072971863752390
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108715 (A038573 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A193494.P6758072971863752390

namespace A193494

/-- `∑[A108715(A038573(n))]` -/
def P6758072971863752390.Spec : Prop :=
  ∀ n, P6758072971863752390.a n = A193494 n

end A193494

/-! ## A193494.P11435906557235538299

`∑[A131577(log2(A001316(n)))]`
-/

namespace A193494.P11435906557235538299
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131577 (SequenceMachineLib.roundAway (Real.logb 2 (A001316 n : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A193494.P11435906557235538299

namespace A193494

/-- `∑[A131577(log2(A001316(n)))]` -/
def P11435906557235538299.Spec : Prop :=
  ∀ n, P11435906557235538299.a n = A193494 n

end A193494

/-! ## A193494.P3810423816618098286

`∑[A131577(∑[A088705(n)])]`
-/

namespace A193494.P3810423816618098286
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088705 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131577 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A193494.P3810423816618098286

namespace A193494

/-- `∑[A131577(∑[A088705(n)])]` -/
def P3810423816618098286.Spec : Prop :=
  ∀ n, P3810423816618098286.a n = A193494 n

end A193494

/-! ## A193494.P10817139761536823763

`∑[A034008(A000120(n)+1)]`
-/

namespace A193494.P10817139761536823763
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034008 (A000120 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A193494.P10817139761536823763

namespace A193494

/-- `∑[A034008(A000120(n)+1)]` -/
def P10817139761536823763.Spec : Prop :=
  ∀ n, P10817139761536823763.a n = A193494 n

end A193494

/-! ## A193494.P15843502062204812886

`∑[A048896(n)]-A048896(n)`
-/

namespace A193494.P15843502062204812886
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048896 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A048896 n

end

end A193494.P15843502062204812886

namespace A193494

/-- `∑[A048896(n)]-A048896(n)` -/
def P15843502062204812886.Spec : Prop :=
  ∀ n, P15843502062204812886.a n = A193494 n

end A193494

/-! ## A193494.P17366748810939739750

`(A038573(n)+A006046(n))/2`
-/

namespace A193494.P17366748810939739750
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038573 n + A006046 n : ℚ) / 2

end

end A193494.P17366748810939739750

namespace A193494

/-- `(A038573(n)+A006046(n))/2` -/
def P17366748810939739750.Spec : Prop :=
  ∀ n, P17366748810939739750.a n = (A193494 n : ℚ)

end A193494

/-!
# A193495: Number of odd divisors of Lucas(n), Lucas numbers beginning at 2.

The programs for A193495, the canonical program `A193495.P4686144499966697871` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A193495 has offset 0).

The definition of A193495 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A193495.P4686144499966697871

`A001227(A000032(n))`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A193495

/-- `A001227(A000032(n))` -/
def P4686144499966697871.Spec : Prop :=
  ∀ n, P4686144499966697871.a n = A193495 n

theorem P4686144499966697871.correct : P4686144499966697871.Spec := by
  intro n
  simp only [A193495]

end A193495

/-! ## A193495.P5436407770696428777

`A272377(n)-A280728(n)`
-/

namespace A193495.P5436407770696428777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272377 n - A280728 n

end

end A193495.P5436407770696428777

namespace A193495

/-- `A272377(n)-A280728(n)` -/
def P5436407770696428777.Spec : Prop :=
  ∀ n, P5436407770696428777.a n = A193495 n

theorem P5436407770696428777.correct : P5436407770696428777.Spec := by
  intro n
  simp only [A193495, Nat.add_sub_cancel, A193495.P5436407770696428777.a, A193495.P4686144499966697871.a, A000032, A000032.P8352177345629330861.a, A001227, A001227.P17291574635237243988.f1, A001227.P17291574635237243988.a, A272377, A272377.P3912786864071120039.a, A280728, A280728.P2681727417312641949.a, A000005, A000005.P16091521709108585461.a, A183063, A183063.P14549643650991336837.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, A062011, A062011.P17525320077853469406.a, A099777, A099777.P11792433152824821401.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A193495

/-! ## A193495.P12067070362491575718

`A000027(gcd(A272377(n), A280728(n)))`
-/

namespace A193495.P12067070362491575718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (Int.gcd (A272377 n) (A280728 n))

end

end A193495.P12067070362491575718

namespace A193495

/-- `A000027(gcd(A272377(n), A280728(n)))` -/
def P12067070362491575718.Spec : Prop :=
  ∀ n, P12067070362491575718.a n = A193495 n

end A193495

/-! ## A193495.P10899438926216061938

`Δ[eq[1, A238899(n)]]-A280728(n)`
-/

namespace A193495.P10899438926216061938
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238899 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) - A280728 n

end

end A193495.P10899438926216061938

namespace A193495

/-- `Δ[eq[1, A238899(n)]]-A280728(n)` -/
def P10899438926216061938.Spec : Prop :=
  ∀ n, P10899438926216061938.a n = A193495 n

end A193495

/-! ## A193495.P14757882948326892718

`∑{d}[round(ϕ^n), and(1, #)]`
-/

namespace A193495.P14757882948326892718
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.goldenRatio ^ n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, Nat.land 1 d

end

end A193495.P14757882948326892718

namespace A193495

/-- `∑{d}[round(ϕ^n), and(1, #)]` -/
def P14757882948326892718.Spec : Prop :=
  ∀ n, (P14757882948326892718.a n : ℤ) = A193495 n

end A193495

/-!
# A193496: a(n) = 1 iff digit n+1 of Pi is >= digit n, otherwise a(n) = 0. We consider 3 to be digit 1 of Pi.

The programs for A193496, there is no canonical definition to state claims against.
-/

/-! ## A193496.P9620491548243838560

`floor(tanh(A095916(n+1)))+1`
-/

namespace A193496.P9620491548243838560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.tanh (A095916 (n + 1) : ℝ)⌋ + 1

end

end A193496.P9620491548243838560

/-! ## A193496.P14119877599885224701

`A175368(and(48, Δ[A000796(n)]))`
-/

namespace A193496.P14119877599885224701
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000796 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175368 (Int.land 48 (f1 (n + 1) - f1 n)).toNat

end

end A193496.P14119877599885224701

/-! ## A193496.P4566359064823427785

`A276949(or(15, Δ[A000796(n)])+1)`
-/

namespace A193496.P4566359064823427785
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000796 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276949 (Int.lor 15 (f1 (n + 1) - f1 n) + 1).toNat

end

end A193496.P4566359064823427785

/-! ## A193496.P5822114519412137915

`A110658(ceil(Δ[2^-A000796(n)]))`
-/

namespace A193496.P5822114519412137915
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (-A000796 (n + 1) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110658 ⌈f1 (n + 1) - f1 n⌉.toNat

end

end A193496.P5822114519412137915

/-! ## A193496.P5387002276187060988

`A004216(Δ[A001355(2*n+1)]+10)`
-/

namespace A193496.P5387002276187060988
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001355 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004216 (f1 (n + 1) - f1 n + 10).toNat

end

end A193496.P5387002276187060988

/-! ## A193496.P13703170068216992454

`floor(A095916(n+1)/A002808(n+1))+1`
-/

namespace A193496.P13703170068216992454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A095916 (n + 1) : ℚ) / (A002808 (n + 1) : ℚ)⌋ + 1

end

end A193496.P13703170068216992454

/-! ## A193496.P8166490846769854529

`floor(A095916(n+1)/A219498(n+1))+1`
-/

namespace A193496.P8166490846769854529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A095916 (n + 1) : ℚ) / (A219498 (n + 1) : ℚ)⌋ + 1

end

end A193496.P8166490846769854529

/-! ## A193496.P5490817189924003907

`ceil(1/(A107114(n+1)+Δ[A107116(n+1)]))`
-/

namespace A193496.P5490817189924003907
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107116 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈1 / (A107114 (n + 1) + (f1 (n + 1) - f1 n) : ℚ)⌉

end

end A193496.P5490817189924003907

/-!
# A193497: a(n) = 1, if digit n+1 of e is greater than or equal to digit n of e, else 0.

The programs for A193497, there is no canonical definition to state claims against.
-/

/-! ## A193497.P9271130579653023388

`floor(ratio[A001113(n)+10])`
-/

namespace A193497.P9271130579653023388
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001113 (n + 1) + 10

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(f1 (n + 1) : ℚ) / (f1 n : ℚ)⌋

end

end A193497.P9271130579653023388

/-! ## A193497.P883975358645853801

`floor(ratio[A091131(n)+10])`
-/

namespace A193497.P883975358645853801
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091131 (n + 1) + 10

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(f1 (n + 1) : ℚ) / (f1 n : ℚ)⌋

end

end A193497.P883975358645853801

/-! ## A193497.P11068598669189715453

`A059995(Δ[A001113(n)]+10)`
-/

namespace A193497.P11068598669189715453
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001113 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059995 (f1 (n + 1) - f1 n + 10).toNat

end

end A193497.P11068598669189715453

/-! ## A193497.P4468135040151220560

`A014542(12-Δ[A001113(n)])`
-/

namespace A193497.P4468135040151220560
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001113 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014542 (12 - (f1 (n + 1) - f1 n)).toNat

end

end A193497.P4468135040151220560

/-! ## A193497.P12111687273572431537

`A010054(and(32, Δ[A001113(n)]))`
-/

namespace A193497.P12111687273572431537
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001113 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 (Int.land 32 (f1 (n + 1) - f1 n)).toNat

end

end A193497.P12111687273572431537

/-! ## A193497.P5230748093379704105

`A010057(and(40, Δ[A001113(n)]))`
-/

namespace A193497.P5230748093379704105
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001113 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010057 (Int.land 40 (f1 (n + 1) - f1 n)).toNat

end

end A193497.P5230748093379704105

/-! ## A193497.P6259244745945616858

`A004216(Δ[A001355(2*(n+1))]+10)`
-/

namespace A193497.P6259244745945616858
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001355 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004216 (f1 (n + 1) - f1 n + 10).toNat

end

end A193497.P6259244745945616858

/-! ## A193497.P6339616064960838468

`ceil(sin(acot(A095942(n+1))))`
-/

namespace A193497.P6339616064960838468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sin (SequenceMachineLib.acot (A095942 (n + 1) : ℝ))⌉

end

end A193497.P6339616064960838468

/-! ## A193497.P17541185804100879140

`A161098(A095942(n+1)+10)`
-/

namespace A193497.P17541185804100879140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161098 (A095942 (n + 1) + 10).toNat

end

end A193497.P17541185804100879140

/-! ## A193497.P10830216488555440972

`floor(A095942(n+1)/A038821(n+1))+1`
-/

namespace A193497.P10830216488555440972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A095942 (n + 1) : ℚ) / (A038821 (n + 1) : ℚ)⌋ + 1

end

end A193497.P10830216488555440972

/-!
# A193498: n such that certain polynomials are irreducible over GF(2), see first comment.

The programs for A193498, there is no canonical definition to state claims against.
-/

/-! ## A193498.P11619094120922181306

`∑[A137927(A130132(n+1)+2)]`
-/

namespace A193498.P11619094120922181306
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137927 (A130132 (n + 1) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A193498.P11619094120922181306

