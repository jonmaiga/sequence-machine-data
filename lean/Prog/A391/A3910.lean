import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
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
import Seq.B000.C017
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C008
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C005
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B006.C002
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
import Seq.B008.C001
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
import Seq.Opaque.C025

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

/-! ## A391003.P10275312821352217597

`∩[A085498(n+1), A317048(n+1)]`
-/

namespace A391003.P10275312821352217597
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085498 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317048 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391003.P10275312821352217597

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

The programs for A391014, the canonical program `A391014.P13528269181693746114` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A391014 has offset 1).

The definition of A391014 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000720, A038618, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A391014.P13528269181693746114

`A000720(A038618(n+1))`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A391014

/-- `A000720(A038618(n+1))` -/
def P13528269181693746114.Spec : Prop :=
  ∀ n, P13528269181693746114.a n = A391014 (n + 1)

theorem P13528269181693746114.correct : P13528269181693746114.Spec := by
  intro n
  simp only [A391014, Nat.add_sub_cancel]

end A391014

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

namespace A391014

/-- `record[A003963(A052382(n+1))]` -/
def P8118078648737337483.Spec : Prop :=
  ∀ n, P8118078648737337483.a n = A391014 (n + 1)

end A391014

/-! ## A391014.P15131716650266245988

`record[A139169(A195943(n+1))]`
-/

namespace A391014.P15131716650266245988
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139169 (A195943 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A391014.P15131716650266245988

namespace A391014

/-- `record[A139169(A195943(n+1))]` -/
def P15131716650266245988.Spec : Prop :=
  ∀ n, P15131716650266245988.a n = A391014 (n + 1)

end A391014

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

namespace A391014

/-- `record[A056239(A052382(n+2))]` -/
def P16750738022344720045.Spec : Prop :=
  ∀ n, P16750738022344720045.a n = A391014 (n + 1)

end A391014

/-! ## A391014.P12220203223105296068

`A056239(A038618(n+1))%A000040(n+1)`
-/

namespace A391014.P12220203223105296068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A056239 (A038618 (n + 1)).toNat) (A000040 (n + 1))

end

end A391014.P12220203223105296068

namespace A391014

/-- `A056239(A038618(n+1))%A000040(n+1)` -/
def P12220203223105296068.Spec : Prop :=
  ∀ n, P12220203223105296068.a n = A391014 (n + 1)

end A391014

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

namespace A391014

/-- `A056239(∩[A000040(n+1), A052382(n+1)])` -/
def P15696468308714214083.Spec : Prop :=
  ∀ n, P15696468308714214083.a n = A391014 (n + 1)

end A391014

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

namespace A391014

/-- `A139169(∩[A000040(n+1), A195943(n+1)])` -/
def P13253568659012036116.Spec : Prop :=
  ∀ n, P13253568659012036116.a n = A391014 (n + 1)

end A391014

/-! ## A391014.P15239961874379469527

`A056172(2*A038618(n+1))`
-/

namespace A391014.P15239961874379469527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056172 (2 * A038618 (n + 1)).toNat

end

end A391014.P15239961874379469527

namespace A391014

/-- `A056172(2*A038618(n+1))` -/
def P15239961874379469527.Spec : Prop :=
  ∀ n, P15239961874379469527.a n = A391014 (n + 1)

end A391014

/-! ## A391014.P11977342883016586759

`A316524(4*A038618(n+1))`
-/

namespace A391014.P11977342883016586759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316524 (4 * A038618 (n + 1)).toNat

end

end A391014.P11977342883016586759

namespace A391014

/-- `A316524(4*A038618(n+1))` -/
def P11977342883016586759.Spec : Prop :=
  ∀ n, P11977342883016586759.a n = A391014 (n + 1)

end A391014

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

The programs for A391023, the canonical program `A391023.P14661047719889867302` is in `Seq.B003.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A391023 has offset 1).

The definition of A391023 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9953 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A391023.P14661047719889867302

`filter[A067259(n+1), A355447(#)]`

The canonical program, it is in `Seq.B003.C005`.
-/

namespace A391023

/-- `filter[A067259(n+1), A355447(#)]` -/
def P14661047719889867302.Spec : Prop :=
  ∀ n, P14661047719889867302.a n = A391023 (n + 1)

theorem P14661047719889867302.correct : P14661047719889867302.Spec := by
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

/-! ## A391024.P2473901497881535310

`A005811(A152061(n)/2)`
-/

namespace A391024.P2473901497881535310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005811 (SequenceMachineLib.roundAway ((A152061 n : ℚ) / 2)).toNat

end

end A391024.P2473901497881535310

/-! ## A391024.P668425102453275424

`A323014(A028310(n)-val(A165492(2*n+3), 2))`
-/

namespace A391024.P668425102453275424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323014 (A028310 n - (SequenceMachineLib.valuation (A165492 (2 * n + 3)).toNat 2 : ℤ)).toNat

end

end A391024.P668425102453275424

/-! ## A391024.P11767665826132938376

`A323014(A151933(3*n)+n)`
-/

namespace A391024.P11767665826132938376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323014 (A151933 (3 * n) + (n : ℤ)).toNat

end

end A391024.P11767665826132938376

/-! ## A391024.P3375000357530056343

`A389146(A103314(n))`
-/

namespace A391024.P3375000357530056343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389146 (A103314 n).toNat

end

end A391024.P3375000357530056343

/-! ## A391024.P5540628699673170397

`A323014(n^A303837(n+1))`
-/

namespace A391024.P5540628699673170397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323014 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A303837 (n + 1) : ℤ))).toNat

end

end A391024.P5540628699673170397

/-!
# A391025: Odd numbers that are neither powerful nor squarefree.

The programs for A391025, the canonical program `A391025.P17647453908498382360` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A391025 has offset 1).

The definition of A391025 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6012 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A391025.P17647453908498382360

`filter[A053850(n+1), A389905(#)]`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A391025

/-- `filter[A053850(n+1), A389905(#)]` -/
def P17647453908498382360.Spec : Prop :=
  ∀ n, P17647453908498382360.a n = A391025 (n + 1)

theorem P17647453908498382360.correct : P17647453908498382360.Spec := by
  intro n
  simp only [A391025, Nat.add_sub_cancel]

end A391025

/-! ## A391025.P29744233596492604

`filter[A360769(n+1), A389905(#)]`
-/

namespace A391025.P29744233596492604
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360769 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A389905 (f1 j).toNat = 1) n)

end

end A391025.P29744233596492604

namespace A391025

/-- `filter[A360769(n+1), A389905(#)]` -/
def P29744233596492604.Spec : Prop :=
  ∀ n, P29744233596492604.a n = A391025 (n + 1)

end A391025

/-! ## A391025.P15537477648211710837

`filter[A274720(n+1), A389905(#)]`
-/

namespace A391025.P15537477648211710837
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274720 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A389905 (f1 j).toNat = 1) n)

end

end A391025.P15537477648211710837

namespace A391025

/-- `filter[A274720(n+1), A389905(#)]` -/
def P15537477648211710837.Spec : Prop :=
  ∀ n, P15537477648211710837.a n = A391025 (n + 1)

end A391025

/-! ## A391025.P4185707477536812356

`filter[A139392(n+1), A389905(#)]`
-/

namespace A391025.P4185707477536812356
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139392 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A389905 (f1 j).toNat = 1) n)

end

end A391025.P4185707477536812356

namespace A391025

/-- `filter[A139392(n+1), A389905(#)]` -/
def P4185707477536812356.Spec : Prop :=
  ∀ n, P4185707477536812356.a n = A391025 (n + 1)

end A391025

/-! ## A391025.P6014319101693272688

`filter[A333326(n+1), A389905(#)]`
-/

namespace A391025.P6014319101693272688
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333326 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A389905 (f1 j).toNat = 1) n)

end

end A391025.P6014319101693272688

namespace A391025

/-- `filter[A333326(n+1), A389905(#)]` -/
def P6014319101693272688.Spec : Prop :=
  ∀ n, P6014319101693272688.a n = A391025 (n + 1)

end A391025

/-! ## A391025.P379057655344544821

`∩[A053850(n+1), A386294(n+1)]`
-/

namespace A391025.P379057655344544821
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053850 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386294 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391025.P379057655344544821

namespace A391025

/-- `∩[A053850(n+1), A386294(n+1)]` -/
def P379057655344544821.Spec : Prop :=
  ∀ n, (P379057655344544821.a n : ℤ) = A391025 (n + 1)

end A391025

/-! ## A391025.P1540834029612185788

`∩[A053850(n+1), A332785(n+1)]`
-/

namespace A391025.P1540834029612185788
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053850 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332785 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391025.P1540834029612185788

namespace A391025

/-- `∩[A053850(n+1), A332785(n+1)]` -/
def P1540834029612185788.Spec : Prop :=
  ∀ n, (P1540834029612185788.a n : ℤ) = A391025 (n + 1)

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

/-! ## A391025.P17783727880025346760

`∩[A082686(n+1), A332785(n+1)]`
-/

namespace A391025.P17783727880025346760
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082686 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332785 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391025.P17783727880025346760

namespace A391025

/-- `∩[A082686(n+1), A332785(n+1)]` -/
def P17783727880025346760.Spec : Prop :=
  ∀ n, (P17783727880025346760.a n : ℤ) = A391025 (n + 1)

end A391025

/-! ## A391025.P3519104477225417483

`∩[A061346(n+1), A332785(n+1)]`
-/

namespace A391025.P3519104477225417483
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061346 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332785 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391025.P3519104477225417483

namespace A391025

/-- `∩[A061346(n+1), A332785(n+1)]` -/
def P3519104477225417483.Spec : Prop :=
  ∀ n, (P3519104477225417483.a n : ℤ) = A391025 (n + 1)

end A391025

/-! ## A391025.P1237524838010128042

`filter[A014076(n+1), A389905(#)]`
-/

namespace A391025.P1237524838010128042
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014076 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A389905 (f1 j).toNat = 1) n)

end

end A391025.P1237524838010128042

namespace A391025

/-- `filter[A014076(n+1), A389905(#)]` -/
def P1237524838010128042.Spec : Prop :=
  ∀ n, P1237524838010128042.a n = A391025 (n + 1)

end A391025

/-! ## A391025.P5148261964629117738

`filter[A071904(n+1), A389905(#)]`
-/

namespace A391025.P5148261964629117738
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071904 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A389905 (f1 j).toNat = 1) n)

end

end A391025.P5148261964629117738

namespace A391025

/-- `filter[A071904(n+1), A389905(#)]` -/
def P5148261964629117738.Spec : Prop :=
  ∀ n, P5148261964629117738.a n = A391025 (n + 1)

end A391025

/-! ## A391025.P5121299842393511274

`∩[A014076(n+1), A332785(n+1)]`
-/

namespace A391025.P5121299842393511274
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014076 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332785 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391025.P5121299842393511274

namespace A391025

/-- `∩[A014076(n+1), A332785(n+1)]` -/
def P5121299842393511274.Spec : Prop :=
  ∀ n, (P5121299842393511274.a n : ℤ) = A391025 (n + 1)

end A391025

/-! ## A391025.P10457128999189423829

`∩[A014076(n+1), A386294(n+1)]`
-/

namespace A391025.P10457128999189423829
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014076 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386294 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391025.P10457128999189423829

namespace A391025

/-- `∩[A014076(n+1), A386294(n+1)]` -/
def P10457128999189423829.Spec : Prop :=
  ∀ n, (P10457128999189423829.a n : ℤ) = A391025 (n + 1)

end A391025

/-! ## A391025.P1958802457139924295

`∩[A014076(n+1), A387919(n+1)]`
-/

namespace A391025.P1958802457139924295
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014076 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387919 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391025.P1958802457139924295

namespace A391025

/-- `∩[A014076(n+1), A387919(n+1)]` -/
def P1958802457139924295.Spec : Prop :=
  ∀ n, (P1958802457139924295.a n : ℤ) = A391025 (n + 1)

end A391025

/-! ## A391025.P13282657880432921244

`∩[A071904(n+1), A332785(n+1)]`
-/

namespace A391025.P13282657880432921244
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071904 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332785 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391025.P13282657880432921244

namespace A391025

/-- `∩[A071904(n+1), A332785(n+1)]` -/
def P13282657880432921244.Spec : Prop :=
  ∀ n, (P13282657880432921244.a n : ℤ) = A391025 (n + 1)

end A391025

/-! ## A391025.P6853955573026506820

`∩[A327922(n+1), A332785(n+1)]`
-/

namespace A391025.P6853955573026506820
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327922 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332785 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391025.P6853955573026506820

namespace A391025

/-- `∩[A327922(n+1), A332785(n+1)]` -/
def P6853955573026506820.Spec : Prop :=
  ∀ n, (P6853955573026506820.a n : ℤ) = A391025 (n + 1)

end A391025

/-! ## A391025.P17088159080589755551

`∩[A327922(n+1), A386294(n+1)]`
-/

namespace A391025.P17088159080589755551
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327922 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386294 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391025.P17088159080589755551

namespace A391025

/-- `∩[A327922(n+1), A386294(n+1)]` -/
def P17088159080589755551.Spec : Prop :=
  ∀ n, (P17088159080589755551.a n : ℤ) = A391025 (n + 1)

end A391025

/-! ## A391025.P2190717047967058030

`∩[A327922(n+1), A387919(n+1)]`
-/

namespace A391025.P2190717047967058030
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327922 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387919 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391025.P2190717047967058030

namespace A391025

/-- `∩[A327922(n+1), A387919(n+1)]` -/
def P2190717047967058030.Spec : Prop :=
  ∀ n, (P2190717047967058030.a n : ℤ) = A391025 (n + 1)

end A391025

/-! ## A391025.P16915327799650223078

`∩[A216848(n+1), A332785(n+1)]`
-/

namespace A391025.P16915327799650223078
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216848 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332785 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391025.P16915327799650223078

namespace A391025

/-- `∩[A216848(n+1), A332785(n+1)]` -/
def P16915327799650223078.Spec : Prop :=
  ∀ n, (P16915327799650223078.a n : ℤ) = A391025 (n + 1)

end A391025

/-!
# A391026: Even numbers that are neither powerful nor squarefree.

The programs for A391026, the canonical program `A391026.P7612980702264081441` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A391026 has offset 1).

The definition of A391026 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7629 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A391026.P4848462715130689437

`filter[A363101(n+1), A389905(#)]`
-/

namespace A391026.P4848462715130689437
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363101 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A389905 (f1 j).toNat = 1) n)

end

end A391026.P4848462715130689437

namespace A391026

/-- `filter[A363101(n+1), A389905(#)]` -/
def P4848462715130689437.Spec : Prop :=
  ∀ n, P4848462715130689437.a n = A391026 (n + 1)

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

/-! ## A391026.P4345479746658605428

`filter[A282671(n+1), A389905(#)]`
-/

namespace A391026.P4345479746658605428
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282671 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A389905 (f1 j).toNat = 1) n)

end

end A391026.P4345479746658605428

namespace A391026

/-- `filter[A282671(n+1), A389905(#)]` -/
def P4345479746658605428.Spec : Prop :=
  ∀ n, P4345479746658605428.a n = A391026 (n + 1)

end A391026

/-! ## A391026.P11253377180044542975

`filter[A139270(n+1), A389905(#)]`
-/

namespace A391026.P11253377180044542975
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139270 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A389905 (f1 j).toNat = 1) n)

end

end A391026.P11253377180044542975

namespace A391026

/-- `filter[A139270(n+1), A389905(#)]` -/
def P11253377180044542975.Spec : Prop :=
  ∀ n, P11253377180044542975.a n = A391026 (n + 1)

end A391026

/-! ## A391026.P7582596221019439899

`filter[A176100(n+2), A389905(#)]`
-/

namespace A391026.P7582596221019439899
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176100 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A389905 (f1 j).toNat = 1) n)

end

end A391026.P7582596221019439899

namespace A391026

/-- `filter[A176100(n+2), A389905(#)]` -/
def P7582596221019439899.Spec : Prop :=
  ∀ n, P7582596221019439899.a n = A391026 (n + 1)

end A391026

/-! ## A391026.P4621981175900149047

`filter[A305634(n+1), A389905(#)]`
-/

namespace A391026.P4621981175900149047
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305634 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A389905 (f1 j).toNat = 1) n)

end

end A391026.P4621981175900149047

namespace A391026

/-- `filter[A305634(n+1), A389905(#)]` -/
def P4621981175900149047.Spec : Prop :=
  ∀ n, P4621981175900149047.a n = A391026 (n + 1)

end A391026

/-! ## A391026.P15522726190431996223

`filter[A157502(n+1), A389905(#)]`
-/

namespace A391026.P15522726190431996223
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157502 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A389905 (f1 j).toNat = 1) n)

end

end A391026.P15522726190431996223

namespace A391026

/-- `filter[A157502(n+1), A389905(#)]` -/
def P15522726190431996223.Spec : Prop :=
  ∀ n, P15522726190431996223.a n = A391026 (n + 1)

end A391026

/-! ## A391026.P12175215869658388763

`filter[A177712(n+3), A389905(#)]`
-/

namespace A391026.P12175215869658388763
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177712 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A389905 (f1 j).toNat = 1) n)

end

end A391026.P12175215869658388763

namespace A391026

/-- `filter[A177712(n+3), A389905(#)]` -/
def P12175215869658388763.Spec : Prop :=
  ∀ n, P12175215869658388763.a n = A391026 (n + 1)

end A391026

/-! ## A391026.P7307018029878608525

`filter[A020739(n), A389905(#)]`
-/

namespace A391026.P7307018029878608525
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020739 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A389905 (f1 j).toNat = 1) n)

end

end A391026.P7307018029878608525

namespace A391026

/-- `filter[A020739(n), A389905(#)]` -/
def P7307018029878608525.Spec : Prop :=
  ∀ n, P7307018029878608525.a n = A391026 (n + 1)

end A391026

/-! ## A391026.P7642727041406831505

`filter[A020744(n), A389905(#)]`
-/

namespace A391026.P7642727041406831505
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020744 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A389905 (f1 j).toNat = 1) n)

end

end A391026.P7642727041406831505

namespace A391026

/-- `filter[A020744(n), A389905(#)]` -/
def P7642727041406831505.Spec : Prop :=
  ∀ n, P7642727041406831505.a n = A391026 (n + 1)

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

/-! ## A391026.P14244334703578786886

`filter[A004277(n), A389905(#)]`
-/

namespace A391026.P14244334703578786886
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A389905 (f1 j).toNat = 1) n)

end

end A391026.P14244334703578786886

namespace A391026

/-- `filter[A004277(n), A389905(#)]` -/
def P14244334703578786886.Spec : Prop :=
  ∀ n, P14244334703578786886.a n = A391026 (n + 1)

end A391026

/-! ## A391026.P7174101592426320812

`filter[A057543(n), A389905(#)]`
-/

namespace A391026.P7174101592426320812
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057543 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A389905 (f1 j).toNat = 1) n)

end

end A391026.P7174101592426320812

namespace A391026

/-- `filter[A057543(n), A389905(#)]` -/
def P7174101592426320812.Spec : Prop :=
  ∀ n, P7174101592426320812.a n = A391026 (n + 1)

end A391026

/-! ## A391026.P3350388606879828520

`filter[A103517(n), A389905(#)]`
-/

namespace A391026.P3350388606879828520
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103517 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A389905 (f1 j).toNat = 1) n)

end

end A391026.P3350388606879828520

namespace A391026

/-- `filter[A103517(n), A389905(#)]` -/
def P3350388606879828520.Spec : Prop :=
  ∀ n, P3350388606879828520.a n = A391026 (n + 1)

end A391026

/-! ## A391026.P737508620463001787

`filter[A004275(n+1), A389905(#)]`
-/

namespace A391026.P737508620463001787
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A389905 (f1 j).toNat = 1) n)

end

end A391026.P737508620463001787

namespace A391026

/-- `filter[A004275(n+1), A389905(#)]` -/
def P737508620463001787.Spec : Prop :=
  ∀ n, P737508620463001787.a n = A391026 (n + 1)

end A391026

/-! ## A391026.P11532039340697353487

`filter[A005843(n+1), A389905(#)]`
-/

namespace A391026.P11532039340697353487
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A389905 (f1 j).toNat = 1) n)

end

end A391026.P11532039340697353487

namespace A391026

/-- `filter[A005843(n+1), A389905(#)]` -/
def P11532039340697353487.Spec : Prop :=
  ∀ n, P11532039340697353487.a n = A391026 (n + 1)

end A391026

/-! ## A391026.P4985390188941307560

`filter[A092535(n+1), A389905(#)]`
-/

namespace A391026.P4985390188941307560
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092535 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A389905 (f1 j).toNat = 1) n)

end

end A391026.P4985390188941307560

namespace A391026

/-- `filter[A092535(n+1), A389905(#)]` -/
def P4985390188941307560.Spec : Prop :=
  ∀ n, P4985390188941307560.a n = A391026 (n + 1)

end A391026

/-! ## A391026.P794419044613250281

`filter[A175030(n+1), A389905(#)]`
-/

namespace A391026.P794419044613250281
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175030 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A389905 (f1 j).toNat = 1) n)

end

end A391026.P794419044613250281

namespace A391026

/-- `filter[A175030(n+1), A389905(#)]` -/
def P794419044613250281.Spec : Prop :=
  ∀ n, P794419044613250281.a n = A391026 (n + 1)

end A391026

/-! ## A391026.P10322371640282178973

`filter[A299232(n+1), A389905(#)]`
-/

namespace A391026.P10322371640282178973
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299232 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A389905 (f1 j).toNat = 1) n)

end

end A391026.P10322371640282178973

namespace A391026

/-- `filter[A299232(n+1), A389905(#)]` -/
def P10322371640282178973.Spec : Prop :=
  ∀ n, P10322371640282178973.a n = A391026 (n + 1)

end A391026

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

/-! ## A391031.P4394314829965733683

`A288315(A000108(n)%A002080(n+2))`
-/

namespace A391031.P4394314829965733683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288315 (Int.tmod (A000108 n) (A002080 (n + 2))).toNat

end

end A391031.P4394314829965733683

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

The programs for A391033, there is no canonical definition to state claims against.
-/

/-! ## A391033.P17119994554312213697

`A105872(n)+A105872(n)-A390702(n)`
-/

namespace A391033.P17119994554312213697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105872 n + (A105872 n - A390702 n)

end

end A391033.P17119994554312213697

/-! ## A391033.P2659930027083604502

`A247911(A356937(n))`
-/

namespace A391033.P2659930027083604502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247911 (A356937 n).toNat

end

end A391033.P2659930027083604502

/-! ## A391033.P11337689891580097063

`A023193(A104632(n+1))`
-/

namespace A391033.P11337689891580097063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023193 (A104632 (n + 1)).toNat

end

end A391033.P11337689891580097063

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

The programs for A391035, there is no canonical definition to state claims against.
-/

/-! ## A391035.P9059309568858237466

`A172513(a(n-1))+1` with `a(0)=1, a(1)=1`
-/

namespace A391035.P9059309568858237466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A172513 (a (n - 1)).toNat + 1

end

end A391035.P9059309568858237466

/-! ## A391035.P11421375920959641150

`A023193(A350717(n))`
-/

namespace A391035.P11421375920959641150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023193 (A350717 n).toNat

end

end A391035.P11421375920959641150

/-! ## A391035.P17039872241927605965

`A023193(A355351(n))`
-/

namespace A391035.P17039872241927605965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023193 (A355351 n).toNat

end

end A391035.P17039872241927605965

/-!
# A391036: Expansion of g/(1 - x^2*g^5), where g = 1+x*g^2 is the g.f. of A000108.

The programs for A391036, there is no canonical definition to state claims against.
-/

/-! ## A391036.P5511235850817493081

`A110656(A246986(n))`
-/

namespace A391036.P5511235850817493081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110656 (A246986 n).toNat

end

end A391036.P5511235850817493081

/-! ## A391036.P14671464498727347630

`A316964(A149359(n))`
-/

namespace A391036.P14671464498727347630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316964 (A149359 n).toNat

end

end A391036.P14671464498727347630

/-! ## A391036.P4882068934123228704

`A325953(A237622(n))`
-/

namespace A391036.P4882068934123228704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325953 (A237622 n).toNat

end

end A391036.P4882068934123228704

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

/-! ## A391043.P5862508159169737116

`A137735(C(A001481(n+1), A008304(3*(n+1))))`
-/

namespace A391043.P5862508159169737116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137735 (Nat.choose (A001481 (n + 1)).toNat (A008304 (3 * (n + 1))).toNat)

end

end A391043.P5862508159169737116

/-! ## A391043.P13596661523367994695

`gcd(A054354(A000219(n)), A156080(n+5))`
-/

namespace A391043.P13596661523367994695
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A054354 (A000219 n).toNat) (A156080 (n + 5))

end

end A391043.P13596661523367994695

/-!
# A391048: Triangle read by rows: T(n,k) = binomial(n+1,k+1) * binomial(5*n-4*k+1,k) / (n+1), 0<=k<=n.

The programs for A391048, there is no canonical definition to state claims against.
-/

/-! ## A391048.P3031467500161872221

`A115180(A109001(n))`
-/

namespace A391048.P3031467500161872221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115180 (A109001 n).toNat

end

end A391048.P3031467500161872221

/-!
# A391049: Primes p such that p^2 - 4*q*r = s^2, where q, r are primes and s > 0.

The programs for A391049, the canonical program `A391049.P16899425426740408334` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A391049 has offset 1).

The definition of A391049 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A391049.P16899425426740408334

`∪[A005385(n+1), A006512(n+1)]`

The canonical program, it is in `Seq.B013.C000`.
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

/-! ## A391049.P17692424717816786655

`∩[A284837(n+1), A299760(n+1)]`
-/

namespace A391049.P17692424717816786655
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284837 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299760 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391049.P17692424717816786655

namespace A391049

/-- `∩[A284837(n+1), A299760(n+1)]` -/
def P17692424717816786655.Spec : Prop :=
  ∀ n, (P17692424717816786655.a n : ℤ) = A391049 (n + 1)

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

The programs for A391054, the canonical program `A391054.P1851313567108275429` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A391054 has offset 0).

The definition of A391054 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A391054.P1851313567108275429

`a(n-2)+a(n-4)-a(n-6)` with `a(0)=0, a(1)=10, a(2)=1, a(3)=28, a(4)=1, a(5)=46`

The canonical program, it is in `Seq.B000.C036`.
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

/-! ## A391058.P4388953967850745574

`A275027(n)-A374744(A120010(n+2))`
-/

namespace A391058.P4388953967850745574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275027 n - A374744 (A120010 (n + 2)).toNat

end

end A391058.P4388953967850745574

/-!
# A391059: Expansion of g/(1 - x^3*g), where g = 1+x*g^3 is the g.f. of A001764.

The programs for A391059, there is no canonical definition to state claims against.
-/

/-! ## A391059.P13954979716293065325

`A080405(A364739(n)+A002293(n))`
-/

namespace A391059.P13954979716293065325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080405 (A364739 n + A002293 n).toNat

end

end A391059.P13954979716293065325

/-! ## A391059.P8882136509016988910

`A216493(n)+A209899(A083329(n))`
-/

namespace A391059.P8882136509016988910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216493 n + A209899 (A083329 n).toNat

end

end A391059.P8882136509016988910

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

/-! ## A391061.P12219153759582112183

`A226316(n)+A124760(A112368(n))`
-/

namespace A391061.P12219153759582112183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226316 n + A124760 (A112368 n).toNat

end

end A391061.P12219153759582112183

/-!
# A391062: Expansion of g/(1 - x^3*g^3), where g = 1+x*g^3 is the g.f. of A001764.

The programs for A391062, there is no canonical definition to state claims against.
-/

/-! ## A391062.P335544182032458363

`A389286(n)+A083895(A002866(n))`
-/

namespace A391062.P335544182032458363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389286 n + A083895 (A002866 n).toNat

end

end A391062.P335544182032458363

/-! ## A391062.P10475667194522541915

`A389891(n)+A064990(A039618(n))`
-/

namespace A391062.P10475667194522541915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389891 n + A064990 (A039618 n).toNat

end

end A391062.P10475667194522541915

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

The programs for A391064, there is no canonical definition to state claims against.
-/

/-! ## A391064.P12409241706766440495

`A373067(A008000(n)+1)`
-/

namespace A391064.P12409241706766440495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373067 (A008000 n + 1).toNat

end

end A391064.P12409241706766440495

/-! ## A391064.P712502374198710674

`A371632(A382542(n)+n)`
-/

namespace A391064.P712502374198710674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371632 (A382542 n + (n : ℤ)).toNat

end

end A391064.P712502374198710674

/-!
# A391065: Expansion of g/(1 - x^3*g^9), where g = 1+x*g^3 is the g.f. of A001764.

The programs for A391065, there is no canonical definition to state claims against.
-/

/-! ## A391065.P2163615098330248486

`A376958(A005651(n))`
-/

namespace A391065.P2163615098330248486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376958 (A005651 n).toNat

end

end A391065.P2163615098330248486

/-! ## A391065.P11660666957521198240

`A108954(A262001(n)+A000225(n))`
-/

namespace A391065.P11660666957521198240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108954 (A262001 n + A000225 n).toNat

end

end A391065.P11660666957521198240

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

/-! ## A391067.P10157779967327546045

`A001222(A391066(n+1)+A000007(n))`
-/

namespace A391067.P10157779967327546045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A391066 (n + 1) + A000007 n).toNat

end

end A391067.P10157779967327546045

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

/-! ## A391073.P4745975991920746796

`A357138(A357151(n)%A357156(n+3))`
-/

namespace A391073.P4745975991920746796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357138 (Int.tmod (A357151 n) (A357156 (n + 3))).toNat

end

end A391073.P4745975991920746796

/-! ## A391073.P14648579221476091818

`A243353(A392463(n+1))%A356233(n+3)`
-/

namespace A391073.P14648579221476091818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A243353 (A392463 (n + 1)).toNat) (A356233 (n + 3))

end

end A391073.P14648579221476091818

/-!
# A391074: a(n) is the number of nonuniform divisors of n.

The programs for A391074, the canonical program `A391074.P7066598171140740427` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A391074 has offset 1).

The definition of A391074 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, A327527, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A391074.P7066598171140740427

`A000005(n+1)-A327527(n+1)`

The canonical program, it is in `Seq.B012.C000`.
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

/-! ## A391074.P10463242195978799979

`A098418(A179926(n+1))`
-/

namespace A391074.P10463242195978799979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098418 (A179926 (n + 1)).toNat

end

end A391074.P10463242195978799979

namespace A391074

/-- `A098418(A179926(n+1))` -/
def P10463242195978799979.Spec : Prop :=
  ∀ n, P10463242195978799979.a n = A391074 (n + 1)

end A391074

/-! ## A391074.P3410228656583346908

`A391713(A100527(A100527(n+1)))`
-/

namespace A391074.P3410228656583346908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391713 (A100527 (A100527 (n + 1)).toNat).toNat

end

end A391074.P3410228656583346908

namespace A391074

/-- `A391713(A100527(A100527(n+1)))` -/
def P3410228656583346908.Spec : Prop :=
  ∀ n, P3410228656583346908.a n = A391074 (n + 1)

end A391074

/-!
# A391075: a(n) = 25*n+1 if n is odd and floor((n+6)/8) if n is even.

The programs for A391075, the canonical program `A391075.P17698031144604397816` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A391075 has offset 0).

The definition of A391075 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A391075.P17698031144604397816

`a(n-2)+a(n-8)-a(n-10)` with `a(0)=0, a(1)=26, a(2)=1, a(3)=76, a(4)=1, a(5)=126, a(6)=1, a(7)=176, a(8)=1, a(9)=226`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A391075

/-- `a(n-2)+a(n-8)-a(n-10)` -/
def P17698031144604397816.Spec : Prop :=
  ∀ n, P17698031144604397816.a n = A391075 n

theorem P17698031144604397816.correct : P17698031144604397816.Spec := by
  intro n
  simp only [A391075]

end A391075

/-! ## A391075.P12647620091267943827

`a(A077023(n))` with `a(0)=0, a(1)=26, a(2)=1, a(3)=76, a(4)=1, a(5)=126`
-/

namespace A391075.P12647620091267943827
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 26, 1, 76, 1, 126] fun n a =>
  a (A077023 n).toNat

end

end A391075.P12647620091267943827

namespace A391075

/-- `a(A077023(n))` -/
def P12647620091267943827.Spec : Prop :=
  ∀ n, (P12647620091267943827.a n : ℤ) = A391075 n

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

/-! ## A391081.P12831377752703364016

`A225819(A052961(n))`
-/

namespace A391081.P12831377752703364016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225819 (A052961 n).toNat

end

end A391081.P12831377752703364016

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

The programs for A391084, there is no canonical definition to state claims against.
-/

/-! ## A391084.P1243264087612965967

`A344166(A091024(n+1))`
-/

namespace A391084.P1243264087612965967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344166 (A091024 (n + 1)).toNat

end

end A391084.P1243264087612965967

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
# A391086: Primitive exponential abundant numbers that are not primitives exponential unitary abundant.

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

/-! ## A391088.P4247061265793373093

`filter[A335218(n+1), A307430(#)]`
-/

namespace A391088.P4247061265793373093
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335218 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A307430 (f1 j).toNat = 1) n)

end

end A391088.P4247061265793373093

/-! ## A391088.P11323701971190105612

`filter[A335218(n+1), A370598(#)]`
-/

namespace A391088.P11323701971190105612
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335218 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A370598 (f1 j).toNat = 1) n)

end

end A391088.P11323701971190105612

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

The programs for A391092, the canonical program `A391092.P5526526414319194207` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A391092 has offset 0).

The definition of A391092 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A391092.P16148426755173722988

`n*(n²*(3*n-5)+2)/6`
-/

namespace A391092.P16148426755173722988
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) * (((n ^ 2 : ℤ) * ((3 * n : ℤ) - 5) + 2 : ℚ) / 6)

end

end A391092.P16148426755173722988

namespace A391092

/-- `n*(n²*(3*n-5)+2)/6` -/
def P16148426755173722988.Spec : Prop :=
  ∀ n, P16148426755173722988.a n = (A391092 n : ℚ)

theorem P16148426755173722988.correct : P16148426755173722988.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 | 4 =>
      simp [A391092, Nat.add_sub_cancel, A391092.P16148426755173722988.a, A391092.P5526526414319194207.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 5 =>
      have h1 := ih (m + 4) (by omega)
      have h2 := ih (m + 3) (by omega)
      have h3 := ih (m + 2) (by omega)
      have h4 := ih (m + 1) (by omega)
      have h5 := ih m (by omega)
      simp only [A391092, Nat.add_sub_cancel, A391092.P16148426755173722988.a, A391092.P5526526414319194207.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 h5 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 5 - 1 = m + 4 by omega, show m + 5 - 2 = m + 3 by omega, show m + 5 - 3 = m + 2 by omega, show m + 5 - 4 = m + 1 by omega, show m + 5 - 5 = m by omega, show m + 4 < m + 5 by omega, show m + 3 < m + 5 by omega, show m + 2 < m + 5 by omega, show m + 1 < m + 5 by omega, show m < m + 5 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 h5 ⊢
      rw [← h1, ← h2, ← h3, ← h4, ← h5]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A391092

/-! ## A391092.P5526526414319194207

`5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` with `a(0)=0, a(1)=0, a(2)=2, a(3)=19, a(4)=76`

The canonical program, it is in `Seq.B000.C036`.
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

/-!
# A391094: a(n) is the number of closed binary operations on a set of n labeled elements with empty center.

The programs for A391094, there is no canonical definition to state claims against.
-/

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

The programs for A391096, the canonical program `A391096.P15625190028387691659` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A391096 has offset 1).

The definition of A391096 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A391096.P15625190028387691659

`A130174(n+3)-3`

The canonical program, it is in `Seq.B002.C006`.
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

/-! ## A391098.P7802379564496643435

`A385860(A385875(n))+A002293(n)`
-/

namespace A391098.P7802379564496643435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385860 (A385875 n).toNat + A002293 n

end

end A391098.P7802379564496643435

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

