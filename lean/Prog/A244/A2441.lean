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
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C034
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
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
# A244100: Number of ballot sequences of length n having 3 largest parts.

The programs for A244100, there is no canonical definition to state claims against.
-/

/-! ## A244100.P12941495809909005468

`A238123(A167614(n+2))`
-/

namespace A244100.P12941495809909005468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238123 (A167614 (n + 2)).toNat

end

end A244100.P12941495809909005468

/-! ## A244100.P5121363645400693884

`A238123(A152950(n+4))`
-/

namespace A244100.P5121363645400693884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238123 (A152950 (n + 4)).toNat

end

end A244100.P5121363645400693884

/-! ## A244100.P15844754736599807891

`A238123(A052905(n)+8)`
-/

namespace A244100.P15844754736599807891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238123 (A052905 n + 8).toNat

end

end A244100.P15844754736599807891

/-! ## A244100.P5726832260008297263

`A238123(A055999(n)+9)`
-/

namespace A244100.P5726832260008297263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238123 (A055999 n + 9).toNat

end

end A244100.P5726832260008297263

/-! ## A244100.P9279141323125842761

`A238123(eq[3, A002262(n)])`
-/

namespace A244100.P9279141323125842761
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238123 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A244100.P9279141323125842761

/-! ## A244100.P12930714696103361688

`A238123(A000124(n+3)+2)`
-/

namespace A244100.P12930714696103361688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238123 (A000124 (n + 3) + 2).toNat

end

end A244100.P12930714696103361688

/-! ## A244100.P15655999572560567712

`A238123(eq[1, A144328(n+1)-2])`
-/

namespace A244100.P15655999572560567712
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238123 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A244100.P15655999572560567712

/-! ## A244100.P384606711749225260

`A238123(eq[2, A002260(n+1)-2])`
-/

namespace A244100.P384606711749225260
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238123 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A244100.P384606711749225260

/-! ## A244100.P9620048286450322211

`A238123(eq[2, A002260(n+1)/2])`
-/

namespace A244100.P9620048286450322211
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002260 (n + 1) : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238123 (SequenceMachineLib.nth (fun j => (f1 j : ℚ) = f2 j) n)

end

end A244100.P9620048286450322211

/-!
# A244101: Number of ballot sequences of length n having 4 largest parts.

The programs for A244101, there is no canonical definition to state claims against.
-/

/-! ## A244101.P5664273398406507297

`A238123(∑[n+4]+10)`
-/

namespace A244101.P5664273398406507297
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238123 (∑ j ∈ Finset.range (n + 1), f1 j + 10)

end

end A244101.P5664273398406507297

/-!
# A244102: Number of ballot sequences of length n having 5 largest parts.

The programs for A244102, there is no canonical definition to state claims against.
-/

/-! ## A244102.P16554185572471895443

`A238123(A167499(n+4))`
-/

namespace A244102.P16554185572471895443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238123 (A167499 (n + 4)).toNat

end

end A244102.P16554185572471895443

/-! ## A244102.P12090347898769232787

`A238123(A167614(n+4)+2)`
-/

namespace A244102.P12090347898769232787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238123 (A167614 (n + 4) + 2).toNat

end

end A244102.P12090347898769232787

/-! ## A244102.P8725051834908054012

`A238123(A167487(n+4)-2)`
-/

namespace A244102.P8725051834908054012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238123 (A167487 (n + 4) - 2).toNat

end

end A244102.P8725051834908054012

/-! ## A244102.P14049115727868276579

`A238123(A133263(n+5)+3)`
-/

namespace A244102.P14049115727868276579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238123 (A133263 (n + 5) + 3).toNat

end

end A244102.P14049115727868276579

/-! ## A244102.P6901676779755359940

`A238123(A000217(n+6)-(n+1))`
-/

namespace A244102.P6901676779755359940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238123 (A000217 (n + 6) - (n + 1 : ℤ)).toNat

end

end A244102.P6901676779755359940

/-! ## A244102.P18418056206303589560

`A238123(A000124(n+6)-(n+2))`
-/

namespace A244102.P18418056206303589560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238123 (A000124 (n + 6) - (n + 2 : ℤ)).toNat

end

end A244102.P18418056206303589560

/-! ## A244102.P397581344776805568

`A238123(n+10+A000217(n+4))`
-/

namespace A244102.P397581344776805568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238123 ((n + 10 : ℤ) + A000217 (n + 4)).toNat

end

end A244102.P397581344776805568

/-!
# A244103: Number of ballot sequences of length n having 6 largest parts.

The programs for A244103, there is no canonical definition to state claims against.
-/

/-! ## A244103.P10506177586155127209

`A238123(A167499(n+5)+1)`
-/

namespace A244103.P10506177586155127209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238123 (A167499 (n + 5) + 1).toNat

end

end A244103.P10506177586155127209

/-! ## A244103.P7319165066602365481

`A238123(A167614(n+5)+3)`
-/

namespace A244103.P7319165066602365481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238123 (A167614 (n + 5) + 3).toNat

end

end A244103.P7319165066602365481

/-! ## A244103.P13658439427864176014

`A238123(A000124(n+6)+5)`
-/

namespace A244103.P13658439427864176014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238123 (A000124 (n + 6) + 5).toNat

end

end A244103.P13658439427864176014

/-! ## A244103.P5673887418567018925

`A238123(A000096(n+5)+7)`
-/

namespace A244103.P5673887418567018925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238123 (A000096 (n + 5) + 7).toNat

end

end A244103.P5673887418567018925

/-! ## A244103.P16188799877949410522

`A238123(A000217(n+6)+6)`
-/

namespace A244103.P16188799877949410522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238123 (A000217 (n + 6) + 6).toNat

end

end A244103.P16188799877949410522

/-! ## A244103.P7447780753451321833

`A238123(A055998(n+6)-A005843(n+3))`
-/

namespace A244103.P7447780753451321833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238123 (A055998 (n + 6) - A005843 (n + 3)).toNat

end

end A244103.P7447780753451321833

/-!
# A244104: Number of ballot sequences of length n having 7 largest parts.

The programs for A244104, there is no canonical definition to state claims against.
-/

/-! ## A244104.P14638091157481284122

`A238123(A167499(n+6)+2)`
-/

namespace A244104.P14638091157481284122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238123 (A167499 (n + 6) + 2).toNat

end

end A244104.P14638091157481284122

/-! ## A244104.P16750942656452184832

`A238123(A167614(n+6)+4)`
-/

namespace A244104.P16750942656452184832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238123 (A167614 (n + 6) + 4).toNat

end

end A244104.P16750942656452184832

/-! ## A244104.P14326964891622491568

`A238123(A000096(n+6)+8)`
-/

namespace A244104.P14326964891622491568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238123 (A000096 (n + 6) + 8).toNat

end

end A244104.P14326964891622491568

/-! ## A244104.P18055142273942594870

`A238123(A000217(n+7)+7)`
-/

namespace A244104.P18055142273942594870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238123 (A000217 (n + 7) + 7).toNat

end

end A244104.P18055142273942594870

/-! ## A244104.P2579078926483470348

`A238123(A034856(n+6)+9)`
-/

namespace A244104.P2579078926483470348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238123 (A034856 (n + 6) + 9).toNat

end

end A244104.P2579078926483470348

/-! ## A244104.P17939373553921026036

`A238123(A000124(n+8)-(n+2))`
-/

namespace A244104.P17939373553921026036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238123 (A000124 (n + 8) - (n + 2 : ℤ)).toNat

end

end A244104.P17939373553921026036

/-!
# A244105: Number of ballot sequences of length n having 8 largest parts.

The programs for A244105, there is no canonical definition to state claims against.
-/

/-! ## A244105.P401816952488307277

`A238123(A034856(n+7)+10)`
-/

namespace A244105.P401816952488307277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238123 (A034856 (n + 7) + 10).toNat

end

end A244105.P401816952488307277

/-! ## A244105.P2655745028190721546

`A238123(A000217(n+9)-(n+1))`
-/

namespace A244105.P2655745028190721546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238123 (A000217 (n + 9) - (n + 1 : ℤ)).toNat

end

end A244105.P2655745028190721546

/-! ## A244105.P17707794953309053606

`A238123(A055999(n+1)+A008574(n+10))`
-/

namespace A244105.P17707794953309053606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238123 (A055999 (n + 1) + A008574 (n + 10)).toNat

end

end A244105.P17707794953309053606

/-! ## A244105.P6873027279802788221

`A238123(A004273(n+12)+A000217(n+6))`
-/

namespace A244105.P6873027279802788221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238123 (A004273 (n + 12) + A000217 (n + 6)).toNat

end

end A244105.P6873027279802788221

/-! ## A244105.P5648503516085334730

`A238123(A167614(n+15)-A004771(n+11))`
-/

namespace A244105.P5648503516085334730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238123 (A167614 (n + 15) - A004771 (n + 11)).toNat

end

end A244105.P5648503516085334730

/-!
# A244106: Number of ballot sequences of length n having 9 largest parts.

The programs for A244106, there is no canonical definition to state claims against.
-/

/-! ## A244106.P6180363184426755786

`A238123(A046691(n+7)+13)`
-/

namespace A244106.P6180363184426755786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238123 (A046691 (n + 7) + 13).toNat

end

end A244106.P6180363184426755786

/-! ## A244106.P17644586550870198963

`A238123(A000217(n+10)-(n+1))`
-/

namespace A244106.P17644586550870198963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238123 (A000217 (n + 10) - (n + 1 : ℤ)).toNat

end

end A244106.P17644586550870198963

/-! ## A244106.P17383232568711862358

`A238123(A131098(n+11)+A000217(n+5))`
-/

namespace A244106.P17383232568711862358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238123 (A131098 (n + 11) + A000217 (n + 5)).toNat

end

end A244106.P17383232568711862358

/-! ## A244106.P4870321304663149475

`A238123(A167499(n+9)+A024000(n+7))`
-/

namespace A244106.P4870321304663149475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238123 (A167499 (n + 9) + A024000 (n + 7)).toNat

end

end A244106.P4870321304663149475

/-!
# A244107: Number of ballot sequences of length n having 10 largest parts.

The programs for A244107, there is no canonical definition to state claims against.
-/

/-! ## A244107.P1021443613336313929

`A238123(eq[10, A002262(n)])`
-/

namespace A244107.P1021443613336313929
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238123 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A244107.P1021443613336313929

/-! ## A244107.P6211649269472693192

`A238123(A167499(n+9)+5)`
-/

namespace A244107.P6211649269472693192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238123 (A167499 (n + 9) + 5).toNat

end

end A244107.P6211649269472693192

/-! ## A244107.P13885673307390260604

`A238123(A000217(n+10)+10)`
-/

namespace A244107.P13885673307390260604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238123 (A000217 (n + 10) + 10).toNat

end

end A244107.P13885673307390260604

/-! ## A244107.P17794942342103069816

`A238123(eq[10, A144328(n+1)])`
-/

namespace A244107.P17794942342103069816
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238123 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A244107.P17794942342103069816

/-! ## A244107.P4986847482371113941

`A238123(eq[11, A002260(n+1)])`
-/

namespace A244107.P4986847482371113941
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238123 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A244107.P4986847482371113941

/-! ## A244107.P11510837154245383008

`A238123(eq[21, A158405(n+1)])`
-/

namespace A244107.P11510837154245383008
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  21

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158405 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238123 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A244107.P11510837154245383008

/-!
# A244111: Primes p such that p + phi(p) + mu(phi(p)) is also prime.

The programs for A244111, there is no canonical definition to state claims against.
-/

/-! ## A244111.P8957660829558822998

`(A153208(n+1)+1)/2`
-/

namespace A244111.P8957660829558822998
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A153208 (n + 1) + 1 : ℚ) / 2

end

end A244111.P8957660829558822998

/-! ## A244111.P16772815305875317639

`∩[A005382(n+1), A049092(n+1)]`
-/

namespace A244111.P16772815305875317639
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005382 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049092 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A244111.P16772815305875317639

/-! ## A244111.P5129585396231409372

`∩[A049092(n+1), A174568(n+1)]`
-/

namespace A244111.P5129585396231409372
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049092 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174568 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A244111.P5129585396231409372

/-! ## A244111.P11085649380272172671

`∩[A049092(n+1), A265394(n+1)]`
-/

namespace A244111.P11085649380272172671
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049092 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265394 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A244111.P11085649380272172671

/-! ## A244111.P17816678015252748101

`∩[A049092(n+1), A384020(n+1)]`
-/

namespace A244111.P17816678015252748101
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049092 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384020 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A244111.P17816678015252748101

/-! ## A244111.P17755009783559617039

`∩[A049092(n+1), A068080(n+1)]`
-/

namespace A244111.P17755009783559617039
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049092 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068080 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A244111.P17755009783559617039

/-! ## A244111.P17260795961048365476

`∩[A049092(n+1), A119681(n+1)]`
-/

namespace A244111.P17260795961048365476
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049092 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119681 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A244111.P17260795961048365476

/-! ## A244111.P9562556869465766264

`∩[A049092(n+1), A177965(n+1)]`
-/

namespace A244111.P9562556869465766264
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049092 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177965 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A244111.P9562556869465766264

/-! ## A244111.P14152006168921239075

`∩[A049092(n+1), A390099(n+1)]`
-/

namespace A244111.P14152006168921239075
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049092 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390099 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A244111.P14152006168921239075

/-! ## A244111.P6081162463301562113

`∩[A049092(n+1), A104280(n+1)]`
-/

namespace A244111.P6081162463301562113
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049092 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104280 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A244111.P6081162463301562113

/-! ## A244111.P16089036666959868934

`∩[A006254(n+1), A049092(n+1)]`
-/

namespace A244111.P16089036666959868934
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006254 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049092 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A244111.P16089036666959868934

/-! ## A244111.P3471957085946339289

`∩[A049092(n+1), A111333(n+1)]`
-/

namespace A244111.P3471957085946339289
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049092 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111333 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A244111.P3471957085946339289

/-! ## A244111.P13784538701908610575

`A006530(xor(3, p?[2*A145199(n+1)+1]))`
-/

namespace A244111.P13784538701908610575
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A145199 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (Int.xor 3 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))).toNat

end

end A244111.P13784538701908610575

/-! ## A244111.P944061169155808177

`∩[A005382(n+1), A072284(n+1)]`
-/

namespace A244111.P944061169155808177
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005382 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072284 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A244111.P944061169155808177

/-! ## A244111.P11228410888754754595

`∩[A005382(n+1), A049197(n+1)]`
-/

namespace A244111.P11228410888754754595
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005382 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049197 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A244111.P11228410888754754595

/-! ## A244111.P7912805482646205050

`∩[A005382(n+1), A162902(n+1)]`
-/

namespace A244111.P7912805482646205050
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005382 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162902 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A244111.P7912805482646205050

/-! ## A244111.P15507519431571069785

`∩[A005382(n+1), A226386(n+1)]`
-/

namespace A244111.P15507519431571069785
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005382 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226386 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A244111.P15507519431571069785

/-! ## A244111.P4176303832735165141

`∩[A005382(n+1), A049195(n+1)]`
-/

namespace A244111.P4176303832735165141
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005382 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049195 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A244111.P4176303832735165141

/-! ## A244111.P8059948578105165863

`p?[A289627(A005382(n+3))]`
-/

namespace A244111.P8059948578105165863
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289627 (A005382 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A244111.P8059948578105165863

/-! ## A244111.P9860874405398885182

`ceil(p?[A005408(A145199(n+1))]/2)`
-/

namespace A244111.P9860874405398885182
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A145199 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ) / 2⌉

end

end A244111.P9860874405398885182

/-!
# A244112: Reverse digit count of n in decimal representation.

The programs for A244112, there is no canonical definition to state claims against.
-/

/-! ## A244112.P1180072233240028641

`A045918(A004186(n))`
-/

namespace A244112.P1180072233240028641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045918 (A004186 n).toNat

end

end A244112.P1180072233240028641

/-! ## A244112.P5907079820015567483

`A045918(A108782(n)+n)`
-/

namespace A244112.P5907079820015567483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045918 (A108782 n + (n : ℤ)).toNat

end

end A244112.P5907079820015567483

/-! ## A244112.P8765558483508100623

`A097601(A004186(n))+A047842(n)`
-/

namespace A244112.P8765558483508100623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097601 (A004186 n).toNat + A047842 n

end

end A244112.P8765558483508100623

/-! ## A244112.P10217511254186595142

`A045918(A151949(n)+A004185(n))`
-/

namespace A244112.P10217511254186595142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045918 (A151949 n + A004185 n).toNat

end

end A244112.P10217511254186595142

/-! ## A244112.P16628055419584238713

`A045918(A052008(n)-A004185(n))`
-/

namespace A244112.P16628055419584238713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045918 (A052008 n - A004185 n).toNat

end

end A244112.P16628055419584238713

/-!
# A244114: Prime lucky numbers that are palindromic in base 2.

The programs for A244114, there is no canonical definition to state claims against.
-/

/-! ## A244114.P7642590411881618022

`∩[A006995(n+1), A031157(n+1)]`
-/

namespace A244114.P7642590411881618022
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006995 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031157 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A244114.P7642590411881618022

/-! ## A244114.P14727510232945370586

`∩[A016041(n+1), A031157(n+1)]`
-/

namespace A244114.P14727510232945370586
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016041 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031157 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A244114.P14727510232945370586

/-! ## A244114.P14270629436199942344

`∩[A031157(n+1), A044918(n+1)]`
-/

namespace A244114.P14270629436199942344
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031157 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044918 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A244114.P14270629436199942344

/-! ## A244114.P15566015592225044691

`∩[A031157(n+1), A163410(n+1)]`
-/

namespace A244114.P15566015592225044691
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031157 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163410 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A244114.P15566015592225044691

/-! ## A244114.P5746104409960869457

`∩[A031157(n+1), A180204(n+1)]`
-/

namespace A244114.P5746104409960869457
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031157 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180204 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A244114.P5746104409960869457

/-!
# A244116: Triangle read by rows: coefficients T(n,k) of a binomial decomposition of 1 as Sum_{k=0..n} T(n,k)*binomial(n,k).

The programs for A244116, there is no canonical definition to state claims against.
-/

/-! ## A244116.P6227776955062542947

`A244117(n)/A007318(n)`
-/

namespace A244116.P6227776955062542947
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A244117 n : ℚ) / (A007318 n : ℚ)

end

end A244116.P6227776955062542947

/-! ## A244116.P12258590044974382433

`A244117(n)/A091918(n)`
-/

namespace A244116.P12258590044974382433
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A244117 n : ℚ) / (A091918 n : ℚ)

end

end A244116.P12258590044974382433

/-! ## A244116.P1204628240227837823

`A244117(n)/A132749(n)`
-/

namespace A244116.P1204628240227837823
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A244117 n : ℚ) / (A132749 n : ℚ)

end

end A244116.P1204628240227837823

/-! ## A244116.P9421176285819004234

`A244117(n)/A135227(n)`
-/

namespace A244116.P9421176285819004234
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A244117 n : ℚ) / (A135227 n : ℚ)

end

end A244116.P9421176285819004234

/-! ## A244116.P1837933662455752896

`A244117(n)/A183154(n)`
-/

namespace A244116.P1837933662455752896
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A244117 n : ℚ) / (A183154 n : ℚ)

end

end A244116.P1837933662455752896

/-! ## A244116.P16017044189700175212

`A244117(n)/abs(A130595(n))`
-/

namespace A244116.P16017044189700175212
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A244117 n : ℚ) / (|A130595 n| : ℚ)

end

end A244116.P16017044189700175212

/-! ## A244116.P7257663634803889955

`A244117(n)/sqrt(A008459(n))`
-/

namespace A244116.P7257663634803889955
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A244117 n : ℝ) / Real.sqrt (A008459 n : ℝ)

end

end A244116.P7257663634803889955

/-!
# A244117: Triangle read by rows: terms of a binomial decomposition of 1 as Sum(k=0..n)T(n,k).

The programs for A244117, there is no canonical definition to state claims against.
-/

/-! ## A244117.P5186815278995221669

`A007318(n)*A244116(n)`
-/

namespace A244117.P5186815278995221669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A244116 n

end

end A244117.P5186815278995221669

/-! ## A244117.P803470554824029368

`A091918(n)*A244116(n)`
-/

namespace A244117.P803470554824029368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091918 n * A244116 n

end

end A244117.P803470554824029368

/-! ## A244117.P2103265878676693939

`A132749(n)*A244116(n)`
-/

namespace A244117.P2103265878676693939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132749 n * A244116 n

end

end A244117.P2103265878676693939

/-! ## A244117.P10147634499269378584

`A135227(n)*A244116(n)`
-/

namespace A244117.P10147634499269378584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135227 n * A244116 n

end

end A244117.P10147634499269378584

/-! ## A244117.P2487389218320391852

`A183154(n)*A244116(n)`
-/

namespace A244117.P2487389218320391852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183154 n * A244116 n

end

end A244117.P2487389218320391852

/-! ## A244117.P611652394448544621

`A206735(n)*A244116(n)`
-/

namespace A244117.P611652394448544621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206735 n * A244116 n

end

end A244117.P611652394448544621

/-! ## A244117.P11289929842735249440

`abs(A130595(n))*A244116(n)`
-/

namespace A244117.P11289929842735249440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A130595 n| * A244116 n

end

end A244117.P11289929842735249440

/-! ## A244117.P4651930375956731841

`sqrt(A008459(n))*A244116(n)`
-/

namespace A244117.P4651930375956731841
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A008459 n : ℝ) * (A244116 n : ℝ)

end

end A244117.P4651930375956731841

/-! ## A244117.P17059121142536797053

`Δ[A102363(n)]*A244116(n)`
-/

namespace A244117.P17059121142536797053
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102363 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A244116 n

end

end A244117.P17059121142536797053

/-! ## A244117.P15280230294040608818

`A028326(n)/2*A244116(n)`
-/

namespace A244117.P15280230294040608818
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028326 n : ℚ) / 2 * (A244116 n : ℚ)

end

end A244117.P15280230294040608818

/-! ## A244117.P17674941058951026610

`A074909(A083920(n))*A244116(n)`
-/

namespace A244117.P17674941058951026610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074909 (A083920 n).toNat * A244116 n

end

end A244117.P17674941058951026610

/-! ## A244117.P5613752407968464342

`A014682(A028326(n))*A244116(n)`
-/

namespace A244117.P5613752407968464342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A028326 n).toNat * A244116 n

end

end A244117.P5613752407968464342

/-! ## A244117.P3716593986372154151

`A008619(A109128(n))*A244116(n)`
-/

namespace A244117.P3716593986372154151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A109128 n).toNat * A244116 n

end

end A244117.P3716593986372154151

/-!
# A244118: Triangle read by rows: coefficients T(n,k) of a binomial decomposition of 1 as Sum_{k=0..n} T(n,k)*binomial(n,k).

The programs for A244118, there is no canonical definition to state claims against.
-/

/-! ## A244118.P2646970911579149348

`A244132(∑[A035214(n)])/A002260(n+1)`
-/

namespace A244118.P2646970911579149348
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035214 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A244132 (∑ j ∈ Finset.range (n + 1), f1 j).toNat : ℚ) / (A002260 (n + 1) : ℚ)

end

end A244118.P2646970911579149348

/-! ## A244118.P17660869933743092581

`A244119(n)/A007318(n)`
-/

namespace A244118.P17660869933743092581
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A244119 n : ℚ) / (A007318 n : ℚ)

end

end A244118.P17660869933743092581

/-! ## A244118.P4236874401083510974

`A244119(n)/A091918(n)`
-/

namespace A244118.P4236874401083510974
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A244119 n : ℚ) / (A091918 n : ℚ)

end

end A244118.P4236874401083510974

/-! ## A244118.P1230401876722367624

`A244119(n)/A132749(n)`
-/

namespace A244118.P1230401876722367624
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A244119 n : ℚ) / (A132749 n : ℚ)

end

end A244118.P1230401876722367624

/-! ## A244118.P8620906158717158891

`A244119(n)/A135227(n)`
-/

namespace A244118.P8620906158717158891
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A244119 n : ℚ) / (A135227 n : ℚ)

end

end A244118.P8620906158717158891

/-! ## A244118.P12126193271574002098

`A244119(n)/A183154(n)`
-/

namespace A244118.P12126193271574002098
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A244119 n : ℚ) / (A183154 n : ℚ)

end

end A244118.P12126193271574002098

/-! ## A244118.P11628770716638497338

`A244119(n)/Δ[A102363(n)]`
-/

namespace A244118.P11628770716638497338
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102363 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A244119 n : ℚ) / (f1 (n + 1) - f1 n : ℚ)

end

end A244118.P11628770716638497338

/-!
# A244119: Triangle read by rows: terms of a binomial decomposition of 1 as Sum(k=0..n)T(n,k).

The programs for A244119, there is no canonical definition to state claims against.
-/

/-! ## A244119.P9985561494788630770

`A007318(n)*A244118(n)`
-/

namespace A244119.P9985561494788630770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A244118 n

end

end A244119.P9985561494788630770

/-! ## A244119.P4608001345069324254

`A091918(n)*A244118(n)`
-/

namespace A244119.P4608001345069324254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091918 n * A244118 n

end

end A244119.P4608001345069324254

/-! ## A244119.P73278740044693162

`A132749(n)*A244118(n)`
-/

namespace A244119.P73278740044693162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132749 n * A244118 n

end

end A244119.P73278740044693162

/-! ## A244119.P14447667256769190418

`A135227(n)*A244118(n)`
-/

namespace A244119.P14447667256769190418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135227 n * A244118 n

end

end A244119.P14447667256769190418

/-! ## A244119.P13788833175425875996

`A183154(n)*A244118(n)`
-/

namespace A244119.P13788833175425875996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183154 n * A244118 n

end

end A244119.P13788833175425875996

/-! ## A244119.P17556143085215787538

`A206735(n)*A244118(n)`
-/

namespace A244119.P17556143085215787538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206735 n * A244118 n

end

end A244119.P17556143085215787538

/-! ## A244119.P17171603967374923440

`A244132(∑[A035214(n)])/A002260(n+1)*A007318(n)`
-/

namespace A244119.P17171603967374923440
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035214 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A244132 (∑ j ∈ Finset.range (n + 1), f1 j).toNat : ℚ) / (A002260 (n + 1) : ℚ) * (A007318 n : ℚ)

end

end A244119.P17171603967374923440

/-! ## A244119.P10716731110203430095

`A033999(A003056(n))*A161628(n)`
-/

namespace A244119.P10716731110203430095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A003056 n).toNat * A161628 n

end

end A244119.P10716731110203430095

/-!
# A244120: Triangle read by rows: coefficients T(n,k) of a binomial decomposition of n^n as Sum(k=0..n)T(n,k)*binomial(n,k).

The programs for A244120, there is no canonical definition to state claims against.
-/

/-! ## A244120.P3649864679683381112

`A244121(n)/A007318(n)`
-/

namespace A244120.P3649864679683381112
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A244121 n : ℚ) / (A007318 n : ℚ)

end

end A244120.P3649864679683381112

/-! ## A244120.P3015203216698565182

`A244121(n)/A091918(n)`
-/

namespace A244120.P3015203216698565182
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A244121 n : ℚ) / (A091918 n : ℚ)

end

end A244120.P3015203216698565182

/-! ## A244120.P10101305010354324927

`A244121(n)/A132749(n)`
-/

namespace A244120.P10101305010354324927
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A244121 n : ℚ) / (A132749 n : ℚ)

end

end A244120.P10101305010354324927

/-! ## A244120.P8156505429415689482

`A244121(n)/A135227(n)`
-/

namespace A244120.P8156505429415689482
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A244121 n : ℚ) / (A135227 n : ℚ)

end

end A244120.P8156505429415689482

/-! ## A244120.P18043415283570395431

`A244121(n)/A183154(n)`
-/

namespace A244120.P18043415283570395431
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A244121 n : ℚ) / (A183154 n : ℚ)

end

end A244120.P18043415283570395431

/-! ## A244120.P4704814358468297971

`A244121(n)/Δ[A102363(n)]`
-/

namespace A244120.P4704814358468297971
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102363 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A244121 n : ℚ) / (f1 (n + 1) - f1 n : ℚ)

end

end A244120.P4704814358468297971

/-! ## A244120.P17389832918627354778

`2/A028326(n)*A244121(n)`
-/

namespace A244120.P17389832918627354778
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 / (A028326 n : ℚ) * (A244121 n : ℚ)

end

end A244120.P17389832918627354778

/-! ## A244120.P16689761092567807198

`A244121(n)/A014682(A028326(n))`
-/

namespace A244120.P16689761092567807198
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A244121 n : ℚ) / (A014682 (A028326 n).toNat : ℚ)

end

end A244120.P16689761092567807198

/-!
# A244121: Triangle read by rows: terms T(n,k) of a binomial decomposition of n^n as Sum(k=0..n)T(n,k).

The programs for A244121, there is no canonical definition to state claims against.
-/

/-! ## A244121.P769671470526977484

`A007318(n)*A244120(n)`
-/

namespace A244121.P769671470526977484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A244120 n

end

end A244121.P769671470526977484

/-! ## A244121.P15973475171192174115

`A091918(n)*A244120(n)`
-/

namespace A244121.P15973475171192174115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091918 n * A244120 n

end

end A244121.P15973475171192174115

/-! ## A244121.P3498084040979089373

`A132749(n)*A244120(n)`
-/

namespace A244121.P3498084040979089373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132749 n * A244120 n

end

end A244121.P3498084040979089373

/-! ## A244121.P15598699321130587933

`A135227(n)*A244120(n)`
-/

namespace A244121.P15598699321130587933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135227 n * A244120 n

end

end A244121.P15598699321130587933

/-! ## A244121.P4701262083461301899

`A183154(n)*A244120(n)`
-/

namespace A244121.P4701262083461301899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183154 n * A244120 n

end

end A244121.P4701262083461301899

/-! ## A244121.P7291138713376635582

`A206735(n)*A244120(n)`
-/

namespace A244121.P7291138713376635582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206735 n * A244120 n

end

end A244121.P7291138713376635582

/-! ## A244121.P5903038788008298650

`Δ[A102363(n)]*A244120(n)`
-/

namespace A244121.P5903038788008298650
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102363 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A244120 n

end

end A244121.P5903038788008298650

/-! ## A244121.P15002441370341826936

`A028326(n)/2*A244120(n)`
-/

namespace A244121.P15002441370341826936
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028326 n : ℚ) / 2 * (A244120 n : ℚ)

end

end A244121.P15002441370341826936

/-!
# A244122: Triangle read by rows: coefficients T(n,k) of a binomial decomposition of n^n as Sum(k=0..n)T(n,k)*binomial(n,k).

The programs for A244122, there is no canonical definition to state claims against.
-/

/-! ## A244122.P6047972339701140805

`A244123(n)/A007318(n)`
-/

namespace A244122.P6047972339701140805
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A244123 n : ℚ) / (A007318 n : ℚ)

end

end A244122.P6047972339701140805

/-! ## A244122.P17039832157101493227

`A244123(n)/A091918(n)`
-/

namespace A244122.P17039832157101493227
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A244123 n : ℚ) / (A091918 n : ℚ)

end

end A244122.P17039832157101493227

/-! ## A244122.P3803651766761311285

`A244123(n)/A132749(n)`
-/

namespace A244122.P3803651766761311285
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A244123 n : ℚ) / (A132749 n : ℚ)

end

end A244122.P3803651766761311285

/-! ## A244122.P6945204997366768606

`A244123(n)/A135227(n)`
-/

namespace A244122.P6945204997366768606
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A244123 n : ℚ) / (A135227 n : ℚ)

end

end A244122.P6945204997366768606

/-! ## A244122.P9852794305860547169

`A244123(n)/A183154(n)`
-/

namespace A244122.P9852794305860547169
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A244123 n : ℚ) / (A183154 n : ℚ)

end

end A244122.P9852794305860547169

/-! ## A244122.P5362577662158235186

`A244123(n)/abs(A108086(n))`
-/

namespace A244122.P5362577662158235186
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A244123 n : ℚ) / (|A108086 n| : ℚ)

end

end A244122.P5362577662158235186

/-! ## A244122.P13775437950862229675

`A244123(n)/sqrt(A008459(n))`
-/

namespace A244122.P13775437950862229675
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A244123 n : ℝ) / Real.sqrt (A008459 n : ℝ)

end

end A244122.P13775437950862229675

/-! ## A244122.P9837337796901535893

`2/A028326(n)*A244123(n)`
-/

namespace A244122.P9837337796901535893
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 / (A028326 n : ℚ) * (A244123 n : ℚ)

end

end A244122.P9837337796901535893

/-! ## A244122.P8424854985616334493

`A244123(n)/gcd(A206735(n), A244123(n+1))`
-/

namespace A244122.P8424854985616334493
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A244123 n : ℚ) / (Int.gcd (A206735 n) (A244123 (n + 1)) : ℚ)

end

end A244122.P8424854985616334493

/-! ## A244122.P9361063260304865506

`A244123(n)/A078898(A028326(n))`
-/

namespace A244122.P9361063260304865506
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A244123 n : ℚ) / (A078898 (A028326 n).toNat : ℚ)

end

end A244122.P9361063260304865506

/-! ## A244122.P13810286301735955206

`A244123(n)/A003602(A109128(n))`
-/

namespace A244122.P13810286301735955206
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A244123 n : ℚ) / (A003602 (A109128 n).toNat : ℚ)

end

end A244122.P13810286301735955206

/-!
# A244123: Triangle read by rows: terms T(n,k) of a binomial decomposition of n^n as Sum(k=0..n)T(n,k).

The programs for A244123, there is no canonical definition to state claims against.
-/

/-! ## A244123.P13193762791156399669

`A007318(n)*A244122(n)`
-/

namespace A244123.P13193762791156399669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A244122 n

end

end A244123.P13193762791156399669

/-! ## A244123.P10601929359873131533

`A091918(n)*A244122(n)`
-/

namespace A244123.P10601929359873131533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091918 n * A244122 n

end

end A244123.P10601929359873131533

/-! ## A244123.P14224578129685436653

`A132749(n)*A244122(n)`
-/

namespace A244123.P14224578129685436653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132749 n * A244122 n

end

end A244123.P14224578129685436653

/-! ## A244123.P15277833532159178921

`A135227(n)*A244122(n)`
-/

namespace A244123.P15277833532159178921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135227 n * A244122 n

end

end A244123.P15277833532159178921

/-! ## A244123.P3617965767894451096

`A183154(n)*A244122(n)`
-/

namespace A244123.P3617965767894451096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183154 n * A244122 n

end

end A244123.P3617965767894451096

/-! ## A244123.P13930509586633073326

`A206735(n)*A244122(n)`
-/

namespace A244123.P13930509586633073326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206735 n * A244122 n

end

end A244123.P13930509586633073326

/-! ## A244123.P7099961293439006067

`A008619(A132731(n))*A244122(n)`
-/

namespace A244123.P7099961293439006067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A132731 n).toNat * A244122 n

end

end A244123.P7099961293439006067

/-! ## A244123.P4897081900494058599

`A032742(A124927(n))*A244122(n)`
-/

namespace A244123.P4897081900494058599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (A124927 n).toNat * A244122 n

end

end A244123.P4897081900494058599

/-!
# A244124: Triangle read by rows: coefficients T(n,k) of a binomial decomposition of 2^n-1 as Sum(k=0..n)T(n,k)*binomial(n,k).

The programs for A244124, there is no canonical definition to state claims against.
-/

/-! ## A244124.P3604002326611655852

`A244125(n)/A007318(n)`
-/

namespace A244124.P3604002326611655852
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A244125 n : ℚ) / (A007318 n : ℚ)

end

end A244124.P3604002326611655852

/-! ## A244124.P16774467719316328017

`A244125(n)/A091918(n)`
-/

namespace A244124.P16774467719316328017
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A244125 n : ℚ) / (A091918 n : ℚ)

end

end A244124.P16774467719316328017

/-! ## A244124.P14795305036830502277

`A244125(n)/A132749(n)`
-/

namespace A244124.P14795305036830502277
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A244125 n : ℚ) / (A132749 n : ℚ)

end

end A244124.P14795305036830502277

/-! ## A244124.P14509650763876615587

`A244125(n)/A135227(n)`
-/

namespace A244124.P14509650763876615587
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A244125 n : ℚ) / (A135227 n : ℚ)

end

end A244124.P14509650763876615587

/-! ## A244124.P17455106591684313723

`A244125(n)/A183154(n)`
-/

namespace A244124.P17455106591684313723
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A244125 n : ℚ) / (A183154 n : ℚ)

end

end A244124.P17455106591684313723

/-! ## A244124.P15682897311465471351

`A244125(n)/abs(A130595(n))`
-/

namespace A244124.P15682897311465471351
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A244125 n : ℚ) / (|A130595 n| : ℚ)

end

end A244124.P15682897311465471351

/-! ## A244124.P748703371604060805

`2/A028326(n)*A244125(n)`
-/

namespace A244124.P748703371604060805
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 / (A028326 n : ℚ) * (A244125 n : ℚ)

end

end A244124.P748703371604060805

/-! ## A244124.P4353567641240732864

`A244125(n)/A001057(A109128(n))`
-/

namespace A244124.P4353567641240732864
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A244125 n : ℚ) / (A001057 (A109128 n).toNat : ℚ)

end

end A244124.P4353567641240732864

/-! ## A244124.P9904284944747410043

`A244125(n)/A142150(A028326(n))`
-/

namespace A244124.P9904284944747410043
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A244125 n : ℚ) / (A142150 (A028326 n).toNat : ℚ)

end

end A244124.P9904284944747410043

/-!
# A244125: Triangle read by rows: terms T(n,k) of a binomial decomposition of 2^n-1 as Sum(k=0..n)T(n,k).

The programs for A244125, there is no canonical definition to state claims against.
-/

/-! ## A244125.P9290545590812658693

`A007318(n)*A244124(n)`
-/

namespace A244125.P9290545590812658693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A244124 n

end

end A244125.P9290545590812658693

/-! ## A244125.P6263885894017372523

`A091918(n)*A244124(n)`
-/

namespace A244125.P6263885894017372523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091918 n * A244124 n

end

end A244125.P6263885894017372523

/-! ## A244125.P12424925306493697791

`A132749(n)*A244124(n)`
-/

namespace A244125.P12424925306493697791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132749 n * A244124 n

end

end A244125.P12424925306493697791

/-! ## A244125.P10972187873215968637

`A135227(n)*A244124(n)`
-/

namespace A244125.P10972187873215968637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135227 n * A244124 n

end

end A244125.P10972187873215968637

/-! ## A244125.P5165945704817429735

`A183154(n)*A244124(n)`
-/

namespace A244125.P5165945704817429735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183154 n * A244124 n

end

end A244125.P5165945704817429735

/-! ## A244125.P6487108658889359745

`A206735(n)*A244124(n)`
-/

namespace A244125.P6487108658889359745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206735 n * A244124 n

end

end A244125.P6487108658889359745

/-! ## A244125.P1618229917265546624

`sqrt(A008459(n))*A244124(n)`
-/

namespace A244125.P1618229917265546624
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A008459 n : ℝ) * (A244124 n : ℝ)

end

end A244125.P1618229917265546624

/-! ## A244125.P13806354260849662301

`Δ[A102363(n)]*A244124(n)`
-/

namespace A244125.P13806354260849662301
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102363 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A244124 n

end

end A244125.P13806354260849662301

/-! ## A244125.P1089159719620803061

`(A014473(n)+1)*A244124(n)`
-/

namespace A244125.P1089159719620803061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A014473 n + 1) * A244124 n

end

end A244125.P1089159719620803061

/-! ## A244125.P7306439972315449523

`A124927(n)/2*A244124(n)`
-/

namespace A244125.P7306439972315449523
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A124927 n : ℚ) / 2 * (A244124 n : ℚ)

end

end A244125.P7306439972315449523

/-! ## A244125.P17069278033675840712

`A134058(n)/2*A244124(n)`
-/

namespace A244125.P17069278033675840712
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A134058 n : ℚ) / 2 * (A244124 n : ℚ)

end

end A244125.P17069278033675840712

/-! ## A244125.P14764656615486789097

`A074909(A083920(n))*A244124(n)`
-/

namespace A244125.P14764656615486789097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074909 (A083920 n).toNat * A244124 n

end

end A244125.P14764656615486789097

/-! ## A244125.P7717187912082883650

`(A124928(n)-A134058(n))*A244124(n)`
-/

namespace A244125.P7717187912082883650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A124928 n - A134058 n) * A244124 n

end

end A244125.P7717187912082883650

/-! ## A244125.P3070652105286716872

`A014682(A124927(n))*A244124(n)`
-/

namespace A244125.P3070652105286716872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A124927 n).toNat * A244124 n

end

end A244125.P3070652105286716872

/-! ## A244125.P14322986265814958282

`A014682(A134058(n))*A244124(n)`
-/

namespace A244125.P14322986265814958282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A134058 n).toNat * A244124 n

end

end A244125.P14322986265814958282

/-!
# A244126: Triangle read by rows: coefficients T(n,k) of a binomial decomposition of 2^n-1 as Sum(k=0..n)T(n,k)*binomial(n,k).

The programs for A244126, there is no canonical definition to state claims against.
-/

/-! ## A244126.P2800584857779633131

`A244127(n)/A007318(n)`
-/

namespace A244126.P2800584857779633131
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A244127 n : ℚ) / (A007318 n : ℚ)

end

end A244126.P2800584857779633131

/-! ## A244126.P13240363013002427085

`A244127(n)/A091918(n)`
-/

namespace A244126.P13240363013002427085
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A244127 n : ℚ) / (A091918 n : ℚ)

end

end A244126.P13240363013002427085

/-! ## A244126.P14210830676345467002

`A244127(n)/A132749(n)`
-/

namespace A244126.P14210830676345467002
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A244127 n : ℚ) / (A132749 n : ℚ)

end

end A244126.P14210830676345467002

/-! ## A244126.P4287072872085081014

`A244127(n)/A135227(n)`
-/

namespace A244126.P4287072872085081014
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A244127 n : ℚ) / (A135227 n : ℚ)

end

end A244126.P4287072872085081014

/-! ## A244126.P16684618483527790539

`A244127(n)/A183154(n)`
-/

namespace A244126.P16684618483527790539
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A244127 n : ℚ) / (A183154 n : ℚ)

end

end A244126.P16684618483527790539

/-! ## A244126.P17231871191128432105

`A244127(n)/Δ[A102363(n)]`
-/

namespace A244126.P17231871191128432105
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102363 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A244127 n : ℚ) / (f1 (n + 1) - f1 n : ℚ)

end

end A244126.P17231871191128432105

/-! ## A244126.P16641128602049532786

`A244127(n)/(A014473(n)+1)`
-/

namespace A244126.P16641128602049532786
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A244127 n : ℚ) / (A014473 n + 1 : ℚ)

end

end A244126.P16641128602049532786

/-! ## A244126.P10531802468030071979

`A244127(n)/A183158(n)`
-/

namespace A244126.P10531802468030071979
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A244127 n : ℚ) / (A183158 n : ℚ)

end

end A244126.P10531802468030071979

/-!
# A244127: Triangle read by rows: terms T(n,k) of a binomial decomposition of 2^n-1 as Sum(k=0..n)T(n,k).

The programs for A244127, there is no canonical definition to state claims against.
-/

/-! ## A244127.P17539446161430839602

`A007318(n)*A244126(n)`
-/

namespace A244127.P17539446161430839602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A244126 n

end

end A244127.P17539446161430839602

/-! ## A244127.P10477155064132211509

`A091918(n)*A244126(n)`
-/

namespace A244127.P10477155064132211509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091918 n * A244126 n

end

end A244127.P10477155064132211509

/-! ## A244127.P17381714087214099826

`A132749(n)*A244126(n)`
-/

namespace A244127.P17381714087214099826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132749 n * A244126 n

end

end A244127.P17381714087214099826

/-! ## A244127.P8949551049873406672

`A135227(n)*A244126(n)`
-/

namespace A244127.P8949551049873406672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135227 n * A244126 n

end

end A244127.P8949551049873406672

/-! ## A244127.P4721565930779755580

`A183154(n)*A244126(n)`
-/

namespace A244127.P4721565930779755580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183154 n * A244126 n

end

end A244127.P4721565930779755580

/-! ## A244127.P12860769244882968413

`A206735(n)*A244126(n)`
-/

namespace A244127.P12860769244882968413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206735 n * A244126 n

end

end A244127.P12860769244882968413

/-! ## A244127.P9155435017162899171

`Δ[A102363(n)]*A244126(n)`
-/

namespace A244127.P9155435017162899171
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102363 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A244126 n

end

end A244127.P9155435017162899171

/-! ## A244127.P13530716597968655730

`A124927(n)/2*A244126(n)`
-/

namespace A244127.P13530716597968655730
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A124927 n : ℚ) / 2 * (A244126 n : ℚ)

end

end A244127.P13530716597968655730

/-! ## A244127.P9857901139605690314

`A004525(A124927(n))*A244126(n)`
-/

namespace A244127.P9857901139605690314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A124927 n).toNat * A244126 n

end

end A244127.P9857901139605690314

/-! ## A244127.P15822989704635614987

`A183158(n)*A244126(n)`
-/

namespace A244127.P15822989704635614987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183158 n * A244126 n

end

end A244127.P15822989704635614987

/-!
# A244128: Triangle read by rows: coefficients T(n,k) of a binomial decomposition of 0^(n-1) as Sum(k=0..n)T(n,k)*binomial(n,k).

The programs for A244128, there is no canonical definition to state claims against.
-/

/-! ## A244128.P6486933500513512292

`A244129(n+1)/A007318(n+1)`
-/

namespace A244128.P6486933500513512292
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A244129 (n + 1) : ℚ) / (A007318 (n + 1) : ℚ)

end

end A244128.P6486933500513512292

/-! ## A244128.P17545561520278941796

`A244129(n+1)/A091918(n+1)`
-/

namespace A244128.P17545561520278941796
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A244129 (n + 1) : ℚ) / (A091918 (n + 1) : ℚ)

end

end A244128.P17545561520278941796

/-! ## A244128.P2743616112127778103

`A244129(n+1)/A132749(n+1)`
-/

namespace A244128.P2743616112127778103
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A244129 (n + 1) : ℚ) / (A132749 (n + 1) : ℚ)

end

end A244128.P2743616112127778103

/-! ## A244128.P6526786642284961348

`A244129(n+1)/A135227(n+1)`
-/

namespace A244128.P6526786642284961348
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A244129 (n + 1) : ℚ) / (A135227 (n + 1) : ℚ)

end

end A244128.P6526786642284961348

/-! ## A244128.P9900001131344502653

`A244129(n+1)/abs(A108086(n+1))`
-/

namespace A244128.P9900001131344502653
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A244129 (n + 1) : ℚ) / (|A108086 (n + 1)| : ℚ)

end

end A244128.P9900001131344502653

/-! ## A244128.P15564758458395139100

`A244129(n+1)/sqrt(A008459(n+1))`
-/

namespace A244128.P15564758458395139100
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A244129 (n + 1) : ℝ) / Real.sqrt (A008459 (n + 1) : ℝ)

end

end A244128.P15564758458395139100

/-! ## A244128.P14494851635680369795

`A244129(n+1)/A135278(A083920(n))`
-/

namespace A244128.P14494851635680369795
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A244129 (n + 1) : ℚ) / (A135278 (A083920 n).toNat : ℚ)

end

end A244128.P14494851635680369795

/-! ## A244128.P18372016070344645519

`A244129(n+1)/A074909(A083920(n+1))`
-/

namespace A244128.P18372016070344645519
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A244129 (n + 1) : ℚ) / (A074909 (A083920 (n + 1)).toNat : ℚ)

end

end A244128.P18372016070344645519

/-! ## A244128.P4410070125462742230

`A244129(n+1)/gcd(A199011(n), A244137(n))`
-/

namespace A244128.P4410070125462742230
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A244129 (n + 1) : ℚ) / (Int.gcd (A199011 n) (A244137 n) : ℚ)

end

end A244128.P4410070125462742230

/-! ## A244128.P4342373945649935924

`A244129(n+1)/A008619(A109128(n+1))`
-/

namespace A244128.P4342373945649935924
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A244129 (n + 1) : ℚ) / (A008619 (A109128 (n + 1)).toNat : ℚ)

end

end A244128.P4342373945649935924

/-!
# A244129: Triangle read by rows: terms of a binomial decomposition of 0^(n-1) as Sum(k=0..n)T(n,k).

The programs for A244129, there is no canonical definition to state claims against.
-/

/-! ## A244129.P8236035359395177473

`A199011(n)*A244128(n+1)`
-/

namespace A244129.P8236035359395177473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199011 n * A244128 (n + 1)

end

end A244129.P8236035359395177473

/-! ## A244129.P8773829074283661305

`A007318(n+1)*A244128(n+1)`
-/

namespace A244129.P8773829074283661305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (n + 1) * A244128 (n + 1)

end

end A244129.P8773829074283661305

/-! ## A244129.P10683709915502825726

`A132749(n+1)*A244128(n+1)`
-/

namespace A244129.P10683709915502825726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132749 (n + 1) * A244128 (n + 1)

end

end A244129.P10683709915502825726

/-! ## A244129.P6998253822188350663

`A135227(n+1)*A244128(n+1)`
-/

namespace A244129.P6998253822188350663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135227 (n + 1) * A244128 (n + 1)

end

end A244129.P6998253822188350663

/-! ## A244129.P9100202591641983441

`A206735(n+1)*A244128(n+1)`
-/

namespace A244129.P9100202591641983441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206735 (n + 1) * A244128 (n + 1)

end

end A244129.P9100202591641983441

/-! ## A244129.P17191654950576000581

`sqrt(A008459(n+1))*A244128(n+1)`
-/

namespace A244129.P17191654950576000581
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A008459 (n + 1) : ℝ) * (A244128 (n + 1) : ℝ)

end

end A244129.P17191654950576000581

/-! ## A244129.P5268258406976236259

`Δ[A102363(n+1)]*A244128(n+1)`
-/

namespace A244129.P5268258406976236259
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102363 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A244128 (n + 1)

end

end A244129.P5268258406976236259

/-! ## A244129.P16334693019141058120

`A135278(A083920(n))*A244128(n+1)`
-/

namespace A244129.P16334693019141058120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135278 (A083920 n).toNat * A244128 (n + 1)

end

end A244129.P16334693019141058120

/-! ## A244129.P11960039422177474095

`A074909(A083920(n+1))*A244128(n+1)`
-/

namespace A244129.P11960039422177474095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074909 (A083920 (n + 1)).toNat * A244128 (n + 1)

end

end A244129.P11960039422177474095

/-! ## A244129.P2481489702386807719

`A008619(A109128(n+1))*A244128(n+1)`
-/

namespace A244129.P2481489702386807719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A109128 (n + 1)).toNat * A244128 (n + 1)

end

end A244129.P2481489702386807719

/-!
# A244130: Triangle read by rows: coefficients T(n,k) of a binomial decomposition of n as Sum_{k=0..n} T(n,k)*binomial(n,k).

The programs for A244130, there is no canonical definition to state claims against.
-/

/-! ## A244130.P6804255708370205514

`A244138(A080036(n))/A002260(n+1)`
-/

namespace A244130.P6804255708370205514
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A244138 (A080036 n).toNat : ℚ) / (A002260 (n + 1) : ℚ)

end

end A244130.P6804255708370205514

/-! ## A244130.P6592184571858440849

`A244131(n)/A007318(n)`
-/

namespace A244130.P6592184571858440849
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A244131 n : ℚ) / (A007318 n : ℚ)

end

end A244130.P6592184571858440849

/-! ## A244130.P10057027386354572594

`A244131(n)/A091918(n)`
-/

namespace A244130.P10057027386354572594
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A244131 n : ℚ) / (A091918 n : ℚ)

end

end A244130.P10057027386354572594

/-! ## A244130.P15774929489829503425

`A244131(n)/A132749(n)`
-/

namespace A244130.P15774929489829503425
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A244131 n : ℚ) / (A132749 n : ℚ)

end

end A244130.P15774929489829503425

/-! ## A244130.P1503178114936266961

`A244131(n)/A135227(n)`
-/

namespace A244130.P1503178114936266961
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A244131 n : ℚ) / (A135227 n : ℚ)

end

end A244130.P1503178114936266961

/-! ## A244130.P312021009145445549

`A244131(n)/A183154(n)`
-/

namespace A244130.P312021009145445549
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A244131 n : ℚ) / (A183154 n : ℚ)

end

end A244130.P312021009145445549

/-! ## A244130.P13001246362800068697

`2/A124927(n)*A244131(n)`
-/

namespace A244130.P13001246362800068697
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 / (A124927 n : ℚ) * (A244131 n : ℚ)

end

end A244130.P13001246362800068697

/-! ## A244130.P5208001982738453973

`A244131(n)/A032742(A124927(n))`
-/

namespace A244130.P5208001982738453973
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A244131 n : ℚ) / (A032742 (A124927 n).toNat : ℚ)

end

end A244130.P5208001982738453973

/-!
# A244131: Triangle read by rows: terms T(n,k) of a binomial decomposition of n as Sum(k=0..n)T(n,k).

The programs for A244131, there is no canonical definition to state claims against.
-/

/-! ## A244131.P13995093743085666364

`A007318(n)*A244130(n)`
-/

namespace A244131.P13995093743085666364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A244130 n

end

end A244131.P13995093743085666364

/-! ## A244131.P16374603312488405421

`A091918(n)*A244130(n)`
-/

namespace A244131.P16374603312488405421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091918 n * A244130 n

end

end A244131.P16374603312488405421

/-! ## A244131.P5202127342274630121

`A132749(n)*A244130(n)`
-/

namespace A244131.P5202127342274630121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132749 n * A244130 n

end

end A244131.P5202127342274630121

/-! ## A244131.P10161073142275553182

`A135227(n)*A244130(n)`
-/

namespace A244131.P10161073142275553182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135227 n * A244130 n

end

end A244131.P10161073142275553182

/-! ## A244131.P2334281922999506503

`A183154(n)*A244130(n)`
-/

namespace A244131.P2334281922999506503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183154 n * A244130 n

end

end A244131.P2334281922999506503

/-! ## A244131.P13714684765211736431

`A206735(n)*A244130(n)`
-/

namespace A244131.P13714684765211736431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206735 n * A244130 n

end

end A244131.P13714684765211736431

/-! ## A244131.P11153848249015779387

`A028326(n)/2*A244130(n)`
-/

namespace A244131.P11153848249015779387
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028326 n : ℚ) / 2 * (A244130 n : ℚ)

end

end A244131.P11153848249015779387

/-! ## A244131.P16540416842056946901

`A124928(n)/3*A244130(n)`
-/

namespace A244131.P16540416842056946901
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A124928 n : ℚ) / 3 * (A244130 n : ℚ)

end

end A244131.P16540416842056946901

/-! ## A244131.P6867952514311240657

`A007318(n)/A002260(n+1)*A244138(A080036(n))`
-/

namespace A244131.P6867952514311240657
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007318 n : ℚ) / (A002260 (n + 1) : ℚ) * (A244138 (A080036 n).toNat : ℚ)

end

end A244131.P6867952514311240657

/-! ## A244131.P5078485847001684865

`A004525(A028326(n))*A244130(n)`
-/

namespace A244131.P5078485847001684865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A028326 n).toNat * A244130 n

end

end A244131.P5078485847001684865

/-!
# A244132: Triangle read by rows: coefficients T(n,k) of a binomial decomposition of n as Sum(k=0..n)T(n,k)*binomial(n,k).

The programs for A244132, there is no canonical definition to state claims against.
-/

/-! ## A244132.P9493010059890638439

`A244133(n)/A007318(n)`
-/

namespace A244132.P9493010059890638439
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A244133 n : ℚ) / (A007318 n : ℚ)

end

end A244132.P9493010059890638439

/-! ## A244132.P8165963707659866745

`A244133(n)/A091918(n)`
-/

namespace A244132.P8165963707659866745
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A244133 n : ℚ) / (A091918 n : ℚ)

end

end A244132.P8165963707659866745

/-! ## A244132.P6309116352289112848

`A244133(n)/A132749(n)`
-/

namespace A244132.P6309116352289112848
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A244133 n : ℚ) / (A132749 n : ℚ)

end

end A244132.P6309116352289112848

/-! ## A244132.P14475897288794330823

`A244133(n)/A135227(n)`
-/

namespace A244132.P14475897288794330823
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A244133 n : ℚ) / (A135227 n : ℚ)

end

end A244132.P14475897288794330823

/-! ## A244132.P15259776726623670081

`A244133(n)/A183154(n)`
-/

namespace A244132.P15259776726623670081
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A244133 n : ℚ) / (A183154 n : ℚ)

end

end A244132.P15259776726623670081

/-! ## A244132.P10942463010374904275

`A244133(n)/abs(A130595(n))`
-/

namespace A244132.P10942463010374904275
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A244133 n : ℚ) / (|A130595 n| : ℚ)

end

end A244132.P10942463010374904275

/-! ## A244132.P5642558229564021860

`A244133(n)/Δ[A102363(n)]`
-/

namespace A244132.P5642558229564021860
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102363 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A244133 n : ℚ) / (f1 (n + 1) - f1 n : ℚ)

end

end A244132.P5642558229564021860

/-! ## A244132.P12413577319187346946

`A244133(n)/A183158(n)`
-/

namespace A244132.P12413577319187346946
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A244133 n : ℚ) / (A183158 n : ℚ)

end

end A244132.P12413577319187346946

/-!
# A244133: Triangle read by rows: terms T(n,k) of a binomial decomposition of n as Sum(k=0..n)T(n,k).

The programs for A244133, there is no canonical definition to state claims against.
-/

/-! ## A244133.P6611776221480164242

`A007318(n)*A244132(n)`
-/

namespace A244133.P6611776221480164242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A244132 n

end

end A244133.P6611776221480164242

/-! ## A244133.P15862423547037774887

`A091918(n)*A244132(n)`
-/

namespace A244133.P15862423547037774887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091918 n * A244132 n

end

end A244133.P15862423547037774887

/-! ## A244133.P15256101601375426873

`A132749(n)*A244132(n)`
-/

namespace A244133.P15256101601375426873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132749 n * A244132 n

end

end A244133.P15256101601375426873

/-! ## A244133.P15434427513769102020

`A135227(n)*A244132(n)`
-/

namespace A244133.P15434427513769102020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135227 n * A244132 n

end

end A244133.P15434427513769102020

/-! ## A244133.P16165586953261577707

`A183154(n)*A244132(n)`
-/

namespace A244133.P16165586953261577707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183154 n * A244132 n

end

end A244133.P16165586953261577707

/-! ## A244133.P10483015941389708664

`A206735(n)*A244132(n)`
-/

namespace A244133.P10483015941389708664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206735 n * A244132 n

end

end A244133.P10483015941389708664

/-! ## A244133.P12137637193114244468

`Δ[A102363(n)]*A244132(n)`
-/

namespace A244133.P12137637193114244468
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102363 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A244132 n

end

end A244133.P12137637193114244468

/-! ## A244133.P11229431802823333482

`(A014473(n)+1)*A244132(n)`
-/

namespace A244133.P11229431802823333482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A014473 n + 1) * A244132 n

end

end A244133.P11229431802823333482

/-! ## A244133.P6736487088768544607

`A124927(n)/2*A244132(n)`
-/

namespace A244133.P6736487088768544607
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A124927 n : ℚ) / 2 * (A244132 n : ℚ)

end

end A244133.P6736487088768544607

/-! ## A244133.P4302919238158696915

`A014682(A124927(n))*A244132(n)`
-/

namespace A244133.P4302919238158696915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A124927 n).toNat * A244132 n

end

end A244133.P4302919238158696915

/-! ## A244133.P18432156235015861625

`A008619(A132731(n))*A244132(n)`
-/

namespace A244133.P18432156235015861625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A132731 n).toNat * A244132 n

end

end A244133.P18432156235015861625

/-!
# A244134: Triangle read by rows: coefficients T(n,k) of a binomial decomposition of n^n as Sum(k=0..n)T(n,k)*binomial(n,k).

The programs for A244134, there is no canonical definition to state claims against.
-/

/-! ## A244134.P4680118002052506853

`A244135(n)/A007318(n)`
-/

namespace A244134.P4680118002052506853
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A244135 n : ℚ) / (A007318 n : ℚ)

end

end A244134.P4680118002052506853

/-! ## A244134.P13662238403757294731

`A244135(n)/A091918(n)`
-/

namespace A244134.P13662238403757294731
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A244135 n : ℚ) / (A091918 n : ℚ)

end

end A244134.P13662238403757294731

/-! ## A244134.P15057568217261460024

`A244135(n)/A132749(n)`
-/

namespace A244134.P15057568217261460024
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A244135 n : ℚ) / (A132749 n : ℚ)

end

end A244134.P15057568217261460024

/-! ## A244134.P7919400202071041971

`A244135(n)/A135227(n)`
-/

namespace A244134.P7919400202071041971
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A244135 n : ℚ) / (A135227 n : ℚ)

end

end A244134.P7919400202071041971

/-! ## A244134.P4554877169700558988

`A244135(n)/A183154(n)`
-/

namespace A244134.P4554877169700558988
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A244135 n : ℚ) / (A183154 n : ℚ)

end

end A244134.P4554877169700558988

/-! ## A244134.P7204197267075094093

`A244135(n)/Δ[A102363(n)]`
-/

namespace A244134.P7204197267075094093
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102363 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A244135 n : ℚ) / (f1 (n + 1) - f1 n : ℚ)

end

end A244134.P7204197267075094093

/-! ## A244134.P17729978891167839904

`2/A028326(n)*A244135(n)`
-/

namespace A244134.P17729978891167839904
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 / (A028326 n : ℚ) * (A244135 n : ℚ)

end

end A244134.P17729978891167839904

/-! ## A244134.P11919778682555868277

`A244135(n)/A004525(A028326(n))`
-/

namespace A244134.P11919778682555868277
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A244135 n : ℚ) / (A004525 (A028326 n).toNat : ℚ)

end

end A244134.P11919778682555868277

/-! ## A244134.P8821250640238624135

`A244135(n)/A004525(A124927(n))`
-/

namespace A244134.P8821250640238624135
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A244135 n : ℚ) / (A004525 (A124927 n).toNat : ℚ)

end

end A244134.P8821250640238624135

/-!
# A244135: Triangle read by rows: terms T(n,k) of a binomial decomposition of n^n as Sum(k=0..n)T(n,k).

The programs for A244135, there is no canonical definition to state claims against.
-/

/-! ## A244135.P5624258313648238933

`A007318(n)*A244134(n)`
-/

namespace A244135.P5624258313648238933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A244134 n

end

end A244135.P5624258313648238933

/-! ## A244135.P4086907699286975708

`A091918(n)*A244134(n)`
-/

namespace A244135.P4086907699286975708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091918 n * A244134 n

end

end A244135.P4086907699286975708

/-! ## A244135.P9106620801175327712

`A132749(n)*A244134(n)`
-/

namespace A244135.P9106620801175327712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132749 n * A244134 n

end

end A244135.P9106620801175327712

/-! ## A244135.P6916479509841951802

`A135227(n)*A244134(n)`
-/

namespace A244135.P6916479509841951802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135227 n * A244134 n

end

end A244135.P6916479509841951802

/-! ## A244135.P3975649026142038349

`A183154(n)*A244134(n)`
-/

namespace A244135.P3975649026142038349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183154 n * A244134 n

end

end A244135.P3975649026142038349

/-! ## A244135.P17691443835158827527

`A206735(n)*A244134(n)`
-/

namespace A244135.P17691443835158827527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206735 n * A244134 n

end

end A244135.P17691443835158827527

/-! ## A244135.P714764100904668612

`Δ[A102363(n)]*A244134(n)`
-/

namespace A244135.P714764100904668612
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102363 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A244134 n

end

end A244135.P714764100904668612

/-! ## A244135.P10713892163752082572

`A074909(A083920(n))*A244134(n)`
-/

namespace A244135.P10713892163752082572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074909 (A083920 n).toNat * A244134 n

end

end A244135.P10713892163752082572

/-! ## A244135.P6290811087708148291

`A008619(A132731(n))*A244134(n)`
-/

namespace A244135.P6290811087708148291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A132731 n).toNat * A244134 n

end

end A244135.P6290811087708148291

/-!
# A244136: Triangle read by rows: coefficients T(n,k) of a binomial decomposition of n^n as Sum(k=0..n)T(n,k)*binomial(n,k).

The programs for A244136, there is no canonical definition to state claims against.
-/

/-! ## A244136.P15346448007317779942

`A244137(n)/A007318(n)`
-/

namespace A244136.P15346448007317779942
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A244137 n : ℚ) / (A007318 n : ℚ)

end

end A244136.P15346448007317779942

/-! ## A244136.P5028907291066627019

`A244137(n)/A091918(n)`
-/

namespace A244136.P5028907291066627019
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A244137 n : ℚ) / (A091918 n : ℚ)

end

end A244136.P5028907291066627019

/-! ## A244136.P8761431814004556195

`A244137(n)/A132749(n)`
-/

namespace A244136.P8761431814004556195
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A244137 n : ℚ) / (A132749 n : ℚ)

end

end A244136.P8761431814004556195

/-! ## A244136.P16761442650341894576

`A244137(n)/A135227(n)`
-/

namespace A244136.P16761442650341894576
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A244137 n : ℚ) / (A135227 n : ℚ)

end

end A244136.P16761442650341894576

/-! ## A244136.P15251241329175629963

`A244137(n)/A183154(n)`
-/

namespace A244136.P15251241329175629963
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A244137 n : ℚ) / (A183154 n : ℚ)

end

end A244136.P15251241329175629963

/-! ## A244136.P3382362927222877216

`A244137(n)/sqrt(A008459(n))`
-/

namespace A244136.P3382362927222877216
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A244137 n : ℝ) / Real.sqrt (A008459 n : ℝ)

end

end A244136.P3382362927222877216

/-! ## A244136.P3771261046668332570

`A244137(n)/Δ[A102363(n)]`
-/

namespace A244136.P3771261046668332570
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102363 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A244137 n : ℚ) / (f1 (n + 1) - f1 n : ℚ)

end

end A244136.P3771261046668332570

/-! ## A244136.P12469951949157204153

`A244137(n)/A074909(A083920(n))`
-/

namespace A244136.P12469951949157204153
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A244137 n : ℚ) / (A074909 (A083920 n).toNat : ℚ)

end

end A244136.P12469951949157204153

/-! ## A244136.P14872689546253433140

`A244137(n)/A004525(A124927(n))`
-/

namespace A244136.P14872689546253433140
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A244137 n : ℚ) / (A004525 (A124927 n).toNat : ℚ)

end

end A244136.P14872689546253433140

/-! ## A244136.P3577700497222776708

`A244137(n)/A004525(A134058(n))`
-/

namespace A244136.P3577700497222776708
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A244137 n : ℚ) / (A004525 (A134058 n).toNat : ℚ)

end

end A244136.P3577700497222776708

/-!
# A244137: Triangle read by rows: terms T(n,k) of a binomial decomposition of n^n as Sum(k=0..n)T(n,k).

The programs for A244137, there is no canonical definition to state claims against.
-/

/-! ## A244137.P2686224726216085762

`A007318(n)*A244136(n)`
-/

namespace A244137.P2686224726216085762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A244136 n

end

end A244137.P2686224726216085762

/-! ## A244137.P2878143790625536656

`A091918(n)*A244136(n)`
-/

namespace A244137.P2878143790625536656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091918 n * A244136 n

end

end A244137.P2878143790625536656

/-! ## A244137.P13826352684633832752

`A132749(n)*A244136(n)`
-/

namespace A244137.P13826352684633832752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132749 n * A244136 n

end

end A244137.P13826352684633832752

/-! ## A244137.P9729808409751713311

`A135227(n)*A244136(n)`
-/

namespace A244137.P9729808409751713311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135227 n * A244136 n

end

end A244137.P9729808409751713311

/-! ## A244137.P2833402861661789643

`A183154(n)*A244136(n)`
-/

namespace A244137.P2833402861661789643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183154 n * A244136 n

end

end A244137.P2833402861661789643

/-! ## A244137.P14616768003075442251

`A206735(n)*A244136(n)`
-/

namespace A244137.P14616768003075442251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206735 n * A244136 n

end

end A244137.P14616768003075442251

/-! ## A244137.P7707473934080534647

`abs(A130595(n)*A244136(n))`
-/

namespace A244137.P7707473934080534647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A130595 n * A244136 n|

end

end A244137.P7707473934080534647

/-! ## A244137.P9559889462600955866

`(A285118(n)+A285116(n))*A244136(n)`
-/

namespace A244137.P9559889462600955866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A285118 n + A285116 n) * A244136 n

end

end A244137.P9559889462600955866

/-! ## A244137.P3141226669662566680

`A026741(A134058(n))*A244136(n)`
-/

namespace A244137.P3141226669662566680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A134058 n).toNat * A244136 n

end

end A244137.P3141226669662566680

/-!
# A244138: Triangle read by rows: coefficients T(n,k) of a binomial decomposition of n*(n-1) as Sum(k=0..n)T(n,k)*binomial(n,k).

The programs for A244138, there is no canonical definition to state claims against.
-/

/-! ## A244138.P15047468018985063682

`A244130(n+1-gcd(2, ∑[A059778(n)]))`
-/

namespace A244138.P15047468018985063682
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059778 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244130 (n + 1 - Int.gcd 2 (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A244138.P15047468018985063682

/-! ## A244138.P5086797032690736187

`A244130(n+1-A000034(A037126(n+1)))`
-/

namespace A244138.P5086797032690736187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244130 ((n + 1 : ℤ) - A000034 (A037126 (n + 1)).toNat).toNat

end

end A244138.P5086797032690736187

/-! ## A244138.P10618077366599504551

`A244139(n)/A007318(n)`
-/

namespace A244138.P10618077366599504551
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A244139 n : ℚ) / (A007318 n : ℚ)

end

end A244138.P10618077366599504551

/-! ## A244138.P406359117554344414

`A244139(n)/A091918(n)`
-/

namespace A244138.P406359117554344414
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A244139 n : ℚ) / (A091918 n : ℚ)

end

end A244138.P406359117554344414

/-! ## A244138.P7158439918286444439

`A244139(n)/A132749(n)`
-/

namespace A244138.P7158439918286444439
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A244139 n : ℚ) / (A132749 n : ℚ)

end

end A244138.P7158439918286444439

/-! ## A244138.P7800297508304995790

`A244139(n)/A135227(n)`
-/

namespace A244138.P7800297508304995790
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A244139 n : ℚ) / (A135227 n : ℚ)

end

end A244138.P7800297508304995790

/-! ## A244138.P9457757380001334127

`A244139(n)/A183154(n)`
-/

namespace A244138.P9457757380001334127
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A244139 n : ℚ) / (A183154 n : ℚ)

end

end A244138.P9457757380001334127

/-! ## A244138.P11009961067566054872

`2/A028326(n)*A244139(n)`
-/

namespace A244138.P11009961067566054872
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 / (A028326 n : ℚ) * (A244139 n : ℚ)

end

end A244138.P11009961067566054872

/-! ## A244138.P11998618801930798888

`A244139(n)/A110654(A028326(n))`
-/

namespace A244138.P11998618801930798888
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A244139 n : ℚ) / (A110654 (A028326 n).toNat : ℚ)

end

end A244138.P11998618801930798888

/-! ## A244138.P2706200955452434579

`A244139(n)/A008619(A132752(n))`
-/

namespace A244138.P2706200955452434579
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A244139 n : ℚ) / (A008619 (A132752 n).toNat : ℚ)

end

end A244138.P2706200955452434579

/-!
# A244139: Triangle read by rows: terms T(n,k) of a binomial decomposition of n*(n-1) as Sum(k=0..n)T(n,k).

The programs for A244139, there is no canonical definition to state claims against.
-/

/-! ## A244139.P7174787140506722351

`A007318(n)*A244138(n)`
-/

namespace A244139.P7174787140506722351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A244138 n

end

end A244139.P7174787140506722351

/-! ## A244139.P2121911003828177231

`A091918(n)*A244138(n)`
-/

namespace A244139.P2121911003828177231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091918 n * A244138 n

end

end A244139.P2121911003828177231

/-! ## A244139.P16159361182896956562

`A132749(n)*A244138(n)`
-/

namespace A244139.P16159361182896956562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132749 n * A244138 n

end

end A244139.P16159361182896956562

/-! ## A244139.P887498071624223255

`A135227(n)*A244138(n)`
-/

namespace A244139.P887498071624223255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135227 n * A244138 n

end

end A244139.P887498071624223255

/-! ## A244139.P1446123832312324434

`A183154(n)*A244138(n)`
-/

namespace A244139.P1446123832312324434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183154 n * A244138 n

end

end A244139.P1446123832312324434

/-! ## A244139.P15830002079544006487

`A206735(n)*A244138(n)`
-/

namespace A244139.P15830002079544006487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206735 n * A244138 n

end

end A244139.P15830002079544006487

/-! ## A244139.P8470646567227873535

`sqrt(A008459(n))*A244138(n)`
-/

namespace A244139.P8470646567227873535
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A008459 n : ℝ) * (A244138 n : ℝ)

end

end A244139.P8470646567227873535

/-! ## A244139.P16967401090018891873

`A028326(n)/2*A244138(n)`
-/

namespace A244139.P16967401090018891873
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028326 n : ℚ) / 2 * (A244138 n : ℚ)

end

end A244139.P16967401090018891873

/-! ## A244139.P18249007569785799047

`A014682(A028326(n))*A244138(n)`
-/

namespace A244139.P18249007569785799047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A028326 n).toNat * A244138 n

end

end A244139.P18249007569785799047

/-! ## A244139.P4907295878983431371

`A183158(n)*A244138(n)`
-/

namespace A244139.P4907295878983431371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183158 n * A244138 n

end

end A244139.P4907295878983431371

/-!
# A244140: Triangle read by rows: coefficients T(n,k) of a binomial decomposition of n*(-1)^n as Sum(k=0..n)T(n,k)*binomial(n,k).

The programs for A244140, there is no canonical definition to state claims against.
-/

/-! ## A244140.P14486263185849996673

`A244141(n)/A007318(n)`
-/

namespace A244140.P14486263185849996673
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A244141 n : ℚ) / (A007318 n : ℚ)

end

end A244140.P14486263185849996673

/-! ## A244140.P4721616708225876591

`A244141(n)/A091918(n)`
-/

namespace A244140.P4721616708225876591
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A244141 n : ℚ) / (A091918 n : ℚ)

end

end A244140.P4721616708225876591

/-! ## A244140.P13427483886145136953

`A244141(n)/A132749(n)`
-/

namespace A244140.P13427483886145136953
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A244141 n : ℚ) / (A132749 n : ℚ)

end

end A244140.P13427483886145136953

/-! ## A244140.P7124456733776849856

`A244141(n)/A135227(n)`
-/

namespace A244140.P7124456733776849856
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A244141 n : ℚ) / (A135227 n : ℚ)

end

end A244140.P7124456733776849856

/-! ## A244140.P10815126852567573530

`A244141(n)/A183154(n)`
-/

namespace A244140.P10815126852567573530
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A244141 n : ℚ) / (A183154 n : ℚ)

end

end A244140.P10815126852567573530

/-! ## A244140.P15404675588983121223

`A244141(n)/abs(A130595(n))`
-/

namespace A244140.P15404675588983121223
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A244141 n : ℚ) / (|A130595 n| : ℚ)

end

end A244140.P15404675588983121223

/-! ## A244140.P4295089772673684986

`A244141(n)/sqrt(A008459(n))`
-/

namespace A244140.P4295089772673684986
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A244141 n : ℝ) / Real.sqrt (A008459 n : ℝ)

end

end A244140.P4295089772673684986

/-! ## A244140.P5746953424797758356

`A244141(n)/Δ[A102363(n)]`
-/

namespace A244140.P5746953424797758356
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102363 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A244141 n : ℚ) / (f1 (n + 1) - f1 n : ℚ)

end

end A244140.P5746953424797758356

/-! ## A244140.P10553199104149259732

`2/A028326(n)*A244141(n)`
-/

namespace A244140.P10553199104149259732
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 / (A028326 n : ℚ) * (A244141 n : ℚ)

end

end A244140.P10553199104149259732

/-! ## A244140.P3845887877777135110

`2/A124927(n)*A244141(n)`
-/

namespace A244140.P3845887877777135110
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 / (A124927 n : ℚ) * (A244141 n : ℚ)

end

end A244140.P3845887877777135110

/-! ## A244140.P12487598182980186049

`A244141(n)/A074909(A083920(n))`
-/

namespace A244140.P12487598182980186049
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A244141 n : ℚ) / (A074909 (A083920 n).toNat : ℚ)

end

end A244140.P12487598182980186049

/-! ## A244140.P8441890510927882318

`A244141(n)/A014682(A124927(n))`
-/

namespace A244140.P8441890510927882318
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A244141 n : ℚ) / (A014682 (A124927 n).toNat : ℚ)

end

end A244140.P8441890510927882318

/-! ## A244140.P14864234504796759529

`A244141(n)/A004525(A028326(n))`
-/

namespace A244140.P14864234504796759529
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A244141 n : ℚ) / (A004525 (A028326 n).toNat : ℚ)

end

end A244140.P14864234504796759529

/-!
# A244141: Triangle read by rows: terms T(n,k) of a binomial decomposition of n*(-1)^n as Sum(k=0..n)T(n,k).

The programs for A244141, there is no canonical definition to state claims against.
-/

/-! ## A244141.P16850338617802036512

`A007318(n)*A244140(n)`
-/

namespace A244141.P16850338617802036512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A244140 n

end

end A244141.P16850338617802036512

/-! ## A244141.P18290262896885912492

`A091918(n)*A244140(n)`
-/

namespace A244141.P18290262896885912492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091918 n * A244140 n

end

end A244141.P18290262896885912492

/-! ## A244141.P1596406273718358076

`A132749(n)*A244140(n)`
-/

namespace A244141.P1596406273718358076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132749 n * A244140 n

end

end A244141.P1596406273718358076

/-! ## A244141.P4176875681198236139

`A135227(n)*A244140(n)`
-/

namespace A244141.P4176875681198236139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135227 n * A244140 n

end

end A244141.P4176875681198236139

/-! ## A244141.P9137890469519709065

`A183154(n)*A244140(n)`
-/

namespace A244141.P9137890469519709065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183154 n * A244140 n

end

end A244141.P9137890469519709065

/-! ## A244141.P15747740845162898198

`A206735(n)*A244140(n)`
-/

namespace A244141.P15747740845162898198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206735 n * A244140 n

end

end A244141.P15747740845162898198

/-! ## A244141.P3164286884899540724

`Δ[A102363(n)]*A244140(n)`
-/

namespace A244141.P3164286884899540724
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102363 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A244140 n

end

end A244141.P3164286884899540724

/-! ## A244141.P9805090201835571593

`A028326(n)/2*A244140(n)`
-/

namespace A244141.P9805090201835571593
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028326 n : ℚ) / 2 * (A244140 n : ℚ)

end

end A244141.P9805090201835571593

/-! ## A244141.P7475822411315948058

`A110654(A028326(n))*A244140(n)`
-/

namespace A244141.P7475822411315948058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A028326 n).toNat * A244140 n

end

end A244141.P7475822411315948058

/-! ## A244141.P9959259230213162369

`A183158(n)*A244140(n)`
-/

namespace A244141.P9959259230213162369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183158 n * A244140 n

end

end A244141.P9959259230213162369

/-!
# A244142: Triangle read by rows: coefficients T(n,k) of a binomial decomposition of n as Sum(k=0..n)T(n,k)*binomial(n,k).

The programs for A244142, there is no canonical definition to state claims against.
-/

/-! ## A244142.P4194019818116625398

`A244143(n)/A007318(n)`
-/

namespace A244142.P4194019818116625398
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A244143 n : ℚ) / (A007318 n : ℚ)

end

end A244142.P4194019818116625398

/-! ## A244142.P7684183014972054835

`A244143(n)/A091918(n)`
-/

namespace A244142.P7684183014972054835
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A244143 n : ℚ) / (A091918 n : ℚ)

end

end A244142.P7684183014972054835

/-! ## A244142.P7293995808217557536

`A244143(n)/A132749(n)`
-/

namespace A244142.P7293995808217557536
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A244143 n : ℚ) / (A132749 n : ℚ)

end

end A244142.P7293995808217557536

/-! ## A244142.P17695666512918251595

`A244143(n)/A135227(n)`
-/

namespace A244142.P17695666512918251595
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A244143 n : ℚ) / (A135227 n : ℚ)

end

end A244142.P17695666512918251595

/-! ## A244142.P3760359788903324583

`A244143(n)/A183154(n)`
-/

namespace A244142.P3760359788903324583
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A244143 n : ℚ) / (A183154 n : ℚ)

end

end A244142.P3760359788903324583

/-! ## A244142.P13456670409701470966

`A244143(n)/sqrt(A008459(n))`
-/

namespace A244142.P13456670409701470966
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A244143 n : ℝ) / Real.sqrt (A008459 n : ℝ)

end

end A244142.P13456670409701470966

/-! ## A244142.P13344625662646576170

`A244143(n)/Δ[A102363(n)]`
-/

namespace A244142.P13344625662646576170
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102363 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A244143 n : ℚ) / (f1 (n + 1) - f1 n : ℚ)

end

end A244142.P13344625662646576170

/-! ## A244142.P16112239023909120370

`A244143(n)/A183158(n)`
-/

namespace A244142.P16112239023909120370
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A244143 n : ℚ) / (A183158 n : ℚ)

end

end A244142.P16112239023909120370

/-!
# A244143: Triangle read by rows: terms T(n,k) of a binomial decomposition of n as Sum(k=0..n)T(n,k).

The programs for A244143, there is no canonical definition to state claims against.
-/

/-! ## A244143.P17520314936576458655

`A007318(n)*A244142(n)`
-/

namespace A244143.P17520314936576458655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A244142 n

end

end A244143.P17520314936576458655

/-! ## A244143.P15360792656450023075

`A091918(n)*A244142(n)`
-/

namespace A244143.P15360792656450023075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091918 n * A244142 n

end

end A244143.P15360792656450023075

/-! ## A244143.P8884606708416975492

`A132749(n)*A244142(n)`
-/

namespace A244143.P8884606708416975492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132749 n * A244142 n

end

end A244143.P8884606708416975492

/-! ## A244143.P16833151173799692733

`A135227(n)*A244142(n)`
-/

namespace A244143.P16833151173799692733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135227 n * A244142 n

end

end A244143.P16833151173799692733

/-! ## A244143.P8110774937704811285

`A183154(n)*A244142(n)`
-/

namespace A244143.P8110774937704811285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183154 n * A244142 n

end

end A244143.P8110774937704811285

/-! ## A244143.P607330656149375332

`A206735(n)*A244142(n)`
-/

namespace A244143.P607330656149375332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206735 n * A244142 n

end

end A244143.P607330656149375332

/-! ## A244143.P4885044306979926060

`sqrt(A008459(n))*A244142(n)`
-/

namespace A244143.P4885044306979926060
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A008459 n : ℝ) * (A244142 n : ℝ)

end

end A244143.P4885044306979926060

/-! ## A244143.P16026608614303901835

`Δ[A102363(n)]*A244142(n)`
-/

namespace A244143.P16026608614303901835
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102363 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A244142 n

end

end A244143.P16026608614303901835

/-! ## A244143.P10236242353936858631

`A124927(n)/2*A244142(n)`
-/

namespace A244143.P10236242353936858631
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A124927 n : ℚ) / 2 * (A244142 n : ℚ)

end

end A244143.P10236242353936858631

/-! ## A244143.P8553252925156620001

`A026741(A124927(n))*A244142(n)`
-/

namespace A244143.P8553252925156620001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A124927 n).toNat * A244142 n

end

end A244143.P8553252925156620001

/-!
# A244145: Number of positive integers k less than n such that the symmetric representation of sigma(k) is contiguous (shares a line border) with the symmetric representation of sigma(n).

The programs for A244145, there is no canonical definition to state claims against.
-/

/-! ## A244145.P6857334413991158238

`A369164(A130656(n+1))`
-/

namespace A244145.P6857334413991158238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369164 (A130656 (n + 1)).toNat

end

end A244145.P6857334413991158238

/-! ## A244145.P12002175856583312240

`A001221(∑[gcd(n, A146051(n+3))])`
-/

namespace A244145.P12002175856583312240
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A146051 (n + 3))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A244145.P12002175856583312240

/-! ## A244145.P13126842494811519880

`floor(A000203(n+1)/A156081(3*n+5))`
-/

namespace A244145.P13126842494811519880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000203 (n + 1) : ℚ) / (A156081 (3 * n + 5) : ℚ)⌋

end

end A244145.P13126842494811519880

/-! ## A244145.P17596267663889592918

`A001221(A000120(A054044(n+1))+n)`
-/

namespace A244145.P17596267663889592918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A000120 (A054044 (n + 1)).toNat + (n : ℤ)).toNat

end

end A244145.P17596267663889592918

/-! ## A244145.P16531033444286272037

`∑{p}[A000120(A054044(n+1))+n, A001222(#)]`
-/

namespace A244145.P16531033444286272037
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A054044 (n + 1)).toNat + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A001222 p

end

end A244145.P16531033444286272037

/-!
# A244146: Primes of the form x^2 + x*y + y^2 with x, y primes.

The programs for A244146, there is no canonical definition to state claims against.
-/

/-! ## A244146.P901273068651176620

`p?[A349986(n+1)]`
-/

namespace A244146.P901273068651176620
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349986 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A244146.P901273068651176620

/-! ## A244146.P14169416028673770493

`p?[record[A349986(A291769(n))]]`
-/

namespace A244146.P14169416028673770493
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349986 (A291769 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A244146.P14169416028673770493

/-! ## A244146.P6158856127124556810

`p?[record[A349986(A133310(n))]]`
-/

namespace A244146.P6158856127124556810
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349986 (A133310 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A244146.P6158856127124556810

/-! ## A244146.P11903853550647672096

`record[p?[A349986(A052938(n))]]`
-/

namespace A244146.P11903853550647672096
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349986 (A052938 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A244146.P11903853550647672096

/-! ## A244146.P14116104398444108070

`∩[A002476(n+1), A349986(n+1)]`
-/

namespace A244146.P14116104398444108070
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002476 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349986 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A244146.P14116104398444108070

/-! ## A244146.P4824423411069818433

`∩[A007645(n+1), A349986(n+1)]`
-/

namespace A244146.P4824423411069818433
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007645 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349986 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A244146.P4824423411069818433

/-! ## A244146.P5139609447184532838

`∩[A045331(n+1), A349986(n+1)]`
-/

namespace A244146.P5139609447184532838
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045331 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349986 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A244146.P5139609447184532838

/-! ## A244146.P17560429211694895340

`∩[A045375(n+1), A349986(n+1)]`
-/

namespace A244146.P17560429211694895340
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045375 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349986 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A244146.P17560429211694895340

/-! ## A244146.P6283117308764277313

`∩[A123365(n+1), A349986(n+1)]`
-/

namespace A244146.P6283117308764277313
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123365 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349986 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A244146.P6283117308764277313

/-! ## A244146.P2099750723854511846

`∩[A279815(n+1), A349986(n+1)]`
-/

namespace A244146.P2099750723854511846
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279815 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349986 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A244146.P2099750723854511846

/-! ## A244146.P6037505366615812078

`∩[A055664(n+1), A349986(n+1)]`
-/

namespace A244146.P6037505366615812078
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055664 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349986 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A244146.P6037505366615812078

/-! ## A244146.P7303261649076982181

`∩[A164318(n+1), A349986(n+1)]`
-/

namespace A244146.P7303261649076982181
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164318 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349986 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A244146.P7303261649076982181

/-! ## A244146.P3619948187344248756

`∩[A040116(n+1), A349986(n+1)]`
-/

namespace A244146.P3619948187344248756
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040116 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349986 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A244146.P3619948187344248756

/-! ## A244146.P3836786846673751730

`∩[A325143(n+1), A349986(n+1)]`
-/

namespace A244146.P3836786846673751730
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325143 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349986 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A244146.P3836786846673751730

/-! ## A244146.P11201942215437877481

`∩[A059500(n+1), A349986(n+1)]`
-/

namespace A244146.P11201942215437877481
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059500 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349986 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A244146.P11201942215437877481

/-! ## A244146.P6657948016393743704

`∩[A058501(n+1), A349986(n+1)]`
-/

namespace A244146.P6657948016393743704
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058501 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349986 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A244146.P6657948016393743704

/-! ## A244146.P3094355383020177462

`∩[A140557(n+1), A349986(n+1)]`
-/

namespace A244146.P3094355383020177462
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140557 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349986 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A244146.P3094355383020177462

/-! ## A244146.P13960544344278085469

`∩[A167464(n+1), A349986(n+1)]`
-/

namespace A244146.P13960544344278085469
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167464 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349986 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A244146.P13960544344278085469

/-! ## A244146.P13042870211330711528

`∩[A140562(n+1), A349986(n+1)]`
-/

namespace A244146.P13042870211330711528
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140562 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349986 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A244146.P13042870211330711528

/-! ## A244146.P8193098803570638898

`∩[A140563(n+1), A349986(n+1)]`
-/

namespace A244146.P8193098803570638898
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140563 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349986 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A244146.P8193098803570638898

/-!
# A244147: Number of hexagons (side length 1) that intersect the circumference of a circle of radius n centered at a lattice point.

The programs for A244147, there is no canonical definition to state claims against.
-/

/-! ## A244147.P12064248876465695103

`∑[A020639(A060996(n))+1]`
-/

namespace A244147.P12064248876465695103
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A060996 n).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A244147.P12064248876465695103

/-! ## A244147.P5218421318916415787

`∑[lcm(3, A001221(A057415(n)))]`
-/

namespace A244147.P5218421318916415787
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 3 (A001221 (A057415 (n + 13)).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A244147.P5218421318916415787

/-! ## A244147.P11051942993382516389

`lt[A100402(n), A073058(A308252(n+1))]`
-/

namespace A244147.P11051942993382516389
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100402 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073058 (A308252 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A244147.P11051942993382516389

/-! ## A244147.P18416547409023283232

`A008585(lt[A145876(n+1), A205840(n+1)])`
-/

namespace A244147.P18416547409023283232
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145876 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205840 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008585 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A244147.P18416547409023283232

/-! ## A244147.P3228054870689246578

`A008585(lt[A248324(n+4), A033205(3*n+1)])`
-/

namespace A244147.P3228054870689246578
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248324 (n + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033205 (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008585 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A244147.P3228054870689246578

/-!
# A244149: a(n) = 2*(n*denominator(((n-1)*(n^2)+2^(n+1)-4)/(2*n))-n)/n+1.

The programs for A244149, the canonical program `A244149.P42596727420393069` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A244149 has offset 1).

The definition of A244149 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A244149.P12463249606837840169

`2*A159353(n+1)-1`
-/

namespace A244149.P12463249606837840169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A159353 (n + 1) - 1

end

end A244149.P12463249606837840169

namespace A244149

/-- `2*A159353(n+1)-1` -/
def P12463249606837840169.Spec : Prop :=
  ∀ n, P12463249606837840169.a n = A244149 (n + 1)

end A244149

/-! ## A244149.P42596727420393069

`floor(Δ[n²]/A214606(n+1))`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A244149

/-- `floor(Δ[n²]/A214606(n+1))` -/
def P42596727420393069.Spec : Prop :=
  ∀ n, P42596727420393069.a n = A244149 (n + 1)

theorem P42596727420393069.correct : P42596727420393069.Spec := by
  intro n
  simp only [A244149, Nat.add_sub_cancel]

end A244149

/-! ## A244149.P9107688332314921176

`A004273(A159353(n+1))`
-/

namespace A244149.P9107688332314921176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A159353 (n + 1)).toNat

end

end A244149.P9107688332314921176

namespace A244149

/-- `A004273(A159353(n+1))` -/
def P9107688332314921176.Spec : Prop :=
  ∀ n, P9107688332314921176.a n = A244149 (n + 1)

end A244149

/-! ## A244149.P2120500919174191944

`A005408(A159353(n+1)-1)`
-/

namespace A244149.P2120500919174191944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A159353 (n + 1) - 1).toNat

end

end A244149.P2120500919174191944

namespace A244149

/-- `A005408(A159353(n+1)-1)` -/
def P2120500919174191944.Spec : Prop :=
  ∀ n, P2120500919174191944.a n = A244149 (n + 1)

end A244149

/-! ## A244149.P17652146354095867179

`A028310(A159353(n+1)+A159353(n+1)-1)`
-/

namespace A244149.P17652146354095867179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A159353 (n + 1) + (A159353 (n + 1) - 1)).toNat

end

end A244149.P17652146354095867179

namespace A244149

/-- `A028310(A159353(n+1)+A159353(n+1)-1)` -/
def P17652146354095867179.Spec : Prop :=
  ∀ n, P17652146354095867179.a n = A244149 (n + 1)

end A244149

/-! ## A244149.P5559947005619190300

`2*(n+1)/gcd(n+1, 1-∑[2^n])-1`
-/

namespace A244149.P5559947005619190300
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 * ((n + 1 : ℚ) / (Int.gcd (n + 1 : ℤ) (1 - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)) : ℚ)) - 1

end

end A244149.P5559947005619190300

namespace A244149

/-- `2*(n+1)/gcd(n+1, 1-∑[2^n])-1` -/
def P5559947005619190300.Spec : Prop :=
  ∀ n, P5559947005619190300.a n = (A244149 (n + 1) : ℚ)

end A244149

/-! ## A244149.P9449240232079945681

`A005408((n+1)/gcd(n+1, 1-∑[2^n])-1)`
-/

namespace A244149.P9449240232079945681
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (Int.gcd (n + 1 : ℤ) (1 - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)) : ℚ) - 1)).toNat

end

end A244149.P9449240232079945681

namespace A244149

/-- `A005408((n+1)/gcd(n+1, 1-∑[2^n])-1)` -/
def P9449240232079945681.Spec : Prop :=
  ∀ n, P9449240232079945681.a n = A244149 (n + 1)

end A244149

/-! ## A244149.P6956363490454941443

`A001650(A159353(n+1)²)`
-/

namespace A244149.P6956363490454941443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001650 (A159353 (n + 1) ^ 2).toNat

end

end A244149.P6956363490454941443

namespace A244149

/-- `A001650(A159353(n+1)²)` -/
def P6956363490454941443.Spec : Prop :=
  ∀ n, P6956363490454941443.a n = A244149 (n + 1)

end A244149

/-! ## A244149.P8189262649021491164

`A175019(A159353(n+1)²)`
-/

namespace A244149.P8189262649021491164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175019 (A159353 (n + 1) ^ 2).toNat

end

end A244149.P8189262649021491164

namespace A244149

/-- `A175019(A159353(n+1)²)` -/
def P8189262649021491164.Spec : Prop :=
  ∀ n, P8189262649021491164.a n = A244149 (n + 1)

end A244149

/-! ## A244149.P2183572384377795343

`A253580(A159353(n+1)²)`
-/

namespace A244149.P2183572384377795343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253580 (A159353 (n + 1) ^ 2).toNat

end

end A244149.P2183572384377795343

namespace A244149

/-- `A253580(A159353(n+1)²)` -/
def P2183572384377795343.Spec : Prop :=
  ∀ n, P2183572384377795343.a n = A244149 (n + 1)

end A244149

/-!
# A244151: 0-additive sequence: start with a(1) = 2; thereafter, a(n) = smallest number not already in sequence which is not the sum of any previous two terms.

The programs for A244151, the canonical program `A244151.P10576933062632127694` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A244151 has offset 1).

The definition of A244151 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A244151.P10576933062632127694

`a(n-1)+a(n-2)-a(n-3)` with `a(0)=2, a(1)=3, a(2)=4, a(3)=8, a(4)=9, a(5)=14`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A244151

/-- `a(n-1)+a(n-2)-a(n-3)` -/
def P10576933062632127694.Spec : Prop :=
  ∀ n, P10576933062632127694.a n = A244151 (n + 1)

theorem P10576933062632127694.correct : P10576933062632127694.Spec := by
  intro n
  simp only [A244151, Nat.add_sub_cancel]

end A244151

/-! ## A244151.P3900343812735218838

`a(n-2)+6` with `a(0)=2, a(1)=3, a(2)=4, a(3)=8, a(4)=9`
-/

namespace A244151.P3900343812735218838
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2, 3, 4, 8, 9] fun n a =>
  a (n - 2) + 6

end

end A244151.P3900343812735218838

namespace A244151

/-- `a(n-2)+6` -/
def P3900343812735218838.Spec : Prop :=
  ∀ n, (P3900343812735218838.a n : ℤ) = A244151 (n + 1)

end A244151

/-! ## A244151.P15633610833707071200

`∑[or(1, a(n-2))]` with `a(0)=2, a(1)=1, a(2)=1, a(3)=4`
-/

namespace A244151.P15633610833707071200
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 1, 1, 4] fun n f1 =>
  Nat.lor 1 (f1 (n - 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A244151.P15633610833707071200

namespace A244151

/-- `∑[or(1, a(n-2))]` -/
def P15633610833707071200.Spec : Prop :=
  ∀ n, (P15633610833707071200.a n : ℤ) = A244151 (n + 1)

end A244151

/-! ## A244151.P8623067634627489823

`lt[(n-3)*(n-2)%6, n]`
-/

namespace A244151.P8623067634627489823
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 3) * Int.tmod ((n : ℤ) - 2) 6

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A244151.P8623067634627489823

namespace A244151

/-- `lt[(n-3)*(n-2)%6, n]` -/
def P8623067634627489823.Spec : Prop :=
  ∀ n, (P8623067634627489823.a n : ℤ) = A244151 (n + 1)

end A244151

/-! ## A244151.P4430103995490238859

`∑[6-a(n-1)]` with `a(0)=2, a(1)=1, a(2)=1, a(3)=4, a(4)=1`
-/

namespace A244151.P4430103995490238859
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2, 1, 1, 4, 1] fun n f1 =>
  6 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A244151.P4430103995490238859

namespace A244151

/-- `∑[6-a(n-1)]` -/
def P4430103995490238859.Spec : Prop :=
  ∀ n, P4430103995490238859.a n = A244151 (n + 1)

end A244151

/-! ## A244151.P17066986741418694048

`comp[xor(4, n+1)-floor(xor(1, n+3)/4)]`
-/

namespace A244151.P17066986741418694048
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.xor 4 (n + 1) : ℤ) - ⌊(Nat.xor 1 (n + 3) : ℚ) / 4⌋

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A244151.P17066986741418694048

namespace A244151

/-- `comp[xor(4, n+1)-floor(xor(1, n+3)/4)]` -/
def P17066986741418694048.Spec : Prop :=
  ∀ n, (P17066986741418694048.a n : ℤ) = A244151 (n + 1)

end A244151

/-! ## A244151.P3257574383935750692

`A008574(∑[char[2*n+3]])+n+1`
-/

namespace A244151.P3257574383935750692
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 3

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 (∑ j ∈ Finset.range (n + 1), f1 j) + (n + 1 : ℤ)

end

end A244151.P3257574383935750692

namespace A244151

/-- `A008574(∑[char[2*n+3]])+n+1` -/
def P3257574383935750692.Spec : Prop :=
  ∀ n, P3257574383935750692.a n = A244151 (n + 1)

end A244151

/-! ## A244151.P9935652560032013590

`A113127(A065033(n))-1+n`
-/

namespace A244151.P9935652560032013590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113127 (A065033 n).toNat - 1 + (n : ℤ)

end

end A244151.P9935652560032013590

namespace A244151

/-- `A113127(A065033(n))-1+n` -/
def P9935652560032013590.Spec : Prop :=
  ∀ n, P9935652560032013590.a n = A244151 (n + 1)

end A244151

/-! ## A244151.P11453940957089514539

`A004280(2*A065033(n))+n`
-/

namespace A244151.P11453940957089514539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004280 (2 * A065033 n).toNat + (n : ℤ)

end

end A244151.P11453940957089514539

namespace A244151

/-- `A004280(2*A065033(n))+n` -/
def P11453940957089514539.Spec : Prop :=
  ∀ n, P11453940957089514539.a n = A244151 (n + 1)

end A244151

/-! ## A244151.P16042312642636447958

`eq[A329031(n+2), A329031(n)]`
-/

namespace A244151.P16042312642636447958
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329031 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329031 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A244151.P16042312642636447958

namespace A244151

/-- `eq[A329031(n+2), A329031(n)]` -/
def P16042312642636447958.Spec : Prop :=
  ∀ n, (P16042312642636447958.a n : ℤ) = A244151 (n + 1)

end A244151

/-! ## A244151.P11711741499456984268

`∪[A047243(n+1), A095671(n)]`
-/

namespace A244151.P11711741499456984268
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047243 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095671 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A244151.P11711741499456984268

namespace A244151

/-- `∪[A047243(n+1), A095671(n)]` -/
def P11711741499456984268.Spec : Prop :=
  ∀ n, (P11711741499456984268.a n : ℤ) = A244151 (n + 1)

end A244151

/-! ## A244151.P8401847977895986920

`eq[A010160(n), A241665(n+1)]`
-/

namespace A244151.P8401847977895986920
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010160 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241665 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A244151.P8401847977895986920

namespace A244151

/-- `eq[A010160(n), A241665(n+1)]` -/
def P8401847977895986920.Spec : Prop :=
  ∀ n, (P8401847977895986920.a n : ℤ) = A244151 (n + 1)

end A244151

/-! ## A244151.P7462715651923008086

`record[A127365(n)+2+n]`
-/

namespace A244151.P7462715651923008086
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127365 n + 2 + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A244151.P7462715651923008086

namespace A244151

/-- `record[A127365(n)+2+n]` -/
def P7462715651923008086.Spec : Prop :=
  ∀ n, P7462715651923008086.a n = A244151 (n + 1)

end A244151

/-! ## A244151.P11099291758107835527

`record[A266285(n)+A057077(n)]`
-/

namespace A244151.P11099291758107835527
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266285 n + A057077 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A244151.P11099291758107835527

namespace A244151

/-- `record[A266285(n)+A057077(n)]` -/
def P11099291758107835527.Spec : Prop :=
  ∀ n, P11099291758107835527.a n = A244151 (n + 1)

end A244151

/-! ## A244151.P9539277307438103633

`A047226(eq[0, A147699(n)])`
-/

namespace A244151.P9539277307438103633
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147699 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047226 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A244151.P9539277307438103633

namespace A244151

/-- `A047226(eq[0, A147699(n)])` -/
def P9539277307438103633.Spec : Prop :=
  ∀ n, P9539277307438103633.a n = A244151 (n + 1)

end A244151

/-! ## A244151.P12189970261502581713

`record[A222257(A222257(n+1))-1]`
-/

namespace A244151.P12189970261502581713
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222257 (A222257 (n + 1)).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A244151.P12189970261502581713

namespace A244151

/-- `record[A222257(A222257(n+1))-1]` -/
def P12189970261502581713.Spec : Prop :=
  ∀ n, P12189970261502581713.a n = A244151 (n + 1)

end A244151

/-! ## A244151.P3510209942839752305

`A011760(a(n-2)+5)` with `a(0)=2, a(1)=3, a(2)=4`
-/

namespace A244151.P3510209942839752305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 3, 4] fun n a =>
  A011760 (a (n - 2) + 5).toNat

end

end A244151.P3510209942839752305

namespace A244151

/-- `A011760(a(n-2)+5)` -/
def P3510209942839752305.Spec : Prop :=
  ∀ n, P3510209942839752305.a n = A244151 (n + 1)

end A244151

/-! ## A244151.P360753668583235077

`record[A004442(A006368(n))+1]`
-/

namespace A244151.P360753668583235077
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (A006368 n).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A244151.P360753668583235077

namespace A244151

/-- `record[A004442(A006368(n))+1]` -/
def P360753668583235077.Spec : Prop :=
  ∀ n, P360753668583235077.a n = A244151 (n + 1)

end A244151

/-! ## A244151.P10803240455803073673

`record[A014681(A006368(n)+1)]`
-/

namespace A244151.P10803240455803073673
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 (A006368 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A244151.P10803240455803073673

namespace A244151

/-- `record[A014681(A006368(n)+1)]` -/
def P10803240455803073673.Spec : Prop :=
  ∀ n, P10803240455803073673.a n = A244151 (n + 1)

end A244151

/-!
# A244153: Permutation of natural numbers, the odd bisection of A156552 halved; equally, a composition of A064216 and A156552: a(n) = A156552(A064216(n)).

The programs for A244153, the canonical program `A244153.P11746889162791063939` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A244153 has offset 1).

The definition of A244153 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A156552, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A244153.P2527319168795236784

`A156552(A064216(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A244153.P2527319168795236784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156552 (A064216 (n + 1)).toNat

end

end A244153.P2527319168795236784

namespace A244153

/-- `A156552(A064216(n+1))` -/
def P2527319168795236784.Spec : Prop :=
  ∀ n, P2527319168795236784.a n = A244153 (n + 1)

end A244153

/-! ## A244153.P11746889162791063939

`A156552(2*n+1)/2`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A244153

/-- `A156552(2*n+1)/2` -/
def P11746889162791063939.Spec : Prop :=
  ∀ n, P11746889162791063939.a n = (A244153 (n + 1) : ℚ)

end A244153

/-! ## A244153.P6202279845960791372

`A156552(A064989(2*n+1))`
-/

namespace A244153.P6202279845960791372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156552 (A064989 (2 * n + 1)).toNat

end

end A244153.P6202279845960791372

namespace A244153

/-- `A156552(A064989(2*n+1))` -/
def P6202279845960791372.Spec : Prop :=
  ∀ n, P6202279845960791372.a n = A244153 (n + 1)

end A244153

/-! ## A244153.P8211213935297383419

`A156552(A252463(2*n+1))`
-/

namespace A244153.P8211213935297383419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156552 (A252463 (2 * n + 1)).toNat

end

end A244153.P8211213935297383419

namespace A244153

/-- `A156552(A252463(2*n+1))` -/
def P8211213935297383419.Spec : Prop :=
  ∀ n, P8211213935297383419.a n = A244153 (n + 1)

end A244153

/-! ## A244153.P11745065901902762434

`A156552(A341515(2*n+1))`
-/

namespace A244153.P11745065901902762434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156552 (A341515 (2 * n + 1)).toNat

end

end A244153.P11745065901902762434

namespace A244153

/-- `A156552(A341515(2*n+1))` -/
def P11745065901902762434.Spec : Prop :=
  ∀ n, P11745065901902762434.a n = A244153 (n + 1)

end A244153

/-! ## A244153.P17524952325385009846

`A156552(A341516(2*n+1))`
-/

namespace A244153.P17524952325385009846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156552 (A341516 (2 * n + 1)).toNat

end

end A244153.P17524952325385009846

namespace A244153

/-- `A156552(A341516(2*n+1))` -/
def P17524952325385009846.Spec : Prop :=
  ∀ n, P17524952325385009846.a n = A244153 (n + 1)

end A244153

/-! ## A244153.P5338400985403799492

`A324104(2*n+1)-A324103(2*n+1)/2`
-/

namespace A244153.P5338400985403799492
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A324104 (2 * n + 1) : ℚ) - (A324103 (2 * n + 1) : ℚ) / 2

end

end A244153.P5338400985403799492

namespace A244153

/-- `A324104(2*n+1)-A324103(2*n+1)/2` -/
def P5338400985403799492.Spec : Prop :=
  ∀ n, P5338400985403799492.a n = (A244153 (n + 1) : ℚ)

end A244153

/-! ## A244153.P3174717897416800656

`A156552(A006370(A297165(2*n+1)))`
-/

namespace A244153.P3174717897416800656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156552 (A006370 (A297165 (2 * n + 1)).toNat).toNat

end

end A244153.P3174717897416800656

namespace A244153

/-- `A156552(A006370(A297165(2*n+1)))` -/
def P3174717897416800656.Spec : Prop :=
  ∀ n, P3174717897416800656.a n = A244153 (n + 1)

end A244153

/-! ## A244153.P15717871452587264886

`floor(A005941(2*n+1)/2)`
-/

namespace A244153.P15717871452587264886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A005941 (2 * n + 1) : ℚ) / 2⌋

end

end A244153.P15717871452587264886

namespace A244153

/-- `floor(A005941(2*n+1)/2)` -/
def P15717871452587264886.Spec : Prop :=
  ∀ n, P15717871452587264886.a n = A244153 (n + 1)

end A244153

/-! ## A244153.P3927444608736106643

`(A057428(n+1)+A005941(2*n+1))/2`
-/

namespace A244153.P3927444608736106643
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A057428 (n + 1) + A005941 (2 * n + 1) : ℚ) / 2

end

end A244153.P3927444608736106643

namespace A244153

/-- `(A057428(n+1)+A005941(2*n+1))/2` -/
def P3927444608736106643.Spec : Prop :=
  ∀ n, P3927444608736106643.a n = (A244153 (n + 1) : ℚ)

end A244153

/-! ## A244153.P7444568043103875749

`(A033999(2*n+1)+A005941(2*n+1))/2`
-/

namespace A244153.P7444568043103875749
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A033999 (2 * n + 1) + A005941 (2 * n + 1) : ℚ) / 2

end

end A244153.P7444568043103875749

namespace A244153

/-- `(A033999(2*n+1)+A005941(2*n+1))/2` -/
def P7444568043103875749.Spec : Prop :=
  ∀ n, P7444568043103875749.a n = (A244153 (n + 1) : ℚ)

end A244153

/-! ## A244153.P11579938197881804448

`(A323905(2*n+1)+A048675(2*n+1))/2`
-/

namespace A244153.P11579938197881804448
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A323905 (2 * n + 1) + A048675 (2 * n + 1) : ℚ) / 2

end

end A244153.P11579938197881804448

namespace A244153

/-- `(A323905(2*n+1)+A048675(2*n+1))/2` -/
def P11579938197881804448.Spec : Prop :=
  ∀ n, P11579938197881804448.a n = (A244153 (n + 1) : ℚ)

end A244153

/-! ## A244153.P2502605362327459744

`(A297168(2*n+1)+A297112(2*n+1))/2`
-/

namespace A244153.P2502605362327459744
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A297168 (2 * n + 1) + A297112 (2 * n + 1) : ℚ) / 2

end

end A244153.P2502605362327459744

namespace A244153

/-- `(A297168(2*n+1)+A297112(2*n+1))/2` -/
def P2502605362327459744.Spec : Prop :=
  ∀ n, P2502605362327459744.a n = (A244153 (n + 1) : ℚ)

end A244153

/-! ## A244153.P7496071471425543995

`(A324865(2*n+1)+A323244(2*n+1))/2`
-/

namespace A244153.P7496071471425543995
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A324865 (2 * n + 1) + A323244 (2 * n + 1) : ℚ) / 2

end

end A244153.P7496071471425543995

namespace A244153

/-- `(A324865(2*n+1)+A323244(2*n+1))/2` -/
def P7496071471425543995.Spec : Prop :=
  ∀ n, P7496071471425543995.a n = (A244153 (n + 1) : ℚ)

end A244153

/-! ## A244153.P13743633223997431773

`xor(A005941(2*n+1), A038712(2*n+1))/2`
-/

namespace A244153.P13743633223997431773
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.xor (A005941 (2 * n + 1)) (A038712 (2 * n + 1)) : ℚ) / 2

end

end A244153.P13743633223997431773

namespace A244153

/-- `xor(A005941(2*n+1), A038712(2*n+1))/2` -/
def P13743633223997431773.Spec : Prop :=
  ∀ n, P13743633223997431773.a n = (A244153 (n + 1) : ℚ)

end A244153

/-! ## A244153.P3917005749646447290

`(A323243(2*n+1)-A324865(2*n+1))/2`
-/

namespace A244153.P3917005749646447290
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A323243 (2 * n + 1) - A324865 (2 * n + 1) : ℚ) / 2

end

end A244153.P3917005749646447290

namespace A244153

/-- `(A323243(2*n+1)-A324865(2*n+1))/2` -/
def P3917005749646447290.Spec : Prop :=
  ∀ n, P3917005749646447290.a n = (A244153 (n + 1) : ℚ)

end A244153

/-! ## A244153.P10305654917670258795

`xor(A324865(2*n+1), A324867(2*n+1))/2`
-/

namespace A244153.P10305654917670258795
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.xor (A324865 (2 * n + 1)) (A324867 (2 * n + 1)) : ℚ) / 2

end

end A244153.P10305654917670258795

namespace A244153

/-- `xor(A324865(2*n+1), A324867(2*n+1))/2` -/
def P10305654917670258795.Spec : Prop :=
  ∀ n, P10305654917670258795.a n = (A244153 (n + 1) : ℚ)

end A244153

/-! ## A244153.P11387765523823738024

`A332816(A332819(A108548(2*n+1)))`
-/

namespace A244153.P11387765523823738024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332816 (A332819 (A108548 (2 * n + 1)).toNat).toNat

end

end A244153.P11387765523823738024

namespace A244153

/-- `A332816(A332819(A108548(2*n+1)))` -/
def P11387765523823738024.Spec : Prop :=
  ∀ n, P11387765523823738024.a n = A244153 (n + 1)

end A244153

/-! ## A244153.P4345458177457784183

`(A292382(2*n+1)+A292380(2*n+1))/2`
-/

namespace A244153.P4345458177457784183
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A292382 (2 * n + 1) + A292380 (2 * n + 1) : ℚ) / 2

end

end A244153.P4345458177457784183

namespace A244153

/-- `(A292382(2*n+1)+A292380(2*n+1))/2` -/
def P4345458177457784183.Spec : Prop :=
  ∀ n, P4345458177457784183.a n = (A244153 (n + 1) : ℚ)

end A244153

/-! ## A244153.P9913236153509373368

`A305418(A091202(2*n+1))/2`
-/

namespace A244153.P9913236153509373368
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A305418 (A091202 (2 * n + 1)).toNat : ℚ) / 2

end

end A244153.P9913236153509373368

namespace A244153

/-- `A305418(A091202(2*n+1))/2` -/
def P9913236153509373368.Spec : Prop :=
  ∀ n, P9913236153509373368.a n = (A244153 (n + 1) : ℚ)

end A244153

/-!
# A244154: Permutation of natural numbers: a(0) = 1, a(1) = 2, a(2n) = A254049(a(n)), a(2n+1) = 3*a(n)-1; composition of A048673 and A005940.

The programs for A244154, the canonical program `A244154.P13695817551395832827` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A244154 has offset 0).

The definition of A244154 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005940, A048673, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A244154.P13695817551395832827

`A048673(A005940(n+1))`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A244154

/-- `A048673(A005940(n+1))` -/
def P13695817551395832827.Spec : Prop :=
  ∀ n, P13695817551395832827.a n = A244154 n

theorem P13695817551395832827.correct : P13695817551395832827.Spec := by
  intro n
  simp only [A244154]

end A244154

/-! ## A244154.P3337909700138725317

`ceil(A005940(2*n+1)/2)`
-/

namespace A244154.P3337909700138725317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A005940 (2 * n + 1) : ℚ) / 2⌉

end

end A244154.P3337909700138725317

namespace A244154

/-- `ceil(A005940(2*n+1)/2)` -/
def P3337909700138725317.Spec : Prop :=
  ∀ n, P3337909700138725317.a n = A244154 n

end A244154

/-! ## A244154.P6022444660083477302

`round(A005940(n+1+n)/2)`
-/

namespace A244154.P6022444660083477302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A005940 (n + 1 + n) : ℚ) / 2)

end

end A244154.P6022444660083477302

namespace A244154

/-- `round(A005940(n+1+n)/2)` -/
def P6022444660083477302.Spec : Prop :=
  ∀ n, P6022444660083477302.a n = A244154 n

end A244154

/-! ## A244154.P2473518052502948849

`(A005940(Δ[n²])-1)/2+1`
-/

namespace A244154.P2473518052502948849
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005940 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - 1 : ℚ) / 2 + 1

end

end A244154.P2473518052502948849

namespace A244154

/-- `(A005940(Δ[n²])-1)/2+1` -/
def P2473518052502948849.Spec : Prop :=
  ∀ n, P2473518052502948849.a n = (A244154 n : ℚ)

end A244154

/-! ## A244154.P11237485161417005059

`(A005940(A005408(n))+1)/2`
-/

namespace A244154.P11237485161417005059
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005940 (A005408 n).toNat + 1 : ℚ) / 2

end

end A244154.P11237485161417005059

namespace A244154

/-- `(A005940(A005408(n))+1)/2` -/
def P11237485161417005059.Spec : Prop :=
  ∀ n, P11237485161417005059.a n = (A244154 n : ℚ)

end A244154

/-! ## A244154.P14539687877393612466

`(A057427(n+1)+A005940(2*n+1))/2`
-/

namespace A244154.P14539687877393612466
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A057427 (n + 1) + A005940 (2 * n + 1) : ℚ) / 2

end

end A244154.P14539687877393612466

namespace A244154

/-- `(A057427(n+1)+A005940(2*n+1))/2` -/
def P14539687877393612466.Spec : Prop :=
  ∀ n, P14539687877393612466.a n = (A244154 n : ℚ)

end A244154

/-! ## A244154.P16741384865219226368

`(A005940(2*n+1)-A057428(n+1))/2`
-/

namespace A244154.P16741384865219226368
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005940 (2 * n + 1) - A057428 (n + 1) : ℚ) / 2

end

end A244154.P16741384865219226368

namespace A244154

/-- `(A005940(2*n+1)-A057428(n+1))/2` -/
def P16741384865219226368.Spec : Prop :=
  ∀ n, P16741384865219226368.a n = (A244154 n : ℚ)

end A244154

/-! ## A244154.P5126034839018606877

`(A005940(2*n+1)+1)/A010693(2*n)`
-/

namespace A244154.P5126034839018606877
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005940 (2 * n + 1) + 1 : ℚ) / (A010693 (2 * n) : ℚ)

end

end A244154.P5126034839018606877

namespace A244154

/-- `(A005940(2*n+1)+1)/A010693(2*n)` -/
def P5126034839018606877.Spec : Prop :=
  ∀ n, P5126034839018606877.a n = (A244154 n : ℚ)

end A244154

/-! ## A244154.P6511514880664915156

`(A152271(2*n)+A005940(2*n+1))/2`
-/

namespace A244154.P6511514880664915156
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A152271 (2 * n) + A005940 (2 * n + 1) : ℚ) / 2

end

end A244154.P6511514880664915156

namespace A244154

/-- `(A152271(2*n)+A005940(2*n+1))/2` -/
def P6511514880664915156.Spec : Prop :=
  ∀ n, P6511514880664915156.a n = (A244154 n : ℚ)

end A244154

/-! ## A244154.P10456888705505898907

`(A005940(2*n+1)+1)/A020639(2*(n+1))`
-/

namespace A244154.P10456888705505898907
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005940 (2 * n + 1) + 1 : ℚ) / (A020639 (2 * (n + 1)) : ℚ)

end

end A244154.P10456888705505898907

namespace A244154

/-- `(A005940(2*n+1)+1)/A020639(2*(n+1))` -/
def P10456888705505898907.Spec : Prop :=
  ∀ n, P10456888705505898907.a n = (A244154 n : ℚ)

end A244154

/-! ## A244154.P17679860534598759322

`(A005940(2*n+1)+1)/A176059(2*n+1)`
-/

namespace A244154.P17679860534598759322
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005940 (2 * n + 1) + 1 : ℚ) / (A176059 (2 * n + 1) : ℚ)

end

end A244154.P17679860534598759322

namespace A244154

/-- `(A005940(2*n+1)+1)/A176059(2*n+1)` -/
def P17679860534598759322.Spec : Prop :=
  ∀ n, P17679860534598759322.a n = (A244154 n : ℚ)

end A244154

/-! ## A244154.P802588243264864820

`(A038712(2*n+1)+A005940(2*n+1))/2`
-/

namespace A244154.P802588243264864820
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038712 (2 * n + 1) + A005940 (2 * n + 1) : ℚ) / 2

end

end A244154.P802588243264864820

namespace A244154

/-- `(A038712(2*n+1)+A005940(2*n+1))/2` -/
def P802588243264864820.Spec : Prop :=
  ∀ n, P802588243264864820.a n = (A244154 n : ℚ)

end A244154

/-! ## A244154.P4949307016852225406

`(A055396(2*(n+1))+A005940(2*n+1))/2`
-/

namespace A244154.P4949307016852225406
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A055396 (2 * (n + 1)) + A005940 (2 * n + 1) : ℚ) / 2

end

end A244154.P4949307016852225406

namespace A244154

/-- `(A055396(2*(n+1))+A005940(2*n+1))/2` -/
def P4949307016852225406.Spec : Prop :=
  ∀ n, P4949307016852225406.a n = (A244154 n : ℚ)

end A244154

/-! ## A244154.P16658189090424045191

`A292602(4*n+1)+1`
-/

namespace A244154.P16658189090424045191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292602 (4 * n + 1) + 1

end

end A244154.P16658189090424045191

namespace A244154

/-- `A292602(4*n+1)+1` -/
def P16658189090424045191.Spec : Prop :=
  ∀ n, P16658189090424045191.a n = A244154 n

end A244154

/-! ## A244154.P154394291100205972

`floor(A005940(4*n+2)/4)+1`
-/

namespace A244154.P154394291100205972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A005940 (4 * n + 2) : ℚ) / 4⌋ + 1

end

end A244154.P154394291100205972

namespace A244154

/-- `floor(A005940(4*n+2)/4)+1` -/
def P154394291100205972.Spec : Prop :=
  ∀ n, P154394291100205972.a n = A244154 n

end A244154

/-! ## A244154.P10559115774119682602

`A014682(A005940(2*n+1)+1)`
-/

namespace A244154.P10559115774119682602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A005940 (2 * n + 1) + 1).toNat

end

end A244154.P10559115774119682602

namespace A244154

/-- `A014682(A005940(2*n+1)+1)` -/
def P10559115774119682602.Spec : Prop :=
  ∀ n, P10559115774119682602.a n = A244154 n

end A244154

/-! ## A244154.P4749747645561722634

`A302042(A005940(2*n+1)+1)`
-/

namespace A244154.P4749747645561722634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302042 (A005940 (2 * n + 1) + 1).toNat

end

end A244154.P4749747645561722634

namespace A244154

/-- `A302042(A005940(2*n+1)+1)` -/
def P4749747645561722634.Spec : Prop :=
  ∀ n, P4749747645561722634.a n = A244154 n

end A244154

/-! ## A244154.P15951660901522903567

`A318516(A005940(2*n+1)+1)`
-/

namespace A244154.P15951660901522903567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318516 (A005940 (2 * n + 1) + 1).toNat

end

end A244154.P15951660901522903567

namespace A244154

/-- `A318516(A005940(2*n+1)+1)` -/
def P15951660901522903567.Spec : Prop :=
  ∀ n, P15951660901522903567.a n = A244154 n

end A244154

/-! ## A244154.P4602957627291815533

`A332893(A005940(2*n+1)+1)`
-/

namespace A244154.P4602957627291815533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332893 (A005940 (2 * n + 1) + 1).toNat

end

end A244154.P4602957627291815533

namespace A244154

/-- `A332893(A005940(2*n+1)+1)` -/
def P4602957627291815533.Spec : Prop :=
  ∀ n, P4602957627291815533.a n = A244154 n

end A244154

/-! ## A244154.P178490364195534452

`A048673(A246367(A048673(A246364(n+1))))`
-/

namespace A244154.P178490364195534452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048673 (A246367 (A048673 (A246364 (n + 1)).toNat).toNat).toNat

end

end A244154.P178490364195534452

namespace A244154

/-- `A048673(A246367(A048673(A246364(n+1))))` -/
def P178490364195534452.Spec : Prop :=
  ∀ n, P178490364195534452.a n = A244154 n

end A244154

/-!
# A244155: Numbers n such that when the n-th Catalan restricted growth string [b_k, b_{k-1}, ..., b_2, b_1] (see A239903) is viewed as a simple numeral in Catalan Base: b_k*C(k) + b_{k-1}*C(k-1) + ... + b_2*C(2) + b_1*C(1) it is equal to n. Here C(m) = A000108(m).

The programs for A244155, there is no canonical definition to state claims against.
-/

/-! ## A244155.P9229659306292254178

`∪[A197433(n)+1, A197433(n)]`
-/

namespace A244155.P9229659306292254178
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197433 n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197433 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A244155.P9229659306292254178

/-! ## A244155.P11210397949668950253

`eq[0, A244157(n)]`
-/

namespace A244155.P11210397949668950253
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244157 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A244155.P11210397949668950253

/-! ## A244155.P16763703825540601995

`lt[A244157(n)+1, A020639(2*(n+1))]`
-/

namespace A244155.P16763703825540601995
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244157 n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A244155.P16763703825540601995

/-! ## A244155.P1054528505627039933

`lt[A244157(A008611(3*n+1)), 1]`
-/

namespace A244155.P1054528505627039933
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244157 (A008611 (3 * n + 1)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A244155.P1054528505627039933

/-! ## A244155.P6879770844008765108

`lt[A244157(n), A011655(3*n+1)]`
-/

namespace A244155.P6879770844008765108
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244157 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011655 (3 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A244155.P6879770844008765108

/-! ## A244155.P16743266689344493099

`lt[A244157(n), A040001(A016969(n))]`
-/

namespace A244155.P16743266689344493099
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244157 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040001 (A016969 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A244155.P16743266689344493099

/-! ## A244155.P14214254324960067698

`lt[A244157(n), A040001(A001122(n+1))]`
-/

namespace A244155.P14214254324960067698
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244157 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040001 (A001122 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A244155.P14214254324960067698

/-! ## A244155.P6468709360946355693

`lt[A244157(n), A040001(A095841(n+1))]`
-/

namespace A244155.P6468709360946355693
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244157 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040001 (A095841 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A244155.P6468709360946355693

/-! ## A244155.P10186085671264941623

`lt[A244157(n), A040001(5*A023219(n+1))]`
-/

namespace A244155.P10186085671264941623
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244157 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040001 (5 * A023219 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A244155.P10186085671264941623

/-!
# A244156: Numbers n such that when the n-th Catalan restricted growth string [b_k, b_{k-1}, ..., b_2, b_1] (see A239903) is viewed as a simple numeral in Catalan Base: b_k*C(k) + b_{k-1}*C(k-1) + ... + b_2*C(2) +b_1*C(1) it differs from n. Here C(m) = A000108(m).

The programs for A244156, there is no canonical definition to state claims against.
-/

/-! ## A244156.P7417566160054564122

`comp[A244155(n)]`
-/

namespace A244156.P7417566160054564122
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244155 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A244156.P7417566160054564122

/-! ## A244156.P3411694599660058464

`lt[0, A244157(n)]`
-/

namespace A244156.P3411694599660058464
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244157 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A244156.P3411694599660058464

/-! ## A244156.P13141684712952470957

`eq[1, A158388(2*A244157(n))]`
-/

namespace A244156.P13141684712952470957
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158388 (2 * A244157 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A244156.P13141684712952470957

/-! ## A244156.P4704043449978530325

`lt[1, A244231(1-A244231(n)+n)]`
-/

namespace A244156.P4704043449978530325
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244231 (1 - A244231 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A244156.P4704043449978530325

/-! ## A244156.P6177255979736432752

`eq[1, gcd(A244157(n), A256048(n))]`
-/

namespace A244156.P6177255979736432752
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A244157 n) (A256048 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A244156.P6177255979736432752

/-! ## A244156.P14469756208721865982

`eq[A057427(n), A158388(A244157(n))]`
-/

namespace A244156.P14469756208721865982
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158388 (A244157 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A244156.P14469756208721865982

/-! ## A244156.P17652194827586566128

`eq[A158388(n)², A158388(A244157(n))]`
-/

namespace A244156.P17652194827586566128
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158388 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158388 (A244157 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A244156.P17652194827586566128

/-! ## A244156.P14204979169266779605

`eq[1, A158388(A244157(n)/A158388(n))]`
-/

namespace A244156.P14204979169266779605
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158388 (SequenceMachineLib.roundAway ((A244157 n : ℚ) / (A158388 n : ℚ))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A244156.P14204979169266779605

/-! ## A244156.P8860898059875606687

`eq[A158388(n+1), A158388(A244157(n))]`
-/

namespace A244156.P8860898059875606687
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158388 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158388 (A244157 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A244156.P8860898059875606687

/-! ## A244156.P7506322456661550781

`eq[1, A158388(A244157(n)²)]`
-/

namespace A244156.P7506322456661550781
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158388 (A244157 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A244156.P7506322456661550781

/-!
# A244157: a(n) = difference between n and the n-th Catalan restricted growth string [b_k, b_{k-1}, ..., b_2, b_1] (see A239903) when it is viewed as a simple numeral in Catalan Base: b_k*C(k) + b_{k-1}*C(k-1) + ... + b_2*C(2) +b_1*C(1). Here C(m) = A000108(m).

The programs for A244157, there is no canonical definition to state claims against.
-/

/-! ## A244157.P2701550119503929992

`A257684(A057357(n))^A144374(3*n+2)`
-/

namespace A244157.P2701550119503929992
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A257684 (A057357 n).toNat : ℚ) ^ (A144374 (3 * n + 2) : ℤ)

end

end A244157.P2701550119503929992

/-!
# A244158: If n = Sum c_i * 10^i then a(n) = Sum c_i * Cat(i+1), where Cat(k) = A000108(k).

The programs for A244158, there is no canonical definition to state claims against.
-/

/-! ## A244158.P3107547598793340853

`A028897(n)+char[A232657(n+1)]`
-/

namespace A244158.P3107547598793340853
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232657 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028897 n + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A244158.P3107547598793340853

/-! ## A244158.P7111652365828284119

`A028897(n)+char[A115005(3*n+5)]`
-/

namespace A244158.P7111652365828284119
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115005 (3 * n + 5)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028897 n + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A244158.P7111652365828284119

/-! ## A244158.P13079302736329772610

`(n-8*floor(n/10))%A003410(A322001(n))`
-/

namespace A244158.P13079302736329772610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((n : ℤ) - 8 * ⌊(n : ℚ) / 10⌋) (A003410 (A322001 n).toNat)

end

end A244158.P13079302736329772610

/-! ## A244158.P15412889752094997823

`A004526(A028898(n)+A007953(n))`
-/

namespace A244158.P15412889752094997823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A028898 n + A007953 n).toNat

end

end A244158.P15412889752094997823

/-! ## A244158.P16181830196420561079

`A028897(n)+A027870(A000196(n))`
-/

namespace A244158.P16181830196420561079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028897 n + A027870 (A000196 n).toNat

end

end A244158.P16181830196420561079

/-! ## A244158.P7942262667683086155

`A054899(A054899(n))+A028897(n)`
-/

namespace A244158.P7942262667683086155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054899 (A054899 n).toNat + A028897 n

end

end A244158.P7942262667683086155

/-! ## A244158.P1050344422293268071

`A185264(A027868(n))+A028897(n)`
-/

namespace A244158.P1050344422293268071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185264 (A027868 n).toNat + A028897 n

end

end A244158.P1050344422293268071

/-! ## A244158.P3386909674902007443

`A322001(n)-A054899(A054899(n))`
-/

namespace A244158.P3386909674902007443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322001 n - A054899 (A054899 n).toNat

end

end A244158.P3386909674902007443

/-! ## A244158.P5801460977125464810

`A322001(n)-A059995(A059995(n))`
-/

namespace A244158.P5801460977125464810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322001 n - A059995 (A059995 n).toNat

end

end A244158.P5801460977125464810

/-! ## A244158.P10206103205370471479

`or(A028897(n), A071839(A071860(n+1)))`
-/

namespace A244158.P10206103205370471479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A028897 n) (A071839 (A071860 (n + 1)).toNat)

end

end A244158.P10206103205370471479

/-!
# A244159: Semigreedy Catalan Representation of nonnegative integers.

The programs for A244159, there is no canonical definition to state claims against.
-/

/-! ## A244159.P12951118281763415774

`A239903(record[A014420(n²)])`
-/

namespace A244159.P12951118281763415774
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014420 (n ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239903 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A244159.P12951118281763415774

/-! ## A244159.P716533215221748995

`∩[A239903(A126969(n)), A239903(n)]`
-/

namespace A244159.P716533215221748995
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239903 (A126969 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239903 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A244159.P716533215221748995

/-! ## A244159.P3508455177679993632

`A288991(A283330(n+1))+A239903(n)`
-/

namespace A244159.P3508455177679993632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288991 (A283330 (n + 1)).toNat + A239903 n

end

end A244159.P3508455177679993632

/-! ## A244159.P10125622001525671832

`or(A239903(n), A347440(A338871(n+1)))`
-/

namespace A244159.P10125622001525671832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A239903 n) (A347440 (A338871 (n + 1)).toNat)

end

end A244159.P10125622001525671832

/-! ## A244159.P13059657217780278119

`lt[A004176(n), A136691(A278487(n+4))]`
-/

namespace A244159.P13059657217780278119
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004176 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136691 (A278487 (n + 4)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A244159.P13059657217780278119

/-!
# A244160: a(0)=0, and for n >= 1, a(n) = the largest k such that k-th Catalan number <= n.

The programs for A244160, the canonical program `A244160.P12813125502844365443` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A244160 has offset 0).

The definition of A244160 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A244160.P12813125502844365443

`∑[A010058(n)]`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A244160

/-- `∑[A010058(n)]` -/
def P12813125502844365443.Spec : Prop :=
  ∀ n, P12813125502844365443.a n = A244160 n

theorem P12813125502844365443.correct : P12813125502844365443.Spec := by
  intro n
  simp only [A244160]

end A244160

/-! ## A244160.P13904179582122128799

`∑[char[A000108(n)]]`
-/

namespace A244160.P13904179582122128799
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A244160.P13904179582122128799

namespace A244160

/-- `∑[char[A000108(n)]]` -/
def P13904179582122128799.Spec : Prop :=
  ∀ n, (P13904179582122128799.a n : ℤ) = A244160 n

end A244160

/-! ## A244160.P5165153315504884331

`∑[char[A099363(n)]]`
-/

namespace A244160.P5165153315504884331
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099363 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A244160.P5165153315504884331

namespace A244160

/-- `∑[char[A099363(n)]]` -/
def P5165153315504884331.Spec : Prop :=
  ∀ n, (P5165153315504884331.a n : ℤ) = A244160 n

end A244160

/-! ## A244160.P15547384919587744243

`∑[char[A099364(n)]]`
-/

namespace A244160.P15547384919587744243
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099364 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A244160.P15547384919587744243

namespace A244160

/-- `∑[char[A099364(n)]]` -/
def P15547384919587744243.Spec : Prop :=
  ∀ n, (P15547384919587744243.a n : ℤ) = A244160 n

end A244160

/-! ## A244160.P4629417921608315368

`∑[char[A120588(n)]]`
-/

namespace A244160.P4629417921608315368
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120588 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A244160.P4629417921608315368

namespace A244160

/-- `∑[char[A120588(n)]]` -/
def P4629417921608315368.Spec : Prop :=
  ∀ n, (P4629417921608315368.a n : ℤ) = A244160 n

end A244160

/-! ## A244160.P2961715729813677872

`∑[char[A155586(n)]]`
-/

namespace A244160.P2961715729813677872
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155586 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A244160.P2961715729813677872

namespace A244160

/-- `∑[char[A155586(n)]]` -/
def P2961715729813677872.Spec : Prop :=
  ∀ n, (P2961715729813677872.a n : ℤ) = A244160 n

end A244160

/-! ## A244160.P9611535461848685645

`∑[char[A208355(n)]]`
-/

namespace A244160.P9611535461848685645
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208355 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A244160.P9611535461848685645

namespace A244160

/-- `∑[char[A208355(n)]]` -/
def P9611535461848685645.Spec : Prop :=
  ∀ n, (P9611535461848685645.a n : ℤ) = A244160 n

end A244160

/-! ## A244160.P6734299017132091690

`∑[char[A211216(n)]]`
-/

namespace A244160.P6734299017132091690
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211216 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A244160.P6734299017132091690

namespace A244160

/-- `∑[char[A211216(n)]]` -/
def P6734299017132091690.Spec : Prop :=
  ∀ n, (P6734299017132091690.a n : ℤ) = A244160 n

end A244160

/-! ## A244160.P6971225651410213398

`∑[char[A039599(∑[n])]]`
-/

namespace A244160.P6971225651410213398
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039599 (∑ j ∈ Finset.range (n + 1), f3 j)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A244160.P6971225651410213398

namespace A244160

/-- `∑[char[A039599(∑[n])]]` -/
def P6971225651410213398.Spec : Prop :=
  ∀ n, (P6971225651410213398.a n : ℤ) = A244160 n

end A244160

/-! ## A244160.P2585257815094003188

`∑[char[A104978(∑[n])]]`
-/

namespace A244160.P2585257815094003188
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104978 (∑ j ∈ Finset.range (n + 1), f3 j)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A244160.P2585257815094003188

namespace A244160

/-- `∑[char[A104978(∑[n])]]` -/
def P2585257815094003188.Spec : Prop :=
  ∀ n, (P2585257815094003188.a n : ℤ) = A244160 n

end A244160

/-! ## A244160.P18206314745933718129

`∑[char[A120986(∑[n])]]`
-/

namespace A244160.P18206314745933718129
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120986 (∑ j ∈ Finset.range (n + 1), f3 j)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A244160.P18206314745933718129

namespace A244160

/-- `∑[char[A120986(∑[n])]]` -/
def P18206314745933718129.Spec : Prop :=
  ∀ n, (P18206314745933718129.a n : ℤ) = A244160 n

end A244160

/-! ## A244160.P4119507363679243921

`∑[char[Δ[A210628(n)]]]`
-/

namespace A244160.P4119507363679243921
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210628 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A244160.P4119507363679243921

namespace A244160

/-- `∑[char[Δ[A210628(n)]]]` -/
def P4119507363679243921.Spec : Prop :=
  ∀ n, (P4119507363679243921.a n : ℤ) = A244160 n

end A244160

/-! ## A244160.P8996637323816201367

`∑[char[A162470(n+1)]]`
-/

namespace A244160.P8996637323816201367
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162470 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A244160.P8996637323816201367

namespace A244160

/-- `∑[char[A162470(n+1)]]` -/
def P8996637323816201367.Spec : Prop :=
  ∀ n, (P8996637323816201367.a n : ℤ) = A244160 n

end A244160

/-! ## A244160.P11991691147334889154

`∑[char[A097331(n)]]-1`
-/

namespace A244160.P11991691147334889154
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097331 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1

end

end A244160.P11991691147334889154

namespace A244160

/-- `∑[char[A097331(n)]]-1` -/
def P11991691147334889154.Spec : Prop :=
  ∀ n, P11991691147334889154.a n = A244160 n

end A244160

/-! ## A244160.P3470686181580362658

`∑[char[A126120(n)]]-1`
-/

namespace A244160.P3470686181580362658
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126120 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1

end

end A244160.P3470686181580362658

namespace A244160

/-- `∑[char[A126120(n)]]-1` -/
def P3470686181580362658.Spec : Prop :=
  ∀ n, P3470686181580362658.a n = A244160 n

end A244160

/-! ## A244160.P9150990981653039803

`∑[char[A026008(2*n)]]`
-/

namespace A244160.P9150990981653039803
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026008 (2 * n)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A244160.P9150990981653039803

namespace A244160

/-- `∑[char[A026008(2*n)]]` -/
def P9150990981653039803.Spec : Prop :=
  ∀ n, (P9150990981653039803.a n : ℤ) = A244160 n

end A244160

/-! ## A244160.P4172246958067918707

`∑[char[A028303(2*n)]]`
-/

namespace A244160.P4172246958067918707
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028303 (2 * n)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A244160.P4172246958067918707

namespace A244160

/-- `∑[char[A028303(2*n)]]` -/
def P4172246958067918707.Spec : Prop :=
  ∀ n, (P4172246958067918707.a n : ℤ) = A244160 n

end A244160

/-! ## A244160.P13328579699714348329

`∑[char[A028304(2*n)]]`
-/

namespace A244160.P13328579699714348329
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028304 (2 * n)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A244160.P13328579699714348329

namespace A244160

/-- `∑[char[A028304(2*n)]]` -/
def P13328579699714348329.Spec : Prop :=
  ∀ n, (P13328579699714348329.a n : ℤ) = A244160 n

end A244160

/-!
# A244161: Greedy Catalan Base (A014418) interpreted as base-4 numbers, then shown in decimal.

The programs for A244161, there is no canonical definition to state claims against.
-/

/-! ## A244161.P2174628758116819662

`A023717(eq[A109681(n), A118759(n)])`
-/

namespace A244161.P2174628758116819662
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109681 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118759 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023717 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A244161.P2174628758116819662

/-! ## A244161.P16614203034648155905

`A023717(eq[A033619(n+1), A109681(n)])`
-/

namespace A244161.P16614203034648155905
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033619 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109681 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023717 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A244161.P16614203034648155905

/-! ## A244161.P12493275579395986457

`A028899(A014418(n))`
-/

namespace A244161.P12493275579395986457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028899 (A014418 n).toNat

end

end A244161.P12493275579395986457

/-! ## A244161.P9096703357271034363

`eq[0, A186244(a(floor(n/4))+n%4)]` with `a(0)=0`
-/

namespace A244161.P9096703357271034363
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f2 =>
  A186244 (f2 ⌊(n : ℚ) / 4⌋.toNat + ((n % 4 : ℕ) : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A244161.P9096703357271034363

/-!
# A244163: Primes which are the concatenation of three consecutive primes p, q, r while the sum (p + q + r) yields another prime.

The programs for A244163, there is no canonical definition to state claims against.
-/

/-! ## A244163.P7128631369354534166

`A030469(∑[A309864(2*n)])`
-/

namespace A244163.P7128631369354534166
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309864 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030469 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A244163.P7128631369354534166

/-! ## A244163.P16300150333037686325

`A030469(A309864(2*n)+n)`
-/

namespace A244163.P16300150333037686325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030469 (A309864 (2 * n) + (n : ℤ)).toNat

end

end A244163.P16300150333037686325

/-!
# A244164: Number of compositions of n in which the minimal multiplicity of parts equals 1.

The programs for A244164, there is no canonical definition to state claims against.
-/

/-! ## A244164.P7526746516374406405

`2^n-A240085(n+1)`
-/

namespace A244164.P7526746516374406405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - A240085 (n + 1)

end

end A244164.P7526746516374406405

/-! ## A244164.P11463864908220252423

`A003242(n+1)+A261983(n+1)-A240085(n+1)`
-/

namespace A244164.P11463864908220252423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003242 (n + 1) + (A261983 (n + 1) - A240085 (n + 1))

end

end A244164.P11463864908220252423

/-! ## A244164.P14025265757083623400

`A242451(∑[n+1]+1)`
-/

namespace A244164.P14025265757083623400
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242451 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A244164.P14025265757083623400

/-! ## A244164.P11859343208582242700

`A242451(A134869(n+1))+A000007(n)`
-/

namespace A244164.P11859343208582242700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242451 (A134869 (n + 1)).toNat + A000007 n

end

end A244164.P11859343208582242700

/-! ## A244164.P484728390651147424

`A242451(A036406(2*n+3))%A116310(n+1)`
-/

namespace A244164.P484728390651147424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A242451 (A036406 (2 * n + 3)).toNat) (A116310 (n + 1))

end

end A244164.P484728390651147424

/-! ## A244164.P7491750841885823337

`A242451(A000096(n)+2)%A074528(n)`
-/

namespace A244164.P7491750841885823337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A242451 (A000096 n + 2).toNat) (A074528 n)

end

end A244164.P7491750841885823337

/-!
# A244165: Number of compositions of n in which the minimal multiplicity of parts equals 2.

The programs for A244165, there is no canonical definition to state claims against.
-/

/-! ## A244165.P514215940974762005

`A242451(∑[n+2]+3)`
-/

namespace A244165.P514215940974762005
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242451 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A244165.P514215940974762005

/-! ## A244165.P12359169837679982932

`A242451(A340266(n+1))%(2^(n+1))`
-/

namespace A244165.P12359169837679982932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A242451 (A340266 (n + 1)).toNat) (2 ^ (n + 1) : ℤ)

end

end A244165.P12359169837679982932

/-! ## A244165.P12590897634001012593

`gcd(A000038(n), A242451(A340266(n+1)))`
-/

namespace A244165.P12590897634001012593
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A242451 (A340266 (n + 1)).toNat)

end

end A244165.P12590897634001012593

/-! ## A244165.P14757569709670001314

`or(A000007(n), A242451(A340266(n+1)))`
-/

namespace A244165.P14757569709670001314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A242451 (A340266 (n + 1)).toNat)

end

end A244165.P14757569709670001314

/-! ## A244165.P10882140529236462666

`A055642(A023416(n))*A242451(A340266(n+1))`
-/

namespace A244165.P10882140529236462666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 (A023416 n).toNat * A242451 (A340266 (n + 1)).toNat

end

end A244165.P10882140529236462666

/-! ## A244165.P16430052240071696465

`A008683(n+1)²^A008683(n+1)²*A242451(A340266(n+1))`
-/

namespace A244165.P16430052240071696465
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008683 (n + 1) ^ 2 : ℚ) ^ (A008683 (n + 1) ^ 2 : ℤ) * (A242451 (A340266 (n + 1)).toNat : ℚ)

end

end A244165.P16430052240071696465

/-! ## A244165.P9913093513726514540

`and(-A000533(n), A242451(A340266(n+1)))`
-/

namespace A244165.P9913093513726514540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-A000533 n) (A242451 (A340266 (n + 1)).toNat)

end

end A244165.P9913093513726514540

/-!
# A244166: Number of compositions of n in which the minimal multiplicity of parts equals 3.

The programs for A244166, there is no canonical definition to state claims against.
-/

/-! ## A244166.P1972014452449183504

`A242451(∑[n+3]+6)`
-/

namespace A244166.P1972014452449183504
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242451 (∑ j ∈ Finset.range (n + 1), f1 j + 6)

end

end A244166.P1972014452449183504

/-! ## A244166.P867372392950112790

`and(-1, A242451(A167614(n+2)))`
-/

namespace A244166.P867372392950112790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A242451 (A167614 (n + 2)).toNat)

end

end A244166.P867372392950112790

/-! ## A244166.P10431352043704533628

`A025446(n)!*A242451(A167614(n+2))`
-/

namespace A244166.P10431352043704533628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A025446 n).toNat : ℤ) * A242451 (A167614 (n + 2)).toNat

end

end A244166.P10431352043704533628

/-! ## A244166.P8223537594747813813

`char[A180700(n+1)]*A242451(A167614(n+2))`
-/

namespace A244166.P8223537594747813813
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180700 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A242451 (A167614 (n + 2)).toNat

end

end A244166.P8223537594747813813

/-! ## A244166.P9297028602758660235

`char[A065648(n)-2]*A242451(A167614(n+2))`
-/

namespace A244166.P9297028602758660235
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065648 n - 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A242451 (A167614 (n + 2)).toNat

end

end A244166.P9297028602758660235

/-! ## A244166.P14776345900767736823

`A242451(A167614(n+2))+char[A056524(n+10)]`
-/

namespace A244166.P14776345900767736823
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056524 (n + 10)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242451 (A167614 (n + 2)).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A244166.P14776345900767736823

/-! ## A244166.P6103130589458073337

`A242451(A167614(n+2))%A341630(n+1)`
-/

namespace A244166.P6103130589458073337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A242451 (A167614 (n + 2)).toNat) (A341630 (n + 1))

end

end A244166.P6103130589458073337

/-!
# A244167: Number of compositions of n in which the minimal multiplicity of parts equals 4.

The programs for A244167, there is no canonical definition to state claims against.
-/

/-! ## A244167.P8309066999538662135

`A242451(eq[3, A141169(n)])`
-/

namespace A244167.P8309066999538662135
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141169 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242451 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A244167.P8309066999538662135

/-! ## A244167.P17710759595197285905

`A242451(eq[4, A002262(n)])`
-/

namespace A244167.P17710759595197285905
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242451 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A244167.P17710759595197285905

/-! ## A244167.P11225247865851255490

`A242451(A000124(n+4)+3)`
-/

namespace A244167.P11225247865851255490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242451 (A000124 (n + 4) + 3).toNat

end

end A244167.P11225247865851255490

/-! ## A244167.P16662673265206495101

`A242451(A000096(n+3)+5)`
-/

namespace A244167.P16662673265206495101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242451 (A000096 (n + 3) + 5).toNat

end

end A244167.P16662673265206495101

/-! ## A244167.P1966777638759956531

`A242451(A000217(n+4)+4)`
-/

namespace A244167.P1966777638759956531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242451 (A000217 (n + 4) + 4).toNat

end

end A244167.P1966777638759956531

/-! ## A244167.P6266489237956552883

`A242451(A052905(n+1)+9)`
-/

namespace A244167.P6266489237956552883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242451 (A052905 (n + 1) + 9).toNat

end

end A244167.P6266489237956552883

/-! ## A244167.P10672019512454830935

`A242451(A051936(n+4)+13)`
-/

namespace A244167.P10672019512454830935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242451 (A051936 (n + 4) + 13).toNat

end

end A244167.P10672019512454830935

/-! ## A244167.P13198609656036394846

`A242451(A167614(n+1)+A020744(n))`
-/

namespace A244167.P13198609656036394846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242451 (A167614 (n + 1) + A020744 n).toNat

end

end A244167.P13198609656036394846

/-!
# A244168: Number of compositions of n in which the minimal multiplicity of parts equals 5.

The programs for A244168, there is no canonical definition to state claims against.
-/

/-! ## A244168.P14952279839273134100

`A242451(A167499(n+4))`
-/

namespace A244168.P14952279839273134100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242451 (A167499 (n + 4)).toNat

end

end A244168.P14952279839273134100

/-! ## A244168.P8634416028942919694

`A242451(A167614(n+4)+2)`
-/

namespace A244168.P8634416028942919694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242451 (A167614 (n + 4) + 2).toNat

end

end A244168.P8634416028942919694

/-! ## A244168.P6443665389999768919

`A242451(A000096(n+4)+6)`
-/

namespace A244168.P6443665389999768919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242451 (A000096 (n + 4) + 6).toNat

end

end A244168.P6443665389999768919

/-! ## A244168.P6279806564637903117

`A242451(A000217(n+6)-(n+1))`
-/

namespace A244168.P6279806564637903117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242451 (A000217 (n + 6) - (n + 1 : ℤ)).toNat

end

end A244168.P6279806564637903117

/-! ## A244168.P13958532791629994492

`A242451(A004273(n+7)+A000124(n+3))`
-/

namespace A244168.P13958532791629994492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242451 (A004273 (n + 7) + A000124 (n + 3)).toNat

end

end A244168.P13958532791629994492

/-!
# A244169: Number of compositions of n in which the minimal multiplicity of parts equals 6.

The programs for A244169, there is no canonical definition to state claims against.
-/

/-! ## A244169.P17914713914107146709

`A242451(A166136(n+5))`
-/

namespace A244169.P17914713914107146709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242451 (A166136 (n + 5)).toNat

end

end A244169.P17914713914107146709

/-! ## A244169.P2176064904229811146

`A242451(A000124(n+6)+5)`
-/

namespace A244169.P2176064904229811146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242451 (A000124 (n + 6) + 5).toNat

end

end A244169.P2176064904229811146

/-! ## A244169.P15618148912611782646

`A242451(A000096(n+5)+7)`
-/

namespace A244169.P15618148912611782646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242451 (A000096 (n + 5) + 7).toNat

end

end A244169.P15618148912611782646

/-! ## A244169.P12845862012494118286

`A242451(A000217(n+6)+6)`
-/

namespace A244169.P12845862012494118286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242451 (A000217 (n + 6) + 6).toNat

end

end A244169.P12845862012494118286

/-! ## A244169.P12649616996001910737

`A242451(A046691(n+4)+10)`
-/

namespace A244169.P12649616996001910737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242451 (A046691 (n + 4) + 10).toNat

end

end A244169.P12649616996001910737

/-! ## A244169.P14173185956288134091

`A242451(eq[7, A002260(n+1)])`
-/

namespace A244169.P14173185956288134091
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242451 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A244169.P14173185956288134091

/-!
# A244170: Number of compositions of n in which the minimal multiplicity of parts equals 7.

The programs for A244170, there is no canonical definition to state claims against.
-/

/-! ## A244170.P15620148391118725357

`A242451(eq[7, A002262(n)])`
-/

namespace A244170.P15620148391118725357
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242451 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A244170.P15620148391118725357

/-! ## A244170.P17571364969084956670

`A242451(A167499(n+6)+2)`
-/

namespace A244170.P17571364969084956670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242451 (A167499 (n + 6) + 2).toNat

end

end A244170.P17571364969084956670

/-! ## A244170.P18150089663253699082

`A242451(A000124(n+7)+6)`
-/

namespace A244170.P18150089663253699082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242451 (A000124 (n + 7) + 6).toNat

end

end A244170.P18150089663253699082

/-! ## A244170.P16750265554856780299

`A242451(A000096(n+6)+8)`
-/

namespace A244170.P16750265554856780299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242451 (A000096 (n + 6) + 8).toNat

end

end A244170.P16750265554856780299

/-! ## A244170.P15068464546404006284

`A242451(eq[8, A002260(n+1)])`
-/

namespace A244170.P15068464546404006284
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242451 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A244170.P15068464546404006284

/-!
# A244171: Number of compositions of n in which the minimal multiplicity of parts equals 8.

The programs for A244171, there is no canonical definition to state claims against.
-/

/-! ## A244171.P16884633615243747108

`A242451(A167487(n+7)+1)`
-/

namespace A244171.P16884633615243747108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242451 (A167487 (n + 7) + 1).toNat

end

end A244171.P16884633615243747108

/-! ## A244171.P791714574136422688

`A242451(A167499(n+7)+3)`
-/

namespace A244171.P791714574136422688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242451 (A167499 (n + 7) + 3).toNat

end

end A244171.P791714574136422688

/-! ## A244171.P6538490658182096273

`A242451(A000124(n+8)+7)`
-/

namespace A244171.P6538490658182096273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242451 (A000124 (n + 8) + 7).toNat

end

end A244171.P6538490658182096273

/-! ## A244171.P6172963455765279584

`A242451(A000096(n+7)+9)`
-/

namespace A244171.P6172963455765279584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242451 (A000096 (n + 7) + 9).toNat

end

end A244171.P6172963455765279584

/-! ## A244171.P8917326245431915580

`A242451(A055998(n+6)+11)`
-/

namespace A244171.P8917326245431915580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242451 (A055998 (n + 6) + 11).toNat

end

end A244171.P8917326245431915580

/-! ## A244171.P14386455726142446673

`A242451(A000217(n+10)-10-Δ[n²])`
-/

namespace A244171.P14386455726142446673
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242451 (A000217 (n + 10) - 10 - ((f1 (n + 1) : ℤ) - (f1 n : ℤ))).toNat

end

end A244171.P14386455726142446673

/-!
# A244172: Number of compositions of n in which the minimal multiplicity of parts equals 9.

The programs for A244172, there is no canonical definition to state claims against.
-/

/-! ## A244172.P7907211223579840056

`A242451(eq[9, A002262(n)])`
-/

namespace A244172.P7907211223579840056
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242451 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A244172.P7907211223579840056

/-! ## A244172.P11460063028693854181

`A242451(eq[34, A141169(n)])`
-/

namespace A244172.P11460063028693854181
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  34

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141169 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242451 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A244172.P11460063028693854181

/-! ## A244172.P8422432579752837511

`A242451(A166136(n+8)+3)`
-/

namespace A244172.P8422432579752837511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242451 (A166136 (n + 8) + 3).toNat

end

end A244172.P8422432579752837511

/-! ## A244172.P10829277128029106624

`A242451(A167499(n+8)+4)`
-/

namespace A244172.P10829277128029106624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242451 (A167499 (n + 8) + 4).toNat

end

end A244172.P10829277128029106624

/-! ## A244172.P892956956415336531

`A242451(A000096(n+8)+10)`
-/

namespace A244172.P892956956415336531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242451 (A000096 (n + 8) + 10).toNat

end

end A244172.P892956956415336531

/-! ## A244172.P13361840641691773008

`A242451(eq[10, A002260(n+1)])`
-/

namespace A244172.P13361840641691773008
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242451 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A244172.P13361840641691773008

/-! ## A244172.P5872382081443910054

`A242451(A000124(n+10)-n-2)`
-/

namespace A244172.P5872382081443910054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242451 (A000124 (n + 10) - (n : ℤ) - 2).toNat

end

end A244172.P5872382081443910054

/-!
# A244173: Number of compositions of n in which the minimal multiplicity of parts equals 10.

The programs for A244173, there is no canonical definition to state claims against.
-/

/-! ## A244173.P6007715204782821401

`A242451(A167499(n+9)+5)`
-/

namespace A244173.P6007715204782821401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242451 (A167499 (n + 9) + 5).toNat

end

end A244173.P6007715204782821401

/-! ## A244173.P17694463786679669769

`A242451(eq[11, A002260(n+1)])`
-/

namespace A244173.P17694463786679669769
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242451 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A244173.P17694463786679669769

/-! ## A244173.P6914406340735176523

`A242451(A000217(n+11)-(n+1))`
-/

namespace A244173.P6914406340735176523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242451 (A000217 (n + 11) - (n + 1 : ℤ)).toNat

end

end A244173.P6914406340735176523

/-! ## A244173.P6795536132418518442

`A242451(A008458(n+9)+A000124(n+4))`
-/

namespace A244173.P6795536132418518442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242451 (A008458 (n + 9) + A000124 (n + 4)).toNat

end

end A244173.P6795536132418518442

/-! ## A244173.P18199251723436785185

`A242451(A008486(n+12)+A000124(n+7))`
-/

namespace A244173.P18199251723436785185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242451 (A008486 (n + 12) + A000124 (n + 7)).toNat

end

end A244173.P18199251723436785185

/-!
# A244174: Number of compositions of 3n in which the minimal multiplicity of parts equals n.

The programs for A244174, the canonical program `A244174.P4509041346285223304` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A244174 has offset 0).

The definition of A244174 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 169 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A244174.P4509041346285223304

`floor((4-2/n)*a(n-1))-2` with `a(0)=1, a(1)=3`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A244174

/-- `floor((4-2/n)*a(n-1))-2` -/
def P4509041346285223304.Spec : Prop :=
  ∀ n, P4509041346285223304.a n = A244174 n

theorem P4509041346285223304.correct : P4509041346285223304.Spec := by
  intro n
  simp only [A244174]

end A244174

/-! ## A244174.P13636390288114103221

`or(1, record[a(n-1)/(floor(n/2)/n-1)])` with `a(0)=1`
-/

namespace A244174.P13636390288114103221
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1] fun n f1 =>
  f1 (n - 1) / ((⌊(n : ℚ) / 2⌋ : ℚ) / (n : ℚ) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)))

end

end A244174.P13636390288114103221

namespace A244174

/-- `or(1, record[a(n-1)/(floor(n/2)/n-1)])` -/
def P13636390288114103221.Spec : Prop :=
  ∀ n, P13636390288114103221.a n = A244174 n

end A244174

/-! ## A244174.P7437574494424280495

`record[a(n-1)/(floor(n/2)/n-1)]+1` with `a(0)=0, a(1)=2`
-/

namespace A244174.P7437574494424280495
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [0, 2] fun n f1 =>
  f1 (n - 1) / ((⌊(n : ℚ) / 2⌋ : ℚ) / (n : ℚ) - 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 1

end

end A244174.P7437574494424280495

namespace A244174

/-- `record[a(n-1)/(floor(n/2)/n-1)]+1` -/
def P7437574494424280495.Spec : Prop :=
  ∀ n, P7437574494424280495.a n = (A244174 n : ℚ)

end A244174

/-! ## A244174.P11258828407241956124

`xor(1, record[a(n-1)/(floor(n/2)/n-1)])` with `a(0)=0, a(1)=2`
-/

namespace A244174.P11258828407241956124
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [0, 2] fun n f1 =>
  f1 (n - 1) / ((⌊(n : ℚ) / 2⌋ : ℚ) / (n : ℚ) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)))

end

end A244174.P11258828407241956124

namespace A244174

/-- `xor(1, record[a(n-1)/(floor(n/2)/n-1)])` -/
def P11258828407241956124.Spec : Prop :=
  ∀ n, P11258828407241956124.a n = A244174 n

end A244174

/-! ## A244174.P16740924391523382527

`or(1, A000984(n))`
-/

namespace A244174.P16740924391523382527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A000984 n)

end

end A244174.P16740924391523382527

namespace A244174

/-- `or(1, A000984(n))` -/
def P16740924391523382527.Spec : Prop :=
  ∀ n, P16740924391523382527.a n = A244174 n

end A244174

/-! ## A244174.P13556422489009311766

`record[or(1, A081668(n))]`
-/

namespace A244174.P13556422489009311766
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A081668 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A244174.P13556422489009311766

namespace A244174

/-- `record[or(1, A081668(n))]` -/
def P13556422489009311766.Spec : Prop :=
  ∀ n, P13556422489009311766.a n = A244174 n

end A244174

/-! ## A244174.P14800283292677652996

`record[or(1, A126869(n))]`
-/

namespace A244174.P14800283292677652996
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A126869 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A244174.P14800283292677652996

namespace A244174

/-- `record[or(1, A126869(n))]` -/
def P14800283292677652996.Spec : Prop :=
  ∀ n, P14800283292677652996.a n = A244174 n

end A244174

/-! ## A244174.P16528978194744420727

`record[or(1, A126930(n))]`
-/

namespace A244174.P16528978194744420727
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A126930 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A244174.P16528978194744420727

namespace A244174

/-- `record[or(1, A126930(n))]` -/
def P16528978194744420727.Spec : Prop :=
  ∀ n, P16528978194744420727.a n = A244174 n

end A244174

/-! ## A244174.P874064290410691490

`or(1, A001405(2*n))`
-/

namespace A244174.P874064290410691490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A001405 (2 * n))

end

end A244174.P874064290410691490

namespace A244174

/-- `or(1, A001405(2*n))` -/
def P874064290410691490.Spec : Prop :=
  ∀ n, P874064290410691490.a n = A244174 n

end A244174

/-! ## A244174.P13771476245201920705

`or(1, A063886(2*n))`
-/

namespace A244174.P13771476245201920705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A063886 (2 * n))

end

end A244174.P13771476245201920705

namespace A244174

/-- `or(1, A063886(2*n))` -/
def P13771476245201920705.Spec : Prop :=
  ∀ n, P13771476245201920705.a n = A244174 n

end A244174

/-! ## A244174.P9605551148104585306

`or(1, A081668(2*n))`
-/

namespace A244174.P9605551148104585306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A081668 (2 * n))

end

end A244174.P9605551148104585306

namespace A244174

/-- `or(1, A081668(2*n))` -/
def P9605551148104585306.Spec : Prop :=
  ∀ n, P9605551148104585306.a n = A244174 n

end A244174

/-! ## A244174.P5759879471149215508

`or(1, A089849(2*n))`
-/

namespace A244174.P5759879471149215508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A089849 (2 * n))

end

end A244174.P5759879471149215508

namespace A244174

/-- `or(1, A089849(2*n))` -/
def P5759879471149215508.Spec : Prop :=
  ∀ n, P5759879471149215508.a n = A244174 n

end A244174

/-! ## A244174.P18123548734827568243

`or(1, A126869(2*n))`
-/

namespace A244174.P18123548734827568243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A126869 (2 * n))

end

end A244174.P18123548734827568243

namespace A244174

/-- `or(1, A126869(2*n))` -/
def P18123548734827568243.Spec : Prop :=
  ∀ n, P18123548734827568243.a n = A244174 n

end A244174

/-! ## A244174.P16003881459338570546

`or(1, A126930(2*n))`
-/

namespace A244174.P16003881459338570546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A126930 (2 * n))

end

end A244174.P16003881459338570546

namespace A244174

/-- `or(1, A126930(2*n))` -/
def P16003881459338570546.Spec : Prop :=
  ∀ n, P16003881459338570546.a n = A244174 n

end A244174

/-! ## A244174.P1821088285648162429

`or(1, A128014(2*n))`
-/

namespace A244174.P1821088285648162429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A128014 (2 * n))

end

end A244174.P1821088285648162429

namespace A244174

/-- `or(1, A128014(2*n))` -/
def P1821088285648162429.Spec : Prop :=
  ∀ n, P1821088285648162429.a n = A244174 n

end A244174

/-! ## A244174.P310702719284592300

`or(1, A129383(2*n))`
-/

namespace A244174.P310702719284592300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A129383 (2 * n))

end

end A244174.P310702719284592300

namespace A244174

/-- `or(1, A129383(2*n))` -/
def P310702719284592300.Spec : Prop :=
  ∀ n, P310702719284592300.a n = A244174 n

end A244174

/-! ## A244174.P13006403422047449782

`or(1, A318910(2*n))`
-/

namespace A244174.P13006403422047449782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A318910 (2 * n))

end

end A244174.P13006403422047449782

namespace A244174

/-- `or(1, A318910(2*n))` -/
def P13006403422047449782.Spec : Prop :=
  ∀ n, P13006403422047449782.a n = A244174 n

end A244174

/-! ## A244174.P7161623131976202807

`or(1, A045992(n)+n)`
-/

namespace A244174.P7161623131976202807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A045992 n + (n : ℤ))

end

end A244174.P7161623131976202807

namespace A244174

/-- `or(1, A045992(n)+n)` -/
def P7161623131976202807.Spec : Prop :=
  ∀ n, P7161623131976202807.a n = A244174 n

end A244174

/-! ## A244174.P17645167613676853943

`or(1, A134758(n)-n)`
-/

namespace A244174.P17645167613676853943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A134758 n - (n : ℤ))

end

end A244174.P17645167613676853943

namespace A244174

/-- `or(1, A134758(n)-n)` -/
def P17645167613676853943.Spec : Prop :=
  ∀ n, P17645167613676853943.a n = A244174 n

end A244174

/-! ## A244174.P263459409651505628

`∑{d}[n, A007727(#)]+1`
-/

namespace A244174.P263459409651505628
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007727 d + 1

end

end A244174.P263459409651505628

namespace A244174

/-- `∑{d}[n, A007727(#)]+1` -/
def P263459409651505628.Spec : Prop :=
  ∀ n, P263459409651505628.a n = A244174 n

end A244174

/-!
# A244176: Number of length n+4 0..n arrays with no five consecutive elements with pattern ababa or abbba (possibly a=b) and new values 0..n introduced in 0..n order.

The programs for A244176, there is no canonical definition to state claims against.
-/

/-! ## A244176.P14012496916489935802

`A244185((n+1)²+n²)`
-/

namespace A244176.P14012496916489935802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244185 ((n + 1) ^ 2 + n ^ 2)

end

end A244176.P14012496916489935802

/-! ## A244176.P6682234166118519968

`lcm((-1)^n, A244185(A001844(n)))`
-/

namespace A244176.P6682234166118519968
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((-1) ^ n) (A244185 (A001844 n).toNat)

end

end A244176.P6682234166118519968

/-! ## A244176.P11192525985129240073

`record[A003982(n)*A244185(n+1)]`
-/

namespace A244176.P11192525985129240073
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A244185 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A244176.P11192525985129240073

/-! ## A244176.P15224800242046957792

`record[gcd(A037012(n), A244185(n+1))]`
-/

namespace A244176.P15224800242046957792
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A037012 n) (A244185 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A244176.P15224800242046957792

/-! ## A244176.P7678339896971488313

`A007318(C(2, n))*A244185(A001844(n))`
-/

namespace A244176.P7678339896971488313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A244185 (A001844 n).toNat

end

end A244176.P7678339896971488313

/-!
# A244177: Number of length n+4 0..2 arrays with no five consecutive elements with pattern ababa or abbba (possibly a=b) and new values 0..2 introduced in 0..2 order.

The programs for A244177, there is no canonical definition to state claims against.
-/

/-! ## A244177.P16521801092474154457

`A244185(∑[n+2])`
-/

namespace A244177.P16521801092474154457
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244185 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A244177.P16521801092474154457

/-! ## A244177.P12597347393813858141

`record[A244185(A347633(n+1)+1)]`
-/

namespace A244177.P12597347393813858141
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244185 (A347633 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A244177.P12597347393813858141

/-! ## A244177.P1699347240798965121

`record[A244185(A000096(A020986(n)))]`
-/

namespace A244177.P1699347240798965121
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244185 (A000096 (A020986 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A244177.P1699347240798965121

/-! ## A244177.P9348113224446691261

`record[A244185(A000096(A126759(n)))]`
-/

namespace A244177.P9348113224446691261
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244185 (A000096 (A126759 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A244177.P9348113224446691261

/-! ## A244177.P15113482878733514509

`record[A244185(A000096(A002260(n+1)))]`
-/

namespace A244177.P15113482878733514509
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244185 (A000096 (A002260 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A244177.P15113482878733514509

/-! ## A244177.P8785981952376125450

`record[A244185(A000096(A003602(n+1)))]`
-/

namespace A244177.P8785981952376125450
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244185 (A000096 (A003602 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A244177.P8785981952376125450

/-!
# A244178: Number of length n+4 0..3 arrays with no five consecutive elements with pattern ababa or abbba (possibly a=b) and new values 0..3 introduced in 0..3 order.

The programs for A244178, there is no canonical definition to state claims against.
-/

/-! ## A244178.P4918315830864982497

`A244185(∑[n+3]+1)`
-/

namespace A244178.P4918315830864982497
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244185 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A244178.P4918315830864982497

/-! ## A244178.P6679714328935865575

`record[A244185(A347633(n+4))]`
-/

namespace A244178.P6679714328935865575
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244185 (A347633 (n + 4)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A244178.P6679714328935865575

/-!
# A244179: Number of length n+4 0..4 arrays with no five consecutive elements with pattern ababa or abbba (possibly a=b) and new values 0..4 introduced in 0..4 order.

The programs for A244179, there is no canonical definition to state claims against.
-/

/-! ## A244179.P4118277077914748809

`A244185(∑[n+5]+2-n)`
-/

namespace A244179.P4118277077914748809
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244185 (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + (2 - (n : ℤ))).toNat

end

end A244179.P4118277077914748809

/-! ## A244179.P8436252590717321446

`abs(3-A244185(A027379(n+2)))+3`
-/

namespace A244179.P8436252590717321446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |3 - A244185 (A027379 (n + 2)).toNat| + 3

end

end A244179.P8436252590717321446

/-! ## A244179.P8834788428108921737

`or(A000007(n), A244185(A027379(n+2)))`
-/

namespace A244179.P8834788428108921737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A244185 (A027379 (n + 2)).toNat)

end

end A244179.P8834788428108921737

/-! ## A244179.P9128223814158704544

`A244185(A027379(n+2))+A000007(n+1)`
-/

namespace A244179.P9128223814158704544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244185 (A027379 (n + 2)).toNat + A000007 (n + 1)

end

end A244179.P9128223814158704544

/-! ## A244179.P9958121665631214981

`A000010(ceil(2/(n+1)))*A244185(A027379(n+2))`
-/

namespace A244179.P9958121665631214981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 ⌈2 / (n + 1 : ℚ)⌉.toNat * A244185 (A027379 (n + 2)).toNat

end

end A244179.P9958121665631214981

/-! ## A244179.P14355581343601445699

`A143201(A000040(n+1))*A244185(A027379(n+2))`
-/

namespace A244179.P14355581343601445699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143201 (A000040 (n + 1)).toNat * A244185 (A027379 (n + 2)).toNat

end

end A244179.P14355581343601445699

/-! ## A244179.P1532933749463250696

`A000035(A178251(n+1))*A244185(A027379(n+2))`
-/

namespace A244179.P1532933749463250696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A178251 (n + 1)).toNat * A244185 (A027379 (n + 2)).toNat

end

end A244179.P1532933749463250696

/-! ## A244179.P1670092294637221430

`A000045(A014963(2*(n+1)))*A244185(A027379(n+2))`
-/

namespace A244179.P1670092294637221430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A014963 (2 * (n + 1))).toNat * A244185 (A027379 (n + 2)).toNat

end

end A244179.P1670092294637221430

/-! ## A244179.P13086723876379748795

`A244185(Δ[A006503(n+1)])%A219318(n)`
-/

namespace A244179.P13086723876379748795
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006503 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A244185 (f1 (n + 1) - f1 n).toNat) (A219318 (n + 15))

end

end A244179.P13086723876379748795

/-!
# A244180: Number of length n+4 0..5 arrays with no five consecutive elements with pattern ababa or abbba (possibly a=b) and new values 0..5 introduced in 0..5 order.

The programs for A244180, there is no canonical definition to state claims against.
-/

/-! ## A244180.P16408284378886429883

`A244185(A046691(n+3))`
-/

namespace A244180.P16408284378886429883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244185 (A046691 (n + 3)).toNat

end

end A244180.P16408284378886429883

/-! ## A244180.P12986566287674880792

`A244185(A027379(n+3)-1)`
-/

namespace A244180.P12986566287674880792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244185 (A027379 (n + 3) - 1).toNat

end

end A244180.P12986566287674880792

/-! ## A244180.P17669544893450798061

`A244185(A155212(n+1)+4)`
-/

namespace A244180.P17669544893450798061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244185 (A155212 (n + 1) + 4).toNat

end

end A244180.P17669544893450798061

/-! ## A244180.P1212943068591269738

`A244185(A000124(n+5)-5)`
-/

namespace A244180.P1212943068591269738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244185 (A000124 (n + 5) - 5).toNat

end

end A244180.P1212943068591269738

/-! ## A244180.P13296748465629030750

`A244185(n+4+A027379(n+2))`
-/

namespace A244180.P13296748465629030750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244185 ((n + 4 : ℤ) + A027379 (n + 2)).toNat

end

end A244180.P13296748465629030750

/-! ## A244180.P5707479982686836287

`A244185(A000217(n+6)-(n+10))`
-/

namespace A244180.P5707479982686836287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244185 (A000217 (n + 6) - (n + 10 : ℤ)).toNat

end

end A244180.P5707479982686836287

/-!
# A244181: Number of length n+4 0..6 arrays with no five consecutive elements with pattern ababa or abbba (possibly a=b) and new values 0..6 introduced in 0..6 order.

The programs for A244181, there is no canonical definition to state claims against.
-/

/-! ## A244181.P10510940381025260414

`A244185(A052905(n+3))`
-/

namespace A244181.P10510940381025260414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244185 (A052905 (n + 3)).toNat

end

end A244181.P10510940381025260414

/-! ## A244181.P14566051744637247948

`A244185(A027379(n+4)-2)`
-/

namespace A244181.P14566051744637247948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244185 (A027379 (n + 4) - 2).toNat

end

end A244181.P14566051744637247948

/-! ## A244181.P14548471402326619445

`A244185(A000217(n+6)-5)`
-/

namespace A244181.P14548471402326619445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244185 (A000217 (n + 6) - 5).toNat

end

end A244181.P14548471402326619445

/-! ## A244181.P2192813884239543921

`A244185(A000124(n+6)-6)`
-/

namespace A244181.P2192813884239543921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244185 (A000124 (n + 6) - 6).toNat

end

end A244181.P2192813884239543921

/-! ## A244181.P9048226424063863611

`A244185(n+4+A027379(n+3))`
-/

namespace A244181.P9048226424063863611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244185 ((n + 4 : ℤ) + A027379 (n + 3)).toNat

end

end A244181.P9048226424063863611

/-! ## A244181.P7904359254812625145

`A244185(A007401(A027379(n+3)))`
-/

namespace A244181.P7904359254812625145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244185 (A007401 (A027379 (n + 3)).toNat).toNat

end

end A244181.P7904359254812625145

/-! ## A244181.P10325214663790212181

`A244185(A005843(n+3)+A000217(n+4))`
-/

namespace A244181.P10325214663790212181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244185 (A005843 (n + 3) + A000217 (n + 4)).toNat

end

end A244181.P10325214663790212181

/-!
# A244182: Number of length n+4 0..7 arrays with no five consecutive elements with pattern ababa or abbba (possibly a=b) and new values 0..7 introduced in 0..7 order.

The programs for A244182, there is no canonical definition to state claims against.
-/

/-! ## A244182.P6608279356897942813

`A244185(A055999(n+4))`
-/

namespace A244182.P6608279356897942813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244185 (A055999 (n + 4)).toNat

end

end A244182.P6608279356897942813

/-! ## A244182.P8800148796058595273

`A244185(A052905(n+4)-1)`
-/

namespace A244182.P8800148796058595273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244185 (A052905 (n + 4) - 1).toNat

end

end A244182.P8800148796058595273

/-! ## A244182.P11489516455685822245

`A244185(A027379(n+5)-3)`
-/

namespace A244182.P11489516455685822245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244185 (A027379 (n + 5) - 3).toNat

end

end A244182.P11489516455685822245

/-! ## A244182.P2143516339196833290

`A244185(A000124(n+7)-7)`
-/

namespace A244182.P2143516339196833290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244185 (A000124 (n + 7) - 7).toNat

end

end A244182.P2143516339196833290

/-! ## A244182.P3061256656431728458

`A244185(n+4+A027379(n+4))`
-/

namespace A244182.P3061256656431728458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244185 ((n + 4 : ℤ) + A027379 (n + 4)).toNat

end

end A244182.P3061256656431728458

/-! ## A244182.P4317832480943832775

`A244185(A005408(n+3)+A000217(n+5))`
-/

namespace A244182.P4317832480943832775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244185 (A005408 (n + 3) + A000217 (n + 5)).toNat

end

end A244182.P4317832480943832775

/-!
# A244183: Number of length n+4 0..8 arrays with no five consecutive elements with pattern ababa or abbba (possibly a=b) and new values 0..8 introduced in 0..8 order.

The programs for A244183, there is no canonical definition to state claims against.
-/

/-! ## A244183.P5644196198165504461

`A244185(A052905(n+5)-2)`
-/

namespace A244183.P5644196198165504461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244185 (A052905 (n + 5) - 2).toNat

end

end A244183.P5644196198165504461

/-! ## A244183.P13086978007941939474

`A244185(A000217(n+8)-7)`
-/

namespace A244183.P13086978007941939474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244185 (A000217 (n + 8) - 7).toNat

end

end A244183.P13086978007941939474

/-! ## A244183.P340116244394691353

`A244185(A000124(n+8)-8)`
-/

namespace A244183.P340116244394691353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244185 (A000124 (n + 8) - 8).toNat

end

end A244183.P340116244394691353

/-! ## A244183.P10548498967976390736

`A244185(n+4+A027379(n+5))`
-/

namespace A244183.P10548498967976390736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244185 ((n + 4 : ℤ) + A027379 (n + 5)).toNat

end

end A244183.P10548498967976390736

/-! ## A244183.P7964047310438840488

`A244185(A005843(n+4)+A000217(n+6))`
-/

namespace A244183.P7964047310438840488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244185 (A005843 (n + 4) + A000217 (n + 6)).toNat

end

end A244183.P7964047310438840488

/-!
# A244184: Number of length n+4 0..9 arrays with no five consecutive elements with pattern ababa or abbba (possibly a=b) and new values 0..9 introduced in 0..9 order.

The programs for A244184, there is no canonical definition to state claims against.
-/

/-! ## A244184.P390339645698661399

`A244185(A155212(n+5))`
-/

namespace A244184.P390339645698661399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244185 (A155212 (n + 5)).toNat

end

end A244184.P390339645698661399

/-! ## A244184.P11458866282812029603

`A244185(A052905(n+6)-3)`
-/

namespace A244184.P11458866282812029603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244185 (A052905 (n + 6) - 3).toNat

end

end A244184.P11458866282812029603

/-! ## A244184.P12054498481766304830

`A244185(A000124(n+9)-9)`
-/

namespace A244184.P12054498481766304830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244185 (A000124 (n + 9) - 9).toNat

end

end A244184.P12054498481766304830

/-! ## A244184.P16077383487662117022

`A244185(n+4+A027379(n+6))`
-/

namespace A244184.P16077383487662117022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244185 ((n + 4 : ℤ) + A027379 (n + 6)).toNat

end

end A244184.P16077383487662117022

/-! ## A244184.P5256152376191704252

`A244185(A005408(n+4)+A000217(n+7))`
-/

namespace A244184.P5256152376191704252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244185 (A005408 (n + 4) + A000217 (n + 7)).toNat

end

end A244184.P5256152376191704252

/-!
# A244185: T(n,k)=Number of length n+4 0..k arrays with no five consecutive elements with pattern ababa or abbba (possibly a=b) and new values 0..k introduced in 0..k order.

The programs for A244185, there is no canonical definition to state claims against.
-/

/-! ## A244185.P9693818386419252122

`A244702(n+1)-A001222(round(3/2*11^n))`
-/

namespace A244185.P9693818386419252122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244702 (n + 1) - A001222 (SequenceMachineLib.roundAway ((3 : ℚ) / 2 * (11 ^ n : ℚ))).toNat

end

end A244185.P9693818386419252122

/-!
# A244186: Primes which are the concatenation of five consecutive primes p, q, r, s, t while the sum (p + q + r + s + t) is another prime.

The programs for A244186, there is no canonical definition to state claims against.
-/

/-! ## A244186.P13937401078423134349

`A086041(eq[A000700(n+3), A066099(2*(n+1))])`
-/

namespace A244186.P13937401078423134349
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000700 (n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066099 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086041 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A244186.P13937401078423134349

/-!
# A244189: a(n) = most common final digit for a prime with n digits, or 0 if there is a tie.

The programs for A244189, there is no canonical definition to state claims against.
-/

/-! ## A244189.P90450243518593476

`A103506(A189680(n+1))%10`
-/

namespace A244189.P90450243518593476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A103506 (A189680 (n + 1)).toNat) 10

end

end A244189.P90450243518593476

/-!
# A244193: Numbers n such that the difference between the greatest prime divisor of n and the sum of the other distinct prime divisors is equal to +-1.

The programs for A244193, there is no canonical definition to state claims against.
-/

/-! ## A244193.P9503549140259943050

`∩[A114989(n+1), A141698(n+1)]`
-/

namespace A244193.P9503549140259943050
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114989 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141698 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A244193.P9503549140259943050

/-! ## A244193.P9126762027828077654

`∩[A114989(n+1), A364348(n+1)]`
-/

namespace A244193.P9126762027828077654
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114989 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364348 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A244193.P9126762027828077654

/-! ## A244193.P2101798569314706896

`∩[A114989(n+1), A381433(n+1)]`
-/

namespace A244193.P2101798569314706896
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114989 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381433 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A244193.P2101798569314706896

/-! ## A244193.P6570932290010944120

`∩[A114989(n+1), A383513(n+1)]`
-/

namespace A244193.P6570932290010944120
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114989 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383513 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A244193.P6570932290010944120

/-! ## A244193.P1056870697307158953

`∩[A049094(n+1), A318782(n+1)]`
-/

namespace A244193.P1056870697307158953
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049094 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318782 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A244193.P1056870697307158953

/-!
# A244197: Number of ballot sequences of length n having largest descent 1.

The programs for A244197, there is no canonical definition to state claims against.
-/

/-! ## A244197.P2167003437527887952

`record[A238128(∑[n]+1)]`
-/

namespace A244197.P2167003437527887952
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238128 (∑ j ∈ Finset.range (n + 1), f2 j + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A244197.P2167003437527887952

/-! ## A244197.P8405949499203268236

`A238128(∑[n+3]+4)`
-/

namespace A244197.P8405949499203268236
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238128 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A244197.P8405949499203268236

/-! ## A244197.P2563834104675115038

`record[A010054(n)*A238128(n+1)]`
-/

namespace A244197.P2563834104675115038
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A238128 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A244197.P2563834104675115038

/-! ## A244197.P16104417063448575638

`A238128(A000124(n+3))%A094429(n+2)`
-/

namespace A244197.P16104417063448575638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A238128 (A000124 (n + 3)).toNat) (A094429 (n + 2))

end

end A244197.P16104417063448575638

/-! ## A244197.P17670910372736453779

`record[C(A238128(n), A331160(n))]`
-/

namespace A244197.P17670910372736453779
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A238128 n).toNat (A331160 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A244197.P17670910372736453779

/-!
# A244198: Number of ballot sequences of length n having largest descent 2.

The programs for A244198, there is no canonical definition to state claims against.
-/

/-! ## A244198.P3282374005798346925

`A238128(∑[n+4]+8)`
-/

namespace A244198.P3282374005798346925
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238128 (∑ j ∈ Finset.range (n + 1), f1 j + 8)

end

end A244198.P3282374005798346925

/-! ## A244198.P7486399041981998872

`record[A238129(∑[n+1]+2)]`
-/

namespace A244198.P7486399041981998872
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238129 (∑ j ∈ Finset.range (n + 1), f2 j + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A244198.P7486399041981998872

/-! ## A244198.P8454953301374778222

`A238129(∑[n+3]+n+9)`
-/

namespace A244198.P8454953301374778222
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238129 (∑ j ∈ Finset.range (n + 1), f1 j + (n + 9))

end

end A244198.P8454953301374778222

/-! ## A244198.P2250952739350975561

`record[gcd(A238129(n), A303913(n))]`
-/

namespace A244198.P2250952739350975561
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A238129 n) (A303913 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A244198.P2250952739350975561

/-! ## A244198.P14296782704843925977

`record[A238128(A133263(n)%A038577(n))]`
-/

namespace A244198.P14296782704843925977
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238128 (Int.tmod (A133263 n) (A038577 n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A244198.P14296782704843925977

/-!
# A244199: Number of ballot sequences of length n having largest descent 3.

The programs for A244199, there is no canonical definition to state claims against.
-/

/-! ## A244199.P11073585375805484779

`A238129(∑[n+5]+13)`
-/

namespace A244199.P11073585375805484779
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238129 (∑ j ∈ Finset.range (n + 1), f1 j + 13)

end

end A244199.P11073585375805484779

/-! ## A244199.P442846177518477314

`record[A238129(C(n+1, 2)+3)]`
-/

namespace A244199.P442846177518477314
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238129 (Nat.choose (n + 1) 2 + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A244199.P442846177518477314

/-! ## A244199.P16432602305735519354

`record[A238129((n²+n)/2+3)]`
-/

namespace A244199.P16432602305735519354
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238129 (SequenceMachineLib.roundAway ((n ^ 2 + n : ℚ) / 2 + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A244199.P16432602305735519354

/-! ## A244199.P14234214559588845596

`A238128(A167614(n+4))`
-/

namespace A244199.P14234214559588845596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238128 (A167614 (n + 4)).toNat

end

end A244199.P14234214559588845596

/-! ## A244199.P8536502252097080340

`A238128(A000124(n+5)+2)`
-/

namespace A244199.P8536502252097080340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238128 (A000124 (n + 5) + 2).toNat

end

end A244199.P8536502252097080340

