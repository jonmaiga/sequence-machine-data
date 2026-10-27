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
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C039
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C009
import Seq.B001.C010
import Seq.B001.C011
import Seq.B001.C012
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
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
import Seq.B007.C000
import Seq.B008.C000
import Seq.B009.C000
import Seq.B010.C000
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
# A117100: Numbers k such that nextprime(3*k) > 3*nextprime(k) and k is composite (if p is prime then nextprime(p) = p).

The programs for A117100, there is no canonical definition to state claims against.
-/

/-! ## A117100.P11936020315733554666

`filter[A117093(n+1), A005171(#)]`
-/

namespace A117100.P11936020315733554666
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117093 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A117100.P11936020315733554666

/-! ## A117100.P17344726969241634636

`filter[A117093(n+1), A066247(#)]`
-/

namespace A117100.P17344726969241634636
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117093 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A066247 (f1 j).toNat = 1) n)

end

end A117100.P17344726969241634636

/-! ## A117100.P6345406845636429563

`∩[A002808(n+1), A117093(n+1)]`
-/

namespace A117100.P6345406845636429563
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117093 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A117100.P6345406845636429563

/-! ## A117100.P3555952349898617327

`∩[A018252(n+1), A117093(n+1)]`
-/

namespace A117100.P3555952349898617327
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117093 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A117100.P3555952349898617327

/-! ## A117100.P9729334959005788339

`∩[A117093(n+1), A141468(n+1)]`
-/

namespace A117100.P9729334959005788339
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117093 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141468 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A117100.P9729334959005788339

/-! ## A117100.P18187374941903550589

`∩[A056653(n+1), A117093(n+1)]`
-/

namespace A117100.P18187374941903550589
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056653 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117093 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A117100.P18187374941903550589

/-! ## A117100.P4469399833572684828

`∩[A062973(n+1), A117093(n+1)]`
-/

namespace A117100.P4469399833572684828
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062973 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117093 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A117100.P4469399833572684828

/-! ## A117100.P9319899713724936151

`∩[A117093(n+1), A343311(n+1)]`
-/

namespace A117100.P9319899713724936151
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117093 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343311 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A117100.P9319899713724936151

/-! ## A117100.P15304661212735347381

`∩[A117093(n+1), A387319(n+1)]`
-/

namespace A117100.P15304661212735347381
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117093 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387319 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A117100.P15304661212735347381

/-! ## A117100.P12767984111185791660

`∩[A117093(n+1), A348718(n+1)]`
-/

namespace A117100.P12767984111185791660
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117093 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348718 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A117100.P12767984111185791660

/-!
# A117101: Numbers k such that nextprime(5*k) > 5*nextprime(k) and k is composite.

The programs for A117101, there is no canonical definition to state claims against.
-/

/-! ## A117101.P6945919033256161440

`filter[A117094(n+1), A005171(#)]`
-/

namespace A117101.P6945919033256161440
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117094 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A117101.P6945919033256161440

/-! ## A117101.P16220001856300642381

`filter[A117094(n+1), A066247(#)]`
-/

namespace A117101.P16220001856300642381
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117094 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A066247 (f1 j).toNat = 1) n)

end

end A117101.P16220001856300642381

/-! ## A117101.P5429190601800687108

`filter[A117094(n+1), A202238(#)]`
-/

namespace A117101.P5429190601800687108
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117094 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A202238 (f1 j).toNat = 1) n)

end

end A117101.P5429190601800687108

/-! ## A117101.P13585405206761433901

`∩[A002808(n+1), A117094(n+1)]`
-/

namespace A117101.P13585405206761433901
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117094 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A117101.P13585405206761433901

/-! ## A117101.P16769212327940254774

`∩[A018252(n+1), A117094(n+1)]`
-/

namespace A117101.P16769212327940254774
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117094 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A117101.P16769212327940254774

/-! ## A117101.P8080804494140243384

`∩[A117094(n+1), A141468(n+1)]`
-/

namespace A117101.P8080804494140243384
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117094 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141468 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A117101.P8080804494140243384

/-! ## A117101.P8297627085291639030

`∩[A117094(n+1), A139118(n+1)]`
-/

namespace A117101.P8297627085291639030
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117094 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139118 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A117101.P8297627085291639030

/-! ## A117101.P16160780620336406882

`∩[A056653(n+1), A117094(n+1)]`
-/

namespace A117101.P16160780620336406882
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056653 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117094 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A117101.P16160780620336406882

/-! ## A117101.P3594496169214375751

`∩[A062973(n+1), A117094(n+1)]`
-/

namespace A117101.P3594496169214375751
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062973 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117094 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A117101.P3594496169214375751

/-! ## A117101.P14421560221884787569

`∩[A080257(n+1), A117094(n+1)]`
-/

namespace A117101.P14421560221884787569
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080257 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117094 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A117101.P14421560221884787569

/-! ## A117101.P10820602469912327873

`∩[A117094(n+1), A220571(n+1)]`
-/

namespace A117101.P10820602469912327873
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117094 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220571 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A117101.P10820602469912327873

/-! ## A117101.P9850118398398506995

`∩[A117094(n+1), A343311(n+1)]`
-/

namespace A117101.P9850118398398506995
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117094 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343311 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A117101.P9850118398398506995

/-! ## A117101.P14880239180794333223

`∩[A117094(n+1), A387319(n+1)]`
-/

namespace A117101.P14880239180794333223
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117094 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387319 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A117101.P14880239180794333223

/-! ## A117101.P15393786816171492089

`∩[A117094(n+1), A348718(n+1)]`
-/

namespace A117101.P15393786816171492089
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117094 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348718 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A117101.P15393786816171492089

/-! ## A117101.P18037252657175082847

`∩[A111774(n+1), A117094(n+1)]`
-/

namespace A117101.P18037252657175082847
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111774 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117094 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A117101.P18037252657175082847

/-!
# A117102: Least n such that nextprime(p*n) > p*nextprime(n) where p runs through the prime numbers (if p is prime then nextprime(p)=p).

The programs for A117102, there is no canonical definition to state claims against.
-/

/-! ## A117102.P6522325841058775512

`A113709(or(A000096(n), A335892(n+1)))`
-/

namespace A117102.P6522325841058775512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113709 (Int.lor (A000096 n) (A335892 (n + 1))).toNat

end

end A117102.P6522325841058775512

/-!
# A117104: Sum of two positive heptagonal numbers A000566.

The programs for A117104, there is no canonical definition to state claims against.
-/

/-! ## A117104.P2130908743029242977

`eq[2, A338480(n+1)]+1`
-/

namespace A117104.P2130908743029242977
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338480 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A117104.P2130908743029242977

/-! ## A117104.P17570418018358397252

`eq[2, A338480(A028310(n))]`
-/

namespace A117104.P17570418018358397252
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338480 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A117104.P17570418018358397252

/-! ## A117104.P3636704302933286800

`A020725(eq[2, A338480(n+1)])`
-/

namespace A117104.P3636704302933286800
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338480 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A117104.P3636704302933286800

/-! ## A117104.P8403280075132292355

`A199343(eq[2, A338480(n+1)])`
-/

namespace A117104.P8403280075132292355
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338480 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199343 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A117104.P8403280075132292355

/-! ## A117104.P379118557114609208

`eq[2, A338480(A123108(2*n))]`
-/

namespace A117104.P379118557114609208
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338480 (A123108 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A117104.P379118557114609208

/-!
# A117105: Numbers that are the sum of three positive heptagonal numbers (A000566) in at least one way.

The programs for A117105, there is no canonical definition to state claims against.
-/

/-! ## A117105.P2856926523381496599

`comp[A180917(n+1)-1]+1`
-/

namespace A117105.P2856926523381496599
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180917 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A117105.P2856926523381496599

/-! ## A117105.P6126891666280854491

`eq[char[A180917(n+1)], A000007(n)]`
-/

namespace A117105.P6126891666280854491
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180917 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A117105.P6126891666280854491

/-! ## A117105.P9283268085664742758

`eq[char[A180917(n+1)], A000038(n)]`
-/

namespace A117105.P9283268085664742758
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180917 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A117105.P9283268085664742758

/-! ## A117105.P17466559141862286385

`lt[char[A180917(n+1)]*A062767(n+1), n]`
-/

namespace A117105.P17466559141862286385
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180917 (n + 1)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A062767 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n

end

end A117105.P17466559141862286385

/-! ## A117105.P6637459639113271959

`lt[char[A180917(n+1)]*A195904(n+1), n]`
-/

namespace A117105.P6637459639113271959
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180917 (n + 1)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A195904 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n

end

end A117105.P6637459639113271959

/-!
# A117106: Number of permutations in S_n avoiding 21{bar 3}54 (i.e., every occurrence of 2154 is contained in an occurrence of a 21354).

The programs for A117106, there is no canonical definition to state claims against.
-/

/-! ## A117106.P3214924893679625356

`A132647(n)-A135297(A001710(n))`
-/

namespace A117106.P3214924893679625356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132647 n - A135297 (A001710 n).toNat

end

end A117106.P3214924893679625356

/-! ## A117106.P48790823809421951

`A137564(A137534(n)-A137581(n))`
-/

namespace A117106.P48790823809421951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137564 (A137534 n - A137581 n).toNat

end

end A117106.P48790823809421951

/-! ## A117106.P14660194288279969416

`A137564(A137534(n)-A198318(2*n+3))`
-/

namespace A117106.P14660194288279969416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137564 (A137534 n - A198318 (2 * n + 3)).toNat

end

end A117106.P14660194288279969416

/-!
# A117107: Number of permutations in S_n avoiding 21{bar 3}54 (i.e., every occurrence of 2154 is contained in an occurrence of a 21354) and such that the graph corresponding to the permutation is connected (see "Forest-like permutations" below).

The programs for A117107, there is no canonical definition to state claims against.
-/

/-! ## A117107.P4250838289047221638

`A065033(∑[∑[A000642(2*n+1)]])`
-/

namespace A117107.P4250838289047221638
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000642 (2 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A117107.P4250838289047221638

/-! ## A117107.P12944480880444852244

`A004525(A124534(n))-A230595(2*n+3)`
-/

namespace A117107.P12944480880444852244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A124534 n).toNat - A230595 (2 * n + 3)

end

end A117107.P12944480880444852244

/-!
# A117108: Moebius transform of tetrahedral numbers.

The programs for A117108, the canonical program `A117108.P9001294655325933420` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A117108 has offset 1).

The definition of A117108 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A117108.P9001294655325933420

`∑{d}[n+1, A008683((n+1)/#)*C(#+2, 3)]`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A117108

/-- `∑{d}[n+1, A008683((n+1)/#)*C(#+2, 3)]` -/
def P9001294655325933420.Spec : Prop :=
  ∀ n, P9001294655325933420.a n = A117108 (n + 1)

theorem P9001294655325933420.correct : P9001294655325933420.Spec := by
  intro n
  simp only [A117108, Nat.add_sub_cancel]

end A117108

/-! ## A117108.P13555607573409829016

`A346760(n+1)+A007434(n+1)`
-/

namespace A117108.P13555607573409829016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346760 (n + 1) + A007434 (n + 1)

end

end A117108.P13555607573409829016

namespace A117108

/-- `A346760(n+1)+A007434(n+1)` -/
def P13555607573409829016.Spec : Prop :=
  ∀ n, P13555607573409829016.a n = A117108 (n + 1)

end A117108

/-! ## A117108.P10612354581827023996

`A346760(n+1)+A000056(n+1)/(n+1)`
-/

namespace A117108.P10612354581827023996
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A346760 (n + 1) : ℚ) + (A000056 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A117108.P10612354581827023996

namespace A117108

/-- `A346760(n+1)+A000056(n+1)/(n+1)` -/
def P10612354581827023996.Spec : Prop :=
  ∀ n, P10612354581827023996.a n = (A117108 (n + 1) : ℚ)

end A117108

/-! ## A117108.P9702719301364964008

`∑{d}[n+1, A008683(#)*A000292((n+1)/#)]`
-/

namespace A117108.P9702719301364964008
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A000292 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A117108.P9702719301364964008

namespace A117108

/-- `∑{d}[n+1, A008683(#)*A000292((n+1)/#)]` -/
def P9702719301364964008.Spec : Prop :=
  ∀ n, P9702719301364964008.a n = A117108 (n + 1)

end A117108

/-! ## A117108.P5419006789794069246

`∑{d}[n+1, A055615(#)*A309323((n+1)/#)]`
-/

namespace A117108.P5419006789794069246
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A055615 d * A309323 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A117108.P5419006789794069246

namespace A117108

/-- `∑{d}[n+1, A055615(#)*A309323((n+1)/#)]` -/
def P5419006789794069246.Spec : Prop :=
  ∀ n, P5419006789794069246.a n = A117108 (n + 1)

end A117108

/-! ## A117108.P17706013375376749024

`∑{d}[n+1, A046692(#)*A343544((n+1)/#)]`
-/

namespace A117108.P17706013375376749024
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A046692 d * A343544 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A117108.P17706013375376749024

namespace A117108

/-- `∑{d}[n+1, A046692(#)*A343544((n+1)/#)]` -/
def P17706013375376749024.Spec : Prop :=
  ∀ n, P17706013375376749024.a n = A117108 (n + 1)

end A117108

/-! ## A117108.P10179031257106994993

`∑{d}[n+1, A053826(#)*A366933((n+1)/#)]`
-/

namespace A117108.P10179031257106994993
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A053826 d * A366933 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A117108.P10179031257106994993

namespace A117108

/-- `∑{d}[n+1, A053826(#)*A366933((n+1)/#)]` -/
def P10179031257106994993.Spec : Prop :=
  ∀ n, P10179031257106994993.a n = A117108 (n + 1)

end A117108

/-! ## A117108.P5395972550023102825

`∑{d}[n+1, A092673(#)*A338046((n+1)/#)]`
-/

namespace A117108.P5395972550023102825
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A092673 d * A338046 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A117108.P5395972550023102825

namespace A117108

/-- `∑{d}[n+1, A092673(#)*A338046((n+1)/#)]` -/
def P5395972550023102825.Spec : Prop :=
  ∀ n, P5395972550023102825.a n = A117108 (n + 1)

end A117108

/-! ## A117108.P13738302972164645940

`∑{d}[n+1, A327274(#)*A366813((n+1)/#)]`
-/

namespace A117108.P13738302972164645940
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A327274 d * A366813 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A117108.P13738302972164645940

namespace A117108

/-- `∑{d}[n+1, A327274(#)*A366813((n+1)/#)]` -/
def P13738302972164645940.Spec : Prop :=
  ∀ n, P13738302972164645940.a n = A117108 (n + 1)

end A117108

/-! ## A117108.P10582675274072612519

`∑{d}[n+1, A007427(#)*A059358((n+1)/#)]`
-/

namespace A117108.P10582675274072612519
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007427 d * A059358 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A117108.P10582675274072612519

namespace A117108

/-- `∑{d}[n+1, A007427(#)*A059358((n+1)/#)]` -/
def P10582675274072612519.Spec : Prop :=
  ∀ n, P10582675274072612519.a n = A117108 (n + 1)

end A117108

/-! ## A117108.P8944209566724434911

`A177975(A055999(n)+10)`
-/

namespace A117108.P8944209566724434911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177975 (A055999 n + 10).toNat

end

end A117108.P8944209566724434911

namespace A117108

/-- `A177975(A055999(n)+10)` -/
def P8944209566724434911.Spec : Prop :=
  ∀ n, P8944209566724434911.a n = A117108 (n + 1)

end A117108

/-! ## A117108.P10533858981830738847

`A177975(A167614(n+2)+1)`
-/

namespace A117108.P10533858981830738847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177975 (A167614 (n + 2) + 1).toNat

end

end A117108.P10533858981830738847

namespace A117108

/-- `A177975(A167614(n+2)+1)` -/
def P10533858981830738847.Spec : Prop :=
  ∀ n, P10533858981830738847.a n = A117108 (n + 1)

end A117108

/-!
# A117109: Moebius transform of binomial(n+3, 4).

The programs for A117109, the canonical program `A117109.P83652352233922109` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A117109 has offset 1).

The definition of A117109 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A117109.P83652352233922109

`∑{d}[n+1, A007427(#)*A073570((n+1)/#)]`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A117109

/-- `∑{d}[n+1, A007427(#)*A073570((n+1)/#)]` -/
def P83652352233922109.Spec : Prop :=
  ∀ n, P83652352233922109.a n = A117109 (n + 1)

theorem P83652352233922109.correct : P83652352233922109.Spec := by
  intro n
  simp only [A117109, Nat.add_sub_cancel]

end A117109

/-! ## A117109.P8387769606760575482

`∑{d}[n+1, A046692(#)*A343545((n+1)/#)]`
-/

namespace A117109.P8387769606760575482
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A046692 d * A343545 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A117109.P8387769606760575482

namespace A117109

/-- `∑{d}[n+1, A046692(#)*A343545((n+1)/#)]` -/
def P8387769606760575482.Spec : Prop :=
  ∀ n, P8387769606760575482.a n = A117109 (n + 1)

end A117109

/-! ## A117109.P3981584429430282919

`∑{d}[n+1, A055615(#)*A343518((n+1)/#)]`
-/

namespace A117109.P3981584429430282919
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A055615 d * A343518 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A117109.P3981584429430282919

namespace A117109

/-- `∑{d}[n+1, A055615(#)*A343518((n+1)/#)]` -/
def P3981584429430282919.Spec : Prop :=
  ∀ n, P3981584429430282919.a n = A117109 (n + 1)

end A117109

/-! ## A117109.P6008574114005283383

`∑{d}[n+1, A178448(#)*A366934((n+1)/#)]`
-/

namespace A117109.P6008574114005283383
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A178448 d * A366934 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A117109.P6008574114005283383

namespace A117109

/-- `∑{d}[n+1, A178448(#)*A366934((n+1)/#)]` -/
def P6008574114005283383.Spec : Prop :=
  ∀ n, P6008574114005283383.a n = A117109 (n + 1)

end A117109

/-! ## A117109.P16531826001841528602

`∑{d}[n+1, A327274(#)*A366814((n+1)/#)]`
-/

namespace A117109.P16531826001841528602
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A327274 d * A366814 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A117109.P16531826001841528602

namespace A117109

/-- `∑{d}[n+1, A327274(#)*A366814((n+1)/#)]` -/
def P16531826001841528602.Spec : Prop :=
  ∀ n, P16531826001841528602.a n = A117109 (n + 1)

end A117109

/-! ## A117109.P16685799596013001068

`A000007(n)+Δ[A015650(A028310(n))]`
-/

namespace A117109.P16685799596013001068
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015650 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + (f1 (n + 1) - f1 n)

end

end A117109.P16685799596013001068

namespace A117109

/-- `A000007(n)+Δ[A015650(A028310(n))]` -/
def P16685799596013001068.Spec : Prop :=
  ∀ n, P16685799596013001068.a n = A117109 (n + 1)

end A117109

/-! ## A117109.P11121135132318448624

`A015650(n+1)+A000007(n)-A015650(A028310(n))`
-/

namespace A117109.P11121135132318448624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015650 (n + 1) + (A000007 n - A015650 (A028310 n).toNat)

end

end A117109.P11121135132318448624

namespace A117109

/-- `A015650(n+1)+A000007(n)-A015650(A028310(n))` -/
def P11121135132318448624.Spec : Prop :=
  ∀ n, P11121135132318448624.a n = A117109 (n + 1)

end A117109

/-! ## A117109.P13189249005555384960

`A015650(n+1)+A015650(A028310(n))*A057428(n)`
-/

namespace A117109.P13189249005555384960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015650 (n + 1) + A015650 (A028310 n).toNat * A057428 n

end

end A117109.P13189249005555384960

namespace A117109

/-- `A015650(n+1)+A015650(A028310(n))*A057428(n)` -/
def P13189249005555384960.Spec : Prop :=
  ∀ n, P13189249005555384960.a n = A117109 (n + 1)

end A117109

/-! ## A117109.P14022379317765583897

`Δ[A015650(A028310(n))-A057428(n)]`
-/

namespace A117109.P14022379317765583897
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015650 (A028310 n).toNat - A057428 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A117109.P14022379317765583897

namespace A117109

/-- `Δ[A015650(A028310(n))-A057428(n)]` -/
def P14022379317765583897.Spec : Prop :=
  ∀ n, P14022379317765583897.a n = A117109 (n + 1)

end A117109

/-! ## A117109.P18149847063349943613

`Δ[A015650(A028310(n))%A266761(n)]`
-/

namespace A117109.P18149847063349943613
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A015650 (A028310 n).toNat) (A266761 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A117109.P18149847063349943613

namespace A117109

/-- `Δ[A015650(A028310(n))%A266761(n)]` -/
def P18149847063349943613.Spec : Prop :=
  ∀ n, P18149847063349943613.a n = A117109 (n + 1)

end A117109

/-! ## A117109.P17438022566401937262

`A177975(A167499(n+3))`
-/

namespace A117109.P17438022566401937262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177975 (A167499 (n + 3)).toNat

end

end A117109.P17438022566401937262

namespace A117109

/-- `A177975(A167499(n+3))` -/
def P17438022566401937262.Spec : Prop :=
  ∀ n, P17438022566401937262.a n = A117109 (n + 1)

end A117109

/-! ## A117109.P6141223989867281539

`A177975(A056000(n)+15)`
-/

namespace A117109.P6141223989867281539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177975 (A056000 n + 15).toNat

end

end A117109.P6141223989867281539

namespace A117109

/-- `A177975(A056000(n)+15)` -/
def P6141223989867281539.Spec : Prop :=
  ∀ n, P6141223989867281539.a n = A117109 (n + 1)

end A117109

/-! ## A117109.P17606920232127875727

`A177975(A000217(n+4)+5)`
-/

namespace A117109.P17606920232127875727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177975 (A000217 (n + 4) + 5).toNat

end

end A117109.P17606920232127875727

namespace A117109

/-- `A177975(A000217(n+4)+5)` -/
def P17606920232127875727.Spec : Prop :=
  ∀ n, P17606920232127875727.a n = A117109 (n + 1)

end A117109

/-!
# A117110: Expansion of x*(1+5*x)/((1+2*x+1)*(1-4*x)).

The programs for A117110, the canonical program `A117110.P4822401810455534419` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A117110 has offset 0).

The definition of A117110 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A117110.P4822401810455534419

`2*a(n-1)+8*a(n-2)` with `a(0)=0, a(1)=1, a(2)=7`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A117110

/-- `2*a(n-1)+8*a(n-2)` -/
def P4822401810455534419.Spec : Prop :=
  ∀ n, (P4822401810455534419.a n : ℤ) = A117110 n

theorem P4822401810455534419.correct : P4822401810455534419.Spec := by
  intro n
  simp only [A117110]

end A117110

/-! ## A117110.P5326827281766392537

`ogf((x+5x^2)/(1-2x-8x^2))`
-/

namespace A117110.P5326827281766392537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, 5] [1, -2, -8] n

end

end A117110.P5326827281766392537

namespace A117110

/-- `ogf((x+5x^2)/(1-2x-8x^2))` -/
def P5326827281766392537.Spec : Prop :=
  ∀ n, P5326827281766392537.a n = A117110 n

end A117110

/-! ## A117110.P6586356499755351195

`(A002001(n)-A123344(n))/2`
-/

namespace A117110.P6586356499755351195
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002001 n - A123344 n : ℚ) / 2

end

end A117110.P6586356499755351195

namespace A117110

/-- `(A002001(n)-A123344(n))/2` -/
def P6586356499755351195.Spec : Prop :=
  ∀ n, P6586356499755351195.a n = (A117110 n : ℚ)

end A117110

/-! ## A117110.P17008306616684180197

`A000431(n)+xor(A006516(n), A100575(n))`
-/

namespace A117110.P17008306616684180197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000431 n + Int.xor (A006516 n) (A100575 n)

end

end A117110.P17008306616684180197

namespace A117110

/-- `A000431(n)+xor(A006516(n), A100575(n))` -/
def P17008306616684180197.Spec : Prop :=
  ∀ n, P17008306616684180197.a n = A117110 n

end A117110

/-! ## A117110.P5909613965650815599

`(A131577(n)+A014551(n))/2*A131577(n)`
-/

namespace A117110.P5909613965650815599
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A131577 n + A014551 n : ℚ) / 2 * (A131577 n : ℚ)

end

end A117110.P5909613965650815599

namespace A117110

/-- `(A131577(n)+A014551(n))/2*A131577(n)` -/
def P5909613965650815599.Spec : Prop :=
  ∀ n, P5909613965650815599.a n = (A117110 n : ℚ)

end A117110

/-! ## A117110.P2718163745143746669

`floor(A140683(n)²/24)`
-/

namespace A117110.P2718163745143746669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A140683 n ^ 2 : ℚ) / 24⌋

end

end A117110.P2718163745143746669

namespace A117110

/-- `floor(A140683(n)²/24)` -/
def P2718163745143746669.Spec : Prop :=
  ∀ n, P2718163745143746669.a n = A117110 n

end A117110

/-!
# A117111: Sum of four positive heptagonal numbers A000566.

The programs for A117111, there is no canonical definition to state claims against.
-/

/-! ## A117111.P6624579466833118080

`record[eq[2, A043279(n+1)]-A324925(n)]`
-/

namespace A117111.P6624579466833118080
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043279 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n : ℤ) - A324925 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A117111.P6624579466833118080

/-!
# A117112: Primes expressible as the sum of two triangular numbers (including zero).

The programs for A117112, there is no canonical definition to state claims against.
-/

/-! ## A117112.P11308184029159505826

`∪[A002383(n+1), A117048(n+1)]`
-/

namespace A117112.P11308184029159505826
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002383 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117048 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A117112.P11308184029159505826

/-! ## A117112.P3951309412346690166

`∪[A023212(n+1), A117048(n+1)]`
-/

namespace A117112.P3951309412346690166
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023212 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117048 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A117112.P3951309412346690166

/-! ## A117112.P9829603854160300073

`∪[A038537(n+1), A117048(n+1)]`
-/

namespace A117112.P9829603854160300073
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038537 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117048 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A117112.P9829603854160300073

/-! ## A117112.P8752365482352498547

`∪[A056899(n+1), A117048(n+1)]`
-/

namespace A117112.P8752365482352498547
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056899 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117048 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A117112.P8752365482352498547

/-! ## A117112.P7220776644491453276

`∪[A073337(n+1), A117048(n+1)]`
-/

namespace A117112.P7220776644491453276
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073337 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117048 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A117112.P7220776644491453276

/-! ## A117112.P1652740235843294613

`∪[A074268(n+1), A117048(n+1)]`
-/

namespace A117112.P1652740235843294613
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074268 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117048 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A117112.P1652740235843294613

/-! ## A117112.P1667153371223458369

`record[A006530(A051533(n+1))]`
-/

namespace A117112.P1667153371223458369
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A051533 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A117112.P1667153371223458369

/-! ## A117112.P13279540081037349330

`p?[A020756(n+1)]`
-/

namespace A117112.P13279540081037349330
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020756 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A117112.P13279540081037349330

/-! ## A117112.P3747060184203199163

`p?[floor(A057653(n+1)/4)]`
-/

namespace A117112.P3747060184203199163
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A057653 (n + 1) : ℚ) / 4⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A117112.P3747060184203199163

/-! ## A117112.P10754564603601593706

`record[A006530(A020756(n+3))]`
-/

namespace A117112.P10754564603601593706
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A020756 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A117112.P10754564603601593706

/-! ## A117112.P4518831239739721836

`filter[A020756(n+2), A010051(#)]`
-/

namespace A117112.P4518831239739721836
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020756 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A117112.P4518831239739721836

/-! ## A117112.P72563009230212380

`∩[A000040(n+1), A020756(n+1)]`
-/

namespace A117112.P72563009230212380
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020756 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A117112.P72563009230212380

/-! ## A117112.P10760677321287107764

`∩[A020756(n+1), A045319(n+1)]`
-/

namespace A117112.P10760677321287107764
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020756 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A117112.P10760677321287107764

/-! ## A117112.P12862002235740531090

`p?[lt[A061336(n), 3]]`
-/

namespace A117112.P12862002235740531090
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061336 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A117112.P12862002235740531090

/-! ## A117112.P15712938648395090732

`p?[lt[A176873(n), 4]]`
-/

namespace A117112.P15712938648395090732
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176873 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A117112.P15712938648395090732

/-! ## A117112.P11301099838895362107

`eq[A176873(n), A323774(n)]`
-/

namespace A117112.P11301099838895362107
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176873 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323774 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A117112.P11301099838895362107

/-! ## A117112.P2976382080849624534

`filter[A020756(n+3), A080339(#)]`
-/

namespace A117112.P2976382080849624534
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020756 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080339 (f1 j).toNat = 1) n)

end

end A117112.P2976382080849624534

/-! ## A117112.P6141092877662726734

`p?[lt[0, A138741(2*n)]]`
-/

namespace A117112.P6141092877662726734
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138741 (2 * n)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A117112.P6141092877662726734

/-!
# A117114: Number of letters not in common with the number before in Spanish.

The programs for A117114, there is no canonical definition to state claims against.
-/

/-! ## A117114.P16378733790184722890

`Δ[A153453(n)]-A117046(n)`
-/

namespace A117114.P16378733790184722890
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153453 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A117046 n

end

end A117114.P16378733790184722890

/-!
# A117115: A sequence related to M-partitions.

The programs for A117115, there is no canonical definition to state claims against.
-/

/-! ## A117115.P16107244468208445031

`A106744(A211992(n+1)+A001318(n)+1)`
-/

namespace A117115.P16107244468208445031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106744 (A211992 (n + 1) + A001318 n + 1).toNat

end

end A117115.P16107244468208445031

/-! ## A117115.P8354337634323196251

`A280417(n)-A001221(A000110(n))`
-/

namespace A117115.P8354337634323196251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280417 n - A001221 (A000110 n).toNat

end

end A117115.P8354337634323196251

/-! ## A117115.P16806583694761502052

`∑[A262397(n)+A001468(A185134(n))]`
-/

namespace A117115.P16806583694761502052
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262397 n + A001468 (A185134 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A117115.P16806583694761502052

/-! ## A117115.P6504818453473848951

`A070939(A202058(n))+A027187(n+1)`
-/

namespace A117115.P6504818453473848951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 (A202058 n).toNat + A027187 (n + 1)

end

end A117115.P6504818453473848951

/-! ## A117115.P2307540781036573731

`A120887(A316420(n+1)+A160794(n))`
-/

namespace A117115.P2307540781036573731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120887 (A316420 (n + 1) + A160794 n).toNat

end

end A117115.P2307540781036573731

/-!
# A117117: A sequence related to M-partitions.

The programs for A117117, there is no canonical definition to state claims against.
-/

/-! ## A117117.P2303076290190129634

`A139338(A034888(n)*A167932(n))`
-/

namespace A117117.P2303076290190129634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139338 (A034888 n * A167932 n).toNat

end

end A117117.P2303076290190129634

/-! ## A117117.P14722568747519232149

`A139338(A065033(n)*A167932(n))`
-/

namespace A117117.P14722568747519232149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139338 (A065033 n * A167932 n).toNat

end

end A117117.P14722568747519232149

/-!
# A117118: Number of partitions of n into consecutive parts containing no binary powers.

The programs for A117118, there is no canonical definition to state claims against.
-/

/-! ## A117118.P855927959627624639

`A373126(A283764(n+1))`
-/

namespace A117118.P855927959627624639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373126 (A283764 (n + 1)).toNat

end

end A117118.P855927959627624639

/-! ## A117118.P11835348489315137748

`A113483(n+1)%A078607(A335885(n+1))`
-/

namespace A117118.P11835348489315137748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A113483 (n + 1)) (A078607 (A335885 (n + 1)).toNat)

end

end A117118.P11835348489315137748

/-! ## A117118.P1086821321092705252

`A086402(2*(n+2))%A086411(A086449(n))`
-/

namespace A117118.P1086821321092705252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A086402 (2 * (n + 2))) (A086411 (A086449 n).toNat)

end

end A117118.P1086821321092705252

/-! ## A117118.P4686347855112171090

`A071161(A071189(n+1))%A071188(A071183(n+1))`
-/

namespace A117118.P4686347855112171090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A071161 (A071189 (n + 1)).toNat) (A071188 (A071183 (n + 1)).toNat)

end

end A117118.P4686347855112171090

/-! ## A117118.P15409689737764210625

`A352516(n*A187188(2*n+1))`
-/

namespace A117118.P15409689737764210625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352516 ((n : ℤ) * A187188 (2 * n + 1)).toNat

end

end A117118.P15409689737764210625

/-!
# A117119: Number of partitions of 2*n into two odd prime powers.

The programs for A117119, there is no canonical definition to state claims against.
-/

/-! ## A117119.P684505773152217168

`A054725(record[A038722(A181095(n+1))])`
-/

namespace A117119.P684505773152217168
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038722 (A181095 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054725 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A117119.P684505773152217168

/-!
# A117120: a(1)=1. a(n) is smallest positive integer not occurring earlier in the sequence where a(n) is congruent to -1 (mod a(n-1)).

The programs for A117120, the canonical program `A117120.P9394178660501111264` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A117120 has offset 1).

The definition of A117120 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A117120.P12804677193049816881

`A063946(A054429(n+1))`
-/

namespace A117120.P12804677193049816881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063946 (A054429 (n + 1)).toNat

end

end A117120.P12804677193049816881

namespace A117120

/-- `A063946(A054429(n+1))` -/
def P12804677193049816881.Spec : Prop :=
  ∀ n, P12804677193049816881.a n = A117120 (n + 1)

end A117120

/-! ## A117120.P3557030728157594396

`A284120(A258746(n+1))`
-/

namespace A117120.P3557030728157594396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284120 (A258746 (n + 1)).toNat

end

end A117120.P3557030728157594396

namespace A117120

/-- `A284120(A258746(n+1))` -/
def P3557030728157594396.Spec : Prop :=
  ∀ n, P3557030728157594396.a n = A117120 (n + 1)

end A117120

/-! ## A117120.P9394178660501111264

`A063946(A004756(n+1)-(2*n+3))`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A117120

/-- `A063946(A004756(n+1)-(2*n+3))` -/
def P9394178660501111264.Spec : Prop :=
  ∀ n, P9394178660501111264.a n = A117120 (n + 1)

theorem P9394178660501111264.correct : P9394178660501111264.Spec := by
  intro n
  simp only [A117120, Nat.add_sub_cancel]

end A117120

/-! ## A117120.P12968472196823985743

`A063946(3*A000079(floor(log2(n+1)))-2-n)`
-/

namespace A117120.P12968472196823985743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063946 (3 * A000079 (Nat.log 2 (n + 1)) - 2 - (n : ℤ)).toNat

end

end A117120.P12968472196823985743

namespace A117120

/-- `A063946(3*A000079(floor(log2(n+1)))-2-n)` -/
def P12968472196823985743.Spec : Prop :=
  ∀ n, P12968472196823985743.a n = A117120 (n + 1)

theorem P12968472196823985743.correct : P12968472196823985743.Spec := by
  intro n
  simp only [A117120, Nat.add_sub_cancel, A117120.P12968472196823985743.a, A117120.P9394178660501111264.a, A000079, A000079.P10855139691139572931.a, A004756, A004756.P4780538030628569258.a, A063946, A063946.P14831572246508618093.a, A053644, A053644.P1707366427427647095.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A117120

/-! ## A117120.P5186883945934967919

`A063946(A053644(n+1)+A035327(n+1))`
-/

namespace A117120.P5186883945934967919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063946 (A053644 (n + 1) + A035327 (n + 1)).toNat

end

end A117120.P5186883945934967919

namespace A117120

/-- `A063946(A053644(n+1)+A035327(n+1))` -/
def P5186883945934967919.Spec : Prop :=
  ∀ n, P5186883945934967919.a n = A117120 (n + 1)

end A117120

/-! ## A117120.P10430778983037205547

`A063946(A004754(n+1)-A006257(n+1))`
-/

namespace A117120.P10430778983037205547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063946 (A004754 (n + 1) - A006257 (n + 1)).toNat

end

end A117120.P10430778983037205547

namespace A117120

/-- `A063946(A004754(n+1)-A006257(n+1))` -/
def P10430778983037205547.Spec : Prop :=
  ∀ n, P10430778983037205547.a n = A117120 (n + 1)

end A117120

/-! ## A117120.P2692511698762798511

`xor(A004526(A053644(n+1)), A054429(n+1))`
-/

namespace A117120.P2692511698762798511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A004526 (A053644 (n + 1)).toNat) (A054429 (n + 1))

end

end A117120.P2692511698762798511

namespace A117120

/-- `xor(A004526(A053644(n+1)), A054429(n+1))` -/
def P2692511698762798511.Spec : Prop :=
  ∀ n, P2692511698762798511.a n = A117120 (n + 1)

end A117120

/-! ## A117120.P1250244779098156847

`A063946(A080079(n+1)-A053645(n+1)+n)`
-/

namespace A117120.P1250244779098156847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063946 (A080079 (n + 1) - A053645 (n + 1) + (n : ℤ)).toNat

end

end A117120.P1250244779098156847

namespace A117120

/-- `A063946(A080079(n+1)-A053645(n+1)+n)` -/
def P1250244779098156847.Spec : Prop :=
  ∀ n, P1250244779098156847.a n = A117120 (n + 1)

end A117120

/-! ## A117120.P4124295278130967456

`xor(n+1, A003817(A002265(n+1)))`
-/

namespace A117120.P4124295278130967456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n + 1 : ℤ) (A003817 (A002265 (n + 1)).toNat)

end

end A117120.P4124295278130967456

namespace A117120

/-- `xor(n+1, A003817(A002265(n+1)))` -/
def P4124295278130967456.Spec : Prop :=
  ∀ n, P4124295278130967456.a n = A117120 (n + 1)

end A117120

/-! ## A117120.P17423555624415979900

`A063946(A003188(A180200(n+1)))`
-/

namespace A117120.P17423555624415979900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063946 (A003188 (A180200 (n + 1)).toNat).toNat

end

end A117120.P17423555624415979900

namespace A117120

/-- `A063946(A003188(A180200(n+1)))` -/
def P17423555624415979900.Spec : Prop :=
  ∀ n, P17423555624415979900.a n = A117120 (n + 1)

end A117120

/-! ## A117120.P3937528716065930123

`A006068(n+1)-A286548(A233279(n+1))`
-/

namespace A117120.P3937528716065930123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006068 (n + 1) - A286548 (A233279 (n + 1)).toNat

end

end A117120.P3937528716065930123

namespace A117120

/-- `A006068(n+1)-A286548(A233279(n+1))` -/
def P3937528716065930123.Spec : Prop :=
  ∀ n, P3937528716065930123.a n = A117120 (n + 1)

end A117120

/-! ## A117120.P16218706919451872010

`A006068(n+1)+A233279(n+1)-A063946(n+1)`
-/

namespace A117120.P16218706919451872010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006068 (n + 1) + (A233279 (n + 1) - A063946 (n + 1))

end

end A117120.P16218706919451872010

namespace A117120

/-- `A006068(n+1)+A233279(n+1)-A063946(n+1)` -/
def P16218706919451872010.Spec : Prop :=
  ∀ n, P16218706919451872010.a n = A117120 (n + 1)

end A117120

/-! ## A117120.P6111906844426196090

`A063946(A006068(A063946(A003188(n+1))))`
-/

namespace A117120.P6111906844426196090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063946 (A006068 (A063946 (A003188 (n + 1)).toNat).toNat).toNat

end

end A117120.P6111906844426196090

namespace A117120

/-- `A063946(A006068(A063946(A003188(n+1))))` -/
def P6111906844426196090.Spec : Prop :=
  ∀ n, P6111906844426196090.a n = A117120 (n + 1)

end A117120

/-! ## A117120.P17070814382889265508

`A180201(A233279(n+1))`
-/

namespace A117120.P17070814382889265508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180201 (A233279 (n + 1)).toNat

end

end A117120.P17070814382889265508

namespace A117120

/-- `A180201(A233279(n+1))` -/
def P17070814382889265508.Spec : Prop :=
  ∀ n, P17070814382889265508.a n = A117120 (n + 1)

end A117120

/-! ## A117120.P14604025237356396426

`A258996(A065190(A284447(A063946(n+1))))`
-/

namespace A117120.P14604025237356396426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258996 (A065190 (A284447 (A063946 (n + 1)).toNat).toNat).toNat

end

end A117120.P14604025237356396426

namespace A117120

/-- `A258996(A065190(A284447(A063946(n+1))))` -/
def P14604025237356396426.Spec : Prop :=
  ∀ n, P14604025237356396426.a n = A117120 (n + 1)

end A117120

/-! ## A117120.P3659778948692244864

`A233280(A180200(n+1))`
-/

namespace A117120.P3659778948692244864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233280 (A180200 (n + 1)).toNat

end

end A117120.P3659778948692244864

namespace A117120

/-- `A233280(A180200(n+1))` -/
def P3659778948692244864.Spec : Prop :=
  ∀ n, P3659778948692244864.a n = A117120 (n + 1)

end A117120

/-! ## A117120.P13641332899482041840

`A261349(A268716(n+1))`
-/

namespace A117120.P13641332899482041840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261349 (A268716 (n + 1)).toNat

end

end A117120.P13641332899482041840

namespace A117120

/-- `A261349(A268716(n+1))` -/
def P13641332899482041840.Spec : Prop :=
  ∀ n, P13641332899482041840.a n = A117120 (n + 1)

end A117120

/-! ## A117120.P861928496950076001

`A092569(A063946(A014681(n)+1))`
-/

namespace A117120.P861928496950076001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092569 (A063946 (A014681 n + 1).toNat).toNat

end

end A117120.P861928496950076001

namespace A117120

/-- `A092569(A063946(A014681(n)+1))` -/
def P861928496950076001.Spec : Prop :=
  ∀ n, P861928496950076001.a n = A117120 (n + 1)

end A117120

/-! ## A117120.P8423099834413219538

`A059893(A092569(A059893(n+1)))`
-/

namespace A117120.P8423099834413219538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059893 (A092569 (A059893 (n + 1)).toNat).toNat

end

end A117120.P8423099834413219538

namespace A117120

/-- `A059893(A092569(A059893(n+1)))` -/
def P8423099834413219538.Spec : Prop :=
  ∀ n, P8423099834413219538.a n = A117120 (n + 1)

end A117120

/-! ## A117120.P3285402978016583466

`A092569(A065190(A063946(n+1)))`
-/

namespace A117120.P3285402978016583466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092569 (A065190 (A063946 (n + 1)).toNat).toNat

end

end A117120.P3285402978016583466

namespace A117120

/-- `A092569(A065190(A063946(n+1)))` -/
def P3285402978016583466.Spec : Prop :=
  ∀ n, P3285402978016583466.a n = A117120 (n + 1)

end A117120

/-!
# A117121: Numbers k for which none of the digits of k appear in the decimal expansion of 1/k.

The programs for A117121, there is no canonical definition to state claims against.
-/

/-! ## A117121.P14611415808481938538

`∩[A052382(n+1), A376090(n+1)]`
-/

namespace A117121.P14611415808481938538
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052382 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376090 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A117121.P14611415808481938538

/-! ## A117121.P2098068796688115233

`filter[A376090(n+1), A168046(#)]`
-/

namespace A117121.P2098068796688115233
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376090 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A168046 (f1 j).toNat = 1) n)

end

end A117121.P2098068796688115233

/-! ## A117121.P5143694609288517899

`∩[A376090(n+1), A055572(n)]`
-/

namespace A117121.P5143694609288517899
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376090 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055572 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A117121.P5143694609288517899

/-! ## A117121.P18155390850401281162

`∩[A376090(n+1), A055570(n)]`
-/

namespace A117121.P18155390850401281162
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376090 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055570 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A117121.P18155390850401281162

/-! ## A117121.P14450467042061411215

`∩[A055571(n+1), A376090(n+1)]`
-/

namespace A117121.P14450467042061411215
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055571 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376090 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A117121.P14450467042061411215

/-!
# A117122: Number of different digits in the decimal expansion of 1/n.

The programs for A117122, there is no canonical definition to state claims against.
-/

/-! ## A117122.P17349732185685728764

`A155585(A104144(n))+A121341(n+1)`
-/

namespace A117122.P17349732185685728764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155585 (A104144 n).toNat + A121341 (n + 1)

end

end A117122.P17349732185685728764

/-! ## A117122.P2197948359365864320

`A121341(n+1)+A033782(A107293(A107293(n)))`
-/

namespace A117122.P2197948359365864320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121341 (n + 1) + A033782 (A107293 (A107293 n).toNat).toNat

end

end A117122.P2197948359365864320

/-!
# A117123: n minus the number of 0's in binary expansion of n.

The programs for A117123, the canonical program `A117123.P7394875858748656510` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A117123 has offset 1).

The definition of A117123 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A117123.P7394875858748656510

`∑[3-Δ[a(floor(n/2))+n+1]]` with `a(0)=0`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A117123

/-- `∑[3-Δ[a(floor(n/2))+n+1]]` -/
def P7394875858748656510.Spec : Prop :=
  ∀ n, P7394875858748656510.a n = A117123 (n + 1)

theorem P7394875858748656510.correct : P7394875858748656510.Spec := by
  intro n
  simp only [A117123, Nat.add_sub_cancel]

end A117123

/-! ## A117123.P810876193961214621

`a(floor((n-1)/2))+ceil(xor(1, n)/2)` with `a(0)=1`
-/

namespace A117123.P810876193961214621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a ⌊((n : ℤ) - 1 : ℚ) / 2⌋.toNat + ⌈(Nat.xor 1 n : ℚ) / 2⌉

end

end A117123.P810876193961214621

namespace A117123

/-- `a(floor((n-1)/2))+ceil(xor(1, n)/2)` -/
def P810876193961214621.Spec : Prop :=
  ∀ n, P810876193961214621.a n = A117123 (n + 1)

end A117123

/-! ## A117123.P6613526464831389373

`∑[2-char[2^n-1]-val(n+1, 2)]`
-/

namespace A117123.P6613526464831389373
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - 1

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) - (SequenceMachineLib.valuation (n + 1) 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A117123.P6613526464831389373

namespace A117123

/-- `∑[2-char[2^n-1]-val(n+1, 2)]` -/
def P6613526464831389373.Spec : Prop :=
  ∀ n, P6613526464831389373.a n = A117123 (n + 1)

end A117123

/-! ## A117123.P14546555683300498261

`a(floor((n-1)/2))+round(xor(1, n)/2)` with `a(0)=1, a(1)=1`
-/

namespace A117123.P14546555683300498261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  a ⌊((n : ℤ) - 1 : ℚ) / 2⌋.toNat + SequenceMachineLib.roundAway ((Nat.xor 1 n : ℚ) / 2)

end

end A117123.P14546555683300498261

namespace A117123

/-- `a(floor((n-1)/2))+round(xor(1, n)/2)` -/
def P14546555683300498261.Spec : Prop :=
  ∀ n, P14546555683300498261.a n = A117123 (n + 1)

end A117123

/-! ## A117123.P18325898051963022463

`∑[a(floor((n-1)/2))+1-a(n-1)]` with `a(0)=1, a(1)=0`
-/

namespace A117123.P18325898051963022463
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n f1 =>
  f1 ⌊((n : ℤ) - 1 : ℚ) / 2⌋.toNat + (1 - f1 (n - 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A117123.P18325898051963022463

namespace A117123

/-- `∑[a(floor((n-1)/2))+1-a(n-1)]` -/
def P18325898051963022463.Spec : Prop :=
  ∀ n, P18325898051963022463.a n = A117123 (n + 1)

end A117123

/-! ## A117123.P15615086054815094057

`∑[1-(a(n-1)-a(floor((n-1)/2)))]` with `a(0)=1, a(1)=0`
-/

namespace A117123.P15615086054815094057
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n f1 =>
  1 - (f1 (n - 1) - f1 ⌊((n : ℤ) - 1 : ℚ) / 2⌋.toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A117123.P15615086054815094057

namespace A117123

/-- `∑[1-(a(n-1)-a(floor((n-1)/2)))]` -/
def P15615086054815094057.Spec : Prop :=
  ∀ n, P15615086054815094057.a n = A117123 (n + 1)

end A117123

/-! ## A117123.P3033248464758337622

`∑[1-Δ[A080791(n)]]`
-/

namespace A117123.P3033248464758337622
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080791 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A117123.P3033248464758337622

namespace A117123

/-- `∑[1-Δ[A080791(n)]]` -/
def P3033248464758337622.Spec : Prop :=
  ∀ n, P3033248464758337622.a n = A117123 (n + 1)

end A117123

/-! ## A117123.P12995040290231829072

`∑[1-A089263(n+1)]`
-/

namespace A117123.P12995040290231829072
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A089263 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A117123.P12995040290231829072

namespace A117123

/-- `∑[1-A089263(n+1)]` -/
def P12995040290231829072.Spec : Prop :=
  ∀ n, P12995040290231829072.a n = A117123 (n + 1)

end A117123

/-! ## A117123.P9136912598200179342

`∑[2-A135523(n+1)]`
-/

namespace A117123.P9136912598200179342
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A135523 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A117123.P9136912598200179342

namespace A117123

/-- `∑[2-A135523(n+1)]` -/
def P9136912598200179342.Spec : Prop :=
  ∀ n, P9136912598200179342.a n = A117123 (n + 1)

end A117123

/-! ## A117123.P16239498852627713678

`∑[3-A135560(n+1)]`
-/

namespace A117123.P16239498852627713678
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - A135560 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A117123.P16239498852627713678

namespace A117123

/-- `∑[3-A135560(n+1)]` -/
def P16239498852627713678.Spec : Prop :=
  ∀ n, P16239498852627713678.a n = A117123 (n + 1)

end A117123

/-! ## A117123.P7597543305843884225

`n+1-Δ[A059015(n)]`
-/

namespace A117123.P7597543305843884225
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059015 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - (f1 (n + 1) - f1 n)

end

end A117123.P7597543305843884225

namespace A117123

/-- `n+1-Δ[A059015(n)]` -/
def P7597543305843884225.Spec : Prop :=
  ∀ n, P7597543305843884225.a n = A117123 (n + 1)

end A117123

/-! ## A117123.P14417228071678778736

`1-A023416(n+1)+n`
-/

namespace A117123.P14417228071678778736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A023416 (n + 1) + (n : ℤ)

end

end A117123.P14417228071678778736

namespace A117123

/-- `1-A023416(n+1)+n` -/
def P14417228071678778736.Spec : Prop :=
  ∀ n, P14417228071678778736.a n = A117123 (n + 1)

end A117123

/-! ## A117123.P15066839801144396289

`1-A080791(n+1)+n`
-/

namespace A117123.P15066839801144396289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A080791 (n + 1) + (n : ℤ)

end

end A117123.P15066839801144396289

namespace A117123

/-- `1-A080791(n+1)+n` -/
def P15066839801144396289.Spec : Prop :=
  ∀ n, P15066839801144396289.a n = A117123 (n + 1)

end A117123

/-! ## A117123.P7045490171690793374

`2-A290251(n+1)+n`
-/

namespace A117123.P7045490171690793374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A290251 (n + 1) + (n : ℤ)

end

end A117123.P7045490171690793374

namespace A117123

/-- `2-A290251(n+1)+n` -/
def P7045490171690793374.Spec : Prop :=
  ∀ n, P7045490171690793374.a n = A117123 (n + 1)

end A117123

/-! ## A117123.P5462236035051591778

`A337319(n+1)+A011371(n)`
-/

namespace A117123.P5462236035051591778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337319 (n + 1) + A011371 n

end

end A117123.P5462236035051591778

namespace A117123

/-- `A337319(n+1)+A011371(n)` -/
def P5462236035051591778.Spec : Prop :=
  ∀ n, P5462236035051591778.a n = A117123 (n + 1)

end A117123

/-! ## A117123.P15229754238980968147

`A274575(n)+A113474(n+1)`
-/

namespace A117123.P15229754238980968147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274575 n + A113474 (n + 1)

end

end A117123.P15229754238980968147

namespace A117123

/-- `A274575(n)+A113474(n+1)` -/
def P15229754238980968147.Spec : Prop :=
  ∀ n, P15229754238980968147.a n = A117123 (n + 1)

end A117123

/-! ## A117123.P4127954360458891597

`n+1-A000120(A035327(n+1))`
-/

namespace A117123.P4127954360458891597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A000120 (A035327 (n + 1)).toNat

end

end A117123.P4127954360458891597

namespace A117123

/-- `n+1-A000120(A035327(n+1))` -/
def P4127954360458891597.Spec : Prop :=
  ∀ n, P4127954360458891597.a n = A117123 (n + 1)

end A117123

/-! ## A117123.P1492791120252709938

`A011371(n+1)-A037861(n+1)`
-/

namespace A117123.P1492791120252709938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011371 (n + 1) - A037861 (n + 1)

end

end A117123.P1492791120252709938

namespace A117123

/-- `A011371(n+1)-A037861(n+1)` -/
def P1492791120252709938.Spec : Prop :=
  ∀ n, P1492791120252709938.a n = A117123 (n + 1)

end A117123

/-! ## A117123.P13465742882081265358

`n+1-A087808(A115378(n+1))`
-/

namespace A117123.P13465742882081265358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A087808 (A115378 (n + 1)).toNat

end

end A117123.P13465742882081265358

namespace A117123

/-- `n+1-A087808(A115378(n+1))` -/
def P13465742882081265358.Spec : Prop :=
  ∀ n, P13465742882081265358.a n = A117123 (n + 1)

end A117123

/-! ## A117123.P11238884645624277735

`A050487(n+1)-A376116(n+1)`
-/

namespace A117123.P11238884645624277735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050487 (n + 1) - A376116 (n + 1)

end

end A117123.P11238884645624277735

namespace A117123

/-- `A050487(n+1)-A376116(n+1)` -/
def P11238884645624277735.Spec : Prop :=
  ∀ n, P11238884645624277735.a n = A117123 (n + 1)

end A117123

/-!
# A117124: Numbers that when multiplied by 37 produce a palindrome number.

The programs for A117124, there is no canonical definition to state claims against.
-/

/-! ## A117124.P9467166271414439305

`eq[1, A261424(37*n+1)]`
-/

namespace A117124.P9467166271414439305
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261424 (37 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A117124.P9467166271414439305

/-! ## A117124.P17449677948226676764

`eq[floor(acot(n))+1, A136522(37*n)]`
-/

namespace A117124.P17449677948226676764
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊SequenceMachineLib.acot (n : ℝ)⌋ + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136522 (37 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A117124.P17449677948226676764

/-! ## A117124.P12455216851417538758

`9*(eq[n+1, A069554(n+1)]+1)/3`
-/

namespace A117124.P12455216851417538758
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069554 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  9 * ((SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1 : ℚ) / 3)

end

end A117124.P12455216851417538758

/-! ## A117124.P9958625779331522358

`A225267(A089717(n+2))`
-/

namespace A117124.P9958625779331522358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225267 (A089717 (n + 2)).toNat

end

end A117124.P9958625779331522358

/-! ## A117124.P10780983736679524898

`A002113(n+2)*A025503(A287384(n))`
-/

namespace A117124.P10780983736679524898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002113 (n + 2) * A025503 (A287384 n).toNat

end

end A117124.P10780983736679524898

/-!
# A117127: Concatenate the first n positive integers written in binary (with each integer written so the most significant 1 is on the left and the concatenated string is from left to right). a(n) is the number of times n written in binary appears in the concatenated string.

The programs for A117127, there is no canonical definition to state claims against.
-/

/-! ## A117127.P12622705862374013451

`A187752(n+1)%A187750(n+1)+1`
-/

namespace A117127.P12622705862374013451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A187752 (n + 1)) (A187750 (n + 1)) + 1

end

end A117127.P12622705862374013451

/-! ## A117127.P3345533362228539432

`(A187752(n+1)+1)%A283117(n+1)`
-/

namespace A117127.P3345533362228539432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A187752 (n + 1) + 1) (A283117 (n + 1))

end

end A117127.P3345533362228539432

/-! ## A117127.P15702167711615558141

`A101933(n+1)+A025469(A169986(n))`
-/

namespace A117127.P15702167711615558141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101933 (n + 1) + A025469 (A169986 n).toNat

end

end A117127.P15702167711615558141

/-! ## A117127.P18111092762052111054

`A297943(A000124(n))+A187752(n+1)`
-/

namespace A117127.P18111092762052111054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297943 (A000124 n).toNat + A187752 (n + 1)

end

end A117127.P18111092762052111054

/-! ## A117127.P2287893333493141297

`A101933(n+1)%A101973(n+4)`
-/

namespace A117127.P2287893333493141297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A101933 (n + 1)) (A101973 (n + 4))

end

end A117127.P2287893333493141297

/-!
# A117128: 

The programs for A117128, there is no canonical definition to state claims against.
-/

/-! ## A117128.P67191275773310303

`A064365(n)+1`
-/

namespace A117128.P67191275773310303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064365 n + 1

end

end A117128.P67191275773310303

/-! ## A117128.P10176577713816867327

`A008619(2*A064365(n))`
-/

namespace A117128.P10176577713816867327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (2 * A064365 n).toNat

end

end A117128.P10176577713816867327

/-! ## A117128.P10232895353211580027

`A052938(2*A064365(n))`
-/

namespace A117128.P10232895353211580027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052938 (2 * A064365 n).toNat

end

end A117128.P10232895353211580027

/-! ## A117128.P5587784052661979962

`A080513(2*A064365(n))`
-/

namespace A117128.P5587784052661979962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080513 (2 * A064365 n).toNat

end

end A117128.P5587784052661979962

/-! ## A117128.P13896530099820340055

`A110514(2*A064365(n))`
-/

namespace A117128.P13896530099820340055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110514 (2 * A064365 n).toNat

end

end A117128.P13896530099820340055

/-! ## A117128.P17041280309167951744

`A308217(2*A064365(n))`
-/

namespace A117128.P17041280309167951744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308217 (2 * A064365 n).toNat

end

end A117128.P17041280309167951744

/-! ## A117128.P7455560996165481006

`A008611(3*A064365(n))`
-/

namespace A117128.P7455560996165481006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (3 * A064365 n).toNat

end

end A117128.P7455560996165481006

/-! ## A117128.P9681422541953469160

`A000463(xor(1, 2*A064365(n)))`
-/

namespace A117128.P9681422541953469160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000463 (Int.xor 1 (2 * A064365 n)).toNat

end

end A117128.P9681422541953469160

/-!
# A117129: Primes not occurring as |differences| in Cald's sequence A006509.

The programs for A117129, there is no canonical definition to state claims against.
-/

/-! ## A117129.P11459982475275764965

`A000040(A112877(n+1)-1)`
-/

namespace A117129.P11459982475275764965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A112877 (n + 1) - 1).toNat

end

end A117129.P11459982475275764965

/-! ## A117129.P16244096345540753043

`A008578(A112877(n+1))`
-/

namespace A117129.P16244096345540753043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A112877 (n + 1)).toNat

end

end A117129.P16244096345540753043

/-! ## A117129.P230311828609688244

`A158611(A112877(n+1)+1)`
-/

namespace A117129.P230311828609688244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158611 (A112877 (n + 1) + 1).toNat

end

end A117129.P230311828609688244

/-! ## A117129.P6868474446228858562

`A006005(A112877(n+1)-1)`
-/

namespace A117129.P6868474446228858562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (A112877 (n + 1) - 1).toNat

end

end A117129.P6868474446228858562

/-! ## A117129.P1316803855244251015

`A107801(A112877(n+1)-1)`
-/

namespace A117129.P1316803855244251015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107801 (A112877 (n + 1) - 1).toNat

end

end A117129.P1316803855244251015

/-!
# A117130: Maximal number of cycles in complete graph on n nodes that can be unknotted when the graph is embedded in three-dimensional Euclidean space.

The programs for A117130, there is no canonical definition to state claims against.
-/

/-! ## A117130.P1776197277341332530

`∑[(a(n-1)+(n-2)/2)*(n-1)]-∑{digits}[n, floor(#/7)]` with `a(0)=0`
-/

namespace A117130.P1776197277341332530
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [0] fun n f1 =>
  (f1 (n - 1) + ((n : ℤ) - 2 : ℚ) / 2) * ((n : ℤ) - 1 : ℚ)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - ((((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => ⌊(x : ℚ) / 7⌋).sum : ℤ) : ℚ)

end

end A117130.P1776197277341332530

/-! ## A117130.P4520553826635152136

`∑[(a(n-1)+(n-2)/2)*(n-1)]-a(∑{e}[n+1, #])` with `a(0)=0, a(1)=0`
-/

namespace A117130.P4520553826635152136
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [0, 0] fun n f1 =>
  (f1 (n - 1) + ((n : ℤ) - 2 : ℚ) / 2) * ((n : ℤ) - 1 : ℚ)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.rec [0, 0] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j - a (∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p)

end

end A117130.P4520553826635152136

/-! ## A117130.P641791896224548330

`A002807(n)-char[7]`
-/

namespace A117130.P641791896224548330
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002807 n - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A117130.P641791896224548330

/-! ## A117130.P2248760296476105809

`∑[A038155(abs(1-n))]-char[7]`
-/

namespace A117130.P2248760296476105809
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038155 |1 - (n : ℤ)|.toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

end

end A117130.P2248760296476105809

/-!
# A117131: Remainder when n^n is divided by the n-th prime number.

The programs for A117131, the canonical program `A117131.P10509290859657700115` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A117131 has offset 1).

The definition of A117131 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A117131.P10509290859657700115

`((n+1)^(n+1))%A000040(n+1)`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A117131

/-- `((n+1)^(n+1))%A000040(n+1)` -/
def P10509290859657700115.Spec : Prop :=
  ∀ n, P10509290859657700115.a n = A117131 (n + 1)

theorem P10509290859657700115.correct : P10509290859657700115.Spec := by
  intro n
  simp only [A117131, Nat.add_sub_cancel]

end A117131

/-! ## A117131.P361726675533926938

`((n+1)^(n+1))%Δ[A007504(n)]`
-/

namespace A117131.P361726675533926938
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((n + 1) ^ (n + 1) : ℤ) (f1 (n + 1) - f1 n)

end

end A117131.P361726675533926938

namespace A117131

/-- `((n+1)^(n+1))%Δ[A007504(n)]` -/
def P361726675533926938.Spec : Prop :=
  ∀ n, P361726675533926938.a n = A117131 (n + 1)

end A117131

/-! ## A117131.P7509559963506355689

`((n+1)*(n+1)^n)%eq[2, A007012(n)]`
-/

namespace A117131.P7509559963506355689
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007012 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * (n + 1) ^ n % SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A117131.P7509559963506355689

namespace A117131

/-- `((n+1)*(n+1)^n)%eq[2, A007012(n)]` -/
def P7509559963506355689.Spec : Prop :=
  ∀ n, (P7509559963506355689.a n : ℤ) = A117131 (n + 1)

end A117131

/-! ## A117131.P4549670341051693902

`((n+1)^-xor(n, -1))%record[A006530(n+2)]`
-/

namespace A117131.P4549670341051693902
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((n + 1 : ℚ) ^ (-Int.xor (n : ℤ) (-1) : ℤ))) (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A117131.P4549670341051693902

namespace A117131

/-- `((n+1)^-xor(n, -1))%record[A006530(n+2)]` -/
def P4549670341051693902.Spec : Prop :=
  ∀ n, P4549670341051693902.a n = A117131 (n + 1)

end A117131

/-! ## A117131.P17999671159867150904

`Δ[A001923(n)]%p?[A057979(n)]`
-/

namespace A117131.P17999671159867150904
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001923 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n))

end

end A117131.P17999671159867150904

namespace A117131

/-- `Δ[A001923(n)]%p?[A057979(n)]` -/
def P17999671159867150904.Spec : Prop :=
  ∀ n, P17999671159867150904.a n = A117131 (n + 1)

end A117131

/-! ## A117131.P14311170290152190579

`A000312(n+1)%p?[A001057(n)]`
-/

namespace A117131.P14311170290152190579
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000312 (n + 1)) (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A117131.P14311170290152190579

namespace A117131

/-- `A000312(n+1)%p?[A001057(n)]` -/
def P14311170290152190579.Spec : Prop :=
  ∀ n, P14311170290152190579.a n = A117131 (n + 1)

end A117131

/-! ## A117131.P10056403250309920305

`A094093((n+1)²)%record[A006530(n+2)]`
-/

namespace A117131.P10056403250309920305
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A094093 ((n + 1) ^ 2)) (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A117131.P10056403250309920305

namespace A117131

/-- `A094093((n+1)²)%record[A006530(n+2)]` -/
def P10056403250309920305.Spec : Prop :=
  ∀ n, P10056403250309920305.a n = A117131 (n + 1)

end A117131

/-! ## A117131.P10259763002332772053

`(A008619(2*n)^(n+1))%record[A006530(n+2)]`
-/

namespace A117131.P10259763002332772053
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008619 (2 * n) ^ (n + 1)) (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A117131.P10259763002332772053

namespace A117131

/-- `(A008619(2*n)^(n+1))%record[A006530(n+2)]` -/
def P10259763002332772053.Spec : Prop :=
  ∀ n, P10259763002332772053.a n = A117131 (n + 1)

end A117131

/-!
# A117132: Numbers n such that 5*n^5 + 1 is prime.

The programs for A117132, there is no canonical definition to state claims against.
-/

/-! ## A117132.P3454249395013097382

`A100464(A261896(n))`
-/

namespace A117132.P3454249395013097382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100464 (A261896 n).toNat

end

end A117132.P3454249395013097382

/-!
# A117133: Dimensions of the traditional Cartan exceptional group sequence A1, G2, F4, E6, E7, E8.

The programs for A117133, there is no canonical definition to state claims against.
-/

/-! ## A117133.P8759181037131887557

`A113907(n%a(n-1))` with `a(0)=3`
-/

namespace A117133.P8759181037131887557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  A113907 (Int.tmod (n : ℤ) (a (n - 1))).toNat

end

end A117133.P8759181037131887557

/-!
# A117135: n-digit primes for which the product of the digits is an n-digit number.

The programs for A117135, there is no canonical definition to state claims against.
-/

/-! ## A117135.P17955905113647983604

`p?[A048671(A306374(n+2)²)]`
-/

namespace A117135.P17955905113647983604
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048671 (A306374 (n + 2) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A117135.P17955905113647983604

/-! ## A117135.P10917817065204019287

`p?[∑[A055098(A007931(n+1))]]`
-/

namespace A117135.P10917817065204019287
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055098 (A007931 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A117135.P10917817065204019287

/-! ## A117135.P17048914506860149231

`p?[∑[A055098(A032810(n+1))]]`
-/

namespace A117135.P17048914506860149231
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055098 (A032810 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A117135.P17048914506860149231

/-! ## A117135.P16596517071328737116

`p?[∑[A055098(A032834(n+1))]]`
-/

namespace A117135.P16596517071328737116
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055098 (A032834 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A117135.P16596517071328737116

/-! ## A117135.P11497103404845752697

`eq[A178948(n+1), A331375(n)]`
-/

namespace A117135.P11497103404845752697
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178948 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331375 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A117135.P11497103404845752697

/-!
# A117136: Triangle read by rows: row n always begins with 1. Later terms in row n are obtained by successively subtracting or adding the numbers n, n+1, n+2, until reaching 1 again. The rule is that you subtract if the result is positive, otherwise you add.

The programs for A117136, there is no canonical definition to state claims against.
-/

/-! ## A117136.P7255003238200976183

`A117138(n)+1`
-/

namespace A117136.P7255003238200976183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117138 n + 1

end

end A117136.P7255003238200976183

/-! ## A117136.P4755062090891889630

`A074805(A117138(n))`
-/

namespace A117136.P4755062090891889630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074805 (A117138 n).toNat

end

end A117136.P4755062090891889630

/-! ## A117136.P11014767232838747696

`A175213(A117138(n)²)`
-/

namespace A117136.P11014767232838747696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175213 (A117138 n ^ 2).toNat

end

end A117136.P11014767232838747696

/-! ## A117136.P16904918491764854456

`A117137(A056847(n+1))`
-/

namespace A117136.P16904918491764854456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117137 (A056847 (n + 1)).toNat

end

end A117136.P16904918491764854456

/-! ## A117136.P5567016558005524259

`A008619(2*A117138(n))`
-/

namespace A117136.P5567016558005524259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (2 * A117138 n).toNat

end

end A117136.P5567016558005524259

/-! ## A117136.P15518032159688741128

`A117137(n-A259361(n))`
-/

namespace A117136.P15518032159688741128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117137 ((n : ℤ) - A259361 n).toNat

end

end A117136.P15518032159688741128

/-! ## A117136.P18257386142959461391

`2-(A007318(and(2, -n))-A117138(n))`
-/

namespace A117136.P18257386142959461391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (A007318 (Int.land 2 (-(n : ℤ))).toNat - A117138 n)

end

end A117136.P18257386142959461391

/-! ## A117136.P16577769898208347876

`2-(A007318(∑[n]-n)-A117138(n))`
-/

namespace A117136.P16577769898208347876
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (A007318 (∑ j ∈ Finset.range (n + 1), f1 j - n) - A117138 n)

end

end A117136.P16577769898208347876

/-! ## A117136.P2877906502699546447

`(A117138(n)-log2(1/2))%record[A000032(n)]`
-/

namespace A117136.P2877906502699546447
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A117138 n : ℝ) - Real.logb 2 ((1 : ℚ) / 2 : ℝ))) (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A117136.P2877906502699546447

/-! ## A117136.P16745569691649939085

`A117138(n)-log2(1/2)-A000045(C(n, 64))`
-/

namespace A117136.P16745569691649939085
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A117138 n : ℝ) - Real.logb 2 ((1 : ℚ) / 2 : ℝ) - (A000045 (Nat.choose n 64) : ℝ)

end

end A117136.P16745569691649939085

/-!
# A117137: Same as triangle in A117136, but omit final 1 from each row.

The programs for A117137, there is no canonical definition to state claims against.
-/

/-! ## A117137.P7715778825043478688

`A117139(n)+1`
-/

namespace A117137.P7715778825043478688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117139 n + 1

end

end A117137.P7715778825043478688

/-! ## A117137.P4134282002328544463

`A117136(comp[∑[2*(n+1)]])`
-/

namespace A117137.P4134282002328544463
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117136 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A117137.P4134282002328544463

/-! ## A117137.P6160254109725032304

`A117138(comp[∑[2*(n+1)]])+1`
-/

namespace A117137.P6160254109725032304
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117138 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) + 1

end

end A117137.P6160254109725032304

/-! ## A117137.P13627140697255169651

`A074805(A117139(n))`
-/

namespace A117137.P13627140697255169651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074805 (A117139 n).toNat

end

end A117137.P13627140697255169651

/-! ## A117137.P6720816071975292623

`A175213(A117139(n)²)`
-/

namespace A117137.P6720816071975292623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175213 (A117139 n ^ 2).toNat

end

end A117137.P6720816071975292623

/-! ## A117137.P3822255301465629663

`A008619(2*A117139(n))`
-/

namespace A117137.P3822255301465629663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (2 * A117139 n).toNat

end

end A117137.P3822255301465629663

/-! ## A117137.P12488679447281581585

`A029579(2*A117139(n))`
-/

namespace A117137.P12488679447281581585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029579 (2 * A117139 n).toNat

end

end A117137.P12488679447281581585

/-! ## A117137.P4824907121675204746

`A008611(3*A117139(n))`
-/

namespace A117137.P4824907121675204746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (3 * A117139 n).toNat

end

end A117137.P4824907121675204746

/-! ## A117137.P9951829995566446002

`A008620(3*A117139(n))`
-/

namespace A117137.P9951829995566446002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (3 * A117139 n).toNat

end

end A117137.P9951829995566446002

/-! ## A117137.P15302276831162322016

`2-(A007318(∑[n])-A117139(n))`
-/

namespace A117137.P15302276831162322016
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (A007318 (∑ j ∈ Finset.range (n + 1), f1 j) - A117139 n)

end

end A117137.P15302276831162322016

/-!
# A117138: Similar to A117136 but begin each row with 0. Equals A117136 - 1.

The programs for A117138, there is no canonical definition to state claims against.
-/

/-! ## A117138.P14996369509304151672

`A117136(n)-1`
-/

namespace A117138.P14996369509304151672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117136 n - 1

end

end A117138.P14996369509304151672

/-! ## A117138.P3925176234203492311

`A002837(A117136(n))`
-/

namespace A117138.P3925176234203492311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002837 (A117136 n).toNat

end

end A117138.P3925176234203492311

/-! ## A117138.P8876123801925772147

`A057918(A117136(n)²)`
-/

namespace A117138.P8876123801925772147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057918 (A117136 n ^ 2).toNat

end

end A117138.P8876123801925772147

/-! ## A117138.P11698525318230237314

`A086520(A117136(n)²)`
-/

namespace A117138.P11698525318230237314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086520 (A117136 n ^ 2).toNat

end

end A117138.P11698525318230237314

/-! ## A117138.P2445162448746753593

`A259361(A117136(n)²)`
-/

namespace A117138.P2445162448746753593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259361 (A117136 n ^ 2).toNat

end

end A117138.P2445162448746753593

/-! ## A117138.P18394624775153815565

`A338629(A117136(n)²)`
-/

namespace A117138.P18394624775153815565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338629 (A117136 n ^ 2).toNat

end

end A117138.P18394624775153815565

/-! ## A117138.P3999091010647422599

`A023444(A117136(n)+1)`
-/

namespace A117138.P3999091010647422599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 (A117136 n + 1).toNat

end

end A117138.P3999091010647422599

/-! ## A117138.P11725175762032977028

`A117139(A056847(n+1))`
-/

namespace A117138.P11725175762032977028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117139 (A056847 (n + 1)).toNat

end

end A117138.P11725175762032977028

/-! ## A117138.P526588080317259102

`A023446(A117136(n)+3)`
-/

namespace A117138.P526588080317259102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023446 (A117136 n + 3).toNat

end

end A117138.P526588080317259102

/-! ## A117138.P13723624795090847087

`A046667(2*A117136(n))`
-/

namespace A117138.P13723624795090847087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046667 (2 * A117136 n).toNat

end

end A117138.P13723624795090847087

/-!
# A117139: Similar to A117137 but begin each row with 0. Equals A117137 - 1.

The programs for A117139, there is no canonical definition to state claims against.
-/

/-! ## A117139.P10610346238123905222

`A117137(n)-1`
-/

namespace A117139.P10610346238123905222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117137 n - 1

end

end A117139.P10610346238123905222

/-! ## A117139.P15587629089584840468

`A117138(comp[∑[2*(n+1)]])`
-/

namespace A117139.P15587629089584840468
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117138 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A117139.P15587629089584840468

/-! ## A117139.P7508481797310246052

`A117136(comp[∑[2*(n+1)]])-1`
-/

namespace A117139.P7508481797310246052
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117136 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) - 1

end

end A117139.P7508481797310246052

/-! ## A117139.P18393393417853879298

`A002837(A117137(n))`
-/

namespace A117139.P18393393417853879298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002837 (A117137 n).toNat

end

end A117139.P18393393417853879298

/-! ## A117139.P4094477345417945614

`A057918(A117137(n)²)`
-/

namespace A117139.P4094477345417945614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057918 (A117137 n ^ 2).toNat

end

end A117139.P4094477345417945614

/-! ## A117139.P6555608069726314695

`A086520(A117137(n)²)`
-/

namespace A117139.P6555608069726314695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086520 (A117137 n ^ 2).toNat

end

end A117139.P6555608069726314695

/-! ## A117139.P14254782680079510246

`A259361(A117137(n)²)`
-/

namespace A117139.P14254782680079510246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259361 (A117137 n ^ 2).toNat

end

end A117139.P14254782680079510246

/-! ## A117139.P10769454198289648163

`A338629(A117137(n)²)`
-/

namespace A117139.P10769454198289648163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338629 (A117137 n ^ 2).toNat

end

end A117139.P10769454198289648163

/-! ## A117139.P13602203031846729793

`A023444(A117137(n)+1)`
-/

namespace A117139.P13602203031846729793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 (A117137 n + 1).toNat

end

end A117139.P13602203031846729793

/-! ## A117139.P1895430757696164375

`A070198(n)%A117137(n)`
-/

namespace A117139.P1895430757696164375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A070198 n) (A117137 n)

end

end A117139.P1895430757696164375

/-!
# A117140: a(1)=5, a(2)=7; for n >= 3, a(n) is smallest number which is uniquely of the form a(j)+a(k) with 1<=j<k<n.

The programs for A117140, there is no canonical definition to state claims against.
-/

/-! ## A117140.P11973779028462541964

`eq[A003056(A244543(n)), A064459(n)]`
-/

namespace A117140.P11973779028462541964
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A244543 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064459 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A117140.P11973779028462541964

/-! ## A117140.P8203992584872623384

`lt[A286069(A107745(3*n+5)), A169931(2*(n+2))]`
-/

namespace A117140.P8203992584872623384
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286069 (A107745 (3 * n + 5)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169931 (2 * (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A117140.P8203992584872623384

/-! ## A117140.P14192185307105523690

`eq[2, A137686(A329902(2*(n+2)))]`
-/

namespace A117140.P14192185307105523690
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137686 (A329902 (2 * (n + 2))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A117140.P14192185307105523690

/-! ## A117140.P15911136604554188971

`eq[2, A001222(A130080(n+1)+1)]+3`
-/

namespace A117140.P15911136604554188971
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A130080 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 3

end

end A117140.P15911136604554188971

/-!
# A117141: Primes of the form n!! - 1.

The programs for A117141, there is no canonical definition to state claims against.
-/

/-! ## A117141.P3124001780813170645

`A006882(A007749(n+1))-1`
-/

namespace A117141.P3124001780813170645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006882 (A007749 (n + 1)).toNat - 1

end

end A117141.P3124001780813170645

/-! ## A117141.P15679531531158050605

`A128882(A007749(n+1))`
-/

namespace A117141.P15679531531158050605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128882 (A007749 (n + 1)).toNat

end

end A117141.P15679531531158050605

/-! ## A117141.P8992185210251348072

`A274385(A178334(n)+n+1)`
-/

namespace A117141.P8992185210251348072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274385 (A178334 n + (n + 1 : ℤ)).toNat

end

end A117141.P8992185210251348072

/-! ## A117141.P732002879527478749

`A274385(lt[(-1)^n, A094587(n)])`
-/

namespace A117141.P732002879527478749
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094587 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274385 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A117141.P732002879527478749

/-! ## A117141.P15690336337715653822

`A274385(floor(A274426(n+1)/A274399(n+4)+n))`
-/

namespace A117141.P15690336337715653822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274385 ⌊(A274426 (n + 1) : ℚ) / (A274399 (n + 4) : ℚ) + (n : ℚ)⌋.toNat

end

end A117141.P15690336337715653822

/-!
# A117142: Number of partitions of n in which any two parts differ by at most 2.

The programs for A117142, the canonical program `A117142.P13629860812087380259` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A117142 has offset 1).

The definition of A117142 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A117142.P13629860812087380259

`(2*(n+1)*(n+6)+3+(-1)^(n+1)*(2*(n+1)-3))/16`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A117142

/-- `(2*(n+1)*(n+6)+3+(-1)^(n+1)*(2*(n+1)-3))/16` -/
def P13629860812087380259.Spec : Prop :=
  ∀ n, P13629860812087380259.a n = (A117142 (n + 1) : ℚ)

end A117142

/-! ## A117142.P9654276975609372561

`∑[gcd(xor(1, -n), ∑[n])]`
-/

namespace A117142.P9654276975609372561
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (Int.xor 1 (-(n : ℤ))) ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A117142.P9654276975609372561

namespace A117142

/-- `∑[gcd(xor(1, -n), ∑[n])]` -/
def P9654276975609372561.Spec : Prop :=
  ∀ n, (P9654276975609372561.a n : ℤ) = A117142 (n + 1)

end A117142

/-! ## A117142.P3095172696217229770

`∑[gcd(n+1, ceil(n/2))]`
-/

namespace A117142.P3095172696217229770
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) ⌈(n : ℚ) / 2⌉

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A117142.P3095172696217229770

namespace A117142

/-- `∑[gcd(n+1, ceil(n/2))]` -/
def P3095172696217229770.Spec : Prop :=
  ∀ n, (P3095172696217229770.a n : ℤ) = A117142 (n + 1)

end A117142

/-! ## A117142.P7382625189363776462

`∑[ceil(n/2)^(n%2)]`
-/

namespace A117142.P7382625189363776462
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℚ) / 2⌉ ^ (n % 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A117142.P7382625189363776462

namespace A117142

/-- `∑[ceil(n/2)^(n%2)]` -/
def P7382625189363776462.Spec : Prop :=
  ∀ n, P7382625189363776462.a n = A117142 (n + 1)

end A117142

/-! ## A117142.P5818950706923240337

`∑[ceil(gcd(n, or(1, n))/2)]`
-/

namespace A117142.P5818950706923240337
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Nat.gcd n (Nat.lor 1 n) : ℚ) / 2⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A117142.P5818950706923240337

namespace A117142

/-- `∑[ceil(gcd(n, or(1, n))/2)]` -/
def P5818950706923240337.Spec : Prop :=
  ∀ n, P5818950706923240337.a n = A117142 (n + 1)

end A117142

/-! ## A117142.P11912247712199618268

`∪[∑[n+1], ∑[n+2]]`
-/

namespace A117142.P11912247712199618268
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f3 j = x) n

end

end A117142.P11912247712199618268

namespace A117142

/-- `∪[∑[n+1], ∑[n+2]]` -/
def P11912247712199618268.Spec : Prop :=
  ∀ n, (P11912247712199618268.a n : ℤ) = A117142 (n + 1)

end A117142

/-! ## A117142.P8379671606954228280

`C(ceil(n/2), 2)+1+n`
-/

namespace A117142.P8379671606954228280
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose ⌈(n : ℚ) / 2⌉.toNat 2 + 1 + n

end

end A117142.P8379671606954228280

namespace A117142

/-- `C(ceil(n/2), 2)+1+n` -/
def P8379671606954228280.Spec : Prop :=
  ∀ n, (P8379671606954228280.a n : ℤ) = A117142 (n + 1)

end A117142

/-! ## A117142.P13244368148852521223

`C(round(n/2), 2)+n+1`
-/

namespace A117142.P13244368148852521223
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (SequenceMachineLib.roundAway ((n : ℚ) / 2)).toNat 2 + (n + 1)

end

end A117142.P13244368148852521223

namespace A117142

/-- `C(round(n/2), 2)+n+1` -/
def P13244368148852521223.Spec : Prop :=
  ∀ n, (P13244368148852521223.a n : ℤ) = A117142 (n + 1)

end A117142

/-! ## A117142.P17500495422425932757

`∑[((n+1)/2)^and(1, n)]`
-/

namespace A117142.P17500495422425932757
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℚ) / 2) ^ Nat.land 1 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A117142.P17500495422425932757

namespace A117142

/-- `∑[((n+1)/2)^and(1, n)]` -/
def P17500495422425932757.Spec : Prop :=
  ∀ n, P17500495422425932757.a n = (A117142 (n + 1) : ℚ)

end A117142

/-! ## A117142.P1449413756632057210

`∑[Δ[C(floor(n/2), 2)]+1]`
-/

namespace A117142.P1449413756632057210
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose ⌊(n : ℚ) / 2⌋.toNat 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A117142.P1449413756632057210

namespace A117142

/-- `∑[Δ[C(floor(n/2), 2)]+1]` -/
def P1449413756632057210.Spec : Prop :=
  ∀ n, P1449413756632057210.a n = A117142 (n + 1)

end A117142

/-! ## A117142.P1315592815634669950

`∑[C(ceil(n/2), floor(n/2))]`
-/

namespace A117142.P1315592815634669950
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose ⌈(n : ℚ) / 2⌉.toNat ⌊(n : ℚ) / 2⌋.toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A117142.P1315592815634669950

namespace A117142

/-- `∑[C(ceil(n/2), floor(n/2))]` -/
def P1315592815634669950.Spec : Prop :=
  ∀ n, (P1315592815634669950.a n : ℤ) = A117142 (n + 1)

end A117142

/-! ## A117142.P3235101377257155146

`∑[a(n-2)+and(1, n)]` with `a(0)=1, a(1)=1`
-/

namespace A117142.P3235101377257155146
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  f1 (n - 2) + Nat.land 1 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A117142.P3235101377257155146

namespace A117142

/-- `∑[a(n-2)+and(1, n)]` -/
def P3235101377257155146.Spec : Prop :=
  ∀ n, (P3235101377257155146.a n : ℤ) = A117142 (n + 1)

end A117142

/-! ## A117142.P9746933756841144116

`∑[floor((lcm(2, n)-(n-2))/2)]`
-/

namespace A117142.P9746933756841144116
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((Nat.lcm 2 n : ℤ) - ((n : ℤ) - 2) : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A117142.P9746933756841144116

namespace A117142

/-- `∑[floor((lcm(2, n)-(n-2))/2)]` -/
def P9746933756841144116.Spec : Prop :=
  ∀ n, P9746933756841144116.a n = A117142 (n + 1)

end A117142

/-! ## A117142.P3843633821692330199

`∑[ceil((n*and(1, n)+1)/2)]`
-/

namespace A117142.P3843633821692330199
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n * Nat.land 1 n + 1 : ℚ) / 2⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A117142.P3843633821692330199

namespace A117142

/-- `∑[ceil((n*and(1, n)+1)/2)]` -/
def P3843633821692330199.Spec : Prop :=
  ∀ n, P3843633821692330199.a n = A117142 (n + 1)

end A117142

/-! ## A117142.P3811670339342207905

`∑[ceil(n/(2*a(n-1)))]` with `a(0)=1`
-/

namespace A117142.P3811670339342207905
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  ⌈(n : ℚ) / (2 * f1 (n - 1) : ℚ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A117142.P3811670339342207905

namespace A117142

/-- `∑[ceil(n/(2*a(n-1)))]` -/
def P3811670339342207905.Spec : Prop :=
  ∀ n, P3811670339342207905.a n = A117142 (n + 1)

end A117142

/-! ## A117142.P11533538253521266053

`∑[round(n/(2*a(n-1)))]` with `a(0)=1`
-/

namespace A117142.P11533538253521266053
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  SequenceMachineLib.roundAway ((n : ℚ) / (2 * f1 (n - 1) : ℚ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A117142.P11533538253521266053

namespace A117142

/-- `∑[round(n/(2*a(n-1)))]` -/
def P11533538253521266053.Spec : Prop :=
  ∀ n, P11533538253521266053.a n = A117142 (n + 1)

end A117142

/-! ## A117142.P1107704477549902745

`∑[ceil(n/2)/a(n-1)]` with `a(0)=1`
-/

namespace A117142.P1107704477549902745
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1] fun n f1 =>
  (⌈(n : ℚ) / 2⌉ : ℚ) / f1 (n - 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A117142.P1107704477549902745

namespace A117142

/-- `∑[ceil(n/2)/a(n-1)]` -/
def P1107704477549902745.Spec : Prop :=
  ∀ n, P1107704477549902745.a n = (A117142 (n + 1) : ℚ)

end A117142

/-! ## A117142.P14024710408662614316

`∑[∑[xor(1, n)]%(n+1)]+1`
-/

namespace A117142.P14024710408662614316
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) % (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A117142.P14024710408662614316

namespace A117142

/-- `∑[∑[xor(1, n)]%(n+1)]+1` -/
def P14024710408662614316.Spec : Prop :=
  ∀ n, (P14024710408662614316.a n : ℤ) = A117142 (n + 1)

end A117142

/-! ## A117142.P12014236939562776165

`∑[∑[and(1, n)-a(n-1)]]` with `a(0)=1`
-/

namespace A117142.P12014236939562776165
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f2 =>
  (Nat.land 1 n : ℤ) - f2 (n - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A117142.P12014236939562776165

namespace A117142

/-- `∑[∑[and(1, n)-a(n-1)]]` -/
def P12014236939562776165.Spec : Prop :=
  ∀ n, P12014236939562776165.a n = A117142 (n + 1)

end A117142

/-! ## A117142.P3555796161337452029

`∑[∑[∑[ogf((1+x-x^2)/(1+2x+x^2))]]]`
-/

namespace A117142.P3555796161337452029
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1, -1] [1, 2, 1] n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A117142.P3555796161337452029

namespace A117142

/-- `∑[∑[∑[ogf((1+x-x^2)/(1+2x+x^2))]]]` -/
def P3555796161337452029.Spec : Prop :=
  ∀ n, P3555796161337452029.a n = A117142 (n + 1)

end A117142

/-!
# A117143: Number of partitions of n in which any two parts differ by at most 3.

The programs for A117143, the canonical program `A117143.P8365364006383304082` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A117143 has offset 1).

The definition of A117143 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2684 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A117143.P8365364006383304082

`Δ[A000601(n)]+a(n-3)` with `a(0)=1, a(1)=2, a(2)=3`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A117143

/-- `Δ[A000601(n)]+a(n-3)` -/
def P8365364006383304082.Spec : Prop :=
  ∀ n, P8365364006383304082.a n = A117143 (n + 1)

theorem P8365364006383304082.correct : P8365364006383304082.Spec := by
  intro n
  simp only [A117143, Nat.add_sub_cancel]

end A117143

/-! ## A117143.P15655267775253303221

`∑[A103221(n+1)+a(n-3)]` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A117143.P15655267775253303221
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1] fun n f1 =>
  A103221 (n + 1) + f1 (n - 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A117143.P15655267775253303221

namespace A117143

/-- `∑[A103221(n+1)+a(n-3)]` -/
def P15655267775253303221.Spec : Prop :=
  ∀ n, P15655267775253303221.a n = A117143 (n + 1)

end A117143

/-! ## A117143.P17091171075628783324

`A008615(n+1)+A307872(n+1)+A001399(n)`
-/

namespace A117143.P17091171075628783324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (n + 1) + (A307872 (n + 1) + A001399 n)

end

end A117143.P17091171075628783324

namespace A117143

/-- `A008615(n+1)+A307872(n+1)+A001399(n)` -/
def P17091171075628783324.Spec : Prop :=
  ∀ n, P17091171075628783324.a n = A117143 (n + 1)

end A117143

/-! ## A117143.P318705245666820529

`A115266(n+1)-(A115266(n)+A079978(n+1))`
-/

namespace A117143.P318705245666820529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115266 (n + 1) - (A115266 n + A079978 (n + 1))

end

end A117143.P318705245666820529

namespace A117143

/-- `A115266(n+1)-(A115266(n)+A079978(n+1))` -/
def P318705245666820529.Spec : Prop :=
  ∀ n, P318705245666820529.a n = A117143 (n + 1)

end A117143

/-! ## A117143.P12933172219445623541

`A213042(n+1)+A213042(n)-A079978(n+1)`
-/

namespace A117143.P12933172219445623541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213042 (n + 1) + (A213042 n - A079978 (n + 1))

end

end A117143.P12933172219445623541

namespace A117143

/-- `A213042(n+1)+A213042(n)-A079978(n+1)` -/
def P12933172219445623541.Spec : Prop :=
  ∀ n, P12933172219445623541.a n = A117143 (n + 1)

end A117143

/-! ## A117143.P8654178278134130156

`A128508(n+1)+A117142(n+1)`
-/

namespace A117143.P8654178278134130156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128508 (n + 1) + A117142 (n + 1)

end

end A117143.P8654178278134130156

namespace A117143

/-- `A128508(n+1)+A117142(n+1)` -/
def P8654178278134130156.Spec : Prop :=
  ∀ n, P8654178278134130156.a n = A117143 (n + 1)

end A117143

/-! ## A117143.P9503514493585254393

`lt[A097805(n), 2]+a(n-2)` with `a(0)=1, a(1)=2`
-/

namespace A117143.P9503514493585254393
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097805 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n a =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + a (n - 2)

end

end A117143.P9503514493585254393

namespace A117143

/-- `lt[A097805(n), 2]+a(n-2)` -/
def P9503514493585254393.Spec : Prop :=
  ∀ n, (P9503514493585254393.a n : ℤ) = A117143 (n + 1)

end A117143

/-! ## A117143.P17483973904694477463

`eq[1, A131299(n)]+a(n-2)` with `a(0)=1, a(1)=2`
-/

namespace A117143.P17483973904694477463
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131299 n

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n a =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + a (n - 2)

end

end A117143.P17483973904694477463

namespace A117143

/-- `eq[1, A131299(n)]+a(n-2)` -/
def P17483973904694477463.Spec : Prop :=
  ∀ n, (P17483973904694477463.a n : ℤ) = A117143 (n + 1)

end A117143

/-! ## A117143.P1769791997059277933

`A194621(A027379(n)+n-A004271(n))`
-/

namespace A117143.P1769791997059277933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194621 (A027379 n + ((n : ℤ) - A004271 n)).toNat

end

end A117143.P1769791997059277933

namespace A117143

/-- `A194621(A027379(n)+n-A004271(n))` -/
def P1769791997059277933.Spec : Prop :=
  ∀ n, P1769791997059277933.a n = A117143 (n + 1)

end A117143

/-! ## A117143.P14196027562091780983

`A194621(A055998(n)+n-A004271(n))`
-/

namespace A117143.P14196027562091780983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194621 (A055998 n + ((n : ℤ) - A004271 n)).toNat

end

end A117143.P14196027562091780983

namespace A117143

/-- `A194621(A055998(n)+n-A004271(n))` -/
def P14196027562091780983.Spec : Prop :=
  ∀ n, P14196027562091780983.a n = A117143 (n + 1)

end A117143

/-! ## A117143.P11337646555409304597

`A194621(n-(A004271(n)-A027379(n)))`
-/

namespace A117143.P11337646555409304597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194621 ((n : ℤ) - (A004271 n - A027379 n)).toNat

end

end A117143.P11337646555409304597

namespace A117143

/-- `A194621(n-(A004271(n)-A027379(n)))` -/
def P11337646555409304597.Spec : Prop :=
  ∀ n, P11337646555409304597.a n = A117143 (n + 1)

end A117143

/-! ## A117143.P14097226991578445118

`A194621(n-(A004271(n)-A055998(n)))`
-/

namespace A117143.P14097226991578445118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194621 ((n : ℤ) - (A004271 n - A055998 n)).toNat

end

end A117143.P14097226991578445118

namespace A117143

/-- `A194621(n-(A004271(n)-A055998(n)))` -/
def P14097226991578445118.Spec : Prop :=
  ∀ n, P14097226991578445118.a n = A117143 (n + 1)

end A117143

/-!
# A117144: Partitions of n in which each part k occurs at least k times.

The programs for A117144, there is no canonical definition to state claims against.
-/

/-! ## A117144.P13377962814368055400

`A048766(A010752(n))+A002265(n)`
-/

namespace A117144.P13377962814368055400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 (A010752 n).toNat + A002265 n

end

end A117144.P13377962814368055400

/-! ## A117144.P2957956141180172790

`A127321(A324736(n))`
-/

namespace A117144.P2957956141180172790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127321 (A324736 n).toNat

end

end A117144.P2957956141180172790

/-! ## A117144.P143541789295651573

`A178862(A044917(∑[A008647(n)]))`
-/

namespace A117144.P143541789295651573
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008647 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178862 (A044917 (∑ j ∈ Finset.range (n + 1), f1 j).toNat).toNat

end

end A117144.P143541789295651573

/-! ## A117144.P16609148577091693595

`A348323(n)+A113953(A185274(n))`
-/

namespace A117144.P16609148577091693595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348323 n + A113953 (A185274 n).toNat

end

end A117144.P16609148577091693595

/-! ## A117144.P16868154020966330971

`A000926(A029071(n)%A246850(n+1))`
-/

namespace A117144.P16868154020966330971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000926 (Int.tmod (A029071 n) (A246850 (n + 1))).toNat

end

end A117144.P16868154020966330971

/-!
# A117145: Triangle read by rows: T(n,k) is the number of partitions of n into parts of the form 2^j-1, j=1,2,... and having k parts (n>=0, 0<=k<=n). Partitions into parts of the form 2^j-1, j=1,2,... are called s-partitions.

The programs for A117145, there is no canonical definition to state claims against.
-/

/-! ## A117145.P12457850845340398107

`and(A326117(n), A342770(n))`
-/

namespace A117145.P12457850845340398107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A326117 n) (A342770 n)

end

end A117145.P12457850845340398107

/-! ## A117145.P14867191277127071040

`and(A339897(n), A342770(n))`
-/

namespace A117145.P14867191277127071040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A339897 n) (A342770 n)

end

end A117145.P14867191277127071040

/-! ## A117145.P3794053515608740167

`and(A133033(n+1), A342770(n))`
-/

namespace A117145.P3794053515608740167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A133033 (n + 1)) (A342770 n)

end

end A117145.P3794053515608740167

/-! ## A117145.P6447652074622072815

`and(A294132(n+1), A342770(n))`
-/

namespace A117145.P6447652074622072815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A294132 (n + 1)) (A342770 n)

end

end A117145.P6447652074622072815

/-! ## A117145.P1800933196869915949

`and(A342770(n), A390758(n+1))`
-/

namespace A117145.P1800933196869915949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A342770 n) (A390758 (n + 1))

end

end A117145.P1800933196869915949

/-!
# A117146: Number of parts in all s-partitions of n. An s-partition of n is a partition of n into parts of the form 2^j-1 (j=1,2,...).

The programs for A117146, there is no canonical definition to state claims against.
-/

/-! ## A117146.P1952756497086816412

`A392461(n+1)-A139354(A000104(n))`
-/

namespace A117146.P1952756497086816412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392461 (n + 1) - A139354 (A000104 n).toNat

end

end A117146.P1952756497086816412

/-! ## A117146.P7928487411043406751

`A333255(n+1)+A321936(A039828(n+1))`
-/

namespace A117146.P7928487411043406751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333255 (n + 1) + A321936 (A039828 (n + 1)).toNat

end

end A117146.P7928487411043406751

/-!
# A117147: Triangle read by rows: T(n,k) is the number of partitions of n with k parts in which no part occurs more than 3 times (n>=1, k>=1).

The programs for A117147, there is no canonical definition to state claims against.
-/

/-! ## A117147.P7960540166821613395

`A008284(A342191(n+1))%A066706(n+2)`
-/

namespace A117147.P7960540166821613395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008284 (A342191 (n + 1)).toNat) (A066706 (n + 2))

end

end A117147.P7960540166821613395

/-! ## A117147.P10989258039162786294

`A008284(A253784(n+1))%A115729(3*n+4)`
-/

namespace A117147.P10989258039162786294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008284 (A253784 (n + 1)).toNat) (A115729 (3 * n + 4))

end

end A117147.P10989258039162786294

/-! ## A117147.P4988275636071916210

`A008284(A253784(n+1)%A192518(2*n+1))`
-/

namespace A117147.P4988275636071916210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008284 (Int.tmod (A253784 (n + 1)) (A192518 (2 * n + 1))).toNat

end

end A117147.P4988275636071916210

/-! ## A117147.P1546810011019913860

`A008284(lt[A000032(n), A130561(3*n+1)])`
-/

namespace A117147.P1546810011019913860
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130561 (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008284 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A117147.P1546810011019913860

/-!
# A117148: Number of parts in all partitions of n in which no part occurs more than 3 times.

The programs for A117148, there is no canonical definition to state claims against.
-/

/-! ## A117148.P11190182753899104894

`A210485(∑[a(n-1)+1]+1)` with `a(0)=3, a(1)=3, a(2)=2, a(3)=4`
-/

namespace A117148.P11190182753899104894
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [3, 3, 2, 4] fun n f1 =>
  f1 (n - 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210485 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A117148.P11190182753899104894

/-! ## A117148.P2190187144502413911

`A210485(A046691(n+1)-A004275(n))`
-/

namespace A117148.P2190187144502413911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210485 (A046691 (n + 1) - A004275 n).toNat

end

end A117148.P2190187144502413911

/-! ## A117148.P17803580078391884823

`A210485(A055998(n+1)-A004280(n+1))`
-/

namespace A117148.P17803580078391884823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210485 (A055998 (n + 1) - A004280 (n + 1)).toNat

end

end A117148.P17803580078391884823

/-! ## A117148.P14581589485673883923

`record[A210485(n+4)/A158835(n+1)]`
-/

namespace A117148.P14581589485673883923
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A210485 (n + 4) : ℚ) / (A158835 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A117148.P14581589485673883923

/-! ## A117148.P18074771542809569672

`record[A210485(n+4)/A224798(n)]`
-/

namespace A117148.P18074771542809569672
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A210485 (n + 4) : ℚ) / (A224798 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A117148.P18074771542809569672

/-!
# A117149: Trajectory of 4 under map k -> A094077(k).

The programs for A117149, there is no canonical definition to state claims against.
-/

/-! ## A117149.P15833749397255136408

`A094077(a(n-1))` with `a(0)=4`
-/

namespace A117149.P15833749397255136408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4] fun n a =>
  A094077 (a (n - 1)).toNat

end

end A117149.P15833749397255136408

/-!
# A117150: Retrograde trajectory of 4 under map k -> A094077(k).

The programs for A117150, there is no canonical definition to state claims against.
-/

/-! ## A117150.P4818475635769626626

`A115966(a(n-1))` with `a(0)=4`
-/

namespace A117150.P4818475635769626626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4] fun n a =>
  A115966 (a (n - 1)).toNat

end

end A117150.P4818475635769626626

/-!
# A117152: Sum of product of Fibonacci and triangular numbers.

The programs for A117152, the canonical program `A117152.P11692183672418118795` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A117152 has offset 0).

The definition of A117152 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 455 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A117152.P1920392630774840909

`∑[C(n, 2)*round(ϕ^n/sqrt(5))]`
-/

namespace A117152.P1920392630774840909
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose n 2 : ℤ) * SequenceMachineLib.roundAway (Real.goldenRatio ^ n / Real.sqrt (5 : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A117152.P1920392630774840909

namespace A117152

/-- `∑[C(n, 2)*round(ϕ^n/sqrt(5))]` -/
def P1920392630774840909.Spec : Prop :=
  ∀ n, P1920392630774840909.a n = A117152 n

end A117152

/-! ## A117152.P11692183672418118795

`∑[A086926(n)]`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A117152

/-- `∑[A086926(n)]` -/
def P11692183672418118795.Spec : Prop :=
  ∀ n, P11692183672418118795.a n = A117152 n

theorem P11692183672418118795.correct : P11692183672418118795.Spec := by
  intro n
  simp only [A117152]

end A117152

/-! ## A117152.P13203920403886131093

`∑[(∑[n]-n)*A000045(n)]`
-/

namespace A117152.P13203920403886131093
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - (n : ℤ)) * A000045 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A117152.P13203920403886131093

namespace A117152

/-- `∑[(∑[n]-n)*A000045(n)]` -/
def P13203920403886131093.Spec : Prop :=
  ∀ n, P13203920403886131093.a n = A117152 n

end A117152

/-! ## A117152.P2546867081100684870

`∑[(A001611(n)-1)*C(n, 2)]`
-/

namespace A117152.P2546867081100684870
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A001611 n - 1) * (Nat.choose n 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A117152.P2546867081100684870

namespace A117152

/-- `∑[(A001611(n)-1)*C(n, 2)]` -/
def P2546867081100684870.Spec : Prop :=
  ∀ n, P2546867081100684870.a n = A117152 n

end A117152

/-! ## A117152.P7585251940884755387

`∑[A000045(n)*A161680(n)]`
-/

namespace A117152.P7585251940884755387
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n * A161680 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A117152.P7585251940884755387

namespace A117152

/-- `∑[A000045(n)*A161680(n)]` -/
def P7585251940884755387.Spec : Prop :=
  ∀ n, P7585251940884755387.a n = A117152 n

end A117152

/-! ## A117152.P8356592284815858291

`∑[(A001611(n)-1)*A161680(n)]`
-/

namespace A117152.P8356592284815858291
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A001611 n - 1) * A161680 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A117152.P8356592284815858291

namespace A117152

/-- `∑[(A001611(n)-1)*A161680(n)]` -/
def P8356592284815858291.Spec : Prop :=
  ∀ n, P8356592284815858291.a n = A117152 n

end A117152

/-! ## A117152.P7615709324944921149

`∑[Δ[A000071(n+1)]*A161680(n)]`
-/

namespace A117152.P7615709324944921149
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000071 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n) * A161680 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A117152.P7615709324944921149

namespace A117152

/-- `∑[Δ[A000071(n+1)]*A161680(n)]` -/
def P7615709324944921149.Spec : Prop :=
  ∀ n, P7615709324944921149.a n = A117152 n

end A117152

/-! ## A117152.P6277724846611116396

`∑[(A192956(n)-A192958(n))*A161680(n)]`
-/

namespace A117152.P6277724846611116396
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A192956 n - A192958 n) * A161680 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A117152.P6277724846611116396

namespace A117152

/-- `∑[(A192956(n)-A192958(n))*A161680(n)]` -/
def P6277724846611116396.Spec : Prop :=
  ∀ n, P6277724846611116396.a n = A117152 n

end A117152

/-! ## A117152.P5910862834907684210

`∑[(A192979(n)-A192964(n))*A161680(n)]`
-/

namespace A117152.P5910862834907684210
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A192979 n - A192964 n) * A161680 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A117152.P5910862834907684210

namespace A117152

/-- `∑[(A192979(n)-A192964(n))*A161680(n)]` -/
def P5910862834907684210.Spec : Prop :=
  ∀ n, P5910862834907684210.a n = A117152 n

end A117152

/-! ## A117152.P14043316637467477580

`A192142(n+1)-A192245(n+1)`
-/

namespace A117152.P14043316637467477580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192142 (n + 1) - A192245 (n + 1)

end

end A117152.P14043316637467477580

namespace A117152

/-- `A192142(n+1)-A192245(n+1)` -/
def P14043316637467477580.Spec : Prop :=
  ∀ n, P14043316637467477580.a n = A117152 n

theorem P14043316637467477580.correct : P14043316637467477580.Spec := by
  intro n
  simp only [A117152, Nat.add_sub_cancel, A117152.P14043316637467477580.a, A117152.P11692183672418118795.f1, A117152.P11692183672418118795.a, A086926, A086926.P11568517746438091352.a, A192142, A192142.P14644412906987799282.a, A192245, A192245.P7575187329844493871.f2, A192245.P7575187329844493871.f1, A192245.P7575187329844493871.a, A001611, A001611.P16593652898942925329.a, A000045, A000045.P11838749114346432762.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A117152

/-! ## A117152.P11126936611324188520

`floor(∑[A006355(n+1)*A103505(n)]/4)`
-/

namespace A117152.P11126936611324188520
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006355 (n + 1) * A103505 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 4⌋

end

end A117152.P11126936611324188520

namespace A117152

/-- `floor(∑[A006355(n+1)*A103505(n)]/4)` -/
def P11126936611324188520.Spec : Prop :=
  ∀ n, P11126936611324188520.a n = A117152 n

end A117152

/-! ## A117152.P8886388575999834330

`∑[(A000108(n)-A263986(n))*A161680(n)]`
-/

namespace A117152.P8886388575999834330
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000108 n - A263986 n) * A161680 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A117152.P8886388575999834330

namespace A117152

/-- `∑[(A000108(n)-A263986(n))*A161680(n)]` -/
def P8886388575999834330.Spec : Prop :=
  ∀ n, P8886388575999834330.a n = A117152 n

end A117152

/-! ## A117152.P2437947374439126335

`∑[(A126120(2*n)-A263986(n))*A161680(n)]`
-/

namespace A117152.P2437947374439126335
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A126120 (2 * n) - A263986 n) * A161680 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A117152.P2437947374439126335

namespace A117152

/-- `∑[(A126120(2*n)-A263986(n))*A161680(n)]` -/
def P2437947374439126335.Spec : Prop :=
  ∀ n, P2437947374439126335.a n = A117152 n

end A117152

/-! ## A117152.P14870788520416060932

`∑[A000045(n)*A083920(∑[n])]`
-/

namespace A117152.P14870788520416060932
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n * A083920 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A117152.P14870788520416060932

namespace A117152

/-- `∑[A000045(n)*A083920(∑[n])]` -/
def P14870788520416060932.Spec : Prop :=
  ∀ n, P14870788520416060932.a n = A117152 n

end A117152

/-!
# A117154: Floretion with FAMP code 1teszapsumseq[C*B] with C = - .5'j + .5'k - .5j' + .5k' - 'ii' - .5'ij' - .5'ik' - .5'ji' - .5'ki' and B = - .5'i + .5'j - .5i' + .5j' - 'kk' - .5'ik' - .5'jk' - .5'ki' - .5'kj'.

The programs for A117154, there is no canonical definition to state claims against.
-/

/-! ## A117154.P10203974782851239438

`Δ[A331083(record[A217982(n+1)])]`
-/

namespace A117154.P10203974782851239438
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217982 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331083 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A117154.P10203974782851239438

/-! ## A117154.P1263264007590744112

`A259896(A058639(3*n))-A143259(n+5)`
-/

namespace A117154.P1263264007590744112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259896 (A058639 (3 * n)).toNat - A143259 (n + 5)

end

end A117154.P1263264007590744112

/-! ## A117154.P15576256073678300004

`A014674(A336425(n)-A226447(n))`
-/

namespace A117154.P15576256073678300004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014674 (A336425 n - A226447 n).toNat

end

end A117154.P15576256073678300004

/-! ## A117154.P9078678971071498721

`A325526(n+1)-A325537(A157523(n))`
-/

namespace A117154.P9078678971071498721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325526 (n + 1) - A325537 (A157523 n).toNat

end

end A117154.P9078678971071498721

/-!
# A117155: List of smaller members p of the prime pairs (p,q) mentioned in A117300.

The programs for A117155, there is no canonical definition to state claims against.
-/

/-! ## A117155.P12342009154705230858

`A064989(A117300(n+1))`
-/

namespace A117155.P12342009154705230858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064989 (A117300 (n + 1)).toNat

end

end A117155.P12342009154705230858

/-! ## A117155.P12497445788475015166

`A349126(lcm(4, A117300(n+1)))`
-/

namespace A117155.P12497445788475015166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349126 (Int.lcm 4 (A117300 (n + 1)))

end

end A117155.P12497445788475015166

/-! ## A117155.P17155801796744071370

`A117365(or(1, A117300(n+1)))`
-/

namespace A117155.P17155801796744071370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117365 (Int.lor 1 (A117300 (n + 1))).toNat

end

end A117155.P17155801796744071370

/-!
# A117156: Number of permutations avoiding the consecutive pattern 1342.

The programs for A117156, there is no canonical definition to state claims against.
-/

/-! ## A117156.P7607719520155317997

`A123074(A000248(n))+A117226(n)`
-/

namespace A117156.P7607719520155317997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123074 (A000248 n).toNat + A117226 n

end

end A117156.P7607719520155317997

/-! ## A117156.P10387187698761755026

`xor(A115869(A068911(n)), A117226(n))`
-/

namespace A117156.P10387187698761755026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A115869 (A068911 n).toNat) (A117226 n)

end

end A117156.P10387187698761755026

/-! ## A117156.P13497827856569804563

`A174630(A174644(n+1))+A117226(n)`
-/

namespace A117156.P13497827856569804563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174630 (A174644 (n + 1)).toNat + A117226 n

end

end A117156.P13497827856569804563

/-! ## A117156.P17953853725801048374

`A173068(A289470(n+1))+A117226(n)`
-/

namespace A117156.P17953853725801048374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173068 (A289470 (n + 1)).toNat + A117226 n

end

end A117156.P17953853725801048374

/-!
# A117157: a(1)=a(2)=1; a(n) = a(n-1)*a(n-2) + a(n-3) + a(n-4) + ... + a(1) for n>2.

The programs for A117157, there is no canonical definition to state claims against.
-/

/-! ## A117157.P18153590430816502592

`A062289(a(n-1)*a(n-2))` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A117157.P18153590430816502592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1] fun n a =>
  A062289 (a (n - 1) * a (n - 2)).toNat

end

end A117157.P18153590430816502592

/-!
# A117158: Number of permutations of [n] avoiding the consecutive pattern 1234.

The programs for A117158, there is no canonical definition to state claims against.
-/

/-! ## A117158.P13655544405091766263

`A242784(A155212(n+4))`
-/

namespace A117158.P13655544405091766263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242784 (A155212 (n + 4)).toNat

end

end A117158.P13655544405091766263

/-! ## A117158.P8849032698859056585

`A242784(eq[7, A025581(n)])`
-/

namespace A117158.P8849032698859056585
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242784 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A117158.P8849032698859056585

/-! ## A117158.P5618625571653485872

`A242784(eq[8, A193739(n)])`
-/

namespace A117158.P5618625571653485872
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193739 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242784 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A117158.P5618625571653485872

/-! ## A117158.P14407235771405796463

`A242784(eq[15, A099375(n)])`
-/

namespace A117158.P14407235771405796463
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  15

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099375 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242784 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A117158.P14407235771405796463

/-! ## A117158.P14161906789734130641

`A242784(eq[8, A004736(n+1)])`
-/

namespace A117158.P14161906789734130641
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242784 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A117158.P14161906789734130641

/-!
# A117159: Prime numbers for which the multiplicative digital root is also a prime number.

The programs for A117159, there is no canonical definition to state claims against.
-/

/-! ## A117159.P16473762129477650622

`p?[A028843(n+1)]`
-/

namespace A117159.P16473762129477650622
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028843 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A117159.P16473762129477650622

/-! ## A117159.P1157460270897754808

`∩[A028843(n+1), A373789(n+1)]`
-/

namespace A117159.P1157460270897754808
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028843 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373789 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A117159.P1157460270897754808

/-! ## A117159.P394622710112223282

`∩[A028843(n+1), A348283(n+1)]`
-/

namespace A117159.P394622710112223282
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028843 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348283 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A117159.P394622710112223282

/-! ## A117159.P1221079984813253531

`∩[A028843(n+1), A038618(n+1)]`
-/

namespace A117159.P1221079984813253531
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028843 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038618 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A117159.P1221079984813253531

/-! ## A117159.P11747769751135973515

`filter[A028843(n+1), A010051(#)]`
-/

namespace A117159.P11747769751135973515
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028843 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A117159.P11747769751135973515

/-! ## A117159.P6571820481917452063

`∩[A000040(n+1), A028843(n+1)]`
-/

namespace A117159.P6571820481917452063
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028843 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A117159.P6571820481917452063

/-! ## A117159.P2592933575930167164

`∩[A008578(n+1), A028843(n+1)]`
-/

namespace A117159.P2592933575930167164
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028843 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A117159.P2592933575930167164

/-! ## A117159.P9788695859209651482

`∩[A028843(n+1), A046022(n+1)]`
-/

namespace A117159.P9788695859209651482
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028843 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046022 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A117159.P9788695859209651482

/-! ## A117159.P11486673188364512623

`∩[A028843(n+1), A051948(n+1)]`
-/

namespace A117159.P11486673188364512623
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028843 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051948 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A117159.P11486673188364512623

/-! ## A117159.P7561538681020693870

`∩[A028843(n+1), A066050(n+1)]`
-/

namespace A117159.P7561538681020693870
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028843 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066050 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A117159.P7561538681020693870

/-! ## A117159.P11300207040730553604

`∩[A028843(n+1), A067126(n+1)]`
-/

namespace A117159.P11300207040730553604
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028843 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067126 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A117159.P11300207040730553604

/-! ## A117159.P14547096360008967480

`∩[A028843(n+1), A067133(n+1)]`
-/

namespace A117159.P14547096360008967480
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028843 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067133 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A117159.P14547096360008967480

/-! ## A117159.P12461295736734688184

`∩[A028843(n+1), A106118(n+1)]`
-/

namespace A117159.P12461295736734688184
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028843 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106118 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A117159.P12461295736734688184

/-! ## A117159.P11774242230891759252

`∩[A028843(n+1), A116974(n+1)]`
-/

namespace A117159.P11774242230891759252
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028843 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116974 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A117159.P11774242230891759252

/-! ## A117159.P14883760841683643846

`∩[A028843(n+1), A132630(n+1)]`
-/

namespace A117159.P14883760841683643846
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028843 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132630 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A117159.P14883760841683643846

/-! ## A117159.P2761701441376565179

`∩[A028843(n+1), A158611(n+1)]`
-/

namespace A117159.P2761701441376565179
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028843 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158611 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A117159.P2761701441376565179

/-! ## A117159.P7874776257018899953

`∩[A028843(n+1), A174090(n+1)]`
-/

namespace A117159.P7874776257018899953
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028843 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174090 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A117159.P7874776257018899953

/-! ## A117159.P11357977138745996798

`∩[A028843(n+1), A175787(n+1)]`
-/

namespace A117159.P11357977138745996798
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028843 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175787 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A117159.P11357977138745996798

/-! ## A117159.P2661281173059694446

`∩[A028843(n+1), A182986(n+1)]`
-/

namespace A117159.P2661281173059694446
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028843 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A117159.P2661281173059694446

/-! ## A117159.P9211418790662111277

`∩[A028843(n+1), A251595(n+1)]`
-/

namespace A117159.P9211418790662111277
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028843 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251595 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A117159.P9211418790662111277

/-!
# A117160: Column 1 of triangle A112682; also equals row sums of A112682 (with offset).

The programs for A117160, there is no canonical definition to state claims against.
-/

/-! ## A117160.P2503760383329820677

`A112682(∑[n]+1)`
-/

namespace A117160.P2503760383329820677
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112682 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A117160.P2503760383329820677

/-! ## A117160.P13996158729128002282

`and(-1, A112682(A000124(n)))`
-/

namespace A117160.P13996158729128002282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A112682 (A000124 n).toNat)

end

end A117160.P13996158729128002282

/-! ## A117160.P6178883097154660759

`A185284(n)+A112682(A000124(n))`
-/

namespace A117160.P6178883097154660759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185284 n + A112682 (A000124 n).toNat

end

end A117160.P6178883097154660759

/-! ## A117160.P11174603859686730758

`A112682(A000124(n))*A215561(n)`
-/

namespace A117160.P11174603859686730758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112682 (A000124 n).toNat * A215561 n

end

end A117160.P11174603859686730758

/-! ## A117160.P15092678251074931487

`A112682(A000124(n))%A002764(n)`
-/

namespace A117160.P15092678251074931487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A112682 (A000124 n).toNat) (A002764 n)

end

end A117160.P15092678251074931487

/-!
# A117161: Limit of columns of triangle A112682.

The programs for A117161, there is no canonical definition to state claims against.
-/

/-! ## A117161.P14408644933189728329

`A319765(n)-Δ[A053383(A032120(n))]`
-/

namespace A117161.P14408644933189728329
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053383 (A032120 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319765 n - (f1 (n + 1) - f1 n)

end

end A117161.P14408644933189728329

/-! ## A117161.P13893703272732718653

`A244707(n+7)-A284258(A335793(n))`
-/

namespace A117161.P13893703272732718653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244707 (n + 7) - A284258 (A335793 n).toNat

end

end A117161.P13893703272732718653

/-! ## A117161.P14798857281491718021

`A244707(n+7)-A353556(A058161(n+1))`
-/

namespace A117161.P14798857281491718021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244707 (n + 7) - A353556 (A058161 (n + 1)).toNat

end

end A117161.P14798857281491718021

/-! ## A117161.P12889794711789773316

`A244707(n+7)-A341258(A250120(2*n+1))`
-/

namespace A117161.P12889794711789773316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244707 (n + 7) - A341258 (A250120 (2 * n + 1)).toNat

end

end A117161.P12889794711789773316

/-!
# A117162: Matrix inverse of triangle A112682.

The programs for A117162, there is no canonical definition to state claims against.
-/

/-! ## A117162.P14045558708338231716

`A008683(A004736(n+1))*A138618(A094816(n))`
-/

namespace A117162.P14045558708338231716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A004736 (n + 1)).toNat * A138618 (A094816 n).toNat

end

end A117162.P14045558708338231716

/-! ## A117162.P5975763947378766013

`A008683(A004736(n+1))*A025581(A347811(n))`
-/

namespace A117162.P5975763947378766013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A004736 (n + 1)).toNat * A025581 (A347811 n).toNat

end

end A117162.P5975763947378766013

/-! ## A117162.P14470679665195026123

`A008683(A004736(n+1))-A152148(A257565(n))`
-/

namespace A117162.P14470679665195026123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A004736 (n + 1)).toNat - A152148 (A257565 n).toNat

end

end A117162.P14470679665195026123

/-! ## A117162.P4069051716439552102

`A251690(A335109(n+1))`
-/

namespace A117162.P4069051716439552102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251690 (A335109 (n + 1)).toNat

end

end A117162.P4069051716439552102

/-!
# A117163: Column 2 of triangle A117162; equals the Moebius transform of A008683 (column 1 of A117162) preceded by a zero.

The programs for A117163, there is no canonical definition to state claims against.
-/

/-! ## A117163.P5779254846083457903

`∑{d}[n+1, A007427(#)*A098018((n+1)/#)]`
-/

namespace A117163.P5779254846083457903
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007427 d * A098018 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A117163.P5779254846083457903

/-! ## A117163.P5050955847795317887

`∑{d}[n+2, A117164(#)]`
-/

namespace A117163.P5050955847795317887
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A117164 d

end

end A117163.P5050955847795317887

/-! ## A117163.P9230497478532222741

`A117162(A133263(n))-floor(acot(n))`
-/

namespace A117163.P9230497478532222741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117162 (A133263 n).toNat - ⌊SequenceMachineLib.acot (n : ℝ)⌋

end

end A117163.P9230497478532222741

/-! ## A117163.P7146564667431067347

`A117162(A133263(n))-A000007(n)`
-/

namespace A117163.P7146564667431067347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117162 (A133263 n).toNat - A000007 n

end

end A117163.P7146564667431067347

/-! ## A117163.P2305375023970227802

`A117162(A133263(n))-A151935(n)`
-/

namespace A117163.P2305375023970227802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117162 (A133263 n).toNat - A151935 n

end

end A117163.P2305375023970227802

/-!
# A117165: Triangle of coefficients for the Shift-Moebius transform, read by rows.

The programs for A117165, there is no canonical definition to state claims against.
-/

/-! ## A117165.P6893653950379724813

`A002321(A085383(n+1))^A332292(A332281(n))`
-/

namespace A117165.P6893653950379724813
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002321 (A085383 (n + 1)).toNat : ℚ) ^ (A332292 (A332281 n).toNat : ℤ)

end

end A117165.P6893653950379724813

/-! ## A117165.P2166315657060365885

`A002321(A085383(n+1))^A027379(A059530(n+3))`
-/

namespace A117165.P2166315657060365885
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002321 (A085383 (n + 1)).toNat : ℚ) ^ (A027379 (A059530 (n + 3)).toNat : ℤ)

end

end A117165.P2166315657060365885

/-! ## A117165.P12078806763847781637

`A002321(A085383(n+1))^A037904(n+1)!`
-/

namespace A117165.P12078806763847781637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002321 (A085383 (n + 1)).toNat ^ Nat.factorial (A037904 (n + 1)).toNat

end

end A117165.P12078806763847781637

/-! ## A117165.P5088419383524499610

`A002321(A085383(n+1))^A280752(2*n+1)`
-/

namespace A117165.P5088419383524499610
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002321 (A085383 (n + 1)).toNat : ℚ) ^ (A280752 (2 * n + 1) : ℤ)

end

end A117165.P5088419383524499610

/-! ## A117165.P432642714591308499

`A002321(A085383(n+1))^A124496(A186020(n))`
-/

namespace A117165.P432642714591308499
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002321 (A085383 (n + 1)).toNat : ℚ) ^ (A124496 (A186020 n).toNat : ℤ)

end

end A117165.P432642714591308499

/-!
# A117166: Column 1 of triangle A117165 of Shift-Moebius coefficients and so equals the Shift-Moebius transform of [1,0,0,0,...].

The programs for A117166, there is no canonical definition to state claims against.
-/

/-! ## A117166.P9483869593261355261

`A117165(∑[n]+1)`
-/

namespace A117166.P9483869593261355261
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117165 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A117166.P9483869593261355261

/-! ## A117166.P18436387708149400397

`A117165(A000124(n))%8`
-/

namespace A117166.P18436387708149400397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A117165 (A000124 n).toNat) 8

end

end A117166.P18436387708149400397

/-! ## A117166.P16659420524801251133

`A117165(A000124(n))+A025466(n)`
-/

namespace A117166.P16659420524801251133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117165 (A000124 n).toNat + A025466 n

end

end A117166.P16659420524801251133

/-! ## A117166.P701418196204792430

`A185284(n)+A117165(A000124(n))`
-/

namespace A117166.P701418196204792430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185284 n + A117165 (A000124 n).toNat

end

end A117166.P701418196204792430

/-! ## A117166.P3587011958671586451

`or(A000007(n), A117165(A000124(n)))`
-/

namespace A117166.P3587011958671586451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A117165 (A000124 n).toNat)

end

end A117166.P3587011958671586451

/-!
# A117167: Column 2 of triangle A117165 of Shift-Moebius coefficients and so equals the Shift-Moebius transform of [0,1,0,0,...].

The programs for A117167, there is no canonical definition to state claims against.
-/

/-! ## A117167.P14169967139069453649

`A117169(abs(1-n)+1)`
-/

namespace A117167.P14169967139069453649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117169 (|1 - (n : ℤ)| + 1).toNat

end

end A117167.P14169967139069453649

/-! ## A117167.P5908769273862486706

`A117169(n)+a(floor(acot(n)))` with `a(0)=0`
-/

namespace A117167.P5908769273862486706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A117169 n + a ⌊SequenceMachineLib.acot (n : ℝ)⌋.toNat

end

end A117167.P5908769273862486706

/-! ## A117167.P4334441439534236315

`A117169(round(sqrt(n²+1)))%(∑[n+2]-1)`
-/

namespace A117167.P4334441439534236315
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A117169 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat) (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1)

end

end A117167.P4334441439534236315

/-! ## A117167.P5701343896334770269

`A117169(n)-a(A000038(n))` with `a(0)=0`
-/

namespace A117167.P5701343896334770269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A117169 n - a (A000038 n).toNat

end

end A117167.P5701343896334770269

/-! ## A117167.P8032017549927603807

`xor(1, xor(1, A117169(A000038(n)+n)))`
-/

namespace A117167.P8032017549927603807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (Int.xor 1 (A117169 (A000038 n + (n : ℤ)).toNat))

end

end A117167.P8032017549927603807

/-! ## A117167.P5399159126697091688

`A117169(A028310(n))-A000007(n)`
-/

namespace A117167.P5399159126697091688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117169 (A028310 n).toNat - A000007 n

end

end A117167.P5399159126697091688

/-! ## A117167.P17459031354778069537

`and(1, A000040(n+1))*A117169(A000038(n)+n)`
-/

namespace A117167.P17459031354778069537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A000040 (n + 1)) * A117169 (A000038 n + (n : ℤ)).toNat

end

end A117167.P17459031354778069537

/-! ## A117167.P18096257797815534599

`abs(A008683(n+1))!*A117169(A000038(n)+n)`
-/

namespace A117167.P18096257797815534599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial |A008683 (n + 1)|.toNat : ℤ) * A117169 (A000038 n + (n : ℤ)).toNat

end

end A117167.P18096257797815534599

/-! ## A117167.P13797368243686051245

`A008683(2*A000040(n+1))*A117169(A028310(n))`
-/

namespace A117167.P13797368243686051245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (2 * A000040 (n + 1)).toNat * A117169 (A028310 n).toNat

end

end A117167.P13797368243686051245

/-!
# A117168: Column 3 of triangle A117165 of Shift-Moebius coefficients and so equals the Shift-Moebius transform of [0,0,1,0,...].

The programs for A117168, there is no canonical definition to state claims against.
-/

/-! ## A117168.P14125098429439381432

`A010060(A265947(n+2))-A022307(n)`
-/

namespace A117168.P14125098429439381432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 (A265947 (n + 2)).toNat - A022307 n

end

end A117168.P14125098429439381432

/-!
# A117169: Row sums of triangle A117165 of Shift-Moebius transform coefficients and so equals the Shift-Moebius transform of [1,1,1,...].

The programs for A117169, there is no canonical definition to state claims against.
-/

/-! ## A117169.P15659233571957734509

`A117167(n+2)`
-/

namespace A117169.P15659233571957734509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117167 (n + 2)

end

end A117169.P15659233571957734509

/-! ## A117169.P11837173670435999034

`∑{e}[A020707(n), A117167(#)]`
-/

namespace A117169.P11837173670435999034
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020707 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A117167 (Nat.factorization (f1 n).natAbs p)

end

end A117169.P11837173670435999034

/-! ## A117169.P13704846798185646675

`A117165(∑[n+1]+2)`
-/

namespace A117169.P13704846798185646675
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117165 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A117169.P13704846798185646675

/-!
# A117170: Triangle of coefficients for the Inverse Shift-Moebius transform, read by rows.

The programs for A117170, there is no canonical definition to state claims against.
-/

/-! ## A117170.P204639096653473114

`A097806(A043428(n+1))+A000120(A137639(n+1))`
-/

namespace A117170.P204639096653473114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097806 (A043428 (n + 1)).toNat + A000120 (A137639 (n + 1)).toNat

end

end A117170.P204639096653473114

/-! ## A117170.P4091855616651795525

`A000120(A137639(n+1)^A008480(n+1))`
-/

namespace A117170.P4091855616651795525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (SequenceMachineLib.roundAway ((A137639 (n + 1) : ℚ) ^ (A008480 (n + 1) : ℤ))).toNat

end

end A117170.P4091855616651795525

/-! ## A117170.P14107188030336824864

`A000120(A137639(n+1)%A109099(n+1))`
-/

namespace A117170.P14107188030336824864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (Int.tmod (A137639 (n + 1)) (A109099 (n + 1))).toNat

end

end A117170.P14107188030336824864

/-! ## A117170.P9193381168174056192

`A000120(A137639(n+1))%A050663(n+3)`
-/

namespace A117170.P9193381168174056192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000120 (A137639 (n + 1)).toNat) (A050663 (n + 3))

end

end A117170.P9193381168174056192

/-! ## A117170.P11451754594635593901

`A000120(A137639(n+1))^A014963(A000096(n+4)+7)`
-/

namespace A117170.P11451754594635593901
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000120 (A137639 (n + 1)).toNat : ℚ) ^ (A014963 (A000096 (n + 4) + 7).toNat : ℤ)

end

end A117170.P11451754594635593901

/-!
# A117171: Column 1 of triangle A117170 of Inverse-Shift-Moebius coefficients and so equals the Inverse-Shift-Moebius transform of [1,0,0,0,...].

The programs for A117171, there is no canonical definition to state claims against.
-/

/-! ## A117171.P5440301833949902610

`∑{d}[n+1, A117172(#+1)]`
-/

namespace A117171.P5440301833949902610
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A117172 (d + 1)

end

end A117171.P5440301833949902610

/-! ## A117171.P16034263195804382894

`A125173(A125189(n))+A001227(n+1)`
-/

namespace A117171.P16034263195804382894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125173 (A125189 n).toNat + A001227 (n + 1)

end

end A117171.P16034263195804382894

/-! ## A117171.P14571817397700486367

`A008615(A187829(n+1)+A120119(n+1))`
-/

namespace A117171.P14571817397700486367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (A187829 (n + 1) + A120119 (n + 1)).toNat

end

end A117171.P14571817397700486367

/-! ## A117171.P15774621326396463017

`A112689(A187829(n+1)+A120119(n+1))`
-/

namespace A117171.P15774621326396463017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112689 (A187829 (n + 1) + A120119 (n + 1)).toNat

end

end A117171.P15774621326396463017

/-! ## A117171.P8730619063377127572

`A125173(A125189(n))+A000005(A000265(n+1))`
-/

namespace A117171.P8730619063377127572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125173 (A125189 n).toNat + A000005 (A000265 (n + 1)).toNat

end

end A117171.P8730619063377127572

/-!
# A117172: Column 2 of triangle A117170 of Inverse-Shift-Moebius coefficients and so equals the Inverse-Shift-Moebius transform of [0,1,0,0,...].

The programs for A117172, there is no canonical definition to state claims against.
-/

/-! ## A117172.P9843676070443937432

`∑{d}[n+1, A117173(#+1)]`
-/

namespace A117172.P9843676070443937432
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A117173 (d + 1)

end

end A117172.P9843676070443937432

/-! ## A117172.P3814845331455512549

`floor(A005984(n+1)/A006368(n+2))`
-/

namespace A117172.P3814845331455512549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A005984 (n + 1) : ℚ) / (A006368 (n + 2) : ℚ)⌋

end

end A117172.P3814845331455512549

/-! ## A117172.P15630828925961658429

`A351005(A262545(n+2))-A055642(n)`
-/

namespace A117172.P15630828925961658429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351005 (A262545 (n + 2)).toNat - A055642 n

end

end A117172.P15630828925961658429

/-! ## A117172.P15385134629174271664

`A117170(A133263(n))-floor(acot(n))`
-/

namespace A117172.P15385134629174271664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117170 (A133263 n).toNat - ⌊SequenceMachineLib.acot (n : ℝ)⌋

end

end A117172.P15385134629174271664

/-! ## A117172.P9720928197937044172

`A117170(A133263(n))-A000007(n)`
-/

namespace A117172.P9720928197937044172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117170 (A133263 n).toNat - A000007 n

end

end A117172.P9720928197937044172

/-!
# A117173: Column 3 of triangle A117170 of Inverse-Shift-Moebius coefficients and so equals the Inverse-Shift-Moebius transform of [0,0,1,0,...].

The programs for A117173, there is no canonical definition to state claims against.
-/

/-! ## A117173.P11673687222524751384

`A328615(∑[∏[A004737(n+1)]])`
-/

namespace A117173.P11673687222524751384
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004737 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328615 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A117173.P11673687222524751384

/-! ## A117173.P10315239097688986166

`A224782(A144834(n+1)*A224811(n))`
-/

namespace A117173.P10315239097688986166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224782 (A144834 (n + 1) * A224811 n).toNat

end

end A117173.P10315239097688986166

/-! ## A117173.P7190742613095728196

`A091413(A008615(n))-A096693(A152260(n+1))`
-/

namespace A117173.P7190742613095728196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091413 (A008615 n).toNat - A096693 (A152260 (n + 1)).toNat

end

end A117173.P7190742613095728196

/-! ## A117173.P3645715101695302209

`A008615(n)-A291786(A073692(n))`
-/

namespace A117173.P3645715101695302209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 n - A291786 (A073692 n).toNat

end

end A117173.P3645715101695302209

/-! ## A117173.P15251751442578440586

`A037815(A109965(n)*A175706(n+1))`
-/

namespace A117173.P15251751442578440586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037815 (A109965 n * A175706 (n + 1)).toNat

end

end A117173.P15251751442578440586

/-!
# A117176: The Inverse-Shift-Moebius transform of [1,2,3,4,...].

The programs for A117176, there is no canonical definition to state claims against.
-/

/-! ## A117176.P7497057809997332547

`A056239(A068875(n))+A047966(n+1)`
-/

namespace A117176.P7497057809997332547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (A068875 n).toNat + A047966 (n + 1)

end

end A117176.P7497057809997332547

/-!
# A117177: The Shift-Moebius transform of powers of 2.

The programs for A117177, there is no canonical definition to state claims against.
-/

/-! ## A117177.P10044178221695457181

`A000079(n)-A241844(A007560(2*n+3))`
-/

namespace A117177.P10044178221695457181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n - A241844 (A007560 (2 * n + 3)).toNat

end

end A117177.P10044178221695457181

/-! ## A117177.P5515844618606592338

`A105223(A370713(n))`
-/

namespace A117177.P5515844618606592338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105223 (A370713 n).toNat

end

end A117177.P5515844618606592338

/-! ## A117177.P9527819742569171908

`A052146(A150388(n)+2)`
-/

namespace A117177.P9527819742569171908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052146 (A150388 n + 2).toNat

end

end A117177.P9527819742569171908

/-! ## A117177.P2508386301480321621

`A206915(A149315(n))-1`
-/

namespace A117177.P2508386301480321621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206915 (A149315 n).toNat - 1

end

end A117177.P2508386301480321621

/-!
# A117178: Riordan array (c(x^2)/sqrt(1-4*x^2), x*c(x^2)), c(x) the g.f. of A000108.

The programs for A117178, the canonical program `A117178.P12171852833970860923` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A117178 has offset 0).

The definition of A117178 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A117178.P7420140199886636309

`abs(A111527(n))`
-/

namespace A117178.P7420140199886636309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A111527 n|

end

end A117178.P7420140199886636309

namespace A117178

/-- `abs(A111527(n))` -/
def P7420140199886636309.Spec : Prop :=
  ∀ n, P7420140199886636309.a n = A117178 n

end A117178

/-! ## A117178.P13185741360823239600

`A111527(n)*A117568(n)`
-/

namespace A117178.P13185741360823239600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111527 n * A117568 n

end

end A117178.P13185741360823239600

namespace A117178

/-- `A111527(n)*A117568(n)` -/
def P13185741360823239600.Spec : Prop :=
  ∀ n, P13185741360823239600.a n = A117178 n

end A117178

/-! ## A117178.P11298539075287563800

`A111527(n)*A369736(n)`
-/

namespace A117178.P11298539075287563800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111527 n * A369736 n

end

end A117178.P11298539075287563800

namespace A117178

/-- `A111527(n)*A369736(n)` -/
def P11298539075287563800.Spec : Prop :=
  ∀ n, P11298539075287563800.a n = A117178 n

end A117178

/-! ## A117178.P13003759089525209939

`gcd(A000038(n), A111527(n))`
-/

namespace A117178.P13003759089525209939
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A111527 n)

end

end A117178.P13003759089525209939

namespace A117178

/-- `gcd(A000038(n), A111527(n))` -/
def P13003759089525209939.Spec : Prop :=
  ∀ n, (P13003759089525209939.a n : ℤ) = A117178 n

end A117178

/-! ## A117178.P142338968849043198

`lcm(A020985(n), A111527(n))`
-/

namespace A117178.P142338968849043198
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 n) (A111527 n)

end

end A117178.P142338968849043198

namespace A117178

/-- `lcm(A020985(n), A111527(n))` -/
def P142338968849043198.Spec : Prop :=
  ∀ n, (P142338968849043198.a n : ℤ) = A117178 n

end A117178

/-! ## A117178.P4052470239283010793

`lcm(A117184(n), A369736(n))`
-/

namespace A117178.P4052470239283010793
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A117184 n) (A369736 n)

end

end A117178.P4052470239283010793

namespace A117178

/-- `lcm(A117184(n), A369736(n))` -/
def P4052470239283010793.Spec : Prop :=
  ∀ n, (P4052470239283010793.a n : ℤ) = A117178 n

end A117178

/-! ## A117178.P14854618341948883970

`A111527(n)²/A117184(n)`
-/

namespace A117178.P14854618341948883970
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A111527 n ^ 2 : ℚ) / (A117184 n : ℚ)

end

end A117178.P14854618341948883970

namespace A117178

/-- `A111527(n)²/A117184(n)` -/
def P14854618341948883970.Spec : Prop :=
  ∀ n, P14854618341948883970.a n = (A117178 n : ℚ)

end A117178

/-! ## A117178.P12657783435891753974

`A111527(n)*A130194(n+1)`
-/

namespace A117178.P12657783435891753974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111527 n * A130194 (n + 1)

end

end A117178.P12657783435891753974

namespace A117178

/-- `A111527(n)*A130194(n+1)` -/
def P12657783435891753974.Spec : Prop :=
  ∀ n, P12657783435891753974.a n = A117178 n

end A117178

/-! ## A117178.P9559425594363171796

`A117184(n)*A128174(n+1)`
-/

namespace A117178.P9559425594363171796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117184 n * A128174 (n + 1)

end

end A117178.P9559425594363171796

namespace A117178

/-- `A117184(n)*A128174(n+1)` -/
def P9559425594363171796.Spec : Prop :=
  ∀ n, P9559425594363171796.a n = A117178 n

end A117178

/-! ## A117178.P14155693474544358595

`2*A108044(n)-A053121(n)`
-/

namespace A117178.P14155693474544358595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A108044 n - A053121 n

end

end A117178.P14155693474544358595

namespace A117178

/-- `2*A108044(n)-A053121(n)` -/
def P14155693474544358595.Spec : Prop :=
  ∀ n, P14155693474544358595.a n = A117178 n

end A117178

/-! ## A117178.P6604503141225008339

`A369736(n)²*A335322(n+1)`
-/

namespace A117178.P6604503141225008339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369736 n ^ 2 * A335322 (n + 1)

end

end A117178.P6604503141225008339

namespace A117178

/-- `A369736(n)²*A335322(n+1)` -/
def P6604503141225008339.Spec : Prop :=
  ∀ n, P6604503141225008339.a n = A117178 n

end A117178

/-! ## A117178.P4376121386406841845

`A128174(n+1)*A335322(n+1)`
-/

namespace A117178.P4376121386406841845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128174 (n + 1) * A335322 (n + 1)

end

end A117178.P4376121386406841845

namespace A117178

/-- `A128174(n+1)*A335322(n+1)` -/
def P4376121386406841845.Spec : Prop :=
  ∀ n, P4376121386406841845.a n = A117178 n

end A117178

/-! ## A117178.P10839641126038555487

`A014413(A246694(n))*A128174(n+1)`
-/

namespace A117178.P10839641126038555487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014413 (A246694 n).toNat * A128174 (n + 1)

end

end A117178.P10839641126038555487

namespace A117178

/-- `A014413(A246694(n))*A128174(n+1)` -/
def P10839641126038555487.Spec : Prop :=
  ∀ n, P10839641126038555487.a n = A117178 n

end A117178

/-! ## A117178.P12171852833970860923

`C(A002024(n+1), A026741(A108872(n+1)))`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A117178

/-- `C(A002024(n+1), A026741(A108872(n+1)))` -/
def P12171852833970860923.Spec : Prop :=
  ∀ n, (P12171852833970860923.a n : ℤ) = A117178 n

theorem P12171852833970860923.correct : P12171852833970860923.Spec := by
  intro n
  simp only [A117178]

end A117178

/-! ## A117178.P10028825708102329644

`A074909(n+1)/A007318(n)*A053121(n)`
-/

namespace A117178.P10028825708102329644
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A074909 (n + 1) : ℚ) / (A007318 n : ℚ) * (A053121 n : ℚ)

end

end A117178.P10028825708102329644

namespace A117178

/-- `A074909(n+1)/A007318(n)*A053121(n)` -/
def P10028825708102329644.Spec : Prop :=
  ∀ n, P10028825708102329644.a n = (A117178 n : ℚ)

end A117178

/-! ## A117178.P15848095352572376151

`A108044(comp[∑[n]])`
-/

namespace A117178.P15848095352572376151
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108044 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A117178.P15848095352572376151

namespace A117178

/-- `A108044(comp[∑[n]])` -/
def P15848095352572376151.Spec : Prop :=
  ∀ n, P15848095352572376151.a n = A117178 n

end A117178

/-! ## A117178.P4198606025134249464

`A109187(A014132(n+1))/A030111(n+1)`
-/

namespace A117178.P4198606025134249464
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A109187 (A014132 (n + 1)).toNat : ℚ) / (A030111 (n + 1) : ℚ)

end

end A117178.P4198606025134249464

namespace A117178

/-- `A109187(A014132(n+1))/A030111(n+1)` -/
def P4198606025134249464.Spec : Prop :=
  ∀ n, P4198606025134249464.a n = (A117178 n : ℚ)

end A117178

/-! ## A117178.P14152347541444691828

`A100257(A099375(n)+n)`
-/

namespace A117178.P14152347541444691828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100257 (A099375 n + (n : ℤ)).toNat

end

end A117178.P14152347541444691828

namespace A117178

/-- `A100257(A099375(n)+n)` -/
def P14152347541444691828.Spec : Prop :=
  ∀ n, P14152347541444691828.a n = A117178 n

end A117178

/-! ## A117178.P8319029763466273224

`A128174(n+1)*A249095(A063657(n+1))`
-/

namespace A117178.P8319029763466273224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128174 (n + 1) * A249095 (A063657 (n + 1)).toNat

end

end A117178.P8319029763466273224

namespace A117178

/-- `A128174(n+1)*A249095(A063657(n+1))` -/
def P8319029763466273224.Spec : Prop :=
  ∀ n, P8319029763466273224.a n = A117178 n

end A117178

/-! ## A117178.P118358146961175884

`A051159(A292565(n+1))`
-/

namespace A117178.P118358146961175884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051159 (A292565 (n + 1)).toNat

end

end A117178.P118358146961175884

namespace A117178

/-- `A051159(A292565(n+1))` -/
def P118358146961175884.Spec : Prop :=
  ∀ n, P118358146961175884.a n = A117178 n

end A117178

/-!
# A117179: Riordan array ((1-x^2)/(1+x^2)^2,x/(1+x^2)).

The programs for A117179, the canonical program `A117179.P14608184751527958313` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A117179 has offset 0).

The definition of A117179 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A117179.P14608184751527958313

`A111526(n)*A117568(n)`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A117179

/-- `A111526(n)*A117568(n)` -/
def P14608184751527958313.Spec : Prop :=
  ∀ n, P14608184751527958313.a n = A117179 n

theorem P14608184751527958313.correct : P14608184751527958313.Spec := by
  intro n
  simp only [A117179]

end A117179

/-! ## A117179.P15827941533630179190

`A105438(n)*A369736(n)`
-/

namespace A117179.P15827941533630179190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105438 n * A369736 n

end

end A117179.P15827941533630179190

namespace A117179

/-- `A105438(n)*A369736(n)` -/
def P15827941533630179190.Spec : Prop :=
  ∀ n, P15827941533630179190.a n = A117179 n

end A117179

/-! ## A117179.P564586748423511999

`A111526(n)*A369736(n)`
-/

namespace A117179.P564586748423511999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111526 n * A369736 n

end

end A117179.P564586748423511999

namespace A117179

/-- `A111526(n)*A369736(n)` -/
def P564586748423511999.Spec : Prop :=
  ∀ n, P564586748423511999.a n = A117179 n

end A117179

/-! ## A117179.P11559759476179879927

`A111526(n)*A130194(n+1)`
-/

namespace A117179.P11559759476179879927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111526 n * A130194 (n + 1)

end

end A117179.P11559759476179879927

namespace A117179

/-- `A111526(n)*A130194(n+1)` -/
def P11559759476179879927.Spec : Prop :=
  ∀ n, P11559759476179879927.a n = A117179 n

end A117179

/-! ## A117179.P10087214537627737885

`2*A112552(n)-A049310(n)`
-/

namespace A117179.P10087214537627737885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A112552 n - A049310 n

end

end A117179.P10087214537627737885

namespace A117179

/-- `2*A112552(n)-A049310(n)` -/
def P10087214537627737885.Spec : Prop :=
  ∀ n, P10087214537627737885.a n = A117179 n

end A117179

/-! ## A117179.P1150058170190633055

`A127672(comp[∑[n]])`
-/

namespace A117179.P1150058170190633055
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127672 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A117179.P1150058170190633055

namespace A117179

/-- `A127672(comp[∑[n]])` -/
def P1150058170190633055.Spec : Prop :=
  ∀ n, P1150058170190633055.a n = A117179 n

end A117179

/-! ## A117179.P10186085614466280014

`-(or(n, -1)*A127672(∑[A035214(n)]))`
-/

namespace A117179.P10186085614466280014
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035214 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(Int.lor (n : ℤ) (-1) * A127672 (∑ j ∈ Finset.range (n + 1), f1 j).toNat)

end

end A117179.P10186085614466280014

namespace A117179

/-- `-(or(n, -1)*A127672(∑[A035214(n)]))` -/
def P10186085614466280014.Spec : Prop :=
  ∀ n, P10186085614466280014.a n = A117179 n

end A117179

/-! ## A117179.P15562660725402041676

`A108045(comp[∑[n]])`
-/

namespace A117179.P15562660725402041676
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108045 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A117179.P15562660725402041676

namespace A117179

/-- `A108045(comp[∑[n]])` -/
def P15562660725402041676.Spec : Prop :=
  ∀ n, P15562660725402041676.a n = A117179 n

end A117179

/-! ## A117179.P12909993125979815212

`A053120(comp[∑[n]])/A059268(n)`
-/

namespace A117179.P12909993125979815212
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053120 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) : ℚ) / (A059268 n : ℚ)

end

end A117179.P12909993125979815212

namespace A117179

/-- `A053120(comp[∑[n]])/A059268(n)` -/
def P12909993125979815212.Spec : Prop :=
  ∀ n, P12909993125979815212.a n = (A117179 n : ℚ)

end A117179

/-! ## A117179.P2591584103147915670

`2*A049310(A014132(n+1))-A049310(n)`
-/

namespace A117179.P2591584103147915670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A049310 (A014132 (n + 1)).toNat - A049310 n

end

end A117179.P2591584103147915670

namespace A117179

/-- `2*A049310(A014132(n+1))-A049310(n)` -/
def P2591584103147915670.Spec : Prop :=
  ∀ n, P2591584103147915670.a n = A117179 n

end A117179

/-! ## A117179.P8129163878859270709

`A127672(∑[A035214(n)])%A000032(n)`
-/

namespace A117179.P8129163878859270709
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035214 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A127672 (∑ j ∈ Finset.range (n + 1), f1 j).toNat) (A000032 n)

end

end A117179.P8129163878859270709

namespace A117179

/-- `A127672(∑[A035214(n)])%A000032(n)` -/
def P8129163878859270709.Spec : Prop :=
  ∀ n, P8129163878859270709.a n = A117179 n

end A117179

/-!
# A117180: Lowest prime-power dividing the n-th nonsquarefree positive integer.

The programs for A117180, there is no canonical definition to state claims against.
-/

/-! ## A117180.P10419022762366729278

`A034684(A013929(n+1))`
-/

namespace A117180.P10419022762366729278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034684 (A013929 (n + 1)).toNat

end

end A117180.P10419022762366729278

/-! ## A117180.P7975596985390828580

`A117181(n+1)-A117182(n+1)`
-/

namespace A117180.P7975596985390828580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117181 (n + 1) - A117182 (n + 1)

end

end A117180.P7975596985390828580

/-! ## A117180.P17731396761535276950

`A034699(A013929(n+1))-A117182(n+1)`
-/

namespace A117180.P17731396761535276950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034699 (A013929 (n + 1)).toNat - A117182 (n + 1)

end

end A117180.P17731396761535276950

/-! ## A117180.P1479508259577163082

`A034684(A162966(n+2))`
-/

namespace A117180.P1479508259577163082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034684 (A162966 (n + 2)).toNat

end

end A117180.P1479508259577163082

/-! ## A117180.P8072790867808983555

`A034684(eq[1, A249442(n)])`
-/

namespace A117180.P8072790867808983555
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249442 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034684 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A117180.P8072790867808983555

/-! ## A117180.P10888654794201692339

`A034684(lt[1, A274006(n+1)]+1)`
-/

namespace A117180.P10888654794201692339
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274006 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034684 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)

end

end A117180.P10888654794201692339

/-! ## A117180.P18145944639823733006

`A034684(eq[1, A202535(n+1)+1]+1)`
-/

namespace A117180.P18145944639823733006
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202535 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034684 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A117180.P18145944639823733006

/-!
# A117181: Highest prime-power dividing the n-th nonsquarefree positive integer.

The programs for A117181, there is no canonical definition to state claims against.
-/

/-! ## A117181.P15412597332144362982

`A034699(A013929(n+1))`
-/

namespace A117181.P15412597332144362982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034699 (A013929 (n + 1)).toNat

end

end A117181.P15412597332144362982

/-! ## A117181.P9020923677417897235

`A034699(comp[n-A105570(n)])`
-/

namespace A117181.P9020923677417897235
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A105570 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034699 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A117181.P9020923677417897235

/-! ## A117181.P14329891930397523061

`A117182(n+1)+A117180(n+1)`
-/

namespace A117181.P14329891930397523061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117182 (n + 1) + A117180 (n + 1)

end

end A117181.P14329891930397523061

/-! ## A117181.P12512226488468709631

`A034699(eq[1, A008683(n+1)+1]+1)`
-/

namespace A117181.P12512226488468709631
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034699 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A117181.P12512226488468709631

/-! ## A117181.P9010712751600155520

`A034699(∪[A122145(n+1), A139703(n+1)])`
-/

namespace A117181.P9010712751600155520
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122145 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139703 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034699 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A117181.P9010712751600155520

/-! ## A117181.P14415824051528760463

`A034699(A162966(n+2))`
-/

namespace A117181.P14415824051528760463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034699 (A162966 (n + 2)).toNat

end

end A117181.P14415824051528760463

/-! ## A117181.P4737204878736635191

`A117182(n+1)+A034684(A013929(n+1))`
-/

namespace A117181.P4737204878736635191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117182 (n + 1) + A034684 (A013929 (n + 1)).toNat

end

end A117181.P4737204878736635191

/-!
# A117182: a(n) = A117181(n) - A117180(n).

The programs for A117182, there is no canonical definition to state claims against.
-/

/-! ## A117182.P10295723137355745904

`A117181(n+1)-A117180(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A117182.P10295723137355745904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117181 (n + 1) - A117180 (n + 1)

end

end A117182.P10295723137355745904

/-! ## A117182.P8874453470260657318

`A100574(A013929(n+1))`
-/

namespace A117182.P8874453470260657318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100574 (A013929 (n + 1)).toNat

end

end A117182.P8874453470260657318

/-! ## A117182.P256060111844838965

`A100574(lt[1, n*A087049(n)])`
-/

namespace A117182.P256060111844838965
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A087049 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100574 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A117182.P256060111844838965

/-! ## A117182.P5176496865611369970

`A034699(A013929(n+1))-A117180(n+1)`
-/

namespace A117182.P5176496865611369970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034699 (A013929 (n + 1)).toNat - A117180 (n + 1)

end

end A117182.P5176496865611369970

/-! ## A117182.P16956735589580856215

`A100574(A162966(n+2))`
-/

namespace A117182.P16956735589580856215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100574 (A162966 (n + 2)).toNat

end

end A117182.P16956735589580856215

/-! ## A117182.P11169226306280723159

`A117181(n+1)-A034684(A013929(n+1))`
-/

namespace A117182.P11169226306280723159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117181 (n + 1) - A034684 (A013929 (n + 1)).toNat

end

end A117182.P11169226306280723159

/-!
# A117183: a(n) = smallest prime dividing n-th nonsquarefree positive integer.

The programs for A117183, there is no canonical definition to state claims against.
-/

/-! ## A117183.P5852763820714130398

`A020639(A013929(n+1))`
-/

namespace A117183.P5852763820714130398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A013929 (n + 1)).toNat

end

end A117183.P5852763820714130398

/-! ## A117183.P2094001058615994447

`A020639(A015049(n+1))`
-/

namespace A117183.P2094001058615994447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A015049 (n + 1)).toNat

end

end A117183.P2094001058615994447

/-! ## A117183.P17783221644532736880

`A020639(A015050(n+1))`
-/

namespace A117183.P17783221644532736880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A015050 (n + 1)).toNat

end

end A117183.P17783221644532736880

/-! ## A117183.P15893003178715942280

`A020639(A015051(n+1))`
-/

namespace A117183.P15893003178715942280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A015051 (n + 1)).toNat

end

end A117183.P15893003178715942280

/-! ## A117183.P10315951261067338837

`A020639(A076333(n+1))`
-/

namespace A117183.P10315951261067338837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A076333 (n + 1)).toNat

end

end A117183.P10315951261067338837

/-! ## A117183.P6678227947715106964

`A020639(A362041(n+1))`
-/

namespace A117183.P6678227947715106964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A362041 (n + 1)).toNat

end

end A117183.P6678227947715106964

/-! ## A117183.P17595610457600226104

`A020639(A384064(n+1))`
-/

namespace A117183.P17595610457600226104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A384064 (n + 1)).toNat

end

end A117183.P17595610457600226104

/-! ## A117183.P5308180623075812827

`A020639(lt[0, A105570(n)])`
-/

namespace A117183.P5308180623075812827
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105570 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A117183.P5308180623075812827

/-! ## A117183.P2835630329256788266

`A020639(comp[n-A105570(n)])`
-/

namespace A117183.P2835630329256788266
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A105570 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A117183.P2835630329256788266

/-! ## A117183.P3868229490634858043

`A020639(eq[0, A008683(n+1)]+1)`
-/

namespace A117183.P3868229490634858043
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A117183.P3868229490634858043

/-! ## A117183.P1125365791182009014

`A115074(n+1)-A115090(n+1)`
-/

namespace A117183.P1125365791182009014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115074 (n + 1) - A115090 (n + 1)

end

end A117183.P1125365791182009014

/-! ## A117183.P8777781183287265228

`A020639(comp[A005117(n+1)-1]+1)`
-/

namespace A117183.P8777781183287265228
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (n + 1) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1)

end

end A117183.P8777781183287265228

/-! ## A117183.P14749480197071297816

`A006530(A013929(n+1))-A115090(n+1)`
-/

namespace A117183.P14749480197071297816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A013929 (n + 1)).toNat - A115090 (n + 1)

end

end A117183.P14749480197071297816

/-! ## A117183.P5065918166027894426

`A020639(A162966(n+2))`
-/

namespace A117183.P5065918166027894426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A162966 (n + 2)).toNat

end

end A117183.P5065918166027894426

/-! ## A117183.P11916993313269596097

`A020639(∑[abs(Δ[comp[A005117(n+1)]])])`
-/

namespace A117183.P11916993313269596097
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ (x : ℤ)) n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(f2 (n + 1) : ℤ) - (f2 n : ℤ)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A117183.P11916993313269596097

/-! ## A117183.P3583037400229945867

`A020639(record[A088609(n+2)])`
-/

namespace A117183.P3583037400229945867
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088609 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A117183.P3583037400229945867

/-! ## A117183.P12071954717796921108

`A020639(record[A088610(n+2)])`
-/

namespace A117183.P12071954717796921108
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088610 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A117183.P12071954717796921108

/-! ## A117183.P599339960651515070

`A020639(A088610(2*(n+1)))`
-/

namespace A117183.P599339960651515070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A088610 (2 * (n + 1))).toNat

end

end A117183.P599339960651515070

/-! ## A117183.P280337924078200714

`A020639(lt[∏{p}[n+1, #], n]+1)`
-/

namespace A117183.P280337924078200714
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), p

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (SequenceMachineLib.nth (fun j => f1 j < f3 j) n + 1)

end

end A117183.P280337924078200714

/-! ## A117183.P16110412974273342740

`A020639(eq[1, A249442(n)])`
-/

namespace A117183.P16110412974273342740
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249442 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A117183.P16110412974273342740

/-!
# A117184: Riordan array ((1+x)c(x^2)/sqrt(1-4x^2),xc(x^2)), c(x) the g.f. of A000108.

The programs for A117184, the canonical program `A117184.P10036010839850409220` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A117184 has offset 0).

The definition of A117184 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A117184.P4489405333020768857

`A014413(A246694(n))`
-/

namespace A117184.P4489405333020768857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014413 (A246694 n).toNat

end

end A117184.P4489405333020768857

namespace A117184

/-- `A014413(A246694(n))` -/
def P4489405333020768857.Spec : Prop :=
  ∀ n, P4489405333020768857.a n = A117184 n

end A117184

/-! ## A117184.P10036010839850409220

`gcd(A111527(A083920(n)), A111527(n))`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A117184

/-- `gcd(A111527(A083920(n)), A111527(n))` -/
def P10036010839850409220.Spec : Prop :=
  ∀ n, (P10036010839850409220.a n : ℤ) = A117184 n

theorem P10036010839850409220.correct : P10036010839850409220.Spec := by
  intro n
  simp only [A117184]

end A117184

/-! ## A117184.P9027288924140609457

`A249095(eq[1, floor(2*sqrt(n))%2])`
-/

namespace A117184.P9027288924140609457
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌊2 * Real.sqrt (n : ℝ)⌋ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249095 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A117184.P9027288924140609457

namespace A117184

/-- `A249095(eq[1, floor(2*sqrt(n))%2])` -/
def P9027288924140609457.Spec : Prop :=
  ∀ n, P9027288924140609457.a n = A117184 n

end A117184

/-! ## A117184.P377520729538273988

`A249095(comp[A063656(n)])`
-/

namespace A117184.P377520729538273988
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063656 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249095 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A117184.P377520729538273988

namespace A117184

/-- `A249095(comp[A063656(n)])` -/
def P377520729538273988.Spec : Prop :=
  ∀ n, P377520729538273988.a n = A117184 n

end A117184

/-! ## A117184.P12060670158976634191

`A249095(A063657(n+1))`
-/

namespace A117184.P12060670158976634191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249095 (A063657 (n + 1)).toNat

end

end A117184.P12060670158976634191

namespace A117184

/-- `A249095(A063657(n+1))` -/
def P12060670158976634191.Spec : Prop :=
  ∀ n, P12060670158976634191.a n = A117184 n

end A117184

/-! ## A117184.P13936815065361611428

`A249095(eq[1, A091453(n)])`
-/

namespace A117184.P13936815065361611428
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091453 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249095 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A117184.P13936815065361611428

namespace A117184

/-- `A249095(eq[1, A091453(n)])` -/
def P13936815065361611428.Spec : Prop :=
  ∀ n, P13936815065361611428.a n = A117184 n

end A117184

/-! ## A117184.P7808568795813350581

`A249095(eq[0, A267708(n)])`
-/

namespace A117184.P7808568795813350581
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267708 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249095 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A117184.P7808568795813350581

namespace A117184

/-- `A249095(eq[0, A267708(n)])` -/
def P7808568795813350581.Spec : Prop :=
  ∀ n, P7808568795813350581.a n = A117184 n

end A117184

/-! ## A117184.P6121076981248302959

`A249095(eq[1, A023969(n)])`
-/

namespace A117184.P6121076981248302959
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023969 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249095 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A117184.P6121076981248302959

namespace A117184

/-- `A249095(eq[1, A023969(n)])` -/
def P6121076981248302959.Spec : Prop :=
  ∀ n, P6121076981248302959.a n = A117184 n

end A117184

/-! ## A117184.P12827038023009571202

`A119963(A292565(n+1))`
-/

namespace A117184.P12827038023009571202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119963 (A292565 (n + 1)).toNat

end

end A117184.P12827038023009571202

namespace A117184

/-- `A119963(A292565(n+1))` -/
def P12827038023009571202.Spec : Prop :=
  ∀ n, P12827038023009571202.a n = A117184 n

end A117184

/-!
# A117186: Expansion of (1+x)c(x^2)/((1-xc(x^2))*sqrt(1-4x^2)), c(x) the g.f. of A000108.

The programs for A117186, the canonical program `A117186.P12673029404783236159` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A117186 has offset 0).

The definition of A117186 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A117186.P12673029404783236159

`(3*2^n-C(2*floor((n+1)/2), floor((n+1)/2)))/2`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A117186

/-- `(3*2^n-C(2*floor((n+1)/2), floor((n+1)/2)))/2` -/
def P12673029404783236159.Spec : Prop :=
  ∀ n, P12673029404783236159.a n = (A117186 n : ℚ)

end A117186

/-! ## A117186.P14378028649785941574

`A294175(n)+2^n`
-/

namespace A117186.P14378028649785941574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294175 n + (2 ^ n : ℤ)

end

end A117186.P14378028649785941574

namespace A117186

/-- `A294175(n)+2^n` -/
def P14378028649785941574.Spec : Prop :=
  ∀ n, P14378028649785941574.a n = A117186 n

end A117186

/-! ## A117186.P3028257840697537577

`2^(n+1)-A116406(n+1)`
-/

namespace A117186.P3028257840697537577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ (n + 1) : ℤ) - A116406 (n + 1)

end

end A117186.P3028257840697537577

namespace A117186

/-- `2^(n+1)-A116406(n+1)` -/
def P3028257840697537577.Spec : Prop :=
  ∀ n, P3028257840697537577.a n = A117186 n

end A117186

/-! ## A117186.P16189362140189374884

`A045621(n)+A027306(n)`
-/

namespace A117186.P16189362140189374884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045621 n + A027306 n

end

end A117186.P16189362140189374884

namespace A117186

/-- `A045621(n)+A027306(n)` -/
def P16189362140189374884.Spec : Prop :=
  ∀ n, P16189362140189374884.a n = A117186 n

end A117186

/-! ## A117186.P10537740658912896241

`xor(A000079(n), A294175(n))`
-/

namespace A117186.P10537740658912896241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000079 n) (A294175 n)

end

end A117186.P10537740658912896241

namespace A117186

/-- `xor(A000079(n), A294175(n))` -/
def P10537740658912896241.Spec : Prop :=
  ∀ n, P10537740658912896241.a n = A117186 n

end A117186

/-! ## A117186.P2138129408877290965

`A058622(n+1)+A058622(n)`
-/

namespace A117186.P2138129408877290965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058622 (n + 1) + A058622 n

end

end A117186.P2138129408877290965

namespace A117186

/-- `A058622(n+1)+A058622(n)` -/
def P2138129408877290965.Spec : Prop :=
  ∀ n, P2138129408877290965.a n = A117186 n

end A117186

/-! ## A117186.P1585274387018480633

`A000225(n)+A294175(n)+1`
-/

namespace A117186.P1585274387018480633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 n + (A294175 n + 1)

end

end A117186.P1585274387018480633

namespace A117186

/-- `A000225(n)+A294175(n)+1` -/
def P1585274387018480633.Spec : Prop :=
  ∀ n, P1585274387018480633.a n = A117186 n

end A117186

/-! ## A117186.P3093205922143764378

`A248574(n+1)-A128014(n+1)`
-/

namespace A117186.P3093205922143764378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248574 (n + 1) - A128014 (n + 1)

end

end A117186.P3093205922143764378

namespace A117186

/-- `A248574(n+1)-A128014(n+1)` -/
def P3093205922143764378.Spec : Prop :=
  ∀ n, P3093205922143764378.a n = A117186 n

end A117186

/-! ## A117186.P5960646928230705290

`A027306(n+1)+A027306(n)-A128014(n+1)`
-/

namespace A117186.P5960646928230705290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027306 (n + 1) + (A027306 n - A128014 (n + 1))

end

end A117186.P5960646928230705290

namespace A117186

/-- `A027306(n+1)+A027306(n)-A128014(n+1)` -/
def P5960646928230705290.Spec : Prop :=
  ∀ n, P5960646928230705290.a n = A117186 n

end A117186

/-! ## A117186.P13407372204154867383

`A003945(n+1)-A248574(n+1)`
-/

namespace A117186.P13407372204154867383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003945 (n + 1) - A248574 (n + 1)

end

end A117186.P13407372204154867383

namespace A117186

/-- `A003945(n+1)-A248574(n+1)` -/
def P13407372204154867383.Spec : Prop :=
  ∀ n, P13407372204154867383.a n = A117186 n

end A117186

/-! ## A117186.P5236514697233464403

`A099325(n)-A107373(n+2)`
-/

namespace A117186.P5236514697233464403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099325 n - A107373 (n + 2)

end

end A117186.P5236514697233464403

namespace A117186

/-- `A099325(n)-A107373(n+2)` -/
def P5236514697233464403.Spec : Prop :=
  ∀ n, P5236514697233464403.a n = A117186 n

end A117186

/-! ## A117186.P1160733667818815088

`A102363(∑[or(1, n)]-1)`
-/

namespace A117186.P1160733667818815088
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102363 (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A117186.P1160733667818815088

namespace A117186

/-- `A102363(∑[or(1, n)]-1)` -/
def P1160733667818815088.Spec : Prop :=
  ∀ n, P1160733667818815088.a n = A117186 n

end A117186

/-! ## A117186.P6755649096304082799

`A102363(∑[n]+floor(n/2))`
-/

namespace A117186.P6755649096304082799
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102363 (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + ⌊(n : ℚ) / 2⌋).toNat

end

end A117186.P6755649096304082799

namespace A117186

/-- `A102363(∑[n]+floor(n/2))` -/
def P6755649096304082799.Spec : Prop :=
  ∀ n, P6755649096304082799.a n = A117186 n

end A117186

/-! ## A117186.P7734282933185445405

`record[A102363(n)/A220073(n+1)]`
-/

namespace A117186.P7734282933185445405
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A102363 n : ℚ) / (A220073 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A117186.P7734282933185445405

namespace A117186

/-- `record[A102363(n)/A220073(n+1)]` -/
def P7734282933185445405.Spec : Prop :=
  ∀ n, P7734282933185445405.a n = (A117186 n : ℚ)

end A117186

/-! ## A117186.P9494307693279761016

`A308663(A047838(n+2))`
-/

namespace A117186.P9494307693279761016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308663 (A047838 (n + 2)).toNat

end

end A117186.P9494307693279761016

namespace A117186

/-- `A308663(A047838(n+2))` -/
def P9494307693279761016.Spec : Prop :=
  ∀ n, P9494307693279761016.a n = A117186 n

end A117186

/-! ## A117186.P9268616865304283849

`A308663(A000982(n+1)+n)`
-/

namespace A117186.P9268616865304283849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308663 (A000982 (n + 1) + (n : ℤ)).toNat

end

end A117186.P9268616865304283849

namespace A117186

/-- `A308663(A000982(n+1)+n)` -/
def P9268616865304283849.Spec : Prop :=
  ∀ n, P9268616865304283849.a n = A117186 n

end A117186

/-! ## A117186.P2750390891946074404

`A249111((n+1)²+n)`
-/

namespace A117186.P2750390891946074404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249111 ((n + 1) ^ 2 + n)

end

end A117186.P2750390891946074404

namespace A117186

/-- `A249111((n+1)²+n)` -/
def P2750390891946074404.Spec : Prop :=
  ∀ n, P2750390891946074404.a n = A117186 n

end A117186

/-!
# A117187: Expansion of (1+x)c(x^2)/((1-x^2*c(x^2))sqrt(1-4x^2)), c(x) the g.f. of A000108.

The programs for A117187, the canonical program `A117187.P12842748690522836276` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A117187 has offset 0).

The definition of A117187 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 336 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A117187.P2585511794184250294

`A037952(or(1, n)+1)`
-/

namespace A117187.P2585511794184250294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037952 (Nat.lor 1 n + 1)

end

end A117187.P2585511794184250294

namespace A117187

/-- `A037952(or(1, n)+1)` -/
def P2585511794184250294.Spec : Prop :=
  ∀ n, P2585511794184250294.a n = A117187 n

end A117187

/-! ## A117187.P12842748690522836276

`A037955(or(1, n)+1)`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A117187

/-- `A037955(or(1, n)+1)` -/
def P12842748690522836276.Spec : Prop :=
  ∀ n, P12842748690522836276.a n = A117187 n

theorem P12842748690522836276.correct : P12842748690522836276.Spec := by
  intro n
  simp only [A117187]

end A117187

/-! ## A117187.P1212397570607609222

`A037952(gcd(2, n)+n)`
-/

namespace A117187.P1212397570607609222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037952 (Nat.gcd 2 n + n)

end

end A117187.P1212397570607609222

namespace A117187

/-- `A037952(gcd(2, n)+n)` -/
def P1212397570607609222.Spec : Prop :=
  ∀ n, P1212397570607609222.a n = A117187 n

end A117187

/-! ## A117187.P5470254069580020315

`A001791(∑[char[2*n]])`
-/

namespace A117187.P5470254069580020315
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001791 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A117187.P5470254069580020315

namespace A117187

/-- `A001791(∑[char[2*n]])` -/
def P5470254069580020315.Spec : Prop :=
  ∀ n, P5470254069580020315.a n = A117187 n

end A117187

/-! ## A117187.P9147437799192623179

`A026023(A052928(n))`
-/

namespace A117187.P9147437799192623179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026023 (A052928 n).toNat

end

end A117187.P9147437799192623179

namespace A117187

/-- `A026023(A052928(n))` -/
def P9147437799192623179.Spec : Prop :=
  ∀ n, P9147437799192623179.a n = A117187 n

end A117187

/-! ## A117187.P10835008781607641936

`A037952(A109613(n)+1)`
-/

namespace A117187.P10835008781607641936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037952 (A109613 n + 1).toNat

end

end A117187.P10835008781607641936

namespace A117187

/-- `A037952(A109613(n)+1)` -/
def P10835008781607641936.Spec : Prop :=
  ∀ n, P10835008781607641936.a n = A117187 n

end A117187

/-! ## A117187.P2387564471834015479

`A037955(A109613(n)+1)`
-/

namespace A117187.P2387564471834015479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037955 (A109613 n + 1).toNat

end

end A117187.P2387564471834015479

namespace A117187

/-- `A037955(A109613(n)+1)` -/
def P2387564471834015479.Spec : Prop :=
  ∀ n, P2387564471834015479.a n = A117187 n

end A117187

/-! ## A117187.P3601882673373357378

`A007007(A131055(n+2))`
-/

namespace A117187.P3601882673373357378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007007 (A131055 (n + 2)).toNat

end

end A117187.P3601882673373357378

namespace A117187

/-- `A007007(A131055(n+2))` -/
def P3601882673373357378.Spec : Prop :=
  ∀ n, P3601882673373357378.a n = A117187 n

end A117187

/-! ## A117187.P8961600961157121595

`A037952(2*A008619(n))`
-/

namespace A117187.P8961600961157121595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037952 (2 * A008619 n).toNat

end

end A117187.P8961600961157121595

namespace A117187

/-- `A037952(2*A008619(n))` -/
def P8961600961157121595.Spec : Prop :=
  ∀ n, P8961600961157121595.a n = A117187 n

end A117187

/-! ## A117187.P2852311744157225224

`A037955(2*A008619(n))`
-/

namespace A117187.P2852311744157225224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037955 (2 * A008619 n).toNat

end

end A117187.P2852311744157225224

namespace A117187

/-- `A037955(2*A008619(n))` -/
def P2852311744157225224.Spec : Prop :=
  ∀ n, P2852311744157225224.a n = A117187 n

end A117187

/-! ## A117187.P8962677624887250337

`A128015(n)+A116400(n)`
-/

namespace A117187.P8962677624887250337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128015 n + A116400 n

end

end A117187.P8962677624887250337

namespace A117187

/-- `A128015(n)+A116400(n)` -/
def P8962677624887250337.Spec : Prop :=
  ∀ n, P8962677624887250337.a n = A117187 n

end A117187

/-! ## A117187.P4342148424499082846

`A037952(2*(A004526(n)+1))`
-/

namespace A117187.P4342148424499082846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037952 (2 * (A004526 n + 1)).toNat

end

end A117187.P4342148424499082846

namespace A117187

/-- `A037952(2*(A004526(n)+1))` -/
def P4342148424499082846.Spec : Prop :=
  ∀ n, P4342148424499082846.a n = A117187 n

end A117187

/-! ## A117187.P2097592667917036521

`A037955(2*(A004526(n)+1))`
-/

namespace A117187.P2097592667917036521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037955 (2 * (A004526 n + 1)).toNat

end

end A117187.P2097592667917036521

namespace A117187

/-- `A037955(2*(A004526(n)+1))` -/
def P2097592667917036521.Spec : Prop :=
  ∀ n, P2097592667917036521.a n = A117187 n

end A117187

/-! ## A117187.P11433080998797856143

`A047171(2*A008619(n))+1`
-/

namespace A117187.P11433080998797856143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047171 (2 * A008619 n).toNat + 1

end

end A117187.P11433080998797856143

namespace A117187

/-- `A047171(2*A008619(n))+1` -/
def P11433080998797856143.Spec : Prop :=
  ∀ n, P11433080998797856143.a n = A117187 n

end A117187

/-! ## A117187.P5999868093970764808

`A037952(2*A110654(n+1))`
-/

namespace A117187.P5999868093970764808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037952 (2 * A110654 (n + 1)).toNat

end

end A117187.P5999868093970764808

namespace A117187

/-- `A037952(2*A110654(n+1))` -/
def P5999868093970764808.Spec : Prop :=
  ∀ n, P5999868093970764808.a n = A117187 n

end A117187

/-! ## A117187.P3534487382952562889

`A037952(A004524(2*(n+2)))`
-/

namespace A117187.P3534487382952562889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037952 (A004524 (2 * (n + 2))).toNat

end

end A117187.P3534487382952562889

namespace A117187

/-- `A037952(A004524(2*(n+2)))` -/
def P3534487382952562889.Spec : Prop :=
  ∀ n, P3534487382952562889.a n = A117187 n

end A117187

/-! ## A117187.P10835707554275178087

`A037955(2*A008621(2*n))`
-/

namespace A117187.P10835707554275178087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037955 (2 * A008621 (2 * n)).toNat

end

end A117187.P10835707554275178087

namespace A117187

/-- `A037955(2*A008621(2*n))` -/
def P10835707554275178087.Spec : Prop :=
  ∀ n, P10835707554275178087.a n = A117187 n

end A117187

/-! ## A117187.P15131825882731323302

`A037955(A000034(n+1)+n)`
-/

namespace A117187.P15131825882731323302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037955 (A000034 (n + 1) + (n : ℤ)).toNat

end

end A117187.P15131825882731323302

namespace A117187

/-- `A037955(A000034(n+1)+n)` -/
def P15131825882731323302.Spec : Prop :=
  ∀ n, P15131825882731323302.a n = A117187 n

end A117187

/-! ## A117187.P10278833763464574519

`A116385(n)+A063549(n+1)`
-/

namespace A117187.P10278833763464574519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116385 n + A063549 (n + 1)

end

end A117187.P10278833763464574519

namespace A117187

/-- `A116385(n)+A063549(n+1)` -/
def P10278833763464574519.Spec : Prop :=
  ∀ n, P10278833763464574519.a n = A117187 n

end A117187

/-! ## A117187.P13269152653081299557

`A037952(2-A000035(n)+n)`
-/

namespace A117187.P13269152653081299557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037952 (2 - A000035 n + (n : ℤ)).toNat

end

end A117187.P13269152653081299557

namespace A117187

/-- `A037952(2-A000035(n)+n)` -/
def P13269152653081299557.Spec : Prop :=
  ∀ n, P13269152653081299557.a n = A117187 n

end A117187

/-!
# A117188: Expansion of (1-x^2)/(1+x^2+x^4).

The programs for A117188, the canonical program `A117188.P8831629070024374832` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A117188 has offset 0).

The definition of A117188 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-x^2)/(1+x^2+x^4))` (program `A117188.P8831629070024374832`, by `A117188.P8831629070024374832.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A117188.P10063495552458321556

`a(n-6)` with `a(0)=1, a(1)=0, a(2)=-2, a(3)=0, a(4)=1, a(5)=0`
-/

namespace A117188.P10063495552458321556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, -2, 0, 1, 0] fun n a =>
  a (n - 6)

end

end A117188.P10063495552458321556

namespace A117188

/-- `a(n-6)` -/
def P10063495552458321556.Spec : Prop :=
  ∀ n, P10063495552458321556.a n = A117188 n

end A117188

/-! ## A117188.P8831629070024374832

`ogf((1-x^2)/(1+x^2+x^4))`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A117188

/-- `ogf((1-x^2)/(1+x^2+x^4))` -/
def P8831629070024374832.Spec : Prop :=
  ∀ n, P8831629070024374832.a n = A117188 n

theorem P8831629070024374832.correct : P8831629070024374832.Spec := by
  intro n
  simp only [A117188]

end A117188

/-!
# A117189: Binomial transform of the tribonacci sequence A000073 (shifted left twice).

The programs for A117189, the canonical program `A117189.P1901729098156263523` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A117189 has offset 0).

The definition of A117189 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A117189.P1901729098156263523

`4*a(n-1)-4*a(n-2)+2*a(n-3)` with `a(0)=1, a(1)=2, a(2)=5`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A117189

/-- `4*a(n-1)-4*a(n-2)+2*a(n-3)` -/
def P1901729098156263523.Spec : Prop :=
  ∀ n, P1901729098156263523.a n = A117189 n

theorem P1901729098156263523.correct : P1901729098156263523.Spec := by
  intro n
  simp only [A117189]

end A117189

/-! ## A117189.P9001964313470434692

`ogf((1-2x+x^2)/(1-4x+4x^2-2x^3))`
-/

namespace A117189.P9001964313470434692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -2, 1] [1, -4, 4, -2] n

end

end A117189.P9001964313470434692

namespace A117189

/-- `ogf((1-2x+x^2)/(1-4x+4x^2-2x^3))` -/
def P9001964313470434692.Spec : Prop :=
  ∀ n, P9001964313470434692.a n = A117189 n

end A117189

/-! ## A117189.P8370825283104842455

`A159035(n+1)`
-/

namespace A117189.P8370825283104842455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159035 (n + 1)

end

end A117189.P8370825283104842455

namespace A117189

/-- `A159035(n+1)` -/
def P8370825283104842455.Spec : Prop :=
  ∀ n, P8370825283104842455.a n = A117189 n

end A117189

/-! ## A117189.P5613750610263168382

`A291000(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A117189.P5613750610263168382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A291000 (n - 1) + a (n - 1)

end

end A117189.P5613750610263168382

namespace A117189

/-- `A291000(n-1)+a(n-1)` -/
def P5613750610263168382.Spec : Prop :=
  ∀ n, P5613750610263168382.a n = A117189 n

end A117189

/-! ## A117189.P6137151943830652929

`A115390(n)+2*a(n-1)` with `a(0)=1`
-/

namespace A117189.P6137151943830652929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A115390 n + 2 * a (n - 1)

end

end A117189.P6137151943830652929

namespace A117189

/-- `A115390(n)+2*a(n-1)` -/
def P6137151943830652929.Spec : Prop :=
  ∀ n, P6137151943830652929.a n = A117189 n

end A117189

/-! ## A117189.P17981499563408077977

`∑[A291000(round(sqrt(n²+1))-1)]`
-/

namespace A117189.P17981499563408077977
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291000 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ)) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A117189.P17981499563408077977

namespace A117189

/-- `∑[A291000(round(sqrt(n²+1))-1)]` -/
def P17981499563408077977.Spec : Prop :=
  ∀ n, P17981499563408077977.a n = A117189 n

end A117189

/-! ## A117189.P4312996188214986251

`record[A159035(A103221(n))]`
-/

namespace A117189.P4312996188214986251
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159035 (A103221 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A117189.P4312996188214986251

namespace A117189

/-- `record[A159035(A103221(n))]` -/
def P4312996188214986251.Spec : Prop :=
  ∀ n, P4312996188214986251.a n = A117189 n

end A117189

/-! ## A117189.P9225183101432744852

`A115390(n)+A099216(n)`
-/

namespace A117189.P9225183101432744852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115390 n + A099216 n

end

end A117189.P9225183101432744852

namespace A117189

/-- `A115390(n)+A099216(n)` -/
def P9225183101432744852.Spec : Prop :=
  ∀ n, P9225183101432744852.a n = A117189 n

end A117189

/-! ## A117189.P4138694229993513355

`A073357(n)+A103685(n)+1`
-/

namespace A117189.P4138694229993513355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073357 n + (A103685 n + 1)

end

end A117189.P4138694229993513355

namespace A117189

/-- `A073357(n)+A103685(n)+1` -/
def P4138694229993513355.Spec : Prop :=
  ∀ n, P4138694229993513355.a n = A117189 n

end A117189

/-! ## A117189.P4916451612812833562

`A073357(n)+∑[A115390(n)]+1`
-/

namespace A117189.P4916451612812833562
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115390 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073357 n + (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A117189.P4916451612812833562

namespace A117189

/-- `A073357(n)+∑[A115390(n)]+1` -/
def P4916451612812833562.Spec : Prop :=
  ∀ n, P4916451612812833562.a n = A117189 n

end A117189

/-! ## A117189.P17286606751370877890

`A115390(n)+∑[A103685(n)+1]`
-/

namespace A117189.P17286606751370877890
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103685 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115390 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A117189.P17286606751370877890

namespace A117189

/-- `A115390(n)+∑[A103685(n)+1]` -/
def P17286606751370877890.Spec : Prop :=
  ∀ n, P17286606751370877890.a n = A117189 n

end A117189

/-! ## A117189.P10198920869173008839

`Δ[A073357(n)]`
-/

namespace A117189.P10198920869173008839
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073357 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A117189.P10198920869173008839

namespace A117189

/-- `Δ[A073357(n)]` -/
def P10198920869173008839.Spec : Prop :=
  ∀ n, P10198920869173008839.a n = A117189 n

end A117189

/-! ## A117189.P12388913543051322385

`Δ[Δ[A115390(n)]]`
-/

namespace A117189.P12388913543051322385
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115390 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A117189.P12388913543051322385

namespace A117189

/-- `Δ[Δ[A115390(n)]]` -/
def P12388913543051322385.Spec : Prop :=
  ∀ n, P12388913543051322385.a n = A117189 n

end A117189

/-! ## A117189.P4463820036680328540

`A099216(n+1)/2`
-/

namespace A117189.P4463820036680328540
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A099216 (n + 1) : ℚ) / 2

end

end A117189.P4463820036680328540

namespace A117189

/-- `A099216(n+1)/2` -/
def P4463820036680328540.Spec : Prop :=
  ∀ n, P4463820036680328540.a n = (A117189 n : ℚ)

end A117189

/-! ## A117189.P14747031817982486323

`Δ[abs(∑[A159035(n)]-1)]`
-/

namespace A117189.P14747031817982486323
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159035 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f2 j - 1|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A117189.P14747031817982486323

namespace A117189

/-- `Δ[abs(∑[A159035(n)]-1)]` -/
def P14747031817982486323.Spec : Prop :=
  ∀ n, P14747031817982486323.a n = A117189 n

end A117189

/-! ## A117189.P13567231131392518324

`A291000(n)-∑[A073357(n)]`
-/

namespace A117189.P13567231131392518324
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073357 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291000 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A117189.P13567231131392518324

namespace A117189

/-- `A291000(n)-∑[A073357(n)]` -/
def P13567231131392518324.Spec : Prop :=
  ∀ n, P13567231131392518324.a n = A117189 n

end A117189

/-! ## A117189.P17337579565457186241

`A073357(n+1)-A073357(n)`
-/

namespace A117189.P17337579565457186241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073357 (n + 1) - A073357 n

end

end A117189.P17337579565457186241

namespace A117189

/-- `A073357(n+1)-A073357(n)` -/
def P17337579565457186241.Spec : Prop :=
  ∀ n, P17337579565457186241.a n = A117189 n

end A117189

/-! ## A117189.P9408281282339682507

`A078484(n+1)-A115390(n)`
-/

namespace A117189.P9408281282339682507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078484 (n + 1) - A115390 n

end

end A117189.P9408281282339682507

namespace A117189

/-- `A078484(n+1)-A115390(n)` -/
def P9408281282339682507.Spec : Prop :=
  ∀ n, P9408281282339682507.a n = A117189 n

end A117189

/-! ## A117189.P6981129073583502753

`A291000(n)-A115390(n+1)`
-/

namespace A117189.P6981129073583502753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291000 n - A115390 (n + 1)

end

end A117189.P6981129073583502753

namespace A117189

/-- `A291000(n)-A115390(n+1)` -/
def P6981129073583502753.Spec : Prop :=
  ∀ n, P6981129073583502753.a n = A117189 n

end A117189

/-! ## A117189.P61081018566314654

`∑[A115390(n+1)]+1-A115390(n)`
-/

namespace A117189.P61081018566314654
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115390 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (1 - A115390 n)

end

end A117189.P61081018566314654

namespace A117189

/-- `∑[A115390(n+1)]+1-A115390(n)` -/
def P61081018566314654.Spec : Prop :=
  ∀ n, P61081018566314654.a n = A117189 n

end A117189

/-!
# A117190: Integer k such that 10^n + k = A115062(n).

The programs for A117190, there is no canonical definition to state claims against.
-/

/-! ## A117190.P16741131802053771663

`A115062(n)-10^n`
-/

namespace A117190.P16741131802053771663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115062 n - (10 ^ n : ℤ)

end

end A117190.P16741131802053771663

/-! ## A117190.P4046901553478234478

`A062397(n)-(A199682(n)-A115062(n))`
-/

namespace A117190.P4046901553478234478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062397 n - (A199682 n - A115062 n)

end

end A117190.P4046901553478234478

/-! ## A117190.P7785444423254141295

`A033873(n)+A115062(n)-A003617(n+1)`
-/

namespace A117190.P7785444423254141295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033873 n + (A115062 n - A003617 (n + 1))

end

end A117190.P7785444423254141295

/-!
# A117192: Number of partitions of n into distinct parts with an even rank.

The programs for A117192, there is no canonical definition to state claims against.
-/

/-! ## A117192.P13451889177920891316

`A117193(n+1)+A003406(n+1)`
-/

namespace A117192.P13451889177920891316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117193 (n + 1) + A003406 (n + 1)

end

end A117192.P13451889177920891316

/-! ## A117192.P15149707744121057916

`A117194(n+1)+A010054(n+1)`
-/

namespace A117192.P15149707744121057916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117194 (n + 1) + A010054 (n + 1)

end

end A117192.P15149707744121057916

/-! ## A117192.P1272556898132328195

`A000009(n+1)-A117193(n+1)`
-/

namespace A117192.P1272556898132328195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 (n + 1) - A117193 (n + 1)

end

end A117192.P1272556898132328195

/-! ## A117192.P4249360034629775245

`A117194(n+1)+A023531(n)`
-/

namespace A117192.P4249360034629775245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117194 (n + 1) + A023531 n

end

end A117192.P4249360034629775245

/-! ## A117192.P4706054323654565707

`Δ[A036469(n)]-A117193(n+1)`
-/

namespace A117192.P4706054323654565707
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036469 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A117193 (n + 1)

end

end A117192.P4706054323654565707

/-! ## A117192.P11190444537918704160

`A117195(∑[n]+1)+A117194(n+1)`
-/

namespace A117192.P11190444537918704160
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117195 (∑ j ∈ Finset.range (n + 1), f1 j + 1) + A117194 (n + 1)

end

end A117192.P11190444537918704160

/-! ## A117192.P11037416794206920763

`(A003406(n+1)+A000009(n+1))/2`
-/

namespace A117192.P11037416794206920763
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003406 (n + 1) + A000009 (n + 1) : ℚ) / 2

end

end A117192.P11037416794206920763

/-! ## A117192.P12399808597506463600

`A067659(n+1)+A067661(n+1)-A117193(n+1)`
-/

namespace A117192.P12399808597506463600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067659 (n + 1) + (A067661 (n + 1) - A117193 (n + 1))

end

end A117192.P12399808597506463600

/-!
# A117193: Number of partitions of n into distinct parts with an odd rank.

The programs for A117193, there is no canonical definition to state claims against.
-/

/-! ## A117193.P5829505449603278733

`A000009(n+1)-A117192(n+1)`
-/

namespace A117193.P5829505449603278733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 (n + 1) - A117192 (n + 1)

end

end A117193.P5829505449603278733

/-! ## A117193.P6259973315570243763

`A117192(n+1)-A003406(n+1)`
-/

namespace A117193.P6259973315570243763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117192 (n + 1) - A003406 (n + 1)

end

end A117193.P6259973315570243763

/-! ## A117193.P10538891299232666075

`Δ[A036469(n)]-A117192(n+1)`
-/

namespace A117193.P10538891299232666075
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036469 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A117192 (n + 1)

end

end A117193.P10538891299232666075

/-! ## A117193.P7134607704550613633

`A052839(n+1)-A117192(n+1)-1`
-/

namespace A117193.P7134607704550613633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052839 (n + 1) - A117192 (n + 1) - 1

end

end A117193.P7134607704550613633

/-! ## A117193.P11816007216480903523

`(A000009(n+1)-A003406(n+1))/2`
-/

namespace A117193.P11816007216480903523
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000009 (n + 1) - A003406 (n + 1) : ℚ) / 2

end

end A117193.P11816007216480903523

/-! ## A117193.P13398782721216726526

`A000009(n+1)-(A117194(n+1)+A010054(n+1))`
-/

namespace A117193.P13398782721216726526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 (n + 1) - (A117194 (n + 1) + A010054 (n + 1))

end

end A117193.P13398782721216726526

/-! ## A117193.P15784778377844088705

`A010054(n+1)+A117194(n+1)-A003406(n+1)`
-/

namespace A117193.P15784778377844088705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 (n + 1) + (A117194 (n + 1) - A003406 (n + 1))

end

end A117193.P15784778377844088705

/-! ## A117193.P11923343532328365580

`A067659(n+1)+A067661(n+1)-A117192(n+1)`
-/

namespace A117193.P11923343532328365580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067659 (n + 1) + (A067661 (n + 1) - A117192 (n + 1))

end

end A117193.P11923343532328365580

/-!
# A117194: Number of partitions of n into distinct parts with an even rank greater than 0.

The programs for A117194, there is no canonical definition to state claims against.
-/

/-! ## A117194.P7337420907256315597

`A117192(n+1)-char[∑[n-1]]`
-/

namespace A117194.P7337420907256315597
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117192 (n + 1) - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A117194.P7337420907256315597

/-! ## A117194.P521824815433125599

`abs(A117192(n+1)-A023531(n))`
-/

namespace A117194.P521824815433125599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A117192 (n + 1) - A023531 n|

end

end A117194.P521824815433125599

/-! ## A117194.P9254392946501419322

`abs(A010054(n+1)-A117192(n+1))`
-/

namespace A117194.P9254392946501419322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A010054 (n + 1) - A117192 (n + 1)|

end

end A117194.P9254392946501419322

/-! ## A117194.P1065458968847631433

`A143433(A130321(n))+A117192(n+1)`
-/

namespace A117194.P1065458968847631433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143433 (A130321 n).toNat + A117192 (n + 1)

end

end A117194.P1065458968847631433

/-! ## A117194.P2615153308725464444

`A000009(n+1)-(A117193(n+1)+A010054(n+1))`
-/

namespace A117194.P2615153308725464444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 (n + 1) - (A117193 (n + 1) + A010054 (n + 1))

end

end A117194.P2615153308725464444

/-! ## A117194.P2737803809879260907

`(A117192(n+1)-A023531(n))*A000040(n+1)%2`
-/

namespace A117194.P2737803809879260907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A117192 (n + 1) - A023531 n) * Int.tmod (A000040 (n + 1)) 2

end

end A117194.P2737803809879260907

/-! ## A117194.P4079586064098060044

`A000009(n+1)-A117193(n+1)-A010054(A130321(n))`
-/

namespace A117194.P4079586064098060044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 (n + 1) - A117193 (n + 1) - A010054 (A130321 n).toNat

end

end A117194.P4079586064098060044

/-! ## A117194.P14453896798805744914

`A348945(A001511(n+1)+1)-(A010054(n+1)-A117192(n+1))`
-/

namespace A117194.P14453896798805744914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348945 (A001511 (n + 1) + 1).toNat - (A010054 (n + 1) - A117192 (n + 1))

end

end A117194.P14453896798805744914

/-! ## A117194.P816382529533030297

`A067659(n+1)+A067661(n+1)-A117193(n+1)-A010054(n+1)`
-/

namespace A117194.P816382529533030297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067659 (n + 1) + (A067661 (n + 1) - A117193 (n + 1)) - A010054 (n + 1)

end

end A117194.P816382529533030297

/-!
# A117195: Triangle read by rows: T(n,k) = number of partitions into distinct parts having rank k, 0<=k<n.

The programs for A117195, there is no canonical definition to state claims against.
-/

/-! ## A117195.P9830126795728432938

`A322452(A089353(n+1))^A316996(n)`
-/

namespace A117195.P9830126795728432938
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A322452 (A089353 (n + 1)).toNat : ℚ) ^ (A316996 n : ℤ)

end

end A117195.P9830126795728432938

/-! ## A117195.P4491524718431763851

`A322452(A089353(n+1))^A327077(n)`
-/

namespace A117195.P4491524718431763851
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A322452 (A089353 (n + 1)).toNat : ℚ) ^ (A327077 n : ℤ)

end

end A117195.P4491524718431763851

/-! ## A117195.P15800147845542708489

`A322452(A089353(n+1))^A342277(n)²`
-/

namespace A117195.P15800147845542708489
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A322452 (A089353 (n + 1)).toNat : ℚ) ^ (A342277 n ^ 2 : ℤ)

end

end A117195.P15800147845542708489

/-! ## A117195.P14939054003291184969

`A322452(A089353(n+1))^(1-A241380(n))²`
-/

namespace A117195.P14939054003291184969
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A322452 (A089353 (n + 1)).toNat : ℚ) ^ ((1 - A241380 n) ^ 2 : ℤ)

end

end A117195.P14939054003291184969

/-! ## A117195.P16168346068491295053

`A322452(A089353(n+1))^(A050043(n+1)-n)`
-/

namespace A117195.P16168346068491295053
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A322452 (A089353 (n + 1)).toNat : ℚ) ^ (A050043 (n + 1) - (n : ℤ) : ℤ)

end

end A117195.P16168346068491295053

/-!
# A117197: a(n) = (n^3 - 1)^3.

The programs for A117197, the canonical program `A117197.P15669734261078798791` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A117197 has offset 1).

The definition of A117197 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `((n+1)^3-1)^3` (program `A117197.P15669734261078798791`, by `A117197.P15669734261078798791.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A117197.P15669734261078798791

`((n+1)^3-1)^3`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A117197

/-- `((n+1)^3-1)^3` -/
def P15669734261078798791.Spec : Prop :=
  ∀ n, P15669734261078798791.a n = A117197 (n + 1)

theorem P15669734261078798791.correct : P15669734261078798791.Spec := by
  intro n
  simp only [A117197, Nat.add_sub_cancel]

end A117197

/-! ## A117197.P7716093299851078752

`A000578(A068601(n+1))`
-/

namespace A117197.P7716093299851078752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 (A068601 (n + 1)).toNat

end

end A117197.P7716093299851078752

namespace A117197

/-- `A000578(A068601(n+1))` -/
def P7716093299851078752.Spec : Prop :=
  ∀ n, P7716093299851078752.a n = A117197 (n + 1)

end A117197

/-! ## A117197.P691102377308333904

`-(xor(n, -1)^3+1)^3`
-/

namespace A117197.P691102377308333904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -((Int.xor (n : ℤ) (-1) ^ 3 + 1) ^ 3)

end

end A117197.P691102377308333904

namespace A117197

/-- `-(xor(n, -1)^3+1)^3` -/
def P691102377308333904.Spec : Prop :=
  ∀ n, P691102377308333904.a n = A117197 (n + 1)

end A117197

/-! ## A117197.P11983788664045051775

`-(1-(-xor(n, -1))^3)^3`
-/

namespace A117197.P11983788664045051775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -((1 - (-Int.xor (n : ℤ) (-1)) ^ 3) ^ 3)

end

end A117197.P11983788664045051775

namespace A117197

/-- `-(1-(-xor(n, -1))^3)^3` -/
def P11983788664045051775.Spec : Prop :=
  ∀ n, P11983788664045051775.a n = A117197 (n + 1)

end A117197

/-! ## A117197.P911047320041291999

`A135300(n+1)²*lcm(n, A135300(n+1))`
-/

namespace A117197.P911047320041291999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135300 (n + 1) ^ 2 * (Int.lcm (n : ℤ) (A135300 (n + 1)) : ℤ)

end

end A117197.P911047320041291999

namespace A117197

/-- `A135300(n+1)²*lcm(n, A135300(n+1))` -/
def P911047320041291999.Spec : Prop :=
  ∀ n, P911047320041291999.a n = A117197 (n + 1)

end A117197

/-! ## A117197.P14065299482645201009

`A068601(n+1)*A068601(n+1)*A135300(n+1)`
-/

namespace A117197.P14065299482645201009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068601 (n + 1) * A068601 (n + 1) * A135300 (n + 1)

end

end A117197.P14065299482645201009

namespace A117197

/-- `A068601(n+1)*A068601(n+1)*A135300(n+1)` -/
def P14065299482645201009.Spec : Prop :=
  ∀ n, P14065299482645201009.a n = A117197 (n + 1)

end A117197

/-! ## A117197.P10577612737307322981

`A178393(n+1)+1`
-/

namespace A117197.P10577612737307322981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178393 (n + 1) + 1

end

end A117197.P10577612737307322981

namespace A117197

/-- `A178393(n+1)+1` -/
def P10577612737307322981.Spec : Prop :=
  ∀ n, P10577612737307322981.a n = A117197 (n + 1)

theorem P10577612737307322981.correct : P10577612737307322981.Spec := by
  intro n
  simp only [A117197, Nat.add_sub_cancel, A117197.P10577612737307322981.a, A117197.P15669734261078798791.a, A178393, A178393.P16791006920887011293.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A117197

/-! ## A117197.P12317138958755395262

`abs(A024001(n+1)^3)`
-/

namespace A117197.P12317138958755395262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A024001 (n + 1) ^ 3|

end

end A117197.P12317138958755395262

namespace A117197

/-- `abs(A024001(n+1)^3)` -/
def P12317138958755395262.Spec : Prop :=
  ∀ n, P12317138958755395262.a n = A117197 (n + 1)

end A117197

/-! ## A117197.P11371217059379209527

`A204767(A016825(n))²*A204767(A016825(n))`
-/

namespace A117197.P11371217059379209527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204767 (A016825 n).toNat ^ 2 * A204767 (A016825 n).toNat

end

end A117197.P11371217059379209527

namespace A117197

/-- `A204767(A016825(n))²*A204767(A016825(n))` -/
def P11371217059379209527.Spec : Prop :=
  ∀ n, P11371217059379209527.a n = A117197 (n + 1)

end A117197

/-! ## A117197.P3385998815667653801

`A000578(n)*A016755(A000217(n+1))`
-/

namespace A117197.P3385998815667653801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 n * A016755 (A000217 (n + 1)).toNat

end

end A117197.P3385998815667653801

namespace A117197

/-- `A000578(n)*A016755(A000217(n+1))` -/
def P3385998815667653801.Spec : Prop :=
  ∀ n, P3385998815667653801.a n = A117197 (n + 1)

end A117197

/-!
# A117198: Generalized Riordan array (1,x)+(x,x^2)+(x^2,x^3).

The programs for A117198, the canonical program `A117198.P2765245029174201453` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A117198 has offset 0).

The definition of A117198 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A117198.P2765245029174201453

`A329678(A059026(n+1))`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A117198

/-- `A329678(A059026(n+1))` -/
def P2765245029174201453.Spec : Prop :=
  ∀ n, P2765245029174201453.a n = A117198 n

theorem P2765245029174201453.correct : P2765245029174201453.Spec := by
  intro n
  simp only [A117198]

end A117198

/-! ## A117198.P8106799663384485464

`A329678(A372523(n+1))`
-/

namespace A117198.P8106799663384485464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329678 (A372523 (n + 1)).toNat

end

end A117198.P8106799663384485464

namespace A117198

/-- `A329678(A372523(n+1))` -/
def P8106799663384485464.Spec : Prop :=
  ∀ n, P8106799663384485464.a n = A117198 n

end A117198

/-! ## A117198.P7715933979468214985

`and(A078803(n+1), A129555(n))`
-/

namespace A117198.P7715933979468214985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A078803 (n + 1)) (A129555 n)

end

end A117198.P7715933979468214985

namespace A117198

/-- `and(A078803(n+1), A129555(n))` -/
def P7715933979468214985.Spec : Prop :=
  ∀ n, P7715933979468214985.a n = A117198 n

end A117198

/-! ## A117198.P5022516790276468054

`and(A049324(n+1), A051731(n+1))`
-/

namespace A117198.P5022516790276468054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A049324 (n + 1)) (A051731 (n + 1))

end

end A117198.P5022516790276468054

namespace A117198

/-- `and(A049324(n+1), A051731(n+1))` -/
def P5022516790276468054.Spec : Prop :=
  ∀ n, P5022516790276468054.a n = A117198 n

end A117198

/-! ## A117198.P11239755192132889721

`and(A051731(n+1), A078803(n+1))`
-/

namespace A117198.P11239755192132889721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A051731 (n + 1)) (A078803 (n + 1))

end

end A117198.P11239755192132889721

namespace A117198

/-- `and(A051731(n+1), A078803(n+1))` -/
def P11239755192132889721.Spec : Prop :=
  ∀ n, P11239755192132889721.a n = A117198 n

end A117198

/-! ## A117198.P13215100432547292663

`and(A049324(n+1), A129558(n+1))`
-/

namespace A117198.P13215100432547292663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A049324 (n + 1)) (A129558 (n + 1))

end

end A117198.P13215100432547292663

namespace A117198

/-- `and(A049324(n+1), A129558(n+1))` -/
def P13215100432547292663.Spec : Prop :=
  ∀ n, P13215100432547292663.a n = A117198 n

end A117198

/-! ## A117198.P2864781698690158846

`and(A078803(n+1), A103994(n+1))`
-/

namespace A117198.P2864781698690158846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A078803 (n + 1)) (A103994 (n + 1))

end

end A117198.P2864781698690158846

namespace A117198

/-- `and(A078803(n+1), A103994(n+1))` -/
def P2864781698690158846.Spec : Prop :=
  ∀ n, P2864781698690158846.a n = A117198 n

end A117198

/-! ## A117198.P6748906454164271733

`and(A078803(n+1), A129558(n+1))`
-/

namespace A117198.P6748906454164271733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A078803 (n + 1)) (A129558 (n + 1))

end

end A117198.P6748906454164271733

namespace A117198

/-- `and(A078803(n+1), A129558(n+1))` -/
def P6748906454164271733.Spec : Prop :=
  ∀ n, P6748906454164271733.a n = A117198 n

end A117198

/-! ## A117198.P10166552405636654214

`A329678(A051537(n+1))`
-/

namespace A117198.P10166552405636654214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329678 (A051537 (n + 1)).toNat

end

end A117198.P10166552405636654214

namespace A117198

/-- `A329678(A051537(n+1))` -/
def P10166552405636654214.Spec : Prop :=
  ∀ n, P10166552405636654214.a n = A117198 n

end A117198

/-! ## A117198.P15508851669160326195

`A183918(A386823(n+2))`
-/

namespace A117198.P15508851669160326195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183918 (A386823 (n + 2)).toNat

end

end A117198.P15508851669160326195

namespace A117198

/-- `A183918(A386823(n+2))` -/
def P15508851669160326195.Spec : Prop :=
  ∀ n, P15508851669160326195.a n = A117198 n

end A117198

/-! ## A117198.P8718541809255714264

`A010058(A386824(n+2))`
-/

namespace A117198.P8718541809255714264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010058 (A386824 (n + 2)).toNat

end

end A117198.P8718541809255714264

namespace A117198

/-- `A010058(A386824(n+2))` -/
def P8718541809255714264.Spec : Prop :=
  ∀ n, P8718541809255714264.a n = A117198 n

end A117198

/-! ## A117198.P14935018963255788733

`C(C(3, A168019(n)), 3)`
-/

namespace A117198.P14935018963255788733
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (Nat.choose 3 (A168019 n).toNat) 3

end

end A117198.P14935018963255788733

namespace A117198

/-- `C(C(3, A168019(n)), 3)` -/
def P14935018963255788733.Spec : Prop :=
  ∀ n, (P14935018963255788733.a n : ℤ) = A117198 n

end A117198

/-! ## A117198.P12593462901537419264

`A368835(C(3, A168019(n)))`
-/

namespace A117198.P12593462901537419264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368835 (Nat.choose 3 (A168019 n).toNat)

end

end A117198.P12593462901537419264

namespace A117198

/-- `A368835(C(3, A168019(n)))` -/
def P12593462901537419264.Spec : Prop :=
  ∀ n, P12593462901537419264.a n = A117198 n

end A117198

/-! ## A117198.P3424753412473389194

`A209229(A168019(n))`
-/

namespace A117198.P3424753412473389194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209229 (A168019 n).toNat

end

end A117198.P3424753412473389194

namespace A117198

/-- `A209229(A168019(n))` -/
def P3424753412473389194.Spec : Prop :=
  ∀ n, P3424753412473389194.a n = A117198 n

end A117198

/-! ## A117198.P13937793206840537841

`A209229(A168532(n+1))`
-/

namespace A117198.P13937793206840537841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209229 (A168532 (n + 1)).toNat

end

end A117198.P13937793206840537841

namespace A117198

/-- `A209229(A168532(n+1))` -/
def P13937793206840537841.Spec : Prop :=
  ∀ n, P13937793206840537841.a n = A117198 n

end A117198

/-! ## A117198.P13437416047608861584

`A329670(A355090(n))`
-/

namespace A117198.P13437416047608861584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329670 (A355090 n).toNat

end

end A117198.P13437416047608861584

namespace A117198

/-- `A329670(A355090(n))` -/
def P13437416047608861584.Spec : Prop :=
  ∀ n, P13437416047608861584.a n = A117198 n

end A117198

/-! ## A117198.P1130212106700973998

`A073424(A168019(n)²+2)`
-/

namespace A117198.P1130212106700973998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073424 (A168019 n ^ 2 + 2).toNat

end

end A117198.P1130212106700973998

namespace A117198

/-- `A073424(A168019(n)²+2)` -/
def P1130212106700973998.Spec : Prop :=
  ∀ n, P1130212106700973998.a n = A117198 n

end A117198

/-! ## A117198.P15012365639699572683

`and(A049324(n+1), A153659(n+1))`
-/

namespace A117198.P15012365639699572683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A049324 (n + 1)) (A153659 (n + 1))

end

end A117198.P15012365639699572683

namespace A117198

/-- `and(A049324(n+1), A153659(n+1))` -/
def P15012365639699572683.Spec : Prop :=
  ∀ n, P15012365639699572683.a n = A117198 n

end A117198

/-! ## A117198.P2897207789797057688

`and(A049324(n+1), A174852(n+1))`
-/

namespace A117198.P2897207789797057688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A049324 (n + 1)) (A174852 (n + 1))

end

end A117198.P2897207789797057688

namespace A117198

/-- `and(A049324(n+1), A174852(n+1))` -/
def P2897207789797057688.Spec : Prop :=
  ∀ n, P2897207789797057688.a n = A117198 n

end A117198

/-! ## A117198.P11476625083171494235

`and(A049375(n+1), A174852(n+1))`
-/

namespace A117198.P11476625083171494235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A049375 (n + 1)) (A174852 (n + 1))

end

end A117198.P11476625083171494235

namespace A117198

/-- `and(A049375(n+1), A174852(n+1))` -/
def P11476625083171494235.Spec : Prop :=
  ∀ n, P11476625083171494235.a n = A117198 n

end A117198

/-!
# A117199: Expansion of 1/(1-x^2) + x/(1-x^3) + x^2/(1-x^4).

The programs for A117199, the canonical program `A117199.P14647656204022041656` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A117199 has offset 0).

The definition of A117199 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+x+x^2-2x^3-2x^4-2x^5+3x^7)/(1-x^2-x^3-x^4+x^5+x^6+x^7-x^9))` (program `A117199.P14647656204022041656`, by `A117199.P14647656204022041656.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A117199.P14647656204022041656

`ogf((1+x+x^2-2x^3-2x^4-2x^5+3x^7)/(1-x^2-x^3-x^4+x^5+x^6+x^7-x^9))`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A117199

/-- `ogf((1+x+x^2-2x^3-2x^4-2x^5+3x^7)/(1-x^2-x^3-x^4+x^5+x^6+x^7-x^9))` -/
def P14647656204022041656.Spec : Prop :=
  ∀ n, P14647656204022041656.a n = A117199 n

theorem P14647656204022041656.correct : P14647656204022041656.Spec := by
  intro n
  simp only [A117199]

end A117199

