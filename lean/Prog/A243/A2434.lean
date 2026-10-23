import SequenceMachineLib
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
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C033
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
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C005
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B007.C000
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
import Seq.Opaque.C020
import Seq.Opaque.C021
import Seq.Opaque.C022
import Seq.Opaque.C023
import Seq.Opaque.C024
import Seq.Opaque.C025

/-!
# A243400: Primes p such that p^6 - p^5 - p^4 - p^3 - p^2 - p - 1 is prime.

The programs for A243400, there is no canonical definition to state claims against.
-/

/-! ## A243400.P15207824305558598242

`p?[A243300(n+1)]`
-/

namespace A243400.P15207824305558598242
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243300 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A243400.P15207824305558598242

/-! ## A243400.P5830621674067286311

`p?[record[A243300(A286544(n))]]`
-/

namespace A243400.P5830621674067286311
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243300 (A286544 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A243400.P5830621674067286311

/-! ## A243400.P4756935948543673746

`record[A006530(A243300(n+2))]`
-/

namespace A243400.P4756935948543673746
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A243300 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A243400.P4756935948543673746

/-! ## A243400.P3089249395282083516

`filter[A243300(n+1), A010051(#)]`
-/

namespace A243400.P3089249395282083516
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243300 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A243400.P3089249395282083516

/-! ## A243400.P7542162004055320814

`filter[A243300(n+1), A080339(#)]`
-/

namespace A243400.P7542162004055320814
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243300 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080339 (f1 j).toNat = 1) n)

end

end A243400.P7542162004055320814

/-! ## A243400.P2236374434469662579

`filter[A243300(n+1), A080545(#)]`
-/

namespace A243400.P2236374434469662579
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243300 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080545 (f1 j).toNat = 1) n)

end

end A243400.P2236374434469662579

/-! ## A243400.P4462830434037911409

`filter[A243300(n+1), A171387(#)]`
-/

namespace A243400.P4462830434037911409
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243300 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A171387 (f1 j).toNat = 1) n)

end

end A243400.P4462830434037911409

/-! ## A243400.P14930839697740827255

`filter[A243300(n+1), A323152(#)]`
-/

namespace A243400.P14930839697740827255
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243300 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323152 (f1 j).toNat = 1) n)

end

end A243400.P14930839697740827255

/-! ## A243400.P6741324081524562069

`filter[A243300(n+1), A323153(#)]`
-/

namespace A243400.P6741324081524562069
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243300 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323153 (f1 j).toNat = 1) n)

end

end A243400.P6741324081524562069

/-! ## A243400.P16077284694270327412

`filter[A243300(n+1), A353817(#)]`
-/

namespace A243400.P16077284694270327412
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243300 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353817 (f1 j).toNat = 1) n)

end

end A243400.P16077284694270327412

/-!
# A243401: Primes p such that p^8 - p^7 - p^6 - p^5 - p^4 - p^3 - p^2 - p - 1 is prime.

The programs for A243401, there is no canonical definition to state claims against.
-/

/-! ## A243401.P12426744729397510330

`p?[A243297(n+1)]`
-/

namespace A243401.P12426744729397510330
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243297 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A243401.P12426744729397510330

/-! ## A243401.P11963402269890917723

`p?[record[A243297(A286544(n))]]`
-/

namespace A243401.P11963402269890917723
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243297 (A286544 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A243401.P11963402269890917723

/-! ## A243401.P640123158161862603

`p?[record[A243297(A286626(n))]]`
-/

namespace A243401.P640123158161862603
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243297 (A286626 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A243401.P640123158161862603

/-! ## A243401.P12251907918949210166

`record[A006530(A243297(n+2))]`
-/

namespace A243401.P12251907918949210166
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A243297 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A243401.P12251907918949210166

/-! ## A243401.P7250044599305656275

`filter[A243297(n+1), A010051(#)]`
-/

namespace A243401.P7250044599305656275
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243297 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A243401.P7250044599305656275

/-! ## A243401.P3154963633466952257

`filter[A243297(n+1), A080339(#)]`
-/

namespace A243401.P3154963633466952257
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243297 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080339 (f1 j).toNat = 1) n)

end

end A243401.P3154963633466952257

/-! ## A243401.P554457826789511108

`filter[A243297(n+1), A080545(#)]`
-/

namespace A243401.P554457826789511108
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243297 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080545 (f1 j).toNat = 1) n)

end

end A243401.P554457826789511108

/-! ## A243401.P12173313808102169039

`filter[A243297(n+1), A171387(#)]`
-/

namespace A243401.P12173313808102169039
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243297 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A171387 (f1 j).toNat = 1) n)

end

end A243401.P12173313808102169039

/-! ## A243401.P2096250042957099301

`filter[A243297(n+1), A323152(#)]`
-/

namespace A243401.P2096250042957099301
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243297 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323152 (f1 j).toNat = 1) n)

end

end A243401.P2096250042957099301

/-! ## A243401.P5925268550071180916

`filter[A243297(n+1), A323153(#)]`
-/

namespace A243401.P5925268550071180916
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243297 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323153 (f1 j).toNat = 1) n)

end

end A243401.P5925268550071180916

/-!
# A243402: Primes p such that p^10 - p^9 - p^8 - p^7 - p^6 - p^5 - p^4 - p^3 - p^2 - p - 1 is prime.

The programs for A243402, there is no canonical definition to state claims against.
-/

/-! ## A243402.P18405025038550225273

`p?[A243318(n+1)]`
-/

namespace A243402.P18405025038550225273
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243318 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A243402.P18405025038550225273

/-! ## A243402.P16001972987742921946

`p?[record[A243318(A291769(n))]]`
-/

namespace A243402.P16001972987742921946
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243318 (A291769 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A243402.P16001972987742921946

/-! ## A243402.P12074130351330176297

`p?[record[A243318(A305298(n))]]`
-/

namespace A243402.P12074130351330176297
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243318 (A305298 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A243402.P12074130351330176297

/-! ## A243402.P8707285177375745739

`∩[A003627(n+1), A243318(n+1)]`
-/

namespace A243402.P8707285177375745739
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003627 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243318 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A243402.P8707285177375745739

/-! ## A243402.P6633589161668134590

`∩[A007528(n+1), A243318(n+1)]`
-/

namespace A243402.P6633589161668134590
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007528 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243318 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A243402.P6633589161668134590

/-! ## A243402.P12219109831507666529

`∩[A045309(n+1), A243318(n+1)]`
-/

namespace A243402.P12219109831507666529
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045309 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243318 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A243402.P12219109831507666529

/-! ## A243402.P11370471178566688728

`∩[A045410(n+1), A243318(n+1)]`
-/

namespace A243402.P11370471178566688728
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045410 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243318 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A243402.P11370471178566688728

/-! ## A243402.P4079645396621596193

`∩[A056955(n+1), A243318(n+1)]`
-/

namespace A243402.P4079645396621596193
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056955 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243318 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A243402.P4079645396621596193

/-! ## A243402.P9540077334870575914

`∩[A049596(n+1), A243318(n+1)]`
-/

namespace A243402.P9540077334870575914
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049596 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243318 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A243402.P9540077334870575914

/-! ## A243402.P16506753757529837897

`∩[A164319(n+1), A243318(n+1)]`
-/

namespace A243402.P16506753757529837897
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243318 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A243402.P16506753757529837897

/-! ## A243402.P12865756658235861199

`∩[A040044(n+1), A243318(n+1)]`
-/

namespace A243402.P12865756658235861199
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040044 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243318 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A243402.P12865756658235861199

/-! ## A243402.P368455399454146448

`∩[A040046(n+1), A243318(n+1)]`
-/

namespace A243402.P368455399454146448
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040046 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243318 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A243402.P368455399454146448

/-! ## A243402.P6144895889081797742

`∩[A040060(n+1), A243318(n+1)]`
-/

namespace A243402.P6144895889081797742
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040060 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243318 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A243402.P6144895889081797742

/-! ## A243402.P10124260425615244419

`∩[A040087(n+1), A243318(n+1)]`
-/

namespace A243402.P10124260425615244419
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040087 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243318 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A243402.P10124260425615244419

/-! ## A243402.P4726547326045208242

`∩[A040028(n+1), A243318(n+1)]`
-/

namespace A243402.P4726547326045208242
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040028 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243318 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A243402.P4726547326045208242

/-! ## A243402.P8909989546487556447

`∩[A040036(n+1), A243318(n+1)]`
-/

namespace A243402.P8909989546487556447
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040036 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243318 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A243402.P8909989546487556447

/-! ## A243402.P13313085606067158278

`∩[A040049(n+1), A243318(n+1)]`
-/

namespace A243402.P13313085606067158278
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040049 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243318 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A243402.P13313085606067158278

/-! ## A243402.P12803404510525020498

`∩[A040054(n+1), A243318(n+1)]`
-/

namespace A243402.P12803404510525020498
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040054 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243318 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A243402.P12803404510525020498

/-! ## A243402.P6469146637660602115

`∩[A040062(n+1), A243318(n+1)]`
-/

namespace A243402.P6469146637660602115
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040062 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243318 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A243402.P6469146637660602115

/-! ## A243402.P7656516977424203148

`∩[A040065(n+1), A243318(n+1)]`
-/

namespace A243402.P7656516977424203148
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040065 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243318 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A243402.P7656516977424203148

/-!
# A243403: Number of primes p < n such that p*(n-p) is a primitive root modulo prime(n).

The programs for A243403, there is no canonical definition to state claims against.
-/

/-! ## A243403.P5451939389963980824

`A051904(A085629(n+1))%A002024(n+1)`
-/

namespace A243403.P5451939389963980824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A051904 (A085629 (n + 1)).toNat) (A002024 (n + 1))

end

end A243403.P5451939389963980824

/-! ## A243403.P14798165660811220841

`A083346(n+1)%A111972(A051535(n+2))`
-/

namespace A243403.P14798165660811220841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A083346 (n + 1)) (A111972 (A051535 (n + 2)).toNat)

end

end A243403.P14798165660811220841

/-! ## A243403.P11765714174984884157

`∑{e}[A131098(A264173(n)), #]`
-/

namespace A243403.P11765714174984884157
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131098 (A264173 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A243403.P11765714174984884157

/-! ## A243403.P15193328313048221621

`A055640(A264173(n)-A057077(n))`
-/

namespace A243403.P15193328313048221621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055640 (A264173 n - A057077 n).toNat

end

end A243403.P15193328313048221621

/-! ## A243403.P16077995260221450037

`A004216(lcm(A126188(n), A147315(n)))`
-/

namespace A243403.P16077995260221450037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004216 (Int.lcm (A126188 n) (A147315 n))

end

end A243403.P16077995260221450037

/-!
# A243404: Least number k such that n^k - n^(k-1) - ... - n^2 - n - 1 is prime.

The programs for A243404, there is no canonical definition to state claims against.
-/

/-! ## A243404.P5163185037937653092

`A257619(A368098(n)%A102627(n+2))`
-/

namespace A243404.P5163185037937653092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257619 (Int.tmod (A368098 n) (A102627 (n + 2))).toNat

end

end A243404.P5163185037937653092

/-!
# A243405: Minimum among the numbers p^(n/p), where p is a prime factor of n.

The programs for A243405, there is no canonical definition to state claims against.
-/

/-! ## A243405.P3408971530980365039

`A034684(A374431(n+1))`
-/

namespace A243405.P3408971530980365039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034684 (A374431 (n + 1)).toNat

end

end A243405.P3408971530980365039

/-!
# A243408: Primes p such that 10*p-1, 10*p-3, 10*p-7 and 10*p-9 are all prime.

The programs for A243408, there is no canonical definition to state claims against.
-/

/-! ## A243408.P13911203211453968340

`∩[A064975(n+1), A158017(n+1)]`
-/

namespace A243408.P13911203211453968340
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064975 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158017 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A243408.P13911203211453968340

/-! ## A243408.P15453063448772859397

`∩[A115095(n+1), A158017(n+1)]`
-/

namespace A243408.P15453063448772859397
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115095 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158017 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A243408.P15453063448772859397

/-! ## A243408.P8483032757823963056

`p?[A064975(n+1)]`
-/

namespace A243408.P8483032757823963056
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064975 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A243408.P8483032757823963056

/-! ## A243408.P3984431765567311404

`p?[A115095(n+1)]`
-/

namespace A243408.P3984431765567311404
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115095 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A243408.P3984431765567311404

/-! ## A243408.P13407319661471748217

`p?[A007811(n+1)+1]`
-/

namespace A243408.P13407319661471748217
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007811 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A243408.P13407319661471748217

/-! ## A243408.P11547259982060180939

`p?[ceil(A178082(n+1)/2)]`
-/

namespace A243408.P11547259982060180939
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A178082 (n + 1) : ℚ) / 2⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A243408.P11547259982060180939

/-!
# A243409: Primes p such that 100p-1, 100p-3, 100p-7, and 100p-9 are all prime.

The programs for A243409, there is no canonical definition to state claims against.
-/

/-! ## A243409.P14600553323670736771

`p?[A064976(n+1)]`
-/

namespace A243409.P14600553323670736771
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064976 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A243409.P14600553323670736771

/-! ## A243409.P5317006642155586669

`p?[record[A064976(A126759(n))]]`
-/

namespace A243409.P5317006642155586669
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064976 (A126759 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A243409.P5317006642155586669

/-! ## A243409.P7825348776826585080

`p?[record[A064976(A133310(n))]]`
-/

namespace A243409.P7825348776826585080
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064976 (A133310 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A243409.P7825348776826585080

/-! ## A243409.P13256616899972039910

`p?[record[A064976(A324347(n))]]`
-/

namespace A243409.P13256616899972039910
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064976 (A324347 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A243409.P13256616899972039910

/-! ## A243409.P4860613570275703535

`p?[record[A064976(A328395(n))]]`
-/

namespace A243409.P4860613570275703535
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064976 (A328395 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A243409.P4860613570275703535

/-!
# A243410: Primes p such that 1000p-1, 1000p-3, 1000p-7 and 1000p-9 are all prime.

The programs for A243410, there is no canonical definition to state claims against.
-/

/-! ## A243410.P6017045995449183344

`p?[A064977(n+1)]`
-/

namespace A243410.P6017045995449183344
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064977 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A243410.P6017045995449183344

/-! ## A243410.P16069903419362666115

`p?[record[A064977(A126759(n))]]`
-/

namespace A243410.P16069903419362666115
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064977 (A126759 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A243410.P16069903419362666115

/-! ## A243410.P15231119315328829576

`p?[record[A064977(A133310(n))]]`
-/

namespace A243410.P15231119315328829576
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064977 (A133310 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A243410.P15231119315328829576

/-! ## A243410.P6091564876383738528

`p?[record[A064977(A236858(n))]]`
-/

namespace A243410.P6091564876383738528
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064977 (A236858 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A243410.P6091564876383738528

/-! ## A243410.P5079028139376048092

`p?[record[A064977(A286544(n))]]`
-/

namespace A243410.P5079028139376048092
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064977 (A286544 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A243410.P5079028139376048092

/-!
# A243412: Number of Dyck paths of semilength n avoiding the consecutive steps UDUUDU (with U=(1,1), D=(1,-1)).

The programs for A243412, there is no canonical definition to state claims against.
-/

/-! ## A243412.P2740966838566432023

`A243366(A038548(∏[∑{e}[n+1, #]+1]))`
-/

namespace A243412.P2740966838566432023
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243366 (A038548 (∏ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A243412.P2740966838566432023

/-! ## A243412.P14259592437976261355

`A243366(lt[A362562(3*n), A243366(n)])`
-/

namespace A243412.P14259592437976261355
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362562 (3 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243366 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243366 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A243412.P14259592437976261355

/-! ## A243412.P16544532261531600366

`A243366(A233693(n+1)%A018487(n+1))`
-/

namespace A243412.P16544532261531600366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243366 (Int.tmod (A233693 (n + 1)) (A018487 (n + 1))).toNat

end

end A243412.P16544532261531600366

/-! ## A243412.P11684144798902686913

`A243366(lt[A000073(n), A243366(n)])`
-/

namespace A243412.P11684144798902686913
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000073 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243366 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243366 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A243412.P11684144798902686913

/-! ## A243412.P1793257844947869111

`A243366(lt[A354757(n), A243366(n)])`
-/

namespace A243412.P1793257844947869111
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354757 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243366 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243366 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A243412.P1793257844947869111

/-!
# A243413: Number of Dyck paths of semilength n having exactly 1 occurrence of the consecutive steps UDUUDU (with U=(1,1), D=(1,-1)).

The programs for A243413, there is no canonical definition to state claims against.
-/

/-! ## A243413.P1275900528043822578

`record[gcd(A243366(n+2), A275326(n))]`
-/

namespace A243413.P1275900528043822578
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A243366 (n + 2)) (A275326 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A243413.P1275900528043822578

/-! ## A243413.P11898249992580997493

`A248607(A026641(n+1))`
-/

namespace A243413.P11898249992580997493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248607 (A026641 (n + 1)).toNat

end

end A243413.P11898249992580997493

/-!
# A243414: Number of Dyck paths of semilength n having exactly 2 (possibly overlapping) occurrences of the consecutive steps UDUUDU (with U=(1,1), D=(1,-1)).

The programs for A243414, there is no canonical definition to state claims against.
-/

/-! ## A243414.P3823667080955372116

`∑[A099036(A062886(n))]`
-/

namespace A243414.P3823667080955372116
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099036 (A062886 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A243414.P3823667080955372116

/-!
# A243415: Number of Dyck paths of semilength n having exactly 3 (possibly overlapping) occurrences of the consecutive steps UDUUDU (with U=(1,1), D=(1,-1)).

The programs for A243415, there is no canonical definition to state claims against.
-/

/-! ## A243415.P16110396664559312194

`∑[∑[A020912(A050231(2*(n+2)))]]`
-/

namespace A243415.P16110396664559312194
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020912 (A050231 (2 * (n + 2))).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A243415.P16110396664559312194

/-!
# A243416: Number of Dyck paths of semilength n having exactly 4 (possibly overlapping) occurrences of the consecutive steps UDUUDU (with U=(1,1), D=(1,-1)).

The programs for A243416, there is no canonical definition to state claims against.
-/

/-! ## A243416.P874936973524539196

`A059036(A163038(n+1)+1)`
-/

namespace A243416.P874936973524539196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059036 (A163038 (n + 1) + 1).toNat

end

end A243416.P874936973524539196

/-!
# A243423: Number of divisors of A243220(n).

The programs for A243423, there is no canonical definition to state claims against.
-/

/-! ## A243423.P1194333455650398216

`A000005(A243220(n+1))`
-/

namespace A243423.P1194333455650398216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A243220 (n + 1)).toNat

end

end A243423.P1194333455650398216

/-! ## A243423.P18424906568801569510

`∑{d}[A243220(n+1), A087049(A008833(#))]`
-/

namespace A243423.P18424906568801569510
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243220 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A087049 (A008833 d).toNat

end

end A243423.P18424906568801569510

/-! ## A243423.P17865968582534026056

`∑{d}[A243220(n+1), A057427(#)]`
-/

namespace A243423.P17865968582534026056
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243220 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A057427 d

end

end A243423.P17865968582534026056

/-! ## A243423.P13525265986800321115

`∑{d}[A243220(n+1), A033999(#)²]`
-/

namespace A243423.P13525265986800321115
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243220 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A033999 d ^ 2

end

end A243423.P13525265986800321115

/-! ## A243423.P16471046571946805913

`∑{d}[A243220(n+1), A008833(A076396(#))]`
-/

namespace A243423.P16471046571946805913
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243220 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A008833 (A076396 d).toNat

end

end A243423.P16471046571946805913

/-! ## A243423.P12307968268417624572

`∑{d}[A243220(n+1), A001221(A246655(#))]`
-/

namespace A243423.P12307968268417624572
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243220 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A001221 (A246655 d).toNat

end

end A243423.P12307968268417624572

/-! ## A243423.P11344686506857381605

`∑{d}[A243220(n+1), A033999(2*#)]`
-/

namespace A243423.P11344686506857381605
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243220 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A033999 (2 * d)

end

end A243423.P11344686506857381605

/-! ## A243423.P2872979320350363969

`∑{d}[A243220(n+1), A033630(A000040(#))]`
-/

namespace A243423.P2872979320350363969
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243220 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A033630 (A000040 d).toNat

end

end A243423.P2872979320350363969

/-! ## A243423.P6975583501053638223

`∑{d}[A243220(n+1), A087049(A243220(#)²)]`
-/

namespace A243423.P6975583501053638223
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243220 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A087049 (A243220 d ^ 2).toNat

end

end A243423.P6975583501053638223

/-! ## A243423.P3300319461066429666

`∑{d}[A243220(n+1), A087049(#²)]`
-/

namespace A243423.P3300319461066429666
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243220 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A087049 (d ^ 2)

end

end A243423.P3300319461066429666

/-! ## A243423.P5791669147671174251

`A000005(∏{e}[A002183(n+1), #+1])`
-/

namespace A243423.P5791669147671174251
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002183 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, (Nat.factorization (f1 n).natAbs p + 1))

end

end A243423.P5791669147671174251

/-! ## A243423.P2071248388603073811

`A000005(A000005(A002183(n+1)))`
-/

namespace A243423.P2071248388603073811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A000005 (A002183 (n + 1)).toNat).toNat

end

end A243423.P2071248388603073811

/-! ## A243423.P15094176636600454621

`A000005(A000005(record[A053212(n+1)]))`
-/

namespace A243423.P15094176636600454621
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053212 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A000005 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat).toNat

end

end A243423.P15094176636600454621

/-! ## A243423.P16541384210690013345

`A000005(A000005(record[A349608(n+1)]))`
-/

namespace A243423.P16541384210690013345
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349608 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A000005 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat).toNat

end

end A243423.P16541384210690013345

/-! ## A243423.P4515820243025369175

`A000005(A000005(record[A146288(n+1)]))`
-/

namespace A243423.P4515820243025369175
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146288 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A000005 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat).toNat

end

end A243423.P4515820243025369175

/-! ## A243423.P18021700142586574388

`A010553(A002183(n+1))`
-/

namespace A243423.P18021700142586574388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010553 (A002183 (n + 1)).toNat

end

end A243423.P18021700142586574388

/-!
# A243424: Triangle T(n,k) read by rows of number of ways k domicules can be placed on an n X n square (n >= 0, 0 <= k <= floor(n^2/2)).

The programs for A243424, there is no canonical definition to state claims against.
-/

/-! ## A243424.P13344799866036354157

`A114626(or(9, A166444(n)))`
-/

namespace A243424.P13344799866036354157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114626 (Int.lor 9 (A166444 n)).toNat

end

end A243424.P13344799866036354157

/-!
# A243425: G.f. A(x) satisfies: coefficient of x^n in A(x)^(2*n) equals A005260(n) = Sum_{k=0..n} C(n,k)^4.

The programs for A243425, there is no canonical definition to state claims against.
-/

/-! ## A243425.P615735428232785041

`A331677(A321965(n)+2)`
-/

namespace A243425.P615735428232785041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331677 (A321965 n + 2).toNat

end

end A243425.P615735428232785041

/-!
# A243426: G.f. satisfies: a(n) = [x^n] ( A(x)^(n+1) + 1/A(x)^(n+1) ) / (n+1) for n>1, with a(0)=a(1)=1.

The programs for A243426, there is no canonical definition to state claims against.
-/

/-! ## A243426.P5458234410357141402

`A004526(A235345(n)+A134041(n))`
-/

namespace A243426.P5458234410357141402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A235345 n + A134041 n).toNat

end

end A243426.P5458234410357141402

/-! ## A243426.P17222582716896401833

`A255070(A235345(n))+A048833(n)`
-/

namespace A243426.P17222582716896401833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255070 (A235345 n).toNat + A048833 n

end

end A243426.P17222582716896401833

/-!
# A243427: Floored (rational) values of sqrt(xy) such that sqrt(x) + sqrt(y) = sqrt(xy).

The programs for A243427, the canonical program `A243427.P1255853682823992583` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A243427 has offset 1).

The definition of A243427 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A243427.P1255853682823992583

`floor((n+2)²/(n+1))`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A243427

/-- `floor((n+2)²/(n+1))` -/
def P1255853682823992583.Spec : Prop :=
  ∀ n, P1255853682823992583.a n = A243427 (n + 1)

theorem P1255853682823992583.correct : P1255853682823992583.Spec := by
  intro n
  simp only [A243427, Nat.add_sub_cancel]

end A243427

/-!
# A243429: Primes of the form 2^n + 39.

The programs for A243429, there is no canonical definition to state claims against.
-/

/-! ## A243429.P15269351641816289792

`p?[2^n+39]`
-/

namespace A243429.P15269351641816289792
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n + 39

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A243429.P15269351641816289792

/-! ## A243429.P16092219704416363527

`∏{d}[p?[∑[2*a(n-1)]], #]` with `a(0)=40, a(1)=1`
-/

namespace A243429.P16092219704416363527
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.rec [40, 1] fun n f3 =>
  2 * f3 (n - 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n), d

end

end A243429.P16092219704416363527

/-! ## A243429.P1181445257834479850

`∏{p}[p?[A000079(n)+39], #]`
-/

namespace A243429.P1181445257834479850
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n + 39

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A243429.P1181445257834479850

/-! ## A243429.P16631479085952657836

`record[A006530(A126646(n)+40)]`
-/

namespace A243429.P16631479085952657836
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A126646 n + 40).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A243429.P16631479085952657836

/-! ## A243429.P3834330311432679094

`record[A006530(A255047(n)+40)]`
-/

namespace A243429.P3834330311432679094
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A255047 n + 40).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A243429.P3834330311432679094

/-!
# A243430: Primes of the form 2^n + 43.

The programs for A243430, there is no canonical definition to state claims against.
-/

/-! ## A243430.P12724223677943907853

`p?[2^n+43]`
-/

namespace A243430.P12724223677943907853
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n + 43

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A243430.P12724223677943907853

/-! ## A243430.P9892658230184716739

`∏{d}[p?[∑[2*a(n-1)]], #]` with `a(0)=44, a(1)=1`
-/

namespace A243430.P9892658230184716739
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.rec [44, 1] fun n f3 =>
  2 * f3 (n - 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n), d

end

end A243430.P9892658230184716739

/-! ## A243430.P203364340852742439

`or(1, p?[∑[2*a(n-1)]+49])` with `a(0)=-5, a(1)=0, a(2)=1`
-/

namespace A243430.P203364340852742439
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [-5, 0, 1] fun n f2 =>
  2 * f2 (n - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 49

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A243430.P203364340852742439

/-!
# A243431: Primes of the form 2^n + 45.

The programs for A243431, there is no canonical definition to state claims against.
-/

/-! ## A243431.P17438491214806011716

`p?[2^n+45]`
-/

namespace A243431.P17438491214806011716
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n + 45

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A243431.P17438491214806011716

/-! ## A243431.P8654870825454470987

`∏{d}[p?[∑[2*a(n-1)]], #]` with `a(0)=6, a(1)=40, a(2)=1`
-/

namespace A243431.P8654870825454470987
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.rec [6, 40, 1] fun n f3 =>
  2 * f3 (n - 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n), d

end

end A243431.P8654870825454470987

/-! ## A243431.P7150334565305440350

`or(1, p?[A000225(n)+46])`
-/

namespace A243431.P7150334565305440350
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 n + 46

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A243431.P7150334565305440350

/-! ## A243431.P348179766808243901

`record[A006530(2^(n+1)+45)]`
-/

namespace A243431.P348179766808243901
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (2 ^ (n + 1) + 45)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A243431.P348179766808243901

/-! ## A243431.P7526113494427364177

`record[A020639(A000079(n+1)+45)]`
-/

namespace A243431.P7526113494427364177
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A000079 (n + 1) + 45).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A243431.P7526113494427364177

/-!
# A243435: O.g.f.: exp( Integral Sum_{n>=1} n! * n^(n-1) * x^(n-1) / Product_{k=1..n} (1 - k*n*x) dx ).

The programs for A243435, there is no canonical definition to state claims against.
-/

/-! ## A243435.P1243264115403066158

`A063966(ceil(sqrt(7^C(n, 2))))`
-/

namespace A243435.P1243264115403066158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063966 ⌈Real.sqrt (7 ^ Nat.choose n 2 : ℝ)⌉.toNat

end

end A243435.P1243264115403066158

/-!
# A243436: Numbers n such that n^2-n-1 is semiprime.

The programs for A243436, the canonical program `A243436.P14551498086480641049` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A243436 has offset 1).

The definition of A243436 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4297 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A243436.P14551498086480641049

`eq[6, A278247(n)]+2`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A243436

/-- `eq[6, A278247(n)]+2` -/
def P14551498086480641049.Spec : Prop :=
  ∀ n, (P14551498086480641049.a n : ℤ) = A243436 (n + 1)

theorem P14551498086480641049.correct : P14551498086480641049.Spec := by
  intro n
  simp only [A243436, Nat.add_sub_cancel]

end A243436

/-! ## A243436.P12858721088398054971

`eq[6, A278247(abs(2-n))]`
-/

namespace A243436.P12858721088398054971
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278247 |2 - (n : ℤ)|.toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A243436.P12858721088398054971

namespace A243436

/-- `eq[6, A278247(abs(2-n))]` -/
def P12858721088398054971.Spec : Prop :=
  ∀ n, (P12858721088398054971.a n : ℤ) = A243436 (n + 1)

end A243436

/-! ## A243436.P11935161500789417669

`A009056(eq[6, A278247(n)])`
-/

namespace A243436.P11935161500789417669
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278247 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009056 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A243436.P11935161500789417669

namespace A243436

/-- `A009056(eq[6, A278247(n)])` -/
def P11935161500789417669.Spec : Prop :=
  ∀ n, P11935161500789417669.a n = A243436 (n + 1)

end A243436

/-! ## A243436.P17584542327140299373

`2-A001489(eq[6, A278247(n)])`
-/

namespace A243436.P17584542327140299373
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278247 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A001489 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A243436.P17584542327140299373

namespace A243436

/-- `2-A001489(eq[6, A278247(n)])` -/
def P17584542327140299373.Spec : Prop :=
  ∀ n, P17584542327140299373.a n = A243436 (n + 1)

end A243436

/-! ## A243436.P12636812052949991221

`eq[2, ∑{e}[1-n²+n, #]]`
-/

namespace A243436.P12636812052949991221
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (n ^ 2 : ℤ) + (n : ℤ)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n).natAbs, Nat.factorization (f3 n).natAbs p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A243436.P12636812052949991221

namespace A243436

/-- `eq[2, ∑{e}[1-n²+n, #]]` -/
def P12636812052949991221.Spec : Prop :=
  ∀ n, (P12636812052949991221.a n : ℤ) = A243436 (n + 1)

end A243436

/-! ## A243436.P5579473349628031474

`lt[(2-∑{e}[n²-(n+1), #])², 1]`
-/

namespace A243436.P5579473349628031474
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - (n + 1 : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - ((∑ p ∈ Nat.primeFactors (f2 n).natAbs, Nat.factorization (f2 n).natAbs p : ℕ) : ℤ)) ^ 2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n

end

end A243436.P5579473349628031474

namespace A243436

/-- `lt[(2-∑{e}[n²-(n+1), #])², 1]` -/
def P5579473349628031474.Spec : Prop :=
  ∀ n, (P5579473349628031474.a n : ℤ) = A243436 (n + 1)

end A243436

/-! ## A243436.P7747849920706190033

`eq[2, A001222(abs(1-n²+n))]`
-/

namespace A243436.P7747849920706190033
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 |1 - (n ^ 2 : ℤ) + (n : ℤ)|.toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A243436.P7747849920706190033

namespace A243436

/-- `eq[2, A001222(abs(1-n²+n))]` -/
def P7747849920706190033.Spec : Prop :=
  ∀ n, (P7747849920706190033.a n : ℤ) = A243436 (n + 1)

end A243436

/-! ## A243436.P6394753613111600956

`eq[2, A001222((n+1)²+n)]+2`
-/

namespace A243436.P6394753613111600956
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 ((n + 1) ^ 2 + n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A243436.P6394753613111600956

namespace A243436

/-- `eq[2, A001222((n+1)²+n)]+2` -/
def P6394753613111600956.Spec : Prop :=
  ∀ n, (P6394753613111600956.a n : ℤ) = A243436 (n + 1)

end A243436

/-! ## A243436.P14980565549572909614

`eq[2, A033273(A106230(n+1)-n)]`
-/

namespace A243436.P14980565549572909614
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033273 (A106230 (n + 1) - (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A243436.P14980565549572909614

namespace A243436

/-- `eq[2, A033273(A106230(n+1)-n)]` -/
def P14980565549572909614.Spec : Prop :=
  ∀ n, (P14980565549572909614.a n : ℤ) = A243436 (n + 1)

end A243436

/-! ## A243436.P17816103639702868256

`eq[2, A046645(abs(n²-(n+1)))]`
-/

namespace A243436.P17816103639702868256
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046645 |(n ^ 2 : ℤ) - (n + 1 : ℤ)|.toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A243436.P17816103639702868256

namespace A243436

/-- `eq[2, A046645(abs(n²-(n+1)))]` -/
def P17816103639702868256.Spec : Prop :=
  ∀ n, (P17816103639702868256.a n : ℤ) = A243436 (n + 1)

end A243436

/-!
# A243437: Primes of the form 3^k + 16.

The programs for A243437, there is no canonical definition to state claims against.
-/

/-! ## A243437.P2138780259193926940

`3^A205647(n+1)+16`
-/

namespace A243437.P2138780259193926940
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) ^ (A205647 (n + 1) : ℤ) + 16

end

end A243437.P2138780259193926940

/-! ## A243437.P5271856798629387930

`A205646(A205647(n+1))`
-/

namespace A243437.P5271856798629387930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205646 (A205647 (n + 1)).toNat

end

end A243437.P5271856798629387930

/-! ## A243437.P15279503518833768281

`∩[A004051(n+1), A205646(n)]`
-/

namespace A243437.P15279503518833768281
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004051 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205646 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A243437.P15279503518833768281

/-! ## A243437.P17327206990512720967

`p?[3^n+16]`
-/

namespace A243437.P17327206990512720967
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ n + 16

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A243437.P17327206990512720967

/-!
# A243439: Primes of the form 3^k + 26.

The programs for A243439, there is no canonical definition to state claims against.
-/

/-! ## A243439.P4339411053666301956

`3^A219044(n+1)+26`
-/

namespace A243439.P4339411053666301956
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) ^ (A219044 (n + 1) : ℤ) + 26

end

end A243439.P4339411053666301956

/-! ## A243439.P13210704184022220692

`A205646(A219044(n+1))+10`
-/

namespace A243439.P13210704184022220692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205646 (A219044 (n + 1)).toNat + 10

end

end A243439.P13210704184022220692

/-! ## A243439.P3292195955742612709

`p?[3^n+26]`
-/

namespace A243439.P3292195955742612709
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ n + 26

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A243439.P3292195955742612709

/-!
# A243440: O.g.f.: exp( Integral Sum_{n>=1} n! * n^(n-1) * x^(n-1) / Product_{k=1..n} (1 - k*x) dx ).

The programs for A243440, there is no canonical definition to state claims against.
-/

/-! ## A243440.P1894736901278258961

`A342520(∑[∑[∑[n]]])`
-/

namespace A243440.P1894736901278258961
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342520 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A243440.P1894736901278258961

/-!
# A243441: Primes p such that p + A000120(p) is also a prime, where A000120 = sum of digits in base 2 = Hamming weight.

The programs for A243441, there is no canonical definition to state claims against.
-/

/-! ## A243441.P10214158295359923801

`p?[n*A078898(A092391(n))]`
-/

namespace A243441.P10214158295359923801
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A078898 (A092391 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A243441.P10214158295359923801

/-! ## A243441.P7123194043836268581

`A140549(A064450(n))`
-/

namespace A243441.P7123194043836268581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140549 (A064450 n).toNat

end

end A243441.P7123194043836268581

/-! ## A243441.P18390639989644111084

`p?[∑[A055340(A213213(n))]]`
-/

namespace A243441.P18390639989644111084
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055340 (A213213 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A243441.P18390639989644111084

/-!
# A243442: Primes p such that, in base 2, p - digitsum(p) is also a prime.

The programs for A243442, the canonical program `A243442.P18328848742917092236` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A243442 has offset 1).

The definition of A243442 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 499 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A243442.P18328848742917092236

`p?[A000040(n+1)*A001222(A080085(n+1))]`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A243442

/-- `p?[A000040(n+1)*A001222(A080085(n+1))]` -/
def P18328848742917092236.Spec : Prop :=
  ∀ n, P18328848742917092236.a n = A243442 (n + 1)

theorem P18328848742917092236.correct : P18328848742917092236.Spec := by
  intro n
  simp only [A243442, Nat.add_sub_cancel]

end A243442

/-! ## A243442.P3987639832577675955

`p?[A240751(p?[A005187(n)])+1]`
-/

namespace A243442.P3987639832577675955
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005187 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240751 (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A243442.P3987639832577675955

namespace A243442

/-- `p?[A240751(p?[A005187(n)])+1]` -/
def P3987639832577675955.Spec : Prop :=
  ∀ n, P3987639832577675955.a n = A243442 (n + 1)

end A243442

/-! ## A243442.P17555685075237135017

`p?[A108918(p?[2*n+1]+1)]`
-/

namespace A243442.P17555685075237135017
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108918 (f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n) + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A243442.P17555685075237135017

namespace A243442

/-- `p?[A108918(p?[2*n+1]+1)]` -/
def P17555685075237135017.Spec : Prop :=
  ∀ n, P17555685075237135017.a n = A243442 (n + 1)

end A243442

/-! ## A243442.P15036311082235646276

`p?[A108918(A055670(n+1))]`
-/

namespace A243442.P15036311082235646276
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108918 (A055670 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A243442.P15036311082235646276

namespace A243442

/-- `p?[A108918(A055670(n+1))]` -/
def P15036311082235646276.Spec : Prop :=
  ∀ n, P15036311082235646276.a n = A243442 (n + 1)

end A243442

/-! ## A243442.P1998210182621128600

`p?[A108918(A008864(n+2))]`
-/

namespace A243442.P1998210182621128600
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108918 (A008864 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A243442.P1998210182621128600

namespace A243442

/-- `p?[A108918(A008864(n+2))]` -/
def P1998210182621128600.Spec : Prop :=
  ∀ n, P1998210182621128600.a n = A243442 (n + 1)

end A243442

/-! ## A243442.P16075607945579979888

`p?[A108918(A004139(n+1)+1)]`
-/

namespace A243442.P16075607945579979888
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108918 (A004139 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A243442.P16075607945579979888

namespace A243442

/-- `p?[A108918(A004139(n+1)+1)]` -/
def P16075607945579979888.Spec : Prop :=
  ∀ n, P16075607945579979888.a n = A243442 (n + 1)

end A243442

/-! ## A243442.P17632678750081736783

`p?[A108918(A065091(n+1)+1)]`
-/

namespace A243442.P17632678750081736783
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108918 (A065091 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A243442.P17632678750081736783

namespace A243442

/-- `p?[A108918(A065091(n+1)+1)]` -/
def P17632678750081736783.Spec : Prop :=
  ∀ n, P17632678750081736783.a n = A243442 (n + 1)

end A243442

/-! ## A243442.P12244343238713490603

`p?[A108918(A000040(n+2)+1)]`
-/

namespace A243442.P12244343238713490603
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108918 (A000040 (n + 2) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A243442.P12244343238713490603

namespace A243442

/-- `p?[A108918(A000040(n+2)+1)]` -/
def P12244343238713490603.Spec : Prop :=
  ∀ n, P12244343238713490603.a n = A243442 (n + 1)

end A243442

/-! ## A243442.P4305233093528971846

`p?[A108918(A000203(A004139(n+1)))]`
-/

namespace A243442.P4305233093528971846
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108918 (A000203 (A004139 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A243442.P4305233093528971846

namespace A243442

/-- `p?[A108918(A000203(A004139(n+1)))]` -/
def P4305233093528971846.Spec : Prop :=
  ∀ n, P4305233093528971846.a n = A243442 (n + 1)

end A243442

/-! ## A243442.P315790550827152045

`p?[A108918(A014681(A000040(n+1)))]`
-/

namespace A243442.P315790550827152045
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108918 (A014681 (A000040 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A243442.P315790550827152045

namespace A243442

/-- `p?[A108918(A014681(A000040(n+1)))]` -/
def P315790550827152045.Spec : Prop :=
  ∀ n, P315790550827152045.a n = A243442 (n + 1)

end A243442

/-! ## A243442.P15409464286018181672

`p?[A108918(A000203(A065091(n+1)))]`
-/

namespace A243442.P15409464286018181672
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108918 (A000203 (A065091 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A243442.P15409464286018181672

namespace A243442

/-- `p?[A108918(A000203(A065091(n+1)))]` -/
def P15409464286018181672.Spec : Prop :=
  ∀ n, P15409464286018181672.a n = A243442 (n + 1)

end A243442

/-! ## A243442.P2928374667359407736

`p?[A108918(A192066(A008578(n+1)))]`
-/

namespace A243442.P2928374667359407736
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108918 (A192066 (A008578 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A243442.P2928374667359407736

namespace A243442

/-- `p?[A108918(A192066(A008578(n+1)))]` -/
def P2928374667359407736.Spec : Prop :=
  ∀ n, P2928374667359407736.a n = A243442 (n + 1)

end A243442

/-!
# A243449: Primes of the form n^2 + 14.

The programs for A243449, there is no canonical definition to state claims against.
-/

/-! ## A243449.P2612548335432926355

`A121250(n+1)²+14`
-/

namespace A243449.P2612548335432926355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121250 (n + 1) ^ 2 + 14

end

end A243449.P2612548335432926355

/-! ## A243449.P8258235951560116795

`A016945(A121817(n+1))²+14`
-/

namespace A243449.P8258235951560116795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016945 (A121817 (n + 1)).toNat ^ 2 + 14

end

end A243449.P8258235951560116795

/-! ## A243449.P15668183956789522262

`A114962(A121250(n+1))`
-/

namespace A243449.P15668183956789522262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114962 (A121250 (n + 1)).toNat

end

end A243449.P15668183956789522262

/-! ## A243449.P8689658839234464764

`A241751(A121250(n+1))+A118824(2*n+1)`
-/

namespace A243449.P8689658839234464764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241751 (A121250 (n + 1)).toNat + A118824 (2 * n + 1)

end

end A243449.P8689658839234464764

/-! ## A243449.P16359541719512829466

`A241751(A121250(n+1))-A102457(2*n+3)`
-/

namespace A243449.P16359541719512829466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241751 (A121250 (n + 1)).toNat - A102457 (2 * n + 3)

end

end A243449.P16359541719512829466

/-! ## A243449.P6003110981954368839

`A241751(A121250(n+1))-A089120(2*n+5)`
-/

namespace A243449.P6003110981954368839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241751 (A121250 (n + 1)).toNat - A089120 (2 * n + 5)

end

end A243449.P6003110981954368839

/-! ## A243449.P14753917717176495114

`A241751(A121250(n+1))-2%eq[1, A007652(n+1)]`
-/

namespace A243449.P14753917717176495114
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007652 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241751 (A121250 (n + 1)).toNat - ((2 % SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℕ) : ℤ)

end

end A243449.P14753917717176495114

/-! ## A243449.P15724673002257840542

`∩[A139878(n+1), A114962(n)]`
-/

namespace A243449.P15724673002257840542
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139878 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114962 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A243449.P15724673002257840542

/-! ## A243449.P2240519582371270324

`∩[A139878(n+1), A242412(n+1)]`
-/

namespace A243449.P2240519582371270324
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139878 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242412 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A243449.P2240519582371270324

/-!
# A243450: Primes of the form n^2 + 15.

The programs for A243450, there is no canonical definition to state claims against.
-/

/-! ## A243450.P13998785155139948268

`A121982(n+1)²+15`
-/

namespace A243450.P13998785155139948268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121982 (n + 1) ^ 2 + 15

end

end A243450.P13998785155139948268

/-! ## A243450.P221506844934196633

`A241750(A121982(n+1))`
-/

namespace A243450.P221506844934196633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241750 (A121982 (n + 1)).toNat

end

end A243450.P221506844934196633

/-! ## A243450.P9879034282810089500

`A114962(A121982(n+1))+A057427(n+1)`
-/

namespace A243450.P9879034282810089500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114962 (A121982 (n + 1)).toNat + A057427 (n + 1)

end

end A243450.P9879034282810089500

/-! ## A243450.P3282906051836213510

`A282738(2*n)+A114962(A121982(n+1))`
-/

namespace A243450.P3282906051836213510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282738 (2 * n) + A114962 (A121982 (n + 1)).toNat

end

end A243450.P3282906051836213510

/-! ## A243450.P9005731354626390295

`A000027(n+1)+A114962(A121982(n+1))-n`
-/

namespace A243450.P9005731354626390295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (n + 1) + (A114962 (A121982 (n + 1)).toNat - (n : ℤ))

end

end A243450.P9005731354626390295

/-! ## A243450.P17001857277391711681

`A114962(A121982(n+1))+A057979(A005843(n))`
-/

namespace A243450.P17001857277391711681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114962 (A121982 (n + 1)).toNat + A057979 (A005843 n).toNat

end

end A243450.P17001857277391711681

/-! ## A243450.P13839148018922602770

`A114962(A121982(n+1))+A001222(A065091(n+1))`
-/

namespace A243450.P13839148018922602770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114962 (A121982 (n + 1)).toNat + A001222 (A065091 (n + 1)).toNat

end

end A243450.P13839148018922602770

/-! ## A243450.P17110380463676610149

`A114962(A121982(n+1))+A001222(A157996(n+1))`
-/

namespace A243450.P17110380463676610149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114962 (A121982 (n + 1)).toNat + A001222 (A157996 (n + 1)).toNat

end

end A243450.P17110380463676610149

/-! ## A243450.P4717880677307298746

`A114962(A121982(n+1))+A010051(A089123(n+1))`
-/

namespace A243450.P4717880677307298746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114962 (A121982 (n + 1)).toNat + A010051 (A089123 (n + 1)).toNat

end

end A243450.P4717880677307298746

/-! ## A243450.P2295251541582671121

`∩[A107168(n+1), A241750(n)]`
-/

namespace A243450.P2295251541582671121
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107168 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241750 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A243450.P2295251541582671121

/-! ## A243450.P9329354057436762527

`p?[n²+15]`
-/

namespace A243450.P9329354057436762527
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 + 15

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A243450.P9329354057436762527

/-! ## A243450.P1847428413356802548

`or(1, p?[n^2+15])`
-/

namespace A243450.P1847428413356802548
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 + 15

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A243450.P1847428413356802548

/-! ## A243450.P823144556577324611

`∏{d}[p?[n^2+15], #]`
-/

namespace A243450.P823144556577324611
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 + 15

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n), d

end

end A243450.P823144556577324611

/-! ## A243450.P2185243113554988807

`∑{p}[p?[n^2+15], #]`
-/

namespace A243450.P2185243113554988807
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 + 15

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), p

end

end A243450.P2185243113554988807

/-!
# A243451: Primes of the form n^2 + 16.

The programs for A243451, there is no canonical definition to state claims against.
-/

/-! ## A243451.P10097823481744409821

`A122062(n+1)²+16`
-/

namespace A243451.P10097823481744409821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122062 (n + 1) ^ 2 + 16

end

end A243451.P10097823481744409821

/-! ## A243451.P17771904915190477333

`A241751(A122062(n+1))`
-/

namespace A243451.P17771904915190477333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241751 (A122062 (n + 1)).toNat

end

end A243451.P17771904915190477333

/-! ## A243451.P11399180586490643945

`A241847(A122062(n+1))-A033999(2*n)`
-/

namespace A243451.P11399180586490643945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241847 (A122062 (n + 1)).toNat - A033999 (2 * n)

end

end A243451.P11399180586490643945

/-! ## A243451.P554047981415792223

`A040059(A016825(n))+A000290(A122062(n+1))`
-/

namespace A243451.P554047981415792223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040059 (A016825 n).toNat + A000290 (A122062 (n + 1)).toNat

end

end A243451.P554047981415792223

/-! ## A243451.P11565154311575694866

`∩[A281792(n+1), A241751(n)]`
-/

namespace A243451.P11565154311575694866
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281792 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241751 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A243451.P11565154311575694866

/-! ## A243451.P3743268380879689572

`∩[A028916(n+1), A241751(n)]`
-/

namespace A243451.P3743268380879689572
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028916 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241751 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A243451.P3743268380879689572

/-! ## A243451.P11989795094440591534

`∩[A293394(n+1), A241751(n)]`
-/

namespace A243451.P11989795094440591534
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293394 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241751 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A243451.P11989795094440591534

/-! ## A243451.P5883031715589189920

`p?[n²+16]`
-/

namespace A243451.P5883031715589189920
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 + 16

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A243451.P5883031715589189920

/-! ## A243451.P8273421331176489482

`or(1, p?[n^2+16])`
-/

namespace A243451.P8273421331176489482
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 + 16

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A243451.P8273421331176489482

/-! ## A243451.P8225078984319506164

`∏{d}[p?[n^2+16], #]`
-/

namespace A243451.P8225078984319506164
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 + 16

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n), d

end

end A243451.P8225078984319506164

/-! ## A243451.P9941854480514313779

`∑{p}[p?[n^2+16], #]`
-/

namespace A243451.P9941854480514313779
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 + 16

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), p

end

end A243451.P9941854480514313779

/-!
# A243456: a(n+6) = 6*a(n+4) - 12*a(n+2) + 8*a(n), a(0)..a(5) = 8,0,9,0,8,0.

The programs for A243456, the canonical program `A243456.P16489095862850402371` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A243456 has offset 0).

The definition of A243456 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A243456.P16489095862850402371

`2^(n/2-4)*(1+(-1)^n)*(n-8)²`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A243456

/-- `2^(n/2-4)*(1+(-1)^n)*(n-8)²` -/
def P16489095862850402371.Spec : Prop :=
  ∀ n, P16489095862850402371.a n = (A243456 n : ℝ)

end A243456

/-!
# A243457: Primes p such that (p reversed)-2 is also a prime.

The programs for A243457, there is no canonical definition to state claims against.
-/

/-! ## A243457.P15534747453714833530

`A004086(p?[A004087(n+1)-2]+2)`
-/

namespace A243457.P15534747453714833530
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004087 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + 2).toNat

end

end A243457.P15534747453714833530

/-! ## A243457.P15475261338507496864

`eq[A061358(A004086(n)), A143862(n)]`
-/

namespace A243457.P15475261338507496864
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061358 (A004086 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143862 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A243457.P15475261338507496864

/-! ## A243457.P14470207695364618871

`p?[(n+1)*A061358(A004086(n+1))]`
-/

namespace A243457.P14470207695364618871
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A061358 (A004086 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A243457.P14470207695364618871

/-! ## A243457.P6320268433194626207

`record[A136019(A271740(n+1))]`
-/

namespace A243457.P6320268433194626207
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136019 (A271740 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A243457.P6320268433194626207

/-!
# A243458: Primes p such that (p reversed)-3 is also a prime.

The programs for A243458, there is no canonical definition to state claims against.
-/

/-! ## A243458.P13208483492335409425

`A004086(p?[A004087(n+1)-3]+3)`
-/

namespace A243458.P13208483492335409425
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004087 (n + 1) - 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + 3).toNat

end

end A243458.P13208483492335409425

/-!
# A243459: Primes p such that (p reversed)-5 is also a prime.

The programs for A243459, there is no canonical definition to state claims against.
-/

/-! ## A243459.P11127118750510445899

`∩[A193301(n+1), A359702(n+1)]`
-/

namespace A243459.P11127118750510445899
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193301 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359702 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A243459.P11127118750510445899

/-!
# A243464: Number of ways 2 domicules can be placed on an n X n square.

The programs for A243464, there is no canonical definition to state claims against.
-/

/-! ## A243464.P15667599465917787173

`A048865(C(∑[n]², ceil(n/2)))`
-/

namespace A243464.P15667599465917787173
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048865 (Nat.choose ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2) ⌈(n : ℚ) / 2⌉.toNat)

end

end A243464.P15667599465917787173

/-!
# A243465: Number of ways 3 domicules can be placed on an n X n square.

The programs for A243465, there is no canonical definition to state claims against.
-/

/-! ## A243465.P17181214946726601241

`6*A332579(A056105(n))`
-/

namespace A243465.P17181214946726601241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A332579 (A056105 n).toNat

end

end A243465.P17181214946726601241

/-!
# A243466: Number of ways 4 domicules can be placed on an n X n square.

The programs for A243466, there is no canonical definition to state claims against.
-/

/-! ## A243466.P16276921718624970383

`A346870(A276122(n)*A338748(n))`
-/

namespace A243466.P16276921718624970383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346870 (A276122 n * A338748 n).toNat

end

end A243466.P16276921718624970383

/-!
# A243468: O.g.f.: exp( Integral Sum_{n>=1} (2*n-1)!/(n-1)! * x^(n-1) / Product_{k=1..n} (1 - (2*k-1)*x) dx ).

The programs for A243468, there is no canonical definition to state claims against.
-/

/-! ## A243468.P11965232623728341143

`A317677(n+1)-A025461(A007785(n))`
-/

namespace A243468.P11965232623728341143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317677 (n + 1) - A025461 (A007785 n).toNat

end

end A243468.P11965232623728341143

/-!
# A243469: Denominators of the rational convergents to the periodic continued fraction 1/(2 + 1/(7 + 1/(2 + 1/(7 + ...)))).

The programs for A243469, the canonical program `A243469.P15025580723211482668` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A243469 has offset 1).

The definition of A243469 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A243469.P15025580723211482668

`16*a(n-2)-a(n-4)` with `a(0)=1, a(1)=2, a(2)=15, a(3)=32`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A243469

/-- `16*a(n-2)-a(n-4)` -/
def P15025580723211482668.Spec : Prop :=
  ∀ n, P15025580723211482668.a n = A243469 (n + 1)

theorem P15025580723211482668.correct : P15025580723211482668.Spec := by
  intro n
  simp only [A243469, Nat.add_sub_cancel]

end A243469

/-! ## A243469.P15677675254344324064

`gcd(2, n+1)*A041111(n)`
-/

namespace A243469.P15677675254344324064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.gcd 2 (n + 1) : ℤ) * A041111 n

end

end A243469.P15677675254344324064

namespace A243469

/-- `gcd(2, n+1)*A041111(n)` -/
def P15677675254344324064.Spec : Prop :=
  ∀ n, P15677675254344324064.a n = A243469 (n + 1)

end A243469

/-! ## A243469.P933418451709422207

`A000034(n)*A041111(n)`
-/

namespace A243469.P933418451709422207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 n * A041111 n

end

end A243469.P933418451709422207

namespace A243469

/-- `A000034(n)*A041111(n)` -/
def P933418451709422207.Spec : Prop :=
  ∀ n, P933418451709422207.a n = A243469 (n + 1)

end A243469

/-! ## A243469.P7472522176447376116

`Δ[A032766(n)]*A041111(n)`
-/

namespace A243469.P7472522176447376116
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032766 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A041111 n

end

end A243469.P7472522176447376116

namespace A243469

/-- `Δ[A032766(n)]*A041111(n)` -/
def P7472522176447376116.Spec : Prop :=
  ∀ n, P7472522176447376116.a n = A243469 (n + 1)

end A243469

/-! ## A243469.P4363130194877312787

`ratio[A016116(n)]*A041111(n)`
-/

namespace A243469.P4363130194877312787
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016116 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℚ) / (f1 n : ℚ) * (A041111 n : ℚ)

end

end A243469.P4363130194877312787

namespace A243469

/-- `ratio[A016116(n)]*A041111(n)` -/
def P4363130194877312787.Spec : Prop :=
  ∀ n, P4363130194877312787.a n = (A243469 (n + 1) : ℚ)

end A243469

/-! ## A243469.P15410112206527062200

`(A000035(n)+1)*A041111(n)`
-/

namespace A243469.P15410112206527062200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000035 n + 1) * A041111 n

end

end A243469.P15410112206527062200

namespace A243469

/-- `(A000035(n)+1)*A041111(n)` -/
def P15410112206527062200.Spec : Prop :=
  ∀ n, P15410112206527062200.a n = A243469 (n + 1)

end A243469

/-! ## A243469.P14419042626706144979

`A040001(n+1)*A041111(n)`
-/

namespace A243469.P14419042626706144979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040001 (n + 1) * A041111 n

end

end A243469.P14419042626706144979

namespace A243469

/-- `A040001(n+1)*A041111(n)` -/
def P14419042626706144979.Spec : Prop :=
  ∀ n, P14419042626706144979.a n = A243469 (n + 1)

end A243469

/-! ## A243469.P2401007883456724510

`A014963(A006519(n+1))*A041111(n)`
-/

namespace A243469.P2401007883456724510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A006519 (n + 1)).toNat * A041111 n

end

end A243469.P2401007883456724510

namespace A243469

/-- `A014963(A006519(n+1))*A041111(n)` -/
def P2401007883456724510.Spec : Prop :=
  ∀ n, P2401007883456724510.a n = A243469 (n + 1)

end A243469

/-! ## A243469.P7269421094519853395

`A048788(n+1)/A002530(n+1)*A041111(n)`
-/

namespace A243469.P7269421094519853395
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048788 (n + 1) : ℚ) / (A002530 (n + 1) : ℚ) * (A041111 n : ℚ)

end

end A243469.P7269421094519853395

namespace A243469

/-- `A048788(n+1)/A002530(n+1)*A041111(n)` -/
def P7269421094519853395.Spec : Prop :=
  ∀ n, P7269421094519853395.a n = (A243469 (n + 1) : ℚ)

end A243469

/-! ## A243469.P5860896525917250812

`A041111(n)/A042011(n)*A041241(n)`
-/

namespace A243469.P5860896525917250812
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041111 n : ℚ) / (A042011 n : ℚ) * (A041241 n : ℚ)

end

end A243469.P5860896525917250812

namespace A243469

/-- `A041111(n)/A042011(n)*A041241(n)` -/
def P5860896525917250812.Spec : Prop :=
  ∀ n, P5860896525917250812.a n = (A243469 (n + 1) : ℚ)

end A243469

/-! ## A243469.P14038795669154866447

`A001511(n²+1)*A041111(n)`
-/

namespace A243469.P14038795669154866447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (n ^ 2 + 1) * A041111 n

end

end A243469.P14038795669154866447

namespace A243469

/-- `A001511(n²+1)*A041111(n)` -/
def P14038795669154866447.Spec : Prop :=
  ∀ n, P14038795669154866447.a n = A243469 (n + 1)

end A243469

/-! ## A243469.P8449113755338639233

`A006519(n²+1)*A041111(n)`
-/

namespace A243469.P8449113755338639233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006519 (n ^ 2 + 1) * A041111 n

end

end A243469.P8449113755338639233

namespace A243469

/-- `A006519(n²+1)*A041111(n)` -/
def P8449113755338639233.Spec : Prop :=
  ∀ n, P8449113755338639233.a n = A243469 (n + 1)

end A243469

/-!
# A243470: Numerators of the rational convergents to the periodic continued fraction 1/(2 + 1/(7 + 1/(2 + 1/(7 + ...)))).

The programs for A243470, the canonical program `A243470.P734117941903588768` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A243470 has offset 1).

The definition of A243470 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A243470.P734117941903588768

`16*a(n-2)-a(n-4)` with `a(0)=1, a(1)=7, a(2)=15, a(3)=112`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A243470

/-- `16*a(n-2)-a(n-4)` -/
def P734117941903588768.Spec : Prop :=
  ∀ n, P734117941903588768.a n = A243470 (n + 1)

theorem P734117941903588768.correct : P734117941903588768.Spec := by
  intro n
  simp only [A243470, Nat.add_sub_cancel]

end A243470

/-! ## A243470.P1059509997695766561

`7^(n%2)*A041111(n)`
-/

namespace A243470.P1059509997695766561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (7 ^ (n % 2) : ℤ) * A041111 n

end

end A243470.P1059509997695766561

namespace A243470

/-- `7^(n%2)*A041111(n)` -/
def P1059509997695766561.Spec : Prop :=
  ∀ n, P1059509997695766561.a n = A243470 (n + 1)

end A243470

/-! ## A243470.P1990772775843323798

`A010688(n)*A041111(n)`
-/

namespace A243470.P1990772775843323798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010688 n * A041111 n

end

end A243470.P1990772775843323798

namespace A243470

/-- `A010688(n)*A041111(n)` -/
def P1990772775843323798.Spec : Prop :=
  ∀ n, P1990772775843323798.a n = A243470 (n + 1)

end A243470

/-! ## A243470.P15168593736580474645

`Δ[A042948(A042948(n))]*A041111(n)`
-/

namespace A243470.P15168593736580474645
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042948 (A042948 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A041111 n

end

end A243470.P15168593736580474645

namespace A243470

/-- `Δ[A042948(A042948(n))]*A041111(n)` -/
def P15168593736580474645.Spec : Prop :=
  ∀ n, P15168593736580474645.a n = A243470 (n + 1)

end A243470

/-! ## A243470.P1832034250207207299

`A041111(n)*A195159(Δ[A032766(n)])`
-/

namespace A243470.P1832034250207207299
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032766 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041111 n * A195159 (f1 (n + 1) - f1 n).toNat

end

end A243470.P1832034250207207299

namespace A243470

/-- `A041111(n)*A195159(Δ[A032766(n)])` -/
def P1832034250207207299.Spec : Prop :=
  ∀ n, P1832034250207207299.a n = A243470 (n + 1)

end A243470

/-! ## A243470.P4384726829455377873

`A041111(n)*A195159(ratio[A016116(n)])`
-/

namespace A243470.P4384726829455377873
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016116 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041111 n * A195159 (SequenceMachineLib.roundAway ((f1 (n + 1) : ℚ) / (f1 n : ℚ))).toNat

end

end A243470.P4384726829455377873

namespace A243470

/-- `A041111(n)*A195159(ratio[A016116(n)])` -/
def P4384726829455377873.Spec : Prop :=
  ∀ n, P4384726829455377873.a n = A243470 (n + 1)

end A243470

/-! ## A243470.P3308174972177347130

`A243469(n+2)-A077412(n)/A243469(n+1)`
-/

namespace A243470.P3308174972177347130
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A243469 (n + 2) : ℚ) - (A077412 n : ℚ) / (A243469 (n + 1) : ℚ)

end

end A243470.P3308174972177347130

namespace A243470

/-- `A243469(n+2)-A077412(n)/A243469(n+1)` -/
def P3308174972177347130.Spec : Prop :=
  ∀ n, P3308174972177347130.a n = (A243470 (n + 1) : ℚ)

end A243470

/-!
# A243471: Primes p such that p^6 - p^5 + 1 is prime.

The programs for A243471, there is no canonical definition to state claims against.
-/

/-! ## A243471.P12273110543524218721

`A119889(∪[A167277(3*n+1), A167238(n+1)])`
-/

namespace A243471.P12273110543524218721
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167277 (3 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167238 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119889 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A243471.P12273110543524218721

/-!
# A243472: Primes p such that p^6 - p^5 - 1 is prime.

The programs for A243472, there is no canonical definition to state claims against.
-/

/-! ## A243472.P5691466819197994475

`p?[A017887(n)*A161580(n+1)]`
-/

namespace A243472.P5691466819197994475
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017887 n * A161580 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A243472.P5691466819197994475

/-! ## A243472.P17067310051656660437

`A194598(eq[A194543(n+3), A194550(3*n+5)])`
-/

namespace A243472.P17067310051656660437
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194543 (n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194550 (3 * n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194598 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A243472.P17067310051656660437

/-!
# A243473: a(n) = numerator(sigma(n)/n) - denominator(sigma(n)/n) where sigma(n) = sum of divisors of n.

The programs for A243473, the canonical program `A243473.P145029483165858518` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A243473 has offset 1).

The definition of A243473 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A017665, A017666, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A243473.P145029483165858518

`A017665(n+1)-A017666(n+1)`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A243473

/-- `A017665(n+1)-A017666(n+1)` -/
def P145029483165858518.Spec : Prop :=
  ∀ n, P145029483165858518.a n = A243473 (n + 1)

theorem P145029483165858518.correct : P145029483165858518.Spec := by
  intro n
  simp only [A243473, Nat.add_sub_cancel]

end A243473

/-! ## A243473.P17784712905898413085

`(∑{d}[n+1, #]-(n+1))/gcd(n-1-2*n, ∑{d}[n+1, #])`
-/

namespace A243473.P17784712905898413085
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℤ) - (n + 1 : ℤ) : ℚ) / (Int.gcd ((n : ℤ) - 1 - (2 * n : ℤ)) ((∑ d ∈ Nat.divisors (f2 n), d : ℕ) : ℤ) : ℚ)

end

end A243473.P17784712905898413085

namespace A243473

/-- `(∑{d}[n+1, #]-(n+1))/gcd(n-1-2*n, ∑{d}[n+1, #])` -/
def P17784712905898413085.Spec : Prop :=
  ∀ n, P17784712905898413085.a n = (A243473 (n + 1) : ℚ)

end A243473

/-! ## A243473.P11925636565126445082

`lcm(n+1, n+1-A000203(n+1))/(n+1)`
-/

namespace A243473.P11925636565126445082
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (n + 1 : ℤ) ((n + 1 : ℤ) - A000203 (n + 1)) : ℚ) / (n + 1 : ℚ)

end

end A243473.P11925636565126445082

namespace A243473

/-- `lcm(n+1, n+1-A000203(n+1))/(n+1)` -/
def P11925636565126445082.Spec : Prop :=
  ∀ n, P11925636565126445082.a n = (A243473 (n + 1) : ℚ)

end A243473

/-! ## A243473.P13859663353188556641

`A017666(n+1)-A390582(n+1)`
-/

namespace A243473.P13859663353188556641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017666 (n + 1) - A390582 (n + 1)

end

end A243473.P13859663353188556641

namespace A243473

/-- `A017666(n+1)-A390582(n+1)` -/
def P13859663353188556641.Spec : Prop :=
  ∀ n, P13859663353188556641.a n = A243473 (n + 1)

end A243473

/-! ## A243473.P10901856177370953853

`A001065(n+1)/A009194(n+1)`
-/

namespace A243473.P10901856177370953853
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001065 (n + 1) : ℚ) / (A009194 (n + 1) : ℚ)

end

end A243473.P10901856177370953853

namespace A243473

/-- `A001065(n+1)/A009194(n+1)` -/
def P10901856177370953853.Spec : Prop :=
  ∀ n, P10901856177370953853.a n = (A243473 (n + 1) : ℚ)

end A243473

/-! ## A243473.P661171601580356973

`A343824(n+1)/A388270(n+1)`
-/

namespace A243473.P661171601580356973
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A343824 (n + 1) : ℚ) / (A388270 (n + 1) : ℚ)

end

end A243473.P661171601580356973

namespace A243473

/-- `A343824(n+1)/A388270(n+1)` -/
def P661171601580356973.Spec : Prop :=
  ∀ n, P661171601580356973.a n = (A243473 (n + 1) : ℚ)

end A243473

/-! ## A243473.P6743983015901219744

`(A000203(n+1)-(n+1))/A009194(n+1)`
-/

namespace A243473.P6743983015901219744
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000203 (n + 1) - (n + 1 : ℤ) : ℚ) / (A009194 (n + 1) : ℚ)

end

end A243473.P6743983015901219744

namespace A243473

/-- `(A000203(n+1)-(n+1))/A009194(n+1)` -/
def P6743983015901219744.Spec : Prop :=
  ∀ n, P6743983015901219744.a n = (A243473 (n + 1) : ℚ)

end A243473

/-! ## A243473.P8063443757550585086

`A017665(n+1)-(n+1)/gcd(n+1, A155085(n+1))`
-/

namespace A243473.P8063443757550585086
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017665 (n + 1) : ℚ) - (n + 1 : ℚ) / (Int.gcd (n + 1 : ℤ) (A155085 (n + 1)) : ℚ)

end

end A243473.P8063443757550585086

namespace A243473

/-- `A017665(n+1)-(n+1)/gcd(n+1, A155085(n+1))` -/
def P8063443757550585086.Spec : Prop :=
  ∀ n, P8063443757550585086.a n = (A243473 (n + 1) : ℚ)

end A243473

/-! ## A243473.P10655173793061560630

`(A000217(n)-A024816(n+1))/A009194(n+1)`
-/

namespace A243473.P10655173793061560630
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000217 n - A024816 (n + 1) : ℚ) / (A009194 (n + 1) : ℚ)

end

end A243473.P10655173793061560630

namespace A243473

/-- `(A000217(n)-A024816(n+1))/A009194(n+1)` -/
def P10655173793061560630.Spec : Prop :=
  ∀ n, P10655173793061560630.a n = (A243473 (n + 1) : ℚ)

end A243473

/-! ## A243473.P13483765914011777360

`A017666(n+1)+A017666(n+1)-A388283(n+1)`
-/

namespace A243473.P13483765914011777360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017666 (n + 1) + (A017666 (n + 1) - A388283 (n + 1))

end

end A243473.P13483765914011777360

namespace A243473

/-- `A017666(n+1)+A017666(n+1)-A388283(n+1)` -/
def P13483765914011777360.Spec : Prop :=
  ∀ n, P13483765914011777360.a n = A243473 (n + 1)

end A243473

/-! ## A243473.P12979314408756566955

`A017666(n+1)+A033880(n+1)/A009194(n+1)`
-/

namespace A243473.P12979314408756566955
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017666 (n + 1) : ℚ) + (A033880 (n + 1) : ℚ) / (A009194 (n + 1) : ℚ)

end

end A243473.P12979314408756566955

namespace A243473

/-- `A017666(n+1)+A033880(n+1)/A009194(n+1)` -/
def P12979314408756566955.Spec : Prop :=
  ∀ n, P12979314408756566955.a n = (A243473 (n + 1) : ℚ)

end A243473

/-! ## A243473.P12229712619525598267

`(A325969(n+1)+A325967(n+1))/A009194(n+1)`
-/

namespace A243473.P12229712619525598267
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A325969 (n + 1) + A325967 (n + 1) : ℚ) / (A009194 (n + 1) : ℚ)

end

end A243473.P12229712619525598267

namespace A243473

/-- `(A325969(n+1)+A325967(n+1))/A009194(n+1)` -/
def P12229712619525598267.Spec : Prop :=
  ∀ n, P12229712619525598267.a n = (A243473 (n + 1) : ℚ)

end A243473

/-! ## A243473.P11691908327209050203

`A017666(n+1)-A033879(n+1)/A009194(n+1)`
-/

namespace A243473.P11691908327209050203
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017666 (n + 1) : ℚ) - (A033879 (n + 1) : ℚ) / (A009194 (n + 1) : ℚ)

end

end A243473.P11691908327209050203

namespace A243473

/-- `A017666(n+1)-A033879(n+1)/A009194(n+1)` -/
def P11691908327209050203.Spec : Prop :=
  ∀ n, P11691908327209050203.a n = (A243473 (n + 1) : ℚ)

end A243473

/-! ## A243473.P7657497375442651853

`A017665(n+1)-A249670(n+1)/A017665(n+1)`
-/

namespace A243473.P7657497375442651853
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017665 (n + 1) : ℚ) - (A249670 (n + 1) : ℚ) / (A017665 (n + 1) : ℚ)

end

end A243473.P7657497375442651853

namespace A243473

/-- `A017665(n+1)-A249670(n+1)/A017665(n+1)` -/
def P7657497375442651853.Spec : Prop :=
  ∀ n, P7657497375442651853.a n = (A243473 (n + 1) : ℚ)

end A243473

/-! ## A243473.P3699106266871409642

`A249670(n+1)/A017666(n+1)-A017666(n+1)`
-/

namespace A243473.P3699106266871409642
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A249670 (n + 1) : ℚ) / (A017666 (n + 1) : ℚ) - (A017666 (n + 1) : ℚ)

end

end A243473.P3699106266871409642

namespace A243473

/-- `A249670(n+1)/A017666(n+1)-A017666(n+1)` -/
def P3699106266871409642.Spec : Prop :=
  ∀ n, P3699106266871409642.a n = (A243473 (n + 1) : ℚ)

end A243473

/-! ## A243473.P350261472510805698

`(A325818(n+1)-A325976(n+1))/A009194(n+1)`
-/

namespace A243473.P350261472510805698
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A325818 (n + 1) - A325976 (n + 1) : ℚ) / (A009194 (n + 1) : ℚ)

end

end A243473.P350261472510805698

namespace A243473

/-- `(A325818(n+1)-A325976(n+1))/A009194(n+1)` -/
def P350261472510805698.Spec : Prop :=
  ∀ n, P350261472510805698.a n = (A243473 (n + 1) : ℚ)

end A243473

/-! ## A243473.P3400222807311225796

`A001065(n+1)/A000203(n+1)*A017665(n+1)`
-/

namespace A243473.P3400222807311225796
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001065 (n + 1) : ℚ) / (A000203 (n + 1) : ℚ) * (A017665 (n + 1) : ℚ)

end

end A243473.P3400222807311225796

namespace A243473

/-- `A001065(n+1)/A000203(n+1)*A017665(n+1)` -/
def P3400222807311225796.Spec : Prop :=
  ∀ n, P3400222807311225796.a n = (A243473 (n + 1) : ℚ)

end A243473

/-! ## A243473.P6169307028127503788

`A001065(n+1)/gcd(A000027(n+1), A001065(n+1))`
-/

namespace A243473.P6169307028127503788
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001065 (n + 1) : ℚ) / (Int.gcd (A000027 (n + 1)) (A001065 (n + 1)) : ℚ)

end

end A243473.P6169307028127503788

namespace A243473

/-- `A001065(n+1)/gcd(A000027(n+1), A001065(n+1))` -/
def P6169307028127503788.Spec : Prop :=
  ∀ n, P6169307028127503788.a n = (A243473 (n + 1) : ℚ)

end A243473

/-! ## A243473.P17919913110494830757

`A000203(A017666(n+1))+A240923(n+1)-A017666(n+1)`
-/

namespace A243473.P17919913110494830757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A017666 (n + 1)).toNat + (A240923 (n + 1) - A017666 (n + 1))

end

end A243473.P17919913110494830757

namespace A243473

/-- `A000203(A017666(n+1))+A240923(n+1)-A017666(n+1)` -/
def P17919913110494830757.Spec : Prop :=
  ∀ n, P17919913110494830757.a n = A243473 (n + 1)

end A243473

/-!
# A243474: Number of isoscent sequences of length n with exactly one descent.

The programs for A243474, there is no canonical definition to state claims against.
-/

/-! ## A243474.P3377739327365344143

`∑[∑[A325781(A001671(n))]]`
-/

namespace A243474.P3377739327365344143
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325781 (A001671 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A243474.P3377739327365344143

/-!
# A243485: Sum of all the products formed by multiplying the corresponding smaller and larger parts of the Goldbach partitions of n.

The programs for A243485, there is no canonical definition to state claims against.
-/

/-! ## A243485.P3837312885114720588

`A334768(n+1)-A294345(n+1)`
-/

namespace A243485.P3837312885114720588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334768 (n + 1) - A294345 (n + 1)

end

end A243485.P3837312885114720588

/-! ## A243485.P16353020139313577469

`A334768(n+1)-A005171(A293331(n))*A200677(n+1)`
-/

namespace A243485.P16353020139313577469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334768 (n + 1) - A005171 (A293331 n).toNat * A200677 (n + 1)

end

end A243485.P16353020139313577469

/-! ## A243485.P5080433239328379536

`A334768(n+1)-A200677(n+1)%A008619(A041009(n))`
-/

namespace A243485.P5080433239328379536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334768 (n + 1) - Int.tmod (A200677 (n + 1)) (A008619 (A041009 n).toNat)

end

end A243485.P5080433239328379536

/-! ## A243485.P4277200304212872303

`A334768(n+1)-A200677(A187829(n+1))%A008619(n)²`
-/

namespace A243485.P4277200304212872303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334768 (n + 1) - Int.tmod (A200677 (A187829 (n + 1)).toNat) (A008619 n ^ 2)

end

end A243485.P4277200304212872303

/-! ## A243485.P13576686446813661861

`A200677(∑[A280865(3*n+2)²])`
-/

namespace A243485.P13576686446813661861
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280865 (3 * n + 2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200677 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A243485.P13576686446813661861

/-!
# A243486: O.g.f.: exp( Integral Sum_{n>=1} (2*n-1)! * x^(n-1) / Product_{k=1..2*n-1} (1 - k*x) dx ).

The programs for A243486, there is no canonical definition to state claims against.
-/

/-! ## A243486.P1286659074047200158

`A087202(n^n)-3`
-/

namespace A243486.P1286659074047200158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087202 (n ^ n) - 3

end

end A243486.P1286659074047200158

/-!
# A243488: a(n) = A126917(n+1) - A243069(n).

The programs for A243488, there is no canonical definition to state claims against.
-/

/-! ## A243488.P2865243604974214805

`A126917(n+2)-A243069(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A243488.P2865243604974214805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126917 (n + 2) - A243069 (n + 1)

end

end A243488.P2865243604974214805

/-! ## A243488.P7394487862150740098

`A126917(n+2)-A243498(A036234(n+1))`
-/

namespace A243488.P7394487862150740098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126917 (n + 2) - A243498 (A036234 (n + 1)).toNat

end

end A243488.P7394487862150740098

/-! ## A243488.P13015396719563458001

`A126917(n+2)-A243498(A000720(n+1)+1)`
-/

namespace A243488.P13015396719563458001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126917 (n + 2) - A243498 (A000720 (n + 1) + 1).toNat

end

end A243488.P13015396719563458001

/-! ## A243488.P10755335478254381751

`A126917(n+2)-A243498(A230980(n+1)+1)`
-/

namespace A243488.P10755335478254381751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126917 (n + 2) - A243498 (A230980 (n + 1) + 1).toNat

end

end A243488.P10755335478254381751

/-! ## A243488.P3317818279027893169

`A126917(n+2)-A126917(A151800(n+1))`
-/

namespace A243488.P3317818279027893169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126917 (n + 2) - A126917 (A151800 (n + 1)).toNat

end

end A243488.P3317818279027893169

/-! ## A243488.P13120319542725498211

`A126917(n+2)-A126917(A159477(n+2))`
-/

namespace A243488.P13120319542725498211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126917 (n + 2) - A126917 (A159477 (n + 2)).toNat

end

end A243488.P13120319542725498211

/-!
# A243489: Complement of A243490: Numbers n such that A069787(n) <> n.

The programs for A243489, there is no canonical definition to state claims against.
-/

/-! ## A243489.P9897117637099124989

`comp[A243490(n)]`
-/

namespace A243489.P9897117637099124989
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243490 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A243489.P9897117637099124989

/-! ## A243489.P17799695543916329224

`lt[0, abs(A243492(n))]`
-/

namespace A243489.P17799695543916329224
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A243492 n|

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A243489.P17799695543916329224

/-! ## A243489.P9006211976417968566

`lt[A000007(n), A243492(n)²]`
-/

namespace A243489.P9006211976417968566
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243492 n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A243489.P9006211976417968566

/-! ## A243489.P6297056467701321161

`eq[1, gcd(A243492(n), A295609(n))]`
-/

namespace A243489.P6297056467701321161
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A243492 n) (A295609 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A243489.P6297056467701321161

/-! ## A243489.P14499017691820468590

`lt[1, (A028310(n)*A243492(n))²]`
-/

namespace A243489.P14499017691820468590
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A028310 n * A243492 n) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A243489.P14499017691820468590

/-! ## A243489.P12482985267113285991

`lt[1, (A000203(n+1)*A243492(n))²]`
-/

namespace A243489.P12482985267113285991
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000203 (n + 1) * A243492 n) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A243489.P12482985267113285991

/-! ## A243489.P2235620088218476933

`lt[A000002(n+1), (2*A243492(n))²]`
-/

namespace A243489.P2235620088218476933
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000002 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * A243492 n) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A243489.P2235620088218476933

/-! ## A243489.P8275518719137291803

`lt[A076447(n+1), (2*A243492(n))²]`
-/

namespace A243489.P8275518719137291803
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076447 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * A243492 n) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A243489.P8275518719137291803

/-! ## A243489.P2808119803063444251

`eq[char[A243490(n)], A243456(2*n+1)]`
-/

namespace A243489.P2808119803063444251
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243490 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243456 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A243489.P2808119803063444251

/-! ## A243489.P16820352631001778530

`eq[1, A165591(A243492(n)²)]`
-/

namespace A243489.P16820352631001778530
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165591 (A243492 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A243489.P16820352631001778530

/-!
# A243490: Fixed points of A069787: Numbers n such that A069787(n) = n.

The programs for A243490, there is no canonical definition to state claims against.
-/

/-! ## A243490.P9071293579342489273

`comp[A243489(n+1)]`
-/

namespace A243490.P9071293579342489273
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243489 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A243490.P9071293579342489273

/-! ## A243490.P6010311780572691940

`eq[n, A069787(n)]`
-/

namespace A243490.P6010311780572691940
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069787 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A243490.P6010311780572691940

/-! ## A243490.P12372647973609066156

`eq[n, A057506(A057163(n))]`
-/

namespace A243490.P12372647973609066156
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057506 (A057163 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A243490.P12372647973609066156

/-! ## A243490.P7171482651979368926

`eq[A057163(n), A057505(n)]`
-/

namespace A243490.P7171482651979368926
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057163 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057505 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A243490.P7171482651979368926

/-! ## A243490.P2504496468139880463

`eq[A057164(n), A071661(n)]`
-/

namespace A243490.P2504496468139880463
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057164 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071661 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A243490.P2504496468139880463

/-! ## A243490.P7650286790912361653

`eq[0, A243492(n)]`
-/

namespace A243490.P7650286790912361653
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243492 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A243490.P7650286790912361653

/-! ## A243490.P10915581811779287740

`eq[A127301(n), A243491(n)]`
-/

namespace A243490.P10915581811779287740
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127301 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243491 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A243490.P10915581811779287740

/-! ## A243490.P16173929530500031714

`lt[A243492(A028310(n))², 1]`
-/

namespace A243490.P16173929530500031714
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243492 (A028310 n).toNat ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A243490.P16173929530500031714

/-! ## A243490.P1726950878361306306

`lt[lcm(A028310(n), A243492(n)), 1]`
-/

namespace A243490.P1726950878361306306
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A028310 n) (A243492 n)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A243490.P1726950878361306306

/-! ## A243490.P2941112240564389709

`lt[(A243491(n)*A243492(n))², 1]`
-/

namespace A243490.P2941112240564389709
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A243491 n * A243492 n) ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A243490.P2941112240564389709

/-! ## A243490.P1834072093224973162

`lt[(A000002(n+1)*A243492(n))², 1]`
-/

namespace A243490.P1834072093224973162
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000002 (n + 1) * A243492 n) ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A243490.P1834072093224973162

/-! ## A243490.P3643264889482025281

`lt[(A000203(n+1)*A243492(n))², 1]`
-/

namespace A243490.P3643264889482025281
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000203 (n + 1) * A243492 n) ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A243490.P3643264889482025281

/-! ## A243490.P13126425285606729620

`eq[A057164(n), A057505(A057505(n))]`
-/

namespace A243490.P13126425285606729620
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057164 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057505 (A057505 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A243490.P13126425285606729620

/-! ## A243490.P10240157018444333992

`eq[A071651(A057505(n)), A071653(n)]`
-/

namespace A243490.P10240157018444333992
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071651 (A057505 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071653 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A243490.P10240157018444333992

/-! ## A243490.P7340879211881479464

`A026741(record[gcd(2*n, A243492(n))])`
-/

namespace A243490.P7340879211881479464
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (2 * n : ℤ) (A243492 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A243490.P7340879211881479464

/-! ## A243490.P16865630075174938756

`lt[A243492(n)², A076447(3*n+4)]`
-/

namespace A243490.P16865630075174938756
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243492 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076447 (3 * n + 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A243490.P16865630075174938756

/-! ## A243490.P8295477475342771019

`eq[A057505(n), A125977(A125976(n))]`
-/

namespace A243490.P8295477475342771019
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057505 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125977 (A125976 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A243490.P8295477475342771019

/-!
# A243491: Matula-Goebel signature computed for trees rearranged by Catalan automorphism *A069787: a(n) = A127301(A069787(n)).

The programs for A243491, there is no canonical definition to state claims against.
-/

/-! ## A243491.P14214488830915335703

`A127301(A069787(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A243491.P14214488830915335703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127301 (A069787 n).toNat

end

end A243491.P14214488830915335703

/-! ## A243491.P17028513990930671461

`A127301(A071661(n))`
-/

namespace A243491.P17028513990930671461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127301 (A071661 n).toNat

end

end A243491.P17028513990930671461

/-! ## A243491.P807219681972254913

`A395051(A057505(n))`
-/

namespace A243491.P807219681972254913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395051 (A057505 n).toNat

end

end A243491.P807219681972254913

/-! ## A243491.P14352343637192333506

`A243492(n)+A127301(n)`
-/

namespace A243491.P14352343637192333506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243492 n + A127301 n

end

end A243491.P14352343637192333506

/-! ## A243491.P5571104692380316943

`A127301(A057506(A057163(n)))`
-/

namespace A243491.P5571104692380316943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127301 (A057506 (A057163 n).toNat).toNat

end

end A243491.P5571104692380316943

/-! ## A243491.P16322166138337552630

`A127301(n)-(A243492(A243490(n))-A243492(n))`
-/

namespace A243491.P16322166138337552630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127301 n - (A243492 (A243490 n).toNat - A243492 n)

end

end A243491.P16322166138337552630

/-! ## A243491.P2253020390975035810

`A395051(A126320(A057164(n)))`
-/

namespace A243491.P2253020390975035810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395051 (A126320 (A057164 n).toNat).toNat

end

end A243491.P2253020390975035810

/-!
# A243492: Difference A243491(n) - A127301(n).

The programs for A243492, there is no canonical definition to state claims against.
-/

/-! ## A243492.P1764216470032753950

`A243491(n)-A127301(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A243492.P1764216470032753950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243491 n - A127301 n

end

end A243492.P1764216470032753950

/-! ## A243492.P9072284270375444193

`A127301(A069787(n))-A127301(n)`
-/

namespace A243492.P9072284270375444193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127301 (A069787 n).toNat - A127301 n

end

end A243492.P9072284270375444193

/-! ## A243492.P9701128078430819759

`A127301(A071661(n))-A127301(n)`
-/

namespace A243492.P9701128078430819759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127301 (A071661 n).toNat - A127301 n

end

end A243492.P9701128078430819759

/-! ## A243492.P3263671067288924461

`A243491(n)-A243491(A069787(n))`
-/

namespace A243492.P3263671067288924461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243491 n - A243491 (A069787 n).toNat

end

end A243492.P3263671067288924461

/-! ## A243492.P2615548026386432499

`A243491(n)-A243491(A071662(n))`
-/

namespace A243492.P2615548026386432499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243491 n - A243491 (A071662 n).toNat

end

end A243492.P2615548026386432499

/-!
# A243493: Value of Matula-Goebel signature at the fixed points of A069787: a(n) = A127301(A243490(n)).

The programs for A243493, there is no canonical definition to state claims against.
-/

/-! ## A243493.P11699993204079985510

`A127301(A243490(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A243493.P11699993204079985510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127301 (A243490 n).toNat

end

end A243493.P11699993204079985510

/-! ## A243493.P2887390997696259535

`A127301(eq[0, A243492(n)])`
-/

namespace A243493.P2887390997696259535
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243492 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127301 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A243493.P2887390997696259535

/-! ## A243493.P5639828460594691753

`A243491(eq[0, A243492(n)])`
-/

namespace A243493.P5639828460594691753
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243492 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243491 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A243493.P5639828460594691753

/-! ## A243493.P16684081834051786410

`A243491(lt[A243492(n)², 1])`
-/

namespace A243493.P16684081834051786410
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243492 n ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243491 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A243493.P16684081834051786410

/-! ## A243493.P15536571681526928527

`A243491(eq[1, char[A243490(n)]])`
-/

namespace A243493.P15536571681526928527
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243490 n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243491 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A243493.P15536571681526928527

/-! ## A243493.P6909872441404071041

`A243491(A243490(2*n-n))`
-/

namespace A243493.P6909872441404071041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243491 (A243490 (2 * n - n)).toNat

end

end A243493.P6909872441404071041

/-! ## A243493.P6905536612326331904

`A127301(eq[A127301(n), A243491(n)])`
-/

namespace A243493.P6905536612326331904
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127301 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243491 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127301 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A243493.P6905536612326331904

/-! ## A243493.P11175684089998999657

`A243491(A069787(A243490(A069787(A069787(n)))))`
-/

namespace A243493.P11175684089998999657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243491 (A069787 (A243490 (A069787 (A069787 n).toNat).toNat).toNat).toNat

end

end A243493.P11175684089998999657

/-!
# A243494: A243493 sorted into ascending order, with duplicates removed.

The programs for A243494, there is no canonical definition to state claims against.
-/

/-! ## A243494.P9891510961365438601

`lt[0, char[A243493(n)]]`
-/

namespace A243494.P9891510961365438601
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243493 n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A243494.P9891510961365438601

/-! ## A243494.P1921420463836853054

`eq[1, char[A127301(A243490(n))]]`
-/

namespace A243494.P1921420463836853054
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127301 (A243490 n).toNat

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A243494.P1921420463836853054

/-! ## A243494.P372086612361808198

`eq[char[A243493(n)], A054977(n)]`
-/

namespace A243494.P372086612361808198
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243493 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A243494.P372086612361808198

/-! ## A243494.P8044876383255433057

`eq[A000007(n)+1, char[A243493(n)]]`
-/

namespace A243494.P8044876383255433057
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + 1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243493 n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℤ)) n

end

end A243494.P8044876383255433057

/-! ## A243494.P8972306020644430469

`eq[1, char[A243491(A243490(2*n-n))]]`
-/

namespace A243494.P8972306020644430469
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243491 (A243490 (2 * n - n)).toNat

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A243494.P8972306020644430469

/-!
# A243495: Indices in A014486 for the oriented trees that stay the same when "deep-rotated": fixed points of A057511/A057512.

The programs for A243495, there is no canonical definition to state claims against.
-/

/-! ## A243495.P7821032922625967521

`eq[n, A057511(n)]`
-/

namespace A243495.P7821032922625967521
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057511 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A243495.P7821032922625967521

/-! ## A243495.P5577490980946138729

`eq[n, A057512(n)]`
-/

namespace A243495.P5577490980946138729
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057512 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A243495.P5577490980946138729

/-! ## A243495.P9163954743524270995

`record[gcd(A005843(n), A057511(n))]`
-/

namespace A243495.P9163954743524270995
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A005843 n) (A057511 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A243495.P9163954743524270995

/-! ## A243495.P16854396913996632703

`record[gcd(A008585(n), A057512(n))]`
-/

namespace A243495.P16854396913996632703
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A008585 n) (A057512 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A243495.P16854396913996632703

/-! ## A243495.P10115117508394542680

`lt[(A051351(A057511(n))-A051351(n))², 1]`
-/

namespace A243495.P10115117508394542680
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A051351 (A057511 n).toNat - A051351 n) ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A243495.P10115117508394542680

/-!
# A243496: Matula-Goebel signature computed for the oriented trees that stay same when "deep-rotated": a(n) = A127301(A243495(n)), listed in the same order as those tree are encoded in A014486.

The programs for A243496, there is no canonical definition to state claims against.
-/

/-! ## A243496.P15453216636541528170

`A127301(A243495(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A243496.P15453216636541528170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127301 (A243495 n).toNat

end

end A243496.P15453216636541528170

/-! ## A243496.P1140136326114040293

`A127301(eq[n, A057511(n)])`
-/

namespace A243496.P1140136326114040293
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057511 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127301 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A243496.P1140136326114040293

/-! ## A243496.P6520770806541502220

`A127301(eq[n, A057512(n)])`
-/

namespace A243496.P6520770806541502220
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057512 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127301 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A243496.P6520770806541502220

/-! ## A243496.P17523483505644233674

`A127301(eq[n, A073284(n)])`
-/

namespace A243496.P17523483505644233674
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073284 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127301 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A243496.P17523483505644233674

/-! ## A243496.P10970032270885046855

`A127301(eq[n, A073285(n)])`
-/

namespace A243496.P10970032270885046855
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073285 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127301 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A243496.P10970032270885046855

/-!
# A243497: A243496 sorted into ascending order, with duplicates removed.

The programs for A243497, there is no canonical definition to state claims against.
-/

/-! ## A243497.P18438819545287932213

`eq[1, A206487(n+1)]+1`
-/

namespace A243497.P18438819545287932213
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206487 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A243497.P18438819545287932213

/-! ## A243497.P15677634529860943393

`A102885(A280996(n+1))`
-/

namespace A243497.P15677634529860943393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102885 (A280996 (n + 1)).toNat

end

end A243497.P15677634529860943393

/-! ## A243497.P15560935798305449310

`A003963(8*A280996(n+1))`
-/

namespace A243497.P15560935798305449310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (8 * A280996 (n + 1)).toNat

end

end A243497.P15560935798305449310

/-! ## A243497.P15591453231657017987

`∩[A184155(n+1), A331913(n+1)]`
-/

namespace A243497.P15591453231657017987
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184155 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331913 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A243497.P15591453231657017987

/-! ## A243497.P6011769265309517674

`∩[A302498(n+1), A316468(n+1)]`
-/

namespace A243497.P6011769265309517674
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302498 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316468 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A243497.P6011769265309517674

/-!
# A243498: Records (and distinct values) of A243069: a(n) = A243069(A008578(n)).

The programs for A243498, there is no canonical definition to state claims against.
-/

/-! ## A243498.P2776487340975891776

`A243069(A008578(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A243498.P2776487340975891776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243069 (A008578 (n + 1)).toNat

end

end A243498.P2776487340975891776

/-! ## A243498.P1548258796677833382

`A243069(A065514(n+1))`
-/

namespace A243498.P1548258796677833382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243069 (A065514 (n + 1)).toNat

end

end A243498.P1548258796677833382

/-! ## A243498.P12648341106129980472

`A243069(A158611(n+2))`
-/

namespace A243498.P12648341106129980472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243069 (A158611 (n + 2)).toNat

end

end A243498.P12648341106129980472

/-! ## A243498.P298246252280075701

`A243069(record[A006530(n+1)])`
-/

namespace A243498.P298246252280075701
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243069 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A243498.P298246252280075701

/-! ## A243498.P9510118073499824903

`A243069(record[A014963(n+1)])`
-/

namespace A243498.P9510118073499824903
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243069 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A243498.P9510118073499824903

/-! ## A243498.P16242200441127914982

`A243069(record[A020639(n+1)])`
-/

namespace A243498.P16242200441127914982
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243069 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A243498.P16242200441127914982

/-! ## A243498.P2010560485695095758

`record[A243069(A126917(n+1))]`
-/

namespace A243498.P2010560485695095758
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243069 (A126917 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A243498.P2010560485695095758

/-! ## A243498.P15716034845367229643

`A243069(A001747(n+1)/2)`
-/

namespace A243498.P15716034845367229643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243069 (SequenceMachineLib.roundAway ((A001747 (n + 1) : ℚ) / 2)).toNat

end

end A243498.P15716034845367229643

/-! ## A243498.P11113708480919387265

`A126917(p?[comp[n²]])`
-/

namespace A243498.P11113708480919387265
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126917 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A243498.P11113708480919387265

/-! ## A243498.P3673682296973275393

`A126917(A000040(n+1))`
-/

namespace A243498.P3673682296973275393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126917 (A000040 (n + 1)).toNat

end

end A243498.P3673682296973275393

/-! ## A243498.P17805551539812677157

`A243069(A006093(n+1))`
-/

namespace A243498.P17805551539812677157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243069 (A006093 (n + 1)).toNat

end

end A243498.P17805551539812677157

/-! ## A243498.P15618729465033905160

`A243069(A112925(n+1))`
-/

namespace A243498.P15618729465033905160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243069 (A112925 (n + 1)).toNat

end

end A243498.P15618729465033905160

/-! ## A243498.P7370283243968311068

`A126917(A008578(n+2))`
-/

namespace A243498.P7370283243968311068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126917 (A008578 (n + 2)).toNat

end

end A243498.P7370283243968311068

/-! ## A243498.P5171736139551186404

`A126917(A182986(n+2))`
-/

namespace A243498.P5171736139551186404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126917 (A182986 (n + 2)).toNat

end

end A243498.P5171736139551186404

/-! ## A243498.P2664775867619886006

`A126917(A158611(n+3))`
-/

namespace A243498.P2664775867619886006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126917 (A158611 (n + 3)).toNat

end

end A243498.P2664775867619886006

/-! ## A243498.P3770047565469264445

`A243069(record[A000010(n+1)])`
-/

namespace A243498.P3770047565469264445
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243069 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A243498.P3770047565469264445

/-! ## A243498.P8969662110235867509

`A126917(record[A006530(n+2)])`
-/

namespace A243498.P8969662110235867509
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126917 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A243498.P8969662110235867509

/-! ## A243498.P12786699277202039635

`A126917(record[A014963(n+2)])`
-/

namespace A243498.P12786699277202039635
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126917 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A243498.P12786699277202039635

/-! ## A243498.P8675900610051149510

`A126917(record[A020639(n+2)])`
-/

namespace A243498.P8675900610051149510
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126917 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A243498.P8675900610051149510

/-! ## A243498.P12263125625355194875

`A126917(A006093(n+1)+1)`
-/

namespace A243498.P12263125625355194875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126917 (A006093 (n + 1) + 1).toNat

end

end A243498.P12263125625355194875

/-!
# A243499: Product of parts of integer partitions as enumerated in the table A125106.

The programs for A243499, the canonical program `A243499.P13821279400790425584` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A243499 has offset 0).

The definition of A243499 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A243499.P13821279400790425584

`(1+A023416(n))*a(A053645(n))` with `a(0)=1`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A243499

/-- `(1+A023416(n))*a(A053645(n))` -/
def P13821279400790425584.Spec : Prop :=
  ∀ n, P13821279400790425584.a n = A243499 n

theorem P13821279400790425584.correct : P13821279400790425584.Spec := by
  intro n
  simp only [A243499]

end A243499

/-! ## A243499.P16458929401273481507

`A227184(A006068(n))`
-/

namespace A243499.P16458929401273481507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227184 (A006068 n).toNat

end

end A243499.P16458929401273481507

namespace A243499

/-- `A227184(A006068(n))` -/
def P16458929401273481507.Spec : Prop :=
  ∀ n, P16458929401273481507.a n = A243499 n

end A243499

/-! ## A243499.P12534204188541968725

`A003963(A005940(n+1))`
-/

namespace A243499.P12534204188541968725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (A005940 (n + 1)).toNat

end

end A243499.P12534204188541968725

namespace A243499

/-- `A003963(A005940(n+1))` -/
def P12534204188541968725.Spec : Prop :=
  ∀ n, P12534204188541968725.a n = A243499 n

end A243499

/-! ## A243499.P7371909893799955748

`A243504(A163511(n))`
-/

namespace A243499.P7371909893799955748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243504 (A163511 n).toNat

end

end A243499.P7371909893799955748

namespace A243499

/-- `A243504(A163511(n))` -/
def P7371909893799955748.Spec : Prop :=
  ∀ n, P7371909893799955748.a n = A243499 n

end A243499

/-! ## A243499.P15025574003875459126

`A341392(A036044(n))`
-/

namespace A243499.P15025574003875459126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341392 (A036044 n).toNat

end

end A243499.P15025574003875459126

namespace A243499

/-- `A341392(A036044(n))` -/
def P15025574003875459126.Spec : Prop :=
  ∀ n, P15025574003875459126.a n = A243499 n

end A243499

/-! ## A243499.P11097685441817036892

`A341392(xor(n, A175920(n)))`
-/

namespace A243499.P11097685441817036892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341392 (Int.xor (n : ℤ) (A175920 n)).toNat

end

end A243499.P11097685441817036892

namespace A243499

/-- `A341392(xor(n, A175920(n)))` -/
def P11097685441817036892.Spec : Prop :=
  ∀ n, P11097685441817036892.a n = A243499 n

end A243499

/-! ## A243499.P6158667812816016526

`(A080791(n)+1)*a(n%A053644(n))` with `a(0)=1`
-/

namespace A243499.P6158667812816016526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (A080791 n + 1) * a (Int.tmod (n : ℤ) (A053644 n)).toNat

end

end A243499.P6158667812816016526

namespace A243499

/-- `(A080791(n)+1)*a(n%A053644(n))` -/
def P6158667812816016526.Spec : Prop :=
  ∀ n, P6158667812816016526.a n = A243499 n

end A243499

/-! ## A243499.P13890996983787600051

`A064553(A337375(n)*A337377(n))`
-/

namespace A243499.P13890996983787600051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064553 (A337375 n * A337377 n).toNat

end

end A243499.P13890996983787600051

namespace A243499

/-- `A064553(A337375(n)*A337377(n))` -/
def P13890996983787600051.Spec : Prop :=
  ∀ n, P13890996983787600051.a n = A243499 n

end A243499

/-! ## A243499.P13838043442051427943

`A003963(A322865(A253563(n)))`
-/

namespace A243499.P13838043442051427943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (A322865 (A253563 n).toNat).toNat

end

end A243499.P13838043442051427943

namespace A243499

/-- `A003963(A322865(A253563(n)))` -/
def P13838043442051427943.Spec : Prop :=
  ∀ n, P13838043442051427943.a n = A243499 n

end A243499

/-! ## A243499.P5373480587431722245

`A003963(A324641(n+1)-A324640(n+1))`
-/

namespace A243499.P5373480587431722245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (A324641 (n + 1) - A324640 (n + 1)).toNat

end

end A243499.P5373480587431722245

namespace A243499

/-- `A003963(A324641(n+1)-A324640(n+1))` -/
def P5373480587431722245.Spec : Prop :=
  ∀ n, P5373480587431722245.a n = A243499 n

end A243499

/-! ## A243499.P2715027886641886275

`A329382(A253563(n))`
-/

namespace A243499.P2715027886641886275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329382 (A253563 n).toNat

end

end A243499.P2715027886641886275

namespace A243499

/-- `A329382(A253563(n))` -/
def P2715027886641886275.Spec : Prop :=
  ∀ n, P2715027886641886275.a n = A243499 n

end A243499

/-! ## A243499.P1894938464332852427

`A243504(A364297(n))`
-/

namespace A243499.P1894938464332852427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243504 (A364297 n).toNat

end

end A243499.P1894938464332852427

namespace A243499

/-- `A243504(A364297(n))` -/
def P1894938464332852427.Spec : Prop :=
  ∀ n, P1894938464332852427.a n = A243499 n

end A243499

/-! ## A243499.P16982307432009368080

`A003963(A324641(4*(n+1)))`
-/

namespace A243499.P16982307432009368080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (A324641 (4 * (n + 1))).toNat

end

end A243499.P16982307432009368080

namespace A243499

/-- `A003963(A324641(4*(n+1)))` -/
def P16982307432009368080.Spec : Prop :=
  ∀ n, P16982307432009368080.a n = A243499 n

end A243499

/-! ## A243499.P17290495147290559196

`A227184(A243354(A005940(A165199(A165199(n+1)))))`
-/

namespace A243499.P17290495147290559196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227184 (A243354 (A005940 (A165199 (A165199 (n + 1)).toNat).toNat).toNat).toNat

end

end A243499.P17290495147290559196

namespace A243499

/-- `A227184(A243354(A005940(A165199(A165199(n+1)))))` -/
def P17290495147290559196.Spec : Prop :=
  ∀ n, P17290495147290559196.a n = A243499 n

end A243499

/-! ## A243499.P7327104143297180782

`A003963(A122111(A253563(2*n+1)))`
-/

namespace A243499.P7327104143297180782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (A122111 (A253563 (2 * n + 1)).toNat).toNat

end

end A243499.P7327104143297180782

namespace A243499

/-- `A003963(A122111(A253563(2*n+1)))` -/
def P7327104143297180782.Spec : Prop :=
  ∀ n, P7327104143297180782.a n = A243499 n

end A243499

