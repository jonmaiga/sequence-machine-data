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
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
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
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
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
import Seq.B009.C000
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
import Seq.Opaque.C024
import Seq.Opaque.C025

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A048400: Primes with consecutive digits that differ exactly by 3.

The programs for A048400, there is no canonical definition to state claims against.
-/

/-! ## A048400.P17835584635179018718

`∩[A033081(n+1), A048415(n+1)]`
-/

namespace A048400.P17835584635179018718
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033081 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048415 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A048400.P17835584635179018718

/-! ## A048400.P5303684340447549439

`∩[A030144(n+1), A033081(n+1)]`
-/

namespace A048400.P5303684340447549439
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030144 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033081 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A048400.P5303684340447549439

/-! ## A048400.P803596318763493518

`∩[A030144(n+1), A048414(n+1)]`
-/

namespace A048400.P803596318763493518
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030144 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048414 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A048400.P803596318763493518

/-! ## A048400.P15789169227589311028

`∩[A030144(n+1), A048415(n+1)]`
-/

namespace A048400.P15789169227589311028
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030144 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048415 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A048400.P15789169227589311028

/-! ## A048400.P11551341319584292908

`∩[A033081(n+1), A048414(n+1)]`
-/

namespace A048400.P11551341319584292908
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033081 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048414 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A048400.P11551341319584292908

/-!
# A048401: Primes with consecutive digits that differ exactly by 4.

The programs for A048401, there is no canonical definition to state claims against.
-/

/-! ## A048401.P443131172731793961

`∩[A048416(n+1), A048406(n)]`
-/

namespace A048401.P443131172731793961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048416 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048406 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A048401.P443131172731793961

/-! ## A048401.P2319190882268749906

`∩[A048415(n+1), A048406(n)]`
-/

namespace A048401.P2319190882268749906
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048415 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048406 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A048401.P2319190882268749906

/-! ## A048401.P7600439595382879278

`∩[A048415(n+1), A048416(n+1)]`
-/

namespace A048401.P7600439595382879278
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048415 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048416 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A048401.P7600439595382879278

/-! ## A048401.P13496252056704226584

`p?[A048406(n)]`
-/

namespace A048401.P13496252056704226584
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048406 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A048401.P13496252056704226584

/-! ## A048401.P10287868959442615551

`∩[A030475(n+1), A048406(n)]`
-/

namespace A048401.P10287868959442615551
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030475 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048406 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A048401.P10287868959442615551

/-!
# A048402: Primes with consecutive digits that differ exactly by 5.

The programs for A048402, there is no canonical definition to state claims against.
-/

/-! ## A048402.P12291370199907652414

`∩[A032758(n+1), A048407(n)]`
-/

namespace A048402.P12291370199907652414
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032758 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048407 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A048402.P12291370199907652414

/-! ## A048402.P1613508833002290950

`∩[A231588(n+1), A048407(n)]`
-/

namespace A048402.P1613508833002290950
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231588 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048407 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A048402.P1613508833002290950

/-! ## A048402.P10152229923510276722

`∩[A242541(n+1), A048407(n)]`
-/

namespace A048402.P10152229923510276722
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242541 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048407 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A048402.P10152229923510276722

/-! ## A048402.P595028511168607843

`∩[A048407(n), A343591(n+1)]`
-/

namespace A048402.P595028511168607843
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048407 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343591 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A048402.P595028511168607843

/-! ## A048402.P5292807418382810257

`∩[A048417(n+1), A048407(n)]`
-/

namespace A048402.P5292807418382810257
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048417 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048407 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A048402.P5292807418382810257

/-!
# A048404: Primes with consecutive digits that differ exactly by 7.

The programs for A048404, there is no canonical definition to state claims against.
-/

/-! ## A048404.P18146393652547421248

`∩[A032758(n+1), A048409(n)]`
-/

namespace A048404.P18146393652547421248
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032758 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048409 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A048404.P18146393652547421248

/-! ## A048404.P3278574660127695247

`∩[A242541(n+1), A048409(n)]`
-/

namespace A048404.P3278574660127695247
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242541 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048409 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A048404.P3278574660127695247

/-! ## A048404.P1731372013645531858

`∩[A343591(n+1), A048409(n)]`
-/

namespace A048404.P1731372013645531858
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343591 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048409 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A048404.P1731372013645531858

/-! ## A048404.P14991671326951622797

`∩[A030291(n+1), A048409(n)]`
-/

namespace A048404.P14991671326951622797
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030291 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048409 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A048404.P14991671326951622797

/-! ## A048404.P18260720983627615455

`∩[A048418(n+1), A048409(n)]`
-/

namespace A048404.P18260720983627615455
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048418 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048409 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A048404.P18260720983627615455

/-!
# A048405: Primes with consecutive digits that differ exactly by 8.

The programs for A048405, there is no canonical definition to state claims against.
-/

/-! ## A048405.P4671864866221794373

`∩[A032758(n+1), A048410(n)]`
-/

namespace A048405.P4671864866221794373
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032758 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048410 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A048405.P4671864866221794373

/-! ## A048405.P16877703484891648948

`∩[A242541(n+1), A048410(n)]`
-/

namespace A048405.P16877703484891648948
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242541 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048410 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A048405.P16877703484891648948

/-! ## A048405.P17034320122742987536

`∩[A048410(n), A048420(n+1)]`
-/

namespace A048405.P17034320122742987536
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048410 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048420 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A048405.P17034320122742987536

/-! ## A048405.P17550475663867550123

`∩[A032758(n+1), A048420(n+1)]`
-/

namespace A048405.P17550475663867550123
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032758 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048420 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A048405.P17550475663867550123

/-! ## A048405.P15423910872676661961

`∩[A033619(n+1), A048420(n+1)]`
-/

namespace A048405.P15423910872676661961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033619 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048420 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A048405.P15423910872676661961

/-!
# A048406: Numbers whose consecutive digits differ by 4.

The programs for A048406, there is no canonical definition to state claims against.
-/

/-! ## A048406.P7741656275617853479

`eq[abs(A307651(n)), A138908(n)]`
-/

namespace A048406.P7741656275617853479
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A307651 n|

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138908 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A048406.P7741656275617853479

/-! ## A048406.P1191772651748488480

`eq[abs(A307651(n)), A196222(n)]`
-/

namespace A048406.P1191772651748488480
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A307651 n|

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196222 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A048406.P1191772651748488480

/-! ## A048406.P5293958125894173703

`eq[A007318(A064834(n)), A138902(n)]`
-/

namespace A048406.P5293958125894173703
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A064834 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138902 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A048406.P5293958125894173703

/-! ## A048406.P5169797359378173702

`eq[A007318(A151950(n)), A055642(n)]`
-/

namespace A048406.P5169797359378173702
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A151950 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A048406.P5169797359378173702

/-! ## A048406.P6237613517757651956

`eq[A028310(A064834(n)), A138908(n)]`
-/

namespace A048406.P6237613517757651956
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A064834 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138908 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A048406.P6237613517757651956

/-!
# A048407: Numbers whose consecutive digits differ by 5.

The programs for A048407, there is no canonical definition to state claims against.
-/

/-! ## A048407.P7868133402644888449

`∩[A219248(n+1), A385294(n+1)]`
-/

namespace A048407.P7868133402644888449
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219248 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385294 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A048407.P7868133402644888449

/-! ## A048407.P14410300194575553998

`∩[A030141(n+1), A385294(n+1)]`
-/

namespace A048407.P14410300194575553998
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030141 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385294 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A048407.P14410300194575553998

/-! ## A048407.P3799518540143392415

`filter[A385294(n+1), A196368(#)]`
-/

namespace A048407.P3799518540143392415
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385294 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A196368 (f1 j).toNat = 1) n)

end

end A048407.P3799518540143392415

/-! ## A048407.P7895039178665041424

`filter[A385294(n+1), A228710(#)]`
-/

namespace A048407.P7895039178665041424
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385294 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A228710 (f1 j).toNat = 1) n)

end

end A048407.P7895039178665041424

/-! ## A048407.P5863674662254436676

`∩[A043096(n+1), A385294(n+1)]`
-/

namespace A048407.P5863674662254436676
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043096 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385294 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A048407.P5863674662254436676

/-!
# A048408: Numbers whose consecutive digits differ by 6.

The programs for A048408, there is no canonical definition to state claims against.
-/

/-! ## A048408.P14425122391783467643

`filter[A385295(n+1), A196368(#)]`
-/

namespace A048408.P14425122391783467643
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385295 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A196368 (f1 j).toNat = 1) n)

end

end A048408.P14425122391783467643

/-! ## A048408.P17536929301038989962

`∩[A043096(n+1), A385295(n+1)]`
-/

namespace A048408.P17536929301038989962
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043096 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385295 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A048408.P17536929301038989962

/-! ## A048408.P3677483323230734088

`record[A137564(A385295(n+1))]`
-/

namespace A048408.P3677483323230734088
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137564 (A385295 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A048408.P3677483323230734088

/-! ## A048408.P8859399423398230429

`filter[A385295(n+1), A178788(#)]`
-/

namespace A048408.P8859399423398230429
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385295 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A178788 (f1 j).toNat = 1) n)

end

end A048408.P8859399423398230429

/-! ## A048408.P2890067212892550922

`eq[abs(A307651(n)), A151962(n)!]`
-/

namespace A048408.P2890067212892550922
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A307651 n|

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A151962 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℤ)) n

end

end A048408.P2890067212892550922

/-!
# A048409: Numbers whose consecutive digits differ by 7.

The programs for A048409, there is no canonical definition to state claims against.
-/

/-! ## A048409.P5063318112518525444

`∩[A219248(n+1), A385296(n+1)]`
-/

namespace A048409.P5063318112518525444
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219248 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385296 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A048409.P5063318112518525444

/-! ## A048409.P18397417754631716418

`∩[A030141(n+1), A385296(n+1)]`
-/

namespace A048409.P18397417754631716418
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030141 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385296 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A048409.P18397417754631716418

/-! ## A048409.P15721499637199010937

`filter[A385296(n+1), A196368(#)]`
-/

namespace A048409.P15721499637199010937
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385296 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A196368 (f1 j).toNat = 1) n)

end

end A048409.P15721499637199010937

/-! ## A048409.P4276967850150150524

`filter[A385296(n+1), A228710(#)]`
-/

namespace A048409.P4276967850150150524
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385296 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A228710 (f1 j).toNat = 1) n)

end

end A048409.P4276967850150150524

/-! ## A048409.P5927534263495610130

`∩[A043096(n+1), A385296(n+1)]`
-/

namespace A048409.P5927534263495610130
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043096 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385296 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A048409.P5927534263495610130

/-!
# A048410: Numbers whose consecutive digits differ by 8.

The programs for A048410, there is no canonical definition to state claims against.
-/

/-! ## A048410.P791488031806427848

`filter[A385297(n+1), A196368(#)]`
-/

namespace A048410.P791488031806427848
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385297 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A196368 (f1 j).toNat = 1) n)

end

end A048410.P791488031806427848

/-! ## A048410.P5228572035497962969

`∩[A043096(n+1), A385297(n+1)]`
-/

namespace A048410.P5228572035497962969
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043096 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385297 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A048410.P5228572035497962969

/-! ## A048410.P3236145185685883922

`record[A137564(A385297(n+1))]`
-/

namespace A048410.P3236145185685883922
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137564 (A385297 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A048410.P3236145185685883922

/-! ## A048410.P11396781730349437057

`record[and(A057846(n), A087036(n))]`
-/

namespace A048410.P11396781730349437057
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A057846 n) (A087036 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A048410.P11396781730349437057

/-! ## A048410.P6786306344801500760

`filter[A385297(n+1), A178788(#)]`
-/

namespace A048410.P6786306344801500760
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385297 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A178788 (f1 j).toNat = 1) n)

end

end A048410.P6786306344801500760

/-!
# A048411: Squares whose consecutive digits differ by 1.

The programs for A048411, there is no canonical definition to state claims against.
-/

/-! ## A048411.P8444898556252957088

`A048412(n+1)²`
-/

namespace A048411.P8444898556252957088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048412 (n + 1) ^ 2

end

end A048411.P8444898556252957088

/-! ## A048411.P3724637276955230072

`∩[A002779(n+1), A087553(n+1)]`
-/

namespace A048411.P3724637276955230072
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002779 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087553 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A048411.P3724637276955230072

/-! ## A048411.P3022127519123346086

`∩[A030152(n+1), A087553(n+1)]`
-/

namespace A048411.P3022127519123346086
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030152 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087553 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A048411.P3022127519123346086

/-! ## A048411.P13274485141666849582

`A048412(n+1)^A086858(2*n+1)`
-/

namespace A048411.P13274485141666849582
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048412 (n + 1) : ℚ) ^ (A086858 (2 * n + 1) : ℤ)

end

end A048411.P13274485141666849582

/-! ## A048411.P13340801114229926224

`A048412(n+1)^A014963(A001316(n))`
-/

namespace A048411.P13340801114229926224
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048412 (n + 1) : ℚ) ^ (A014963 (A001316 n).toNat : ℤ)

end

end A048411.P13340801114229926224

/-!
# A048412: a(n)^2 is a square whose consecutive digits differ by 1.

The programs for A048412, there is no canonical definition to state claims against.
-/

/-! ## A048412.P3671308386446407948

`sqrt(A048411(n+1))`
-/

namespace A048412.P3671308386446407948
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A048411 (n + 1) : ℝ)

end

end A048412.P3671308386446407948

/-! ## A048412.P15693393198380380168

`A048411(n+1)^(A007318(C(n, 2))/2)`
-/

namespace A048412.P15693393198380380168
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A048411 (n + 1) : ℝ) ^ ((A007318 (Nat.choose n 2) : ℚ) / 2 : ℝ)

end

end A048412.P15693393198380380168

/-! ## A048412.P8774591451372084553

`A048411(n+1)^(A014963(30*(n+1))/2)`
-/

namespace A048412.P8774591451372084553
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A048411 (n + 1) : ℝ) ^ ((A014963 (30 * (n + 1)) : ℚ) / 2 : ℝ)

end

end A048412.P8774591451372084553

/-! ## A048412.P17656341935614371823

`∪[A056004(A270929(n+1)), A002275(n)]`
-/

namespace A048412.P17656341935614371823
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056004 (A270929 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002275 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A048412.P17656341935614371823

/-! ## A048412.P11574129209788885683

`A104075(n)+A096158(A296691(n+1)+1)`
-/

namespace A048412.P11574129209788885683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104075 n + A096158 (A296691 (n + 1) + 1).toNat

end

end A048412.P11574129209788885683

/-!
# A048413: Primes whose consecutive digits differ by 1 or 2.

The programs for A048413, there is no canonical definition to state claims against.
-/

/-! ## A048413.P4428286681549592409

`record[A051698(A190217(n+1))]`
-/

namespace A048413.P4428286681549592409
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051698 (A190217 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A048413.P4428286681549592409

/-! ## A048413.P4808909607280895354

`∪[A048398(n+1), A048399(n+1)]%A089316(2*n+1)`
-/

namespace A048413.P4808909607280895354
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048398 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048399 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n : ℤ) (A089316 (2 * n + 1))

end

end A048413.P4808909607280895354

/-! ## A048413.P14701063851851641981

`A056813(7*(8*C(n, 3)+2*n+1))`
-/

namespace A048413.P14701063851851641981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056813 (7 * (8 * Nat.choose n 3 + (2 * n + 1)))

end

end A048413.P14701063851851641981

/-! ## A048413.P1978632609209698918

`A056813(7*(∑[(abs(1-n)+n-2)²]+n))`
-/

namespace A048413.P1978632609209698918
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (|1 - (n : ℤ)| + ((n : ℤ) - 2)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056813 (7 * (∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ))).toNat

end

end A048413.P1978632609209698918

/-! ## A048413.P4111431899677211867

`record[A051698(A296712(n+1)%A337488(2*(n+2)))]`
-/

namespace A048413.P4111431899677211867
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051698 (Int.tmod (A296712 (n + 1)) (A337488 (2 * (n + 2)))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A048413.P4111431899677211867

/-!
# A048414: Primes whose consecutive digits differ by 2 or 3.

The programs for A048414, there is no canonical definition to state claims against.
-/

/-! ## A048414.P1582923764412659358

`p?[A244016(record[A049727(n)])]`
-/

namespace A048414.P1582923764412659358
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049727 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244016 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A048414.P1582923764412659358

/-! ## A048414.P13143579931253777199

`p?[∑[A055980(A289192(n))]]`
-/

namespace A048414.P13143579931253777199
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055980 (A289192 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A048414.P13143579931253777199

/-! ## A048414.P1859661473821867761

`∩[A063792(n+1), A175140(n+1)]`
-/

namespace A048414.P1859661473821867761
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063792 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175140 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A048414.P1859661473821867761

/-! ## A048414.P16021938440134088971

`∩[A115261(n+1), A175140(n+1)]`
-/

namespace A048414.P16021938440134088971
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115261 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175140 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A048414.P16021938440134088971

/-! ## A048414.P16925232755986368923

`∩[A158281(n+1), A175140(n+1)]`
-/

namespace A048414.P16925232755986368923
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158281 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175140 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A048414.P16925232755986368923

/-!
# A048415: Primes whose consecutive digits differ by 3 or 4.

The programs for A048415, there is no canonical definition to state claims against.
-/

/-! ## A048415.P4759907023500973157

`p?[∑[A116447(A005044(n))]]`
-/

namespace A048415.P4759907023500973157
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116447 (A005044 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A048415.P4759907023500973157

/-! ## A048415.P4445813859175076397

`p?[record[A137735(A326470(n))]]`
-/

namespace A048415.P4445813859175076397
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137735 (A326470 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A048415.P4445813859175076397

/-! ## A048415.P4057295066328521790

`p?[record[A203814(A111791(n+1))]]`
-/

namespace A048415.P4057295066328521790
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203814 (A111791 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A048415.P4057295066328521790

/-! ## A048415.P9112656239937817493

`∩[A144561(n+1), A357758(n+1)]`
-/

namespace A048415.P9112656239937817493
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144561 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357758 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A048415.P9112656239937817493

/-!
# A048416: Primes whose consecutive digits differ by 4 or 5.

The programs for A048416, there is no canonical definition to state claims against.
-/

/-! ## A048416.P13278385064585177791

`A007918(∪[A048401(n+1), A048402(n+1)])`
-/

namespace A048416.P13278385064585177791
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048401 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048402 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007918 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A048416.P13278385064585177791

/-! ## A048416.P17888403862194143327

`∪[A048401(n+1), A048402(n+1)]%A089316(2*n+1)`
-/

namespace A048416.P17888403862194143327
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048401 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048402 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n : ℤ) (A089316 (2 * n + 1))

end

end A048416.P17888403862194143327

/-! ## A048416.P3497483101069490462

`A020639(A048401(n+1)*A079149(n+5))`
-/

namespace A048416.P3497483101069490462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A048401 (n + 1) * A079149 (n + 5)).toNat

end

end A048416.P3497483101069490462

/-!
# A048418: Primes whose consecutive digits differ by 6 or 7.

The programs for A048418, there is no canonical definition to state claims against.
-/

/-! ## A048418.P1924861082654218861

`A335325(lt[a(n-2)+6^(n%2), 8])` with `a(0)=8, a(1)=0, a(2)=2`
-/

namespace A048418.P1924861082654218861
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [8, 0, 2] fun n f1 =>
  f1 (n - 2) + 6 ^ (n % 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335325 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A048418.P1924861082654218861

/-! ## A048418.P8672576362603954878

`A090481(record[A327391(n+1)])`
-/

namespace A048418.P8672576362603954878
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327391 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090481 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A048418.P8672576362603954878

/-! ## A048418.P14918228943603996819

`A335325(record[A327391(n+1)])`
-/

namespace A048418.P14918228943603996819
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327391 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335325 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A048418.P14918228943603996819

/-! ## A048418.P15181804094161653331

`A335325(record[A327536(n+1)])`
-/

namespace A048418.P15181804094161653331
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327536 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335325 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A048418.P15181804094161653331

/-!
# A048419: Primes whose consecutive digits differ by 7 or 8.

The programs for A048419, there is no canonical definition to state claims against.
-/

/-! ## A048419.P436916889890857051

`∪[A048404(n+1), p?[A048410(n)]]`
-/

namespace A048419.P436916889890857051
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048404 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048410 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => (f3 j).toNat.Prime) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A048419.P436916889890857051

/-! ## A048419.P581044747351902690

`∪[A048404(n+1), A000027(A048405(n+1))]`
-/

namespace A048419.P581044747351902690
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048404 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A048405 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A048419.P581044747351902690

/-! ## A048419.P11281812573672415176

`∪[A048404(n+1), A048405(A268448(n+1))]`
-/

namespace A048419.P11281812573672415176
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048404 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048405 (A268448 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A048419.P11281812573672415176

/-! ## A048419.P12052324397106417246

`∪[A048404(n+1), A020639(A048405(n+2))]`
-/

namespace A048419.P12052324397106417246
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048404 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A048405 (n + 2)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A048419.P12052324397106417246

/-!
# A048420: Primes whose consecutive digits differ by 8 or 9.

The programs for A048420, there is no canonical definition to state claims against.
-/

/-! ## A048420.P14933166731685010234

`p?[or(floor(n/8), A048410(n+1))]`
-/

namespace A048420.P14933166731685010234
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ⌊(n : ℚ) / 8⌋ (A048410 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A048420.P14933166731685010234

/-! ## A048420.P4533366010185417241

`p?[A151795(n)+A048410(n)]`
-/

namespace A048420.P4533366010185417241
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151795 n + A048410 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A048420.P4533366010185417241

/-! ## A048420.P286654908422114202

`p?[or(A048410(n), A080843(n))]`
-/

namespace A048420.P286654908422114202
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A048410 n) (A080843 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A048420.P286654908422114202

/-! ## A048420.P1431308722525069055

`p?[or(A048410(n), A151755(n))]`
-/

namespace A048420.P1431308722525069055
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A048410 n) (A151755 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A048420.P1431308722525069055

/-!
# A048421: Squares composed of two '1-digit' overlapping subsquares.

The programs for A048421, there is no canonical definition to state claims against.
-/

/-! ## A048421.P8960175695269866563

`A048422(n+1)²`
-/

namespace A048421.P8960175695269866563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048422 (n + 1) ^ 2

end

end A048421.P8960175695269866563

/-! ## A048421.P15087542096185841753

`A048422(Δ[n²]-n)^2`
-/

namespace A048421.P15087542096185841753
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048422 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat ^ 2

end

end A048421.P15087542096185841753

/-! ## A048421.P1280216519167233347

`record[A048422(A065648(n))²]`
-/

namespace A048421.P1280216519167233347
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048422 (A065648 n).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A048421.P1280216519167233347

/-! ## A048421.P15780728430518219137

`record[A048422(A100727(n))²]`
-/

namespace A048421.P15780728430518219137
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048422 (A100727 n).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A048421.P15780728430518219137

/-! ## A048421.P5901469165721142200

`record[A048422(A133310(n))²]`
-/

namespace A048421.P5901469165721142200
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048422 (A133310 n).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A048421.P5901469165721142200

/-! ## A048421.P2564756977665611434

`record[A048422(A134478(n))²]`
-/

namespace A048421.P2564756977665611434
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048422 (A134478 n).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A048421.P2564756977665611434

/-! ## A048421.P3264357898710035543

`record[A048422(A152271(n))²]`
-/

namespace A048421.P3264357898710035543
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048422 (A152271 n).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A048421.P3264357898710035543

/-! ## A048421.P15664486503125568890

`record[A048422(A158416(n))²]`
-/

namespace A048421.P15664486503125568890
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048422 (A158416 n).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A048421.P15664486503125568890

/-! ## A048421.P16437236950640093940

`record[A048422(A193592(n))²]`
-/

namespace A048421.P16437236950640093940
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048422 (A193592 n).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A048421.P16437236950640093940

/-! ## A048421.P8126467030677363260

`record[A048422(A065648(n))]*A048422(n+1)`
-/

namespace A048421.P8126467030677363260
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048422 (A065648 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A048422 (n + 1)

end

end A048421.P8126467030677363260

/-!
# A048422: Numbers k such that k^2 is formed from two subsquares that overlap in a single digit.

The programs for A048422, there is no canonical definition to state claims against.
-/

/-! ## A048422.P5772659635250384022

`sqrt(A048421(n+1))`
-/

namespace A048422.P5772659635250384022
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A048421 (n + 1) : ℝ)

end

end A048422.P5772659635250384022

/-! ## A048422.P5651161433740018624

`root(A048421(gcd(n, 3*n²)+1), 2)`
-/

namespace A048422.P5651161433740018624
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A048421 (Nat.gcd n (3 * n ^ 2) + 1) : ℝ) ^ (1 / (2 : ℝ))

end

end A048422.P5651161433740018624

/-! ## A048422.P15726241365296384206

`or(root(A048421(n+1), 2), A000007(n))`
-/

namespace A048422.P15726241365296384206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (SequenceMachineLib.roundAway ((A048421 (n + 1) : ℝ) ^ (1 / (2 : ℝ)))) (A000007 n)

end

end A048422.P15726241365296384206

/-! ## A048422.P12617561495613011383

`root(A048421(n+1), 2)*A007318(∑[n])`
-/

namespace A048422.P12617561495613011383
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A048421 (n + 1) : ℝ) ^ (1 / (2 : ℝ)) * (A007318 (∑ j ∈ Finset.range (n + 1), f1 j) : ℝ)

end

end A048422.P12617561495613011383

/-! ## A048422.P4014588123251427901

`root(A048421(n+1), 2)*A010054(∑[n])`
-/

namespace A048422.P4014588123251427901
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A048421 (n + 1) : ℝ) ^ (1 / (2 : ℝ)) * (A010054 (∑ j ∈ Finset.range (n + 1), f1 j) : ℝ)

end

end A048422.P4014588123251427901

/-! ## A048422.P8244758686702067928

`A000007(n+1)+root(A048421(n+1), 2)`
-/

namespace A048422.P8244758686702067928
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A000007 (n + 1) : ℝ) + (A048421 (n + 1) : ℝ) ^ (1 / (2 : ℝ))

end

end A048422.P8244758686702067928

/-! ## A048422.P10206720044988160164

`A000038(n+1)+root(A048421(n+1), 2)`
-/

namespace A048422.P10206720044988160164
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A000038 (n + 1) : ℝ) + (A048421 (n + 1) : ℝ) ^ (1 / (2 : ℝ))

end

end A048422.P10206720044988160164

/-! ## A048422.P7591094922572405543

`root(A048421(n+1), A020639(2*(n+1)))`
-/

namespace A048422.P7591094922572405543
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A048421 (n + 1) : ℝ) ^ (1 / (A020639 (2 * (n + 1)) : ℝ))

end

end A048422.P7591094922572405543

/-! ## A048422.P6230259813901657717

`root(A048421(n+1), 2)/A007318(C(2, n))`
-/

namespace A048422.P6230259813901657717
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A048421 (n + 1) : ℝ) ^ (1 / (2 : ℝ)) / (A007318 (Nat.choose 2 n) : ℝ)

end

end A048422.P6230259813901657717

/-! ## A048422.P7635249985778867627

`A008683(4*(n+1))+root(A048421(n+1), 2)`
-/

namespace A048422.P7635249985778867627
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A008683 (4 * (n + 1)) : ℝ) + (A048421 (n + 1) : ℝ) ^ (1 / (2 : ℝ))

end

end A048422.P7635249985778867627

/-!
# A048423: Squares composed of two '2-digit' overlapping subsquares.

The programs for A048423, there is no canonical definition to state claims against.
-/

/-! ## A048423.P7394422384473259634

`A048424(n+1)²`
-/

namespace A048423.P7394422384473259634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048424 (n + 1) ^ 2

end

end A048423.P7394422384473259634

/-! ## A048423.P5142157531010553435

`A048424(n+1)^p?[A025462(n)]`
-/

namespace A048423.P5142157531010553435
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025462 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048424 (n + 1) : ℚ) ^ (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℤ)

end

end A048423.P5142157531010553435

/-! ## A048423.P8418581486625907427

`A048424(n+1)^A020639(2*(n+1))`
-/

namespace A048423.P8418581486625907427
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048424 (n + 1) : ℚ) ^ (A020639 (2 * (n + 1)) : ℤ)

end

end A048423.P8418581486625907427

/-! ## A048423.P17382087489723445176

`A048424(n+1)^A000005(A031368(n+1))`
-/

namespace A048423.P17382087489723445176
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048424 (n + 1) : ℚ) ^ (A000005 (A031368 (n + 1)).toNat : ℤ)

end

end A048423.P17382087489723445176

/-! ## A048423.P3076419103161983032

`A048424(n+1)^A000005(A048415(n+1))`
-/

namespace A048423.P3076419103161983032
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048424 (n + 1) : ℚ) ^ (A000005 (A048415 (n + 1)).toNat : ℤ)

end

end A048423.P3076419103161983032

/-!
# A048424: Numbers k such that the decimal expansion of k^2 consists of two squares that overlap in 2 digits.

The programs for A048424, there is no canonical definition to state claims against.
-/

/-! ## A048424.P15890220822712415854

`sqrt(A048423(n+1))`
-/

namespace A048424.P15890220822712415854
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A048423 (n + 1) : ℝ)

end

end A048424.P15890220822712415854

/-! ## A048424.P3350229525552319938

`root(A048423(n+1), p?[A131851(n)])`
-/

namespace A048424.P3350229525552319938
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131851 n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A048423 (n + 1) : ℝ) ^ (1 / (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℝ))

end

end A048424.P3350229525552319938

/-! ## A048424.P3435836120486800338

`root(A048423(n+1), A020639(2*(n+1)))`
-/

namespace A048424.P3435836120486800338
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A048423 (n + 1) : ℝ) ^ (1 / (A020639 (2 * (n + 1)) : ℝ))

end

end A048424.P3435836120486800338

/-! ## A048424.P7195909494137126454

`root(A048423(n+1), A001316(A001316(n)))`
-/

namespace A048424.P7195909494137126454
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A048423 (n + 1) : ℝ) ^ (1 / (A001316 (A001316 n).toNat : ℝ))

end

end A048424.P7195909494137126454

/-!
# A048425: Squares composed of three overlapping subsquares, which overlap by one digit.

The programs for A048425, there is no canonical definition to state claims against.
-/

/-! ## A048425.P4417362098034142233

`A048426(n+1)²`
-/

namespace A048425.P4417362098034142233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048426 (n + 1) ^ 2

end

end A048425.P4417362098034142233

/-! ## A048425.P18338792188525592593

`A048426(A000027(n+1))^2`
-/

namespace A048425.P18338792188525592593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048426 (A000027 (n + 1)).toNat ^ 2

end

end A048425.P18338792188525592593

/-! ## A048425.P4997430599088751151

`A048426(n+1)^ratio[A000079(n)]`
-/

namespace A048425.P4997430599088751151
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A048426 (n + 1) : ℝ) ^ ((f1 (n + 1) : ℚ) / (f1 n : ℚ) : ℝ)

end

end A048425.P4997430599088751151

/-! ## A048425.P4616977772887906616

`A048426(A110654(2*(n+1)))^2`
-/

namespace A048425.P4616977772887906616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048426 (A110654 (2 * (n + 1))).toNat ^ 2

end

end A048425.P4616977772887906616

/-! ## A048425.P3445796046412630545

`A048426(n+1)^gcd(2, A016933(n))`
-/

namespace A048425.P3445796046412630545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048426 (n + 1) ^ Int.gcd 2 (A016933 n)

end

end A048425.P3445796046412630545

/-! ## A048425.P3444789257566554511

`A048426(n+1)^(char[A255591(n)]+1)`
-/

namespace A048425.P3444789257566554511
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255591 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048426 (n + 1) ^ ((if ∃ j, f1 j = (n : ℤ) then 1 else 0) + 1)

end

end A048425.P3444789257566554511

/-! ## A048425.P5922126756324387529

`A048426(n+1)^(A057427(n+3)+1)`
-/

namespace A048425.P5922126756324387529
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048426 (n + 1) : ℚ) ^ (A057427 (n + 3) + 1 : ℤ)

end

end A048425.P5922126756324387529

/-! ## A048425.P10258077509447115257

`A048426(n+1)^A020639(A016933(n))`
-/

namespace A048425.P10258077509447115257
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048426 (n + 1) : ℚ) ^ (A020639 (A016933 n).toNat : ℤ)

end

end A048425.P10258077509447115257

/-! ## A048425.P7524756514421852857

`A048426(n+1)^A318882(A134204(n))`
-/

namespace A048425.P7524756514421852857
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048426 (n + 1) : ℚ) ^ (A318882 (A134204 n).toNat : ℤ)

end

end A048425.P7524756514421852857

/-! ## A048425.P7508169253543567192

`A048426(A000027(n+1))*A048426(n+1)`
-/

namespace A048425.P7508169253543567192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048426 (A000027 (n + 1)).toNat * A048426 (n + 1)

end

end A048425.P7508169253543567192

/-! ## A048425.P7961237159471147215

`A048426(n+1)^A000005(A048413(n+1))`
-/

namespace A048425.P7961237159471147215
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048426 (n + 1) : ℚ) ^ (A000005 (A048413 (n + 1)).toNat : ℤ)

end

end A048425.P7961237159471147215

/-! ## A048425.P13981269655287590590

`A048426(n+1)^A000005(A048414(n+1))`
-/

namespace A048425.P13981269655287590590
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048426 (n + 1) : ℚ) ^ (A000005 (A048414 (n + 1)).toNat : ℤ)

end

end A048425.P13981269655287590590

/-! ## A048425.P1657914174639214366

`A048426(n+1)^A094290(A094290(2*(n+1)))`
-/

namespace A048425.P1657914174639214366
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048426 (n + 1) : ℚ) ^ (A094290 (A094290 (2 * (n + 1))).toNat : ℤ)

end

end A048425.P1657914174639214366

/-!
# A048426: Numbers k such that k^2 is composed of three 1-digit-overlapping subsquares.

The programs for A048426, there is no canonical definition to state claims against.
-/

/-! ## A048426.P7455359585243485792

`sqrt(A048425(n+1))`
-/

namespace A048426.P7455359585243485792
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A048425 (n + 1) : ℝ)

end

end A048426.P7455359585243485792

/-! ## A048426.P6409235277144306097

`root(A048425(n+1), ratio[A000079(n)])`
-/

namespace A048426.P6409235277144306097
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A048425 (n + 1) : ℝ) ^ (1 / ((f1 (n + 1) : ℚ) / (f1 n : ℚ) : ℝ))

end

end A048426.P6409235277144306097

/-! ## A048426.P18374165363753955367

`root(A048425(n+1), A094284(n+6))`
-/

namespace A048426.P18374165363753955367
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A048425 (n + 1) : ℝ) ^ (1 / (A094284 (n + 6) : ℝ))

end

end A048426.P18374165363753955367

/-! ## A048426.P4121518737901113560

`root(A048425(n+1), gcd(2, A016825(n)))`
-/

namespace A048426.P4121518737901113560
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A048425 (n + 1) : ℝ) ^ (1 / (Int.gcd 2 (A016825 n) : ℝ))

end

end A048426.P4121518737901113560

/-! ## A048426.P14796537068937633492

`root(A048425(n+1), A094290(or(1, n)))`
-/

namespace A048426.P14796537068937633492
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A048425 (n + 1) : ℝ) ^ (1 / (A094290 (Nat.lor 1 n) : ℝ))

end

end A048426.P14796537068937633492

/-! ## A048426.P18440641574811818190

`root(A048425(n+1), A020639(2*(n+1)))`
-/

namespace A048426.P18440641574811818190
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A048425 (n + 1) : ℝ) ^ (1 / (A020639 (2 * (n + 1)) : ℝ))

end

end A048426.P18440641574811818190

/-! ## A048426.P7740158401681211888

`root(A048425(n+1), A094290(2*n+1))`
-/

namespace A048426.P7740158401681211888
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A048425 (n + 1) : ℝ) ^ (1 / (A094290 (2 * n + 1) : ℝ))

end

end A048426.P7740158401681211888

/-! ## A048426.P5635590610389179837

`A048425(n+1)^(A057427(A322820(n+1))/2)`
-/

namespace A048426.P5635590610389179837
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A048425 (n + 1) : ℝ) ^ ((A057427 (A322820 (n + 1)).toNat : ℚ) / 2 : ℝ)

end

end A048426.P5635590610389179837

/-!
# A048427: Squares composed of three '2 digit' overlapping subsquares.

The programs for A048427, there is no canonical definition to state claims against.
-/

/-! ## A048427.P10034112609580413910

`A048428(n+1)²`
-/

namespace A048427.P10034112609580413910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048428 (n + 1) ^ 2

end

end A048427.P10034112609580413910

/-! ## A048427.P3250891101124515451

`A048428(Δ[n²]-n)^2`
-/

namespace A048427.P3250891101124515451
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048428 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat ^ 2

end

end A048427.P3250891101124515451

/-! ## A048427.P6220988575733395406

`record[A048428(A000174(n))²]`
-/

namespace A048427.P6220988575733395406
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048428 (A000174 n).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A048427.P6220988575733395406

/-! ## A048427.P12360040626003046252

`record[A048428(A065648(n))²]`
-/

namespace A048427.P12360040626003046252
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048428 (A065648 n).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A048427.P12360040626003046252

/-! ## A048427.P12461814894641645608

`record[A048428(A106466(n))²]`
-/

namespace A048427.P12461814894641645608
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048428 (A106466 n).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A048427.P12461814894641645608

/-!
# A048428: a(n)^2 is a square composed of three '2 digit' overlapping subsquares.

The programs for A048428, there is no canonical definition to state claims against.
-/

/-! ## A048428.P3994129628441322266

`sqrt(A048427(n+1))`
-/

namespace A048428.P3994129628441322266
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A048427 (n + 1) : ℝ)

end

end A048428.P3994129628441322266

/-! ## A048428.P12933341030946520704

`root(A048427(n+1), ratio[A000079(n)])`
-/

namespace A048428.P12933341030946520704
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A048427 (n + 1) : ℝ) ^ (1 / ((f1 (n + 1) : ℚ) / (f1 n : ℚ) : ℝ))

end

end A048428.P12933341030946520704

/-! ## A048428.P584777242968780952

`root(A048427(n+1), p?[A045887(n)])`
-/

namespace A048428.P584777242968780952
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045887 n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A048427 (n + 1) : ℝ) ^ (1 / (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℝ))

end

end A048428.P584777242968780952

/-! ## A048428.P4294868836148454380

`root(A048427(n+1), p?[A305614(n)])`
-/

namespace A048428.P4294868836148454380
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305614 n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A048427 (n + 1) : ℝ) ^ (1 / (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℝ))

end

end A048428.P4294868836148454380

/-! ## A048428.P7638494955960182158

`root(A048427(n+1), A020639(2*(n+1)))`
-/

namespace A048428.P7638494955960182158
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A048427 (n + 1) : ℝ) ^ (1 / (A020639 (2 * (n + 1)) : ℝ))

end

end A048428.P7638494955960182158

/-!
# A048435: Take the first n numbers written in base 3, concatenate them, then convert from base 3 to base 10.

The programs for A048435, there is no canonical definition to state claims against.
-/

/-! ## A048435.P6312465405659931897

`A055144(∑[∑[char[3^n-1]]])`
-/

namespace A048435.P6312465405659931897
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 ^ n : ℤ) - 1

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055144 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A048435.P6312465405659931897

/-! ## A048435.P4637460047158285709

`A055144(A004277(n))%A220804(n+1)`
-/

namespace A048435.P4637460047158285709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A055144 (A004277 n).toNat) (A220804 (n + 1))

end

end A048435.P4637460047158285709

/-! ## A048435.P8496105482250976288

`A000027(9*a(n-1)+n)+1` with `a(0)=1, a(1)=5`
-/

namespace A048435.P8496105482250976288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 5] fun n a =>
  A000027 (9 * a (n - 1) + (n : ℤ)).toNat + 1

end

end A048435.P8496105482250976288

/-!
# A048436: Take the first n numbers written in base 4, concatenate them, then convert from base 4 to base 10.

The programs for A048436, there is no canonical definition to state claims against.
-/

/-! ## A048436.P15581741262554969189

`A055145(∑[∑[A353817(2*(n+1))]])`
-/

namespace A048436.P15581741262554969189
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353817 (2 * (n + 1))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055145 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A048436.P15581741262554969189

/-! ## A048436.P7155945502442754524

`A053644(A000267(n+1))²*a(n-1)+1+n` with `a(0)=1`
-/

namespace A048436.P7155945502442754524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A053644 (A000267 (n + 1)).toNat ^ 2 * a (n - 1) + 1 + (n : ℤ)

end

end A048436.P7155945502442754524

/-! ## A048436.P17409487758676621656

`A055145(A077168(n)+floor(n-atan(n)))`
-/

namespace A048436.P17409487758676621656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055145 (A077168 n + ⌊(n : ℝ) - Real.arctan (n : ℝ)⌋).toNat

end

end A048436.P17409487758676621656

/-! ## A048436.P1256404465946563098

`A055145(record[A337713(n+1)+char[1]])`
-/

namespace A048436.P1256404465946563098
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337713 (n + 1) + ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055145 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A048436.P1256404465946563098

/-! ## A048436.P18289570584226427259

`A055145(lt[A113549(n+1), A055066(n)])`
-/

namespace A048436.P18289570584226427259
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113549 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055066 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055145 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A048436.P18289570584226427259

/-!
# A048437: Take the first n numbers written in base 5, concatenate them, then convert from base 5 to base 10.

The programs for A048437, there is no canonical definition to state claims against.
-/

/-! ## A048437.P14391670688589356085

`A055146(lt[A132692(n), A000244(n)])`
-/

namespace A048437.P14391670688589356085
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132692 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000244 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055146 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A048437.P14391670688589356085

/-! ## A048437.P10590921761692525815

`A055146(lt[A132692(n), A000984(n)])`
-/

namespace A048437.P10590921761692525815
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132692 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000984 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055146 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A048437.P10590921761692525815

/-! ## A048437.P2889354295649398676

`A055146(lt[A132692(n), A102377(n)])`
-/

namespace A048437.P2889354295649398676
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132692 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102377 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055146 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A048437.P2889354295649398676

/-! ## A048437.P5900806119813398612

`A055146(lt[A132692(n), A055143(n+1)])`
-/

namespace A048437.P5900806119813398612
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132692 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055143 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055146 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A048437.P5900806119813398612

/-! ## A048437.P2775945771751765272

`A055146(eq[0, A296605(2*n)])`
-/

namespace A048437.P2775945771751765272
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296605 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055146 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A048437.P2775945771751765272

/-!
# A048438: Take the first n numbers written in base 6, concatenate them, then convert from base 6 to base 10.

The programs for A048438, there is no canonical definition to state claims against.
-/

/-! ## A048438.P12743499980100099695

`A055147(A123193(n+1)^A044932(n+1))`
-/

namespace A048438.P12743499980100099695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055147 (SequenceMachineLib.roundAway ((A123193 (n + 1) : ℚ) ^ (A044932 (n + 1) : ℤ))).toNat

end

end A048438.P12743499980100099695

/-! ## A048438.P8140325888632903174

`A055147(A123193(n+1)^A137795(n+1))`
-/

namespace A048438.P8140325888632903174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055147 (SequenceMachineLib.roundAway ((A123193 (n + 1) : ℚ) ^ (A137795 (n + 1) : ℤ))).toNat

end

end A048438.P8140325888632903174

/-! ## A048438.P8198987633909135574

`A055147(A123193(n+1)^A046214(n+1))`
-/

namespace A048438.P8198987633909135574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055147 (SequenceMachineLib.roundAway ((A123193 (n + 1) : ℚ) ^ (A046214 (n + 1) : ℤ))).toNat

end

end A048438.P8198987633909135574

/-! ## A048438.P2082577153613922518

`A055147(eq[A031007(8*n+2), A065033(n)])`
-/

namespace A048438.P2082577153613922518
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031007 (8 * n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055147 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A048438.P2082577153613922518

/-!
# A048439: Take the first n numbers written in base 7, concatenate them, then convert from base 7 to base 10.

The programs for A048439, there is no canonical definition to state claims against.
-/

/-! ## A048439.P9677977027459460008

`A055148(lt[A132692(n), Δ[n^5]])`
-/

namespace A048439.P9677977027459460008
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132692 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f3 (n + 1) : ℤ) - (f3 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055148 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A048439.P9677977027459460008

/-! ## A048439.P12573693530929957817

`A055148(lt[2*A132692(n), A055148(n+1)])`
-/

namespace A048439.P12573693530929957817
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A132692 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055148 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055148 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A048439.P12573693530929957817

/-! ## A048439.P1304667089606544323

`A055148(lt[A007583(n), A002445(3*n)])`
-/

namespace A048439.P1304667089606544323
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007583 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002445 (3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055148 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A048439.P1304667089606544323

/-! ## A048439.P17818761526757513112

`A055148(lt[A055144(n+1), A002445(3*n)])`
-/

namespace A048439.P17818761526757513112
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055144 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002445 (3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055148 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A048439.P17818761526757513112

/-!
# A048440: Take the first n numbers written in base 8, concatenate them, then convert from base 8 to base 10.

The programs for A048440, there is no canonical definition to state claims against.
-/

/-! ## A048440.P3616454394048864624

`A055149(lt[(-2)^(n-2), n²])`
-/

namespace A048440.P3616454394048864624
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-2 : ℚ) ^ ((n : ℤ) - 2 : ℤ)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055149 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℚ)) n)

end

end A048440.P3616454394048864624

/-! ## A048440.P12732999839016950477

`A055149(lt[A019425(n), 9]+1)`
-/

namespace A048440.P12732999839016950477
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019425 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055149 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1)

end

end A048440.P12732999839016950477

/-! ## A048440.P1380971922724266402

`∑[A361794(4^n)]`
-/

namespace A048440.P1380971922724266402
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361794 (4 ^ n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A048440.P1380971922724266402

/-!
# A048441: Take the first n numbers written in base 9, concatenate them, then convert from base 9 to base 10.

The programs for A048441, there is no canonical definition to state claims against.
-/

/-! ## A048441.P7215598689838127767

`A055150(lt[A330150(n), A000108(n)])`
-/

namespace A048441.P7215598689838127767
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330150 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055150 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A048441.P7215598689838127767

/-! ## A048441.P15513613258263056712

`A055150(lt[A330150(n), A005901(n)])`
-/

namespace A048441.P15513613258263056712
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330150 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005901 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055150 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A048441.P15513613258263056712

/-! ## A048441.P10186630143276160213

`A055150(lt[A330150(n), A348396(n+1)])`
-/

namespace A048441.P10186630143276160213
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330150 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348396 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055150 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A048441.P10186630143276160213

/-! ## A048441.P6135641114845589879

`A055150(lt[A132692(n), 7^n])`
-/

namespace A048441.P6135641114845589879
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132692 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055150 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A048441.P6135641114845589879

/-! ## A048441.P7535793152805506024

`A055150(lt[2*A132692(n), A055150(n+1)])`
-/

namespace A048441.P7535793152805506024
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A132692 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055150 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055150 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A048441.P7535793152805506024

/-!
# A048442: Take the first n numbers written in base 11, concatenate them, then convert from base 11 to base 10.

The programs for A048442, there is no canonical definition to state claims against.
-/

/-! ## A048442.P14090820136594042747

`∑[((11^(n+1)-1)/10)^(1-∑{digits}[n, #]+n)]`
-/

namespace A048442.P14090820136594042747
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((11 ^ (n + 1) : ℤ) - 1 : ℚ) / 10) ^ (1 - ((((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => x).sum : ℕ) : ℤ) + (n : ℤ) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A048442.P14090820136594042747

/-! ## A048442.P15739382322643762331

`record[gcd(floor(n/10), A014881(n+1))]`
-/

namespace A048442.P15739382322643762331
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ⌊(n : ℚ) / 10⌋ (A014881 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A048442.P15739382322643762331

/-! ## A048442.P3436554299091676871

`∑[A016123(A002998(n))]`
-/

namespace A048442.P3436554299091676871
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016123 (A002998 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A048442.P3436554299091676871

/-! ## A048442.P16050147206319442067

`∑[A016123(A051022(n))]`
-/

namespace A048442.P16050147206319442067
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016123 (A051022 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A048442.P16050147206319442067

/-! ## A048442.P1505383792126450826

`∑[A016123(A087019(n))]`
-/

namespace A048442.P1505383792126450826
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016123 (A087019 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A048442.P1505383792126450826

/-!
# A048443: Take the first n numbers written in base 12, concatenate them, then convert from base 12 to base 10.

The programs for A048443, there is no canonical definition to state claims against.
-/

/-! ## A048443.P16501844347154754134

`∑[∑[12^n]^gcd(11, n)]`
-/

namespace A048443.P16501844347154754134
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12 ^ n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) ^ Nat.gcd 11 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A048443.P16501844347154754134

/-! ## A048443.P4612162197013606417

`∑[A016125(n)]^gcd(11, n)`
-/

namespace A048443.P4612162197013606417
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016125 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ Nat.gcd 11 n

end

end A048443.P4612162197013606417

/-! ## A048443.P13494250351911458713

`∑[∑[∏{p}[A005051(n), #+1]^n]]`
-/

namespace A048443.P13494250351911458713
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005051 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∏ p ∈ Nat.primeFactors (f3 n).natAbs, (p + 1)) ^ n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A048443.P13494250351911458713

/-! ## A048443.P709353100973682311

`∑[C((12^(n+1)-1)/11, A001987(n+1))]`
-/

namespace A048443.P709353100973682311
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (SequenceMachineLib.roundAway (((12 ^ (n + 1) : ℤ) - 1 : ℚ) / 11)).toNat (A001987 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A048443.P709353100973682311

/-! ## A048443.P11025420671343649449

`∑[A016125(A061378(n))]`
-/

namespace A048443.P11025420671343649449
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016125 (A061378 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A048443.P11025420671343649449

/-!
# A048444: Take the first n numbers written in base 13, concatenate them, then convert from base 13 to base 10.

The programs for A048444, there is no canonical definition to state claims against.
-/

/-! ## A048444.P4179711772930577782

`A014896(C(A051038(n+1), n))`
-/

namespace A048444.P4179711772930577782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014896 (Nat.choose (A051038 (n + 1)).toNat n)

end

end A048444.P4179711772930577782

/-! ## A048444.P1860279831632514572

`∑[record[A091030(A358169(n+2))]]`
-/

namespace A048444.P1860279831632514572
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091030 (A358169 (n + 2)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A048444.P1860279831632514572

/-! ## A048444.P10264500393236895449

`∑[record[A091030(A354598(n+8))]]`
-/

namespace A048444.P10264500393236895449
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091030 (A354598 (n + 8)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A048444.P10264500393236895449

/-! ## A048444.P1195525286526928271

`A014896(n+1)+A000007(A022181(n))`
-/

namespace A048444.P1195525286526928271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014896 (n + 1) + A000007 (A022181 n).toNat

end

end A048444.P1195525286526928271

/-! ## A048444.P7837198944678795346

`A052415(A177888(n))+A014896(n+1)`
-/

namespace A048444.P7837198944678795346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052415 (A177888 n).toNat + A014896 (n + 1)

end

end A048444.P7837198944678795346

/-!
# A048445: Take the first n numbers written in base 14, concatenate them, then convert from base 14 to base 10.

The programs for A048445, there is no canonical definition to state claims against.
-/

/-! ## A048445.P9200147755836282919

`∑[∑[14^A004896(n+1)]]`
-/

namespace A048445.P9200147755836282919
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (14 : ℚ) ^ (A004896 (n + 1) : ℤ)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A048445.P9200147755836282919

/-! ## A048445.P8102783610577226854

`∑[A032826(∑[A000079(n)])]`
-/

namespace A048445.P8102783610577226854
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032826 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A048445.P8102783610577226854

/-! ## A048445.P14939803437252606329

`∑[A032921(∑[A000079(n)])]`
-/

namespace A048445.P14939803437252606329
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032921 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A048445.P14939803437252606329

/-! ## A048445.P17184427651927675666

`∑[A032934(∑[A000079(n)])]`
-/

namespace A048445.P17184427651927675666
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032934 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A048445.P17184427651927675666

/-! ## A048445.P569884041780158862

`∑[A033050(∑[A000079(n)])]`
-/

namespace A048445.P569884041780158862
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033050 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A048445.P569884041780158862

/-!
# A048446: 

The programs for A048446, there is no canonical definition to state claims against.
-/

/-! ## A048446.P15405960627124083050

`A008597(a(n-1))+n+1` with `a(0)=1`
-/

namespace A048446.P15405960627124083050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A008597 (a (n - 1)).toNat + (n + 1 : ℤ)

end

end A048446.P15405960627124083050

/-!
# A048447: Take the first n numbers written in base 16, concatenate them, then convert from base 16 to base 10.

The programs for A048447, there is no canonical definition to state claims against.
-/

/-! ## A048447.P17887918879705842004

`∑[∑[4^A322131(n)]]`
-/

namespace A048447.P17887918879705842004
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 : ℚ) ^ (A322131 n : ℤ)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A048447.P17887918879705842004

/-! ## A048447.P1969968627886107029

`∑[∑[A001025(A055646(n))]]`
-/

namespace A048447.P1969968627886107029
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001025 (A055646 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A048447.P1969968627886107029

/-! ## A048447.P18392840347182802015

`∑[∑[A040056(A000079(n))^n]]`
-/

namespace A048447.P18392840347182802015
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040056 (A000079 n).toNat ^ n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A048447.P18392840347182802015

/-! ## A048447.P8140718630840134320

`∑[∑[A040056(A056040(n))^n]]`
-/

namespace A048447.P8140718630840134320
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040056 (A056040 n).toNat ^ n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A048447.P8140718630840134320

/-! ## A048447.P1713417226388607373

`∑[A033114(A043320(n+1)+n)]`
-/

namespace A048447.P1713417226388607373
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033114 (A043320 (n + 1) + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A048447.P1713417226388607373

/-!
# A048448: a(n) = prime(n-1) + prime(n+1) (assuming prime(i) = 0 for i < 1).

The programs for A048448, the canonical program `A048448.P11536706727464176124` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A048448 has offset 0).

The definition of A048448 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A048448.P17341929097207156609

`A176099(n+1)-char[1]`
-/

namespace A048448.P17341929097207156609
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176099 (n + 1) - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A048448.P17341929097207156609

namespace A048448

/-- `A176099(n+1)-char[1]` -/
def P17341929097207156609.Spec : Prop :=
  ∀ n, P17341929097207156609.a n = A048448 n

end A048448

/-! ## A048448.P1353551400214372386

`A076368(n+1)+A076273(n-char[1])`
-/

namespace A048448.P1353551400214372386
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076368 (n + 1) + A076273 (n - (if ∃ j, f1 j = n then 1 else 0))

end

end A048448.P1353551400214372386

namespace A048448

/-- `A076368(n+1)+A076273(n-char[1])` -/
def P1353551400214372386.Spec : Prop :=
  ∀ n, P1353551400214372386.a n = A048448 n

end A048448

/-! ## A048448.P11536706727464176124

`A000040(n+1)+∑{p}[A158611(n+1), #]`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A048448

/-- `A000040(n+1)+∑{p}[A158611(n+1), #]` -/
def P11536706727464176124.Spec : Prop :=
  ∀ n, P11536706727464176124.a n = A048448 n

theorem P11536706727464176124.correct : P11536706727464176124.Spec := by
  intro n
  simp only [A048448]

end A048448

/-! ## A048448.P12284180437342332206

`A182986(A028310(n))+Δ[A007504(n)]`
-/

namespace A048448.P12284180437342332206
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (A028310 n).toNat + (f1 (n + 1) - f1 n)

end

end A048448.P12284180437342332206

namespace A048448

/-- `A182986(A028310(n))+Δ[A007504(n)]` -/
def P12284180437342332206.Spec : Prop :=
  ∀ n, P12284180437342332206.a n = A048448 n

end A048448

/-! ## A048448.P11509372677836106252

`A182986(A028310(n))+A000040(n+1)`
-/

namespace A048448.P11509372677836106252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (A028310 n).toNat + A000040 (n + 1)

end

end A048448.P11509372677836106252

namespace A048448

/-- `A182986(A028310(n))+A000040(n+1)` -/
def P11509372677836106252.Spec : Prop :=
  ∀ n, P11509372677836106252.a n = A048448 n

end A048448

/-! ## A048448.P15386771811511504579

`A182986(A028310(n))+abs(A273960(n+1))`
-/

namespace A048448.P15386771811511504579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (A028310 n).toNat + |A273960 (n + 1)|

end

end A048448.P15386771811511504579

namespace A048448

/-- `A182986(A028310(n))+abs(A273960(n+1))` -/
def P15386771811511504579.Spec : Prop :=
  ∀ n, P15386771811511504579.a n = A048448 n

end A048448

/-! ## A048448.P8700415638417856387

`A182986(A028310(n))+A138636(n+1)/6`
-/

namespace A048448.P8700415638417856387
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A182986 (A028310 n).toNat : ℚ) + (A138636 (n + 1) : ℚ) / 6

end

end A048448.P8700415638417856387

namespace A048448

/-- `A182986(A028310(n))+A138636(n+1)/6` -/
def P8700415638417856387.Spec : Prop :=
  ∀ n, P8700415638417856387.a n = (A048448 n : ℚ)

end A048448

/-! ## A048448.P5967645832853701305

`A182986(n+2)+A182986(A028310(n))`
-/

namespace A048448.P5967645832853701305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (n + 2) + A182986 (A028310 n).toNat

end

end A048448.P5967645832853701305

namespace A048448

/-- `A182986(n+2)+A182986(A028310(n))` -/
def P5967645832853701305.Spec : Prop :=
  ∀ n, P5967645832853701305.a n = A048448 n

end A048448

/-! ## A048448.P15698892668682342336

`A158611(n+1)+A151800(A040976(n+1))`
-/

namespace A048448.P15698892668682342336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158611 (n + 1) + A151800 (A040976 (n + 1)).toNat

end

end A048448.P15698892668682342336

namespace A048448

/-- `A158611(n+1)+A151800(A040976(n+1))` -/
def P15698892668682342336.Spec : Prop :=
  ∀ n, P15698892668682342336.a n = A048448 n

end A048448

/-! ## A048448.P1616214480276948940

`record[A151800(n+1)+A078773(n+1)]`
-/

namespace A048448.P1616214480276948940
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (n + 1) + A078773 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A048448.P1616214480276948940

namespace A048448

/-- `record[A151800(n+1)+A078773(n+1)]` -/
def P1616214480276948940.Spec : Prop :=
  ∀ n, P1616214480276948940.a n = A048448 n

end A048448

/-! ## A048448.P7931016294198832563

`record[A326041(A064989(n+1))+A000010(n+1)]`
-/

namespace A048448.P7931016294198832563
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326041 (A064989 (n + 1)).toNat + A000010 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A048448.P7931016294198832563

namespace A048448

/-- `record[A326041(A064989(n+1))+A000010(n+1)]` -/
def P7931016294198832563.Spec : Prop :=
  ∀ n, P7931016294198832563.a n = A048448 n

end A048448

/-! ## A048448.P166205617228269005

`A158611(n+1)+A007918(A000040(n+1)-1)`
-/

namespace A048448.P166205617228269005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158611 (n + 1) + A007918 (A000040 (n + 1) - 1).toNat

end

end A048448.P166205617228269005

namespace A048448

/-- `A158611(n+1)+A007918(A000040(n+1)-1)` -/
def P166205617228269005.Spec : Prop :=
  ∀ n, P166205617228269005.a n = A048448 n

end A048448

/-! ## A048448.P11339234340378076328

`record[A117366(n+1)+A023889(A250470(n+1))]`
-/

namespace A048448.P11339234340378076328
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117366 (n + 1) + A023889 (A250470 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A048448.P11339234340378076328

namespace A048448

/-- `record[A117366(n+1)+A023889(A250470(n+1))]` -/
def P11339234340378076328.Spec : Prop :=
  ∀ n, P11339234340378076328.a n = A048448 n

end A048448

/-! ## A048448.P16802863064002981489

`A047844(A133263(n))`
-/

namespace A048448.P16802863064002981489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047844 (A133263 n).toNat

end

end A048448.P16802863064002981489

namespace A048448

/-- `A047844(A133263(n))` -/
def P16802863064002981489.Spec : Prop :=
  ∀ n, P16802863064002981489.a n = A048448 n

end A048448

/-! ## A048448.P5618485342293039060

`A047844(A238531(n+1))`
-/

namespace A048448.P5618485342293039060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047844 (A238531 (n + 1)).toNat

end

end A048448.P5618485342293039060

namespace A048448

/-- `A047844(A238531(n+1))` -/
def P5618485342293039060.Spec : Prop :=
  ∀ n, P5618485342293039060.a n = A048448 n

end A048448

/-!
# A048449: Starting from generation 2 add previous and next term yielding generation 3.

The programs for A048449, the canonical program `A048449.P12200641501554695606` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A048449 has offset 0).

The definition of A048449 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A048449.P10486465794202551086

`A004139(n+1)+A048448(n)+Δ[A007504(n)]`
-/

namespace A048449.P10486465794202551086
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (n + 1) + (A048448 n + (f1 (n + 1) - f1 n))

end

end A048449.P10486465794202551086

namespace A048449

/-- `A004139(n+1)+A048448(n)+Δ[A007504(n)]` -/
def P10486465794202551086.Spec : Prop :=
  ∀ n, P10486465794202551086.a n = A048449 n

end A048449

/-! ## A048449.P6673321998005368879

`A004139(n+1)+A048448(n)+p?[A259153(n)]`
-/

namespace A048449.P6673321998005368879
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259153 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (n + 1) + (A048448 n + f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A048449.P6673321998005368879

namespace A048449

/-- `A004139(n+1)+A048448(n)+p?[A259153(n)]` -/
def P6673321998005368879.Spec : Prop :=
  ∀ n, P6673321998005368879.a n = A048449 n

end A048449

/-! ## A048449.P12200641501554695606

`A000040(n+1)+A048448(n)+A004139(n+1)`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A048449

/-- `A000040(n+1)+A048448(n)+A004139(n+1)` -/
def P12200641501554695606.Spec : Prop :=
  ∀ n, P12200641501554695606.a n = A048449 n

theorem P12200641501554695606.correct : P12200641501554695606.Spec := by
  intro n
  simp only [A048449]

end A048449

/-! ## A048449.P1314070843291092308

`A004139(n+1)+A048448(n)+∑[A054541(n+1)]`
-/

namespace A048449.P1314070843291092308
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054541 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (n + 1) + (A048448 n + ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A048449.P1314070843291092308

namespace A048449

/-- `A004139(n+1)+A048448(n)+∑[A054541(n+1)]` -/
def P1314070843291092308.Spec : Prop :=
  ∀ n, P1314070843291092308.a n = A048449 n

end A048449

/-! ## A048449.P3631928517958363468

`A048448(n)+A004139(n+1)+A040976(n+1)+2`
-/

namespace A048449.P3631928517958363468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048448 n + (A004139 (n + 1) + (A040976 (n + 1) + 2))

end

end A048449.P3631928517958363468

namespace A048449

/-- `A048448(n)+A004139(n+1)+A040976(n+1)+2` -/
def P3631928517958363468.Spec : Prop :=
  ∀ n, P3631928517958363468.a n = A048449 n

theorem P3631928517958363468.correct : P3631928517958363468.Spec := by
  intro n
  simp only [A048449, Nat.add_sub_cancel, A048449.P3631928517958363468.a, A048449.P12200641501554695606.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A004139, A004139.P7741252772910998599.f1, A004139.P7741252772910998599.a, A040976, A040976.P11599754272797435513.a, A048448, A048448.P11536706727464176124.f1, A048448.P11536706727464176124.a, A158611, A158611.P9275629407611603775.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A048449

/-! ## A048449.P10619228923837995460

`A048448(n)+A004139(n+1)+A001748(n+1)/3`
-/

namespace A048449.P10619228923837995460
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048448 n : ℚ) + ((A004139 (n + 1) : ℚ) + (A001748 (n + 1) : ℚ) / 3)

end

end A048449.P10619228923837995460

namespace A048449

/-- `A048448(n)+A004139(n+1)+A001748(n+1)/3` -/
def P10619228923837995460.Spec : Prop :=
  ∀ n, P10619228923837995460.a n = (A048449 n : ℚ)

theorem P10619228923837995460.correct : P10619228923837995460.Spec := by
  intro n
  simp only [A048449, Nat.add_sub_cancel, A048449.P10619228923837995460.a, A048449.P12200641501554695606.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A001748, A001748.P16019639290970068825.a, A004139, A004139.P7741252772910998599.f1, A004139.P7741252772910998599.a, A048448, A048448.P11536706727464176124.f1, A048448.P11536706727464176124.a, A158611, A158611.P9275629407611603775.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A048449

/-! ## A048449.P1099943473569090651

`A048448(n)+A004139(n+1)+A014692(n+1)+n`
-/

namespace A048449.P1099943473569090651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048448 n + (A004139 (n + 1) + (A014692 (n + 1) + (n : ℤ)))

end

end A048449.P1099943473569090651

namespace A048449

/-- `A048448(n)+A004139(n+1)+A014692(n+1)+n` -/
def P1099943473569090651.Spec : Prop :=
  ∀ n, P1099943473569090651.a n = A048449 n

end A048449

/-! ## A048449.P7511900890957367116

`p?[A018252(n+1)-7]+A048448(n)+A004139(n+1)`
-/

namespace A048449.P7511900890957367116
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1) - 7

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + (A048448 n + A004139 (n + 1))

end

end A048449.P7511900890957367116

namespace A048449

/-- `p?[A018252(n+1)-7]+A048448(n)+A004139(n+1)` -/
def P7511900890957367116.Spec : Prop :=
  ∀ n, P7511900890957367116.a n = A048449 n

end A048449

/-! ## A048449.P5150011270311068464

`A047844(∑[n+2]+4)`
-/

namespace A048449.P5150011270311068464
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047844 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A048449.P5150011270311068464

namespace A048449

/-- `A047844(∑[n+2]+4)` -/
def P5150011270311068464.Spec : Prop :=
  ∀ n, P5150011270311068464.a n = A048449 n

end A048449

/-! ## A048449.P13860267298493992969

`record[A047844(9-∑[3-n])]`
-/

namespace A048449.P13860267298493992969
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - (n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047844 (9 - ∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A048449.P13860267298493992969

namespace A048449

/-- `record[A047844(9-∑[3-n])]` -/
def P13860267298493992969.Spec : Prop :=
  ∀ n, P13860267298493992969.a n = A048449 n

end A048449

/-! ## A048449.P17542982143012344191

`A047844(A167614(n+1))%A001535(n)`
-/

namespace A048449.P17542982143012344191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A047844 (A167614 (n + 1)).toNat) (A001535 n)

end

end A048449.P17542982143012344191

namespace A048449

/-- `A047844(A167614(n+1))%A001535(n)` -/
def P17542982143012344191.Spec : Prop :=
  ∀ n, P17542982143012344191.a n = A048449 n

end A048449

/-! ## A048449.P10782500888390669184

`or(A000038(n), A047844(A167614(n+1)))`
-/

namespace A048449.P10782500888390669184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000038 n) (A047844 (A167614 (n + 1)).toNat)

end

end A048449.P10782500888390669184

namespace A048449

/-- `or(A000038(n), A047844(A167614(n+1)))` -/
def P10782500888390669184.Spec : Prop :=
  ∀ n, P10782500888390669184.a n = A048449 n

end A048449

/-! ## A048449.P69791053807060340

`A047844(A046691(n)+7)%A047827(n+1)`
-/

namespace A048449.P69791053807060340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A047844 (A046691 n + 7).toNat) (A047827 (n + 1))

end

end A048449.P69791053807060340

namespace A048449

/-- `A047844(A046691(n)+7)%A047827(n+1)` -/
def P69791053807060340.Spec : Prop :=
  ∀ n, P69791053807060340.a n = A048449 n

end A048449

/-!
# A048450: Starting from generation 3 add previous and next term yielding generation 4.

The programs for A048450, there is no canonical definition to state claims against.
-/

/-! ## A048450.P5908200306649508595

`A047844(A052905(n)+9)`
-/

namespace A048450.P5908200306649508595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047844 (A052905 n + 9).toNat

end

end A048450.P5908200306649508595

/-! ## A048450.P9117143498894093946

`A047844(A055999(n)+10)`
-/

namespace A048450.P9117143498894093946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047844 (A055999 n + 10).toNat

end

end A048450.P9117143498894093946

/-! ## A048450.P2851753376646243530

`A047844(A167614(n+2)+1)`
-/

namespace A048450.P2851753376646243530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047844 (A167614 (n + 2) + 1).toNat

end

end A048450.P2851753376646243530

/-! ## A048450.P644922066086601900

`A047844(A000124(n+3)+3)`
-/

namespace A048450.P644922066086601900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047844 (A000124 (n + 3) + 3).toNat

end

end A048450.P644922066086601900

/-! ## A048450.P15359100843133889435

`A047844(A167487(n+2)-3)`
-/

namespace A048450.P15359100843133889435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047844 (A167487 (n + 2) - 3).toNat

end

end A048450.P15359100843133889435

/-! ## A048450.P5872292928471554700

`A047844(A000096(n+2)+5)`
-/

namespace A048450.P5872292928471554700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047844 (A000096 (n + 2) + 5).toNat

end

end A048450.P5872292928471554700

/-! ## A048450.P7525751726263270736

`A047844(A000217(n+3)+4)`
-/

namespace A048450.P7525751726263270736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047844 (A000217 (n + 3) + 4).toNat

end

end A048450.P7525751726263270736

/-!
# A048451: Starting from generation 4 add previous and next term yielding generation 5.

The programs for A048451, there is no canonical definition to state claims against.
-/

/-! ## A048451.P16345922039458308493

`A047844(A167499(n+3))`
-/

namespace A048451.P16345922039458308493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047844 (A167499 (n + 3)).toNat

end

end A048451.P16345922039458308493

/-! ## A048451.P6615863352889669989

`A047844(A155212(n)+13)`
-/

namespace A048451.P6615863352889669989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047844 (A155212 n + 13).toNat

end

end A048451.P6615863352889669989

/-! ## A048451.P8127092559514184169

`A047844(A056000(n)+15)`
-/

namespace A048451.P8127092559514184169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047844 (A056000 n + 15).toNat

end

end A048451.P8127092559514184169

/-! ## A048451.P11600517849713432625

`A047844(A000096(n+3)+6)`
-/

namespace A048451.P11600517849713432625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047844 (A000096 (n + 3) + 6).toNat

end

end A048451.P11600517849713432625

/-! ## A048451.P6837939354701445246

`A047844(A000217(n+4)+5)`
-/

namespace A048451.P6837939354701445246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047844 (A000217 (n + 4) + 5).toNat

end

end A048451.P6837939354701445246

/-! ## A048451.P1802919345831115701

`A047844(A000124(n+5)-(n+1))`
-/

namespace A048451.P1802919345831115701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047844 (A000124 (n + 5) - (n + 1 : ℤ)).toNat

end

end A048451.P1802919345831115701

/-!
# A048452: Starting from generation 5 add previous and next term yielding generation 6.

The programs for A048452, there is no canonical definition to state claims against.
-/

/-! ## A048452.P9750021470795927880

`A047844(A056115(n)+21)`
-/

namespace A048452.P9750021470795927880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047844 (A056115 n + 21).toNat

end

end A048452.P9750021470795927880

/-! ## A048452.P12415859164862184935

`A047844(A000124(n+5)+5)`
-/

namespace A048452.P12415859164862184935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047844 (A000124 (n + 5) + 5).toNat

end

end A048452.P12415859164862184935

/-! ## A048452.P15401603068847669733

`A047844(A000217(n+5)+6)`
-/

namespace A048452.P15401603068847669733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047844 (A000217 (n + 5) + 6).toNat

end

end A048452.P15401603068847669733

/-! ## A048452.P4686211109756322755

`A047844(A027379(n+3)+9)`
-/

namespace A048452.P4686211109756322755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047844 (A027379 (n + 3) + 9).toNat

end

end A048452.P4686211109756322755

/-! ## A048452.P14787446783781407313

`A047844(A055999(n+4)-(2*n+1))`
-/

namespace A048452.P14787446783781407313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047844 (A055999 (n + 4) - (2 * n + 1 : ℤ)).toNat

end

end A048452.P14787446783781407313

/-!
# A048453: Starting from generation 6 add previous and next term yielding generation 7.

The programs for A048453, there is no canonical definition to state claims against.
-/

/-! ## A048453.P1386343910621798174

`A047844(A167487(n+5))`
-/

namespace A048453.P1386343910621798174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047844 (A167487 (n + 5)).toNat

end

end A048453.P1386343910621798174

/-! ## A048453.P10895288797945444244

`A047844(A056119(n)+28)`
-/

namespace A048453.P10895288797945444244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047844 (A056119 n + 28).toNat

end

end A048453.P10895288797945444244

/-! ## A048453.P14779500134622962767

`A047844(A167499(n+5)+2)`
-/

namespace A048453.P14779500134622962767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047844 (A167499 (n + 5) + 2).toNat

end

end A048453.P14779500134622962767

/-! ## A048453.P471193263456988702

`A047844(A000124(n+6)+6)`
-/

namespace A048453.P471193263456988702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047844 (A000124 (n + 6) + 6).toNat

end

end A048453.P471193263456988702

/-! ## A048453.P7633609242135262045

`A047844(A000096(n+5)+8)`
-/

namespace A048453.P7633609242135262045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047844 (A000096 (n + 5) + 8).toNat

end

end A048453.P7633609242135262045

/-!
# A048454: Starting from generation 7 add previous and next term yielding generation 8.

The programs for A048454, there is no canonical definition to state claims against.
-/

/-! ## A048454.P9075731690961589371

`A047844(A167487(n+6)+1)`
-/

namespace A048454.P9075731690961589371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047844 (A167487 (n + 6) + 1).toNat

end

end A048454.P9075731690961589371

/-! ## A048454.P11248432763537297830

`A047844(A167499(n+6)+3)`
-/

namespace A048454.P11248432763537297830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047844 (A167499 (n + 6) + 3).toNat

end

end A048454.P11248432763537297830

/-! ## A048454.P12876656374698364832

`A047844(A133263(n+7)+6)`
-/

namespace A048454.P12876656374698364832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047844 (A133263 (n + 7) + 6).toNat

end

end A048454.P12876656374698364832

/-! ## A048454.P4590971022555243094

`A047844(A000096(n+6)+9)`
-/

namespace A048454.P4590971022555243094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047844 (A000096 (n + 6) + 9).toNat

end

end A048454.P4590971022555243094

/-! ## A048454.P5713249797568955793

`A047844(A000217(n+7)+8)`
-/

namespace A048454.P5713249797568955793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047844 (A000217 (n + 7) + 8).toNat

end

end A048454.P5713249797568955793

/-!
# A048455: Starting from generation 8 add previous and next term yielding generation 9.

The programs for A048455, there is no canonical definition to state claims against.
-/

/-! ## A048455.P2050807549810401817

`A047844(A000124(n+8)+8)`
-/

namespace A048455.P2050807549810401817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047844 (A000124 (n + 8) + 8).toNat

end

end A048455.P2050807549810401817

/-! ## A048455.P13232608288359821605

`A047844(A000217(n+8)+9)`
-/

namespace A048455.P13232608288359821605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047844 (A000217 (n + 8) + 9).toNat

end

end A048455.P13232608288359821605

/-! ## A048455.P8357156131849704497

`A047844(A027379(n+6)+12)`
-/

namespace A048455.P8357156131849704497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047844 (A027379 (n + 6) + 12).toNat

end

end A048455.P8357156131849704497

/-! ## A048455.P15143391905551103794

`A047844(A055998(n+6)+12)`
-/

namespace A048455.P15143391905551103794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047844 (A055998 (n + 6) + 12).toNat

end

end A048455.P15143391905551103794

/-! ## A048455.P1871571677501046425

`A047844(A046691(n+8)-5-A005408(n))`
-/

namespace A048455.P1871571677501046425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047844 (A046691 (n + 8) - 5 - A005408 n).toNat

end

end A048455.P1871571677501046425

/-!
# A048456: First terms from generation 1 onwards.

The programs for A048456, there is no canonical definition to state claims against.
-/

/-! ## A048456.P13611189145960799551

`A047844(∑[n+1])`
-/

namespace A048456.P13611189145960799551
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047844 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A048456.P13611189145960799551

/-! ## A048456.P6809661789998144030

`record[A047844(A066182(n+1))]`
-/

namespace A048456.P6809661789998144030
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047844 (A066182 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A048456.P6809661789998144030

/-! ## A048456.P11551684108655004669

`record[A047844(A038722(n+1))]`
-/

namespace A048456.P11551684108655004669
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047844 (A038722 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A048456.P11551684108655004669

/-! ## A048456.P4136586046754834632

`record[A047844(n+1)*A115952(n)]`
-/

namespace A048456.P4136586046754834632
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047844 (n + 1) * A115952 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A048456.P4136586046754834632

/-! ## A048456.P8628116425854332140

`record[A047844(n+1)/A117317(n)]`
-/

namespace A048456.P8628116425854332140
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A047844 (n + 1) : ℚ) / (A117317 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A048456.P8628116425854332140

/-! ## A048456.P10843692100193239270

`record[A047844(n+1)/A122075(n)]`
-/

namespace A048456.P10843692100193239270
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A047844 (n + 1) : ℚ) / (A122075 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A048456.P10843692100193239270

/-! ## A048456.P4249060012259303510

`record[A047844(n+1)/A135278(n)]`
-/

namespace A048456.P4249060012259303510
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A047844 (n + 1) : ℚ) / (A135278 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A048456.P4249060012259303510

/-! ## A048456.P6056957349165728708

`record[gcd(A025581(n), A047844(n+1))]`
-/

namespace A048456.P6056957349165728708
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A025581 n) (A047844 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A048456.P6056957349165728708

/-! ## A048456.P2491340315270917233

`record[A047844(n+1)/A280580(n)]`
-/

namespace A048456.P2491340315270917233
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A047844 (n + 1) : ℚ) / (A280580 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A048456.P2491340315270917233

/-!
# A048457: Last odd terms from generation 2 onwards.

The programs for A048457, there is no canonical definition to state claims against.
-/

/-! ## A048457.P6027445495810229538

`A047844((n+1)²+(n+2)²)`
-/

namespace A048457.P6027445495810229538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047844 ((n + 1) ^ 2 + (n + 2) ^ 2)

end

end A048457.P6027445495810229538

/-! ## A048457.P9329501402924526375

`record[A047844(A001844(val(n+1, 2)+1))]`
-/

namespace A048457.P9329501402924526375
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047844 (A001844 (SequenceMachineLib.valuation (n + 1) 2 + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A048457.P9329501402924526375

/-!
# A048458: 'Prime last odd terms' from generation 2 onwards.

The programs for A048458, there is no canonical definition to state claims against.
-/

/-! ## A048458.P14401914171212577138

`A048457(A048459(n+1)-1)`
-/

namespace A048458.P14401914171212577138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048457 (A048459 (n + 1) - 1).toNat

end

end A048458.P14401914171212577138

/-! ## A048458.P13572768671802851214

`∩[A048457(n+1), A048465(n+1)]`
-/

namespace A048458.P13572768671802851214
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048457 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048465 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A048458.P13572768671802851214

/-! ## A048458.P10276127388107502172

`∩[A047844((n+1)²+(n+2)²), A048465(n+1)]`
-/

namespace A048458.P10276127388107502172
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047844 ((n + 1) ^ 2 + (n + 2) ^ 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048465 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A048458.P10276127388107502172

/-!
# A048460: Total of odd numbers in the generations from 2 onwards.

The programs for A048460, the canonical program `A048460.P728019189363879930` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A048460 has offset 2).

The definition of A048460 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A105321, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A048460.P728019189363879930

`A105321(n+2)/2`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A048460

/-- `A105321(n+2)/2` -/
def P728019189363879930.Spec : Prop :=
  ∀ n, P728019189363879930.a n = (A048460 (n + 2) : ℚ)

end A048460

/-! ## A048460.P16884199159959666607

`A048896(n+1)+A048896(n)`
-/

namespace A048460.P16884199159959666607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048896 (n + 1) + A048896 n

end

end A048460.P16884199159959666607

namespace A048460

/-- `A048896(n+1)+A048896(n)` -/
def P16884199159959666607.Spec : Prop :=
  ∀ n, P16884199159959666607.a n = A048460 (n + 2)

end A048460

/-! ## A048460.P2860749967187943672

`A001316(A025480(n))+A001316(A025480(n+1))`
-/

namespace A048460.P2860749967187943672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 (A025480 n).toNat + A001316 (A025480 (n + 1)).toNat

end

end A048460.P2860749967187943672

namespace A048460

/-- `A001316(A025480(n))+A001316(A025480(n+1))` -/
def P2860749967187943672.Spec : Prop :=
  ∀ n, P2860749967187943672.a n = A048460 (n + 2)

end A048460

/-! ## A048460.P4994096278667906425

`A001316(A071055(n))+A001316(A071055(n+1))`
-/

namespace A048460.P4994096278667906425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 (A071055 n).toNat + A001316 (A071055 (n + 1)).toNat

end

end A048460.P4994096278667906425

namespace A048460

/-- `A001316(A071055(n))+A001316(A071055(n+1))` -/
def P4994096278667906425.Spec : Prop :=
  ∀ n, P4994096278667906425.a n = A048460 (n + 2)

end A048460

/-! ## A048460.P5880686576876158113

`A060632(A000265(n+1))+A060632(A000265(n+2))`
-/

namespace A048460.P5880686576876158113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060632 (A000265 (n + 1)).toNat + A060632 (A000265 (n + 2)).toNat

end

end A048460.P5880686576876158113

namespace A048460

/-- `A060632(A000265(n+1))+A060632(A000265(n+2))` -/
def P5880686576876158113.Spec : Prop :=
  ∀ n, P5880686576876158113.a n = A048460 (n + 2)

end A048460

/-! ## A048460.P3010862610523312585

`Δ[A173537(n+2)]`
-/

namespace A048460.P3010862610523312585
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173537 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A048460.P3010862610523312585

namespace A048460

/-- `Δ[A173537(n+2)]` -/
def P3010862610523312585.Spec : Prop :=
  ∀ n, P3010862610523312585.a n = A048460 (n + 2)

end A048460

/-! ## A048460.P17897729385053232042

`A193494(n+2)-A193494(n)`
-/

namespace A048460.P17897729385053232042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193494 (n + 2) - A193494 n

end

end A048460.P17897729385053232042

namespace A048460

/-- `A193494(n+2)-A193494(n)` -/
def P17897729385053232042.Spec : Prop :=
  ∀ n, P17897729385053232042.a n = A048460 (n + 2)

end A048460

/-! ## A048460.P11983701360006475843

`Δ[A193494(n+1)+A193494(n)]`
-/

namespace A048460.P11983701360006475843
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193494 (n + 1) + A193494 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A048460.P11983701360006475843

namespace A048460

/-- `Δ[A193494(n+1)+A193494(n)]` -/
def P11983701360006475843.Spec : Prop :=
  ∀ n, P11983701360006475843.a n = A048460 (n + 2)

end A048460

/-! ## A048460.P16675088183388982999

`A173537(n+3)-A173537(n+2)`
-/

namespace A048460.P16675088183388982999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173537 (n + 3) - A173537 (n + 2)

end

end A048460.P16675088183388982999

namespace A048460

/-- `A173537(n+3)-A173537(n+2)` -/
def P16675088183388982999.Spec : Prop :=
  ∀ n, P16675088183388982999.a n = A048460 (n + 2)

end A048460

/-! ## A048460.P15561069613809829425

`A001316(n+1)+A151930(n+1)/2`
-/

namespace A048460.P15561069613809829425
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001316 (n + 1) : ℚ) + (A151930 (n + 1) : ℚ) / 2

end

end A048460.P15561069613809829425

namespace A048460

/-- `A001316(n+1)+A151930(n+1)/2` -/
def P15561069613809829425.Spec : Prop :=
  ∀ n, P15561069613809829425.a n = (A048460 (n + 2) : ℚ)

end A048460

/-! ## A048460.P5470734300529108612

`A000079(A048881(n))+A000079(A048881(n+1))`
-/

namespace A048460.P5470734300529108612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A048881 n).toNat + A000079 (A048881 (n + 1)).toNat

end

end A048460.P5470734300529108612

namespace A048460

/-- `A000079(A048881(n))+A000079(A048881(n+1))` -/
def P5470734300529108612.Spec : Prop :=
  ∀ n, P5470734300529108612.a n = A048460 (n + 2)

end A048460

/-! ## A048460.P9830972773197975064

`Δ[A173522(n+2)/2]`
-/

namespace A048460.P9830972773197975064
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A173522 (n + 2) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A048460.P9830972773197975064

namespace A048460

/-- `Δ[A173522(n+2)/2]` -/
def P9830972773197975064.Spec : Prop :=
  ∀ n, P9830972773197975064.a n = (A048460 (n + 2) : ℚ)

end A048460

/-! ## A048460.P9043408467103606908

`A001281(A105321(n+2))`
-/

namespace A048460.P9043408467103606908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A105321 (n + 2)).toNat

end

end A048460.P9043408467103606908

namespace A048460

/-- `A001281(A105321(n+2))` -/
def P9043408467103606908.Spec : Prop :=
  ∀ n, P9043408467103606908.a n = A048460 (n + 2)

end A048460

/-! ## A048460.P7364669337388859078

`A004525(Δ[A173522(n+2)])`
-/

namespace A048460.P7364669337388859078
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173522 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (f1 (n + 1) - f1 n).toNat

end

end A048460.P7364669337388859078

namespace A048460

/-- `A004525(Δ[A173522(n+2)])` -/
def P7364669337388859078.Spec : Prop :=
  ∀ n, P7364669337388859078.a n = A048460 (n + 2)

end A048460

/-! ## A048460.P1436629415587249708

`A004526(Δ[A173522(n+2)])`
-/

namespace A048460.P1436629415587249708
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173522 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (f1 (n + 1) - f1 n).toNat

end

end A048460.P1436629415587249708

namespace A048460

/-- `A004526(Δ[A173522(n+2)])` -/
def P1436629415587249708.Spec : Prop :=
  ∀ n, P1436629415587249708.a n = A048460 (n + 2)

end A048460

/-! ## A048460.P645878366654987293

`A026741(Δ[A173522(n+2)])`
-/

namespace A048460.P645878366654987293
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173522 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (f1 (n + 1) - f1 n).toNat

end

end A048460.P645878366654987293

namespace A048460

/-- `A026741(Δ[A173522(n+2)])` -/
def P645878366654987293.Spec : Prop :=
  ∀ n, P645878366654987293.a n = A048460 (n + 2)

end A048460

/-! ## A048460.P16408833290227525804

`A220466(A105321(n+2)-1)`
-/

namespace A048460.P16408833290227525804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220466 (A105321 (n + 2) - 1).toNat

end

end A048460.P16408833290227525804

namespace A048460

/-- `A220466(A105321(n+2)-1)` -/
def P16408833290227525804.Spec : Prop :=
  ∀ n, P16408833290227525804.a n = A048460 (n + 2)

end A048460

/-! ## A048460.P8446446208478720395

`A243036(2*(n+1))+A243036(n+2)`
-/

namespace A048460.P8446446208478720395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243036 (2 * (n + 1)) + A243036 (n + 2)

end

end A048460.P8446446208478720395

namespace A048460

/-- `A243036(2*(n+1))+A243036(n+2)` -/
def P8446446208478720395.Spec : Prop :=
  ∀ n, P8446446208478720395.a n = A048460 (n + 2)

end A048460

/-! ## A048460.P13339027942355735095

`A001316(A053645(2*(n+1)))+A001316(A053645(n+2))`
-/

namespace A048460.P13339027942355735095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 (A053645 (2 * (n + 1))).toNat + A001316 (A053645 (n + 2)).toNat

end

end A048460.P13339027942355735095

namespace A048460

/-- `A001316(A053645(2*(n+1)))+A001316(A053645(n+2))` -/
def P13339027942355735095.Spec : Prop :=
  ∀ n, P13339027942355735095.a n = A048460 (n + 2)

end A048460

/-! ## A048460.P9833399806597291512

`A001316(A129760(2*(n+1)))+A001316(A129760(n+2))`
-/

namespace A048460.P9833399806597291512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 (A129760 (2 * (n + 1))).toNat + A001316 (A129760 (n + 2)).toNat

end

end A048460.P9833399806597291512

namespace A048460

/-- `A001316(A129760(2*(n+1)))+A001316(A129760(n+2))` -/
def P9833399806597291512.Spec : Prop :=
  ∀ n, P9833399806597291512.a n = A048460 (n + 2)

end A048460

/-!
# A048461: Numbers in sorted order taken from all generations.

The programs for A048461, there is no canonical definition to state claims against.
-/

/-! ## A048461.P11110112786609445361

`eq[char[A047844(n+1)], A178334(n+1)]`
-/

namespace A048461.P11110112786609445361
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047844 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178334 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A048461.P11110112786609445361

/-! ## A048461.P517264072701007991

`eq[char[A047844(n+1)], A214956(n+1)]`
-/

namespace A048461.P517264072701007991
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047844 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214956 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A048461.P517264072701007991

/-! ## A048461.P3675267858971275283

`eq[A001221(A306709(2*(n+2))), A306734(n)]`
-/

namespace A048461.P3675267858971275283
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A306709 (2 * (n + 2))).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306734 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A048461.P3675267858971275283

/-! ## A048461.P3032954883151590897

`eq[2, A169611(A319056(n))]`
-/

namespace A048461.P3032954883151590897
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169611 (A319056 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A048461.P3032954883151590897

/-! ## A048461.P11186839940021235790

`∪[p?[A243903(2*n+5)], A048448(n)]`
-/

namespace A048461.P11186839940021235790
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243903 (2 * n + 5)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048448 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

end

end A048461.P11186839940021235790

/-!
# A048462: Odd numbers in sorted order from generation 2 onwards.

The programs for A048462, there is no canonical definition to state claims against.
-/

/-! ## A048462.P6775582992475351807

`A249370(∑[∑[A328572(n)]])`
-/

namespace A048462.P6775582992475351807
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328572 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249370 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A048462.P6775582992475351807

/-! ## A048462.P447171992184459916

`A336620(A193739(n+2)+n²)`
-/

namespace A048462.P447171992184459916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336620 (A193739 (n + 2) + (n ^ 2 : ℤ)).toNat

end

end A048462.P447171992184459916

/-! ## A048462.P1678732192873100681

`A249370(A303827(n+3)+n²)`
-/

namespace A048462.P1678732192873100681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249370 (A303827 (n + 3) + (n ^ 2 : ℤ)).toNat

end

end A048462.P1678732192873100681

/-!
# A048463: Smallest prime occurring in generation n (0 if none).

The programs for A048463, there is no canonical definition to state claims against.
-/

/-! ## A048463.P12554886282024451070

`p?[A305462(p?[round(8*n/7)]-n)]`
-/

namespace A048463.P12554886282024451070
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (8 * ((n : ℚ) / 7))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305462 (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n) - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A048463.P12554886282024451070

/-! ## A048463.P6019857936369421181

`A371694(A019464(n+1))`
-/

namespace A048463.P6019857936369421181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371694 (A019464 (n + 1)).toNat

end

end A048463.P6019857936369421181

/-!
# A048464: Indices of primefree generations.

The programs for A048464, there is no canonical definition to state claims against.
-/

/-! ## A048464.P3877523550576621779

`eq[0, A048466(n+2)]+2`
-/

namespace A048464.P3877523550576621779
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048466 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A048464.P3877523550576621779

/-! ## A048464.P4062279164979325171

`lt[A048466(round(acot(n)+n)), 1]`
-/

namespace A048464.P4062279164979325171
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048466 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A048464.P4062279164979325171

/-! ## A048464.P12713532957709811117

`eq[0, A048466(A233583(n+1))]`
-/

namespace A048464.P12713532957709811117
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048466 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A048464.P12713532957709811117

/-! ## A048464.P13783016121963964573

`A009056(eq[0, A048466(n+2)])`
-/

namespace A048464.P13783016121963964573
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048466 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009056 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A048464.P13783016121963964573

/-! ## A048464.P3380730708034535041

`A009056(lt[A048466(n+2), 1])`
-/

namespace A048464.P3380730708034535041
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048466 (n + 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009056 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A048464.P3380730708034535041

/-! ## A048464.P2684741858272319052

`eq[0, A048463(n)]+1`
-/

namespace A048464.P2684741858272319052
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048463 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A048464.P2684741858272319052

/-! ## A048464.P16065622150580610212

`A020725(eq[0, A048463(n)])`
-/

namespace A048464.P16065622150580610212
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048463 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A048464.P16065622150580610212

/-! ## A048464.P13160584469293642166

`A008619(2*eq[0, A048463(n)])`
-/

namespace A048464.P13160584469293642166
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048463 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (2 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A048464.P13160584469293642166

/-! ## A048464.P5278488011734907305

`eq[A000007(n), A048463(abs(1-n))]`
-/

namespace A048464.P5278488011734907305
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048463 |1 - (n : ℤ)|.toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A048464.P5278488011734907305

/-!
# A048465: Distinct primes in sorted order from generation 2 onwards.

The programs for A048465, there is no canonical definition to state claims against.
-/

/-! ## A048465.P6816492631786068825

`p?[A048462(n)]`
-/

namespace A048465.P6816492631786068825
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048462 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A048465.P6816492631786068825

/-! ## A048465.P18256915707521082545

`∩[A015919(n+1), A048462(n)]`
-/

namespace A048465.P18256915707521082545
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015919 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048462 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A048465.P18256915707521082545

/-! ## A048465.P1674093088054590669

`∩[A048462(n), A066720(n+1)]`
-/

namespace A048465.P1674093088054590669
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048462 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066720 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A048465.P1674093088054590669

/-! ## A048465.P14548227326049749038

`filter[A048462(n), A010051(#)]`
-/

namespace A048465.P14548227326049749038
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048462 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A048465.P14548227326049749038

/-! ## A048465.P5784375510885166799

`filter[A048462(n), A358672(#)]`
-/

namespace A048465.P5784375510885166799
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048462 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A358672 (f1 j).toNat = 1) n)

end

end A048465.P5784375510885166799

/-!
# A048467: a(n) = T(6,n), array T given by A047858.

The programs for A048467, the canonical program `A048467.P482252860779251471` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A048467 has offset 0).

The definition of A048467 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A048467.P482252860779251471

`2^(n-1)*(n+12)-5`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A048467

/-- `2^(n-1)*(n+12)-5` -/
def P482252860779251471.Spec : Prop :=
  ∀ n, P482252860779251471.a n = (A048467 n : ℚ)

end A048467

/-! ## A048467.P14505467970916636797

`∑[ogf((1+3x-9x^2)/(1-4x+4x^2))]`
-/

namespace A048467.P14505467970916636797
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 3, -9] [1, -4, 4] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A048467.P14505467970916636797

namespace A048467

/-- `∑[ogf((1+3x-9x^2)/(1-4x+4x^2))]` -/
def P14505467970916636797.Spec : Prop :=
  ∀ n, P14505467970916636797.a n = A048467 n

end A048467

/-! ## A048467.P351753678713082632

`ogf((1+3x-9x^2)/(1-5x+8x^2-4x^3))`
-/

namespace A048467.P351753678713082632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 3, -9] [1, -5, 8, -4] n

end

end A048467.P351753678713082632

namespace A048467

/-- `ogf((1+3x-9x^2)/(1-5x+8x^2-4x^3))` -/
def P351753678713082632.Spec : Prop :=
  ∀ n, P351753678713082632.a n = A048467 n

end A048467

/-! ## A048467.P11091416503586402443

`abs(4*(a(n-1)-a(n-2))-5)` with `a(0)=1, a(1)=8`
-/

namespace A048467.P11091416503586402443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 8] fun n a =>
  |4 * (a (n - 1) - a (n - 2)) - 5|

end

end A048467.P11091416503586402443

namespace A048467

/-- `abs(4*(a(n-1)-a(n-2))-5)` -/
def P11091416503586402443.Spec : Prop :=
  ∀ n, P11091416503586402443.a n = A048467 n

end A048467

/-! ## A048467.P7799345722643544873

`or(1, 4*(a(n-1)-a(n-2))-5)` with `a(0)=1, a(1)=8`
-/

namespace A048467.P7799345722643544873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 8] fun n a =>
  Int.lor 1 (4 * (a (n - 1) - a (n - 2)) - 5)

end

end A048467.P7799345722643544873

namespace A048467

/-- `or(1, 4*(a(n-1)-a(n-2))-5)` -/
def P7799345722643544873.Spec : Prop :=
  ∀ n, P7799345722643544873.a n = A048467 n

end A048467

/-! ## A048467.P3242140571384409200

`abs(5-A159694(n))`
-/

namespace A048467.P3242140571384409200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |5 - A159694 n|

end

end A048467.P3242140571384409200

namespace A048467

/-- `abs(5-A159694(n))` -/
def P3242140571384409200.Spec : Prop :=
  ∀ n, P3242140571384409200.a n = A048467 n

end A048467

/-! ## A048467.P17342714946561309090

`Δ[A047862(n)+2-5*n]`
-/

namespace A048467.P17342714946561309090
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047862 n + (2 - (5 * n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A048467.P17342714946561309090

namespace A048467

/-- `Δ[A047862(n)+2-5*n]` -/
def P17342714946561309090.Spec : Prop :=
  ∀ n, P17342714946561309090.a n = A048467 n

end A048467

/-! ## A048467.P8868818325453915470

`(A048469(n)+A047861(n))/2`
-/

namespace A048467.P8868818325453915470
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048469 n + A047861 n : ℚ) / 2

end

end A048467.P8868818325453915470

namespace A048467

/-- `(A048469(n)+A047861(n))/2` -/
def P8868818325453915470.Spec : Prop :=
  ∀ n, P8868818325453915470.a n = (A048467 n : ℚ)

end A048467

/-! ## A048467.P13937040319883418602

`(A195857(n)+A047860(n))/2`
-/

namespace A048467.P13937040319883418602
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A195857 n + A047860 n : ℚ) / 2

end

end A048467.P13937040319883418602

namespace A048467

/-- `(A195857(n)+A047860(n))/2` -/
def P13937040319883418602.Spec : Prop :=
  ∀ n, P13937040319883418602.a n = (A048467 n : ℚ)

end A048467

/-!
# A048468: a(n) = T(7,n), array T given by A047858.

The programs for A048468, the canonical program `A048468.P8908760283281614714` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A048468 has offset 0).

The definition of A048468 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A048468.P8908760283281614714

`2^(n-1)*(n+14)-6`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A048468

/-- `2^(n-1)*(n+14)-6` -/
def P8908760283281614714.Spec : Prop :=
  ∀ n, P8908760283281614714.a n = (A048468 n : ℚ)

end A048468

/-! ## A048468.P5664562440142250545

`abs(A159695(n)-6)`
-/

namespace A048468.P5664562440142250545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A159695 n - 6|

end

end A048468.P5664562440142250545

namespace A048468

/-- `abs(A159695(n)-6)` -/
def P5664562440142250545.Spec : Prop :=
  ∀ n, P5664562440142250545.a n = A048468 n

end A048468

/-! ## A048468.P2738358789060658885

`Δ[A048467(n)-A016969(n)]`
-/

namespace A048468.P2738358789060658885
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048467 n - A016969 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A048468.P2738358789060658885

namespace A048468

/-- `Δ[A048467(n)-A016969(n)]` -/
def P2738358789060658885.Spec : Prop :=
  ∀ n, P2738358789060658885.a n = A048468 n

end A048468

/-! ## A048468.P5942456357305506501

`Δ[A159694(n)-A008588(n)]`
-/

namespace A048468.P5942456357305506501
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159694 n - A008588 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A048468.P5942456357305506501

namespace A048468

/-- `Δ[A159694(n)-A008588(n)]` -/
def P5942456357305506501.Spec : Prop :=
  ∀ n, P5942456357305506501.a n = A048468 n

end A048468

/-! ## A048468.P4934503260613435302

`Δ[A159694(n)-A016945(n)]`
-/

namespace A048468.P4934503260613435302
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159694 n - A016945 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A048468.P4934503260613435302

namespace A048468

/-- `Δ[A159694(n)-A016945(n)]` -/
def P4934503260613435302.Spec : Prop :=
  ∀ n, P4934503260613435302.a n = A048468 n

end A048468

/-! ## A048468.P12611610665554795546

`(A048469(n)+A048467(n))/2`
-/

namespace A048468.P12611610665554795546
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048469 n + A048467 n : ℚ) / 2

end

end A048468.P12611610665554795546

namespace A048468

/-- `(A048469(n)+A048467(n))/2` -/
def P12611610665554795546.Spec : Prop :=
  ∀ n, P12611610665554795546.a n = (A048468 n : ℚ)

end A048468

/-! ## A048468.P11007679187607770758

`Δ[A159694(n)-A016777(2*n)]`
-/

namespace A048468.P11007679187607770758
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159694 n - A016777 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A048468.P11007679187607770758

namespace A048468

/-- `Δ[A159694(n)-A016777(2*n)]` -/
def P11007679187607770758.Spec : Prop :=
  ∀ n, P11007679187607770758.a n = A048468 n

end A048468

/-! ## A048468.P14398993825052722488

`A047858(eq[7, A002262(n)])`
-/

namespace A048468.P14398993825052722488
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047858 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A048468.P14398993825052722488

namespace A048468

/-- `A047858(eq[7, A002262(n)])` -/
def P14398993825052722488.Spec : Prop :=
  ∀ n, P14398993825052722488.a n = A048468 n

end A048468

/-! ## A048468.P18100858466484936057

`A047858(eq[8, A002260(n+1)])`
-/

namespace A048468.P18100858466484936057
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047858 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A048468.P18100858466484936057

namespace A048468

/-- `A047858(eq[8, A002260(n+1)])` -/
def P18100858466484936057.Spec : Prop :=
  ∀ n, P18100858466484936057.a n = A048468 n

end A048468

/-!
# A048469: a(n) = T(8,n), array T given by A047858.

The programs for A048469, the canonical program `A048469.P5656944866439569387` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A048469 has offset 0).

The definition of A048469 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A048469.P5656944866439569387

`2^(n-1)*(n+16)-7`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A048469

/-- `2^(n-1)*(n+16)-7` -/
def P5656944866439569387.Spec : Prop :=
  ∀ n, P5656944866439569387.a n = (A048469 n : ℚ)

end A048469

/-! ## A048469.P3434573834451665305

`abs(7-A159696(n))`
-/

namespace A048469.P3434573834451665305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |7 - A159696 n|

end

end A048469.P3434573834451665305

namespace A048469

/-- `abs(7-A159696(n))` -/
def P3434573834451665305.Spec : Prop :=
  ∀ n, P3434573834451665305.a n = A048469 n

end A048469

/-! ## A048469.P17632215867217521906

`abs(A159697(n)-A168415(n))`
-/

namespace A048469.P17632215867217521906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A159697 n - A168415 n|

end

end A048469.P17632215867217521906

namespace A048469

/-- `abs(A159697(n)-A168415(n))` -/
def P17632215867217521906.Spec : Prop :=
  ∀ n, P17632215867217521906.a n = A048469 n

end A048469

/-! ## A048469.P16926881731673682216

`lcm(7-A159696(n), A020985(n))`
-/

namespace A048469.P16926881731673682216
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (7 - A159696 n) (A020985 n)

end

end A048469.P16926881731673682216

namespace A048469

/-- `lcm(7-A159696(n), A020985(n))` -/
def P16926881731673682216.Spec : Prop :=
  ∀ n, (P16926881731673682216.a n : ℤ) = A048469 n

end A048469

/-! ## A048469.P14429460862103495811

`abs(7-Δ[A048468(n)])`
-/

namespace A048469.P14429460862103495811
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048468 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |7 - (f1 (n + 1) - f1 n)|

end

end A048469.P14429460862103495811

namespace A048469

/-- `abs(7-Δ[A048468(n)])` -/
def P14429460862103495811.Spec : Prop :=
  ∀ n, P14429460862103495811.a n = A048469 n

end A048469

/-! ## A048469.P15906839470658928400

`Δ[A159695(n)-7*n]`
-/

namespace A048469.P15906839470658928400
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159695 n - (7 * n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A048469.P15906839470658928400

namespace A048469

/-- `Δ[A159695(n)-7*n]` -/
def P15906839470658928400.Spec : Prop :=
  ∀ n, P15906839470658928400.a n = A048469 n

end A048469

/-! ## A048469.P15384417914725967376

`(A195858(n)+A048467(n))/2`
-/

namespace A048469.P15384417914725967376
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A195858 n + A048467 n : ℚ) / 2

end

end A048469.P15384417914725967376

namespace A048469

/-- `(A195858(n)+A048467(n))/2` -/
def P15384417914725967376.Spec : Prop :=
  ∀ n, P15384417914725967376.a n = (A048469 n : ℚ)

end A048469

/-! ## A048469.P7071758861863266882

`A047858(A000096(n+7)+9)`
-/

namespace A048469.P7071758861863266882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047858 (A000096 (n + 7) + 9).toNat

end

end A048469.P7071758861863266882

namespace A048469

/-- `A047858(A000096(n+7)+9)` -/
def P7071758861863266882.Spec : Prop :=
  ∀ n, P7071758861863266882.a n = A048469 n

end A048469

/-!
# A048470: a(n) = (n+1)*(2^(n+1) - n)/2.

The programs for A048470, the canonical program `A048470.P14527179413476603892` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A048470 has offset 0).

The definition of A048470 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A048470.P14527179413476603892

`(n+1)*(2^(n+1)-n)/2`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A048470

/-- `(n+1)*(2^(n+1)-n)/2` -/
def P14527179413476603892.Spec : Prop :=
  ∀ n, P14527179413476603892.a n = (A048470 n : ℚ)

end A048470

/-! ## A048470.P1963013458924591250

`∑[A066368(n)+n]`
-/

namespace A048470.P1963013458924591250
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066368 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A048470.P1963013458924591250

namespace A048470

/-- `∑[A066368(n)+n]` -/
def P1963013458924591250.Spec : Prop :=
  ∀ n, P1963013458924591250.a n = A048470 n

end A048470

/-! ## A048470.P8262969957194607730

`∑[A001792(n)-n]`
-/

namespace A048470.P8262969957194607730
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001792 n - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A048470.P8262969957194607730

namespace A048470

/-- `∑[A001792(n)-n]` -/
def P8262969957194607730.Spec : Prop :=
  ∀ n, P8262969957194607730.a n = A048470 n

end A048470

/-! ## A048470.P5787778449017583462

`∑[∑[A045623(n)]-n]`
-/

namespace A048470.P5787778449017583462
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045623 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A048470.P5787778449017583462

namespace A048470

/-- `∑[∑[A045623(n)]-n]` -/
def P5787778449017583462.Spec : Prop :=
  ∀ n, P5787778449017583462.a n = A048470 n

end A048470

/-! ## A048470.P2231168263660209906

`∑[Δ[A001787(n)]-n]`
-/

namespace A048470.P2231168263660209906
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001787 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A048470.P2231168263660209906

namespace A048470

/-- `∑[Δ[A001787(n)]-n]` -/
def P2231168263660209906.Spec : Prop :=
  ∀ n, P2231168263660209906.a n = A048470 n

end A048470

/-! ## A048470.P14260397713722391504

`∑[Δ[A005183(n)]-n]`
-/

namespace A048470.P14260397713722391504
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005183 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A048470.P14260397713722391504

namespace A048470

/-- `∑[Δ[A005183(n)]-n]` -/
def P14260397713722391504.Spec : Prop :=
  ∀ n, P14260397713722391504.a n = A048470 n

end A048470

/-! ## A048470.P14891060883626371687

`A001787(n+1)-∑[n]`
-/

namespace A048470.P14891060883626371687
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001787 (n + 1) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A048470.P14891060883626371687

namespace A048470

/-- `A001787(n+1)-∑[n]` -/
def P14891060883626371687.Spec : Prop :=
  ∀ n, P14891060883626371687.a n = A048470 n

end A048470

/-! ## A048470.P4815798867304985769

`∑[A049610(n+2)-n]`
-/

namespace A048470.P4815798867304985769
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049610 (n + 2) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A048470.P4815798867304985769

namespace A048470

/-- `∑[A049610(n+2)-n]` -/
def P4815798867304985769.Spec : Prop :=
  ∀ n, P4815798867304985769.a n = A048470 n

end A048470

/-! ## A048470.P17415526413837958588

`∑[A211227(2*n)-n]`
-/

namespace A048470.P17415526413837958588
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211227 (2 * n) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A048470.P17415526413837958588

namespace A048470

/-- `∑[A211227(2*n)-n]` -/
def P17415526413837958588.Spec : Prop :=
  ∀ n, P17415526413837958588.a n = A048470 n

end A048470

/-! ## A048470.P5650156943164761549

`∑[Δ[A097067(n+1)]-n]`
-/

namespace A048470.P5650156943164761549
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097067 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A048470.P5650156943164761549

namespace A048470

/-- `∑[Δ[A097067(n+1)]-n]` -/
def P5650156943164761549.Spec : Prop :=
  ∀ n, P5650156943164761549.a n = A048470 n

end A048470

/-! ## A048470.P13035359381994814361

`∑[Δ[A139756(n+1)]-n]`
-/

namespace A048470.P13035359381994814361
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139756 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A048470.P13035359381994814361

namespace A048470

/-- `∑[Δ[A139756(n+1)]-n]` -/
def P13035359381994814361.Spec : Prop :=
  ∀ n, P13035359381994814361.a n = A048470 n

end A048470

/-! ## A048470.P4083356551494473284

`∑[Δ[n*A011782(n)]-n]`
-/

namespace A048470.P4083356551494473284
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A011782 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A048470.P4083356551494473284

namespace A048470

/-- `∑[Δ[n*A011782(n)]-n]` -/
def P4083356551494473284.Spec : Prop :=
  ∀ n, P4083356551494473284.a n = A048470 n

end A048470

/-! ## A048470.P6368715829917721652

`A215149(n+1)-∑[n+1]`
-/

namespace A048470.P6368715829917721652
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215149 (n + 1) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A048470.P6368715829917721652

namespace A048470

/-- `A215149(n+1)-∑[n+1]` -/
def P6368715829917721652.Spec : Prop :=
  ∀ n, P6368715829917721652.a n = A048470 n

end A048470

/-! ## A048470.P15253638314968809434

`∑[A211164(2*n+1)-n]`
-/

namespace A048470.P15253638314968809434
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211164 (2 * n + 1) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A048470.P15253638314968809434

namespace A048470

/-- `∑[A211164(2*n+1)-n]` -/
def P15253638314968809434.Spec : Prop :=
  ∀ n, P15253638314968809434.a n = A048470 n

end A048470

/-! ## A048470.P15591159932395859950

`(n+1)/2*A132045(n+1)`
-/

namespace A048470.P15591159932395859950
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / 2 * (A132045 (n + 1) : ℚ)

end

end A048470.P15591159932395859950

namespace A048470

/-- `(n+1)/2*A132045(n+1)` -/
def P15591159932395859950.Spec : Prop :=
  ∀ n, P15591159932395859950.a n = (A048470 n : ℚ)

end A048470

/-! ## A048470.P14951828244687310979

`∑[(n+2)*A000079(n)/2-n]`
-/

namespace A048470.P14951828244687310979
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 2 : ℤ) * A000079 n : ℚ) / 2 - (n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A048470.P14951828244687310979

namespace A048470

/-- `∑[(n+2)*A000079(n)/2-n]` -/
def P14951828244687310979.Spec : Prop :=
  ∀ n, P14951828244687310979.a n = (A048470 n : ℚ)

end A048470

/-! ## A048470.P14340574307535332490

`A002662(n)+A002064(n)`
-/

namespace A048470.P14340574307535332490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002662 n + A002064 n

end

end A048470.P14340574307535332490

namespace A048470

/-- `A002662(n)+A002064(n)` -/
def P14340574307535332490.Spec : Prop :=
  ∀ n, P14340574307535332490.a n = A048470 n

end A048470

/-! ## A048470.P368382161036888863

`A036289(n)+A014833(n)`
-/

namespace A048470.P368382161036888863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036289 n + A014833 n

end

end A048470.P368382161036888863

namespace A048470

/-- `A036289(n)+A014833(n)` -/
def P368382161036888863.Spec : Prop :=
  ∀ n, P368382161036888863.a n = A048470 n

end A048470

/-! ## A048470.P4259776388593886071

`A066524(n)+A014844(n)`
-/

namespace A048470.P4259776388593886071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066524 n + A014844 n

end

end A048470.P4259776388593886071

namespace A048470

/-- `A066524(n)+A014844(n)` -/
def P4259776388593886071.Spec : Prop :=
  ∀ n, P4259776388593886071.a n = A048470 n

end A048470

/-!
# A048471: Array T read by diagonals: T(k,n) = 2^(k-1) * (3^n - 1) + 1.

The programs for A048471, the canonical program `A048471.P10932283056959266550` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A048471 has offset 0).

The definition of A048471 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A048471.P10932283056959266550

`(A175840(n)-A059268(n))/2+1`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A048471

/-- `(A175840(n)-A059268(n))/2+1` -/
def P10932283056959266550.Spec : Prop :=
  ∀ n, P10932283056959266550.a n = (A048471 n : ℚ)

end A048471

/-! ## A048471.P8508553989797315947

`A261393(A173787(n))+1`
-/

namespace A048471.P8508553989797315947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261393 (A173787 n).toNat + 1

end

end A048471.P8508553989797315947

namespace A048471

/-- `A261393(A173787(n))+1` -/
def P8508553989797315947.Spec : Prop :=
  ∀ n, P8508553989797315947.a n = A048471 n

end A048471

/-! ## A048471.P5830854752481420469

`A005836(A130321(n))*A059268(n)+1`
-/

namespace A048471.P5830854752481420469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005836 (A130321 n).toNat * A059268 n + 1

end

end A048471.P5830854752481420469

namespace A048471

/-- `A005836(A130321(n))*A059268(n)+1` -/
def P5830854752481420469.Spec : Prop :=
  ∀ n, P5830854752481420469.a n = A048471 n

end A048471

/-! ## A048471.P5120853307247080361

`2-(abs(A033999(n))-A261393(A173787(n)))`
-/

namespace A048471.P5120853307247080361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (|A033999 n| - A261393 (A173787 n).toNat)

end

end A048471.P5120853307247080361

namespace A048471

/-- `2-(abs(A033999(n))-A261393(A173787(n)))` -/
def P5120853307247080361.Spec : Prop :=
  ∀ n, P5120853307247080361.a n = A048471 n

end A048471

/-! ## A048471.P12965613508109814833

`A005408(n)-(2*n-A261393(A173787(n)))`
-/

namespace A048471.P12965613508109814833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 n - ((2 * n : ℤ) - A261393 (A173787 n).toNat)

end

end A048471.P12965613508109814833

namespace A048471

/-- `A005408(n)-(2*n-A261393(A173787(n)))` -/
def P12965613508109814833.Spec : Prop :=
  ∀ n, P12965613508109814833.a n = A048471 n

end A048471

/-! ## A048471.P2003270079869921071

`A000034(n)-(A000035(n)-A261393(A173787(n)))`
-/

namespace A048471.P2003270079869921071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 n - (A000035 n - A261393 (A173787 n).toNat)

end

end A048471.P2003270079869921071

namespace A048471

/-- `A000034(n)-(A000035(n)-A261393(A173787(n)))` -/
def P2003270079869921071.Spec : Prop :=
  ∀ n, P2003270079869921071.a n = A048471 n

end A048471

/-! ## A048471.P12105366587751974440

`A008619(n)-(A004526(n)-A261393(A173787(n)))`
-/

namespace A048471.P12105366587751974440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n - (A004526 n - A261393 (A173787 n).toNat)

end

end A048471.P12105366587751974440

namespace A048471

/-- `A008619(n)-(A004526(n)-A261393(A173787(n)))` -/
def P12105366587751974440.Spec : Prop :=
  ∀ n, P12105366587751974440.a n = A048471 n

end A048471

/-! ## A048471.P10837463422200850683

`A014682(A175840(n)-A059268(n))+1`
-/

namespace A048471.P10837463422200850683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A175840 n - A059268 n).toNat + 1

end

end A048471.P10837463422200850683

namespace A048471

/-- `A014682(A175840(n)-A059268(n))+1` -/
def P10837463422200850683.Spec : Prop :=
  ∀ n, P10837463422200850683.a n = A048471 n

end A048471

/-! ## A048471.P12152721159180225505

`A014682(2-(A059268(n)-A175840(n)))`
-/

namespace A048471.P12152721159180225505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (2 - (A059268 n - A175840 n)).toNat

end

end A048471.P12152721159180225505

namespace A048471

/-- `A014682(2-(A059268(n)-A175840(n)))` -/
def P12152721159180225505.Spec : Prop :=
  ∀ n, P12152721159180225505.a n = A048471 n

end A048471

/-! ## A048471.P9931312218199413825

`A206428(n)+1`
-/

namespace A048471.P9931312218199413825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206428 n + 1

end

end A048471.P9931312218199413825

namespace A048471

/-- `A206428(n)+1` -/
def P9931312218199413825.Spec : Prop :=
  ∀ n, P9931312218199413825.a n = A048471 n

end A048471

/-!
# A048472: Array T by antidiagonals, T(k,n)=(k+1)*n*2^(n-1)+1, n >= 0, k >= 1.

The programs for A048472, the canonical program `A048472.P10433507711319556140` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A048472 has offset 0).

The definition of A048472 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A048472.P10433507711319556140

`A025581(n)*A296612(n)+1`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A048472

/-- `A025581(n)*A296612(n)+1` -/
def P10433507711319556140.Spec : Prop :=
  ∀ n, P10433507711319556140.a n = A048472 n

theorem P10433507711319556140.correct : P10433507711319556140.Spec := by
  intro n
  simp only [A048472]

end A048472

/-! ## A048472.P4061842657563418374

`A049069(A061579(n))`
-/

namespace A048472.P4061842657563418374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049069 (A061579 n).toNat

end

end A048472.P4061842657563418374

namespace A048472

/-- `A049069(A061579(n))` -/
def P4061842657563418374.Spec : Prop :=
  ∀ n, P4061842657563418374.a n = A048472 n

end A048472

/-! ## A048472.P2692981891501441699

`A049069(A114327(n)+n)`
-/

namespace A048472.P2692981891501441699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049069 (A114327 n + (n : ℤ)).toNat

end

end A048472.P2692981891501441699

namespace A048472

/-- `A049069(A114327(n)+n)` -/
def P2692981891501441699.Spec : Prop :=
  ∀ n, P2692981891501441699.a n = A048472 n

end A048472

/-! ## A048472.P16805591524508570264

`A049069(A038722(n+1)-1)`
-/

namespace A048472.P16805591524508570264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049069 (A038722 (n + 1) - 1).toNat

end

end A048472.P16805591524508570264

namespace A048472

/-- `A049069(A038722(n+1)-1)` -/
def P16805591524508570264.Spec : Prop :=
  ∀ n, P16805591524508570264.a n = A048472 n

end A048472

/-! ## A048472.P16996865774143842684

`A049069(A093995(n+1)-(n+1))`
-/

namespace A048472.P16996865774143842684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049069 (A093995 (n + 1) - (n + 1 : ℤ)).toNat

end

end A048472.P16996865774143842684

namespace A048472

/-- `A049069(A093995(n+1)-(n+1))` -/
def P16996865774143842684.Spec : Prop :=
  ∀ n, P16996865774143842684.a n = A048472 n

end A048472

/-! ## A048472.P15846577691994961902

`A049069(A002024(n+1)²-(n+1))`
-/

namespace A048472.P15846577691994961902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049069 (A002024 (n + 1) ^ 2 - (n + 1 : ℤ)).toNat

end

end A048472.P15846577691994961902

namespace A048472

/-- `A049069(A002024(n+1)²-(n+1))` -/
def P15846577691994961902.Spec : Prop :=
  ∀ n, P15846577691994961902.a n = A048472 n

end A048472

/-! ## A048472.P17564115424486134240

`A049069(A057944(n)+A025581(n))`
-/

namespace A048472.P17564115424486134240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049069 (A057944 n + A025581 n).toNat

end

end A048472.P17564115424486134240

namespace A048472

/-- `A049069(A057944(n)+A025581(n))` -/
def P17564115424486134240.Spec : Prop :=
  ∀ n, P17564115424486134240.a n = A048472 n

end A048472

/-! ## A048472.P9229257140120171966

`A049069(-A024000(A038722(n+1)))`
-/

namespace A048472.P9229257140120171966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049069 (-A024000 (A038722 (n + 1)).toNat).toNat

end

end A048472.P9229257140120171966

namespace A048472

/-- `A049069(-A024000(A038722(n+1)))` -/
def P9229257140120171966.Spec : Prop :=
  ∀ n, P9229257140120171966.a n = A048472 n

end A048472

/-! ## A048472.P12728609177384383055

`A002262(A061579(n))*A296612(n)+1`
-/

namespace A048472.P12728609177384383055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (A061579 n).toNat * A296612 n + 1

end

end A048472.P12728609177384383055

namespace A048472

/-- `A002262(A061579(n))*A296612(n)+1` -/
def P12728609177384383055.Spec : Prop :=
  ∀ n, P12728609177384383055.a n = A048472 n

end A048472

/-! ## A048472.P4021915338220707524

`A049069(A038722(n+2))`
-/

namespace A048472.P4021915338220707524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049069 (A038722 (n + 2)).toNat

end

end A048472.P4021915338220707524

namespace A048472

/-- `A049069(A038722(n+2))` -/
def P4021915338220707524.Spec : Prop :=
  ∀ n, P4021915338220707524.a n = A048472 n

end A048472

/-!
# A048473: a(0)=1, a(n) = 3*a(n-1) + 2; a(n) = 2*3^n - 1.

The programs for A048473, the canonical program `A048473.P18137977496735268190` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A048473 has offset 0).

The definition of A048473 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*3^n-1` (program `A048473.P18137977496735268190`, by `A048473.P18137977496735268190.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A048473.P18137977496735268190

`2*3^n-1`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A048473

/-- `2*3^n-1` -/
def P18137977496735268190.Spec : Prop :=
  ∀ n, P18137977496735268190.a n = A048473 n

theorem P18137977496735268190.correct : P18137977496735268190.Spec := by
  intro n
  simp only [A048473]

end A048473

/-! ## A048473.P7594223606417559924

`3*a(n-1)+2` with `a(0)=1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A048473.P7594223606417559924
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  3 * a (n - 1) + 2

end

end A048473.P7594223606417559924

namespace A048473

/-- `3*a(n-1)+2` -/
def P7594223606417559924.Spec : Prop :=
  ∀ n, (P7594223606417559924.a n : ℤ) = A048473 n

theorem P7594223606417559924.correct : P7594223606417559924.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A048473, Nat.add_sub_cancel, A048473.P7594223606417559924.a, A048473.P18137977496735268190.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A048473, Nat.add_sub_cancel, A048473.P7594223606417559924.a, A048473.P18137977496735268190.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A048473

/-! ## A048473.P7567361676922066874

`xor(3, Δ[3^n])`
-/

namespace A048473.P7567361676922066874
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 3 ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A048473.P7567361676922066874

namespace A048473

/-- `xor(3, Δ[3^n])` -/
def P7567361676922066874.Spec : Prop :=
  ∀ n, P7567361676922066874.a n = A048473 n

end A048473

/-! ## A048473.P11222757043682582287

`ogf((1+x)/(1-4x+3x^2))`
-/

namespace A048473.P11222757043682582287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1] [1, -4, 3] n

end

end A048473.P11222757043682582287

namespace A048473

/-- `ogf((1+x)/(1-4x+3x^2))` -/
def P11222757043682582287.Spec : Prop :=
  ∀ n, P11222757043682582287.a n = A048473 n

end A048473

/-! ## A048473.P12042345012522975700

`abs(1-lcm(2, 3^n))`
-/

namespace A048473.P12042345012522975700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (Nat.lcm 2 (3 ^ n) : ℤ)|

end

end A048473.P12042345012522975700

namespace A048473

/-- `abs(1-lcm(2, 3^n))` -/
def P12042345012522975700.Spec : Prop :=
  ∀ n, P12042345012522975700.a n = A048473 n

end A048473

/-! ## A048473.P4228378648670669966

`-or(1, Δ[-3^n])`
-/

namespace A048473.P4228378648670669966
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(3 ^ n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.lor 1 (f1 (n + 1) - f1 n)

end

end A048473.P4228378648670669966

namespace A048473

/-- `-or(1, Δ[-3^n])` -/
def P4228378648670669966.Spec : Prop :=
  ∀ n, P4228378648670669966.a n = A048473 n

end A048473

/-! ## A048473.P6630353042898140665

`∑[3*a(n-1)]` with `a(0)=1, a(1)=4`
-/

namespace A048473.P6630353042898140665
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 4] fun n f1 =>
  3 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A048473.P6630353042898140665

namespace A048473

/-- `∑[3*a(n-1)]` -/
def P6630353042898140665.Spec : Prop :=
  ∀ n, (P6630353042898140665.a n : ℤ) = A048473 n

end A048473

/-! ## A048473.P5515285420623493264

`3*(1-(1/3-a(n-1)))` with `a(0)=1`
-/

namespace A048473.P5515285420623493264
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  3 * (1 - ((1 : ℚ) / 3 - a (n - 1)))

end

end A048473.P5515285420623493264

namespace A048473

/-- `3*(1-(1/3-a(n-1)))` -/
def P5515285420623493264.Spec : Prop :=
  ∀ n, P5515285420623493264.a n = (A048473 n : ℚ)

theorem P5515285420623493264.correct : P5515285420623493264.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A048473, Nat.add_sub_cancel, A048473.P5515285420623493264.a, A048473.P18137977496735268190.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A048473, Nat.add_sub_cancel, A048473.P5515285420623493264.a, A048473.P18137977496735268190.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A048473

/-! ## A048473.P17934845729611916777

`∑[a(n-1)/(1-2/3)]` with `a(0)=1, a(1)=4`
-/

namespace A048473.P17934845729611916777
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1, 4] fun n f1 =>
  f1 (n - 1) / (1 - (2 : ℚ) / 3)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A048473.P17934845729611916777

namespace A048473

/-- `∑[a(n-1)/(1-2/3)]` -/
def P17934845729611916777.Spec : Prop :=
  ∀ n, P17934845729611916777.a n = (A048473 n : ℚ)

end A048473

/-! ## A048473.P8715275563392109922

`floor(4*a(n-1)-(a(n-1)-2))` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A048473.P8715275563392109922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  4 * a (n - 1) - (a (n - 1) - 2)

end

end A048473.P8715275563392109922

namespace A048473

/-- `floor(4*a(n-1)-(a(n-1)-2))` -/
def P8715275563392109922.Spec : Prop :=
  ∀ n, P8715275563392109922.a n = A048473 n

theorem P8715275563392109922.correct : P8715275563392109922.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A048473, Nat.add_sub_cancel, A048473.P8715275563392109922.a, A048473.P18137977496735268190.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A048473, Nat.add_sub_cancel, A048473.P8715275563392109922.a, A048473.P18137977496735268190.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A048473

/-! ## A048473.P8018078182067030082

`floor(a(n-1)+a(n-1)+a(n-1)+2)` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A048473.P8018078182067030082
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (a (n - 1) + (a (n - 1) + 2))

end

end A048473.P8018078182067030082

namespace A048473

/-- `floor(a(n-1)+a(n-1)+a(n-1)+2)` -/
def P8018078182067030082.Spec : Prop :=
  ∀ n, (P8018078182067030082.a n : ℤ) = A048473 n

theorem P8018078182067030082.correct : P8018078182067030082.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A048473, Nat.add_sub_cancel, A048473.P8018078182067030082.a, A048473.P18137977496735268190.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A048473, Nat.add_sub_cancel, A048473.P8018078182067030082.a, A048473.P18137977496735268190.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A048473

/-! ## A048473.P10330291080676125173

`floor(a(n-1)-(a(n-1)/(1/2-1)-2))` with `a(0)=1`
-/

namespace A048473.P10330291080676125173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌊(a (n - 1) : ℚ) - ((a (n - 1) : ℚ) / ((1 : ℚ) / 2 - 1) - 2)⌋

end

end A048473.P10330291080676125173

namespace A048473

/-- `floor(a(n-1)-(a(n-1)/(1/2-1)-2))` -/
def P10330291080676125173.Spec : Prop :=
  ∀ n, P10330291080676125173.a n = A048473 n

end A048473

/-! ## A048473.P4461414592707105173

`∑[A003946(n)]`
-/

namespace A048473.P4461414592707105173
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003946 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A048473.P4461414592707105173

namespace A048473

/-- `∑[A003946(n)]` -/
def P4461414592707105173.Spec : Prop :=
  ∀ n, P4461414592707105173.a n = A048473 n

end A048473

/-! ## A048473.P14113078300139305329

`Δ[A024024(n)]`
-/

namespace A048473.P14113078300139305329
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024024 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A048473.P14113078300139305329

namespace A048473

/-- `Δ[A024024(n)]` -/
def P14113078300139305329.Spec : Prop :=
  ∀ n, P14113078300139305329.a n = A048473 n

theorem P14113078300139305329.correct : P14113078300139305329.Spec := by
  intro n
  simp only [A048473, Nat.add_sub_cancel, A048473.P14113078300139305329.f1, A048473.P14113078300139305329.a, A048473.P18137977496735268190.a, A024024, A024024.P10852439479803095698.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A048473

/-! ## A048473.P15082609588268239230

`A154992(n+2)`
-/

namespace A048473.P15082609588268239230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154992 (n + 2)

end

end A048473.P15082609588268239230

namespace A048473

/-- `A154992(n+2)` -/
def P15082609588268239230.Spec : Prop :=
  ∀ n, P15082609588268239230.a n = A048473 n

end A048473

/-! ## A048473.P7320062039648250805

`A060647(2*n)`
-/

namespace A048473.P7320062039648250805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060647 (2 * n)

end

end A048473.P7320062039648250805

namespace A048473

/-- `A060647(2*n)` -/
def P7320062039648250805.Spec : Prop :=
  ∀ n, P7320062039648250805.a n = A048473 n

end A048473

/-! ## A048473.P5566113168092741714

`A062547(2*n)`
-/

namespace A048473.P5566113168092741714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062547 (2 * n)

end

end A048473.P5566113168092741714

namespace A048473

/-- `A062547(2*n)` -/
def P5566113168092741714.Spec : Prop :=
  ∀ n, P5566113168092741714.a n = A048473 n

end A048473

/-! ## A048473.P1326427699294868983

`abs(Δ[A076040(n)])`
-/

namespace A048473.P1326427699294868983
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076040 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A048473.P1326427699294868983

namespace A048473

/-- `abs(Δ[A076040(n)])` -/
def P1326427699294868983.Spec : Prop :=
  ∀ n, P1326427699294868983.a n = A048473 n

end A048473

/-! ## A048473.P4500743632818132959

`A079362(Δ[n²])`
-/

namespace A048473.P4500743632818132959
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079362 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A048473.P4500743632818132959

namespace A048473

/-- `A079362(Δ[n²])` -/
def P4500743632818132959.Spec : Prop :=
  ∀ n, P4500743632818132959.a n = A048473 n

end A048473

/-! ## A048473.P8465488940805933753

`∑[∑[A080923(n)]]`
-/

namespace A048473.P8465488940805933753
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080923 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A048473.P8465488940805933753

namespace A048473

/-- `∑[∑[A080923(n)]]` -/
def P8465488940805933753.Spec : Prop :=
  ∀ n, P8465488940805933753.a n = A048473 n

end A048473

/-!
# A048474: a(n) = 3*n*2^(n-1) + 1.

The programs for A048474, the canonical program `A048474.P15782759110277562790` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A048474 has offset 0).

The definition of A048474 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A048474.P15782759110277562790

`3*n*2^(n-1)+1`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A048474

/-- `3*n*2^(n-1)+1` -/
def P15782759110277562790.Spec : Prop :=
  ∀ n, P15782759110277562790.a n = (A048474 n : ℚ)

end A048474

/-! ## A048474.P8384610969152774248

`∑[ogf((1-x+x^2)/(1-4x+4x^2))]`
-/

namespace A048474.P8384610969152774248
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -1, 1] [1, -4, 4] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A048474.P8384610969152774248

namespace A048474

/-- `∑[ogf((1-x+x^2)/(1-4x+4x^2))]` -/
def P8384610969152774248.Spec : Prop :=
  ∀ n, P8384610969152774248.a n = A048474 n

end A048474

/-! ## A048474.P15085553474489745198

`∑[(2/n+2)*a(n-1)]` with `a(0)=1, a(1)=3`
-/

namespace A048474.P15085553474489745198
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1, 3] fun n f1 =>
  (2 / (n : ℚ) + 2) * f1 (n - 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A048474.P15085553474489745198

namespace A048474

/-- `∑[(2/n+2)*a(n-1)]` -/
def P15085553474489745198.Spec : Prop :=
  ∀ n, P15085553474489745198.a n = (A048474 n : ℚ)

end A048474

/-! ## A048474.P9732316739197247392

`∑[4*(a(n-1)-a(n-2))]` with `a(0)=1, a(1)=3, a(2)=9`
-/

namespace A048474.P9732316739197247392
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 3, 9] fun n f1 =>
  4 * (f1 (n - 1) - f1 (n - 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A048474.P9732316739197247392

namespace A048474

/-- `∑[4*(a(n-1)-a(n-2))]` -/
def P9732316739197247392.Spec : Prop :=
  ∀ n, P9732316739197247392.a n = A048474 n

end A048474

/-! ## A048474.P15511808162141112561

`∑[A084858(n)]`
-/

namespace A048474.P15511808162141112561
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084858 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A048474.P15511808162141112561

namespace A048474

/-- `∑[A084858(n)]` -/
def P15511808162141112561.Spec : Prop :=
  ∀ n, P15511808162141112561.a n = A048474 n

end A048474

/-! ## A048474.P2297462109605981675

`∑[∑[A084860(n)]]`
-/

namespace A048474.P2297462109605981675
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084860 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A048474.P2297462109605981675

namespace A048474

/-- `∑[∑[A084860(n)]]` -/
def P2297462109605981675.Spec : Prop :=
  ∀ n, P2297462109605981675.a n = A048474 n

end A048474

/-! ## A048474.P12347595544461505691

`∑[∑[∑[A084861(n)]]]`
-/

namespace A048474.P12347595544461505691
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084861 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A048474.P12347595544461505691

namespace A048474

/-- `∑[∑[∑[A084861(n)]]]` -/
def P12347595544461505691.Spec : Prop :=
  ∀ n, P12347595544461505691.a n = A048474 n

end A048474

/-! ## A048474.P2138713530970354370

`abs(n*Δ[A042950(n)]+1)`
-/

namespace A048474.P2138713530970354370
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042950 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n : ℤ) * (f1 (n + 1) - f1 n) + 1|

end

end A048474.P2138713530970354370

namespace A048474

/-- `abs(n*Δ[A042950(n)]+1)` -/
def P2138713530970354370.Spec : Prop :=
  ∀ n, P2138713530970354370.a n = A048474 n

end A048474

/-! ## A048474.P3611587368281974967

`abs(n*(n+2-abs(1-n))*A011782(n)+1)`
-/

namespace A048474.P3611587368281974967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |((n : ℤ) * (((n + 2 : ℤ) - |1 - (n : ℤ)|) * A011782 n) + 1)|

end

end A048474.P3611587368281974967

namespace A048474

/-- `abs(n*(n+2-abs(1-n))*A011782(n)+1)` -/
def P3611587368281974967.Spec : Prop :=
  ∀ n, P3611587368281974967.a n = A048474 n

end A048474

/-! ## A048474.P11856297118200614196

`∑[A045623(n)+A001787(n)]`
-/

namespace A048474.P11856297118200614196
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045623 n + A001787 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A048474.P11856297118200614196

namespace A048474

/-- `∑[A045623(n)+A001787(n)]` -/
def P11856297118200614196.Spec : Prop :=
  ∀ n, P11856297118200614196.a n = A048474 n

end A048474

/-! ## A048474.P12791619439062546911

`ogf((1-x+x^2)/(1-5x+8x^2-4x^3))`
-/

namespace A048474.P12791619439062546911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -1, 1] [1, -5, 8, -4] n

end

end A048474.P12791619439062546911

namespace A048474

/-- `ogf((1-x+x^2)/(1-5x+8x^2-4x^3))` -/
def P12791619439062546911.Spec : Prop :=
  ∀ n, P12791619439062546911.a n = A048474 n

end A048474

/-! ## A048474.P8585736587852990447

`(A048477(n)+1)/2`
-/

namespace A048474.P8585736587852990447
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048477 n + 1 : ℚ) / 2

end

end A048474.P8585736587852990447

namespace A048474

/-- `(A048477(n)+1)/2` -/
def P8585736587852990447.Spec : Prop :=
  ∀ n, P8585736587852990447.a n = (A048474 n : ℚ)

end A048474

/-! ## A048474.P15288282446167222582

`(∑[A128543(n+1)]+1)/2`
-/

namespace A048474.P15288282446167222582
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128543 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j + 1 : ℤ) : ℚ) / 2

end

end A048474.P15288282446167222582

namespace A048474

/-- `(∑[A128543(n+1)]+1)/2` -/
def P15288282446167222582.Spec : Prop :=
  ∀ n, P15288282446167222582.a n = (A048474 n : ℚ)

end A048474

/-! ## A048474.P7829710078410834079

`(∑[A074494(n+1)]+n)/2`
-/

namespace A048474.P7829710078410834079
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074494 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ) : ℤ) : ℚ) / 2

end

end A048474.P7829710078410834079

namespace A048474

/-- `(∑[A074494(n+1)]+n)/2` -/
def P7829710078410834079.Spec : Prop :=
  ∀ n, P7829710078410834079.a n = (A048474 n : ℚ)

end A048474

/-! ## A048474.P12534745886517483363

`(3*n*A000079(n)+2)/2`
-/

namespace A048474.P12534745886517483363
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 * ((n : ℤ) * A000079 n) + 2 : ℚ) / 2

end

end A048474.P12534745886517483363

namespace A048474

/-- `(3*n*A000079(n)+2)/2` -/
def P12534745886517483363.Spec : Prop :=
  ∀ n, P12534745886517483363.a n = (A048474 n : ℚ)

end A048474

/-! ## A048474.P15267220329897887678

`∑[ceil((n+1)*A007283(n)/4)]`
-/

namespace A048474.P15267220329897887678
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((n + 1 : ℤ) * A007283 n : ℚ) / 4⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A048474.P15267220329897887678

namespace A048474

/-- `∑[ceil((n+1)*A007283(n)/4)]` -/
def P15267220329897887678.Spec : Prop :=
  ∀ n, P15267220329897887678.a n = A048474 n

end A048474

/-! ## A048474.P12352172394858735999

`ceil((n*A003945(n+1)+1)/2)`
-/

namespace A048474.P12352172394858735999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((n : ℤ) * A003945 (n + 1) + 1 : ℚ) / 2⌉

end

end A048474.P12352172394858735999

namespace A048474

/-- `ceil((n*A003945(n+1)+1)/2)` -/
def P12352172394858735999.Spec : Prop :=
  ∀ n, P12352172394858735999.a n = A048474 n

end A048474

/-! ## A048474.P10372534233890979268

`(A048476(n)+A005183(n))/2`
-/

namespace A048474.P10372534233890979268
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048476 n + A005183 n : ℚ) / 2

end

end A048474.P10372534233890979268

namespace A048474

/-- `(A048476(n)+A005183(n))/2` -/
def P10372534233890979268.Spec : Prop :=
  ∀ n, P10372534233890979268.a n = (A048474 n : ℚ)

end A048474

/-! ## A048474.P7600853425053666091

`A288038(n+1)%A066373(n+2)`
-/

namespace A048474.P7600853425053666091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A288038 (n + 1)) (A066373 (n + 2))

end

end A048474.P7600853425053666091

namespace A048474

/-- `A288038(n+1)%A066373(n+2)` -/
def P7600853425053666091.Spec : Prop :=
  ∀ n, P7600853425053666091.a n = A048474 n

end A048474

/-! ## A048474.P16341941056342022420

`(A048480(n)+2)/3`
-/

namespace A048474.P16341941056342022420
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048480 n + 2 : ℚ) / 3

end

end A048474.P16341941056342022420

namespace A048474

/-- `(A048480(n)+2)/3` -/
def P16341941056342022420.Spec : Prop :=
  ∀ n, P16341941056342022420.a n = (A048474 n : ℚ)

end A048474

/-!
# A048475: a(n) is the smallest k at which the number of divisors of binomial(n,k) is maximized.

The programs for A048475, there is no canonical definition to state claims against.
-/

/-! ## A048475.P3467480599366861505

`A110654(n)-A048485(n+1)`
-/

namespace A048475.P3467480599366861505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 n - A048485 (n + 1)

end

end A048475.P3467480599366861505

/-! ## A048475.P13339631060490779217

`A004526(n+1)-A048485(n+1)`
-/

namespace A048475.P13339631060490779217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (n + 1) - A048485 (n + 1)

end

end A048475.P13339631060490779217

/-! ## A048475.P13375242210545934888

`A080513(n)-(A048485(n+1)+1)`
-/

namespace A048475.P13375242210545934888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080513 n - (A048485 (n + 1) + 1)

end

end A048475.P13375242210545934888

/-! ## A048475.P262345594987630415

`A007494(n)-(A048485(n+1)+n)`
-/

namespace A048475.P262345594987630415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007494 n - (A048485 (n + 1) + (n : ℤ))

end

end A048475.P262345594987630415

/-! ## A048475.P1449539436376048739

`n+1-(A048485(n+1)+A008619(n))`
-/

namespace A048475.P1449539436376048739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - (A048485 (n + 1) + A008619 n)

end

end A048475.P1449539436376048739

/-! ## A048475.P14467190733046426708

`A004396(1-A008621(n)+n)-A048485(n+1)`
-/

namespace A048475.P14467190733046426708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (1 - A008621 n + (n : ℤ)).toNat - A048485 (n + 1)

end

end A048475.P14467190733046426708

/-! ## A048475.P17626024389453627810

`∑[A130125(A130125(∑[n]))]-A048485(n+1)`
-/

namespace A048475.P17626024389453627810
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130125 (A130125 (∑ j ∈ Finset.range (n + 1), f2 j)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A048485 (n + 1)

end

end A048475.P17626024389453627810

/-!
# A048476: a(n) = T(4,n), array T given by A048472.

The programs for A048476, the canonical program `A048476.P5211314698378596392` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A048476 has offset 0).

The definition of A048476 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A048476.P5211314698378596392

`5*n*2^(n-1)+1`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A048476

/-- `5*n*2^(n-1)+1` -/
def P5211314698378596392.Spec : Prop :=
  ∀ n, P5211314698378596392.a n = (A048476 n : ℚ)

end A048476

/-! ## A048476.P17280917734743094604

`∑[ogf((1+x-x^2)/(1-4x+4x^2))]`
-/

namespace A048476.P17280917734743094604
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1, -1] [1, -4, 4] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A048476.P17280917734743094604

namespace A048476

/-- `∑[ogf((1+x-x^2)/(1-4x+4x^2))]` -/
def P17280917734743094604.Spec : Prop :=
  ∀ n, P17280917734743094604.a n = A048476 n

end A048476

/-! ## A048476.P1268215905040735104

`ogf((1+2x-x^3)/(1-4x+3x^2+4x^3-4x^4))`
-/

namespace A048476.P1268215905040735104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 2, 0, -1] [1, -4, 3, 4, -4] n

end

end A048476.P1268215905040735104

namespace A048476

/-- `ogf((1+2x-x^3)/(1-4x+3x^2+4x^3-4x^4))` -/
def P1268215905040735104.Spec : Prop :=
  ∀ n, P1268215905040735104.a n = A048476 n

end A048476

/-! ## A048476.P8540108726620053394

`∑[∏[4-4/a(n-1)]]` with `a(0)=1, a(1)=5, a(2)=3`
-/

namespace A048476.P8540108726620053394
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.rec [1, 5, 3] fun n f2 =>
  4 - 4 / f2 (n - 1)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A048476.P8540108726620053394

namespace A048476

/-- `∑[∏[4-4/a(n-1)]]` -/
def P8540108726620053394.Spec : Prop :=
  ∀ n, P8540108726620053394.a n = (A048476 n : ℚ)

end A048476

/-! ## A048476.P7536431869699685458

`∑[(2/n+2)*a(n-1)]` with `a(0)=1, a(1)=5`
-/

namespace A048476.P7536431869699685458
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1, 5] fun n f1 =>
  (2 / (n : ℚ) + 2) * f1 (n - 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A048476.P7536431869699685458

namespace A048476

/-- `∑[(2/n+2)*a(n-1)]` -/
def P7536431869699685458.Spec : Prop :=
  ∀ n, P7536431869699685458.a n = (A048476 n : ℚ)

end A048476

/-! ## A048476.P15932079244312727796

`abs(4*(a(n-1)-a(n-2))+1)` with `a(0)=1, a(1)=6`
-/

namespace A048476.P15932079244312727796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 6] fun n a =>
  |4 * (a (n - 1) - a (n - 2)) + 1|

end

end A048476.P15932079244312727796

namespace A048476

/-- `abs(4*(a(n-1)-a(n-2))+1)` -/
def P15932079244312727796.Spec : Prop :=
  ∀ n, P15932079244312727796.a n = A048476 n

end A048476

/-! ## A048476.P7923995438598038830

`or(1, 4*(a(n-1)-a(n-2))+1)` with `a(0)=1, a(1)=6`
-/

namespace A048476.P7923995438598038830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 6] fun n a =>
  Int.lor 1 (4 * (a (n - 1) - a (n - 2)) + 1)

end

end A048476.P7923995438598038830

namespace A048476

/-- `or(1, 4*(a(n-1)-a(n-2))+1)` -/
def P7923995438598038830.Spec : Prop :=
  ∀ n, P7923995438598038830.a n = A048476 n

end A048476

/-! ## A048476.P16173352780162712295

`∑[A339252(n)+A001787(n)]`
-/

namespace A048476.P16173352780162712295
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339252 n + A001787 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A048476.P16173352780162712295

namespace A048476

/-- `∑[A339252(n)+A001787(n)]` -/
def P16173352780162712295.Spec : Prop :=
  ∀ n, P16173352780162712295.a n = A048476 n

end A048476

/-! ## A048476.P17939643490321471063

`∑[A339252(n)+A036289(n)/2]`
-/

namespace A048476.P17939643490321471063
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A339252 n : ℚ) + (A036289 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A048476.P17939643490321471063

namespace A048476

/-- `∑[A339252(n)+A036289(n)/2]` -/
def P17939643490321471063.Spec : Prop :=
  ∀ n, P17939643490321471063.a n = (A048476 n : ℚ)

end A048476

/-! ## A048476.P8647803437219322931

`(5*n*A000079(n)+2)/2`
-/

namespace A048476.P8647803437219322931
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (5 * ((n : ℤ) * A000079 n) + 2 : ℚ) / 2

end

end A048476.P8647803437219322931

namespace A048476

/-- `(5*n*A000079(n)+2)/2` -/
def P8647803437219322931.Spec : Prop :=
  ∀ n, P8647803437219322931.a n = (A048476 n : ℚ)

end A048476

/-! ## A048476.P3322526673187058440

`(5*n*xor(1, A000051(n))+2)/2`
-/

namespace A048476.P3322526673187058440
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((5 * n : ℤ) * Int.xor 1 (A000051 n) + 2 : ℚ) / 2

end

end A048476.P3322526673187058440

namespace A048476

/-- `(5*n*xor(1, A000051(n))+2)/2` -/
def P3322526673187058440.Spec : Prop :=
  ∀ n, P3322526673187058440.a n = (A048476 n : ℚ)

end A048476

/-! ## A048476.P4227453431104411938

`(A048479(n)+A002064(n))/2`
-/

namespace A048476.P4227453431104411938
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048479 n + A002064 n : ℚ) / 2

end

end A048476.P4227453431104411938

namespace A048476

/-- `(A048479(n)+A002064(n))/2` -/
def P4227453431104411938.Spec : Prop :=
  ∀ n, P4227453431104411938.a n = (A048476 n : ℚ)

end A048476

/-! ## A048476.P13723328167353993775

`ceil((2^n*A008592(n)+1)/4)`
-/

namespace A048476.P13723328167353993775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((2 ^ n : ℤ) * A008592 n + 1 : ℚ) / 4⌉

end

end A048476.P13723328167353993775

namespace A048476

/-- `ceil((2^n*A008592(n)+1)/4)` -/
def P13723328167353993775.Spec : Prop :=
  ∀ n, P13723328167353993775.a n = A048476 n

end A048476

/-! ## A048476.P1944230244606800747

`A049069(eq[4, A025581(n)])`
-/

namespace A048476.P1944230244606800747
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049069 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A048476.P1944230244606800747

namespace A048476

/-- `A049069(eq[4, A025581(n)])` -/
def P1944230244606800747.Spec : Prop :=
  ∀ n, P1944230244606800747.a n = A048476 n

end A048476

/-!
# A048477: a(n) = T(5,n), array T given by A048472.

The programs for A048477, the canonical program `A048477.P4668765606070532470` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A048477 has offset 0).

The definition of A048477 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A048477.P4668765606070532470

`3*n*2^n+1`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A048477

/-- `3*n*2^n+1` -/
def P4668765606070532470.Spec : Prop :=
  ∀ n, (P4668765606070532470.a n : ℤ) = A048477 n

theorem P4668765606070532470.correct : P4668765606070532470.Spec := by
  intro n
  simp only [A048477]

end A048477

/-! ## A048477.P11013143074371595348

`∑[ogf((1+2x-2x^2)/(1-4x+4x^2))]`
-/

namespace A048477.P11013143074371595348
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 2, -2] [1, -4, 4] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A048477.P11013143074371595348

namespace A048477

/-- `∑[ogf((1+2x-2x^2)/(1-4x+4x^2))]` -/
def P11013143074371595348.Spec : Prop :=
  ∀ n, P11013143074371595348.a n = A048477 n

end A048477

/-! ## A048477.P15865805568207658597

`∑[(2/n+2)*a(n-1)]` with `a(0)=1, a(1)=6`
-/

namespace A048477.P15865805568207658597
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1, 6] fun n f1 =>
  (2 / (n : ℚ) + 2) * f1 (n - 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A048477.P15865805568207658597

namespace A048477

/-- `∑[(2/n+2)*a(n-1)]` -/
def P15865805568207658597.Spec : Prop :=
  ∀ n, P15865805568207658597.a n = (A048477 n : ℚ)

end A048477

/-! ## A048477.P8079772538459870308

`∑[(n+1)*∑[2*a(n-1)]]` with `a(0)=1, a(1)=2, a(2)=3`
-/

namespace A048477.P8079772538459870308
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 3] fun n f2 =>
  2 * f2 (n - 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A048477.P8079772538459870308

namespace A048477

/-- `∑[(n+1)*∑[2*a(n-1)]]` -/
def P8079772538459870308.Spec : Prop :=
  ∀ n, (P8079772538459870308.a n : ℤ) = A048477 n

end A048477

/-! ## A048477.P5621303414314428145

`∑[A128543(n+1)]`
-/

namespace A048477.P5621303414314428145
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128543 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A048477.P5621303414314428145

namespace A048477

/-- `∑[A128543(n+1)]` -/
def P5621303414314428145.Spec : Prop :=
  ∀ n, P5621303414314428145.a n = A048477 n

end A048477

/-! ## A048477.P1122625864395320145

`∑[(n+1)*A003945(n)]`
-/

namespace A048477.P1122625864395320145
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A003945 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A048477.P1122625864395320145

namespace A048477

/-- `∑[(n+1)*A003945(n)]` -/
def P1122625864395320145.Spec : Prop :=
  ∀ n, P1122625864395320145.a n = A048477 n

end A048477

/-! ## A048477.P1939506401897865527

`record[n*A077958(n)+1]`
-/

namespace A048477.P1939506401897865527
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A077958 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A048477.P1939506401897865527

namespace A048477

/-- `record[n*A077958(n)+1]` -/
def P1939506401897865527.Spec : Prop :=
  ∀ n, P1939506401897865527.a n = A048477 n

end A048477

/-! ## A048477.P17387915134746700651

`record[n*A078029(n)+1]`
-/

namespace A048477.P17387915134746700651
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A078029 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A048477.P17387915134746700651

namespace A048477

/-- `record[n*A078029(n)+1]` -/
def P17387915134746700651.Spec : Prop :=
  ∀ n, P17387915134746700651.a n = A048477 n

end A048477

/-! ## A048477.P686610529969601462

`or(1, 3*n*A000079(n))`
-/

namespace A048477.P686610529969601462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (3 * ((n : ℤ) * A000079 n))

end

end A048477.P686610529969601462

namespace A048477

/-- `or(1, 3*n*A000079(n))` -/
def P686610529969601462.Spec : Prop :=
  ∀ n, P686610529969601462.a n = A048477 n

end A048477

/-! ## A048477.P3502189906833141364

`∑[(n+1)*Δ[A042950(n)]]`
-/

namespace A048477.P3502189906833141364
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042950 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A048477.P3502189906833141364

namespace A048477

/-- `∑[(n+1)*Δ[A042950(n)]]` -/
def P3502189906833141364.Spec : Prop :=
  ∀ n, P3502189906833141364.a n = A048477 n

end A048477

/-! ## A048477.P17498270200170236139

`∑[(n+1)*A122391(n+2)]`
-/

namespace A048477.P17498270200170236139
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A122391 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A048477.P17498270200170236139

namespace A048477

/-- `∑[(n+1)*A122391(n+2)]` -/
def P17498270200170236139.Spec : Prop :=
  ∀ n, P17498270200170236139.a n = A048477 n

end A048477

/-! ## A048477.P12353849274426226902

`∑[(n+1)*A074323(2*n)]`
-/

namespace A048477.P12353849274426226902
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A074323 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A048477.P12353849274426226902

namespace A048477

/-- `∑[(n+1)*A074323(2*n)]` -/
def P12353849274426226902.Spec : Prop :=
  ∀ n, P12353849274426226902.a n = A048477 n

end A048477

/-! ## A048477.P11172355669575024332

`∑[(n+1)*Δ[A266550(n+2)]]`
-/

namespace A048477.P11172355669575024332
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266550 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A048477.P11172355669575024332

namespace A048477

/-- `∑[(n+1)*Δ[A266550(n+2)]]` -/
def P11172355669575024332.Spec : Prop :=
  ∀ n, P11172355669575024332.a n = A048477 n

end A048477

/-! ## A048477.P5062341338557329795

`∑[(n+1)*A029744(2*n+1)]`
-/

namespace A048477.P5062341338557329795
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A029744 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A048477.P5062341338557329795

namespace A048477

/-- `∑[(n+1)*A029744(2*n+1)]` -/
def P5062341338557329795.Spec : Prop :=
  ∀ n, P5062341338557329795.a n = A048477 n

end A048477

/-! ## A048477.P2992439902937520674

`∑[(n+1)*floor(A091629(n+1)/4)]`
-/

namespace A048477.P2992439902937520674
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * ⌊(A091629 (n + 1) : ℚ) / 4⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A048477.P2992439902937520674

namespace A048477

/-- `∑[(n+1)*floor(A091629(n+1)/4)]` -/
def P2992439902937520674.Spec : Prop :=
  ∀ n, P2992439902937520674.a n = A048477 n

end A048477

/-! ## A048477.P7833467050529339523

`abs(2*n*(n+2-abs(1-n))*A011782(n)+1)`
-/

namespace A048477.P7833467050529339523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |((2 * n : ℤ) * (((n + 2 : ℤ) - |1 - (n : ℤ)|) * A011782 n) + 1)|

end

end A048477.P7833467050529339523

namespace A048477

/-- `abs(2*n*(n+2-abs(1-n))*A011782(n)+1)` -/
def P7833467050529339523.Spec : Prop :=
  ∀ n, P7833467050529339523.a n = A048477 n

end A048477

/-! ## A048477.P5800769364447148777

`ogf((1+2x-2x^2)/(1-5x+8x^2-4x^3))`
-/

namespace A048477.P5800769364447148777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 2, -2] [1, -5, 8, -4] n

end

end A048477.P5800769364447148777

namespace A048477

/-- `ogf((1+2x-2x^2)/(1-5x+8x^2-4x^3))` -/
def P5800769364447148777.Spec : Prop :=
  ∀ n, P5800769364447148777.a n = A048477 n

end A048477

/-! ## A048477.P3862833326708326753

`Δ[(n-2)*A181565(n)]`
-/

namespace A048477.P3862833326708326753
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 2) * A181565 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A048477.P3862833326708326753

namespace A048477

/-- `Δ[(n-2)*A181565(n)]` -/
def P3862833326708326753.Spec : Prop :=
  ∀ n, P3862833326708326753.a n = A048477 n

theorem P3862833326708326753.correct : P3862833326708326753.Spec := by
  intro n
  simp only [A048477, Nat.add_sub_cancel, A048477.P3862833326708326753.f1, A048477.P3862833326708326753.a, A048477.P4668765606070532470.a, A181565, A181565.P8755880695475505405.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A048477

/-! ## A048477.P14017349649326472715

`Δ[(n-2)*A004119(n+1)]`
-/

namespace A048477.P14017349649326472715
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 2) * A004119 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A048477.P14017349649326472715

namespace A048477

/-- `Δ[(n-2)*A004119(n+1)]` -/
def P14017349649326472715.Spec : Prop :=
  ∀ n, P14017349649326472715.a n = A048477 n

end A048477

/-! ## A048477.P1261168561175147531

`Δ[(n-2)*A103204(n+2)]`
-/

namespace A048477.P1261168561175147531
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 2) * A103204 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A048477.P1261168561175147531

namespace A048477

/-- `Δ[(n-2)*A103204(n+2)]` -/
def P1261168561175147531.Spec : Prop :=
  ∀ n, P1261168561175147531.a n = A048477 n

end A048477

/-!
# A048478: a(n) = T(6,n), array T given by A048472.

The programs for A048478, the canonical program `A048478.P15691648648047949246` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A048478 has offset 0).

The definition of A048478 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A048478.P15691648648047949246

`7*n*2^(n-1)+1`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A048478

/-- `7*n*2^(n-1)+1` -/
def P15691648648047949246.Spec : Prop :=
  ∀ n, P15691648648047949246.a n = (A048478 n : ℚ)

end A048478

/-! ## A048478.P4256759716138313743

`∑[ogf((1+3x-3x^2)/(1-4x+4x^2))]`
-/

namespace A048478.P4256759716138313743
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 3, -3] [1, -4, 4] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A048478.P4256759716138313743

namespace A048478

/-- `∑[ogf((1+3x-3x^2)/(1-4x+4x^2))]` -/
def P4256759716138313743.Spec : Prop :=
  ∀ n, P4256759716138313743.a n = A048478 n

end A048478

/-! ## A048478.P16335789464468788599

`abs(n*record[2*a(n-2)]+1)` with `a(0)=2, a(1)=7`
-/

namespace A048478.P16335789464468788599
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 7] fun n f1 =>
  2 * f1 (n - 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 1

end

end A048478.P16335789464468788599

namespace A048478

/-- `abs(n*record[2*a(n-2)]+1)` -/
def P16335789464468788599.Spec : Prop :=
  ∀ n, (P16335789464468788599.a n : ℤ) = A048478 n

end A048478

/-! ## A048478.P15433338682511152652

`ogf((1+3x-3x^2)/(1-5x+8x^2-4x^3))`
-/

namespace A048478.P15433338682511152652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 3, -3] [1, -5, 8, -4] n

end

end A048478.P15433338682511152652

namespace A048478

/-- `ogf((1+3x-3x^2)/(1-5x+8x^2-4x^3))` -/
def P15433338682511152652.Spec : Prop :=
  ∀ n, P15433338682511152652.a n = A048478 n

end A048478

/-! ## A048478.P3455022378754225862

`(7*n*A000079(n)+2)/2`
-/

namespace A048478.P3455022378754225862
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (7 * ((n : ℤ) * A000079 n) + 2 : ℚ) / 2

end

end A048478.P3455022378754225862

namespace A048478

/-- `(7*n*A000079(n)+2)/2` -/
def P3455022378754225862.Spec : Prop :=
  ∀ n, P3455022378754225862.a n = (A048478 n : ℚ)

end A048478

/-! ## A048478.P7836555552041229036

`∑[floor((n+1)*A005009(n)/4)]`
-/

namespace A048478.P7836555552041229036
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((n + 1 : ℤ) * A005009 n : ℚ) / 4⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A048478.P7836555552041229036

namespace A048478

/-- `∑[floor((n+1)*A005009(n)/4)]` -/
def P7836555552041229036.Spec : Prop :=
  ∀ n, P7836555552041229036.a n = A048478 n

end A048478

/-! ## A048478.P6995095578990178027

`abs(A001787(n)-A048479(n))`
-/

namespace A048478.P6995095578990178027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A001787 n - A048479 n|

end

end A048478.P6995095578990178027

namespace A048478

/-- `abs(A001787(n)-A048479(n))` -/
def P6995095578990178027.Spec : Prop :=
  ∀ n, P6995095578990178027.a n = A048478 n

end A048478

/-! ## A048478.P7288491254566835876

`Δ[A048500(n)-A000295(n)]`
-/

namespace A048478.P7288491254566835876
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048500 n - A000295 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A048478.P7288491254566835876

namespace A048478

/-- `Δ[A048500(n)-A000295(n)]` -/
def P7288491254566835876.Spec : Prop :=
  ∀ n, P7288491254566835876.a n = A048478 n

end A048478

/-! ## A048478.P16862071064525418417

`(A048479(n)+A048477(n))/2`
-/

namespace A048478.P16862071064525418417
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048479 n + A048477 n : ℚ) / 2

end

end A048478.P16862071064525418417

namespace A048478

/-- `(A048479(n)+A048477(n))/2` -/
def P16862071064525418417.Spec : Prop :=
  ∀ n, P16862071064525418417.a n = (A048478 n : ℚ)

end A048478

/-! ## A048478.P7611038039819656298

`(A048480(n)+A048476(n))/2`
-/

namespace A048478.P7611038039819656298
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048480 n + A048476 n : ℚ) / 2

end

end A048478.P7611038039819656298

namespace A048478

/-- `(A048480(n)+A048476(n))/2` -/
def P7611038039819656298.Spec : Prop :=
  ∀ n, P7611038039819656298.a n = (A048478 n : ℚ)

end A048478

/-! ## A048478.P4420339028015353883

`A048472(eq[7, A002260(n+1)])`
-/

namespace A048478.P4420339028015353883
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048472 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A048478.P4420339028015353883

namespace A048478

/-- `A048472(eq[7, A002260(n+1)])` -/
def P4420339028015353883.Spec : Prop :=
  ∀ n, P4420339028015353883.a n = A048478 n

end A048478

/-! ## A048478.P4674710576617111286

`A049069(eq[6, A025581(n)])`
-/

namespace A048478.P4674710576617111286
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049069 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A048478.P4674710576617111286

namespace A048478

/-- `A049069(eq[6, A025581(n)])` -/
def P4674710576617111286.Spec : Prop :=
  ∀ n, P4674710576617111286.a n = A048478 n

end A048478

/-! ## A048478.P9291428633709208522

`A049513(eq[7, A025581(n)])`
-/

namespace A048478.P9291428633709208522
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049513 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A048478.P9291428633709208522

namespace A048478

/-- `A049513(eq[7, A025581(n)])` -/
def P9291428633709208522.Spec : Prop :=
  ∀ n, P9291428633709208522.a n = A048478 n

end A048478

/-! ## A048478.P9293950506403341145

`A049513(A000124(n+7)+n-1)`
-/

namespace A048478.P9293950506403341145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049513 (A000124 (n + 7) + ((n : ℤ) - 1)).toNat

end

end A048478.P9293950506403341145

namespace A048478

/-- `A049513(A000124(n+7)+n-1)` -/
def P9293950506403341145.Spec : Prop :=
  ∀ n, P9293950506403341145.a n = A048478 n

end A048478

/-!
# A048479: a(n) = T(7,n), array T given by A048472.

The programs for A048479, the canonical program `A048479.P14112863334807549375` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A048479 has offset 0).

The definition of A048479 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A048479.P14112863334807549375

`8*n*2^(n-1)+1`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A048479

/-- `8*n*2^(n-1)+1` -/
def P14112863334807549375.Spec : Prop :=
  ∀ n, P14112863334807549375.a n = (A048479 n : ℚ)

end A048479

/-! ## A048479.P3460681822327600430

`∑[ogf((1+4x-4x^2)/(1-4x+4x^2))]`
-/

namespace A048479.P3460681822327600430
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 4, -4] [1, -4, 4] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A048479.P3460681822327600430

namespace A048479

/-- `∑[ogf((1+4x-4x^2)/(1-4x+4x^2))]` -/
def P3460681822327600430.Spec : Prop :=
  ∀ n, P3460681822327600430.a n = A048479 n

end A048479

/-! ## A048479.P2402636118414596872

`ogf((1+4x-4x^2)/(1-5x+8x^2-4x^3))`
-/

namespace A048479.P2402636118414596872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 4, -4] [1, -5, 8, -4] n

end

end A048479.P2402636118414596872

namespace A048479

/-- `ogf((1+4x-4x^2)/(1-5x+8x^2-4x^3))` -/
def P2402636118414596872.Spec : Prop :=
  ∀ n, P2402636118414596872.a n = A048479 n

end A048479

/-! ## A048479.P6426115415610068887

`∑[(n+1)*∑[2*a(n-1)]]` with `a(0)=1, a(1)=3, a(2)=4`
-/

namespace A048479.P6426115415610068887
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 3, 4] fun n f2 =>
  2 * f2 (n - 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A048479.P6426115415610068887

namespace A048479

/-- `∑[(n+1)*∑[2*a(n-1)]]` -/
def P6426115415610068887.Spec : Prop :=
  ∀ n, (P6426115415610068887.a n : ℤ) = A048479 n

end A048479

/-! ## A048479.P11502870935416426139

`or(1, A241204(n))`
-/

namespace A048479.P11502870935416426139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A241204 n)

end

end A048479.P11502870935416426139

namespace A048479

/-- `or(1, A241204(n))` -/
def P11502870935416426139.Spec : Prop :=
  ∀ n, P11502870935416426139.a n = A048479 n

end A048479

/-! ## A048479.P18022074948013985003

`∑[2^n*A103517(n)]`
-/

namespace A048479.P18022074948013985003
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A103517 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A048479.P18022074948013985003

namespace A048479

/-- `∑[2^n*A103517(n)]` -/
def P18022074948013985003.Spec : Prop :=
  ∀ n, P18022074948013985003.a n = A048479 n

end A048479

/-! ## A048479.P8917755287344043272

`∑[(n+1)*A151821(n+1)]`
-/

namespace A048479.P8917755287344043272
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A151821 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A048479.P8917755287344043272

namespace A048479

/-- `∑[(n+1)*A151821(n+1)]` -/
def P8917755287344043272.Spec : Prop :=
  ∀ n, P8917755287344043272.a n = A048479 n

end A048479

/-! ## A048479.P11748322811382013125

`∑[(n+1)*A029746(2*n)]`
-/

namespace A048479.P11748322811382013125
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A029746 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A048479.P11748322811382013125

namespace A048479

/-- `∑[(n+1)*A029746(2*n)]` -/
def P11748322811382013125.Spec : Prop :=
  ∀ n, P11748322811382013125.a n = A048479 n

end A048479

/-! ## A048479.P2189203491187968348

`∑[(n+1)*A063759(2*n)]`
-/

namespace A048479.P2189203491187968348
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A063759 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A048479.P2189203491187968348

namespace A048479

/-- `∑[(n+1)*A063759(2*n)]` -/
def P2189203491187968348.Spec : Prop :=
  ∀ n, P2189203491187968348.a n = A048479 n

end A048479

/-! ## A048479.P13460744569942452544

`xor(1, n*Δ[A000225(n+2)])`
-/

namespace A048479.P13460744569942452544
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 ((n : ℤ) * (f1 (n + 1) - f1 n))

end

end A048479.P13460744569942452544

namespace A048479

/-- `xor(1, n*Δ[A000225(n+2)])` -/
def P13460744569942452544.Spec : Prop :=
  ∀ n, P13460744569942452544.a n = A048479 n

end A048479

/-! ## A048479.P9250785118220665642

`∑[(n+1)*record[A135530(n+1)]]`
-/

namespace A048479.P9250785118220665642
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135530 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A048479.P9250785118220665642

namespace A048479

/-- `∑[(n+1)*record[A135530(n+1)]]` -/
def P9250785118220665642.Spec : Prop :=
  ∀ n, P9250785118220665642.a n = A048479 n

end A048479

/-! ## A048479.P7222765427896703608

`∑[(n+1)*A094958(2*n+1)]`
-/

namespace A048479.P7222765427896703608
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A094958 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A048479.P7222765427896703608

namespace A048479

/-- `∑[(n+1)*A094958(2*n+1)]` -/
def P7222765427896703608.Spec : Prop :=
  ∀ n, P7222765427896703608.a n = A048479 n

end A048479

/-! ## A048479.P17820584086830423659

`∑[(n+1)*A263660(2*n+1)]`
-/

namespace A048479.P17820584086830423659
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A263660 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A048479.P17820584086830423659

namespace A048479

/-- `∑[(n+1)*A263660(2*n+1)]` -/
def P17820584086830423659.Spec : Prop :=
  ∀ n, P17820584086830423659.a n = A048479 n

end A048479

/-! ## A048479.P10148198872410257983

`floor(a(n-1)+2*A001787(n+1))` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A048479.P10148198872410257983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + 2 * A001787 (n + 1)

end

end A048479.P10148198872410257983

namespace A048479

/-- `floor(a(n-1)+2*A001787(n+1))` -/
def P10148198872410257983.Spec : Prop :=
  ∀ n, P10148198872410257983.a n = A048479 n

end A048479

/-! ## A048479.P16073680230880557664

`xor(A048578(n), A118417(n))`
-/

namespace A048479.P16073680230880557664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A048578 n) (A118417 n)

end

end A048479.P16073680230880557664

namespace A048479

/-- `xor(A048578(n), A118417(n))` -/
def P16073680230880557664.Spec : Prop :=
  ∀ n, P16073680230880557664.a n = A048479 n

end A048479

/-! ## A048479.P7684387412402715878

`xor(A057427(n), A241204(n))`
-/

namespace A048479.P7684387412402715878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A057427 n) (A241204 n)

end

end A048479.P7684387412402715878

namespace A048479

/-- `xor(A057427(n), A241204(n))` -/
def P7684387412402715878.Spec : Prop :=
  ∀ n, P7684387412402715878.a n = A048479 n

end A048479

/-! ## A048479.P13134412767450916145

`Δ[(n-2)*A020737(n)]`
-/

namespace A048479.P13134412767450916145
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 2) * A020737 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A048479.P13134412767450916145

namespace A048479

/-- `Δ[(n-2)*A020737(n)]` -/
def P13134412767450916145.Spec : Prop :=
  ∀ n, P13134412767450916145.a n = A048479 n

end A048479

/-! ## A048479.P933272154501686050

`Δ[(n-2)*A048578(n+1)]`
-/

namespace A048479.P933272154501686050
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 2) * A048578 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A048479.P933272154501686050

namespace A048479

/-- `Δ[(n-2)*A048578(n+1)]` -/
def P933272154501686050.Spec : Prop :=
  ∀ n, P933272154501686050.a n = A048479 n

end A048479

/-! ## A048479.P3876335910934210054

`Δ[(n-2)*A000051(n+2)]`
-/

namespace A048479.P3876335910934210054
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 2) * A000051 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A048479.P3876335910934210054

namespace A048479

/-- `Δ[(n-2)*A000051(n+2)]` -/
def P3876335910934210054.Spec : Prop :=
  ∀ n, P3876335910934210054.a n = A048479 n

end A048479

/-! ## A048479.P10636329104898244890

`Δ[(n-2)*A083318(n+2)]`
-/

namespace A048479.P10636329104898244890
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 2) * A083318 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A048479.P10636329104898244890

namespace A048479

/-- `Δ[(n-2)*A083318(n+2)]` -/
def P10636329104898244890.Spec : Prop :=
  ∀ n, P10636329104898244890.a n = A048479 n

end A048479

/-!
# A048480: a(n) = T(8,n), array T given by A048472.

The programs for A048480, the canonical program `A048480.P16295939413752333624` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A048480 has offset 0).

The definition of A048480 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A048480.P16295939413752333624

`9*n*2^(n-1)+1`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A048480

/-- `9*n*2^(n-1)+1` -/
def P16295939413752333624.Spec : Prop :=
  ∀ n, P16295939413752333624.a n = (A048480 n : ℚ)

end A048480

/-! ## A048480.P10473740022766924553

`∑[ogf((1+5x-5x^2)/(1-4x+4x^2))]`
-/

namespace A048480.P10473740022766924553
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 5, -5] [1, -4, 4] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A048480.P10473740022766924553

namespace A048480

/-- `∑[ogf((1+5x-5x^2)/(1-4x+4x^2))]` -/
def P10473740022766924553.Spec : Prop :=
  ∀ n, P10473740022766924553.a n = A048480 n

end A048480

/-! ## A048480.P1568248633082050655

`ogf((1+5x-5x^2)/(1-5x+8x^2-4x^3))`
-/

namespace A048480.P1568248633082050655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 5, -5] [1, -5, 8, -4] n

end

end A048480.P1568248633082050655

namespace A048480

/-- `ogf((1+5x-5x^2)/(1-5x+8x^2-4x^3))` -/
def P1568248633082050655.Spec : Prop :=
  ∀ n, P1568248633082050655.a n = A048480 n

end A048480

/-! ## A048480.P13534132446513952609

`or(1, 4*(a(n-1)-a(n-2)))` with `a(0)=1, a(1)=10`
-/

namespace A048480.P13534132446513952609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 10] fun n a =>
  Int.lor 1 (4 * (a (n - 1) - a (n - 2)))

end

end A048480.P13534132446513952609

namespace A048480

/-- `or(1, 4*(a(n-1)-a(n-2)))` -/
def P13534132446513952609.Spec : Prop :=
  ∀ n, P13534132446513952609.a n = A048480 n

end A048480

/-! ## A048480.P509087222756095431

`xor(1, 4*(a(n-1)-a(n-2)))` with `a(0)=1, a(1)=10`
-/

namespace A048480.P509087222756095431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 10] fun n a =>
  Int.xor 1 (4 * (a (n - 1) - a (n - 2)))

end

end A048480.P509087222756095431

namespace A048480

/-- `xor(1, 4*(a(n-1)-a(n-2)))` -/
def P509087222756095431.Spec : Prop :=
  ∀ n, P509087222756095431.a n = A048480 n

end A048480

/-! ## A048480.P12201438541319114196

`abs(3*A048474(n)-2)`
-/

namespace A048480.P12201438541319114196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |3 * A048474 n - 2|

end

end A048480.P12201438541319114196

namespace A048480

/-- `abs(3*A048474(n)-2)` -/
def P12201438541319114196.Spec : Prop :=
  ∀ n, P12201438541319114196.a n = A048480 n

end A048480

/-! ## A048480.P3331722518089076686

`abs(3*n*Δ[A266550(n+2)]+1)`
-/

namespace A048480.P3331722518089076686
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266550 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(3 * n : ℤ) * (f1 (n + 1) - f1 n) + 1|

end

end A048480.P3331722518089076686

namespace A048480

/-- `abs(3*n*Δ[A266550(n+2)]+1)` -/
def P3331722518089076686.Spec : Prop :=
  ∀ n, P3331722518089076686.a n = A048480 n

end A048480

/-! ## A048480.P16833157789669302075

`(8*(a(n-1)-a(n-2))+2)/2` with `a(0)=1, a(1)=10`
-/

namespace A048480.P16833157789669302075
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 10] fun n a =>
  (8 * (a (n - 1) - a (n - 2)) + 2) / 2

end

end A048480.P16833157789669302075

namespace A048480

/-- `(8*(a(n-1)-a(n-2))+2)/2` -/
def P16833157789669302075.Spec : Prop :=
  ∀ n, P16833157789669302075.a n = (A048480 n : ℚ)

end A048480

/-! ## A048480.P3573524416866370887

`(9*n*A000079(n)+2)/2`
-/

namespace A048480.P3573524416866370887
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (9 * ((n : ℤ) * A000079 n) + 2 : ℚ) / 2

end

end A048480.P3573524416866370887

namespace A048480

/-- `(9*n*A000079(n)+2)/2` -/
def P3573524416866370887.Spec : Prop :=
  ∀ n, P3573524416866370887.a n = (A048480 n : ℚ)

end A048480

/-! ## A048480.P14280653427939895096

`ceil((2*A003945(n)*3*n+1)/2)`
-/

namespace A048480.P14280653427939895096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(2 * A003945 n * (3 * n : ℤ) + 1 : ℚ) / 2⌉

end

end A048480.P14280653427939895096

namespace A048480

/-- `ceil((2*A003945(n)*3*n+1)/2)` -/
def P14280653427939895096.Spec : Prop :=
  ∀ n, P14280653427939895096.a n = A048480 n

end A048480

/-! ## A048480.P13162702162669993124

`floor(6*(n*A007283(n)+1)/4)`
-/

namespace A048480.P13162702162669993124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(6 * ((n : ℤ) * A007283 n + 1) : ℚ) / 4⌋

end

end A048480.P13162702162669993124

namespace A048480

/-- `floor(6*(n*A007283(n)+1)/4)` -/
def P13162702162669993124.Spec : Prop :=
  ∀ n, P13162702162669993124.a n = A048480 n

end A048480

/-!
# A048481: a(n) = T(0,n) + T(1,n-1) + ... + T(n,0), array T given by A048472.

The programs for A048481, the canonical program `A048481.P7174928985242152464` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A048481 has offset 0).

The definition of A048481 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A048481.P7174928985242152464

`2^(n+1)*(n-2)+2*n+5`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A048481

/-- `2^(n+1)*(n-2)+2*n+5` -/
def P7174928985242152464.Spec : Prop :=
  ∀ n, P7174928985242152464.a n = A048481 n

theorem P7174928985242152464.correct : P7174928985242152464.Spec := by
  intro n
  simp only [A048481]

end A048481

/-! ## A048481.P1999862677912160810

`∑[∑[ogf((1-3x+4x^2)/(1-4x+4x^2))]]`
-/

namespace A048481.P1999862677912160810
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -3, 4] [1, -4, 4] n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A048481.P1999862677912160810

namespace A048481

/-- `∑[∑[ogf((1-3x+4x^2)/(1-4x+4x^2))]]` -/
def P1999862677912160810.Spec : Prop :=
  ∀ n, P1999862677912160810.a n = A048481 n

end A048481

/-! ## A048481.P10460321144129905543

`∑[A048495(n)]`
-/

namespace A048481.P10460321144129905543
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048495 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A048481.P10460321144129905543

namespace A048481

/-- `∑[A048495(n)]` -/
def P10460321144129905543.Spec : Prop :=
  ∀ n, P10460321144129905543.a n = A048481 n

end A048481

/-! ## A048481.P18004429701509460323

`∑[A000337(n)+1]`
-/

namespace A048481.P18004429701509460323
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000337 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A048481.P18004429701509460323

namespace A048481

/-- `∑[A000337(n)+1]` -/
def P18004429701509460323.Spec : Prop :=
  ∀ n, P18004429701509460323.a n = A048481 n

end A048481

/-! ## A048481.P1673988933728630552

`∑[A188716(n)+n]`
-/

namespace A048481.P1673988933728630552
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188716 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A048481.P1673988933728630552

namespace A048481

/-- `∑[A188716(n)+n]` -/
def P1673988933728630552.Spec : Prop :=
  ∀ n, P1673988933728630552.a n = A048481 n

end A048481

/-! ## A048481.P18201905947859093373

`∑[A098821(n+1)-3]`
-/

namespace A048481.P18201905947859093373
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098821 (n + 1) - 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A048481.P18201905947859093373

namespace A048481

/-- `∑[A098821(n+1)-3]` -/
def P18201905947859093373.Spec : Prop :=
  ∀ n, P18201905947859093373.a n = A048481 n

end A048481

/-! ## A048481.P87163054726672392

`∑[A343291(n+1)-(n+1)]`
-/

namespace A048481.P87163054726672392
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343291 (n + 1) - (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A048481.P87163054726672392

namespace A048481

/-- `∑[A343291(n+1)-(n+1)]` -/
def P87163054726672392.Spec : Prop :=
  ∀ n, P87163054726672392.a n = A048481 n

end A048481

/-! ## A048481.P11237189303286161190

`Δ[A360606(n)]`
-/

namespace A048481.P11237189303286161190
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360606 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A048481.P11237189303286161190

namespace A048481

/-- `Δ[A360606(n)]` -/
def P11237189303286161190.Spec : Prop :=
  ∀ n, P11237189303286161190.a n = A048481 n

theorem P11237189303286161190.correct : P11237189303286161190.Spec := by
  intro n
  simp only [A048481, Nat.add_sub_cancel, A048481.P11237189303286161190.f1, A048481.P11237189303286161190.a, A048481.P7174928985242152464.a, A360606, A360606.P14808680459708010105.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A048481

/-! ## A048481.P4962220866264022288

`∑[2-A159964(n)]`
-/

namespace A048481.P4962220866264022288
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A159964 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A048481.P4962220866264022288

namespace A048481

/-- `∑[2-A159964(n)]` -/
def P4962220866264022288.Spec : Prop :=
  ∀ n, P4962220866264022288.a n = A048481 n

end A048481

/-! ## A048481.P3120517202396244338

`∑[∑[2*n*a(n-1)/(n-1)]]` with `a(0)=1, a(1)=1`
-/

namespace A048481.P3120517202396244338
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.rec [1, 1] fun n f2 =>
  (2 * n : ℚ) * f2 (n - 1) / ((n : ℤ) - 1 : ℚ)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A048481.P3120517202396244338

namespace A048481

/-- `∑[∑[2*n*a(n-1)/(n-1)]]` -/
def P3120517202396244338.Spec : Prop :=
  ∀ n, P3120517202396244338.a n = (A048481 n : ℚ)

end A048481

/-!
# A048482: a(n) = T(n,n), array T given by A048472.

The programs for A048482, the canonical program `A048482.P13152164092618838336` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A048482 has offset 0).

The definition of A048482 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A048482.P13152164092618838336

`(n²+n)*2^(n-1)+1`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A048482

/-- `(n²+n)*2^(n-1)+1` -/
def P13152164092618838336.Spec : Prop :=
  ∀ n, P13152164092618838336.a n = (A048482 n : ℚ)

end A048482

/-! ## A048482.P6749924858748021900

`or(1, 2^n*∑[n])`
-/

namespace A048482.P6749924858748021900
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (2 ^ n * (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A048482.P6749924858748021900

namespace A048482

/-- `or(1, 2^n*∑[n])` -/
def P6749924858748021900.Spec : Prop :=
  ∀ n, (P6749924858748021900.a n : ℤ) = A048482 n

end A048482

/-! ## A048482.P9052377715211852708

`xor(1, 2^n*∑[n])`
-/

namespace A048482.P9052377715211852708
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (2 ^ n * (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A048482.P9052377715211852708

namespace A048482

/-- `xor(1, 2^n*∑[n])` -/
def P9052377715211852708.Spec : Prop :=
  ∀ n, (P9052377715211852708.a n : ℤ) = A048482 n

end A048482

/-! ## A048482.P4601693777208836724

`abs((A000918(n)+2)*∑[n]+1)`
-/

namespace A048482.P4601693777208836724
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(A000918 n + 2) * ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + 1|

end

end A048482.P4601693777208836724

namespace A048482

/-- `abs((A000918(n)+2)*∑[n]+1)` -/
def P4601693777208836724.Spec : Prop :=
  ∀ n, P4601693777208836724.a n = A048482 n

end A048482

/-! ## A048482.P3523415329124346766

`abs((n+1)*(A001787(n)+1)-n)`
-/

namespace A048482.P3523415329124346766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n + 1 : ℤ) * (A001787 n + 1) - (n : ℤ)|

end

end A048482.P3523415329124346766

namespace A048482

/-- `abs((n+1)*(A001787(n)+1)-n)` -/
def P3523415329124346766.Spec : Prop :=
  ∀ n, P3523415329124346766.a n = A048482 n

end A048482

/-! ## A048482.P4333179139098965651

`Δ[∑[A001815(n)]+n]`
-/

namespace A048482.P4333179139098965651
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001815 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A048482.P4333179139098965651

namespace A048482

/-- `Δ[∑[A001815(n)]+n]` -/
def P4333179139098965651.Spec : Prop :=
  ∀ n, P4333179139098965651.a n = A048482 n

end A048482

/-! ## A048482.P139292865707930637

`(A048504(n+1)-n)/2`
-/

namespace A048482.P139292865707930637
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048504 (n + 1) - (n : ℤ) : ℚ) / 2

end

end A048482.P139292865707930637

namespace A048482

/-- `(A048504(n+1)-n)/2` -/
def P139292865707930637.Spec : Prop :=
  ∀ n, P139292865707930637.a n = (A048482 n : ℚ)

end A048482

/-! ## A048482.P1641874521972631479

`abs(A100381(n)-A248917(n))`
-/

namespace A048482.P1641874521972631479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A100381 n - A248917 n|

end

end A048482.P1641874521972631479

namespace A048482

/-- `abs(A100381(n)-A248917(n))` -/
def P1641874521972631479.Spec : Prop :=
  ∀ n, P1641874521972631479.a n = A048482 n

end A048482

/-! ## A048482.P16175832171979927069

`(A248917(n)+A002064(n))/2`
-/

namespace A048482.P16175832171979927069
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A248917 n + A002064 n : ℚ) / 2

end

end A048482.P16175832171979927069

namespace A048482

/-- `(A248917(n)+A002064(n))/2` -/
def P16175832171979927069.Spec : Prop :=
  ∀ n, P16175832171979927069.a n = (A048482 n : ℚ)

end A048482

/-! ## A048482.P9903099980854904774

`record[2*A048505(n)-1]`
-/

namespace A048482.P9903099980854904774
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A048505 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A048482.P9903099980854904774

namespace A048482

/-- `record[2*A048505(n)-1]` -/
def P9903099980854904774.Spec : Prop :=
  ∀ n, P9903099980854904774.a n = A048482 n

end A048482

/-! ## A048482.P4001937973716044758

`record[n*A068009(n)+1]`
-/

namespace A048482.P4001937973716044758
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A068009 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A048482.P4001937973716044758

namespace A048482

/-- `record[n*A068009(n)+1]` -/
def P4001937973716044758.Spec : Prop :=
  ∀ n, P4001937973716044758.a n = A048482 n

end A048482

/-! ## A048482.P17320942372151066219

`record[n*A101508(n)+1]`
-/

namespace A048482.P17320942372151066219
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A101508 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A048482.P17320942372151066219

namespace A048482

/-- `record[n*A101508(n)+1]` -/
def P17320942372151066219.Spec : Prop :=
  ∀ n, P17320942372151066219.a n = A048482 n

end A048482

/-! ## A048482.P17017187827722217471

`record[n*A117352(n)+1]`
-/

namespace A048482.P17017187827722217471
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A117352 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A048482.P17017187827722217471

namespace A048482

/-- `record[n*A117352(n)+1]` -/
def P17017187827722217471.Spec : Prop :=
  ∀ n, P17017187827722217471.a n = A048482 n

end A048482

/-! ## A048482.P2175235548676991788

`record[n*A130321(n)+1]`
-/

namespace A048482.P2175235548676991788
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A130321 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A048482.P2175235548676991788

namespace A048482

/-- `record[n*A130321(n)+1]` -/
def P2175235548676991788.Spec : Prop :=
  ∀ n, P2175235548676991788.a n = A048482 n

end A048482

/-! ## A048482.P9522650361697398463

`record[A048505(n)+A048505(n)-A026692(n+1)]`
-/

namespace A048482.P9522650361697398463
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048505 n + (A048505 n - A026692 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A048482.P9522650361697398463

namespace A048482

/-- `record[A048505(n)+A048505(n)-A026692(n+1)]` -/
def P9522650361697398463.Spec : Prop :=
  ∀ n, P9522650361697398463.a n = A048482 n

end A048482

/-!
# A048483: Array read by antidiagonals: T(k,n) = (k+1)2^n - k.

The programs for A048483, the canonical program `A048483.P2760044418831201233` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A048483 has offset 0).

The definition of A048483 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A048483.P2760044418831201233

`A209274(n+1)-A000096(A002262(n))`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A048483

/-- `A209274(n+1)-A000096(A002262(n))` -/
def P2760044418831201233.Spec : Prop :=
  ∀ n, P2760044418831201233.a n = A048483 n

theorem P2760044418831201233.correct : P2760044418831201233.Spec := by
  intro n
  simp only [A048483]

end A048483

/-! ## A048483.P4078213338101920587

`A000225(A025581(n))*A002260(n+1)+1`
-/

namespace A048483.P4078213338101920587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 (A025581 n).toNat * A002260 (n + 1) + 1

end

end A048483.P4078213338101920587

namespace A048483

/-- `A000225(A025581(n))*A002260(n+1)+1` -/
def P4078213338101920587.Spec : Prop :=
  ∀ n, P4078213338101920587.a n = A048483 n

end A048483

/-! ## A048483.P16892615221856382219

`A002260(n+1)*A130321(n)-A002262(n)`
-/

namespace A048483.P16892615221856382219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1) * A130321 n - A002262 n

end

end A048483.P16892615221856382219

namespace A048483

/-- `A002260(n+1)*A130321(n)-A002262(n)` -/
def P16892615221856382219.Spec : Prop :=
  ∀ n, P16892615221856382219.a n = A048483 n

end A048483

/-! ## A048483.P5285794469840772654

`A002262(n+1)*A130330(n+1)+1`
-/

namespace A048483.P5285794469840772654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (n + 1) * A130330 (n + 1) + 1

end

end A048483.P5285794469840772654

namespace A048483

/-- `A002262(n+1)*A130330(n+1)+1` -/
def P5285794469840772654.Spec : Prop :=
  ∀ n, P5285794469840772654.a n = A048483 n

end A048483

/-! ## A048483.P14804559465792040167

`A130128(A038722(n+1))-A002262(n)`
-/

namespace A048483.P14804559465792040167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130128 (A038722 (n + 1)).toNat - A002262 n

end

end A048483.P14804559465792040167

namespace A048483

/-- `A130128(A038722(n+1))-A002262(n)` -/
def P14804559465792040167.Spec : Prop :=
  ∀ n, P14804559465792040167.a n = A048483 n

end A048483

/-! ## A048483.P1190638765798593297

`A130128(A038722(n+1))-log2(A059268(n))`
-/

namespace A048483.P1190638765798593297
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A130128 (A038722 (n + 1)).toNat : ℝ) - Real.logb 2 (A059268 n : ℝ)

end

end A048483.P1190638765798593297

namespace A048483

/-- `A130128(A038722(n+1))-log2(A059268(n))` -/
def P1190638765798593297.Spec : Prop :=
  ∀ n, P1190638765798593297.a n = (A048483 n : ℝ)

end A048483

/-! ## A048483.P171271191077363667

`A130321(n)+A001065(A130321(n))*A002262(n)`
-/

namespace A048483.P171271191077363667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130321 n + A001065 (A130321 n).toNat * A002262 n

end

end A048483.P171271191077363667

namespace A048483

/-- `A130321(n)+A001065(A130321(n))*A002262(n)` -/
def P171271191077363667.Spec : Prop :=
  ∀ n, P171271191077363667.a n = A048483 n

end A048483

/-! ## A048483.P949367926837912129

`A140472(A054582(n))-A002262(n)`
-/

namespace A048483.P949367926837912129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140472 (A054582 n).toNat - A002262 n

end

end A048483.P949367926837912129

namespace A048483

/-- `A140472(A054582(n))-A002262(n)` -/
def P949367926837912129.Spec : Prop :=
  ∀ n, P949367926837912129.a n = A048483 n

end A048483

/-! ## A048483.P16969436540122086858

`A140472(A054582(n))-A001222(A059268(n))`
-/

namespace A048483.P16969436540122086858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140472 (A054582 n).toNat - A001222 (A059268 n).toNat

end

end A048483.P16969436540122086858

namespace A048483

/-- `A140472(A054582(n))-A001222(A059268(n))` -/
def P16969436540122086858.Spec : Prop :=
  ∀ n, P16969436540122086858.a n = A048483 n

end A048483

/-! ## A048483.P11829309423037355353

`A303548(A224195(n+2))`
-/

namespace A048483.P11829309423037355353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303548 (A224195 (n + 2)).toNat

end

end A048483.P11829309423037355353

namespace A048483

/-- `A303548(A224195(n+2))` -/
def P11829309423037355353.Spec : Prop :=
  ∀ n, P11829309423037355353.a n = A048483 n

end A048483

/-!
# A048484: a(n) = abs(floor(n/2) - A048299(n)).

The programs for A048484, there is no canonical definition to state claims against.
-/

/-! ## A048484.P492846013573139650

`floor((n+1)/2)-A048299(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A048484.P492846013573139650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℚ) / 2⌋ - A048299 (n + 1)

end

end A048484.P492846013573139650

/-! ## A048484.P1209118085427206865

`abs(floor((n+1)/2)-A048299(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A048484.P1209118085427206865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |⌊(n + 1 : ℚ) / 2⌋ - A048299 (n + 1)|

end

end A048484.P1209118085427206865

/-! ## A048484.P461149332689174335

`ceil(n/2-A048299(n+1))`
-/

namespace A048484.P461149332689174335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℚ) / 2 - (A048299 (n + 1) : ℚ)⌉

end

end A048484.P461149332689174335

/-! ## A048484.P2951788249482393692

`n+1-(A048299(n+1)+A008619(n))`
-/

namespace A048484.P2951788249482393692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - (A048299 (n + 1) + A008619 n)

end

end A048484.P2951788249482393692

/-!
# A048485: a(n) = floor(n/2) - A048475(n).

The programs for A048485, there is no canonical definition to state claims against.
-/

/-! ## A048485.P9429522972684377019

`floor((n+1)/2)-A048475(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A048485.P9429522972684377019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℚ) / 2⌋ - A048475 (n + 1)

end

end A048485.P9429522972684377019

/-! ## A048485.P9655318443241585543

`A008619(n)-(A059841(n)+A048475(n+1))`
-/

namespace A048485.P9655318443241585543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n - (A059841 n + A048475 (n + 1))

end

end A048485.P9655318443241585543

/-!
# A048486: Values of k for which the earliest maximal value of A001221(C(k,j)) is j = floor(k/2).

The programs for A048486, there is no canonical definition to state claims against.
-/

/-! ## A048486.P16738371320819073823

`record[gcd(n+1, A048484(n+1))]`
-/

namespace A048486.P16738371320819073823
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A048484 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A048486.P16738371320819073823

/-! ## A048486.P13252577529812862482

`eq[A048299(n+1), A110654(n)]+1`
-/

namespace A048486.P13252577529812862482
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048299 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A048486.P13252577529812862482

/-! ## A048486.P5632533390734272486

`eq[A048299(A123108(2*n)), A123108(n)]`
-/

namespace A048486.P5632533390734272486
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048299 (A123108 (2 * n)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A048486.P5632533390734272486

/-! ## A048486.P2777413851237555391

`eq[A048299(A000007(n)+n), A123108(n)]`
-/

namespace A048486.P2777413851237555391
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048299 (A000007 n + (n : ℤ)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A048486.P2777413851237555391

/-!
# A048487: a(n) = T(4,n), array T given by A048483.

The programs for A048487, the canonical program `A048487.P12792762817219359153` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A048487 has offset 0).

The definition of A048487 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A048487.P12792762817219359153

`5*2^n-4`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A048487

/-- `5*2^n-4` -/
def P12792762817219359153.Spec : Prop :=
  ∀ n, P12792762817219359153.a n = A048487 n

theorem P12792762817219359153.correct : P12792762817219359153.Spec := by
  intro n
  simp only [A048487]

end A048487

/-! ## A048487.P6378430897968919572

`A123208(2*n)`
-/

namespace A048487.P6378430897968919572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123208 (2 * n)

end

end A048487.P6378430897968919572

namespace A048487

/-- `A123208(2*n)` -/
def P6378430897968919572.Spec : Prop :=
  ∀ n, P6378430897968919572.a n = A048487 n

end A048487

/-! ## A048487.P3882246504381298800

`ogf((1+3x)/(1-3x+2x^2))`
-/

namespace A048487.P3882246504381298800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 3] [1, -3, 2] n

end

end A048487.P3882246504381298800

namespace A048487

/-- `ogf((1+3x)/(1-3x+2x^2))` -/
def P3882246504381298800.Spec : Prop :=
  ∀ n, P3882246504381298800.a n = A048487 n

end A048487

/-! ## A048487.P10116452036377760715

`abs(4-lcm(5, 2^n))`
-/

namespace A048487.P10116452036377760715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |4 - (Nat.lcm 5 (2 ^ n) : ℤ)|

end

end A048487.P10116452036377760715

namespace A048487

/-- `abs(4-lcm(5, 2^n))` -/
def P10116452036377760715.Spec : Prop :=
  ∀ n, P10116452036377760715.a n = A048487 n

end A048487

/-! ## A048487.P13717165552210484055

`2*(a(n-1)+2)` with `a(0)=1`
-/

namespace A048487.P13717165552210484055
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  2 * (a (n - 1) + 2)

end

end A048487.P13717165552210484055

namespace A048487

/-- `2*(a(n-1)+2)` -/
def P13717165552210484055.Spec : Prop :=
  ∀ n, (P13717165552210484055.a n : ℤ) = A048487 n

theorem P13717165552210484055.correct : P13717165552210484055.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A048487, Nat.add_sub_cancel, A048487.P13717165552210484055.a, A048487.P12792762817219359153.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A048487, Nat.add_sub_cancel, A048487.P13717165552210484055.a, A048487.P12792762817219359153.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A048487

/-! ## A048487.P18178364280551131687

`∑[2*a(n-1)]` with `a(0)=1, a(1)=5`
-/

namespace A048487.P18178364280551131687
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 5] fun n f1 =>
  2 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A048487.P18178364280551131687

namespace A048487

/-- `∑[2*a(n-1)]` -/
def P18178364280551131687.Spec : Prop :=
  ∀ n, (P18178364280551131687.a n : ℤ) = A048487 n

end A048487

/-! ## A048487.P15286735550786917255

`2*(2-floor(-a(n-1)))` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A048487.P15286735550786917255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * (2 - (-a (n - 1)))

end

end A048487.P15286735550786917255

namespace A048487

/-- `2*(2-floor(-a(n-1)))` -/
def P15286735550786917255.Spec : Prop :=
  ∀ n, P15286735550786917255.a n = A048487 n

theorem P15286735550786917255.correct : P15286735550786917255.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A048487, Nat.add_sub_cancel, A048487.P15286735550786917255.a, A048487.P12792762817219359153.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A048487, Nat.add_sub_cancel, A048487.P15286735550786917255.a, A048487.P12792762817219359153.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A048487

/-! ## A048487.P3512152205510474837

`2*(2-ceil(-a(n-1)))` with `a(0)=1`

`ceil` is left out, it is the identity on integers.
-/

namespace A048487.P3512152205510474837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * (2 - (-a (n - 1)))

end

end A048487.P3512152205510474837

namespace A048487

/-- `2*(2-ceil(-a(n-1)))` -/
def P3512152205510474837.Spec : Prop :=
  ∀ n, P3512152205510474837.a n = A048487 n

theorem P3512152205510474837.correct : P3512152205510474837.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A048487, Nat.add_sub_cancel, A048487.P3512152205510474837.a, A048487.P12792762817219359153.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A048487, Nat.add_sub_cancel, A048487.P3512152205510474837.a, A048487.P12792762817219359153.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A048487

/-! ## A048487.P8901667421168715145

`2*(2-round(-a(n-1)))` with `a(0)=1`

`round` is left out, it is the identity on integers.
-/

namespace A048487.P8901667421168715145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * (2 - (-a (n - 1)))

end

end A048487.P8901667421168715145

namespace A048487

/-- `2*(2-round(-a(n-1)))` -/
def P8901667421168715145.Spec : Prop :=
  ∀ n, P8901667421168715145.a n = A048487 n

theorem P8901667421168715145.correct : P8901667421168715145.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A048487, Nat.add_sub_cancel, A048487.P8901667421168715145.a, A048487.P12792762817219359153.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A048487, Nat.add_sub_cancel, A048487.P8901667421168715145.a, A048487.P12792762817219359153.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A048487

/-! ## A048487.P16729875741319248396

`(a(n-1)+2)/(1-1/2)` with `a(0)=1`
-/

namespace A048487.P16729875741319248396
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (a (n - 1) + 2) / (1 - (1 : ℚ) / 2)

end

end A048487.P16729875741319248396

namespace A048487

/-- `(a(n-1)+2)/(1-1/2)` -/
def P16729875741319248396.Spec : Prop :=
  ∀ n, P16729875741319248396.a n = (A048487 n : ℚ)

theorem P16729875741319248396.correct : P16729875741319248396.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A048487, Nat.add_sub_cancel, A048487.P16729875741319248396.a, A048487.P12792762817219359153.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A048487, Nat.add_sub_cancel, A048487.P16729875741319248396.a, A048487.P12792762817219359153.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A048487

/-! ## A048487.P5449079884040148897

`4*(2-(2-a(n-1))/2)` with `a(0)=1`
-/

namespace A048487.P5449079884040148897
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  4 * (2 - (2 - a (n - 1)) / 2)

end

end A048487.P5449079884040148897

namespace A048487

/-- `4*(2-(2-a(n-1))/2)` -/
def P5449079884040148897.Spec : Prop :=
  ∀ n, P5449079884040148897.a n = (A048487 n : ℚ)

theorem P5449079884040148897.correct : P5449079884040148897.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A048487, Nat.add_sub_cancel, A048487.P5449079884040148897.a, A048487.P12792762817219359153.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A048487, Nat.add_sub_cancel, A048487.P5449079884040148897.a, A048487.P12792762817219359153.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A048487

/-! ## A048487.P16570205857645592268

`∑[a(n-1)/(1-1/2)]` with `a(0)=1, a(1)=5`
-/

namespace A048487.P16570205857645592268
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1, 5] fun n f1 =>
  f1 (n - 1) / (1 - (1 : ℚ) / 2)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A048487.P16570205857645592268

namespace A048487

/-- `∑[a(n-1)/(1-1/2)]` -/
def P16570205857645592268.Spec : Prop :=
  ∀ n, P16570205857645592268.a n = (A048487 n : ℚ)

end A048487

/-! ## A048487.P744725478658814609

`abs(a(n-1)+a(n-1)+4)` with `a(0)=1`
-/

namespace A048487.P744725478658814609
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (a (n - 1) + 4)

end

end A048487.P744725478658814609

namespace A048487

/-- `abs(a(n-1)+a(n-1)+4)` -/
def P744725478658814609.Spec : Prop :=
  ∀ n, (P744725478658814609.a n : ℤ) = A048487 n

theorem P744725478658814609.correct : P744725478658814609.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A048487, Nat.add_sub_cancel, A048487.P744725478658814609.a, A048487.P12792762817219359153.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A048487, Nat.add_sub_cancel, A048487.P744725478658814609.a, A048487.P12792762817219359153.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A048487

/-! ## A048487.P3009732490623820092

`floor(a(n-1)+a(n-1)+4)` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A048487.P3009732490623820092
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (a (n - 1) + 4)

end

end A048487.P3009732490623820092

namespace A048487

/-- `floor(a(n-1)+a(n-1)+4)` -/
def P3009732490623820092.Spec : Prop :=
  ∀ n, (P3009732490623820092.a n : ℤ) = A048487 n

theorem P3009732490623820092.correct : P3009732490623820092.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A048487, Nat.add_sub_cancel, A048487.P3009732490623820092.a, A048487.P12792762817219359153.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A048487, Nat.add_sub_cancel, A048487.P3009732490623820092.a, A048487.P12792762817219359153.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A048487

/-! ## A048487.P10275415958132939423

`ceil(a(n-1)+a(n-1)+4)` with `a(0)=1`

`ceil` is left out, it is the identity on integers.
-/

namespace A048487.P10275415958132939423
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (a (n - 1) + 4)

end

end A048487.P10275415958132939423

namespace A048487

/-- `ceil(a(n-1)+a(n-1)+4)` -/
def P10275415958132939423.Spec : Prop :=
  ∀ n, (P10275415958132939423.a n : ℤ) = A048487 n

theorem P10275415958132939423.correct : P10275415958132939423.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A048487, Nat.add_sub_cancel, A048487.P10275415958132939423.a, A048487.P12792762817219359153.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A048487, Nat.add_sub_cancel, A048487.P10275415958132939423.a, A048487.P12792762817219359153.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A048487

/-! ## A048487.P9449869195813204538

`round(a(n-1)+a(n-1)+4)` with `a(0)=1`

`round` is left out, it is the identity on integers.
-/

namespace A048487.P9449869195813204538
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (a (n - 1) + 4)

end

end A048487.P9449869195813204538

namespace A048487

/-- `round(a(n-1)+a(n-1)+4)` -/
def P9449869195813204538.Spec : Prop :=
  ∀ n, (P9449869195813204538.a n : ℤ) = A048487 n

theorem P9449869195813204538.correct : P9449869195813204538.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A048487, Nat.add_sub_cancel, A048487.P9449869195813204538.a, A048487.P12792762817219359153.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A048487, Nat.add_sub_cancel, A048487.P9449869195813204538.a, A048487.P12792762817219359153.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A048487

/-! ## A048487.P17711823037626014983

`lcm(2, a(n-1)+a(n-1)+4)` with `a(0)=1`
-/

namespace A048487.P17711823037626014983
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.lcm 2 (a (n - 1) + (a (n - 1) + 4))

end

end A048487.P17711823037626014983

namespace A048487

/-- `lcm(2, a(n-1)+a(n-1)+4)` -/
def P17711823037626014983.Spec : Prop :=
  ∀ n, (P17711823037626014983.a n : ℤ) = A048487 n

end A048487

/-! ## A048487.P12360090083369033469

`xor(1, a(n-1)+a(n-1)+5)` with `a(0)=1`
-/

namespace A048487.P12360090083369033469
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.xor 1 (a (n - 1) + (a (n - 1) + 5))

end

end A048487.P12360090083369033469

namespace A048487

/-- `xor(1, a(n-1)+a(n-1)+5)` -/
def P12360090083369033469.Spec : Prop :=
  ∀ n, (P12360090083369033469.a n : ℤ) = A048487 n

end A048487

/-! ## A048487.P10114142965880676067

`record[a(n-2)+a(n-2)+4]` with `a(0)=1, a(1)=0`
-/

namespace A048487.P10114142965880676067
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 0] fun n f1 =>
  f1 (n - 2) + (f1 (n - 2) + 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A048487.P10114142965880676067

namespace A048487

/-- `record[a(n-2)+a(n-2)+4]` -/
def P10114142965880676067.Spec : Prop :=
  ∀ n, (P10114142965880676067.a n : ℤ) = A048487 n

end A048487

/-! ## A048487.P15399100152377078989

`2*(2-(floor(n-a(n-1))-n))` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A048487.P15399100152377078989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * (2 - ((n : ℤ) - a (n - 1) - (n : ℤ)))

end

end A048487.P15399100152377078989

namespace A048487

/-- `2*(2-(floor(n-a(n-1))-n))` -/
def P15399100152377078989.Spec : Prop :=
  ∀ n, P15399100152377078989.a n = A048487 n

theorem P15399100152377078989.correct : P15399100152377078989.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A048487, Nat.add_sub_cancel, A048487.P15399100152377078989.a, A048487.P12792762817219359153.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A048487, Nat.add_sub_cancel, A048487.P15399100152377078989.a, A048487.P12792762817219359153.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A048487

/-!
# A048488: a(n) = 6*2^n - 5.

The programs for A048488, the canonical program `A048488.P11176368568571230835` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A048488 has offset 0).

The definition of A048488 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `6*2^n-5` (program `A048488.P11176368568571230835`, by `A048488.P11176368568571230835.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A048488.P11176368568571230835

`6*2^n-5`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A048488

/-- `6*2^n-5` -/
def P11176368568571230835.Spec : Prop :=
  ∀ n, P11176368568571230835.a n = A048488 n

theorem P11176368568571230835.correct : P11176368568571230835.Spec := by
  intro n
  simp only [A048488]

end A048488

/-! ## A048488.P4367776141418761794

`(3*A000918(n+2)-4)/2`
-/

namespace A048488.P4367776141418761794
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 * A000918 (n + 2) - 4 : ℚ) / 2

end

end A048488.P4367776141418761794

namespace A048488

/-- `(3*A000918(n+2)-4)/2` -/
def P4367776141418761794.Spec : Prop :=
  ∀ n, P4367776141418761794.a n = (A048488 n : ℚ)

theorem P4367776141418761794.correct : P4367776141418761794.Spec := by
  intro n
  simp only [A048488, Nat.add_sub_cancel, A048488.P4367776141418761794.a, A048488.P11176368568571230835.a, A000918, A000918.P14329454465793069288.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A048488

/-! ## A048488.P11725970959995220788

`ogf((1+4x)/(1-3x+2x^2))`
-/

namespace A048488.P11725970959995220788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 4] [1, -3, 2] n

end

end A048488.P11725970959995220788

namespace A048488

/-- `ogf((1+4x)/(1-3x+2x^2))` -/
def P11725970959995220788.Spec : Prop :=
  ∀ n, P11725970959995220788.a n = A048488 n

end A048488

/-! ## A048488.P7518276746543509167

`∑[2*a(n-1)]` with `a(0)=1, a(1)=6`
-/

namespace A048488.P7518276746543509167
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 6] fun n f1 =>
  2 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A048488.P7518276746543509167

namespace A048488

/-- `∑[2*a(n-1)]` -/
def P7518276746543509167.Spec : Prop :=
  ∀ n, (P7518276746543509167.a n : ℤ) = A048488 n

end A048488

/-! ## A048488.P2034427480196398489

`abs(lcm(3, 2^(n+1))-5)`
-/

namespace A048488.P2034427480196398489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(Nat.lcm 3 (2 ^ (n + 1)) : ℤ) - 5|

end

end A048488.P2034427480196398489

namespace A048488

/-- `abs(lcm(3, 2^(n+1))-5)` -/
def P2034427480196398489.Spec : Prop :=
  ∀ n, P2034427480196398489.a n = A048488 n

end A048488

/-! ## A048488.P412214176502125307

`abs(2*a(n-1)+5)` with `a(0)=1`
-/

namespace A048488.P412214176502125307
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  2 * a (n - 1) + 5

end

end A048488.P412214176502125307

namespace A048488

/-- `abs(2*a(n-1)+5)` -/
def P412214176502125307.Spec : Prop :=
  ∀ n, (P412214176502125307.a n : ℤ) = A048488 n

theorem P412214176502125307.correct : P412214176502125307.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A048488, Nat.add_sub_cancel, A048488.P412214176502125307.a, A048488.P11176368568571230835.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A048488, Nat.add_sub_cancel, A048488.P412214176502125307.a, A048488.P11176368568571230835.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A048488

/-! ## A048488.P13680605462243527339

`2*(a(n-1)+5/2)` with `a(0)=1`
-/

namespace A048488.P13680605462243527339
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  2 * (a (n - 1) + (5 : ℚ) / 2)

end

end A048488.P13680605462243527339

namespace A048488

/-- `2*(a(n-1)+5/2)` -/
def P13680605462243527339.Spec : Prop :=
  ∀ n, P13680605462243527339.a n = (A048488 n : ℚ)

theorem P13680605462243527339.correct : P13680605462243527339.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A048488, Nat.add_sub_cancel, A048488.P13680605462243527339.a, A048488.P11176368568571230835.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A048488, Nat.add_sub_cancel, A048488.P13680605462243527339.a, A048488.P11176368568571230835.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A048488

/-! ## A048488.P899489403846454517

`or(1, 2*(a(n-1)+2))` with `a(0)=1`
-/

namespace A048488.P899489403846454517
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.lor 1 (2 * (a (n - 1) + 2))

end

end A048488.P899489403846454517

namespace A048488

/-- `or(1, 2*(a(n-1)+2))` -/
def P899489403846454517.Spec : Prop :=
  ∀ n, (P899489403846454517.a n : ℤ) = A048488 n

end A048488

/-! ## A048488.P1224415592945073319

`xor(1, 2*(a(n-1)+2))` with `a(0)=1`
-/

namespace A048488.P1224415592945073319
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.xor 1 (2 * (a (n - 1) + 2))

end

end A048488.P1224415592945073319

namespace A048488

/-- `xor(1, 2*(a(n-1)+2))` -/
def P1224415592945073319.Spec : Prop :=
  ∀ n, (P1224415592945073319.a n : ℤ) = A048488 n

end A048488

/-! ## A048488.P4901450492347204151

`record[2*a(n-2)+5]` with `a(0)=1, a(1)=0`
-/

namespace A048488.P4901450492347204151
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 0] fun n f1 =>
  2 * f1 (n - 2) + 5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A048488.P4901450492347204151

namespace A048488

/-- `record[2*a(n-2)+5]` -/
def P4901450492347204151.Spec : Prop :=
  ∀ n, (P4901450492347204151.a n : ℤ) = A048488 n

end A048488

/-! ## A048488.P9133000772397455386

`floor(2*(a(n-1)+ϕ²))` with `a(0)=1`
-/

namespace A048488.P9133000772397455386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌊2 * ((a (n - 1) : ℝ) + Real.goldenRatio ^ 2)⌋

end

end A048488.P9133000772397455386

namespace A048488

/-- `floor(2*(a(n-1)+ϕ²))` -/
def P9133000772397455386.Spec : Prop :=
  ∀ n, P9133000772397455386.a n = A048488 n

end A048488

/-! ## A048488.P6658475550384850208

`round(2*(a(n-1)+ϕ²))` with `a(0)=1`
-/

namespace A048488.P6658475550384850208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  SequenceMachineLib.roundAway (2 * ((a (n - 1) : ℝ) + Real.goldenRatio ^ 2))

end

end A048488.P6658475550384850208

namespace A048488

/-- `round(2*(a(n-1)+ϕ²))` -/
def P6658475550384850208.Spec : Prop :=
  ∀ n, P6658475550384850208.a n = A048488 n

end A048488

/-! ## A048488.P4783283301621091699

`floor(2*(a(n-1)+1+ϕ))` with `a(0)=1`
-/

namespace A048488.P4783283301621091699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌊2 * ((a (n - 1) + 1 : ℝ) + Real.goldenRatio)⌋

end

end A048488.P4783283301621091699

namespace A048488

/-- `floor(2*(a(n-1)+1+ϕ))` -/
def P4783283301621091699.Spec : Prop :=
  ∀ n, P4783283301621091699.a n = A048488 n

end A048488

/-! ## A048488.P5808820605426100652

`∑[2^n*3%(2*(n+1))]`
-/

namespace A048488.P5808820605426100652
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n * (3 % (2 * (n + 1)))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A048488.P5808820605426100652

namespace A048488

/-- `∑[2^n*3%(2*(n+1))]` -/
def P5808820605426100652.Spec : Prop :=
  ∀ n, (P5808820605426100652.a n : ℤ) = A048488 n

end A048488

/-! ## A048488.P8569428937317549881

`2*(3-(1/2-a(n-1)))` with `a(0)=1`
-/

namespace A048488.P8569428937317549881
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  2 * (3 - ((1 : ℚ) / 2 - a (n - 1)))

end

end A048488.P8569428937317549881

namespace A048488

/-- `2*(3-(1/2-a(n-1)))` -/
def P8569428937317549881.Spec : Prop :=
  ∀ n, P8569428937317549881.a n = (A048488 n : ℚ)

theorem P8569428937317549881.correct : P8569428937317549881.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A048488, Nat.add_sub_cancel, A048488.P8569428937317549881.a, A048488.P11176368568571230835.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A048488, Nat.add_sub_cancel, A048488.P8569428937317549881.a, A048488.P11176368568571230835.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A048488

/-! ## A048488.P1746556512180857183

`abs(a(n-1)+a(n-1)+5)` with `a(0)=1`
-/

namespace A048488.P1746556512180857183
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (a (n - 1) + 5)

end

end A048488.P1746556512180857183

namespace A048488

/-- `abs(a(n-1)+a(n-1)+5)` -/
def P1746556512180857183.Spec : Prop :=
  ∀ n, (P1746556512180857183.a n : ℤ) = A048488 n

theorem P1746556512180857183.correct : P1746556512180857183.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A048488, Nat.add_sub_cancel, A048488.P1746556512180857183.a, A048488.P11176368568571230835.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A048488, Nat.add_sub_cancel, A048488.P1746556512180857183.a, A048488.P11176368568571230835.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A048488

/-! ## A048488.P2494812773835246692

`floor(a(n-1)+a(n-1)+5)` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A048488.P2494812773835246692
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (a (n - 1) + 5)

end

end A048488.P2494812773835246692

namespace A048488

/-- `floor(a(n-1)+a(n-1)+5)` -/
def P2494812773835246692.Spec : Prop :=
  ∀ n, (P2494812773835246692.a n : ℤ) = A048488 n

theorem P2494812773835246692.correct : P2494812773835246692.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A048488, Nat.add_sub_cancel, A048488.P2494812773835246692.a, A048488.P11176368568571230835.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A048488, Nat.add_sub_cancel, A048488.P2494812773835246692.a, A048488.P11176368568571230835.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A048488

/-! ## A048488.P10718436011497522766

`ceil(a(n-1)+a(n-1)+5)` with `a(0)=1`

`ceil` is left out, it is the identity on integers.
-/

namespace A048488.P10718436011497522766
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (a (n - 1) + 5)

end

end A048488.P10718436011497522766

namespace A048488

/-- `ceil(a(n-1)+a(n-1)+5)` -/
def P10718436011497522766.Spec : Prop :=
  ∀ n, (P10718436011497522766.a n : ℤ) = A048488 n

theorem P10718436011497522766.correct : P10718436011497522766.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A048488, Nat.add_sub_cancel, A048488.P10718436011497522766.a, A048488.P11176368568571230835.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A048488, Nat.add_sub_cancel, A048488.P10718436011497522766.a, A048488.P11176368568571230835.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A048488

/-! ## A048488.P3018974588965133762

`round(a(n-1)+a(n-1)+5)` with `a(0)=1`

`round` is left out, it is the identity on integers.
-/

namespace A048488.P3018974588965133762
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (a (n - 1) + 5)

end

end A048488.P3018974588965133762

namespace A048488

/-- `round(a(n-1)+a(n-1)+5)` -/
def P3018974588965133762.Spec : Prop :=
  ∀ n, (P3018974588965133762.a n : ℤ) = A048488 n

theorem P3018974588965133762.correct : P3018974588965133762.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A048488, Nat.add_sub_cancel, A048488.P3018974588965133762.a, A048488.P11176368568571230835.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A048488, Nat.add_sub_cancel, A048488.P3018974588965133762.a, A048488.P11176368568571230835.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A048488

/-! ## A048488.P16676631414191784744

`or(1, a(n-1)+a(n-1)+4)` with `a(0)=1`
-/

namespace A048488.P16676631414191784744
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.lor 1 (a (n - 1) + (a (n - 1) + 4))

end

end A048488.P16676631414191784744

namespace A048488

/-- `or(1, a(n-1)+a(n-1)+4)` -/
def P16676631414191784744.Spec : Prop :=
  ∀ n, (P16676631414191784744.a n : ℤ) = A048488 n

end A048488

/-!
# A048489: a(n) = 7*2^n - 6.

The programs for A048489, the canonical program `A048489.P11253217557276495286` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A048489 has offset 0).

The definition of A048489 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `7*2^n-6` (program `A048489.P11253217557276495286`, by `A048489.P11253217557276495286.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A048489.P11253217557276495286

`7*2^n-6`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A048489

/-- `7*2^n-6` -/
def P11253217557276495286.Spec : Prop :=
  ∀ n, P11253217557276495286.a n = A048489 n

theorem P11253217557276495286.correct : P11253217557276495286.Spec := by
  intro n
  simp only [A048489]

end A048489

/-! ## A048489.P6030293451992988552

`A063757(2*n)`
-/

namespace A048489.P6030293451992988552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063757 (2 * n)

end

end A048489.P6030293451992988552

namespace A048489

/-- `A063757(2*n)` -/
def P6030293451992988552.Spec : Prop :=
  ∀ n, P6030293451992988552.a n = A048489 n

end A048489

/-! ## A048489.P3075890479422696933

`ogf((1+5x)/(1-3x+2x^2))`
-/

namespace A048489.P3075890479422696933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 5] [1, -3, 2] n

end

end A048489.P3075890479422696933

namespace A048489

/-- `ogf((1+5x)/(1-3x+2x^2))` -/
def P3075890479422696933.Spec : Prop :=
  ∀ n, P3075890479422696933.a n = A048489 n

end A048489

/-! ## A048489.P17734015273510721180

`2*(a(n-1)+3)` with `a(0)=1`
-/

namespace A048489.P17734015273510721180
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  2 * (a (n - 1) + 3)

end

end A048489.P17734015273510721180

namespace A048489

/-- `2*(a(n-1)+3)` -/
def P17734015273510721180.Spec : Prop :=
  ∀ n, (P17734015273510721180.a n : ℤ) = A048489 n

theorem P17734015273510721180.correct : P17734015273510721180.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A048489, Nat.add_sub_cancel, A048489.P17734015273510721180.a, A048489.P11253217557276495286.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A048489, Nat.add_sub_cancel, A048489.P17734015273510721180.a, A048489.P11253217557276495286.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A048489

/-! ## A048489.P2871902258877481954

`∑[2*a(n-1)]` with `a(0)=1, a(1)=7`
-/

namespace A048489.P2871902258877481954
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 7] fun n f1 =>
  2 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A048489.P2871902258877481954

namespace A048489

/-- `∑[2*a(n-1)]` -/
def P2871902258877481954.Spec : Prop :=
  ∀ n, (P2871902258877481954.a n : ℤ) = A048489 n

end A048489

/-! ## A048489.P14247927766095610787

`lcm(2, a(n-1)+3)` with `a(0)=1, a(1)=8`
-/

namespace A048489.P14247927766095610787
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 8] fun n a =>
  Nat.lcm 2 (a (n - 1) + 3)

end

end A048489.P14247927766095610787

namespace A048489

/-- `lcm(2, a(n-1)+3)` -/
def P14247927766095610787.Spec : Prop :=
  ∀ n, (P14247927766095610787.a n : ℤ) = A048489 n

end A048489

/-! ## A048489.P2919232595104751077

`2*(3-floor(-a(n-1)))` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A048489.P2919232595104751077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * (3 - (-a (n - 1)))

end

end A048489.P2919232595104751077

namespace A048489

/-- `2*(3-floor(-a(n-1)))` -/
def P2919232595104751077.Spec : Prop :=
  ∀ n, P2919232595104751077.a n = A048489 n

theorem P2919232595104751077.correct : P2919232595104751077.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A048489, Nat.add_sub_cancel, A048489.P2919232595104751077.a, A048489.P11253217557276495286.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A048489, Nat.add_sub_cancel, A048489.P2919232595104751077.a, A048489.P11253217557276495286.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A048489

/-! ## A048489.P10754197214260942985

`2*(3-ceil(-a(n-1)))` with `a(0)=1`

`ceil` is left out, it is the identity on integers.
-/

namespace A048489.P10754197214260942985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * (3 - (-a (n - 1)))

end

end A048489.P10754197214260942985

namespace A048489

/-- `2*(3-ceil(-a(n-1)))` -/
def P10754197214260942985.Spec : Prop :=
  ∀ n, P10754197214260942985.a n = A048489 n

theorem P10754197214260942985.correct : P10754197214260942985.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A048489, Nat.add_sub_cancel, A048489.P10754197214260942985.a, A048489.P11253217557276495286.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A048489, Nat.add_sub_cancel, A048489.P10754197214260942985.a, A048489.P11253217557276495286.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A048489

/-! ## A048489.P7150879416266363595

`2*(3-round(-a(n-1)))` with `a(0)=1`

`round` is left out, it is the identity on integers.
-/

namespace A048489.P7150879416266363595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * (3 - (-a (n - 1)))

end

end A048489.P7150879416266363595

namespace A048489

/-- `2*(3-round(-a(n-1)))` -/
def P7150879416266363595.Spec : Prop :=
  ∀ n, P7150879416266363595.a n = A048489 n

theorem P7150879416266363595.correct : P7150879416266363595.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A048489, Nat.add_sub_cancel, A048489.P7150879416266363595.a, A048489.P11253217557276495286.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A048489, Nat.add_sub_cancel, A048489.P7150879416266363595.a, A048489.P11253217557276495286.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A048489

/-! ## A048489.P112258094908515587

`∑[a(n-1)+a(n-1)]` with `a(0)=1, a(1)=7`
-/

namespace A048489.P112258094908515587
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 7] fun n f1 =>
  f1 (n - 1) + f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A048489.P112258094908515587

namespace A048489

/-- `∑[a(n-1)+a(n-1)]` -/
def P112258094908515587.Spec : Prop :=
  ∀ n, (P112258094908515587.a n : ℤ) = A048489 n

end A048489

/-! ## A048489.P15912788164662474515

`(a(n-1)+3)/(1-1/2)` with `a(0)=1`
-/

namespace A048489.P15912788164662474515
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (a (n - 1) + 3) / (1 - (1 : ℚ) / 2)

end

end A048489.P15912788164662474515

namespace A048489

/-- `(a(n-1)+3)/(1-1/2)` -/
def P15912788164662474515.Spec : Prop :=
  ∀ n, P15912788164662474515.a n = (A048489 n : ℚ)

theorem P15912788164662474515.correct : P15912788164662474515.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A048489, Nat.add_sub_cancel, A048489.P15912788164662474515.a, A048489.P11253217557276495286.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A048489, Nat.add_sub_cancel, A048489.P15912788164662474515.a, A048489.P11253217557276495286.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A048489

/-! ## A048489.P5591558452804378592

`4*(2-(1-a(n-1))/2)` with `a(0)=1`
-/

namespace A048489.P5591558452804378592
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  4 * (2 - (1 - a (n - 1)) / 2)

end

end A048489.P5591558452804378592

namespace A048489

/-- `4*(2-(1-a(n-1))/2)` -/
def P5591558452804378592.Spec : Prop :=
  ∀ n, P5591558452804378592.a n = (A048489 n : ℚ)

theorem P5591558452804378592.correct : P5591558452804378592.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A048489, Nat.add_sub_cancel, A048489.P5591558452804378592.a, A048489.P11253217557276495286.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A048489, Nat.add_sub_cancel, A048489.P5591558452804378592.a, A048489.P11253217557276495286.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A048489

/-! ## A048489.P3426391946395885213

`floor(a(n-1)+a(n-1)+6)` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A048489.P3426391946395885213
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (a (n - 1) + 6)

end

end A048489.P3426391946395885213

namespace A048489

/-- `floor(a(n-1)+a(n-1)+6)` -/
def P3426391946395885213.Spec : Prop :=
  ∀ n, (P3426391946395885213.a n : ℤ) = A048489 n

theorem P3426391946395885213.correct : P3426391946395885213.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A048489, Nat.add_sub_cancel, A048489.P3426391946395885213.a, A048489.P11253217557276495286.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A048489, Nat.add_sub_cancel, A048489.P3426391946395885213.a, A048489.P11253217557276495286.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A048489

/-! ## A048489.P3448339707646269370

`2*(3-(floor(n-a(n-1))-n))` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A048489.P3448339707646269370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * (3 - ((n : ℤ) - a (n - 1) - (n : ℤ)))

end

end A048489.P3448339707646269370

namespace A048489

/-- `2*(3-(floor(n-a(n-1))-n))` -/
def P3448339707646269370.Spec : Prop :=
  ∀ n, P3448339707646269370.a n = A048489 n

theorem P3448339707646269370.correct : P3448339707646269370.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A048489, Nat.add_sub_cancel, A048489.P3448339707646269370.a, A048489.P11253217557276495286.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A048489, Nat.add_sub_cancel, A048489.P3448339707646269370.a, A048489.P11253217557276495286.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A048489

/-! ## A048489.P9076671626311889216

`2*(2*a(n-1)-(a(n-1)-3))` with `a(0)=1`
-/

namespace A048489.P9076671626311889216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * (2 * a (n - 1) - (a (n - 1) - 3))

end

end A048489.P9076671626311889216

namespace A048489

/-- `2*(2*a(n-1)-(a(n-1)-3))` -/
def P9076671626311889216.Spec : Prop :=
  ∀ n, P9076671626311889216.a n = A048489 n

theorem P9076671626311889216.correct : P9076671626311889216.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A048489, Nat.add_sub_cancel, A048489.P9076671626311889216.a, A048489.P11253217557276495286.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A048489, Nat.add_sub_cancel, A048489.P9076671626311889216.a, A048489.P11253217557276495286.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A048489

/-! ## A048489.P16482252104371696344

`∑[A135092(n)]`
-/

namespace A048489.P16482252104371696344
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135092 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A048489.P16482252104371696344

namespace A048489

/-- `∑[A135092(n)]` -/
def P16482252104371696344.Spec : Prop :=
  ∀ n, P16482252104371696344.a n = A048489 n

end A048489

/-! ## A048489.P10115600289863996009

`A220753(2*n)`
-/

namespace A048489.P10115600289863996009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220753 (2 * n)

end

end A048489.P10115600289863996009

namespace A048489

/-- `A220753(2*n)` -/
def P10115600289863996009.Spec : Prop :=
  ∀ n, P10115600289863996009.a n = A048489 n

end A048489

/-! ## A048489.P13529073679015008649

`record[∑[A063759(n)]/A010685(n)]`
-/

namespace A048489.P13529073679015008649
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063759 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℤ) : ℚ) / (A010685 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A048489.P13529073679015008649

namespace A048489

/-- `record[∑[A063759(n)]/A010685(n)]` -/
def P13529073679015008649.Spec : Prop :=
  ∀ n, P13529073679015008649.a n = (A048489 n : ℚ)

end A048489

/-! ## A048489.P2538434746813818568

`∑[or(A082505(n+1), A082505(n))]`
-/

namespace A048489.P2538434746813818568
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A082505 (n + 1)) (A082505 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A048489.P2538434746813818568

namespace A048489

/-- `∑[or(A082505(n+1), A082505(n))]` -/
def P2538434746813818568.Spec : Prop :=
  ∀ n, P2538434746813818568.a n = A048489 n

end A048489

/-! ## A048489.P13330054477079242847

`Δ[A131068(n)]`
-/

namespace A048489.P13330054477079242847
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131068 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A048489.P13330054477079242847

namespace A048489

/-- `Δ[A131068(n)]` -/
def P13330054477079242847.Spec : Prop :=
  ∀ n, P13330054477079242847.a n = A048489 n

theorem P13330054477079242847.correct : P13330054477079242847.Spec := by
  intro n
  simp only [A048489, Nat.add_sub_cancel, A048489.P13330054477079242847.f1, A048489.P13330054477079242847.a, A048489.P11253217557276495286.a, A131068, A131068.P10384673899537543651.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A048489

/-!
# A048490: a(n) = T(7,n), array T given by A048483.

The programs for A048490, the canonical program `A048490.P10521047800746211574` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A048490 has offset 0).

The definition of A048490 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A048490.P10521047800746211574

`8*2^n-7`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A048490

/-- `8*2^n-7` -/
def P10521047800746211574.Spec : Prop :=
  ∀ n, P10521047800746211574.a n = A048490 n

theorem P10521047800746211574.correct : P10521047800746211574.Spec := by
  intro n
  simp only [A048490]

end A048490

/-! ## A048490.P7222954641787592932

`ogf((1+6x)/(1-3x+2x^2))`
-/

namespace A048490.P7222954641787592932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 6] [1, -3, 2] n

end

end A048490.P7222954641787592932

namespace A048490

/-- `ogf((1+6x)/(1-3x+2x^2))` -/
def P7222954641787592932.Spec : Prop :=
  ∀ n, P7222954641787592932.a n = A048490 n

end A048490

/-! ## A048490.P10178632301181550935

`xor(5, ∑[2^(n+2)])`
-/

namespace A048490.P10178632301181550935
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 5 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A048490.P10178632301181550935

namespace A048490

/-- `xor(5, ∑[2^(n+2)])` -/
def P10178632301181550935.Spec : Prop :=
  ∀ n, (P10178632301181550935.a n : ℤ) = A048490 n

end A048490

/-! ## A048490.P6187601248018979297

`∑[2*a(n-1)]` with `a(0)=1, a(1)=8`
-/

namespace A048490.P6187601248018979297
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 8] fun n f1 =>
  2 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A048490.P6187601248018979297

namespace A048490

/-- `∑[2*a(n-1)]` -/
def P6187601248018979297.Spec : Prop :=
  ∀ n, (P6187601248018979297.a n : ℤ) = A048490 n

end A048490

/-! ## A048490.P11198165965949813377

`abs(or(7, -2^(n+3)))`
-/

namespace A048490.P11198165965949813377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.lor 7 (-(2 ^ (n + 3) : ℤ))|

end

end A048490.P11198165965949813377

namespace A048490

/-- `abs(or(7, -2^(n+3)))` -/
def P11198165965949813377.Spec : Prop :=
  ∀ n, P11198165965949813377.a n = A048490 n

end A048490

/-! ## A048490.P1399139825953367021

`-or(7, -2^(n+3))`
-/

namespace A048490.P1399139825953367021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.lor 7 (-(2 ^ (n + 3) : ℤ))

end

end A048490.P1399139825953367021

namespace A048490

/-- `-or(7, -2^(n+3))` -/
def P1399139825953367021.Spec : Prop :=
  ∀ n, P1399139825953367021.a n = A048490 n

end A048490

/-! ## A048490.P2432683854907601620

`abs(xor(7, -2^(n+3)))`
-/

namespace A048490.P2432683854907601620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.xor 7 (-(2 ^ (n + 3) : ℤ))|

end

end A048490.P2432683854907601620

namespace A048490

/-- `abs(xor(7, -2^(n+3)))` -/
def P2432683854907601620.Spec : Prop :=
  ∀ n, P2432683854907601620.a n = A048490 n

end A048490

/-! ## A048490.P17155059336204260655

`-xor(7, -2^(n+3))`
-/

namespace A048490.P17155059336204260655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.xor 7 (-(2 ^ (n + 3) : ℤ))

end

end A048490.P17155059336204260655

namespace A048490

/-- `-xor(7, -2^(n+3))` -/
def P17155059336204260655.Spec : Prop :=
  ∀ n, P17155059336204260655.a n = A048490 n

end A048490

/-! ## A048490.P3733029410765945446

`record[2^abs(3-n)-7]`
-/

namespace A048490.P3733029410765945446
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (|3 - (n : ℤ)| : ℤ) - 7

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A048490.P3733029410765945446

namespace A048490

/-- `record[2^abs(3-n)-7]` -/
def P3733029410765945446.Spec : Prop :=
  ∀ n, P3733029410765945446.a n = (A048490 n : ℚ)

end A048490

/-! ## A048490.P5680745329439719351

`abs(2*a(n-1)+7)` with `a(0)=1`
-/

namespace A048490.P5680745329439719351
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  2 * a (n - 1) + 7

end

end A048490.P5680745329439719351

namespace A048490

/-- `abs(2*a(n-1)+7)` -/
def P5680745329439719351.Spec : Prop :=
  ∀ n, (P5680745329439719351.a n : ℤ) = A048490 n

theorem P5680745329439719351.correct : P5680745329439719351.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A048490, Nat.add_sub_cancel, A048490.P5680745329439719351.a, A048490.P10521047800746211574.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A048490, Nat.add_sub_cancel, A048490.P5680745329439719351.a, A048490.P10521047800746211574.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A048490

/-! ## A048490.P18225831911759162746

`∑[2^(2%(n+2)+n)]`
-/

namespace A048490.P18225831911759162746
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ (2 % (n + 2) + n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A048490.P18225831911759162746

namespace A048490

/-- `∑[2^(2%(n+2)+n)]` -/
def P18225831911759162746.Spec : Prop :=
  ∀ n, (P18225831911759162746.a n : ℤ) = A048490 n

end A048490

/-! ## A048490.P9783654629082022557

`∑[ceil(atan(n+1))^(n+2)]`
-/

namespace A048490.P9783654629082022557
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.arctan (n + 1 : ℝ)⌉ ^ (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A048490.P9783654629082022557

namespace A048490

/-- `∑[ceil(atan(n+1))^(n+2)]` -/
def P9783654629082022557.Spec : Prop :=
  ∀ n, P9783654629082022557.a n = A048490 n

end A048490

/-! ## A048490.P3069576102966675129

`2*(a(n-1)+7/2)` with `a(0)=1`
-/

namespace A048490.P3069576102966675129
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  2 * (a (n - 1) + (7 : ℚ) / 2)

end

end A048490.P3069576102966675129

namespace A048490

/-- `2*(a(n-1)+7/2)` -/
def P3069576102966675129.Spec : Prop :=
  ∀ n, P3069576102966675129.a n = (A048490 n : ℚ)

theorem P3069576102966675129.correct : P3069576102966675129.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A048490, Nat.add_sub_cancel, A048490.P3069576102966675129.a, A048490.P10521047800746211574.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A048490, Nat.add_sub_cancel, A048490.P3069576102966675129.a, A048490.P10521047800746211574.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A048490

/-! ## A048490.P12220336294283006887

`or(1, 2*(a(n-1)+3))` with `a(0)=1`
-/

namespace A048490.P12220336294283006887
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.lor 1 (2 * (a (n - 1) + 3))

end

end A048490.P12220336294283006887

namespace A048490

/-- `or(1, 2*(a(n-1)+3))` -/
def P12220336294283006887.Spec : Prop :=
  ∀ n, (P12220336294283006887.a n : ℤ) = A048490 n

end A048490

/-! ## A048490.P18206114897365434026

`or(2^(n+2), a(n-1))` with `a(0)=1`
-/

namespace A048490.P18206114897365434026
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.lor (2 ^ (n + 2)) (a (n - 1))

end

end A048490.P18206114897365434026

namespace A048490

/-- `or(2^(n+2), a(n-1))` -/
def P18206114897365434026.Spec : Prop :=
  ∀ n, (P18206114897365434026.a n : ℤ) = A048490 n

end A048490

/-! ## A048490.P16160716549181831377

`∑[∪[2^(n+3), (4^n)²]]`
-/

namespace A048490.P16160716549181831377
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ (n + 3)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (4 ^ n) ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = x) ∨ ∃ j, f3 j = x) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A048490.P16160716549181831377

namespace A048490

/-- `∑[∪[2^(n+3), (4^n)²]]` -/
def P16160716549181831377.Spec : Prop :=
  ∀ n, (P16160716549181831377.a n : ℤ) = A048490 n

end A048490

/-! ## A048490.P8869253395991838164

`floor(2*(a(n-1)+2+ϕ))` with `a(0)=1`
-/

namespace A048490.P8869253395991838164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌊2 * ((a (n - 1) + 2 : ℝ) + Real.goldenRatio)⌋

end

end A048490.P8869253395991838164

namespace A048490

/-- `floor(2*(a(n-1)+2+ϕ))` -/
def P8869253395991838164.Spec : Prop :=
  ∀ n, P8869253395991838164.a n = A048490 n

end A048490

/-! ## A048490.P11840997486051030465

`∑[a(n-1)+a(n-1)]` with `a(0)=1, a(1)=8`
-/

namespace A048490.P11840997486051030465
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 8] fun n f1 =>
  f1 (n - 1) + f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A048490.P11840997486051030465

namespace A048490

/-- `∑[a(n-1)+a(n-1)]` -/
def P11840997486051030465.Spec : Prop :=
  ∀ n, (P11840997486051030465.a n : ℤ) = A048490 n

end A048490

/-! ## A048490.P13864108354954082348

`2*(4-(1/2-a(n-1)))` with `a(0)=1`
-/

namespace A048490.P13864108354954082348
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  2 * (4 - ((1 : ℚ) / 2 - a (n - 1)))

end

end A048490.P13864108354954082348

namespace A048490

/-- `2*(4-(1/2-a(n-1)))` -/
def P13864108354954082348.Spec : Prop :=
  ∀ n, P13864108354954082348.a n = (A048490 n : ℚ)

theorem P13864108354954082348.correct : P13864108354954082348.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A048490, Nat.add_sub_cancel, A048490.P13864108354954082348.a, A048490.P10521047800746211574.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A048490, Nat.add_sub_cancel, A048490.P13864108354954082348.a, A048490.P10521047800746211574.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A048490

/-! ## A048490.P17167432403757358529

`floor(a(n-1)+a(n-1)+7)` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A048490.P17167432403757358529
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (a (n - 1) + 7)

end

end A048490.P17167432403757358529

namespace A048490

/-- `floor(a(n-1)+a(n-1)+7)` -/
def P17167432403757358529.Spec : Prop :=
  ∀ n, (P17167432403757358529.a n : ℤ) = A048490 n

theorem P17167432403757358529.correct : P17167432403757358529.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A048490, Nat.add_sub_cancel, A048490.P17167432403757358529.a, A048490.P10521047800746211574.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A048490, Nat.add_sub_cancel, A048490.P17167432403757358529.a, A048490.P10521047800746211574.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A048490

/-!
# A048491: a(n) = T(8,n), array T given by A048483.

The programs for A048491, the canonical program `A048491.P7822580525472508904` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A048491 has offset 0).

The definition of A048491 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A048491.P7822580525472508904

`9*2^n-8`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A048491

/-- `9*2^n-8` -/
def P7822580525472508904.Spec : Prop :=
  ∀ n, P7822580525472508904.a n = A048491 n

theorem P7822580525472508904.correct : P7822580525472508904.Spec := by
  intro n
  simp only [A048491]

end A048491

/-! ## A048491.P16476110893745162970

`ogf((1+7x)/(1-3x+2x^2))`
-/

namespace A048491.P16476110893745162970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 7] [1, -3, 2] n

end

end A048491.P16476110893745162970

namespace A048491

/-- `ogf((1+7x)/(1-3x+2x^2))` -/
def P16476110893745162970.Spec : Prop :=
  ∀ n, P16476110893745162970.a n = A048491 n

end A048491

/-! ## A048491.P9114719449390867688

`abs(8-lcm(9, 2^n))`
-/

namespace A048491.P9114719449390867688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |8 - (Nat.lcm 9 (2 ^ n) : ℤ)|

end

end A048491.P9114719449390867688

namespace A048491

/-- `abs(8-lcm(9, 2^n))` -/
def P9114719449390867688.Spec : Prop :=
  ∀ n, P9114719449390867688.a n = A048491 n

end A048491

/-! ## A048491.P4887847989781047512

`2*(a(n-1)+4)` with `a(0)=1`
-/

namespace A048491.P4887847989781047512
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  2 * (a (n - 1) + 4)

end

end A048491.P4887847989781047512

namespace A048491

/-- `2*(a(n-1)+4)` -/
def P4887847989781047512.Spec : Prop :=
  ∀ n, (P4887847989781047512.a n : ℤ) = A048491 n

theorem P4887847989781047512.correct : P4887847989781047512.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A048491, Nat.add_sub_cancel, A048491.P4887847989781047512.a, A048491.P7822580525472508904.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A048491, Nat.add_sub_cancel, A048491.P4887847989781047512.a, A048491.P7822580525472508904.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A048491

/-! ## A048491.P3581274631327666744

`∑[2*a(n-1)]` with `a(0)=1, a(1)=9`
-/

namespace A048491.P3581274631327666744
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 9] fun n f1 =>
  2 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A048491.P3581274631327666744

namespace A048491

/-- `∑[2*a(n-1)]` -/
def P3581274631327666744.Spec : Prop :=
  ∀ n, (P3581274631327666744.a n : ℤ) = A048491 n

end A048491

/-! ## A048491.P9433835103996634498

`2*(4-floor(-a(n-1)))` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A048491.P9433835103996634498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * (4 - (-a (n - 1)))

end

end A048491.P9433835103996634498

namespace A048491

/-- `2*(4-floor(-a(n-1)))` -/
def P9433835103996634498.Spec : Prop :=
  ∀ n, P9433835103996634498.a n = A048491 n

theorem P9433835103996634498.correct : P9433835103996634498.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A048491, Nat.add_sub_cancel, A048491.P9433835103996634498.a, A048491.P7822580525472508904.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A048491, Nat.add_sub_cancel, A048491.P9433835103996634498.a, A048491.P7822580525472508904.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A048491

/-! ## A048491.P2750328772095821615

`2*(4-ceil(-a(n-1)))` with `a(0)=1`

`ceil` is left out, it is the identity on integers.
-/

namespace A048491.P2750328772095821615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * (4 - (-a (n - 1)))

end

end A048491.P2750328772095821615

namespace A048491

/-- `2*(4-ceil(-a(n-1)))` -/
def P2750328772095821615.Spec : Prop :=
  ∀ n, P2750328772095821615.a n = A048491 n

theorem P2750328772095821615.correct : P2750328772095821615.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A048491, Nat.add_sub_cancel, A048491.P2750328772095821615.a, A048491.P7822580525472508904.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A048491, Nat.add_sub_cancel, A048491.P2750328772095821615.a, A048491.P7822580525472508904.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A048491

/-! ## A048491.P12770898595899407608

`2*(4-round(-a(n-1)))` with `a(0)=1`

`round` is left out, it is the identity on integers.
-/

namespace A048491.P12770898595899407608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * (4 - (-a (n - 1)))

end

end A048491.P12770898595899407608

namespace A048491

/-- `2*(4-round(-a(n-1)))` -/
def P12770898595899407608.Spec : Prop :=
  ∀ n, P12770898595899407608.a n = A048491 n

theorem P12770898595899407608.correct : P12770898595899407608.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A048491, Nat.add_sub_cancel, A048491.P12770898595899407608.a, A048491.P7822580525472508904.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A048491, Nat.add_sub_cancel, A048491.P12770898595899407608.a, A048491.P7822580525472508904.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A048491

/-! ## A048491.P16085698415112419998

`∑[a(n-1)+a(n-1)]` with `a(0)=1, a(1)=9`
-/

namespace A048491.P16085698415112419998
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 9] fun n f1 =>
  f1 (n - 1) + f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A048491.P16085698415112419998

namespace A048491

/-- `∑[a(n-1)+a(n-1)]` -/
def P16085698415112419998.Spec : Prop :=
  ∀ n, (P16085698415112419998.a n : ℤ) = A048491 n

end A048491

/-! ## A048491.P16925932937491746338

`(a(n-1)+4)/(1-1/2)` with `a(0)=1`
-/

namespace A048491.P16925932937491746338
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (a (n - 1) + 4) / (1 - (1 : ℚ) / 2)

end

end A048491.P16925932937491746338

namespace A048491

/-- `(a(n-1)+4)/(1-1/2)` -/
def P16925932937491746338.Spec : Prop :=
  ∀ n, P16925932937491746338.a n = (A048491 n : ℚ)

theorem P16925932937491746338.correct : P16925932937491746338.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A048491, Nat.add_sub_cancel, A048491.P16925932937491746338.a, A048491.P7822580525472508904.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A048491, Nat.add_sub_cancel, A048491.P16925932937491746338.a, A048491.P7822580525472508904.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A048491

/-! ## A048491.P9307408079458994900

`4*(3-(2-a(n-1))/2)` with `a(0)=1`
-/

namespace A048491.P9307408079458994900
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  4 * (3 - (2 - a (n - 1)) / 2)

end

end A048491.P9307408079458994900

namespace A048491

/-- `4*(3-(2-a(n-1))/2)` -/
def P9307408079458994900.Spec : Prop :=
  ∀ n, P9307408079458994900.a n = (A048491 n : ℚ)

theorem P9307408079458994900.correct : P9307408079458994900.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A048491, Nat.add_sub_cancel, A048491.P9307408079458994900.a, A048491.P7822580525472508904.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A048491, Nat.add_sub_cancel, A048491.P9307408079458994900.a, A048491.P7822580525472508904.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A048491

/-! ## A048491.P11884414055736764995

`floor(a(n-1)+a(n-1)+8)` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A048491.P11884414055736764995
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (a (n - 1) + 8)

end

end A048491.P11884414055736764995

namespace A048491

/-- `floor(a(n-1)+a(n-1)+8)` -/
def P11884414055736764995.Spec : Prop :=
  ∀ n, (P11884414055736764995.a n : ℤ) = A048491 n

theorem P11884414055736764995.correct : P11884414055736764995.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A048491, Nat.add_sub_cancel, A048491.P11884414055736764995.a, A048491.P7822580525472508904.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A048491, Nat.add_sub_cancel, A048491.P11884414055736764995.a, A048491.P7822580525472508904.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A048491

/-! ## A048491.P13909218617375047701

`2*(4-(floor(n-a(n-1))-n))` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A048491.P13909218617375047701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * (4 - ((n : ℤ) - a (n - 1) - (n : ℤ)))

end

end A048491.P13909218617375047701

namespace A048491

/-- `2*(4-(floor(n-a(n-1))-n))` -/
def P13909218617375047701.Spec : Prop :=
  ∀ n, P13909218617375047701.a n = A048491 n

theorem P13909218617375047701.correct : P13909218617375047701.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A048491, Nat.add_sub_cancel, A048491.P13909218617375047701.a, A048491.P7822580525472508904.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A048491, Nat.add_sub_cancel, A048491.P13909218617375047701.a, A048491.P7822580525472508904.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A048491

/-! ## A048491.P11885246477574514428

`2*(2*a(n-1)-(a(n-1)-4))` with `a(0)=1`
-/

namespace A048491.P11885246477574514428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * (2 * a (n - 1) - (a (n - 1) - 4))

end

end A048491.P11885246477574514428

namespace A048491

/-- `2*(2*a(n-1)-(a(n-1)-4))` -/
def P11885246477574514428.Spec : Prop :=
  ∀ n, P11885246477574514428.a n = A048491 n

theorem P11885246477574514428.correct : P11885246477574514428.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A048491, Nat.add_sub_cancel, A048491.P11885246477574514428.a, A048491.P7822580525472508904.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A048491, Nat.add_sub_cancel, A048491.P11885246477574514428.a, A048491.P7822580525472508904.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A048491

/-! ## A048491.P13573956034847602051

`A224692(2*n)`
-/

namespace A048491.P13573956034847602051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224692 (2 * n)

end

end A048491.P13573956034847602051

namespace A048491

/-- `A224692(2*n)` -/
def P13573956034847602051.Spec : Prop :=
  ∀ n, P13573956034847602051.a n = A048491 n

end A048491

/-! ## A048491.P12699823111713795227

`∑[A160824(2*n+3)]`
-/

namespace A048491.P12699823111713795227
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160824 (2 * n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A048491.P12699823111713795227

namespace A048491

/-- `∑[A160824(2*n+3)]` -/
def P12699823111713795227.Spec : Prop :=
  ∀ n, P12699823111713795227.a n = A048491 n

end A048491

/-! ## A048491.P5562368916511390836

`abs(Δ[Δ[A122959(n+1)]])`
-/

namespace A048491.P5562368916511390836
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122959 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A048491.P5562368916511390836

namespace A048491

/-- `abs(Δ[Δ[A122959(n+1)]])` -/
def P5562368916511390836.Spec : Prop :=
  ∀ n, P5562368916511390836.a n = A048491 n

end A048491

/-! ## A048491.P14410379900144218447

`abs(7-abs(1-A005010(n)))`
-/

namespace A048491.P14410379900144218447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(7 - |1 - A005010 n|)|

end

end A048491.P14410379900144218447

namespace A048491

/-- `abs(7-abs(1-A005010(n)))` -/
def P14410379900144218447.Spec : Prop :=
  ∀ n, P14410379900144218447.a n = A048491 n

end A048491

/-! ## A048491.P9688772173935923573

`A036453(n+1)*A053209(n)`
-/

namespace A048491.P9688772173935923573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036453 (n + 1) * A053209 n

end

end A048491.P9688772173935923573

namespace A048491

/-- `A036453(n+1)*A053209(n)` -/
def P9688772173935923573.Spec : Prop :=
  ∀ n, P9688772173935923573.a n = A048491 n

end A048491

/-!
# A048492: a(n) = (8*(2^n) - n^2 - 3*n - 6)/2.

The programs for A048492, the canonical program `A048492.P6116617801645238228` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A048492 has offset 0).

The definition of A048492 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(8*2^n-n²-3*n-6)/2` (program `A048492.P14660346037505912182`, by `A048492.P14660346037505912182.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A048492.P6116617801645238228

`a(n-1)+2^(n+1)-(n+1)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A048492

/-- `a(n-1)+2^(n+1)-(n+1)` -/
def P6116617801645238228.Spec : Prop :=
  ∀ n, P6116617801645238228.a n = A048492 n

theorem P6116617801645238228.correct : P6116617801645238228.Spec := by
  intro n
  simp only [A048492]

end A048492

/-! ## A048492.P14660346037505912182

`(8*2^n-n²-3*n-6)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A048492.P14660346037505912182
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((8 * 2 ^ n : ℤ) - (n ^ 2 : ℤ) - (3 * n : ℤ) - 6 : ℚ) / 2

end

end A048492.P14660346037505912182

namespace A048492

/-- `(8*2^n-n²-3*n-6)/2` -/
def P14660346037505912182.Spec : Prop :=
  ∀ n, P14660346037505912182.a n = (A048492 n : ℚ)

theorem P14660346037505912182.correct : P14660346037505912182.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A048492, Nat.add_sub_cancel, A048492.P14660346037505912182.a, A048492.P6116617801645238228.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A048492, Nat.add_sub_cancel, A048492.P14660346037505912182.a, A048492.P6116617801645238228.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A048492

/-! ## A048492.P13093918190800818053

`5*a(n-1)-9*a(n-2)+7*a(n-3)-2*a(n-4)` with `a(0)=1, a(1)=3, a(2)=8, a(3)=20`
-/

namespace A048492.P13093918190800818053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3, 8, 20] fun n a =>
  5 * a (n - 1) - 9 * a (n - 2) + 7 * a (n - 3) - 2 * a (n - 4)

end

end A048492.P13093918190800818053

namespace A048492

/-- `5*a(n-1)-9*a(n-2)+7*a(n-3)-2*a(n-4)` -/
def P13093918190800818053.Spec : Prop :=
  ∀ n, P13093918190800818053.a n = A048492 n

end A048492

/-! ## A048492.P7938280983969496872

`∑[ogf(1/(1-3x+2x^2))]-∑[n]`
-/

namespace A048492.P7938280983969496872
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, -3, 2] n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

end

end A048492.P7938280983969496872

namespace A048492

/-- `∑[ogf(1/(1-3x+2x^2))]-∑[n]` -/
def P7938280983969496872.Spec : Prop :=
  ∀ n, P7938280983969496872.a n = A048492 n

end A048492

/-! ## A048492.P8097774745917815341

`∑[∑[ogf((1-2x+2x^2)/(1-3x+2x^2))]]`
-/

namespace A048492.P8097774745917815341
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -2, 2] [1, -3, 2] n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A048492.P8097774745917815341

namespace A048492

/-- `∑[∑[ogf((1-2x+2x^2)/(1-3x+2x^2))]]` -/
def P8097774745917815341.Spec : Prop :=
  ∀ n, P8097774745917815341.a n = A048492 n

end A048492

/-! ## A048492.P3162153602345376825

`∑[∑[2*a(n-1)]-n]` with `a(0)=1`
-/

namespace A048492.P3162153602345376825
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f2 =>
  2 * f2 (n - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A048492.P3162153602345376825

namespace A048492

/-- `∑[∑[2*a(n-1)]-n]` -/
def P3162153602345376825.Spec : Prop :=
  ∀ n, P3162153602345376825.a n = A048492 n

end A048492

/-! ## A048492.P12470028967328226320

`-∑[or(n+1, -2^(n+1))]`
-/

namespace A048492.P12470028967328226320
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n + 1 : ℤ) (-(2 ^ (n + 1) : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(∑ j ∈ Finset.range (n + 1), f1 j)

end

end A048492.P12470028967328226320

namespace A048492

/-- `-∑[or(n+1, -2^(n+1))]` -/
def P12470028967328226320.Spec : Prop :=
  ∀ n, P12470028967328226320.a n = A048492 n

end A048492

/-! ## A048492.P186195489988897757

`-∑[xor(n+1, -2^(n+1))]`
-/

namespace A048492.P186195489988897757
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n + 1 : ℤ) (-(2 ^ (n + 1) : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(∑ j ∈ Finset.range (n + 1), f1 j)

end

end A048492.P186195489988897757

namespace A048492

/-- `-∑[xor(n+1, -2^(n+1))]` -/
def P186195489988897757.Spec : Prop :=
  ∀ n, P186195489988897757.a n = A048492 n

end A048492

/-! ## A048492.P14113647616762688666

`C(n, 2)+2*a(n-1)+1` with `a(0)=1`
-/

namespace A048492.P14113647616762688666
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.choose n 2 + 2 * a (n - 1) + 1

end

end A048492.P14113647616762688666

namespace A048492

/-- `C(n, 2)+2*a(n-1)+1` -/
def P14113647616762688666.Spec : Prop :=
  ∀ n, (P14113647616762688666.a n : ℤ) = A048492 n

end A048492

/-! ## A048492.P10659250142053331316

`∑[∑[lcm(2, a(n-1))+1]]+1` with `a(0)=0, a(1)=2`
-/

namespace A048492.P10659250142053331316
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 2] fun n f2 =>
  Nat.lcm 2 (f2 (n - 1)) + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A048492.P10659250142053331316

namespace A048492

/-- `∑[∑[lcm(2, a(n-1))+1]]+1` -/
def P10659250142053331316.Spec : Prop :=
  ∀ n, (P10659250142053331316.a n : ℤ) = A048492 n

end A048492

/-! ## A048492.P6086095814280710700

`∑[∑[a(n-1)+a(n-1)+1]]` with `a(0)=1, a(1)=1`
-/

namespace A048492.P6086095814280710700
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n f2 =>
  f2 (n - 1) + (f2 (n - 1) + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A048492.P6086095814280710700

namespace A048492

/-- `∑[∑[a(n-1)+a(n-1)+1]]` -/
def P6086095814280710700.Spec : Prop :=
  ∀ n, (P6086095814280710700.a n : ℤ) = A048492 n

end A048492

/-! ## A048492.P5942857482188469418

`∑[n-(1-a(n-1)-a(n-1))]` with `a(0)=1`
-/

namespace A048492.P5942857482188469418
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  (n : ℤ) - (1 - f1 (n - 1) - f1 (n - 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A048492.P5942857482188469418

namespace A048492

/-- `∑[n-(1-a(n-1)-a(n-1))]` -/
def P5942857482188469418.Spec : Prop :=
  ∀ n, P5942857482188469418.a n = A048492 n

end A048492

/-! ## A048492.P16234339814843290063

`∑[∑[A255047(n)]]`
-/

namespace A048492.P16234339814843290063
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255047 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A048492.P16234339814843290063

namespace A048492

/-- `∑[∑[A255047(n)]]` -/
def P16234339814843290063.Spec : Prop :=
  ∀ n, P16234339814843290063.a n = A048492 n

end A048492

/-! ## A048492.P17812914390326812828

`∑[A000325(n+1)]`
-/

namespace A048492.P17812914390326812828
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000325 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A048492.P17812914390326812828

namespace A048492

/-- `∑[A000325(n+1)]` -/
def P17812914390326812828.Spec : Prop :=
  ∀ n, P17812914390326812828.a n = A048492 n

end A048492

/-! ## A048492.P16373917524433710581

`A084634(n+1)-1`
-/

namespace A048492.P16373917524433710581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084634 (n + 1) - 1

end

end A048492.P16373917524433710581

namespace A048492

/-- `A084634(n+1)-1` -/
def P16373917524433710581.Spec : Prop :=
  ∀ n, P16373917524433710581.a n = A048492 n

end A048492

/-! ## A048492.P5735159873402474244

`A014844(n+2)-2`
-/

namespace A048492.P5735159873402474244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014844 (n + 2) - 2

end

end A048492.P5735159873402474244

namespace A048492

/-- `A014844(n+2)-2` -/
def P5735159873402474244.Spec : Prop :=
  ∀ n, P5735159873402474244.a n = A048492 n

end A048492

/-! ## A048492.P16703645132104796560

`A080522(n+2)-2`
-/

namespace A048492.P16703645132104796560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080522 (n + 2) - 2

end

end A048492.P16703645132104796560

namespace A048492

/-- `A080522(n+2)-2` -/
def P16703645132104796560.Spec : Prop :=
  ∀ n, P16703645132104796560.a n = A048492 n

end A048492

/-! ## A048492.P15590918831002625385

`A130104(n+1)+n`
-/

namespace A048492.P15590918831002625385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130104 (n + 1) + (n : ℤ)

end

end A048492.P15590918831002625385

namespace A048492

/-- `A130104(n+1)+n` -/
def P15590918831002625385.Spec : Prop :=
  ∀ n, P15590918831002625385.a n = A048492 n

end A048492

/-! ## A048492.P14498812256327081894

`A014833(n+2)+n`
-/

namespace A048492.P14498812256327081894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014833 (n + 2) + (n : ℤ)

end

end A048492.P14498812256327081894

namespace A048492

/-- `A014833(n+2)+n` -/
def P14498812256327081894.Spec : Prop :=
  ∀ n, P14498812256327081894.a n = A048492 n

end A048492

/-! ## A048492.P7890053441488421754

`∑[A076878(n+1)]+1`
-/

namespace A048492.P7890053441488421754
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076878 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A048492.P7890053441488421754

namespace A048492

/-- `∑[A076878(n+1)]+1` -/
def P7890053441488421754.Spec : Prop :=
  ∀ n, P7890053441488421754.a n = A048492 n

end A048492

/-!
# A048493: a(n) = (n+1)*2^n - n.

The programs for A048493, the canonical program `A048493.P18254336596332643479` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A048493 has offset 0).

The definition of A048493 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+1)*2^n-n` (program `A048493.P18254336596332643479`, by `A048493.P18254336596332643479.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A048493.P18254336596332643479

`(n+1)*2^n-n`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A048493

/-- `(n+1)*2^n-n` -/
def P18254336596332643479.Spec : Prop :=
  ∀ n, P18254336596332643479.a n = A048493 n

theorem P18254336596332643479.correct : P18254336596332643479.Spec := by
  intro n
  simp only [A048493]

end A048493

/-! ## A048493.P13716384426497134462

`floor(2*(a(n-1)+(a(n-1)-1)/n)+n)` with `a(0)=1`
-/

namespace A048493.P13716384426497134462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌊2 * ((a (n - 1) : ℚ) + (a (n - 1) - 1 : ℚ) / (n : ℚ)) + (n : ℚ)⌋

end

end A048493.P13716384426497134462

namespace A048493

/-- `floor(2*(a(n-1)+(a(n-1)-1)/n)+n)` -/
def P13716384426497134462.Spec : Prop :=
  ∀ n, P13716384426497134462.a n = A048493 n

end A048493

/-! ## A048493.P15489450400532077863

`floor(n-2*((1-a(n-1))/n-a(n-1)))` with `a(0)=1`
-/

namespace A048493.P15489450400532077863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌊(n : ℚ) - 2 * ((1 - a (n - 1) : ℚ) / (n : ℚ) - (a (n - 1) : ℚ))⌋

end

end A048493.P15489450400532077863

namespace A048493

/-- `floor(n-2*((1-a(n-1))/n-a(n-1)))` -/
def P15489450400532077863.Spec : Prop :=
  ∀ n, P15489450400532077863.a n = A048493 n

end A048493

/-! ## A048493.P6965454090294241535

`abs(n-∑[A001792(n)])`
-/

namespace A048493.P6965454090294241535
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001792 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j|

end

end A048493.P6965454090294241535

namespace A048493

/-- `abs(n-∑[A001792(n)])` -/
def P6965454090294241535.Spec : Prop :=
  ∀ n, P6965454090294241535.a n = A048493 n

end A048493

/-! ## A048493.P582622888320748138

`∑[A339032(n)+n²]`
-/

namespace A048493.P582622888320748138
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339032 n + (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A048493.P582622888320748138

namespace A048493

/-- `∑[A339032(n)+n²]` -/
def P582622888320748138.Spec : Prop :=
  ∀ n, P582622888320748138.a n = A048493 n

end A048493

/-! ## A048493.P14798658909220420240

`abs(A001787(n+1)-n)`
-/

namespace A048493.P14798658909220420240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A001787 (n + 1) - (n : ℤ)|

end

end A048493.P14798658909220420240

namespace A048493

/-- `abs(A001787(n+1)-n)` -/
def P14798658909220420240.Spec : Prop :=
  ∀ n, P14798658909220420240.a n = A048493 n

end A048493

/-! ## A048493.P18368722894425397838

`abs(n-(A087323(n)+1))`
-/

namespace A048493.P18368722894425397838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n : ℤ) - (A087323 n + 1)|

end

end A048493.P18368722894425397838

namespace A048493

/-- `abs(n-(A087323(n)+1))` -/
def P18368722894425397838.Spec : Prop :=
  ∀ n, P18368722894425397838.a n = A048493 n

end A048493

/-! ## A048493.P14143332330618340616

`abs(A097067(n+2)-n)`
-/

namespace A048493.P14143332330618340616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A097067 (n + 2) - (n : ℤ)|

end

end A048493.P14143332330618340616

namespace A048493

/-- `abs(A097067(n+2)-n)` -/
def P14143332330618340616.Spec : Prop :=
  ∀ n, P14143332330618340616.a n = A048493 n

end A048493

/-! ## A048493.P11179234852949073887

`record[or(1, A001787(n))-n]`
-/

namespace A048493.P11179234852949073887
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A001787 n) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A048493.P11179234852949073887

namespace A048493

/-- `record[or(1, A001787(n))-n]` -/
def P11179234852949073887.Spec : Prop :=
  ∀ n, P11179234852949073887.a n = A048493 n

end A048493

/-! ## A048493.P15825818082187304027

`abs(n+1-A005183(n+1))`
-/

namespace A048493.P15825818082187304027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n + 1 : ℤ) - A005183 (n + 1)|

end

end A048493.P15825818082187304027

namespace A048493

/-- `abs(n+1-A005183(n+1))` -/
def P15825818082187304027.Spec : Prop :=
  ∀ n, P15825818082187304027.a n = A048493 n

end A048493

/-! ## A048493.P9645456313771311793

`∑[(n+2)*A011782(n)-1]`
-/

namespace A048493.P9645456313771311793
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * A011782 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A048493.P9645456313771311793

namespace A048493

/-- `∑[(n+2)*A011782(n)-1]` -/
def P9645456313771311793.Spec : Prop :=
  ∀ n, P9645456313771311793.a n = A048493 n

end A048493

/-! ## A048493.P13962475748061646955

`abs((n+1)*A000079(n)-n)`
-/

namespace A048493.P13962475748061646955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n + 1 : ℤ) * A000079 n - (n : ℤ)|

end

end A048493.P13962475748061646955

namespace A048493

/-- `abs((n+1)*A000079(n)-n)` -/
def P13962475748061646955.Spec : Prop :=
  ∀ n, P13962475748061646955.a n = A048493 n

end A048493

/-! ## A048493.P3895868965645257911

`xor(A000325(n), A036289(n))`
-/

namespace A048493.P3895868965645257911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000325 n) (A036289 n)

end

end A048493.P3895868965645257911

namespace A048493

/-- `xor(A000325(n), A036289(n))` -/
def P3895868965645257911.Spec : Prop :=
  ∀ n, P3895868965645257911.a n = A048493 n

end A048493

/-! ## A048493.P958509878277717850

`∑[A057428(n)+A001792(n)]`
-/

namespace A048493.P958509878277717850
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 n + A001792 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A048493.P958509878277717850

namespace A048493

/-- `∑[A057428(n)+A001792(n)]` -/
def P958509878277717850.Spec : Prop :=
  ∀ n, P958509878277717850.a n = A048493 n

end A048493

/-! ## A048493.P10069543500890695346

`∑[A255047(n)+A001787(n)]`
-/

namespace A048493.P10069543500890695346
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255047 n + A001787 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A048493.P10069543500890695346

namespace A048493

/-- `∑[A255047(n)+A001787(n)]` -/
def P10069543500890695346.Spec : Prop :=
  ∀ n, P10069543500890695346.a n = A048493 n

end A048493

/-! ## A048493.P2790992599536583701

`∑[A001792(n)-A057427(n)]`
-/

namespace A048493.P2790992599536583701
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001792 n - A057427 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A048493.P2790992599536583701

namespace A048493

/-- `∑[A001792(n)-A057427(n)]` -/
def P2790992599536583701.Spec : Prop :=
  ∀ n, P2790992599536583701.a n = A048493 n

end A048493

/-! ## A048493.P13897889460507771914

`∑[A001792(n)-A019425(2*n)]`
-/

namespace A048493.P13897889460507771914
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001792 n - A019425 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A048493.P13897889460507771914

namespace A048493

/-- `∑[A001792(n)-A019425(2*n)]` -/
def P13897889460507771914.Spec : Prop :=
  ∀ n, P13897889460507771914.a n = A048493 n

end A048493

/-! ## A048493.P15944729872548408034

`∑[A001792(n)-char[A038722(n+1)]]`
-/

namespace A048493.P15944729872548408034
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038722 (n + 1)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001792 n - ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A048493.P15944729872548408034

namespace A048493

/-- `∑[A001792(n)-char[A038722(n+1)]]` -/
def P15944729872548408034.Spec : Prop :=
  ∀ n, P15944729872548408034.a n = A048493 n

end A048493

/-! ## A048493.P1922906841907968107

`∑[A001792(n)-A000040(n+1)%2]`
-/

namespace A048493.P1922906841907968107
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001792 n - Int.tmod (A000040 (n + 1)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A048493.P1922906841907968107

namespace A048493

/-- `∑[A001792(n)-A000040(n+1)%2]` -/
def P1922906841907968107.Spec : Prop :=
  ∀ n, P1922906841907968107.a n = A048493 n

end A048493

/-! ## A048493.P12962442380766690759

`∑[A049610(n+2)-A001221(A000961(n+1))]`
-/

namespace A048493.P12962442380766690759
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049610 (n + 2) - A001221 (A000961 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A048493.P12962442380766690759

namespace A048493

/-- `∑[A049610(n+2)-A001221(A000961(n+1))]` -/
def P12962442380766690759.Spec : Prop :=
  ∀ n, P12962442380766690759.a n = A048493 n

end A048493

/-!
# A048494: Array T(k,n) read by antidiagonals: T(n,k) = 2^(n-1) * ((k+1)*n - 2k) + k + 1.

The programs for A048494, there is no canonical definition to state claims against.
-/

/-! ## A048494.P3057663888358335791

`A338006(A110135(n))`
-/

namespace A048494.P3057663888358335791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338006 (A110135 n).toNat

end

end A048494.P3057663888358335791

/-! ## A048494.P1687914459516023157

`A118065(A186020(n)+A130321(n))`
-/

namespace A048494.P1687914459516023157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118065 (A186020 n + A130321 n).toNat

end

end A048494.P1687914459516023157

/-! ## A048494.P14362145568563537318

`A047858(n)-A047895(A047909(n+1))`
-/

namespace A048494.P14362145568563537318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047858 n - A047895 (A047909 (n + 1)).toNat

end

end A048494.P14362145568563537318

/-! ## A048494.P7623399159392082067

`A053219(n+1)-(A091264(n)+A047895(A047909(n+1)))`
-/

namespace A048494.P7623399159392082067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053219 (n + 1) - (A091264 n + A047895 (A047909 (n + 1)).toNat)

end

end A048494.P7623399159392082067

/-! ## A048494.P9378581810030234197

`A062111(n)+1-A002262(n)-A047895(A047909(n+1))`
-/

namespace A048494.P9378581810030234197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062111 n + (1 - A002262 n) - A047895 (A047909 (n + 1)).toNat

end

end A048494.P9378581810030234197

/-!
# A048495: a(n) = (n-1)*2^n + 2.

The programs for A048495, the canonical program `A048495.P13601989703998276379` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A048495 has offset 0).

The definition of A048495 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n-1)*2^n+2` (program `A048495.P13601989703998276379`, by `A048495.P13601989703998276379.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A048495.P13601989703998276379

`(n-1)*2^n+2`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A048495

/-- `(n-1)*2^n+2` -/
def P13601989703998276379.Spec : Prop :=
  ∀ n, P13601989703998276379.a n = A048495 n

theorem P13601989703998276379.correct : P13601989703998276379.Spec := by
  intro n
  simp only [A048495]

end A048495

/-! ## A048495.P652869531737083861

`∑[ogf((1-3x+4x^2)/(1-4x+4x^2))]`
-/

namespace A048495.P652869531737083861
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -3, 4] [1, -4, 4] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A048495.P652869531737083861

namespace A048495

/-- `∑[ogf((1-3x+4x^2)/(1-4x+4x^2))]` -/
def P652869531737083861.Spec : Prop :=
  ∀ n, P652869531737083861.a n = A048495 n

end A048495

/-! ## A048495.P16660083447962821462

`ogf((1-3x+4x^2)/(1-5x+8x^2-4x^3))`
-/

namespace A048495.P16660083447962821462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -3, 4] [1, -5, 8, -4] n

end

end A048495.P16660083447962821462

namespace A048495

/-- `ogf((1-3x+4x^2)/(1-5x+8x^2-4x^3))` -/
def P16660083447962821462.Spec : Prop :=
  ∀ n, P16660083447962821462.a n = A048495 n

end A048495

/-! ## A048495.P12399368853733681617

`abs(or(2, (n-1)*2^n))`
-/

namespace A048495.P12399368853733681617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.lor 2 (((n : ℤ) - 1) * (2 ^ n : ℤ))|

end

end A048495.P12399368853733681617

namespace A048495

/-- `abs(or(2, (n-1)*2^n))` -/
def P12399368853733681617.Spec : Prop :=
  ∀ n, P12399368853733681617.a n = A048495 n

end A048495

/-! ## A048495.P15786185378603293879

`∑[gcd(n*2^(n-1), floor(acot(n)))]`
-/

namespace A048495.P15786185378603293879
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (SequenceMachineLib.roundAway ((n : ℚ) * (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ))) ⌊SequenceMachineLib.acot (n : ℝ)⌋

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A048495.P15786185378603293879

namespace A048495

/-- `∑[gcd(n*2^(n-1), floor(acot(n)))]` -/
def P15786185378603293879.Spec : Prop :=
  ∀ n, (P15786185378603293879.a n : ℤ) = A048495 n

end A048495

/-! ## A048495.P5410181902914161743

`∑[(n*2^(n-1))^ceil(abs(sin(n)))]`
-/

namespace A048495.P5410181902914161743
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℚ) * (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)) ^ (⌈|Real.sin (n : ℝ)|⌉ : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A048495.P5410181902914161743

namespace A048495

/-- `∑[(n*2^(n-1))^ceil(abs(sin(n)))]` -/
def P5410181902914161743.Spec : Prop :=
  ∀ n, P5410181902914161743.a n = (A048495 n : ℚ)

end A048495

/-! ## A048495.P18141911587792665986

`∑[4*(a(n-1)-a(n-2))]` with `a(0)=1, a(1)=1, a(2)=4`
-/

namespace A048495.P18141911587792665986
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 4] fun n f1 =>
  4 * (f1 (n - 1) - f1 (n - 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A048495.P18141911587792665986

namespace A048495

/-- `∑[4*(a(n-1)-a(n-2))]` -/
def P18141911587792665986.Spec : Prop :=
  ∀ n, P18141911587792665986.a n = A048495 n

end A048495

/-! ## A048495.P9341369754377269346

`2*(2*(a(n-1)-a(n-2))+1)` with `a(0)=1, a(1)=2`
-/

namespace A048495.P9341369754377269346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  2 * (2 * (a (n - 1) - a (n - 2)) + 1)

end

end A048495.P9341369754377269346

namespace A048495

/-- `2*(2*(a(n-1)-a(n-2))+1)` -/
def P9341369754377269346.Spec : Prop :=
  ∀ n, P9341369754377269346.a n = A048495 n

theorem P9341369754377269346.correct : P9341369754377269346.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A048495, Nat.add_sub_cancel, A048495.P9341369754377269346.a, A048495.P13601989703998276379.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A048495, Nat.add_sub_cancel, A048495.P9341369754377269346.a, A048495.P13601989703998276379.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [h1, h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A048495

/-! ## A048495.P4852231422264677021

`2*(1-2*(a(n-2)-a(n-1)))` with `a(0)=1, a(1)=2`
-/

namespace A048495.P4852231422264677021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  2 * (1 - 2 * (a (n - 2) - a (n - 1)))

end

end A048495.P4852231422264677021

namespace A048495

/-- `2*(1-2*(a(n-2)-a(n-1)))` -/
def P4852231422264677021.Spec : Prop :=
  ∀ n, P4852231422264677021.a n = A048495 n

theorem P4852231422264677021.correct : P4852231422264677021.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A048495, Nat.add_sub_cancel, A048495.P4852231422264677021.a, A048495.P13601989703998276379.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A048495, Nat.add_sub_cancel, A048495.P4852231422264677021.a, A048495.P13601989703998276379.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [h1, h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A048495

/-! ## A048495.P12656231836637952318

`abs(n-∑[A005183(n)])`
-/

namespace A048495.P12656231836637952318
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005183 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j|

end

end A048495.P12656231836637952318

namespace A048495

/-- `abs(n-∑[A005183(n)])` -/
def P12656231836637952318.Spec : Prop :=
  ∀ n, P12656231836637952318.a n = A048495 n

end A048495

/-! ## A048495.P15418533466680811806

`abs(∑[A001787(n)+1]-n)`
-/

namespace A048495.P15418533466680811806
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001787 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)|

end

end A048495.P15418533466680811806

namespace A048495

/-- `abs(∑[A001787(n)+1]-n)` -/
def P15418533466680811806.Spec : Prop :=
  ∀ n, P15418533466680811806.a n = A048495 n

end A048495

/-! ## A048495.P14636817253855619326

`abs((n-1)*A000079(n)+2)`
-/

namespace A048495.P14636817253855619326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |((n : ℤ) - 1) * A000079 n + 2|

end

end A048495.P14636817253855619326

namespace A048495

/-- `abs((n-1)*A000079(n)+2)` -/
def P14636817253855619326.Spec : Prop :=
  ∀ n, P14636817253855619326.a n = A048495 n

end A048495

/-! ## A048495.P5642546098635529783

`∑[abs(Δ[(n-2)*A011782(n)])]`
-/

namespace A048495.P5642546098635529783
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 2) * A011782 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A048495.P5642546098635529783

namespace A048495

/-- `∑[abs(Δ[(n-2)*A011782(n)])]` -/
def P5642546098635529783.Spec : Prop :=
  ∀ n, P5642546098635529783.a n = A048495 n

end A048495

/-! ## A048495.P8816302140002781556

`xor(A000337(n), A122553(n))`
-/

namespace A048495.P8816302140002781556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000337 n) (A122553 n)

end

end A048495.P8816302140002781556

namespace A048495

/-- `xor(A000337(n), A122553(n))` -/
def P8816302140002781556.Spec : Prop :=
  ∀ n, P8816302140002781556.a n = A048495 n

end A048495

/-! ## A048495.P1101313329007155999

`∑[A001787(A000007(n)+n)]`
-/

namespace A048495.P1101313329007155999
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001787 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A048495.P1101313329007155999

namespace A048495

/-- `∑[A001787(A000007(n)+n)]` -/
def P1101313329007155999.Spec : Prop :=
  ∀ n, P1101313329007155999.a n = A048495 n

end A048495

/-! ## A048495.P9152916591088628465

`∑[A011782(n)*A028310(n)]`
-/

namespace A048495.P9152916591088628465
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n * A028310 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A048495.P9152916591088628465

namespace A048495

/-- `∑[A011782(n)*A028310(n)]` -/
def P9152916591088628465.Spec : Prop :=
  ∀ n, P9152916591088628465.a n = A048495 n

end A048495

/-! ## A048495.P1711864660949161133

`∑[A001787(or(n, A000007(n)))]`
-/

namespace A048495.P1711864660949161133
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001787 (Int.lor (n : ℤ) (A000007 n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A048495.P1711864660949161133

namespace A048495

/-- `∑[A001787(or(n, A000007(n)))]` -/
def P1711864660949161133.Spec : Prop :=
  ∀ n, P1711864660949161133.a n = A048495 n

end A048495

/-! ## A048495.P4179365548937707162

`∑[(A000007(n)+n)*A011782(n)]`
-/

namespace A048495.P4179365548937707162
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000007 n + (n : ℤ)) * A011782 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A048495.P4179365548937707162

namespace A048495

/-- `∑[(A000007(n)+n)*A011782(n)]` -/
def P4179365548937707162.Spec : Prop :=
  ∀ n, P4179365548937707162.a n = A048495 n

end A048495

/-! ## A048495.P17201170589974306422

`lcm(A000337(n)+1, A014963(n+1))`
-/

namespace A048495.P17201170589974306422
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000337 n + 1) (A014963 (n + 1))

end

end A048495.P17201170589974306422

namespace A048495

/-- `lcm(A000337(n)+1, A014963(n+1))` -/
def P17201170589974306422.Spec : Prop :=
  ∀ n, (P17201170589974306422.a n : ℤ) = A048495 n

end A048495

/-! ## A048495.P12331173825694594783

`(A000337(n)+1)*A007318(and(2, n-2))`
-/

namespace A048495.P12331173825694594783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000337 n + 1) * A007318 (Int.land 2 ((n : ℤ) - 2)).toNat

end

end A048495.P12331173825694594783

namespace A048495

/-- `(A000337(n)+1)*A007318(and(2, n-2))` -/
def P12331173825694594783.Spec : Prop :=
  ∀ n, P12331173825694594783.a n = A048495 n

end A048495

/-!
# A048496: a(n) = 2^(n-1)*(3*n-4) + 3.

The programs for A048496, the canonical program `A048496.P10038668049760122665` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A048496 has offset 0).

The definition of A048496 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A048496.P10038668049760122665

`2^(n-1)*(3*n-4)+3`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A048496

/-- `2^(n-1)*(3*n-4)+3` -/
def P10038668049760122665.Spec : Prop :=
  ∀ n, P10038668049760122665.a n = (A048496 n : ℚ)

end A048496

/-! ## A048496.P10308624656798643468

`∑[ogf((1-3x+5x^2)/(1-4x+4x^2))]`
-/

namespace A048496.P10308624656798643468
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -3, 5] [1, -4, 4] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A048496.P10308624656798643468

namespace A048496

/-- `∑[ogf((1-3x+5x^2)/(1-4x+4x^2))]` -/
def P10308624656798643468.Spec : Prop :=
  ∀ n, P10308624656798643468.a n = A048496 n

end A048496

/-! ## A048496.P5299465846265811119

`xor(3, abs((3*n-4)*2^(n-1)))`
-/

namespace A048496.P5299465846265811119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 3 (SequenceMachineLib.roundAway |((3 * n : ℤ) - 4 : ℚ) * (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)|)

end

end A048496.P5299465846265811119

namespace A048496

/-- `xor(3, abs((3*n-4)*2^(n-1)))` -/
def P5299465846265811119.Spec : Prop :=
  ∀ n, P5299465846265811119.a n = A048496 n

end A048496

/-! ## A048496.P2466116218683049327

`abs(4*(a(n-1)-a(n-2))+3)` with `a(0)=1, a(1)=2`
-/

namespace A048496.P2466116218683049327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  |4 * (a (n - 1) - a (n - 2)) + 3|

end

end A048496.P2466116218683049327

namespace A048496

/-- `abs(4*(a(n-1)-a(n-2))+3)` -/
def P2466116218683049327.Spec : Prop :=
  ∀ n, P2466116218683049327.a n = A048496 n

end A048496

/-! ## A048496.P289715247689625070

`or(1, 4*(a(n-1)-a(n-2))+3)` with `a(0)=1, a(1)=2`
-/

namespace A048496.P289715247689625070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  Int.lor 1 (4 * (a (n - 1) - a (n - 2)) + 3)

end

end A048496.P289715247689625070

namespace A048496

/-- `or(1, 4*(a(n-1)-a(n-2))+3)` -/
def P289715247689625070.Spec : Prop :=
  ∀ n, P289715247689625070.a n = A048496 n

end A048496

/-! ## A048496.P5290681593814763744

`abs(A053565(n)+3)`
-/

namespace A048496.P5290681593814763744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A053565 n + 3|

end

end A048496.P5290681593814763744

namespace A048496

/-- `abs(A053565(n)+3)` -/
def P5290681593814763744.Spec : Prop :=
  ∀ n, P5290681593814763744.a n = A048496 n

end A048496

/-! ## A048496.P5197990108376125203

`∑[A097067(n+1)+A097067(n)]`
-/

namespace A048496.P5197990108376125203
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097067 (n + 1) + A097067 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A048496.P5197990108376125203

namespace A048496

/-- `∑[A097067(n+1)+A097067(n)]` -/
def P5197990108376125203.Spec : Prop :=
  ∀ n, P5197990108376125203.a n = A048496 n

end A048496

/-! ## A048496.P10768662206105843070

`∑[A084858(n)-2*A131577(n)]`
-/

namespace A048496.P10768662206105843070
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084858 n - 2 * A131577 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A048496.P10768662206105843070

namespace A048496

/-- `∑[A084858(n)-2*A131577(n)]` -/
def P10768662206105843070.Spec : Prop :=
  ∀ n, P10768662206105843070.a n = A048496 n

end A048496

/-! ## A048496.P1386726376774118069

`ogf((1-3x+5x^2)/(1-5x+8x^2-4x^3))`
-/

namespace A048496.P1386726376774118069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -3, 5] [1, -5, 8, -4] n

end

end A048496.P1386726376774118069

namespace A048496

/-- `ogf((1-3x+5x^2)/(1-5x+8x^2-4x^3))` -/
def P1386726376774118069.Spec : Prop :=
  ∀ n, P1386726376774118069.a n = A048496 n

end A048496

/-! ## A048496.P16112486545059850580

`(A048499(n)+A000079(n))/2`
-/

namespace A048496.P16112486545059850580
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048499 n + A000079 n : ℚ) / 2

end

end A048496.P16112486545059850580

namespace A048496

/-- `(A048499(n)+A000079(n))/2` -/
def P16112486545059850580.Spec : Prop :=
  ∀ n, P16112486545059850580.a n = (A048496 n : ℚ)

end A048496

/-! ## A048496.P4227737788882300709

`(A048498(n)+A005183(n))/2`
-/

namespace A048496.P4227737788882300709
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048498 n + A005183 n : ℚ) / 2

end

end A048496.P4227737788882300709

namespace A048496

/-- `(A048498(n)+A005183(n))/2` -/
def P4227737788882300709.Spec : Prop :=
  ∀ n, P4227737788882300709.a n = (A048496 n : ℚ)

end A048496

/-! ## A048496.P16735286305610245235

`(A048497(n)+A048495(n))/2`
-/

namespace A048496.P16735286305610245235
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048497 n + A048495 n : ℚ) / 2

end

end A048496.P16735286305610245235

namespace A048496

/-- `(A048497(n)+A048495(n))/2` -/
def P16735286305610245235.Spec : Prop :=
  ∀ n, P16735286305610245235.a n = (A048496 n : ℚ)

end A048496

/-! ## A048496.P3239646500201888855

`ceil(∑[abs(1-3*n)*2^n]/4)%A056469(n)²`
-/

namespace A048496.P3239646500201888855
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (3 * n : ℤ)| * (2 ^ n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌈((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 4⌉ (A056469 n ^ 2)

end

end A048496.P3239646500201888855

namespace A048496

/-- `ceil(∑[abs(1-3*n)*2^n]/4)%A056469(n)²` -/
def P3239646500201888855.Spec : Prop :=
  ∀ n, P3239646500201888855.a n = A048496 n

end A048496

/-! ## A048496.P8255988460877425595

`∑[A193724(∑[n]+1)]`
-/

namespace A048496.P8255988460877425595
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193724 (∑ j ∈ Finset.range (n + 1), f2 j + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A048496.P8255988460877425595

namespace A048496

/-- `∑[A193724(∑[n]+1)]` -/
def P8255988460877425595.Spec : Prop :=
  ∀ n, P8255988460877425595.a n = A048496 n

end A048496

/-! ## A048496.P738284903280044248

`A048494(∑[n+2]+3)`
-/

namespace A048496.P738284903280044248
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048494 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A048496.P738284903280044248

namespace A048496

/-- `A048494(∑[n+2]+3)` -/
def P738284903280044248.Spec : Prop :=
  ∀ n, P738284903280044248.a n = A048496 n

end A048496

/-!
# A048497: a(n) = 2^(n-1)*(4*n-6) + 4.

The programs for A048497, the canonical program `A048497.P101763577909907180` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A048497 has offset 0).

The definition of A048497 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2^(n-1)*(4*n-6)+4` (program `A048497.P6171237933817663214`, by `A048497.P6171237933817663214.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A048497.P6171237933817663214

`2^(n-1)*(4*n-6)+4`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A048497.P6171237933817663214
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * ((4 * n : ℤ) - 6 : ℚ) + 4

end

end A048497.P6171237933817663214

namespace A048497

/-- `2^(n-1)*(4*n-6)+4` -/
def P6171237933817663214.Spec : Prop :=
  ∀ n, P6171237933817663214.a n = (A048497 n : ℚ)

theorem P6171237933817663214.correct : P6171237933817663214.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A048497, Nat.add_sub_cancel, A048497.P6171237933817663214.a, A048497.P101763577909907180.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A048497, Nat.add_sub_cancel, A048497.P6171237933817663214.a, A048497.P101763577909907180.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1)

end A048497

/-! ## A048497.P13474930226739375143

`∑[ogf((1-3x+6x^2)/(1-4x+4x^2))]`
-/

namespace A048497.P13474930226739375143
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -3, 6] [1, -4, 4] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A048497.P13474930226739375143

namespace A048497

/-- `∑[ogf((1-3x+6x^2)/(1-4x+4x^2))]` -/
def P13474930226739375143.Spec : Prop :=
  ∀ n, P13474930226739375143.a n = A048497 n

end A048497

/-! ## A048497.P10319921609716580253

`ogf((1-3x+6x^2)/(1-5x+8x^2-4x^3))`
-/

namespace A048497.P10319921609716580253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -3, 6] [1, -5, 8, -4] n

end

end A048497.P10319921609716580253

namespace A048497

/-- `ogf((1-3x+6x^2)/(1-5x+8x^2-4x^3))` -/
def P10319921609716580253.Spec : Prop :=
  ∀ n, P10319921609716580253.a n = A048497 n

end A048497

/-! ## A048497.P101763577909907180

`2*(2^n-(2-a(n-1)))` with `a(0)=1`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A048497

/-- `2*(2^n-(2-a(n-1)))` -/
def P101763577909907180.Spec : Prop :=
  ∀ n, P101763577909907180.a n = A048497 n

theorem P101763577909907180.correct : P101763577909907180.Spec := by
  intro n
  simp only [A048497]

end A048497

/-! ## A048497.P10491882566454901012

`∑[lcm(2*n-1, ceil(2^(n-1)))]`
-/

namespace A048497.P10491882566454901012
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((2 * n : ℤ) - 1) ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A048497.P10491882566454901012

namespace A048497

/-- `∑[lcm(2*n-1, ceil(2^(n-1)))]` -/
def P10491882566454901012.Spec : Prop :=
  ∀ n, (P10491882566454901012.a n : ℤ) = A048497 n

end A048497

/-! ## A048497.P3205102970771475100

`4*(a(n-1)+1-a(n-2))` with `a(0)=1, a(1)=2`
-/

namespace A048497.P3205102970771475100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  4 * (a (n - 1) + 1 - a (n - 2))

end

end A048497.P3205102970771475100

namespace A048497

/-- `4*(a(n-1)+1-a(n-2))` -/
def P3205102970771475100.Spec : Prop :=
  ∀ n, P3205102970771475100.a n = A048497 n

end A048497

/-! ## A048497.P9117181064205390821

`∑[a(n-1)+a(n-1)+2^n]` with `a(0)=1, a(1)=1`
-/

namespace A048497.P9117181064205390821
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  f1 (n - 1) + (f1 (n - 1) + 2 ^ n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A048497.P9117181064205390821

namespace A048497

/-- `∑[a(n-1)+a(n-1)+2^n]` -/
def P9117181064205390821.Spec : Prop :=
  ∀ n, (P9117181064205390821.a n : ℤ) = A048497 n

end A048497

/-! ## A048497.P9598158289864686020

`∑[abs(A011782(n)-n*2^n)]`
-/

namespace A048497.P9598158289864686020
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A011782 n - (n * 2 ^ n : ℤ)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A048497.P9598158289864686020

namespace A048497

/-- `∑[abs(A011782(n)-n*2^n)]` -/
def P9598158289864686020.Spec : Prop :=
  ∀ n, P9598158289864686020.a n = A048497 n

end A048497

/-! ## A048497.P13959260691880770420

`∑[A000079(n)+2*a(n-1)]` with `a(0)=1, a(1)=1`
-/

namespace A048497.P13959260691880770420
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  A000079 n + 2 * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A048497.P13959260691880770420

namespace A048497

/-- `∑[A000079(n)+2*a(n-1)]` -/
def P13959260691880770420.Spec : Prop :=
  ∀ n, P13959260691880770420.a n = A048497 n

end A048497

/-! ## A048497.P17966425765085617666

`∑[2*a(n-1)+A000051(n)-1]` with `a(0)=1, a(1)=1`
-/

namespace A048497.P17966425765085617666
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  2 * f1 (n - 1) + (A000051 n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A048497.P17966425765085617666

namespace A048497

/-- `∑[2*a(n-1)+A000051(n)-1]` -/
def P17966425765085617666.Spec : Prop :=
  ∀ n, P17966425765085617666.a n = A048497 n

end A048497

/-! ## A048497.P6415612017386329872

`∑[∑[A005408(n)*A034008(n)]]`
-/

namespace A048497.P6415612017386329872
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 n * A034008 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A048497.P6415612017386329872

namespace A048497

/-- `∑[∑[A005408(n)*A034008(n)]]` -/
def P6415612017386329872.Spec : Prop :=
  ∀ n, P6415612017386329872.a n = A048497 n

end A048497

/-! ## A048497.P12736264738205967039

`(A048500(n)+A005183(n))/2`
-/

namespace A048497.P12736264738205967039
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048500 n + A005183 n : ℚ) / 2

end

end A048497.P12736264738205967039

namespace A048497

/-- `(A048500(n)+A005183(n))/2` -/
def P12736264738205967039.Spec : Prop :=
  ∀ n, P12736264738205967039.a n = (A048497 n : ℚ)

end A048497

/-! ## A048497.P14951930248663727883

`(A048498(n)+A048496(n))/2`
-/

namespace A048497.P14951930248663727883
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048498 n + A048496 n : ℚ) / 2

end

end A048497.P14951930248663727883

namespace A048497

/-- `(A048498(n)+A048496(n))/2` -/
def P14951930248663727883.Spec : Prop :=
  ∀ n, P14951930248663727883.a n = (A048497 n : ℚ)

end A048497

/-! ## A048497.P15259220989826884879

`(A048499(n)+A048495(n))/2`
-/

namespace A048497.P15259220989826884879
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048499 n + A048495 n : ℚ) / 2

end

end A048497.P15259220989826884879

namespace A048497

/-- `(A048499(n)+A048495(n))/2` -/
def P15259220989826884879.Spec : Prop :=
  ∀ n, P15259220989826884879.a n = (A048497 n : ℚ)

end A048497

/-! ## A048497.P15693401487288235885

`A048494(A167614(n+2))`
-/

namespace A048497.P15693401487288235885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048494 (A167614 (n + 2)).toNat

end

end A048497.P15693401487288235885

namespace A048497

/-- `A048494(A167614(n+2))` -/
def P15693401487288235885.Spec : Prop :=
  ∀ n, P15693401487288235885.a n = A048497 n

end A048497

/-! ## A048497.P11176941484202435270

`A048494(eq[3, A002262(n)])`
-/

namespace A048497.P11176941484202435270
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048494 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A048497.P11176941484202435270

namespace A048497

/-- `A048494(eq[3, A002262(n)])` -/
def P11176941484202435270.Spec : Prop :=
  ∀ n, P11176941484202435270.a n = A048497 n

end A048497

/-! ## A048497.P16797598764503685289

`A048494(eq[2, A002260(n+1)-2])`
-/

namespace A048497.P16797598764503685289
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048494 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A048497.P16797598764503685289

namespace A048497

/-- `A048494(eq[2, A002260(n+1)-2])` -/
def P16797598764503685289.Spec : Prop :=
  ∀ n, P16797598764503685289.a n = A048497 n

end A048497

/-! ## A048497.P16045985745494591012

`A048494(eq[2, A002260(n+1)/2])`
-/

namespace A048497.P16045985745494591012
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002260 (n + 1) : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048494 (SequenceMachineLib.nth (fun j => (f1 j : ℚ) = f2 j) n)

end

end A048497.P16045985745494591012

namespace A048497

/-- `A048494(eq[2, A002260(n+1)/2])` -/
def P16045985745494591012.Spec : Prop :=
  ∀ n, P16045985745494591012.a n = A048497 n

end A048497

/-!
# A048498: a(n) = 2^(n-1)*(5*n-8) + 5.

The programs for A048498, the canonical program `A048498.P12645167656800031907` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A048498 has offset 0).

The definition of A048498 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A048498.P12645167656800031907

`2^(n-1)*(5*n-8)+5`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A048498

/-- `2^(n-1)*(5*n-8)+5` -/
def P12645167656800031907.Spec : Prop :=
  ∀ n, P12645167656800031907.a n = (A048498 n : ℚ)

end A048498

/-! ## A048498.P10406329191850815537

`∑[ogf((1-3x+7x^2)/(1-4x+4x^2))]`
-/

namespace A048498.P10406329191850815537
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -3, 7] [1, -4, 4] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A048498.P10406329191850815537

namespace A048498

/-- `∑[ogf((1-3x+7x^2)/(1-4x+4x^2))]` -/
def P10406329191850815537.Spec : Prop :=
  ∀ n, P10406329191850815537.a n = A048498 n

end A048498

/-! ## A048498.P3629272734118034428

`∑[4*(a(n-1)-a(n-2))]` with `a(0)=1, a(1)=1, a(2)=7`
-/

namespace A048498.P3629272734118034428
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 7] fun n f1 =>
  4 * (f1 (n - 1) - f1 (n - 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A048498.P3629272734118034428

namespace A048498

/-- `∑[4*(a(n-1)-a(n-2))]` -/
def P3629272734118034428.Spec : Prop :=
  ∀ n, P3629272734118034428.a n = A048498 n

end A048498

/-! ## A048498.P2098141229716644640

`ogf((1-3x+7x^2)/(1-5x+8x^2-4x^3))`
-/

namespace A048498.P2098141229716644640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -3, 7] [1, -5, 8, -4] n

end

end A048498.P2098141229716644640

namespace A048498

/-- `ogf((1-3x+7x^2)/(1-5x+8x^2-4x^3))` -/
def P2098141229716644640.Spec : Prop :=
  ∀ n, P2098141229716644640.a n = A048498 n

end A048498

/-! ## A048498.P14168703648019379415

`A048494(A000217(n+4)+4)`
-/

namespace A048498.P14168703648019379415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048494 (A000217 (n + 4) + 4).toNat

end

end A048498.P14168703648019379415

namespace A048498

/-- `A048494(A000217(n+4)+4)` -/
def P14168703648019379415.Spec : Prop :=
  ∀ n, P14168703648019379415.a n = A048498 n

end A048498

/-! ## A048498.P17443170394223542100

`A048494(A052905(n+1)+9)`
-/

namespace A048498.P17443170394223542100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048494 (A052905 (n + 1) + 9).toNat

end

end A048498.P17443170394223542100

namespace A048498

/-- `A048494(A052905(n+1)+9)` -/
def P17443170394223542100.Spec : Prop :=
  ∀ n, P17443170394223542100.a n = A048498 n

end A048498

/-!
# A048499: a(n) = 2^(n-1)*(6*n-10)+6.

The programs for A048499, the canonical program `A048499.P11992771276384438215` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A048499 has offset 0).

The definition of A048499 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2^(n-1)*(6*n-10)+6` (program `A048499.P16576829052140968126`, by `A048499.P16576829052140968126.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A048499.P16576829052140968126

`2^(n-1)*(6*n-10)+6`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A048499.P16576829052140968126
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * ((6 * n : ℤ) - 10 : ℚ) + 6

end

end A048499.P16576829052140968126

namespace A048499

/-- `2^(n-1)*(6*n-10)+6` -/
def P16576829052140968126.Spec : Prop :=
  ∀ n, P16576829052140968126.a n = (A048499 n : ℚ)

theorem P16576829052140968126.correct : P16576829052140968126.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A048499, Nat.add_sub_cancel, A048499.P16576829052140968126.a, A048499.P11992771276384438215.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A048499, Nat.add_sub_cancel, A048499.P16576829052140968126.a, A048499.P11992771276384438215.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1)

end A048499

/-! ## A048499.P13764567336595703755

`∑[ogf((1-3x+8x^2)/(1-4x+4x^2))]`
-/

namespace A048499.P13764567336595703755
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -3, 8] [1, -4, 4] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A048499.P13764567336595703755

namespace A048499

/-- `∑[ogf((1-3x+8x^2)/(1-4x+4x^2))]` -/
def P13764567336595703755.Spec : Prop :=
  ∀ n, P13764567336595703755.a n = A048499 n

end A048499

/-! ## A048499.P11992771276384438215

`2*(2*(a(n-1)-a(n-2))+3)` with `a(0)=1, a(1)=2`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A048499

/-- `2*(2*(a(n-1)-a(n-2))+3)` -/
def P11992771276384438215.Spec : Prop :=
  ∀ n, P11992771276384438215.a n = A048499 n

theorem P11992771276384438215.correct : P11992771276384438215.Spec := by
  intro n
  simp only [A048499]

end A048499

/-! ## A048499.P8011184452410150266

`∑[∑[(3*n+1)*A034008(n)]]`
-/

namespace A048499.P8011184452410150266
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * n + 1 : ℤ) * A034008 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A048499.P8011184452410150266

namespace A048499

/-- `∑[∑[(3*n+1)*A034008(n)]]` -/
def P8011184452410150266.Spec : Prop :=
  ∀ n, P8011184452410150266.a n = A048499 n

end A048499

/-! ## A048499.P4059828051349018268

`abs(A028399(n+2)-A027992(n))`
-/

namespace A048499.P4059828051349018268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A028399 (n + 2) - A027992 n|

end

end A048499.P4059828051349018268

namespace A048499

/-- `abs(A028399(n+2)-A027992(n))` -/
def P4059828051349018268.Spec : Prop :=
  ∀ n, P4059828051349018268.a n = A048499 n

end A048499

/-! ## A048499.P13990511870711112598

`∑[(A111284(n+1)-n)*A011782(n)]`
-/

namespace A048499.P13990511870711112598
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A111284 (n + 1) - (n : ℤ)) * A011782 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A048499.P13990511870711112598

namespace A048499

/-- `∑[(A111284(n+1)-n)*A011782(n)]` -/
def P13990511870711112598.Spec : Prop :=
  ∀ n, P13990511870711112598.a n = A048499 n

end A048499

/-! ## A048499.P5041850419549434481

`2*(a(n-1)+A131130(n)-A154117(n))` with `a(0)=1`
-/

namespace A048499.P5041850419549434481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * (a (n - 1) + (A131130 n - A154117 n))

end

end A048499.P5041850419549434481

namespace A048499

/-- `2*(a(n-1)+A131130(n)-A154117(n))` -/
def P5041850419549434481.Spec : Prop :=
  ∀ n, P5041850419549434481.a n = A048499 n

end A048499

/-! ## A048499.P9378731769454183254

`ogf((1-3x+8x^2)/(1-5x+8x^2-4x^3))`
-/

namespace A048499.P9378731769454183254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -3, 8] [1, -5, 8, -4] n

end

end A048499.P9378731769454183254

namespace A048499

/-- `ogf((1-3x+8x^2)/(1-5x+8x^2-4x^3))` -/
def P9378731769454183254.Spec : Prop :=
  ∀ n, P9378731769454183254.a n = A048499 n

end A048499

/-! ## A048499.P11351678302620513383

`(A048500(n)+A048498(n))/2`
-/

namespace A048499.P11351678302620513383
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048500 n + A048498 n : ℚ) / 2

end

end A048499.P11351678302620513383

namespace A048499

/-- `(A048500(n)+A048498(n))/2` -/
def P11351678302620513383.Spec : Prop :=
  ∀ n, P11351678302620513383.a n = (A048499 n : ℚ)

end A048499

/-! ## A048499.P14532047388063861627

`(A048501(n)+A048497(n))/2`
-/

namespace A048499.P14532047388063861627
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048501 n + A048497 n : ℚ) / 2

end

end A048499.P14532047388063861627

namespace A048499

/-- `(A048501(n)+A048497(n))/2` -/
def P14532047388063861627.Spec : Prop :=
  ∀ n, P14532047388063861627.a n = (A048499 n : ℚ)

end A048499

/-! ## A048499.P16137751575403794236

`(A048502(n)+A048496(n))/2`
-/

namespace A048499.P16137751575403794236
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048502 n + A048496 n : ℚ) / 2

end

end A048499.P16137751575403794236

namespace A048499

/-- `(A048502(n)+A048496(n))/2` -/
def P16137751575403794236.Spec : Prop :=
  ∀ n, P16137751575403794236.a n = (A048499 n : ℚ)

end A048499

/-! ## A048499.P9023853861192902655

`∑[A011782(n)*A202676(A179865(n+1))]`
-/

namespace A048499.P9023853861192902655
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n * A202676 (A179865 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A048499.P9023853861192902655

namespace A048499

/-- `∑[A011782(n)*A202676(A179865(n+1))]` -/
def P9023853861192902655.Spec : Prop :=
  ∀ n, P9023853861192902655.a n = A048499 n

end A048499

