import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
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
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C030
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C039
import Seq.B000.C041
import Seq.B000.C046
import Seq.B000.C047
import Seq.B000.C048
import Seq.B000.C049
import Seq.B000.C050
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C009
import Seq.B001.C012
import Seq.B001.C013
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C006
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C003
import Seq.B003.C004
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B004.C004
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
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
import SequenceMachineLib.Triangle

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A391000: Number of one-sided polyforms with n cells of two types: unit squares and isosceles right triangles whose short sides have unit length. Cells are joined along sides of equal lengths.

The programs for A391000, there is no canonical definition to state claims against.
-/

/-! ## A391000.P9469875249431436013

`A091171(n+1)+A090245(A036537(n+1))`
-/

namespace A391000.P9469875249431436013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091171 (n + 1) + A090245 (A036537 (n + 1)).toNat

end

end A391000.P9469875249431436013

/-!
# A391003: Numbers k such that k is prime and k + 1 is semiperfect and k can be represented as the sum of some subset of the divisors of k + 1.

The programs for A391003, there is no canonical definition to state claims against.
-/

/-! ## A391003.P10429702768305936944

`∩[A085493(n+1), A138837(n+1)]`
-/

namespace A391003.P10429702768305936944
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085493 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138837 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391003.P10429702768305936944

/-! ## A391003.P16473386769332298151

`∩[A085498(n+1), A138837(n+1)]`
-/

namespace A391003.P16473386769332298151
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085498 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138837 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391003.P16473386769332298151

/-! ## A391003.P14169879724929367632

`∩[A085498(n+1), A185208(n+1)]`
-/

namespace A391003.P14169879724929367632
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085498 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185208 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391003.P14169879724929367632

/-! ## A391003.P13291559815509637935

`∩[A085498(n+1), A294277(n+1)]`
-/

namespace A391003.P13291559815509637935
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085498 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294277 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391003.P13291559815509637935

/-! ## A391003.P1084112194168895699

`∩[A085498(n+1), A295584(n+1)]`
-/

namespace A391003.P1084112194168895699
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085498 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295584 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391003.P1084112194168895699

/-! ## A391003.P6409049262874032101

`∩[A085498(n+1), A161790(n+1)]`
-/

namespace A391003.P6409049262874032101
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085498 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161790 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391003.P6409049262874032101

/-! ## A391003.P7691547024644980231

`∩[A085498(n+1), A143263(n+1)]`
-/

namespace A391003.P7691547024644980231
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085498 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143263 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391003.P7691547024644980231

/-! ## A391003.P12698245832886153410

`∩[A085498(n+1), A347771(n+1)]`
-/

namespace A391003.P12698245832886153410
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085498 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347771 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391003.P12698245832886153410

/-! ## A391003.P15183351307014702979

`∩[A080765(n+1), A085498(n+1)]`
-/

namespace A391003.P15183351307014702979
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080765 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085498 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391003.P15183351307014702979

/-! ## A391003.P11482132307509936562

`∩[A085498(n+1), A257739(n+1)]`
-/

namespace A391003.P11482132307509936562
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085498 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257739 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391003.P11482132307509936562

/-! ## A391003.P408355281116341344

`∩[A085498(n+1), A175431(n+1)]`
-/

namespace A391003.P408355281116341344
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085498 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175431 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391003.P408355281116341344

/-! ## A391003.P983756508743530524

`∩[A085498(n+1), A391250(n+1)]`
-/

namespace A391003.P983756508743530524
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085498 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391250 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391003.P983756508743530524

/-! ## A391003.P2092639710944386514

`∩[A085498(n+1), A101082(n+1)]`
-/

namespace A391003.P2092639710944386514
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085498 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101082 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391003.P2092639710944386514

/-! ## A391003.P17973824206128444257

`∩[A062289(n+1), A085498(n+1)]`
-/

namespace A391003.P17973824206128444257
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062289 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085498 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391003.P17973824206128444257

/-! ## A391003.P4602121539041350502

`filter[A085498(n+1), A043545(#)]`
-/

namespace A391003.P4602121539041350502
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085498 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A043545 (f1 j).toNat = 1) n)

end

end A391003.P4602121539041350502

/-! ## A391003.P14568303842149249425

`filter[A085498(n+1), A267442(#)]`
-/

namespace A391003.P14568303842149249425
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085498 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A267442 (f1 j).toNat = 1) n)

end

end A391003.P14568303842149249425

/-! ## A391003.P16032627087248798778

`∩[A085498(n+1), A133398(n+1)]`
-/

namespace A391003.P16032627087248798778
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085498 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133398 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391003.P16032627087248798778

/-! ## A391003.P397353486461290923

`∩[A085498(n+1), A138836(n+1)]`
-/

namespace A391003.P397353486461290923
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085498 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138836 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391003.P397353486461290923

/-! ## A391003.P10439050703059710287

`∩[A085498(n+1), A161155(n+1)]`
-/

namespace A391003.P10439050703059710287
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085498 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161155 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391003.P10439050703059710287

/-! ## A391003.P6416291586665659247

`∩[A085498(n+1), A161154(n+1)]`
-/

namespace A391003.P6416291586665659247
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085498 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161154 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391003.P6416291586665659247

/-!
# A391004: Primes p that can be represented as the sum of distinct nontrivial divisors of p + 1.

The programs for A391004, there is no canonical definition to state claims against.
-/

/-! ## A391004.P5323475820879091866

`∩[A276112(n+1), A391005(n+1)]`
-/

namespace A391004.P5323475820879091866
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276112 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391005 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391004.P5323475820879091866

/-!
# A391005: Semiperfect primes: p is a semiperfect prime <=> p is prime and p + 1 is semiperfect.

The programs for A391005, there is no canonical definition to state claims against.
-/

/-! ## A391005.P5110740345285121616

`p?[A317048(n+1)]`
-/

namespace A391005.P5110740345285121616
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317048 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A391005.P5110740345285121616

/-! ## A391005.P14092938106666893134

`filter[A164319(n+1), A043545(#)]`
-/

namespace A391005.P14092938106666893134
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164319 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A043545 (f1 j).toNat = 1) n)

end

end A391005.P14092938106666893134

/-! ## A391005.P7333481079659803064

`filter[A317048(n+1), A010051(#)]`
-/

namespace A391005.P7333481079659803064
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317048 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A391005.P7333481079659803064

/-! ## A391005.P2910603210028660916

`filter[A317048(n+1), A080339(#)]`
-/

namespace A391005.P2910603210028660916
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317048 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080339 (f1 j).toNat = 1) n)

end

end A391005.P2910603210028660916

/-! ## A391005.P4143116925384578123

`filter[A317048(n+1), A080545(#)]`
-/

namespace A391005.P4143116925384578123
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317048 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080545 (f1 j).toNat = 1) n)

end

end A391005.P4143116925384578123

/-! ## A391005.P2714735078692378963

`filter[A164319(n+1), A267442(#)]`
-/

namespace A391005.P2714735078692378963
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164319 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A267442 (f1 j).toNat = 1) n)

end

end A391005.P2714735078692378963

/-! ## A391005.P5849589096920064661

`filter[A317048(n+1), A171387(#)]`
-/

namespace A391005.P5849589096920064661
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317048 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A171387 (f1 j).toNat = 1) n)

end

end A391005.P5849589096920064661

/-! ## A391005.P2697932290263191161

`filter[A317048(n+1), A302777(#)]`
-/

namespace A391005.P2697932290263191161
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317048 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A302777 (f1 j).toNat = 1) n)

end

end A391005.P2697932290263191161

/-! ## A391005.P3764612037478773947

`filter[A317048(n+1), A323152(#)]`
-/

namespace A391005.P3764612037478773947
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317048 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323152 (f1 j).toNat = 1) n)

end

end A391005.P3764612037478773947

/-! ## A391005.P11821055414599110979

`filter[A317048(n+1), A323153(#)]`
-/

namespace A391005.P11821055414599110979
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317048 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323153 (f1 j).toNat = 1) n)

end

end A391005.P11821055414599110979

/-!
# A391007: Prime numbers p that cannot be represented as either the sum of distinct nontrivial divisors of p - 1 or the sum of distinct nontrivial divisors of p + 1.

The programs for A391007, there is no canonical definition to state claims against.
-/

/-! ## A391007.P3231559015897849744

`record[p?[A329335(2*n)]]`
-/

namespace A391007.P3231559015897849744
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329335 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A391007.P3231559015897849744

/-!
# A391009: Number of (undirected) Hamiltonian paths on the 9 X n knight graph.

The programs for A391009, there is no canonical definition to state claims against.
-/

/-! ## A391009.P6328424416880828818

`A390833(A374010(n+1))`
-/

namespace A391009.P6328424416880828818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390833 (A374010 (n + 1)).toNat

end

end A391009.P6328424416880828818

/-!
# A391011: Quartic-full (4-full) Achilles numbers.

The programs for A391011, there is no canonical definition to state claims against.
-/

/-! ## A391011.P17654811287584003437

`∩[A036967(n+1), A052486(n+1)]`
-/

namespace A391011.P17654811287584003437
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036967 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052486 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391011.P17654811287584003437

/-! ## A391011.P8333658309912816861

`∩[A036967(n+1), A388293(n+1)]`
-/

namespace A391011.P8333658309912816861
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036967 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A388293 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391011.P8333658309912816861

/-! ## A391011.P12387450504286924543

`∩[A052486(n+1), A372841(n+1)]`
-/

namespace A391011.P12387450504286924543
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052486 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372841 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391011.P12387450504286924543

/-! ## A391011.P12419254969292322440

`∩[A036967(n+1), A391980(n+1)]`
-/

namespace A391011.P12419254969292322440
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036967 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391980 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391011.P12419254969292322440

/-! ## A391011.P1279640482474544781

`∩[A036967(n+1), A393816(n+1)]`
-/

namespace A391011.P1279640482474544781
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036967 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393816 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391011.P1279640482474544781

/-!
# A391014: Indices of zeroless primes.

The programs for A391014, there is no canonical definition to state claims against.
-/

/-! ## A391014.P13528269181693746114

`A000720(A038618(n+1))`
-/

namespace A391014.P13528269181693746114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A038618 (n + 1)).toNat

end

end A391014.P13528269181693746114

/-! ## A391014.P9839911842059604716

`A061395(A038618(1+n))`
-/

namespace A391014.P9839911842059604716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (A038618 (1 + n)).toNat

end

end A391014.P9839911842059604716

/-! ## A391014.P3303795377522004675

`A056239(A038618(1+n))`
-/

namespace A391014.P3303795377522004675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (A038618 (1 + n)).toNat

end

end A391014.P3303795377522004675

/-! ## A391014.P7594157443723502667

`record[A003963(A004719(n+1))]`
-/

namespace A391014.P7594157443723502667
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (A004719 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A391014.P7594157443723502667

/-! ## A391014.P8118078648737337483

`record[A003963(A052382(n+1))]`
-/

namespace A391014.P8118078648737337483
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (A052382 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A391014.P8118078648737337483

/-! ## A391014.P17842321732477465066

`record[A003963(A195943(n+1))]`
-/

namespace A391014.P17842321732477465066
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (A195943 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A391014.P17842321732477465066

/-! ## A391014.P16750738022344720045

`record[A056239(A052382(n+2))]`
-/

namespace A391014.P16750738022344720045
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (A052382 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A391014.P16750738022344720045

/-! ## A391014.P15696468308714214083

`A056239(∩[A000040(n+1), A052382(n+1)])`
-/

namespace A391014.P15696468308714214083
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052382 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A391014.P15696468308714214083

/-! ## A391014.P13253568659012036116

`A139169(∩[A000040(n+1), A195943(n+1)])`
-/

namespace A391014.P13253568659012036116
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195943 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139169 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A391014.P13253568659012036116

/-! ## A391014.P15984794258609914242

`A003963(2*A038618(n+1))`
-/

namespace A391014.P15984794258609914242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (2 * A038618 (n + 1)).toNat

end

end A391014.P15984794258609914242

/-! ## A391014.P15239961874379469527

`A056172(2*A038618(n+1))`
-/

namespace A391014.P15239961874379469527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056172 (2 * A038618 (n + 1)).toNat

end

end A391014.P15239961874379469527

/-! ## A391014.P11977342883016586759

`A316524(4*A038618(n+1))`
-/

namespace A391014.P11977342883016586759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316524 (4 * A038618 (n + 1)).toNat

end

end A391014.P11977342883016586759

/-!
# A391017: Starting values k of Collatz orbits that achieve a new minimum of Product_{j == 4 mod 6 in "3x+1" orbit of k} (j-1)/j.

The programs for A391017, there is no canonical definition to state claims against.
-/

/-! ## A391017.P3543467018070021923

`A117048(n+1)-A006519(A001411(n))`
-/

namespace A391017.P3543467018070021923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117048 (n + 1) - A006519 (A001411 n).toNat

end

end A391017.P3543467018070021923

/-! ## A391017.P16969981857320968021

`A117048(n+1)-A048250(A000244(n))`
-/

namespace A391017.P16969981857320968021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117048 (n + 1) - A048250 (A000244 n).toNat

end

end A391017.P16969981857320968021

/-!
# A391018: a(n) = A006577(A391017(n)).

The programs for A391018, there is no canonical definition to state claims against.
-/

/-! ## A391018.P13614112013710285522

`A006577(A391017(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A391018.P13614112013710285522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006577 (A391017 (n + 1)).toNat

end

end A391018.P13614112013710285522

/-! ## A391018.P5101961522617556014

`A143812(A033958(n+1))-1`
-/

namespace A391018.P5101961522617556014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143812 (A033958 (n + 1)).toNat - 1

end

end A391018.P5101961522617556014

/-!
# A391019: The unique set of nine distinct squarefree numbers whose reciprocals add to 1/2, with the property that each number has exactly two distinct prime factors.

The programs for A391019, there is no canonical definition to state claims against.
-/

/-! ## A391019.P808300174946827916

`A320911(A383332(n)+A239141(n+1))`
-/

namespace A391019.P808300174946827916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320911 (A383332 n + A239141 (n + 1)).toNat

end

end A391019.P808300174946827916

/-! ## A391019.P14155463059947442050

`A006881(A187182(3*n+1)+A000045(n))`
-/

namespace A391019.P14155463059947442050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006881 (A187182 (3 * n + 1) + A000045 n).toNat

end

end A391019.P14155463059947442050

/-!
# A391020: Numbers k such that no numbers of the form 1 + (product of k distinct primes of first k+1 primes) are prime.

The programs for A391020, there is no canonical definition to state claims against.
-/

/-! ## A391020.P11728111249231514644

`eq[0, A135715(n+1)]`
-/

namespace A391020.P11728111249231514644
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135715 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A391020.P11728111249231514644

/-! ## A391020.P16292235816391205952

`lt[A135715(n+1), A286334(A023416(n))]`
-/

namespace A391020.P16292235816391205952
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135715 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286334 (A023416 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A391020.P16292235816391205952

/-! ## A391020.P8779219350645431422

`lt[A135715(n+1), A000265(A376555(n))]`
-/

namespace A391020.P8779219350645431422
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135715 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A376555 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A391020.P8779219350645431422

/-! ## A391020.P4509836050724729701

`lt[A135715(n+1), A053150(A000040(n+1))]`
-/

namespace A391020.P4509836050724729701
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135715 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053150 (A000040 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A391020.P4509836050724729701

/-! ## A391020.P10931588470228886871

`lt[A135715(n+1), A053150(A053150(n+1))]`
-/

namespace A391020.P10931588470228886871
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135715 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053150 (A053150 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A391020.P10931588470228886871

/-! ## A391020.P11433106513610373508

`lt[A135715(n+1), A286334(A286357(n+1))]`
-/

namespace A391020.P11433106513610373508
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135715 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286334 (A286357 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A391020.P11433106513610373508

/-!
# A391023: Numbers with more than 1 distinct prime factor and whose largest prime factor exponent is 2.

The programs for A391023, the canonical program `A391023.P8301791934320593997` is in `Seq.B002.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A391023 has offset 1).

The definition of A391023 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9953 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A391023.P8301791934320593997

`filter[A067259(1+n), A355447(#)]`

The canonical program, it is in `Seq.B002.C007`.
-/

namespace A391023

/-- `filter[A067259(1+n), A355447(#)]` -/
def P8301791934320593997.Spec : Prop :=
  ∀ n, P8301791934320593997.a n = A391023 (n + 1)

theorem P8301791934320593997.correct : P8301791934320593997.Spec := by
  intro n
  simp only [A391023, Nat.add_sub_cancel]

end A391023

/-! ## A391023.P9121609161909910104

`filter[A342393(n+1), A355447(#)]`
-/

namespace A391023.P9121609161909910104
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342393 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355447 (f1 j).toNat = 1) n)

end

end A391023.P9121609161909910104

namespace A391023

/-- `filter[A342393(n+1), A355447(#)]` -/
def P9121609161909910104.Spec : Prop :=
  ∀ n, P9121609161909910104.a n = A391023 (n + 1)

end A391023

/-! ## A391023.P10887124419651357739

`filter[A126706(n+1), A212793(#)]`
-/

namespace A391023.P10887124419651357739
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126706 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A212793 (f1 j).toNat = 1) n)

end

end A391023.P10887124419651357739

namespace A391023

/-- `filter[A126706(n+1), A212793(#)]` -/
def P10887124419651357739.Spec : Prop :=
  ∀ n, P10887124419651357739.a n = A391023 (n + 1)

end A391023

/-! ## A391023.P16133365246001486711

`filter[A126706(n+1), A359429(#)]`
-/

namespace A391023.P16133365246001486711
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126706 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359429 (f1 j).toNat = 1) n)

end

end A391023.P16133365246001486711

namespace A391023

/-- `filter[A126706(n+1), A359429(#)]` -/
def P16133365246001486711.Spec : Prop :=
  ∀ n, P16133365246001486711.a n = A391023 (n + 1)

end A391023

/-! ## A391023.P18287026332387559102

`∩[A067259(n+1), A126706(n+1)]`
-/

namespace A391023.P18287026332387559102
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067259 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126706 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391023.P18287026332387559102

namespace A391023

/-- `∩[A067259(n+1), A126706(n+1)]` -/
def P18287026332387559102.Spec : Prop :=
  ∀ n, (P18287026332387559102.a n : ℤ) = A391023 (n + 1)

end A391023

/-! ## A391023.P8173481837337880989

`filter[A058080(n+1), A359429(#)]`
-/

namespace A391023.P8173481837337880989
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058080 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359429 (f1 j).toNat = 1) n)

end

end A391023.P8173481837337880989

namespace A391023

/-- `filter[A058080(n+1), A359429(#)]` -/
def P8173481837337880989.Spec : Prop :=
  ∀ n, P8173481837337880989.a n = A391023 (n + 1)

end A391023

/-! ## A391023.P2719777343292098874

`∩[A058080(n+1), A067259(n+1)]`
-/

namespace A391023.P2719777343292098874
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058080 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067259 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391023.P2719777343292098874

namespace A391023

/-- `∩[A058080(n+1), A067259(n+1)]` -/
def P2719777343292098874.Spec : Prop :=
  ∀ n, (P2719777343292098874.a n : ℤ) = A391023 (n + 1)

end A391023

/-! ## A391023.P13483522361815500617

`filter[A033942(n+1), A359429(#)]`
-/

namespace A391023.P13483522361815500617
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033942 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359429 (f1 j).toNat = 1) n)

end

end A391023.P13483522361815500617

namespace A391023

/-- `filter[A033942(n+1), A359429(#)]` -/
def P13483522361815500617.Spec : Prop :=
  ∀ n, P13483522361815500617.a n = A391023 (n + 1)

end A391023

/-! ## A391023.P11992304646613862928

`filter[A111087(n+1), A359429(#)]`
-/

namespace A391023.P11992304646613862928
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111087 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359429 (f1 j).toNat = 1) n)

end

end A391023.P11992304646613862928

namespace A391023

/-- `filter[A111087(n+1), A359429(#)]` -/
def P11992304646613862928.Spec : Prop :=
  ∀ n, P11992304646613862928.a n = A391023 (n + 1)

end A391023

/-! ## A391023.P8818058654882934498

`∩[A033942(n+1), A067259(n+1)]`
-/

namespace A391023.P8818058654882934498
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033942 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067259 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391023.P8818058654882934498

namespace A391023

/-- `∩[A033942(n+1), A067259(n+1)]` -/
def P8818058654882934498.Spec : Prop :=
  ∀ n, (P8818058654882934498.a n : ℤ) = A391023 (n + 1)

end A391023

/-! ## A391023.P685798832728174232

`∩[A067259(n+1), A111087(n+1)]`
-/

namespace A391023.P685798832728174232
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067259 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111087 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391023.P685798832728174232

namespace A391023

/-- `∩[A067259(n+1), A111087(n+1)]` -/
def P685798832728174232.Spec : Prop :=
  ∀ n, (P685798832728174232.a n : ℤ) = A391023 (n + 1)

end A391023

/-! ## A391023.P10959784779162299553

`filter[A123240(n+1), A359429(#)]`
-/

namespace A391023.P10959784779162299553
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123240 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359429 (f1 j).toNat = 1) n)

end

end A391023.P10959784779162299553

namespace A391023

/-- `filter[A123240(n+1), A359429(#)]` -/
def P10959784779162299553.Spec : Prop :=
  ∀ n, P10959784779162299553.a n = A391023 (n + 1)

end A391023

/-! ## A391023.P313489071422565433

`∩[A067259(n+1), A123240(n+1)]`
-/

namespace A391023.P313489071422565433
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067259 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123240 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391023.P313489071422565433

namespace A391023

/-- `∩[A067259(n+1), A123240(n+1)]` -/
def P313489071422565433.Spec : Prop :=
  ∀ n, (P313489071422565433.a n : ℤ) = A391023 (n + 1)

end A391023

/-! ## A391023.P15442690788801166994

`filter[A390289(n+1), A087049(#)]`
-/

namespace A391023.P15442690788801166994
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390289 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A087049 (f1 j).toNat = 1) n)

end

end A391023.P15442690788801166994

namespace A391023

/-- `filter[A390289(n+1), A087049(#)]` -/
def P15442690788801166994.Spec : Prop :=
  ∀ n, P15442690788801166994.a n = A391023 (n + 1)

end A391023

/-! ## A391023.P5351044701863393101

`filter[A390289(n+1), A353470(#)]`
-/

namespace A391023.P5351044701863393101
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390289 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353470 (f1 j).toNat = 1) n)

end

end A391023.P5351044701863393101

namespace A391023

/-- `filter[A390289(n+1), A353470(#)]` -/
def P5351044701863393101.Spec : Prop :=
  ∀ n, P5351044701863393101.a n = A391023 (n + 1)

end A391023

/-! ## A391023.P967933347131287495

`filter[A390289(n+1), A355447(#)]`
-/

namespace A391023.P967933347131287495
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390289 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355447 (f1 j).toNat = 1) n)

end

end A391023.P967933347131287495

namespace A391023

/-- `filter[A390289(n+1), A355447(#)]` -/
def P967933347131287495.Spec : Prop :=
  ∀ n, P967933347131287495.a n = A391023 (n + 1)

end A391023

/-! ## A391023.P10880074060342506304

`filter[A390289(n+1), A359429(#)]`
-/

namespace A391023.P10880074060342506304
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390289 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359429 (f1 j).toNat = 1) n)

end

end A391023.P10880074060342506304

namespace A391023

/-- `filter[A390289(n+1), A359429(#)]` -/
def P10880074060342506304.Spec : Prop :=
  ∀ n, P10880074060342506304.a n = A391023 (n + 1)

end A391023

/-! ## A391023.P13992027290335859976

`filter[A377880(n+1), A355447(#)]`
-/

namespace A391023.P13992027290335859976
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377880 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355447 (f1 j).toNat = 1) n)

end

end A391023.P13992027290335859976

namespace A391023

/-- `filter[A377880(n+1), A355447(#)]` -/
def P13992027290335859976.Spec : Prop :=
  ∀ n, P13992027290335859976.a n = A391023 (n + 1)

end A391023

/-! ## A391023.P16264826112870748960

`filter[A100959(n+1), A359429(#)]`
-/

namespace A391023.P16264826112870748960
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100959 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359429 (f1 j).toNat = 1) n)

end

end A391023.P16264826112870748960

namespace A391023

/-- `filter[A100959(n+1), A359429(#)]` -/
def P16264826112870748960.Spec : Prop :=
  ∀ n, P16264826112870748960.a n = A391023 (n + 1)

end A391023

/-! ## A391023.P8228161679428518237

`∩[A067259(n+1), A100959(n+1)]`
-/

namespace A391023.P8228161679428518237
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067259 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100959 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391023.P8228161679428518237

namespace A391023

/-- `∩[A067259(n+1), A100959(n+1)]` -/
def P8228161679428518237.Spec : Prop :=
  ∀ n, (P8228161679428518237.a n : ℤ) = A391023 (n + 1)

end A391023

/-!
# A391024: Classification of numbers predicated according to prime powers, squarefree, powerful, and perfect powers.

The programs for A391024, there is no canonical definition to state claims against.
-/

/-! ## A391024.P17260578777091908821

`A323014(floor(A018247(n)/A015898(3*(n+1)))+n)`
-/

namespace A391024.P17260578777091908821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323014 (⌊(A018247 n : ℚ) / (A015898 (3 * (n + 1)) : ℚ)⌋ + (n : ℤ)).toNat

end

end A391024.P17260578777091908821

/-! ## A391024.P8643552737073118272

`A323014(floor(A334101(n+1)/A015898(3*(n+1)))+n)`
-/

namespace A391024.P8643552737073118272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323014 (⌊(A334101 (n + 1) : ℚ) / (A015898 (3 * (n + 1)) : ℚ)⌋ + (n : ℤ)).toNat

end

end A391024.P8643552737073118272

/-! ## A391024.P6113447161331507424

`A323014(floor(A084890(n+3)/A015898(3*(n+1)))+n)`
-/

namespace A391024.P6113447161331507424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323014 (⌊(A084890 (n + 3) : ℚ) / (A015898 (3 * (n + 1)) : ℚ)⌋ + (n : ℤ)).toNat

end

end A391024.P6113447161331507424

/-! ## A391024.P10344615300164886764

`A323014(floor(A123503(n+4)/A015898(3*(n+1)))+n)`
-/

namespace A391024.P10344615300164886764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323014 (⌊(A123503 (n + 4) : ℚ) / (A015898 (3 * (n + 1)) : ℚ)⌋ + (n : ℤ)).toNat

end

end A391024.P10344615300164886764

/-! ## A391024.P8322717466241521340

`A323014(floor(A001414(2*n+3)/A015898(3*(n+1)))+n)`
-/

namespace A391024.P8322717466241521340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323014 (⌊(A001414 (2 * n + 3) : ℚ) / (A015898 (3 * (n + 1)) : ℚ)⌋ + (n : ℤ)).toNat

end

end A391024.P8322717466241521340

/-!
# A391025: Odd numbers that are neither powerful nor squarefree.

The programs for A391025, the canonical program `A391025.P15150800664500928125` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A391025 has offset 1).

The definition of A391025 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6012 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A391025.P15150800664500928125

`filter[2*n+1, A389905(#)]`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A391025

/-- `filter[2*n+1, A389905(#)]` -/
def P15150800664500928125.Spec : Prop :=
  ∀ n, (P15150800664500928125.a n : ℤ) = A391025 (n + 1)

theorem P15150800664500928125.correct : P15150800664500928125.Spec := by
  intro n
  simp only [A391025, Nat.add_sub_cancel]

end A391025

/-! ## A391025.P1657421403899358611

`∩[2*n+1, A386294(n+1)]`
-/

namespace A391025.P1657421403899358611
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386294 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391025.P1657421403899358611

namespace A391025

/-- `∩[2*n+1, A386294(n+1)]` -/
def P1657421403899358611.Spec : Prop :=
  ∀ n, (P1657421403899358611.a n : ℤ) = A391025 (n + 1)

end A391025

/-! ## A391025.P192532499643544699

`∩[2*n+1, A387919(n+1)]`
-/

namespace A391025.P192532499643544699
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387919 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391025.P192532499643544699

namespace A391025

/-- `∩[2*n+1, A387919(n+1)]` -/
def P192532499643544699.Spec : Prop :=
  ∀ n, (P192532499643544699.a n : ℤ) = A391025 (n + 1)

end A391025

/-! ## A391025.P18130476087792734593

`∩[2*n+1, A332785(n+1)]`
-/

namespace A391025.P18130476087792734593
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332785 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391025.P18130476087792734593

namespace A391025

/-- `∩[2*n+1, A332785(n+1)]` -/
def P18130476087792734593.Spec : Prop :=
  ∀ n, (P18130476087792734593.a n : ℤ) = A391025 (n + 1)

end A391025

/-! ## A391025.P2830584904348577083

`∩[A082686(n+1), A317616(n+1)]`
-/

namespace A391025.P2830584904348577083
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082686 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317616 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391025.P2830584904348577083

namespace A391025

/-- `∩[A082686(n+1), A317616(n+1)]` -/
def P2830584904348577083.Spec : Prop :=
  ∀ n, (P2830584904348577083.a n : ℤ) = A391025 (n + 1)

end A391025

/-! ## A391025.P4907747506499617998

`∩[A305635(n+1), A317616(n+1)]`
-/

namespace A391025.P4907747506499617998
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305635 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317616 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391025.P4907747506499617998

namespace A391025

/-- `∩[A305635(n+1), A317616(n+1)]` -/
def P4907747506499617998.Spec : Prop :=
  ∀ n, (P4907747506499617998.a n : ℤ) = A391025 (n + 1)

end A391025

/-! ## A391025.P17001881491068905043

`∩[A088828(n+1), A317616(n+1)]`
-/

namespace A391025.P17001881491068905043
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088828 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317616 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391025.P17001881491068905043

namespace A391025

/-- `∩[A088828(n+1), A317616(n+1)]` -/
def P17001881491068905043.Spec : Prop :=
  ∀ n, (P17001881491068905043.a n : ℤ) = A391025 (n + 1)

end A391025

/-! ## A391025.P17750834222389603894

`filter[A389065(n+1), A353569(#)]`
-/

namespace A391025.P17750834222389603894
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389065 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353569 (f1 j).toNat = 1) n)

end

end A391025.P17750834222389603894

namespace A391025

/-- `filter[A389065(n+1), A353569(#)]` -/
def P17750834222389603894.Spec : Prop :=
  ∀ n, P17750834222389603894.a n = A391025 (n + 1)

end A391025

/-! ## A391025.P14504019109978961396

`∩[A053850(n+1), A389065(n+1)]`
-/

namespace A391025.P14504019109978961396
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053850 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389065 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391025.P14504019109978961396

namespace A391025

/-- `∩[A053850(n+1), A389065(n+1)]` -/
def P14504019109978961396.Spec : Prop :=
  ∀ n, (P14504019109978961396.a n : ℤ) = A391025 (n + 1)

end A391025

/-! ## A391025.P12305218206876377217

`∩[A360769(n+1), A389065(n+1)]`
-/

namespace A391025.P12305218206876377217
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360769 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389065 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391025.P12305218206876377217

namespace A391025

/-- `∩[A360769(n+1), A389065(n+1)]` -/
def P12305218206876377217.Spec : Prop :=
  ∀ n, (P12305218206876377217.a n : ℤ) = A391025 (n + 1)

end A391025

/-! ## A391025.P12321735512639706005

`filter[A052485(n+1), A353569(#)]`
-/

namespace A391025.P12321735512639706005
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052485 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353569 (f1 j).toNat = 1) n)

end

end A391025.P12321735512639706005

namespace A391025

/-- `filter[A052485(n+1), A353569(#)]` -/
def P12321735512639706005.Spec : Prop :=
  ∀ n, P12321735512639706005.a n = A391025 (n + 1)

end A391025

/-! ## A391025.P1684287972424339709

`∩[A052485(n+1), A053850(n+1)]`
-/

namespace A391025.P1684287972424339709
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052485 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053850 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391025.P1684287972424339709

namespace A391025

/-- `∩[A052485(n+1), A053850(n+1)]` -/
def P1684287972424339709.Spec : Prop :=
  ∀ n, (P1684287972424339709.a n : ℤ) = A391025 (n + 1)

end A391025

/-! ## A391025.P5810351952503845721

`∩[A052485(n+1), A360769(n+1)]`
-/

namespace A391025.P5810351952503845721
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052485 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360769 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391025.P5810351952503845721

namespace A391025

/-- `∩[A052485(n+1), A360769(n+1)]` -/
def P5810351952503845721.Spec : Prop :=
  ∀ n, (P5810351952503845721.a n : ℤ) = A391025 (n + 1)

end A391025

/-! ## A391025.P8280677175767260146

`filter[A387421(n+1), A353569(#)]`
-/

namespace A391025.P8280677175767260146
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387421 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353569 (f1 j).toNat = 1) n)

end

end A391025.P8280677175767260146

namespace A391025

/-- `filter[A387421(n+1), A353569(#)]` -/
def P8280677175767260146.Spec : Prop :=
  ∀ n, P8280677175767260146.a n = A391025 (n + 1)

end A391025

/-! ## A391025.P5829399179448365688

`∩[A053850(n+1), A387421(n+1)]`
-/

namespace A391025.P5829399179448365688
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053850 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387421 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391025.P5829399179448365688

namespace A391025

/-- `∩[A053850(n+1), A387421(n+1)]` -/
def P5829399179448365688.Spec : Prop :=
  ∀ n, (P5829399179448365688.a n : ℤ) = A391025 (n + 1)

end A391025

/-! ## A391025.P15443553332715508800

`∩[A360769(n+1), A387421(n+1)]`
-/

namespace A391025.P15443553332715508800
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360769 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387421 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391025.P15443553332715508800

namespace A391025

/-- `∩[A360769(n+1), A387421(n+1)]` -/
def P15443553332715508800.Spec : Prop :=
  ∀ n, (P15443553332715508800.a n : ℤ) = A391025 (n + 1)

end A391025

/-! ## A391025.P8519965127340093709

`eq[A010187(n), A391024(n)]`
-/

namespace A391025.P8519965127340093709
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010187 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391024 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A391025.P8519965127340093709

namespace A391025

/-- `eq[A010187(n), A391024(n)]` -/
def P8519965127340093709.Spec : Prop :=
  ∀ n, (P8519965127340093709.a n : ℤ) = A391025 (n + 1)

end A391025

/-! ## A391025.P6236047182555822280

`eq[A040013(n), A391024(n)]`
-/

namespace A391025.P6236047182555822280
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040013 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391024 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A391025.P6236047182555822280

namespace A391025

/-- `eq[A040013(n), A391024(n)]` -/
def P6236047182555822280.Spec : Prop :=
  ∀ n, (P6236047182555822280.a n : ℤ) = A391025 (n + 1)

end A391025

/-! ## A391025.P2205073759386116562

`eq[A040032(n), A391024(n)]`
-/

namespace A391025.P2205073759386116562
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040032 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391024 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A391025.P2205073759386116562

namespace A391025

/-- `eq[A040032(n), A391024(n)]` -/
def P2205073759386116562.Spec : Prop :=
  ∀ n, (P2205073759386116562.a n : ℤ) = A391025 (n + 1)

end A391025

/-! ## A391025.P16573172792270080205

`filter[A332785(n+1), A000035(#)]`
-/

namespace A391025.P16573172792270080205
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332785 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A000035 (f1 j).toNat = 1) n)

end

end A391025.P16573172792270080205

namespace A391025

/-- `filter[A332785(n+1), A000035(#)]` -/
def P16573172792270080205.Spec : Prop :=
  ∀ n, P16573172792270080205.a n = A391025 (n + 1)

end A391025

/-!
# A391026: Even numbers that are neither powerful nor squarefree.

The programs for A391026, the canonical program `A391026.P7612980702264081441` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A391026 has offset 1).

The definition of A391026 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7629 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A391026.P18134959717463234049

`filter[2*(n+1), A389905(#)]`
-/

namespace A391026.P18134959717463234049
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A389905 (f1 j) = 1) n)

end

end A391026.P18134959717463234049

namespace A391026

/-- `filter[2*(n+1), A389905(#)]` -/
def P18134959717463234049.Spec : Prop :=
  ∀ n, (P18134959717463234049.a n : ℤ) = A391026 (n + 1)

end A391026

/-! ## A391026.P7335251908862817759

`∩[2*n, A332785(n+1)]`
-/

namespace A391026.P7335251908862817759
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332785 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391026.P7335251908862817759

namespace A391026

/-- `∩[2*n, A332785(n+1)]` -/
def P7335251908862817759.Spec : Prop :=
  ∀ n, (P7335251908862817759.a n : ℤ) = A391026 (n + 1)

end A391026

/-! ## A391026.P7612980702264081441

`filter[A332785(n+1), A354034(#)]`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A391026

/-- `filter[A332785(n+1), A354034(#)]` -/
def P7612980702264081441.Spec : Prop :=
  ∀ n, P7612980702264081441.a n = A391026 (n + 1)

theorem P7612980702264081441.correct : P7612980702264081441.Spec := by
  intro n
  simp only [A391026, Nat.add_sub_cancel]

end A391026

/-! ## A391026.P6543111260074474934

`∩[A332785(n+1), A020739(n)]`
-/

namespace A391026.P6543111260074474934
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332785 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020739 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391026.P6543111260074474934

namespace A391026

/-- `∩[A332785(n+1), A020739(n)]` -/
def P6543111260074474934.Spec : Prop :=
  ∀ n, (P6543111260074474934.a n : ℤ) = A391026 (n + 1)

end A391026

/-! ## A391026.P4342363285314043320

`∩[A332785(n+1), A020744(n)]`
-/

namespace A391026.P4342363285314043320
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332785 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020744 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391026.P4342363285314043320

namespace A391026

/-- `∩[A332785(n+1), A020744(n)]` -/
def P4342363285314043320.Spec : Prop :=
  ∀ n, (P4342363285314043320.a n : ℤ) = A391026 (n + 1)

end A391026

/-! ## A391026.P4871747355411241971

`filter[A332785(n+1), A000034(#)]`
-/

namespace A391026.P4871747355411241971
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332785 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A000034 (f1 j).toNat = 1) n)

end

end A391026.P4871747355411241971

namespace A391026

/-- `filter[A332785(n+1), A000034(#)]` -/
def P4871747355411241971.Spec : Prop :=
  ∀ n, P4871747355411241971.a n = A391026 (n + 1)

end A391026

/-!
# A391027: Number of tetrahedra in the n X n white bishop graph.

The programs for A391027, the canonical program `A391027.P9511795967540376643` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A391027 has offset 1).

The definition of A391027 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A391027.P9511795967540376643

`ogf((x^3+2x^4+16x^5+6x^6+7x^7)/(1-2x-3x^2+8x^3+2x^4-12x^5+2x^6+8x^7-3x^8-2x^9+x^10))`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A391027

/-- `ogf((x^3+2x^4+16x^5+6x^6+7x^7)/(1-2x-3x^2+8x^3+2x^4-12x^5+2x^6+8x^7-3x^8-2x^9+x^10))` -/
def P9511795967540376643.Spec : Prop :=
  ∀ n, P9511795967540376643.a n = A391027 (n + 1)

theorem P9511795967540376643.correct : P9511795967540376643.Spec := by
  intro n
  simp only [A391027, Nat.add_sub_cancel]

end A391027

/-!
# A391029: Expansion of g/(1 - x^3*g), where g = 1+x*g^2 is the g.f. of A000108.

The programs for A391029, there is no canonical definition to state claims against.
-/

/-! ## A391029.P15424086732826144808

`A220658(A119254(n))`
-/

namespace A391029.P15424086732826144808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220658 (A119254 n).toNat

end

end A391029.P15424086732826144808

/-! ## A391029.P4175917557076749849

`A023190(A148989(n))`
-/

namespace A391029.P4175917557076749849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023190 (A148989 n).toNat

end

end A391029.P4175917557076749849

/-! ## A391029.P6890704154469756895

`A337125(A036675(n))`
-/

namespace A391029.P6890704154469756895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337125 (A036675 n).toNat

end

end A391029.P6890704154469756895

/-!
# A391030: Expansion of g/(1 - x^4*g), where g = 1+x*g^2 is the g.f. of A000108.

The programs for A391030, there is no canonical definition to state claims against.
-/

/-! ## A391030.P14504441918914305582

`A071742(A004880(n+1))`
-/

namespace A391030.P14504441918914305582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071742 (A004880 (n + 1)).toNat

end

end A391030.P14504441918914305582

/-! ## A391030.P5805426104503244610

`A071742(A004891(n+1))`
-/

namespace A391030.P5805426104503244610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071742 (A004891 (n + 1)).toNat

end

end A391030.P5805426104503244610

/-! ## A391030.P14475894261966768761

`A071742(A004902(n+1))`
-/

namespace A391030.P14475894261966768761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071742 (A004902 (n + 1)).toNat

end

end A391030.P14475894261966768761

/-! ## A391030.P4833532084971757880

`A071742(A004913(n+1))`
-/

namespace A391030.P4833532084971757880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071742 (A004913 (n + 1)).toNat

end

end A391030.P4833532084971757880

/-!
# A391031: Expansion of g/(1 - x^3*g^2), where g = 1+x*g^2 is the g.f. of A000108.

The programs for A391031, there is no canonical definition to state claims against.
-/

/-! ## A391031.P12966895656591945888

`xor(A327695(A214899(n)), A356783(n))`
-/

namespace A391031.P12966895656591945888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A327695 (A214899 n).toNat) (A356783 n)

end

end A391031.P12966895656591945888

/-! ## A391031.P4394314829965733683

`A288315(A000108(n)%A002080(n+2))`
-/

namespace A391031.P4394314829965733683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288315 (Int.tmod (A000108 n) (A002080 (n + 2))).toNat

end

end A391031.P4394314829965733683

/-! ## A391031.P15975836716741384019

`A085007(A000108(n)*A333901(2*n+1))`
-/

namespace A391031.P15975836716741384019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085007 (A000108 n * A333901 (2 * n + 1)).toNat

end

end A391031.P15975836716741384019

/-! ## A391031.P11701809475146895495

`A288315(C(A000108(n), A262928(3*n+2)))`
-/

namespace A391031.P11701809475146895495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288315 (Nat.choose (A000108 n).toNat (A262928 (3 * n + 2)).toNat)

end

end A391031.P11701809475146895495

/-!
# A391032: Expansion of g/(1 - x^4*g^2), where g = 1+x*g^2 is the g.f. of A000108.

The programs for A391032, there is no canonical definition to state claims against.
-/

/-! ## A391032.P9352529757445442239

`A135665(A000088(n))+A000108(n)`
-/

namespace A391032.P9352529757445442239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135665 (A000088 n).toNat + A000108 n

end

end A391032.P9352529757445442239

/-! ## A391032.P4467549368547190448

`A148354(A073788(n))`
-/

namespace A391032.P4467549368547190448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148354 (A073788 n).toNat

end

end A391032.P4467549368547190448

/-! ## A391032.P1098235251625551314

`A187041(A079225(n))`
-/

namespace A391032.P1098235251625551314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187041 (A079225 n).toNat

end

end A391032.P1098235251625551314

/-!
# A391033: Expansion of g/(1 - x^3*g^3), where g = 1+x*g^2 is the g.f. of A000108.

The programs for A391033, the canonical program `A391033.P7879007244763992493` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A391033 has offset 0).

The definition of A391033 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A391033.P7879007244763992493

`1/(n+1)*∑{#}[floor(n/3), (3*#+1)*C(2*n-3*#, n)]`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A391033

/-- `1/(n+1)*∑{#}[floor(n/3), (3*#+1)*C(2*n-3*#, n)]` -/
def P7879007244763992493.Spec : Prop :=
  ∀ n, P7879007244763992493.a n = (A391033 n : ℚ)

end A391033

/-! ## A391033.P17119994554312213697

`A105872(n)+A105872(n)-A390702(n)`
-/

namespace A391033.P17119994554312213697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105872 n + (A105872 n - A390702 n)

end

end A391033.P17119994554312213697

namespace A391033

/-- `A105872(n)+A105872(n)-A390702(n)` -/
def P17119994554312213697.Spec : Prop :=
  ∀ n, P17119994554312213697.a n = A391033 n

end A391033

/-! ## A391033.P2659930027083604502

`A247911(A356937(n))`
-/

namespace A391033.P2659930027083604502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247911 (A356937 n).toNat

end

end A391033.P2659930027083604502

namespace A391033

/-- `A247911(A356937(n))` -/
def P2659930027083604502.Spec : Prop :=
  ∀ n, P2659930027083604502.a n = A391033 n

end A391033

/-!
# A391034: Expansion of g/(1 - x^4*g^3), where g = 1+x*g^2 is the g.f. of A000108.

The programs for A391034, there is no canonical definition to state claims against.
-/

/-! ## A391034.P10053485676626728516

`A037918(A148302(n))`
-/

namespace A391034.P10053485676626728516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037918 (A148302 n).toNat

end

end A391034.P10053485676626728516

/-! ## A391034.P7415397521082849127

`A239161(A291190(n+1))`
-/

namespace A391034.P7415397521082849127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239161 (A291190 (n + 1)).toNat

end

end A391034.P7415397521082849127

/-! ## A391034.P15364621178078142912

`A083382(A280740(n+1)+A033453(n))`
-/

namespace A391034.P15364621178078142912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083382 (A280740 (n + 1) + A033453 n).toNat

end

end A391034.P15364621178078142912

/-!
# A391035: Expansion of g/(1 - x^4*g^4), where g = 1+x*g^2 is the g.f. of A000108.

The programs for A391035, the canonical program `A391035.P4968607742076271102` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A391035 has offset 0).

The definition of A391035 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A391035.P4968607742076271102

`1/(n+1)*∑{#}[floor(n/4), (4*#+1)*C(2*n-4*#, n)]`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A391035

/-- `1/(n+1)*∑{#}[floor(n/4), (4*#+1)*C(2*n-4*#, n)]` -/
def P4968607742076271102.Spec : Prop :=
  ∀ n, P4968607742076271102.a n = (A391035 n : ℚ)

end A391035

/-! ## A391035.P9059309568858237466

`A172513(a(n-1))+1` with `a(0)=1, a(1)=1`
-/

namespace A391035.P9059309568858237466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A172513 (a (n - 1)).toNat + 1

end

end A391035.P9059309568858237466

namespace A391035

/-- `A172513(a(n-1))+1` -/
def P9059309568858237466.Spec : Prop :=
  ∀ n, P9059309568858237466.a n = A391035 n

end A391035

/-! ## A391035.P11421375920959641150

`A023193(A350717(n))`
-/

namespace A391035.P11421375920959641150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023193 (A350717 n).toNat

end

end A391035.P11421375920959641150

namespace A391035

/-- `A023193(A350717(n))` -/
def P11421375920959641150.Spec : Prop :=
  ∀ n, P11421375920959641150.a n = A391035 n

end A391035

/-!
# A391036: Expansion of g/(1 - x^2*g^5), where g = 1+x*g^2 is the g.f. of A000108.

The programs for A391036, the canonical program `A391036.P12089055954902736063` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A391036 has offset 0).

The definition of A391036 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A391036.P12089055954902736063

`∑{#}[floor(n/2), (5*#+1)*C(2*n+#+1, n-2*#)/(2*n+#+1)]`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A391036

/-- `∑{#}[floor(n/2), (5*#+1)*C(2*n+#+1, n-2*#)/(2*n+#+1)]` -/
def P12089055954902736063.Spec : Prop :=
  ∀ n, P12089055954902736063.a n = (A391036 n : ℚ)

end A391036

/-! ## A391036.P5511235850817493081

`A110656(A246986(n))`
-/

namespace A391036.P5511235850817493081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110656 (A246986 n).toNat

end

end A391036.P5511235850817493081

namespace A391036

/-- `A110656(A246986(n))` -/
def P5511235850817493081.Spec : Prop :=
  ∀ n, P5511235850817493081.a n = A391036 n

end A391036

/-! ## A391036.P14671464498727347630

`A316964(A149359(n))`
-/

namespace A391036.P14671464498727347630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316964 (A149359 n).toNat

end

end A391036.P14671464498727347630

namespace A391036

/-- `A316964(A149359(n))` -/
def P14671464498727347630.Spec : Prop :=
  ∀ n, P14671464498727347630.a n = A391036 n

end A391036

/-!
# A391043: Triangle read by rows: T(n,k) is the number of i <= n such that A020481(i) = prime(k).

The programs for A391043, there is no canonical definition to state claims against.
-/

/-! ## A391043.P2057236122089285901

`A070939(C(A000009(n), A059365(3*n+2)))`
-/

namespace A391043.P2057236122089285901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 (Nat.choose (A000009 n).toNat (A059365 (3 * n + 2)).toNat)

end

end A391043.P2057236122089285901

/-! ## A391043.P2306764242225860975

`A070939(C(A000009(n), A084938(3*n+2)))`
-/

namespace A391043.P2306764242225860975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 (Nat.choose (A000009 n).toNat (A084938 (3 * n + 2)).toNat)

end

end A391043.P2306764242225860975

/-! ## A391043.P13438954256110155412

`A070939(C(A373220(n), A100100(3*n+2)))`
-/

namespace A391043.P13438954256110155412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 (Nat.choose (A373220 n).toNat (A100100 (3 * n + 2)).toNat)

end

end A391043.P13438954256110155412

/-! ## A391043.P2212847797171206102

`A238872(C(A007093(n), A329332(3*n+2)))`
-/

namespace A391043.P2212847797171206102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238872 (Nat.choose (A007093 n).toNat (A329332 (3 * n + 2)).toNat)

end

end A391043.P2212847797171206102

/-! ## A391043.P8004759727471077537

`A363832(C(A279375(n), A354794(3*n+2)))`
-/

namespace A391043.P8004759727471077537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363832 (Nat.choose (A279375 n).toNat (A354794 (3 * n + 2)).toNat)

end

end A391043.P8004759727471077537

/-!
# A391045: Triangle read by rows: T(n,k) = binomial(n+1,k+1)*binomial(2*n-k+1,k)/(n+1), 0<=k<=n.

The programs for A391045, the canonical program `A391045.P6027820538757814092` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A391045 has offset 0).

The definition of A391045 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A391045.P6027820538757814092

`C(row(n)+1, col(n)+1)*C(2*row(n)-col(n)+1, col(n))/(row(n)+1)`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A391045

/-- `C(row(n)+1, col(n)+1)*C(2*row(n)-col(n)+1, col(n))/(row(n)+1)` -/
def P6027820538757814092.Spec : Prop :=
  ∀ n, P6027820538757814092.a n = (A391045 n : ℚ)

end A391045

/-!
# A391046: Triangle read by rows: T(n,k) = binomial(n+1,k+1) * binomial(3*n-2*k+1,k) / (n+1), 0<=k<=n.

The programs for A391046, the canonical program `A391046.P3783400287908323432` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A391046 has offset 0).

The definition of A391046 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A391046.P3783400287908323432

`C(row(n)+1, col(n)+1)*C(3*row(n)-2*col(n)+1, col(n))/(row(n)+1)`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A391046

/-- `C(row(n)+1, col(n)+1)*C(3*row(n)-2*col(n)+1, col(n))/(row(n)+1)` -/
def P3783400287908323432.Spec : Prop :=
  ∀ n, P3783400287908323432.a n = (A391046 n : ℚ)

end A391046

/-!
# A391047: Triangle read by rows: T(n,k) = binomial(n+1,k+1) * binomial(4*n-3*k+1,k) / (n+1), 0<=k<=n.

The programs for A391047, the canonical program `A391047.P8670866521005716276` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A391047 has offset 0).

The definition of A391047 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A391047.P8670866521005716276

`C(row(n)+1, col(n)+1)*C(4*row(n)-3*col(n)+1, col(n))/(row(n)+1)`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A391047

/-- `C(row(n)+1, col(n)+1)*C(4*row(n)-3*col(n)+1, col(n))/(row(n)+1)` -/
def P8670866521005716276.Spec : Prop :=
  ∀ n, P8670866521005716276.a n = (A391047 n : ℚ)

end A391047

/-!
# A391048: Triangle read by rows: T(n,k) = binomial(n+1,k+1) * binomial(5*n-4*k+1,k) / (n+1), 0<=k<=n.

The programs for A391048, the canonical program `A391048.P8262913611129230581` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A391048 has offset 0).

The definition of A391048 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A391048.P8262913611129230581

`C(row(n)+1, col(n)+1)*C(5*row(n)-4*col(n)+1, col(n))/(row(n)+1)`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A391048

/-- `C(row(n)+1, col(n)+1)*C(5*row(n)-4*col(n)+1, col(n))/(row(n)+1)` -/
def P8262913611129230581.Spec : Prop :=
  ∀ n, P8262913611129230581.a n = (A391048 n : ℚ)

end A391048

/-! ## A391048.P3031467500161872221

`A115180(A109001(n))`
-/

namespace A391048.P3031467500161872221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115180 (A109001 n).toNat

end

end A391048.P3031467500161872221

namespace A391048

/-- `A115180(A109001(n))` -/
def P3031467500161872221.Spec : Prop :=
  ∀ n, P3031467500161872221.a n = A391048 n

end A391048

/-!
# A391049: Primes p such that p^2 - 4*q*r = s^2, where q, r are primes and s > 0.

The programs for A391049, the canonical program `A391049.P16899425426740408334` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A391049 has offset 1).

The definition of A391049 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A391049.P16899425426740408334

`∪[A005385(n+1), A006512(n+1)]`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A391049

/-- `∪[A005385(n+1), A006512(n+1)]` -/
def P16899425426740408334.Spec : Prop :=
  ∀ n, (P16899425426740408334.a n : ℤ) = A391049 (n + 1)

theorem P16899425426740408334.correct : P16899425426740408334.Spec := by
  intro n
  simp only [A391049, Nat.add_sub_cancel]

end A391049

/-! ## A391049.P16969189136737818758

`∪[A005385(n+1), A172057(n+1)]`
-/

namespace A391049.P16969189136737818758
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005385 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172057 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A391049.P16969189136737818758

namespace A391049

/-- `∪[A005385(n+1), A172057(n+1)]` -/
def P16969189136737818758.Spec : Prop :=
  ∀ n, (P16969189136737818758.a n : ℤ) = A391049 (n + 1)

end A391049

/-! ## A391049.P2174950156703227645

`∪[A014574(n+1), A077065(n+1)]+1`
-/

namespace A391049.P2174950156703227645
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014574 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077065 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n + 1

end

end A391049.P2174950156703227645

namespace A391049

/-- `∪[A014574(n+1), A077065(n+1)]+1` -/
def P2174950156703227645.Spec : Prop :=
  ∀ n, (P2174950156703227645.a n : ℤ) = A391049 (n + 1)

end A391049

/-! ## A391049.P5884584020694555951

`∩[A020617(n+1), A284837(n+1)]`
-/

namespace A391049.P5884584020694555951
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020617 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284837 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391049.P5884584020694555951

namespace A391049

/-- `∩[A020617(n+1), A284837(n+1)]` -/
def P5884584020694555951.Spec : Prop :=
  ∀ n, (P5884584020694555951.a n : ℤ) = A391049 (n + 1)

end A391049

/-! ## A391049.P14567511213751720021

`record[A008472(2*n+5)/A305831(3*n+4)]`
-/

namespace A391049.P14567511213751720021
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008472 (2 * n + 5) : ℚ) / (A305831 (3 * n + 4) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A391049.P14567511213751720021

namespace A391049

/-- `record[A008472(2*n+5)/A305831(3*n+4)]` -/
def P14567511213751720021.Spec : Prop :=
  ∀ n, P14567511213751720021.a n = (A391049 (n + 1) : ℚ)

end A391049

/-!
# A391051: Number of combinatorially distinct (n-1)-dimensional links in all edgewise triangulations of a simplex.

The programs for A391051, there is no canonical definition to state claims against.
-/

/-! ## A391051.P1334150286406915151

`A005041(A151075(n))`
-/

namespace A391051.P1334150286406915151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005041 (A151075 n).toNat

end

end A391051.P1334150286406915151

/-! ## A391051.P16813848690390994363

`A161205(A002310(n))`
-/

namespace A391051.P16813848690390994363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161205 (A002310 n).toNat

end

end A391051.P16813848690390994363

/-! ## A391051.P6509241546412708629

`A073188(A150877(n))`
-/

namespace A391051.P6509241546412708629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073188 (A150877 n).toNat

end

end A391051.P6509241546412708629

/-!
# A391052: a(n) = A065072(n) / A256043(n).

The programs for A391052, there is no canonical definition to state claims against.
-/

/-! ## A391052.P3788115652247529611

`A121428(A137745(n))`
-/

namespace A391052.P3788115652247529611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121428 (A137745 n).toNat

end

end A391052.P3788115652247529611

/-! ## A391052.P4367209267821732019

`A121428(A268815(n))`
-/

namespace A391052.P4367209267821732019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121428 (A268815 n).toNat

end

end A391052.P4367209267821732019

/-! ## A391052.P15937264310797231288

`A121432(A350249(n))`
-/

namespace A391052.P15937264310797231288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121432 (A350249 n).toNat

end

end A391052.P15937264310797231288

/-! ## A391052.P3498521954240328457

`A121432(A389249(n))`
-/

namespace A391052.P3498521954240328457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121432 (A389249 n).toNat

end

end A391052.P3498521954240328457

/-!
# A391054: a(n) = 9*n+1 if n is odd and (n + (n mod 4))/4 if n is even.

The programs for A391054, the canonical program `A391054.P1851313567108275429` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A391054 has offset 0).

The definition of A391054 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A391054.P2885178596816169804

`ogf((10x+x^2+18x^3+8x^5)/(1-x^2-x^4+x^6))`
-/

namespace A391054.P2885178596816169804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 10, 1, 18, 0, 8] [1, 0, -1, 0, -1, 0, 1] n

end

end A391054.P2885178596816169804

namespace A391054

/-- `ogf((10x+x^2+18x^3+8x^5)/(1-x^2-x^4+x^6))` -/
def P2885178596816169804.Spec : Prop :=
  ∀ n, P2885178596816169804.a n = A391054 n

end A391054

/-! ## A391054.P1851313567108275429

`a(n-2)+a(n-4)-a(n-6)` with `a(0)=0, a(1)=10, a(2)=1, a(3)=28, a(4)=1, a(5)=46`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A391054

/-- `a(n-2)+a(n-4)-a(n-6)` -/
def P1851313567108275429.Spec : Prop :=
  ∀ n, P1851313567108275429.a n = A391054 n

theorem P1851313567108275429.correct : P1851313567108275429.Spec := by
  intro n
  simp only [A391054]

end A391054

/-!
# A391056: Triangle read by rows: T(n,k) = 9*(q+1)*q/2 + (3*q+2)*(n mod 3) - 3*k + 3 for 1 <= k <= n, where q = floor(n/3).

The programs for A391056, there is no canonical definition to state claims against.
-/

/-! ## A391056.P6941272208131083698

`A064429(A367844(n))`
-/

namespace A391056.P6941272208131083698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064429 (A367844 n).toNat

end

end A391056.P6941272208131083698

/-!
# A391058: Expansion of g/(1 - x^2*g), where g = 1+x*g^3 is the g.f. of A001764.

The programs for A391058, there is no canonical definition to state claims against.
-/

/-! ## A391058.P15381394253613508022

`A101237(A380950(n))`
-/

namespace A391058.P15381394253613508022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101237 (A380950 n).toNat

end

end A391058.P15381394253613508022

/-! ## A391058.P14537358829093152364

`Δ[A219652(A318230(n))]`
-/

namespace A391058.P14537358829093152364
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219652 (A318230 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A391058.P14537358829093152364

/-!
# A391059: Expansion of g/(1 - x^3*g), where g = 1+x*g^3 is the g.f. of A001764.

The programs for A391059, there is no canonical definition to state claims against.
-/

/-! ## A391059.P5880078695186295441

`A066057(A279358(n))+A001764(n)`
-/

namespace A391059.P5880078695186295441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066057 (A279358 n).toNat + A001764 n

end

end A391059.P5880078695186295441

/-! ## A391059.P13954979716293065325

`A080405(A364739(n)+A002293(n))`
-/

namespace A391059.P13954979716293065325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080405 (A364739 n + A002293 n).toNat

end

end A391059.P13954979716293065325

/-!
# A391060: Expansion of g/(1 - x^2*g^2), where g = 1+x*g^3 is the g.f. of A001764.

The programs for A391060, there is no canonical definition to state claims against.
-/

/-! ## A391060.P8361057849574749052

`A241183(A294586(n))`
-/

namespace A391060.P8361057849574749052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241183 (A294586 n).toNat

end

end A391060.P8361057849574749052

/-! ## A391060.P9079396518653674452

`A319270(A007097(n))-n`
-/

namespace A391060.P9079396518653674452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319270 (A007097 n).toNat - (n : ℤ)

end

end A391060.P9079396518653674452

/-!
# A391061: Expansion of g/(1 - x^3*g^2), where g = 1+x*g^3 is the g.f. of A001764.

The programs for A391061, there is no canonical definition to state claims against.
-/

/-! ## A391061.P10702525966713877415

`A108161(A304969(n))`
-/

namespace A391061.P10702525966713877415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108161 (A304969 n).toNat

end

end A391061.P10702525966713877415

/-! ## A391061.P14983764334373729790

`A381856(A089022(n)-C(n+1, 2))`
-/

namespace A391061.P14983764334373729790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381856 (A089022 n - (Nat.choose (n + 1) 2 : ℤ)).toNat

end

end A391061.P14983764334373729790

/-!
# A391062: Expansion of g/(1 - x^3*g^3), where g = 1+x*g^3 is the g.f. of A001764.

The programs for A391062, there is no canonical definition to state claims against.
-/

/-! ## A391062.P7236652505166108690

`A001462(A326091(n))-n`
-/

namespace A391062.P7236652505166108690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001462 (A326091 n).toNat - (n : ℤ)

end

end A391062.P7236652505166108690

/-! ## A391062.P14025290997374633266

`A108954(or(1, A206226(n+1)))`
-/

namespace A391062.P14025290997374633266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108954 (Int.lor 1 (A206226 (n + 1))).toNat

end

end A391062.P14025290997374633266

/-!
# A391063: Expansion of g/(1 - x^3*g^5), where g = 1+x*g^3 is the g.f. of A001764.

The programs for A391063, there is no canonical definition to state claims against.
-/

/-! ## A391063.P13024522054362467890

`A252735(A191365(n))+A001764(n)`
-/

namespace A391063.P13024522054362467890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252735 (A191365 n).toNat + A001764 n

end

end A391063.P13024522054362467890

/-! ## A391063.P11147406842063873671

`A165640(A248883(n))`
-/

namespace A391063.P11147406842063873671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165640 (A248883 n).toNat

end

end A391063.P11147406842063873671

/-!
# A391064: Expansion of g/(1 - x^3*g^6), where g = 1+x*g^3 is the g.f. of A001764.

The programs for A391064, the canonical program `A391064.P1504483668838269020` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A391064 has offset 0).

The definition of A391064 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A391064.P1504483668838269020

`1/(2*n+1)*∑{#}[floor(n/3), (6*#+1)*C(3*n-3*#, n-3*#)]`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A391064

/-- `1/(2*n+1)*∑{#}[floor(n/3), (6*#+1)*C(3*n-3*#, n-3*#)]` -/
def P1504483668838269020.Spec : Prop :=
  ∀ n, P1504483668838269020.a n = (A391064 n : ℚ)

end A391064

/-! ## A391064.P712502374198710674

`A371632(A382542(n)+n)`
-/

namespace A391064.P712502374198710674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371632 (A382542 n + (n : ℤ)).toNat

end

end A391064.P712502374198710674

namespace A391064

/-- `A371632(A382542(n)+n)` -/
def P712502374198710674.Spec : Prop :=
  ∀ n, P712502374198710674.a n = A391064 n

end A391064

/-!
# A391065: Expansion of g/(1 - x^3*g^9), where g = 1+x*g^3 is the g.f. of A001764.

The programs for A391065, the canonical program `A391065.P14936398831443175368` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A391065 has offset 0).

The definition of A391065 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A391065.P14936398831443175368

`1/(3*n+1)*∑{#}[floor(n/3), (9*#+1)*C(3*n+1, n-3*#)]`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A391065

/-- `1/(3*n+1)*∑{#}[floor(n/3), (9*#+1)*C(3*n+1, n-3*#)]` -/
def P14936398831443175368.Spec : Prop :=
  ∀ n, P14936398831443175368.a n = (A391065 n : ℚ)

end A391065

/-! ## A391065.P2163615098330248486

`A376958(A005651(n))`
-/

namespace A391065.P2163615098330248486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376958 (A005651 n).toNat

end

end A391065.P2163615098330248486

namespace A391065

/-- `A376958(A005651(n))` -/
def P2163615098330248486.Spec : Prop :=
  ∀ n, P2163615098330248486.a n = A391065 n

end A391065

/-!
# A391066: a(n) is the last term of the map x -> A087207(x) starting with A019565(n) before reaching 1 or -1 if 1 is never reached.

The programs for A391066, there is no canonical definition to state claims against.
-/

/-! ## A391066.P7749010815232889859

`2^A391067(n+1)`
-/

namespace A391066.P7749010815232889859
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A391067 (n + 1) : ℤ)

end

end A391066.P7749010815232889859

/-! ## A391066.P9989732200701136592

`A000079(A391067(n+1))`
-/

namespace A391066.P9989732200701136592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A391067 (n + 1)).toNat

end

end A391066.P9989732200701136592

/-! ## A391066.P18287426261966998640

`A011782(A391067(n+1)+1)`
-/

namespace A391066.P18287426261966998640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (A391067 (n + 1) + 1).toNat

end

end A391066.P18287426261966998640

/-!
# A391067: a(n) is the exponent of 2 of the last term of the map x -> A087207(x) before reaching 1 when starting with A019565(n) or -1 if 1 is never reached.

The programs for A391067, there is no canonical definition to state claims against.
-/

/-! ## A391067.P17426871347362165647

`A007814(A391066(n+1))`
-/

namespace A391067.P17426871347362165647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A391066 (n + 1)).toNat

end

end A391067.P17426871347362165647

/-! ## A391067.P13354605435852638067

`log2(A391066(n+1))`
-/

namespace A391067.P13354605435852638067
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A391066 (n + 1) : ℝ)

end

end A391067.P13354605435852638067

/-! ## A391067.P6178462988671357811

`A000120(A391066(n+1)-1)`
-/

namespace A391067.P6178462988671357811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A391066 (n + 1) - 1).toNat

end

end A391067.P6178462988671357811

/-! ## A391067.P17316826229343390715

`A255559(A391066(n+1)-1)`
-/

namespace A391067.P17316826229343390715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255559 (A391066 (n + 1) - 1).toNat

end

end A391067.P17316826229343390715

/-! ## A391067.P2457176268022522140

`A035143(A391066(n+1)/2)`
-/

namespace A391067.P2457176268022522140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035143 (SequenceMachineLib.roundAway ((A391066 (n + 1) : ℚ) / 2)).toNat

end

end A391067.P2457176268022522140

/-!
# A391068: Triangle read by rows: T(n,k) = Sum_{j=0..k} (-1)^j * binomial(k,j) * (2-j)^n.

The programs for A391068, the canonical program `A391068.P8859133773593688533` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A391068 has offset 0).

The definition of A391068 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2190 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A391068.P8859133773593688533

`(T(n-1,k-1)-T(n-1,k))*col(n)+2*T(n-1,k)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A391068

/-- `(T(n-1,k-1)-T(n-1,k))*col(n)+2*T(n-1,k)` -/
def P8859133773593688533.Spec : Prop :=
  ∀ n, P8859133773593688533.a n = A391068 n

theorem P8859133773593688533.correct : P8859133773593688533.Spec := by
  intro n
  simp only [A391068]

end A391068

/-! ## A391068.P4510152233187625070

`2*T(n-1,k)-(T(n-1,k)-T(n-1,k-1))*col(n)` with `a(0)=1`
-/

namespace A391068.P4510152233187625070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * SequenceMachineLib.triUp a n - (SequenceMachineLib.triUp a n - SequenceMachineLib.triUpLeft a n) * (SequenceMachineLib.triCol n : ℤ)

end

end A391068.P4510152233187625070

namespace A391068

/-- `2*T(n-1,k)-(T(n-1,k)-T(n-1,k-1))*col(n)` -/
def P4510152233187625070.Spec : Prop :=
  ∀ n, P4510152233187625070.a n = A391068 n

end A391068

/-!
# A391072: Numbers of twin prime candidates in primorial interval of prime(n)# after elimination by prime factor prime(n-1).

The programs for A391072, there is no canonical definition to state claims against.
-/

/-! ## A391072.P5485986553536260669

`∑{p}[A100069(n)², #]`
-/

namespace A391072.P5485986553536260669
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100069 n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A391072.P5485986553536260669

/-!
# A391073: a(n) is the number of nondegenerate triangles (n, n + d, n + 2*d) with integer area for some nonnegative integers d.

The programs for A391073, there is no canonical definition to state claims against.
-/

/-! ## A391073.P12391250945735768608

`A051159(A005117(n+1))%A307372(3*n+1)`
-/

namespace A391073.P12391250945735768608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A051159 (A005117 (n + 1)).toNat) (A307372 (3 * n + 1))

end

end A391073.P12391250945735768608

/-! ## A391073.P2606451306296049565

`A026741(A214214(2*n+1)%A307372(3*n+1))`
-/

namespace A391073.P2606451306296049565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (Int.tmod (A214214 (2 * n + 1)) (A307372 (3 * n + 1))).toNat

end

end A391073.P2606451306296049565

/-! ## A391073.P17605769843323022090

`A353859(gcd(A126694(n), A156234(n)))`
-/

namespace A391073.P17605769843323022090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353859 (Int.gcd (A126694 n) (A156234 n))

end

end A391073.P17605769843323022090

/-! ## A391073.P735115505088306317

`A194446(A000032(n))%A379288(n+1)`
-/

namespace A391073.P735115505088306317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A194446 (A000032 n).toNat) (A379288 (n + 1))

end

end A391073.P735115505088306317

/-! ## A391073.P4745975991920746796

`A357138(A357151(n)%A357156(n+3))`
-/

namespace A391073.P4745975991920746796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357138 (Int.tmod (A357151 n) (A357156 (n + 3))).toNat

end

end A391073.P4745975991920746796

/-!
# A391074: a(n) is the number of nonuniform divisors of n.

The programs for A391074, the canonical program `A391074.P7066598171140740427` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A391074 has offset 1).

The definition of A391074 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A327527, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A391074.P7066598171140740427

`A000005(n+1)-A327527(n+1)`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A391074

/-- `A000005(n+1)-A327527(n+1)` -/
def P7066598171140740427.Spec : Prop :=
  ∀ n, P7066598171140740427.a n = A391074 (n + 1)

theorem P7066598171140740427.correct : P7066598171140740427.Spec := by
  intro n
  simp only [A391074, Nat.add_sub_cancel]

end A391074

/-! ## A391074.P8613656063803786599

`A000005(n+1)-A034444(n+1)-A368251(n+1)`
-/

namespace A391074.P8613656063803786599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) - A034444 (n + 1) - A368251 (n + 1)

end

end A391074.P8613656063803786599

namespace A391074

/-- `A000005(n+1)-A034444(n+1)-A368251(n+1)` -/
def P8613656063803786599.Spec : Prop :=
  ∀ n, P8613656063803786599.a n = A391074 (n + 1)

theorem P8613656063803786599.correct : P8613656063803786599.Spec := by
  intro n
  simp only [A391074, Nat.add_sub_cancel, A391074.P8613656063803786599.a, A391074.P7066598171140740427.a, A000005, A000005.P16091521709108585461.a, A034444, A034444.P6574915864346323298.a, A327527, A327527.P10875965028528454969.f1, A327527.P10875965028528454969.a, A368251, A368251.P3199248697924659099.a, A001221, A001221.P14816172234621668833.f1, A001221.P14816172234621668833.a, A032741, A032741.P7902726259890016945.f1, A032741.P7902726259890016945.a, A384667, A384667.P10362112052039593468.a, A010055, A010055.P13257247064813316035.f1, A010055.P13257247064813316035.a, A051731, A051731.P11318043630102858095.a, A354353, A354353.P7138683096085960204.a, A000007, A000007.P6599383543502402472.a, A048158, A048158.P1757030368331788429.a, A181819, A181819.P15090535388863431201.a, A268340, A268340.P758938358263668477.f1, A268340.P758938358263668477.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A391074

/-! ## A391074.P1393866624737382644

`A048105(n+1)-A368251(n+1)`
-/

namespace A391074.P1393866624737382644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048105 (n + 1) - A368251 (n + 1)

end

end A391074.P1393866624737382644

namespace A391074

/-- `A048105(n+1)-A368251(n+1)` -/
def P1393866624737382644.Spec : Prop :=
  ∀ n, P1393866624737382644.a n = A391074 (n + 1)

theorem P1393866624737382644.correct : P1393866624737382644.Spec := by
  intro n
  simp only [A391074, Nat.add_sub_cancel, A391074.P1393866624737382644.a, A391074.P7066598171140740427.a, A000005, A000005.P16091521709108585461.a, A048105, A048105.P14513846835403787716.a, A327527, A327527.P10875965028528454969.f1, A327527.P10875965028528454969.a, A368251, A368251.P3199248697924659099.a, A032741, A032741.P7902726259890016945.f1, A032741.P7902726259890016945.a, A034444, A034444.P6574915864346323298.a, A384667, A384667.P10362112052039593468.a, A001221, A001221.P14816172234621668833.f1, A001221.P14816172234621668833.a, A010055, A010055.P13257247064813316035.f1, A010055.P13257247064813316035.a, A051731, A051731.P11318043630102858095.a, A354353, A354353.P7138683096085960204.a, A000007, A000007.P6599383543502402472.a, A048158, A048158.P1757030368331788429.a, A181819, A181819.P15090535388863431201.a, A268340, A268340.P758938358263668477.f1, A268340.P758938358263668477.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A391074

/-! ## A391074.P14596465193868645818

`A387633(n+1)%(n+1)-A368251(n+1)`
-/

namespace A391074.P14596465193868645818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A387633 (n + 1)) (n + 1 : ℤ) - A368251 (n + 1)

end

end A391074.P14596465193868645818

namespace A391074

/-- `A387633(n+1)%(n+1)-A368251(n+1)` -/
def P14596465193868645818.Spec : Prop :=
  ∀ n, P14596465193868645818.a n = A391074 (n + 1)

end A391074

/-! ## A391074.P2194511726665942537

`A032742(A062011(n+1))-A327527(n+1)`
-/

namespace A391074.P2194511726665942537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (A062011 (n + 1)).toNat - A327527 (n + 1)

end

end A391074.P2194511726665942537

namespace A391074

/-- `A032742(A062011(n+1))-A327527(n+1)` -/
def P2194511726665942537.Spec : Prop :=
  ∀ n, P2194511726665942537.a n = A391074 (n + 1)

end A391074

/-! ## A391074.P13544576703170069909

`A001227(A003961(n+1))-A327527(n+1)`
-/

namespace A391074.P13544576703170069909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001227 (A003961 (n + 1)).toNat - A327527 (n + 1)

end

end A391074.P13544576703170069909

namespace A391074

/-- `A001227(A003961(n+1))-A327527(n+1)` -/
def P13544576703170069909.Spec : Prop :=
  ∀ n, P13544576703170069909.a n = A391074 (n + 1)

end A391074

/-! ## A391074.P17596515890424425117

`∑{d}[A357852(n+1), A363131(#)]`
-/

namespace A391074.P17596515890424425117
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357852 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A363131 d

end

end A391074.P17596515890424425117

namespace A391074

/-- `∑{d}[A357852(n+1), A363131(#)]` -/
def P17596515890424425117.Spec : Prop :=
  ∀ n, P17596515890424425117.a n = A391074 (n + 1)

end A391074

/-! ## A391074.P18135255821805505337

`∑{d}[n+1, A205303(#)*A363131((n+1)/#)]`
-/

namespace A391074.P18135255821805505337
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A205303 d * A363131 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A391074.P18135255821805505337

namespace A391074

/-- `∑{d}[n+1, A205303(#)*A363131((n+1)/#)]` -/
def P18135255821805505337.Spec : Prop :=
  ∀ n, P18135255821805505337.a n = A391074 (n + 1)

end A391074

/-! ## A391074.P3286435272513599165

`A391713(A094681(A094681(n+1)))`
-/

namespace A391074.P3286435272513599165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391713 (A094681 (A094681 (n + 1)).toNat).toNat

end

end A391074.P3286435272513599165

namespace A391074

/-- `A391713(A094681(A094681(n+1)))` -/
def P3286435272513599165.Spec : Prop :=
  ∀ n, P3286435272513599165.a n = A391074 (n + 1)

end A391074

/-! ## A391074.P13562839645393754546

`and(A089999(n), A391713(n+1))`
-/

namespace A391074.P13562839645393754546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A089999 n) (A391713 (n + 1))

end

end A391074.P13562839645393754546

namespace A391074

/-- `and(A089999(n), A391713(n+1))` -/
def P13562839645393754546.Spec : Prop :=
  ∀ n, P13562839645393754546.a n = A391074 (n + 1)

end A391074

/-!
# A391075: a(n) = 25*n+1 if n is odd and floor((n+6)/8) if n is even.

The programs for A391075, the canonical program `A391075.P17698031144604397816` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A391075 has offset 0).

The definition of A391075 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A391075.P16177361912424513709

`ogf((26x+x^2+50x^3+50x^5+50x^7+24x^9)/(1-x^2-x^8+x^10))`
-/

namespace A391075.P16177361912424513709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 26, 1, 50, 0, 50, 0, 50, 0, 24] [1, 0, -1, 0, 0, 0, 0, 0, -1, 0, 1] n

end

end A391075.P16177361912424513709

namespace A391075

/-- `ogf((26x+x^2+50x^3+50x^5+50x^7+24x^9)/(1-x^2-x^8+x^10))` -/
def P16177361912424513709.Spec : Prop :=
  ∀ n, P16177361912424513709.a n = A391075 n

end A391075

/-! ## A391075.P17698031144604397816

`a(n-2)+a(n-8)-a(n-10)` with `a(0)=0, a(1)=26, a(2)=1, a(3)=76, a(4)=1, a(5)=126, a(6)=1, a(7)=176, a(8)=1, a(9)=226`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A391075

/-- `a(n-2)+a(n-8)-a(n-10)` -/
def P17698031144604397816.Spec : Prop :=
  ∀ n, P17698031144604397816.a n = A391075 n

theorem P17698031144604397816.correct : P17698031144604397816.Spec := by
  intro n
  simp only [A391075]

end A391075

/-!
# A391078: Primes that are (product + sum) of a sequence of consecutive primes.

The programs for A391078, there is no canonical definition to state claims against.
-/

/-! ## A391078.P3542258633249042891

`∩[A066725(n+1), A095779(n+1)]`
-/

namespace A391078.P3542258633249042891
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066725 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095779 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391078.P3542258633249042891

/-!
# A391079: Expansion of g^2/(1 - x^3*g^2), where g = 1+x*g^4 is the g.f. of A002293.

The programs for A391079, there is no canonical definition to state claims against.
-/

/-! ## A391079.P10872114284978554716

`record[A325039(abs(A079006(n)))]`
-/

namespace A391079.P10872114284978554716
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325039 |A079006 n|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A391079.P10872114284978554716

/-!
# A391080: Expansion of g^2/(1 - x^2*g^3), where g = 1+x*g^4 is the g.f. of A002293.

The programs for A391080, there is no canonical definition to state claims against.
-/

/-! ## A391080.P12509968505174126845

`A375114((n+3)^n)`
-/

namespace A391080.P12509968505174126845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375114 ((n + 3) ^ n)

end

end A391080.P12509968505174126845

/-!
# A391081: Expansion of g^2/(1 - x^3*g^3), where g = 1+x*g^4 is the g.f. of A002293.

The programs for A391081, there is no canonical definition to state claims against.
-/

/-! ## A391081.P3200120349352219119

`A391079(n)+A376989(A033995(n))`
-/

namespace A391081.P3200120349352219119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391079 n + A376989 (A033995 n).toNat

end

end A391081.P3200120349352219119

/-! ## A391081.P7898637753053309806

`A391083(n)-∑[A376989(A033995(n))]`
-/

namespace A391081.P7898637753053309806
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376989 (A033995 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391083 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A391081.P7898637753053309806

/-!
# A391082: Expansion of g^2/(1 - x^2*g^4), where g = 1+x*g^4 is the g.f. of A002293.

The programs for A391082, there is no canonical definition to state claims against.
-/

/-! ## A391082.P12442829781755750892

`A115065(A262280(n))`
-/

namespace A391082.P12442829781755750892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115065 (A262280 n).toNat

end

end A391082.P12442829781755750892

/-!
# A391083: Expansion of g^2/(1 - x^3*g^4), where g = 1+x*g^4 is the g.f. of A002293.

The programs for A391083, there is no canonical definition to state claims against.
-/

/-! ## A391083.P9166888040972493715

`A389653(n)+A219023(A048143(n))`
-/

namespace A391083.P9166888040972493715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389653 n + A219023 (A048143 n).toNat

end

end A391083.P9166888040972493715

/-!
# A391084: Expansion of g^2/(1 - x^2*g^6), where g = 1+x*g^4 is the g.f. of A002293.

The programs for A391084, the canonical program `A391084.P5274828509348224964` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A391084 has offset 0).

The definition of A391084 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A391084.P5274828509348224964

`1/(n+1)*∑{#}[n, (-1)^#*(#+1)*C(4*n-#+2, n-#)]`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A391084

/-- `1/(n+1)*∑{#}[n, (-1)^#*(#+1)*C(4*n-#+2, n-#)]` -/
def P5274828509348224964.Spec : Prop :=
  ∀ n, P5274828509348224964.a n = (A391084 n : ℚ)

end A391084

/-!
# A391085: Exponential abundant numbers that are not exponential unitary abundant.

The programs for A391085, there is no canonical definition to state claims against.
-/

/-! ## A391085.P13863257120206202312

`∩[A129575(n+1), A391090(n+1)]`
-/

namespace A391085.P13863257120206202312
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129575 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391090 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391085.P13863257120206202312

/-! ## A391085.P2278502567711038936

`∩[A129575(n+1), A389330(n+1)]`
-/

namespace A391085.P2278502567711038936
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129575 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389330 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391085.P2278502567711038936

/-! ## A391085.P17562843823929896818

`∩[A321206(n+1), A389330(n+1)]`
-/

namespace A391085.P17562843823929896818
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321206 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389330 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391085.P17562843823929896818

/-! ## A391085.P2718130831043183640

`∩[A321206(n+1), A391090(n+1)]`
-/

namespace A391085.P2718130831043183640
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321206 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391090 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391085.P2718130831043183640

/-! ## A391085.P12540186585535126142

`filter[A391090(n+1), A379959(#)]`
-/

namespace A391085.P12540186585535126142
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391090 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A379959 (f1 j).toNat = 1) n)

end

end A391085.P12540186585535126142

/-!
# A391086: Primitive exponential abundant numbers that are not primitive exponential unitary abundant.

The programs for A391086, there is no canonical definition to state claims against.
-/

/-! ## A391086.P8786934445328474759

`∩[A328136(n+1), A391091(n+1)]`
-/

namespace A391086.P8786934445328474759
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328136 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391091 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391086.P8786934445328474759

/-! ## A391086.P6905479078155760584

`∩[A328136(n+1), A391085(n+1)]`
-/

namespace A391086.P6905479078155760584
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328136 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391085 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391086.P6905479078155760584

/-! ## A391086.P13472787566586124861

`∩[A391085(n+1), A391087(n+1)]`
-/

namespace A391086.P13472787566586124861
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391085 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391087 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391086.P13472787566586124861

/-! ## A391086.P12087722389180365542

`∩[A391085(n+1), A391091(n+1)]`
-/

namespace A391086.P12087722389180365542
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391085 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391091 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391086.P12087722389180365542

/-! ## A391086.P13595851115518189073

`∩[A391085(n+1), A391143(n+1)]`
-/

namespace A391086.P13595851115518189073
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391085 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391143 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391086.P13595851115518189073

/-! ## A391086.P3222402562435434677

`∩[A328136(n+1), A391090(n+1)]`
-/

namespace A391086.P3222402562435434677
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328136 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391090 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391086.P3222402562435434677

/-!
# A391087: Primitive exponential Zumkeller numbers: powerful numbers whose exponential divisors can be partitioned into two disjoint subsets of equal sum.

The programs for A391087, there is no canonical definition to state claims against.
-/

/-! ## A391087.P17254316422678632674

`∪[A391089(n+1), A391091(n+1)]`
-/

namespace A391087.P17254316422678632674
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391089 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391091 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A391087.P17254316422678632674

/-! ## A391087.P6616109239889323583

`∩[A001694(n+1), A335218(n+1)]`
-/

namespace A391087.P6616109239889323583
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001694 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335218 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391087.P6616109239889323583

/-! ## A391087.P9975308262273266476

`∩[A192636(n+1), A335218(n+1)]`
-/

namespace A391087.P9975308262273266476
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192636 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335218 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391087.P9975308262273266476

/-! ## A391087.P5283118353232926278

`∩[A286708(n+1), A335218(n+1)]`
-/

namespace A391087.P5283118353232926278
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286708 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335218 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391087.P5283118353232926278

/-! ## A391087.P9718328734049796231

`∩[A325240(n+1), A335218(n+1)]`
-/

namespace A391087.P9718328734049796231
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325240 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335218 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391087.P9718328734049796231

/-! ## A391087.P2986727943529783822

`∩[A335218(n+1), A335851(n+1)]`
-/

namespace A391087.P2986727943529783822
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335218 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335851 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391087.P2986727943529783822

/-! ## A391087.P9624026268709778047

`∩[A335218(n+1), A363169(n+1)]`
-/

namespace A391087.P9624026268709778047
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335218 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363169 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391087.P9624026268709778047

/-! ## A391087.P3730111644735972737

`∩[A335218(n+1), A363216(n+1)]`
-/

namespace A391087.P3730111644735972737
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335218 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363216 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391087.P3730111644735972737

/-! ## A391087.P17677639979524437482

`∩[A335218(n+1), A376172(n+1)]`
-/

namespace A391087.P17677639979524437482
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335218 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376172 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391087.P17677639979524437482

/-! ## A391087.P6514615605426307129

`∩[A335218(n+1), A376217(n+1)]`
-/

namespace A391087.P6514615605426307129
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335218 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376217 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391087.P6514615605426307129

/-! ## A391087.P12168013675914288316

`∩[A335218(n+1), A387256(n+1)]`
-/

namespace A391087.P12168013675914288316
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335218 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387256 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391087.P12168013675914288316

/-! ## A391087.P12049475600299307883

`∩[A335218(n+1), A390010(n+1)]`
-/

namespace A391087.P12049475600299307883
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335218 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390010 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391087.P12049475600299307883

/-! ## A391087.P3796620917636587191

`∩[A335218(n+1), A391139(n+1)]`
-/

namespace A391087.P3796620917636587191
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335218 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391139 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391087.P3796620917636587191

/-!
# A391088: Exponential unitary Zumkeller numbers: numbers whose exponential unitary divisors can be partitioned into two disjoint subsets of equal sum.

The programs for A391088, there is no canonical definition to state claims against.
-/

/-! ## A391088.P11821624284877096179

`filter[A335218(1+n), A307430(#)]`
-/

namespace A391088.P11821624284877096179
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335218 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A307430 (f1 j).toNat = 1) n)

end

end A391088.P11821624284877096179

/-! ## A391088.P17957947468047259181

`filter[A335218(1+n), A370598(#)]`
-/

namespace A391088.P17957947468047259181
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335218 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A370598 (f1 j).toNat = 1) n)

end

end A391088.P17957947468047259181

/-! ## A391088.P14328278677901572923

`∪[A074853(n+1), A321145(n+1)]`
-/

namespace A391088.P14328278677901572923
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074853 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321145 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A391088.P14328278677901572923

/-! ## A391088.P4563490721761692141

`∪[A162143(n+1), A321145(n+1)]`
-/

namespace A391088.P4563490721761692141
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162143 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321145 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A391088.P4563490721761692141

/-! ## A391088.P10269815800653238740

`∪[A321145(n+1), A336680(n+1)]`
-/

namespace A391088.P10269815800653238740
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321145 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336680 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A391088.P10269815800653238740

/-!
# A391089: Primitive exponential unitary Zumkeller numbers: powerful numbers whose exponential unitary divisors can be partitioned into two disjoint subsets of equal sum.

The programs for A391089, there is no canonical definition to state claims against.
-/

/-! ## A391089.P1396336948170798650

`∩[A001694(n+1), A391088(n+1)]`
-/

namespace A391089.P1396336948170798650
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001694 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391088 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391089.P1396336948170798650

/-! ## A391089.P11155052624979030340

`∩[A192636(n+1), A391088(n+1)]`
-/

namespace A391089.P11155052624979030340
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192636 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391088 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391089.P11155052624979030340

/-! ## A391089.P17618451545477867243

`∩[A286708(n+1), A391088(n+1)]`
-/

namespace A391089.P17618451545477867243
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286708 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391088 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391089.P17618451545477867243

/-! ## A391089.P3937294557556294461

`∩[A325240(n+1), A391088(n+1)]`
-/

namespace A391089.P3937294557556294461
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325240 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391088 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391089.P3937294557556294461

/-! ## A391089.P10683546547108200629

`∩[A335851(n+1), A391088(n+1)]`
-/

namespace A391089.P10683546547108200629
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335851 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391088 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391089.P10683546547108200629

/-! ## A391089.P10726364056774281669

`∩[A363169(n+1), A391088(n+1)]`
-/

namespace A391089.P10726364056774281669
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363169 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391088 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391089.P10726364056774281669

/-! ## A391089.P16083365047982216187

`∩[A363216(n+1), A391088(n+1)]`
-/

namespace A391089.P16083365047982216187
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363216 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391088 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391089.P16083365047982216187

/-! ## A391089.P7656209855047683414

`∩[A376172(n+1), A391088(n+1)]`
-/

namespace A391089.P7656209855047683414
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376172 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391088 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391089.P7656209855047683414

/-! ## A391089.P2829526330076354114

`∩[A376217(n+1), A391088(n+1)]`
-/

namespace A391089.P2829526330076354114
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376217 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391088 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391089.P2829526330076354114

/-! ## A391089.P1716876842829337365

`∩[A387256(n+1), A391088(n+1)]`
-/

namespace A391089.P1716876842829337365
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387256 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391088 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391089.P1716876842829337365

/-!
# A391090: Exponential Zumkeller numbers that are not exponential unitary Zumkeller numbers.

The programs for A391090, there is no canonical definition to state claims against.
-/

/-! ## A391090.P3170414823946906845

`∪[A322858(n+1), A391085(n+1)]`
-/

namespace A391090.P3170414823946906845
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322858 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391085 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A391090.P3170414823946906845

/-! ## A391090.P3896104160308300302

`∩[A318100(n+1), A389330(n+1)]`
-/

namespace A391090.P3896104160308300302
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318100 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389330 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391090.P3896104160308300302

/-!
# A391091: Primitive exponential Zumkeller numbers that are not primitive exponential unitary Zumkeller numbers.

The programs for A391091, there is no canonical definition to state claims against.
-/

/-! ## A391091.P7336073289218408378

`∩[A391087(n+1), A391090(n+1)]`
-/

namespace A391091.P7336073289218408378
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391087 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391090 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391091.P7336073289218408378

/-! ## A391091.P3245577798510956976

`∩[A391090(n+1), A391143(n+1)]`
-/

namespace A391091.P3245577798510956976
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391090 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391143 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391091.P3245577798510956976

/-!
# A391092: a(n) is the number of 2 X 2 matrices with elements 1..n where at least one row, at least one column and at least one of the two diagonals is strictly increasing.

The programs for A391092, the canonical program `A391092.P5526526414319194207` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A391092 has offset 0).

The definition of A391092 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A391092.P5255988735685018282

`ogf((2x^2+9x^3+x^4)/(1-5x+10x^2-10x^3+5x^4-x^5))`
-/

namespace A391092.P5255988735685018282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 0, 2, 9, 1] [1, -5, 10, -10, 5, -1] n

end

end A391092.P5255988735685018282

namespace A391092

/-- `ogf((2x^2+9x^3+x^4)/(1-5x+10x^2-10x^3+5x^4-x^5))` -/
def P5255988735685018282.Spec : Prop :=
  ∀ n, P5255988735685018282.a n = A391092 n

end A391092

/-! ## A391092.P8981712859271708864

`n*(n²*(3*n-5)+2)/6`
-/

namespace A391092.P8981712859271708864
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) * ((n ^ 2 : ℤ) * ((3 * n : ℤ) - 5) + 2) : ℚ) / 6

end

end A391092.P8981712859271708864

namespace A391092

/-- `n*(n²*(3*n-5)+2)/6` -/
def P8981712859271708864.Spec : Prop :=
  ∀ n, P8981712859271708864.a n = (A391092 n : ℚ)

theorem P8981712859271708864.correct : P8981712859271708864.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 | 4 =>
      simp [A391092, Nat.add_sub_cancel, A391092.P8981712859271708864.a, A391092.P5526526414319194207.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 5 =>
      have h1 := ih (m + 4) (by omega)
      have h2 := ih (m + 3) (by omega)
      have h3 := ih (m + 2) (by omega)
      have h4 := ih (m + 1) (by omega)
      have h5 := ih m (by omega)
      simp only [A391092, Nat.add_sub_cancel, A391092.P8981712859271708864.a, A391092.P5526526414319194207.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 h5 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 5 - 1 = m + 4 by omega, show m + 5 - 2 = m + 3 by omega, show m + 5 - 3 = m + 2 by omega, show m + 5 - 4 = m + 1 by omega, show m + 5 - 5 = m by omega, show m + 4 < m + 5 by omega, show m + 3 < m + 5 by omega, show m + 2 < m + 5 by omega, show m + 1 < m + 5 by omega, show m < m + 5 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 h5 ⊢
      rw [← h1, ← h2, ← h3, ← h4, ← h5]
      first | ring1 | ring_nf | (field_simp; (first | ring1 | ring_nf)) | omega | (push_cast; ring_nf) | nlinarith

end A391092

/-! ## A391092.P5526526414319194207

`5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` with `a(0)=0, a(1)=0, a(2)=2, a(3)=19, a(4)=76`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A391092

/-- `5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` -/
def P5526526414319194207.Spec : Prop :=
  ∀ n, P5526526414319194207.a n = A391092 n

theorem P5526526414319194207.correct : P5526526414319194207.Spec := by
  intro n
  simp only [A391092]

end A391092

/-! ## A391092.P5080354975201225224

`A100855(n)-∑[n²]`
-/

namespace A391092.P5080354975201225224
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100855 n - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A391092.P5080354975201225224

namespace A391092

/-- `A100855(n)-∑[n²]` -/
def P5080354975201225224.Spec : Prop :=
  ∀ n, P5080354975201225224.a n = A391092 n

end A391092

/-! ## A391092.P10175695029527172679

`A027441(n)-A004068(n)`
-/

namespace A391092.P10175695029527172679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027441 n - A004068 n

end

end A391092.P10175695029527172679

namespace A391092

/-- `A027441(n)-A004068(n)` -/
def P10175695029527172679.Spec : Prop :=
  ∀ n, P10175695029527172679.a n = A391092 n

end A391092

/-! ## A391092.P2791113628419961090

`A037270(n)-A002413(n)`
-/

namespace A391092.P2791113628419961090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037270 n - A002413 n

end

end A391092.P2791113628419961090

namespace A391092

/-- `A037270(n)-A002413(n)` -/
def P2791113628419961090.Spec : Prop :=
  ∀ n, P2791113628419961090.a n = A391092 n

end A391092

/-! ## A391092.P16037090608707777729

`A062392(n)-A004467(n)`
-/

namespace A391092.P16037090608707777729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062392 n - A004467 n

end

end A391092.P16037090608707777729

namespace A391092

/-- `A062392(n)-A004467(n)` -/
def P16037090608707777729.Spec : Prop :=
  ∀ n, P16037090608707777729.a n = A391092 n

end A391092

/-! ## A391092.P4814334939620849970

`A103220(n)-A004188(n)`
-/

namespace A391092.P4814334939620849970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103220 n - A004188 n

end

end A391092.P4814334939620849970

namespace A391092

/-- `A103220(n)-A004188(n)` -/
def P4814334939620849970.Spec : Prop :=
  ∀ n, P4814334939620849970.a n = A391092 n

end A391092

/-! ## A391092.P11700892227627790301

`A101375(n)-A006527(n)`
-/

namespace A391092.P11700892227627790301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101375 n - A006527 n

end

end A391092.P11700892227627790301

namespace A391092

/-- `A101375(n)-A006527(n)` -/
def P11700892227627790301.Spec : Prop :=
  ∀ n, P11700892227627790301.a n = A391092 n

end A391092

/-! ## A391092.P17366282092963481739

`A071252(n)-A051925(n)`
-/

namespace A391092.P17366282092963481739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071252 n - A051925 n

end

end A391092.P17366282092963481739

namespace A391092

/-- `A071252(n)-A051925(n)` -/
def P17366282092963481739.Spec : Prop :=
  ∀ n, P17366282092963481739.a n = A391092 n

end A391092

/-! ## A391092.P15715605931316571349

`A212560(n)-A004126(n)`
-/

namespace A391092.P15715605931316571349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212560 n - A004126 n

end

end A391092.P15715605931316571349

namespace A391092

/-- `A212560(n)-A004126(n)` -/
def P15715605931316571349.Spec : Prop :=
  ∀ n, P15715605931316571349.a n = A391092 n

end A391092

/-! ## A391092.P13745581400626062489

`A220212(n)-A007588(n)`
-/

namespace A391092.P13745581400626062489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220212 n - A007588 n

end

end A391092.P13745581400626062489

namespace A391092

/-- `A220212(n)-A007588(n)` -/
def P13745581400626062489.Spec : Prop :=
  ∀ n, P13745581400626062489.a n = A391092 n

end A391092

/-! ## A391092.P17933796411623104256

`A101374(n)-A203552(n)`
-/

namespace A391092.P17933796411623104256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101374 n - A203552 n

end

end A391092.P17933796411623104256

namespace A391092

/-- `A101374(n)-A203552(n)` -/
def P17933796411623104256.Spec : Prop :=
  ∀ n, P17933796411623104256.a n = A391092 n

end A391092

/-! ## A391092.P1644992742869086336

`A110450(n)-A215646(n)`
-/

namespace A391092.P1644992742869086336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110450 n - A215646 n

end

end A391092.P1644992742869086336

namespace A391092

/-- `A110450(n)-A215646(n)` -/
def P1644992742869086336.Spec : Prop :=
  ∀ n, P1644992742869086336.a n = A391092 n

end A391092

/-! ## A391092.P16534121729274872037

`A212523(n)-A135503(n)`
-/

namespace A391092.P16534121729274872037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212523 n - A135503 n

end

end A391092.P16534121729274872037

namespace A391092

/-- `A212523(n)-A135503(n)` -/
def P16534121729274872037.Spec : Prop :=
  ∀ n, P16534121729274872037.a n = A391092 n

end A391092

/-! ## A391092.P9743892030021740005

`A212090(n)-A264854(n)`
-/

namespace A391092.P9743892030021740005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212090 n - A264854 n

end

end A391092.P9743892030021740005

namespace A391092

/-- `A212090(n)-A264854(n)` -/
def P9743892030021740005.Spec : Prop :=
  ∀ n, P9743892030021740005.a n = A391092 n

end A391092

/-! ## A391092.P7816818621152675068

`A389090(n)-A101375(n)`
-/

namespace A391092.P7816818621152675068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389090 n - A101375 n

end

end A391092.P7816818621152675068

namespace A391092

/-- `A389090(n)-A101375(n)` -/
def P7816818621152675068.Spec : Prop :=
  ∀ n, P7816818621152675068.a n = A391092 n

end A391092

/-! ## A391092.P10598392505039628812

`A366478(n)-A228394(n+1)`
-/

namespace A391092.P10598392505039628812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366478 n - A228394 (n + 1)

end

end A391092.P10598392505039628812

namespace A391092

/-- `A366478(n)-A228394(n+1)` -/
def P10598392505039628812.Spec : Prop :=
  ∀ n, P10598392505039628812.a n = A391092 n

end A391092

/-! ## A391092.P1146941890798723363

`A292058(n+1)-A092966(n+1)`
-/

namespace A391092.P1146941890798723363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292058 (n + 1) - A092966 (n + 1)

end

end A391092.P1146941890798723363

namespace A391092

/-- `A292058(n+1)-A092966(n+1)` -/
def P1146941890798723363.Spec : Prop :=
  ∀ n, P1146941890798723363.a n = A391092 n

end A391092

/-! ## A391092.P3966893868435923742

`∑{#}[n-1, #*(n²-(#+1))]`
-/

namespace A391092.P3966893868435923742
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1).toNat, (k : ℤ) * ((n ^ 2 : ℤ) - (k + 1 : ℤ))

end

end A391092.P3966893868435923742

namespace A391092

/-- `∑{#}[n-1, #*(n²-(#+1))]` -/
def P3966893868435923742.Spec : Prop :=
  ∀ n, P3966893868435923742.a n = A391092 n

end A391092

/-!
# A391094: a(n) is the number of closed binary operations on a set of n labeled elements with empty center.

The programs for A391094, the canonical program `A391094.P14433475328138324240` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A391094 has offset 0).

The definition of A391094 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A391094.P14433475328138324240

`∑{#}[n, (-1)^#*C(n, #)*n^(C(#+1, 2)+n*(n-#))]`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A391094

/-- `∑{#}[n, (-1)^#*C(n, #)*n^(C(#+1, 2)+n*(n-#))]` -/
def P14433475328138324240.Spec : Prop :=
  ∀ n, P14433475328138324240.a n = (A391094 n : ℚ)

end A391094

/-! ## A391094.P11581781821184157210

`A386681(∑[n])`
-/

namespace A391094.P11581781821184157210
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386681 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A391094.P11581781821184157210

namespace A391094

/-- `A386681(∑[n])` -/
def P11581781821184157210.Spec : Prop :=
  ∀ n, P11581781821184157210.a n = A391094 n

end A391094

/-! ## A391094.P18412544658561013799

`A391154(A000217(n))`
-/

namespace A391094.P18412544658561013799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391154 (A000217 n).toNat

end

end A391094.P18412544658561013799

namespace A391094

/-- `A391154(A000217(n))` -/
def P18412544658561013799.Spec : Prop :=
  ∀ n, P18412544658561013799.a n = A391094 n

end A391094

/-!
# A391095: Integers k such that Sum_{j|k, j!=k} A036044(j) = A036044(k).

The programs for A391095, there is no canonical definition to state claims against.
-/

/-! ## A391095.P1917361729291768700

`A391638(A239024(n+1))`
-/

namespace A391095.P1917361729291768700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391638 (A239024 (n + 1)).toNat

end

end A391095.P1917361729291768700

/-! ## A391095.P1241727663885493249

`A391638(A329800(n+1))`
-/

namespace A391095.P1241727663885493249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391638 (A329800 (n + 1)).toNat

end

end A391095.P1241727663885493249

/-! ## A391095.P14192244883474881137

`A391638(A331653(n+1))`
-/

namespace A391095.P14192244883474881137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391638 (A331653 (n + 1)).toNat

end

end A391095.P14192244883474881137

/-!
# A391096: a(n) is largest number such that the sequence contains a total of a(n) base 10 digits + commas through n terms (assuming one comma between each pair of terms).

The programs for A391096, the canonical program `A391096.P15625190028387691659` is in `Seq.B003.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A391096 has offset 1).

The definition of A391096 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A391096.P15625190028387691659

`A130174(n+3)-3`

The canonical program, it is in `Seq.B003.C005`.
-/

namespace A391096

/-- `A130174(n+3)-3` -/
def P15625190028387691659.Spec : Prop :=
  ∀ n, P15625190028387691659.a n = A391096 (n + 1)

theorem P15625190028387691659.correct : P15625190028387691659.Spec := by
  intro n
  simp only [A391096, Nat.add_sub_cancel]

end A391096

/-! ## A391096.P246886912937476820

`A080751(n+2)-2`
-/

namespace A391096.P246886912937476820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080751 (n + 2) - 2

end

end A391096.P246886912937476820

namespace A391096

/-- `A080751(n+2)-2` -/
def P246886912937476820.Spec : Prop :=
  ∀ n, P246886912937476820.a n = A391096 (n + 1)

theorem P246886912937476820.correct : P246886912937476820.Spec := by
  intro n
  simp only [A391096, Nat.add_sub_cancel, A391096.P246886912937476820.a, A391096.P15625190028387691659.a, A080751, A080751.P1467773457644653466.a, A130174, A130174.P12281293716126292394.a, A055642, A055642.P2478179801723442865.a, A196563, A196563.P12192156625480906411.a, A196564, A196564.P8945567313368503187.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A391096

/-! ## A391096.P16404277967955846845

`A023444(A080751(n+2))`
-/

namespace A391096.P16404277967955846845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 (A080751 (n + 2)).toNat

end

end A391096.P16404277967955846845

namespace A391096

/-- `A023444(A080751(n+2))` -/
def P16404277967955846845.Spec : Prop :=
  ∀ n, P16404277967955846845.a n = A391096 (n + 1)

end A391096

/-! ## A391096.P14234042812411544348

`∑[floor(A029837(A335486(n+1))/ϕ)]`
-/

namespace A391096.P14234042812411544348
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A029837 (A335486 (n + 1)).toNat : ℝ) / Real.goldenRatio⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A391096.P14234042812411544348

namespace A391096

/-- `∑[floor(A029837(A335486(n+1))/ϕ)]` -/
def P14234042812411544348.Spec : Prop :=
  ∀ n, P14234042812411544348.a n = A391096 (n + 1)

end A391096

/-! ## A391096.P3913777634650131125

`A318919(n+3)-4`
-/

namespace A391096.P3913777634650131125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318919 (n + 3) - 4

end

end A391096.P3913777634650131125

namespace A391096

/-- `A318919(n+3)-4` -/
def P3913777634650131125.Spec : Prop :=
  ∀ n, P3913777634650131125.a n = A391096 (n + 1)

end A391096

/-!
# A391098: Expansion of g/(1 - x^3*g^2), where g = 1+x*g^4 is the g.f. of A002293.

The programs for A391098, there is no canonical definition to state claims against.
-/

/-! ## A391098.P3149174364409633524

`A008615(Δ[A000162(n+2)]+1)`
-/

namespace A391098.P3149174364409633524
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000162 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (f1 (n + 1) - f1 n + 1).toNat

end

end A391098.P3149174364409633524

/-! ## A391098.P5042007916507056625

`A194606(A385270(n))+A002293(n)`
-/

namespace A391098.P5042007916507056625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194606 (A385270 n).toNat + A002293 n

end

end A391098.P5042007916507056625

/-!
# A391099: Expansion of g/(1 - x^2*g^3), where g = 1+x*g^4 is the g.f. of A002293.

The programs for A391099, there is no canonical definition to state claims against.
-/

/-! ## A391099.P1729474265354231752

`A102563(A000172(n))+1`
-/

namespace A391099.P1729474265354231752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102563 (A000172 n).toNat + 1

end

end A391099.P1729474265354231752

/-! ## A391099.P5084579777001291405

`A270032(n+1)+A258037(A375633(n))`
-/

namespace A391099.P5084579777001291405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270032 (n + 1) + A258037 (A375633 n).toNat

end

end A391099.P5084579777001291405

