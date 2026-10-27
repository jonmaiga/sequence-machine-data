import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C004
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C014
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C025
import Seq.B000.C027
import Seq.B000.C028
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
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C011
import Seq.B001.C012
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C004
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
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
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
# A192500: Half the number of nXnXn triangular binary arrays with every element unequal to at most 4 neighbors.

The programs for A192500, there is no canonical definition to state claims against.
-/

/-! ## A192500.P11388382939504730583

`A298861(∏[∑[A000124(n)]])`
-/

namespace A192500.P11388382939504730583
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298861 (∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A192500.P11388382939504730583

/-!
# A192501: Half the number of nXnXn triangular binary arrays with every element unequal to at most 5 neighbors.

The programs for A192501, there is no canonical definition to state claims against.
-/

/-! ## A192501.P11553643642401127042

`A000027(A006125(n)*A071264(n))`
-/

namespace A192501.P11553643642401127042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A006125 n * A071264 n).toNat

end

end A192501.P11553643642401127042

/-!
# A192502: G.f. satisfies: A(x) = 1 + x*f(x, A(x)) where f(,) is Ramanujan's two-variable theta function.

The programs for A192502, there is no canonical definition to state claims against.
-/

/-! ## A192502.P16417584525861089455

`A260734(A369443(n))`
-/

namespace A192502.P16417584525861089455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260734 (A369443 n).toNat

end

end A192502.P16417584525861089455

/-! ## A192502.P2769113647046525472

`record[A347030(A006921(n))]`
-/

namespace A192502.P2769113647046525472
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347030 (A006921 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A192502.P2769113647046525472

/-! ## A192502.P2220689212112950446

`∑[∑[A178210(A148710(n))-n]]`
-/

namespace A192502.P2220689212112950446
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178210 (A148710 n).toNat - (n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A192502.P2220689212112950446

/-!
# A192503: Ludic prime numbers.

The programs for A192503, there is no canonical definition to state claims against.
-/

/-! ## A192503.P15488371666365736479

`p?[A003309(n+1)]`
-/

namespace A192503.P15488371666365736479
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003309 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A192503.P15488371666365736479

/-! ## A192503.P2834984592485595451

`record[p?[A237056(n+1)]]`
-/

namespace A192503.P2834984592485595451
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237056 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A192503.P2834984592485595451

/-! ## A192503.P834847109774364733

`p?[record[A269380(n+1)]]`
-/

namespace A192503.P834847109774364733
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269380 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A192503.P834847109774364733

/-! ## A192503.P6563599168299362878

`p?[A237056(2*n+1)]`
-/

namespace A192503.P6563599168299362878
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237056 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A192503.P6563599168299362878

/-! ## A192503.P11516491112015231853

`p?[A269379(a(n-1))]` with `a(0)=2`
-/

namespace A192503.P11516491112015231853
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f1 =>
  A269379 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A192503.P11516491112015231853

/-! ## A192503.P11651465241645877774

`filter[A003309(n+1), A010051(#)]`
-/

namespace A192503.P11651465241645877774
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003309 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A192503.P11651465241645877774

/-! ## A192503.P4216648975682148799

`filter[A003309(n+1), A323153(#)]`
-/

namespace A192503.P4216648975682148799
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003309 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323153 (f1 j).toNat = 1) n)

end

end A192503.P4216648975682148799

/-! ## A192503.P6543000266984933100

`filter[A003309(n+2), A323152(#)]`
-/

namespace A192503.P6543000266984933100
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003309 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323152 (f1 j).toNat = 1) n)

end

end A192503.P6543000266984933100

/-! ## A192503.P17650289773280988718

`filter[A003309(n+2), A340371(#)]`
-/

namespace A192503.P17650289773280988718
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003309 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A340371 (f1 j).toNat = 1) n)

end

end A192503.P17650289773280988718

/-! ## A192503.P8008441670550643862

`∩[A003309(n+1), A048461(n)]`
-/

namespace A192503.P8008441670550643862
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003309 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048461 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A192503.P8008441670550643862

/-! ## A192503.P11921063378597338306

`record[A006530(2*A003309(n+1))]`
-/

namespace A192503.P11921063378597338306
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (2 * A003309 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A192503.P11921063378597338306

/-! ## A192503.P8567517842502319604

`filter[A237056(2*n+1), A010051(#)]`
-/

namespace A192503.P8567517842502319604
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237056 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A192503.P8567517842502319604

/-! ## A192503.P15617855457344445909

`filter[A237056(2*n+1), A323153(#)]`
-/

namespace A192503.P15617855457344445909
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237056 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323153 (f1 j).toNat = 1) n)

end

end A192503.P15617855457344445909

/-! ## A192503.P14139699423592219567

`∩[A000040(n+1), A003309(n+1)]`
-/

namespace A192503.P14139699423592219567
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003309 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A192503.P14139699423592219567

/-! ## A192503.P9216330985225769944

`∩[A001751(n+1), A003309(n+1)]`
-/

namespace A192503.P9216330985225769944
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001751 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003309 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A192503.P9216330985225769944

/-! ## A192503.P729331545944302486

`∩[A003309(n+1), A051948(n+1)]`
-/

namespace A192503.P729331545944302486
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003309 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051948 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A192503.P729331545944302486

/-! ## A192503.P3323450426586974555

`∩[A003309(n+1), A053577(n+1)]`
-/

namespace A192503.P3323450426586974555
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003309 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053577 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A192503.P3323450426586974555

/-! ## A192503.P15770517981479409183

`∩[A003309(n+1), A053813(n+1)]`
-/

namespace A192503.P15770517981479409183
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003309 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053813 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A192503.P15770517981479409183

/-! ## A192503.P10131511119887231773

`∩[A003309(n+1), A058363(n+1)]`
-/

namespace A192503.P10131511119887231773
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003309 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058363 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A192503.P10131511119887231773

/-! ## A192503.P12208874991699830115

`∩[A003309(n+1), A066191(n+1)]`
-/

namespace A192503.P12208874991699830115
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003309 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066191 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A192503.P12208874991699830115

/-!
# A192504: Ludic nonprime numbers.

The programs for A192504, there is no canonical definition to state claims against.
-/

/-! ## A192504.P9664747799305200294

`record[A171435(A003309(n+1))]`
-/

namespace A192504.P9664747799305200294
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171435 (A003309 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A192504.P9664747799305200294

/-! ## A192504.P4842775310554473111

`filter[A003309(n+1), A005171(#)]`
-/

namespace A192504.P4842775310554473111
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003309 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A192504.P4842775310554473111

/-! ## A192504.P7264674950922534801

`filter[A257689(n+1), A005171(#)]`
-/

namespace A192504.P7264674950922534801
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257689 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A192504.P7264674950922534801

/-! ## A192504.P1026619318629015170

`filter[A003309(n+1), A292438(#)]`
-/

namespace A192504.P1026619318629015170
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003309 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A292438 (f1 j).toNat = 1) n)

end

end A192504.P1026619318629015170

/-! ## A192504.P17835639401944972775

`filter[A257689(n+1), A292438(#)]`
-/

namespace A192504.P17835639401944972775
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257689 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A292438 (f1 j).toNat = 1) n)

end

end A192504.P17835639401944972775

/-! ## A192504.P16100061888063843295

`filter[A237056(2*n+1), A005171(#)]`
-/

namespace A192504.P16100061888063843295
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237056 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A192504.P16100061888063843295

/-! ## A192504.P2925951036252350651

`filter[A237056(2*n+1), A292438(#)]`
-/

namespace A192504.P2925951036252350651
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237056 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A292438 (f1 j).toNat = 1) n)

end

end A192504.P2925951036252350651

/-! ## A192504.P17005700698351116614

`∩[A003309(n+1), A014076(n+1)]`
-/

namespace A192504.P17005700698351116614
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003309 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014076 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A192504.P17005700698351116614

/-! ## A192504.P2389956129663586693

`∩[A003309(n+1), A018252(n+1)]`
-/

namespace A192504.P2389956129663586693
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003309 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A192504.P2389956129663586693

/-! ## A192504.P6169347908384625843

`∩[A003309(n+1), A067800(n+1)]`
-/

namespace A192504.P6169347908384625843
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003309 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067800 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A192504.P6169347908384625843

/-! ## A192504.P3993943979563601950

`∩[A003309(n+1), A090818(n+1)]`
-/

namespace A192504.P3993943979563601950
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003309 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090818 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A192504.P3993943979563601950

/-! ## A192504.P1271597553631250578

`∩[A003309(n+1), A141468(n+1)]`
-/

namespace A192504.P1271597553631250578
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003309 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141468 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A192504.P1271597553631250578

/-! ## A192504.P10375873430279014472

`∩[A003309(n+1), A171993(n+1)]`
-/

namespace A192504.P10375873430279014472
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003309 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171993 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A192504.P10375873430279014472

/-! ## A192504.P3633266313845424200

`∩[A003309(n+1), A264828(n+1)]`
-/

namespace A192504.P3633266313845424200
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003309 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264828 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A192504.P3633266313845424200

/-! ## A192504.P2016654943263280510

`∩[A014076(n+1), A257689(n+1)]`
-/

namespace A192504.P2016654943263280510
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014076 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257689 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A192504.P2016654943263280510

/-! ## A192504.P15469051856220855575

`∩[A018252(n+1), A257689(n+1)]`
-/

namespace A192504.P15469051856220855575
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257689 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A192504.P15469051856220855575

/-! ## A192504.P4521283024712838644

`∩[A067800(n+1), A257689(n+1)]`
-/

namespace A192504.P4521283024712838644
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067800 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257689 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A192504.P4521283024712838644

/-! ## A192504.P2144875084303123065

`∩[A090818(n+1), A257689(n+1)]`
-/

namespace A192504.P2144875084303123065
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090818 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257689 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A192504.P2144875084303123065

/-! ## A192504.P4236669503888558671

`∩[A141468(n+1), A257689(n+1)]`
-/

namespace A192504.P4236669503888558671
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141468 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257689 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A192504.P4236669503888558671

/-! ## A192504.P8418603032942431027

`∩[A171993(n+1), A257689(n+1)]`
-/

namespace A192504.P8418603032942431027
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171993 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257689 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A192504.P8418603032942431027

/-!
# A192505: Non-ludic numbers that are prime numbers.

The programs for A192505, there is no canonical definition to state claims against.
-/

/-! ## A192505.P699942958129159190

`p?[A266419(n+1)]`
-/

namespace A192505.P699942958129159190
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266419 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A192505.P699942958129159190

/-! ## A192505.P16804614009430881113

`p?[A276447(n+1)]`
-/

namespace A192505.P16804614009430881113
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276447 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A192505.P16804614009430881113

/-! ## A192505.P8655335247964276726

`p?[A276569(n+1)]`
-/

namespace A192505.P8655335247964276726
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276569 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A192505.P8655335247964276726

/-! ## A192505.P15997295551808710427

`p?[2*A266410(n+1)+1]`
-/

namespace A192505.P15997295551808710427
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A266410 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A192505.P15997295551808710427

/-! ## A192505.P8610209970559348558

`record[A006530(A266419(n+3))]`
-/

namespace A192505.P8610209970559348558
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A266419 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A192505.P8610209970559348558

/-! ## A192505.P16254939230743198066

`filter[A266419(n+1), A010051(#)]`
-/

namespace A192505.P16254939230743198066
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266419 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A192505.P16254939230743198066

/-! ## A192505.P1498255219085520954

`filter[A276447(n+1), A010051(#)]`
-/

namespace A192505.P1498255219085520954
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276447 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A192505.P1498255219085520954

/-! ## A192505.P17520862026132086801

`filter[A276569(n+1), A010051(#)]`
-/

namespace A192505.P17520862026132086801
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276569 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A192505.P17520862026132086801

/-! ## A192505.P8658852203884021743

`filter[A266419(n+1), A323152(#)]`
-/

namespace A192505.P8658852203884021743
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266419 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323152 (f1 j).toNat = 1) n)

end

end A192505.P8658852203884021743

/-! ## A192505.P9333978027043953659

`filter[A266419(n+1), A323153(#)]`
-/

namespace A192505.P9333978027043953659
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266419 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323153 (f1 j).toNat = 1) n)

end

end A192505.P9333978027043953659

/-! ## A192505.P17228146302039009645

`filter[A276447(n+1), A323152(#)]`
-/

namespace A192505.P17228146302039009645
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276447 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323152 (f1 j).toNat = 1) n)

end

end A192505.P17228146302039009645

/-! ## A192505.P5257946832087305583

`filter[A276447(n+1), A323153(#)]`
-/

namespace A192505.P5257946832087305583
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276447 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323153 (f1 j).toNat = 1) n)

end

end A192505.P5257946832087305583

/-! ## A192505.P4366461519569444681

`filter[A276569(n+1), A323152(#)]`
-/

namespace A192505.P4366461519569444681
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276569 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323152 (f1 j).toNat = 1) n)

end

end A192505.P4366461519569444681

/-! ## A192505.P2193600460598234878

`filter[A276569(n+1), A323153(#)]`
-/

namespace A192505.P2193600460598234878
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276569 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323153 (f1 j).toNat = 1) n)

end

end A192505.P2193600460598234878

/-! ## A192505.P12715040424431247379

`filter[A276447(n+1), A327861(#)]`
-/

namespace A192505.P12715040424431247379
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276447 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A327861 (f1 j).toNat = 1) n)

end

end A192505.P12715040424431247379

/-! ## A192505.P7695256504352577336

`filter[A276569(n+1), A327861(#)]`
-/

namespace A192505.P7695256504352577336
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276569 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A327861 (f1 j).toNat = 1) n)

end

end A192505.P7695256504352577336

/-! ## A192505.P7901683910834425934

`filter[A266419(n+1), A340371(#)]`
-/

namespace A192505.P7901683910834425934
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266419 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A340371 (f1 j).toNat = 1) n)

end

end A192505.P7901683910834425934

/-! ## A192505.P3212709494633040174

`filter[A276447(n+1), A340371(#)]`
-/

namespace A192505.P3212709494633040174
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276447 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A340371 (f1 j).toNat = 1) n)

end

end A192505.P3212709494633040174

/-! ## A192505.P3334510997311240897

`filter[A276569(n+1), A340371(#)]`
-/

namespace A192505.P3334510997311240897
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276569 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A340371 (f1 j).toNat = 1) n)

end

end A192505.P3334510997311240897

/-! ## A192505.P15396428059651819500

`filter[A276447(n+1), A342460(#)]`
-/

namespace A192505.P15396428059651819500
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276447 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A342460 (f1 j).toNat = 1) n)

end

end A192505.P15396428059651819500

/-!
# A192506: Numbers that are neither ludic nor prime.

The programs for A192506, there is no canonical definition to state claims against.
-/

/-! ## A192506.P6393417511158031587

`filter[A192607(n+1), A005171(#)]`
-/

namespace A192506.P6393417511158031587
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192607 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A192506.P6393417511158031587

/-! ## A192506.P2417973463289298585

`filter[A192607(n+1), A066247(#)]`
-/

namespace A192506.P2417973463289298585
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192607 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A066247 (f1 j).toNat = 1) n)

end

end A192506.P2417973463289298585

/-! ## A192506.P13774737387451568248

`∩[A018252(n+1), A192607(n+1)]`
-/

namespace A192506.P13774737387451568248
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192607 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A192506.P13774737387451568248

/-! ## A192506.P18025916260320748870

`∩[A141468(n+1), A192607(n+1)]`
-/

namespace A192506.P18025916260320748870
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141468 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192607 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A192506.P18025916260320748870

/-! ## A192506.P2368599726799792564

`record[A191558(A192607(n+1))]`
-/

namespace A192506.P2368599726799792564
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191558 (A192607 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A192506.P2368599726799792564

/-! ## A192506.P7404780471871025406

`lt[A061397(n+1)+1, A302037(n+1)]+1`
-/

namespace A192506.P7404780471871025406
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061397 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302037 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A192506.P7404780471871025406

/-! ## A192506.P17849322465313351600

`A018252(record[A026233(A192607(n+1))])`
-/

namespace A192506.P17849322465313351600
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026233 (A192607 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A192506.P17849322465313351600

/-! ## A192506.P17920837850219403597

`record[A014683(A192607(A302032(n+1)))]`
-/

namespace A192506.P17920837850219403597
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014683 (A192607 (A302032 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A192506.P17920837850219403597

/-! ## A192506.P17116991002863558752

`filter[A237056(2*(n+1)), A005171(#)]`
-/

namespace A192506.P17116991002863558752
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237056 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A192506.P17116991002863558752

/-! ## A192506.P234399441086937054

`filter[A237056(2*(n+1)), A066247(#)]`
-/

namespace A192506.P234399441086937054
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237056 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A066247 (f1 j).toNat = 1) n)

end

end A192506.P234399441086937054

/-! ## A192506.P16994556056757002414

`record[A014683(A192607(A003963(n+1)))]`
-/

namespace A192506.P16994556056757002414
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014683 (A192607 (A003963 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A192506.P16994556056757002414

/-!
# A192507: Number of conjugacy classes of primitive elements in GF(3^n) which have trace 0.

The programs for A192507, there is no canonical definition to state claims against.
-/

/-! ## A192507.P10238680767091973671

`A192212(n+1)/(n+1)`
-/

namespace A192507.P10238680767091973671
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A192212 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A192507.P10238680767091973671

/-! ## A192507.P2577298732927708893

`∑[A004197(record[A221269(n+1)])]`
-/

namespace A192507.P2577298732927708893
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221269 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004197 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A192507.P2577298732927708893

/-! ## A192507.P16870534931136338187

`A018403(n+1)%record[A008279(n)]`
-/

namespace A192507.P16870534931136338187
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008279 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A018403 (n + 1)) (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A192507.P16870534931136338187

/-! ## A192507.P11288188780433862048

`A018666(n+1)%record[A008279(n)]`
-/

namespace A192507.P11288188780433862048
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008279 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A018666 (n + 1)) (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A192507.P11288188780433862048

/-!
# A192508: Number of conjugacy classes of primitive elements in GF(5^n) which have trace 0.

The programs for A192508, there is no canonical definition to state claims against.
-/

/-! ## A192508.P15885496935549865152

`A192213(n+1)/(n+1)`
-/

namespace A192508.P15885496935549865152
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A192213 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A192508.P15885496935549865152

/-! ## A192508.P5437853760625452889

`A000010(n+3)*A156876(A005867(n))`
-/

namespace A192508.P5437853760625452889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 3) * A156876 (A005867 n).toNat

end

end A192508.P5437853760625452889

/-!
# A192509: Number of conjugacy classes of primitive elements in GF(7^n) which have trace 0.

The programs for A192509, there is no canonical definition to state claims against.
-/

/-! ## A192509.P10538275947931097211

`A192214(n+1)/(n+1)`
-/

namespace A192509.P10538275947931097211
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A192214 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A192509.P10538275947931097211

/-! ## A192509.P7818081143242967849

`(n+1)*A334265(A000110(n))`
-/

namespace A192509.P7818081143242967849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A334265 (A000110 n).toNat

end

end A192509.P7818081143242967849

/-!
# A192510: Number of conjugacy classes of primitive elements in GF(11^n) which have trace 0.

The programs for A192510, there is no canonical definition to state claims against.
-/

/-! ## A192510.P13728296737695677185

`A192215(n+1)/(n+1)`
-/

namespace A192510.P13728296737695677185
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A192215 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A192510.P13728296737695677185

/-! ## A192510.P11110218746446465155

`floor(A192215(A008619(2*n))/A008619(2*n))`
-/

namespace A192510.P11110218746446465155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A192215 (A008619 (2 * n)).toNat : ℚ) / (A008619 (2 * n) : ℚ)⌋

end

end A192510.P11110218746446465155

/-!
# A192511: Number of conjugacy classes of primitive elements in GF(13^n) which have trace 0.

The programs for A192511, there is no canonical definition to state claims against.
-/

/-! ## A192511.P2431527566294226049

`A192216(n+1)/(n+1)`
-/

namespace A192511.P2431527566294226049
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A192216 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A192511.P2431527566294226049

/-! ## A192511.P12135354896784333160

`(n+1)^A008683(A020483(n))*A192216(n+1)`
-/

namespace A192511.P12135354896784333160
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ (A008683 (A020483 n).toNat : ℤ) * (A192216 (n + 1) : ℚ)

end

end A192511.P12135354896784333160

/-!
# A192512: Number of ludic numbers (A003309) not greater than n.

The programs for A192512, there is no canonical definition to state claims against.
-/

/-! ## A192512.P15073812147200141684

`∑[A192490(n+1)]`
-/

namespace A192512.P15073812147200141684
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192490 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A192512.P15073812147200141684

/-! ## A192512.P217473330864462764

`∑[1-Δ[A236863(n)]]`
-/

namespace A192512.P217473330864462764
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236863 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A192512.P217473330864462764

/-! ## A192512.P9024082573650761971

`∑[A237058(n+1)%2]`
-/

namespace A192512.P9024082573650761971
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A237058 (n + 1)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A192512.P9024082573650761971

/-! ## A192512.P6649792533532626127

`∑[A237427(n+1)%2]`
-/

namespace A192512.P6649792533532626127
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A237427 (n + 1)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A192512.P6649792533532626127

/-! ## A192512.P5917099385666492164

`∑[round(acot(A260739(n+1)))]`
-/

namespace A192512.P5917099385666492164
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (SequenceMachineLib.acot (A260739 (n + 1) : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A192512.P5917099385666492164

/-! ## A192512.P14977785222797597628

`∑[round(acot(A302032(n+1)))]`
-/

namespace A192512.P14977785222797597628
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (SequenceMachineLib.acot (A302032 (n + 1) : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A192512.P14977785222797597628

/-! ## A192512.P2785877249067831643

`1-A236863(n+1)+n`
-/

namespace A192512.P2785877249067831643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A236863 (n + 1) + (n : ℤ)

end

end A192512.P2785877249067831643

/-! ## A192512.P2312488383481461293

`∑[char[A003309(n+1)-1]]`
-/

namespace A192512.P2312488383481461293
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003309 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A192512.P2312488383481461293

/-! ## A192512.P6089117181739083193

`∑[char[record[A269380(n+1)]-1]]`
-/

namespace A192512.P6089117181739083193
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269380 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => ∀ l < j, f3 l < f3 j) n) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A192512.P6089117181739083193

/-! ## A192512.P11756635922670922530

`∑[A063524(A260739(n+1))]`
-/

namespace A192512.P11756635922670922530
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063524 (A260739 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A192512.P11756635922670922530

/-! ## A192512.P15144902903917121492

`∑[A049084(2*A260739(n+1))]`
-/

namespace A192512.P15144902903917121492
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049084 (2 * A260739 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A192512.P15144902903917121492

/-! ## A192512.P6099629313419198858

`∑[A302048(4*A302032(n+1))]`
-/

namespace A192512.P6099629313419198858
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302048 (4 * A302032 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A192512.P6099629313419198858

/-! ## A192512.P7690957357141015706

`∑[A080339(A255422(n+1))]`
-/

namespace A192512.P7690957357141015706
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080339 (A255422 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A192512.P7690957357141015706

/-! ## A192512.P7111195891933473405

`∑[char[A272565(n+1)-1]]`
-/

namespace A192512.P7111195891933473405
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272565 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A192512.P7111195891933473405

/-! ## A192512.P15448533506329474810

`∑[C(A001511(2*n+1), A260739(n+1))]`
-/

namespace A192512.P15448533506329474810
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A001511 (2 * n + 1)).toNat (A260739 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A192512.P15448533506329474810

/-! ## A192512.P12461166609085910555

`∑[A145649(A257733(n+1))]`
-/

namespace A192512.P12461166609085910555
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145649 (A257733 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A192512.P12461166609085910555

/-! ## A192512.P12464430057698029818

`∑[A080339(A269172(n+1))]`
-/

namespace A192512.P12464430057698029818
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080339 (A269172 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A192512.P12464430057698029818

/-! ## A192512.P13372054191450945341

`∑[A080339(A255408(n+1))]`
-/

namespace A192512.P13372054191450945341
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080339 (A255408 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A192512.P13372054191450945341

/-! ## A192512.P8273141468702564528

`∑[A008966(A260739(n+1)²)]`
-/

namespace A192512.P8273141468702564528
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008966 (A260739 (n + 1) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A192512.P8273141468702564528

/-! ## A192512.P12865821210679778754

`∑[A080339(A302026(n+1))]`
-/

namespace A192512.P12865821210679778754
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080339 (A302026 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A192512.P12865821210679778754

/-!
# A192513: Number of Hamiltonian cycles in the 3-ary de Bruijn graph.

The programs for A192513, there is no canonical definition to state claims against.
-/

/-! ## A192513.P5712134599273046159

`2*A094678(n+1)*A011782(n)`
-/

namespace A192513.P5712134599273046159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A094678 (n + 1) * A011782 n

end

end A192513.P5712134599273046159

/-! ## A192513.P13230154579009076200

`2^A028310(n)*A094678(n+1)`
-/

namespace A192513.P13230154579009076200
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A028310 n : ℤ) * (A094678 (n + 1) : ℚ)

end

end A192513.P13230154579009076200

/-! ## A192513.P11602428899298225584

`A000079(n)*A094678(A028310(n)+1)`
-/

namespace A192513.P11602428899298225584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n * A094678 (A028310 n + 1).toNat

end

end A192513.P11602428899298225584

/-! ## A192513.P10876479425652595500

`A060546(A004277(n))*A094678(n+1)`
-/

namespace A192513.P10876479425652595500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060546 (A004277 n).toNat * A094678 (n + 1)

end

end A192513.P10876479425652595500

/-! ## A192513.P14227434393482600319

`A094678(n+1)*A137688(A000124(n))`
-/

namespace A192513.P14227434393482600319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094678 (n + 1) * A137688 (A000124 n).toNat

end

end A192513.P14227434393482600319

/-!
# A192516: Number of line graphs on [1,...,n].

The programs for A192516, there is no canonical definition to state claims against.
-/

/-! ## A192516.P12867075842236560631

`A300763(n^n+3)`
-/

namespace A192516.P12867075842236560631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300763 (n ^ n + 3)

end

end A192516.P12867075842236560631

/-! ## A192516.P3747074755961421712

`A269381(C(A279571(n), 2))+1`
-/

namespace A192516.P3747074755961421712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269381 (Nat.choose (A279571 n).toNat 2) + 1

end

end A192516.P3747074755961421712

/-!
# A192517: Table read by antidiagonals: T(n,k) = number of multigraphs with n vertices and k edges, with no loops allowed (n >= 1, k >= 0).

The programs for A192517, there is no canonical definition to state claims against.
-/

/-! ## A192517.P3535159926282866674

`A263270(A138352(n))`
-/

namespace A192517.P3535159926282866674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263270 (A138352 n).toNat

end

end A192517.P3535159926282866674

/-! ## A192517.P18035311978410983495

`A034973(A138352(n)+1)`
-/

namespace A192517.P18035311978410983495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034973 (A138352 n + 1).toNat

end

end A192517.P18035311978410983495

/-! ## A192517.P14645248011444968286

`A003056(A138352(n)+A011731(n))`
-/

namespace A192517.P14645248011444968286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A138352 n + A011731 n).toNat

end

end A192517.P14645248011444968286

/-! ## A192517.P6384107211103442697

`A003056(A180472(n)+A138352(n))`
-/

namespace A192517.P6384107211103442697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A180472 n + A138352 n).toNat

end

end A192517.P6384107211103442697

/-! ## A192517.P15510169565326645035

`A103863(A346061(n))`
-/

namespace A192517.P15510169565326645035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103863 (A346061 n).toNat

end

end A192517.P15510169565326645035

/-!
# A192518: Monotonic ordering of set S generated by these rules: if x and y are in S then (x+1)(y+1) is in S, and 2 is in S.

The programs for A192518, there is no canonical definition to state claims against.
-/

/-! ## A192518.P12166583507469022220

`A180432(n+1)-1`
-/

namespace A192518.P12166583507469022220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180432 (n + 1) - 1

end

end A192518.P12166583507469022220

/-! ## A192518.P7534485776171912283

`A023443(A180432(n+1))`
-/

namespace A192518.P7534485776171912283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A180432 (n + 1)).toNat

end

end A192518.P7534485776171912283

/-! ## A192518.P5075637534893020720

`record[A180432(A328399(n))-1]`
-/

namespace A192518.P5075637534893020720
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180432 (A328399 n).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A192518.P5075637534893020720

/-! ## A192518.P5130869729203662469

`A023444(A180432(n+1)+1)`
-/

namespace A192518.P5130869729203662469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 (A180432 (n + 1) + 1).toNat

end

end A192518.P5130869729203662469

/-! ## A192518.P8914430763822034259

`A289207(A180432(n+1)+1)`
-/

namespace A192518.P8914430763822034259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289207 (A180432 (n + 1) + 1).toNat

end

end A192518.P8914430763822034259

/-!
# A192519: Monotonic ordering of set S generated by these rules: if x and y are in S then floor(x*y/2) is in S, and 3 is in S.

The programs for A192519, there is no canonical definition to state claims against.
-/

/-! ## A192519.P15457478758191501050

`A191284(n+3)%A134496(n+1)`
-/

namespace A192519.P15457478758191501050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A191284 (n + 3)) (A134496 (n + 1))

end

end A192519.P15457478758191501050

/-! ## A192519.P6540254405386535125

`A191284(n+3)%A325387(A325415(n))`
-/

namespace A192519.P6540254405386535125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A191284 (n + 3)) (A325387 (A325415 n).toNat)

end

end A192519.P6540254405386535125

/-! ## A192519.P8268718228224077045

`A348616(A325396(n+1))+A191284(n+3)`
-/

namespace A192519.P8268718228224077045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348616 (A325396 (n + 1)).toNat + A191284 (n + 3)

end

end A192519.P8268718228224077045

/-! ## A192519.P12093821163930489766

`A191284(n+3)+A010052(A191211(2*(n+2)))`
-/

namespace A192519.P12093821163930489766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191284 (n + 3) + A010052 (A191211 (2 * (n + 2))).toNat

end

end A192519.P12093821163930489766

/-! ## A192519.P11477505215533201515

`∩[A191284(n+1), A192452(n+1)]`
-/

namespace A192519.P11477505215533201515
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191284 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192452 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A192519.P11477505215533201515

/-!
# A192521: Monotonic ordering of set S generated by these rules: if x and y are in S then floor((x+1)(y+1)/2) is in S, and 2 is in S.

The programs for A192521, there is no canonical definition to state claims against.
-/

/-! ## A192521.P4037912467020105855

`lt[A327003(n), A017910(n)]`
-/

namespace A192521.P4037912467020105855
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327003 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017910 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A192521.P4037912467020105855

/-! ## A192521.P8712690101234132561

`lt[A327022(n), A023893(n)]`
-/

namespace A192521.P8712690101234132561
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327022 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023893 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A192521.P8712690101234132561

/-! ## A192521.P7517615270321115573

`lt[A327022(n), A027337(n)]`
-/

namespace A192521.P7517615270321115573
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327022 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027337 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A192521.P7517615270321115573

/-! ## A192521.P3744242815039918099

`lt[A327022(n), A035554(n)]`
-/

namespace A192521.P3744242815039918099
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327022 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035554 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A192521.P3744242815039918099

/-! ## A192521.P7212212430073742967

`lt[A327003(n), A147766(n)]`
-/

namespace A192521.P7212212430073742967
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327003 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147766 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A192521.P7212212430073742967

/-!
# A192523: Monotonic ordering of set S generated by these rules: if x and y are in S then 2xy-x-y is in S, and 2 is in S.

The programs for A192523, there is no canonical definition to state claims against.
-/

/-! ## A192523.P6426261661514486616

`2*A192524(n+1)`
-/

namespace A192523.P6426261661514486616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A192524 (n + 1)

end

end A192523.P6426261661514486616

/-! ## A192523.P18383721849519758859

`A004277(A192524(n+1))`
-/

namespace A192523.P18383721849519758859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A192524 (n + 1)).toNat

end

end A192523.P18383721849519758859

/-! ## A192523.P8537152881764984910

`A004275(A192524(n+1)+1)`
-/

namespace A192523.P8537152881764984910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (A192524 (n + 1) + 1).toNat

end

end A192523.P8537152881764984910

/-! ## A192523.P8562341461775107789

`A029578(A192524(n+1)/(1-3/4))`
-/

namespace A192523.P8562341461775107789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029578 (SequenceMachineLib.roundAway ((A192524 (n + 1) : ℚ) / (1 - (3 : ℚ) / 4))).toNat

end

end A192523.P8562341461775107789

/-! ## A192523.P13764002558105713381

`A005843(gcd(C(2, n+2), A192524(n+1)))`
-/

namespace A192523.P13764002558105713381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (Int.gcd (Nat.choose 2 (n + 2) : ℤ) (A192524 (n + 1)))

end

end A192523.P13764002558105713381

/-!
# A192524: (A192523)/2.

The programs for A192524, there is no canonical definition to state claims against.
-/

/-! ## A192524.P1669685086244717635

`A192523(n+1)/2`
-/

namespace A192524.P1669685086244717635
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A192523 (n + 1) : ℚ) / 2

end

end A192524.P1669685086244717635

/-! ## A192524.P17228917432756247708

`A001281(A192523(n+1))`
-/

namespace A192524.P17228917432756247708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A192523 (n + 1)).toNat

end

end A192524.P17228917432756247708

/-! ## A192524.P3905874702800411578

`A004524(A192523(n+1)+1)`
-/

namespace A192524.P3905874702800411578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (A192523 (n + 1) + 1).toNat

end

end A192524.P3905874702800411578

/-! ## A192524.P2737889640765173843

`A004526(A192523(n+1)+1)`
-/

namespace A192524.P2737889640765173843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A192523 (n + 1) + 1).toNat

end

end A192524.P2737889640765173843

/-! ## A192524.P15852967780777105294

`A028242(A192523(n+1)+1)`
-/

namespace A192524.P15852967780777105294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (A192523 (n + 1) + 1).toNat

end

end A192524.P15852967780777105294

/-!
# A192525: Monotonic ordering of set S generated by these rules: if x and y are in S then 2xy-x-y is in S, and 3 is in S.

The programs for A192525, there is no canonical definition to state claims against.
-/

/-! ## A192525.P6185823075010276418

`3*A192526(n+1)`
-/

namespace A192525.P6185823075010276418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A192526 (n + 1)

end

end A192525.P6185823075010276418

/-! ## A192525.P3511201179245498281

`3/2*A192529(n+1)`
-/

namespace A192525.P3511201179245498281
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) / 2 * (A192529 (n + 1) : ℚ)

end

end A192525.P3511201179245498281

/-! ## A192525.P17072400438608109268

`3*A273943(A192529(n+1))`
-/

namespace A192525.P17072400438608109268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A273943 (A192529 (n + 1)).toNat

end

end A192525.P17072400438608109268

/-! ## A192525.P6771748950422084209

`lcm(3, A192526(A000027(n+1)))`
-/

namespace A192525.P6771748950422084209
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 3 (A192526 (A000027 (n + 1)).toNat)

end

end A192525.P6771748950422084209

/-! ## A192525.P5701667134580137247

`lcm(A174971(n), A192526(n+1))`
-/

namespace A192525.P5701667134580137247
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A174971 n) (A192526 (n + 1))

end

end A192525.P5701667134580137247

/-!
# A192526: a(n) = A192525(n)/2.

The programs for A192526, there is no canonical definition to state claims against.
-/

/-! ## A192526.P4774252904369513002

`A192529(n+1)/2`
-/

namespace A192526.P4774252904369513002
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A192529 (n + 1) : ℚ) / 2

end

end A192526.P4774252904369513002

/-! ## A192526.P2342087657438775555

`A273943(A192529(n+1))`
-/

namespace A192526.P2342087657438775555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273943 (A192529 (n + 1)).toNat

end

end A192526.P2342087657438775555

/-! ## A192526.P5530330450298968464

`A192525(n+1)/3`
-/

namespace A192526.P5530330450298968464
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A192525 (n + 1) : ℚ) / 3

end

end A192526.P5530330450298968464

/-! ## A192526.P14975751570081233562

`A192525(n+1)-A192529(n+1)`
-/

namespace A192526.P14975751570081233562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192525 (n + 1) - A192529 (n + 1)

end

end A192526.P14975751570081233562

/-! ## A192526.P2239417909108520920

`A192525(sqrt(∑[2*n+1]))%A192529(n+1)`
-/

namespace A192526.P2239417909108520920
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A192525 (SequenceMachineLib.roundAway (Real.sqrt ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ))).toNat) (A192529 (n + 1))

end

end A192526.P2239417909108520920

/-!
# A192527: Difference sequence of A192476.

The programs for A192527, there is no canonical definition to state claims against.
-/

/-! ## A192527.P12204163572843014704

`Δ[A192476(n+1)]`
-/

namespace A192527.P12204163572843014704
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192476 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A192527.P12204163572843014704

/-! ## A192527.P7249112250382185839

`Δ[record[A192476(A065648(n))]]`
-/

namespace A192527.P7249112250382185839
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192476 (A065648 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A192527.P7249112250382185839

/-! ## A192527.P12928405847040124047

`Δ[record[A192476(A134478(n))]]`
-/

namespace A192527.P12928405847040124047
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192476 (A134478 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A192527.P12928405847040124047

/-! ## A192527.P2625158698742947975

`Δ[record[A192476(A193739(n))]]`
-/

namespace A192527.P2625158698742947975
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192476 (A193739 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A192527.P2625158698742947975

/-! ## A192527.P17473540442837588428

`abs(Δ[A192476(A028242(2*n))])`
-/

namespace A192527.P17473540442837588428
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192476 (A028242 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A192527.P17473540442837588428

/-! ## A192527.P18169528204356170949

`abs(Δ[A192476(A052938(2*n))])`
-/

namespace A192527.P18169528204356170949
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192476 (A052938 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A192527.P18169528204356170949

/-! ## A192527.P10013469792841281233

`A192476(n+2)-A192476(n+1)`
-/

namespace A192527.P10013469792841281233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192476 (n + 2) - A192476 (n + 1)

end

end A192527.P10013469792841281233

/-!
# A192528: Monotonic ordering of set S generated by these rules: if x and y are in S then 5xy-x-y is in S, and 1 is in S.

The programs for A192528, there is no canonical definition to state claims against.
-/

/-! ## A192528.P13660593723442631910

`A112674(A100793(n))`
-/

namespace A192528.P13660593723442631910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112674 (A100793 n).toNat

end

end A192528.P13660593723442631910

/-! ## A192528.P1155126647784936363

`A112674(A115916(n+1)-1)`
-/

namespace A192528.P1155126647784936363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112674 (A115916 (n + 1) - 1).toNat

end

end A192528.P1155126647784936363

/-!
# A192529: Monotonic ordering of set S generated by these rules: if x and y are in S then 3xy-x-y is in S, and 2 is in S.

The programs for A192529, there is no canonical definition to state claims against.
-/

/-! ## A192529.P86730288247973942

`2*A192526(n+1)`
-/

namespace A192529.P86730288247973942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A192526 (n + 1)

end

end A192529.P86730288247973942

/-! ## A192529.P14059081659171689226

`A192526(A000027(n+1))+A192526(n+1)`
-/

namespace A192529.P14059081659171689226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192526 (A000027 (n + 1)).toNat + A192526 (n + 1)

end

end A192529.P14059081659171689226

/-! ## A192529.P9330151769197551063

`A192526(A028310(n+1))+A192526(n+1)`
-/

namespace A192529.P9330151769197551063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192526 (A028310 (n + 1)).toNat + A192526 (n + 1)

end

end A192529.P9330151769197551063

/-! ## A192529.P603696763253620632

`lcm(A174971(n), A192526(n+1))-A192526(n+1)`
-/

namespace A192529.P603696763253620632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A174971 n) (A192526 (n + 1)) : ℤ) - A192526 (n + 1)

end

end A192529.P603696763253620632

/-!
# A192530: Index-list (modified) of the primes generated at A192583.

The programs for A192530, there is no canonical definition to state claims against.
-/

/-! ## A192530.P6584979576958242241

`A000720(A192583(n+1))`
-/

namespace A192530.P6584979576958242241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A192583 (n + 1)).toNat

end

end A192530.P6584979576958242241

/-! ## A192530.P10963801843781955530

`A252489(A192583(n+1)-1)`
-/

namespace A192530.P10963801843781955530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252489 (A192583 (n + 1) - 1).toNat

end

end A192530.P10963801843781955530

/-! ## A192530.P8969759674079142406

`A065770(A134478(n)*A192583(n+1))`
-/

namespace A192530.P8969759674079142406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065770 (A134478 n * A192583 (n + 1)).toNat

end

end A192530.P8969759674079142406

/-! ## A192530.P3529818816131928524

`A065770(A103431(n+1)*A192583(n+1))`
-/

namespace A192530.P3529818816131928524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065770 (A103431 (n + 1) * A192583 (n + 1)).toNat

end

end A192530.P3529818816131928524

/-! ## A192530.P9678690445651960200

`A065770(A008619(n)*A192583(n+1))`
-/

namespace A192530.P9678690445651960200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065770 (A008619 n * A192583 (n + 1)).toNat

end

end A192530.P9678690445651960200

/-!
# A192531: Monotonic ordering of set S generated by these rules: if x and y are in S then 3xy-2x-2y is in S, and 2 is in S.

The programs for A192531, there is no canonical definition to state claims against.
-/

/-! ## A192531.P6748590835255393193

`2*A192532(n+1)`
-/

namespace A192531.P6748590835255393193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A192532 (n + 1)

end

end A192531.P6748590835255393193

/-! ## A192531.P1751091454141353901

`A004277(A192532(n+1))`
-/

namespace A192531.P1751091454141353901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A192532 (n + 1)).toNat

end

end A192531.P1751091454141353901

/-! ## A192531.P14815478869794742433

`A004275(A192532(n+1)+1)`
-/

namespace A192531.P14815478869794742433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (A192532 (n + 1) + 1).toNat

end

end A192531.P14815478869794742433

/-! ## A192531.P16842500305064889896

`A004273(A192532(n+1)+1)-1`
-/

namespace A192531.P16842500305064889896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A192532 (n + 1) + 1).toNat - 1

end

end A192531.P16842500305064889896

/-! ## A192531.P12151657253670713286

`A005843(lcm((-1)^n, A192532(n+1)))`
-/

namespace A192531.P12151657253670713286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (Int.lcm ((-1) ^ n) (A192532 (n + 1)))

end

end A192531.P12151657253670713286

/-!
# A192532: (A192531)/2.

The programs for A192532, there is no canonical definition to state claims against.
-/

/-! ## A192532.P3652900217057911050

`A192531(n+1)/2`
-/

namespace A192532.P3652900217057911050
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A192531 (n + 1) : ℚ) / 2

end

end A192532.P3652900217057911050

/-! ## A192532.P11814065609921256137

`A001281(A192531(n+1))`
-/

namespace A192532.P11814065609921256137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A192531 (n + 1)).toNat

end

end A192532.P11814065609921256137

/-! ## A192532.P11659099103591697875

`A004524(A192531(n+1)+1)`
-/

namespace A192532.P11659099103591697875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (A192531 (n + 1) + 1).toNat

end

end A192532.P11659099103591697875

/-! ## A192532.P10474427975324621763

`A004526(A192531(n+1)+1)`
-/

namespace A192532.P10474427975324621763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A192531 (n + 1) + 1).toNat

end

end A192532.P10474427975324621763

/-! ## A192532.P9071725950127133927

`A028242(A192531(n+1)+1)`
-/

namespace A192532.P9071725950127133927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (A192531 (n + 1) + 1).toNat

end

end A192532.P9071725950127133927

/-!
# A192533: Monotonic ordering of set S generated by these rules: if x and y are in S then x^2+y^2-xy is in S, and 2 is in S.

The programs for A192533, there is no canonical definition to state claims against.
-/

/-! ## A192533.P18326727813367992554

`2*A192534(n+1)`
-/

namespace A192533.P18326727813367992554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A192534 (n + 1)

end

end A192533.P18326727813367992554

/-! ## A192533.P3461153400779781835

`A192534(n+1)+A192534(gcd(n, n+1)+n)`
-/

namespace A192533.P3461153400779781835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192534 (n + 1) + A192534 (Nat.gcd n (n + 1) + n)

end

end A192533.P3461153400779781835

/-! ## A192533.P7003473349805930751

`A192534(A000027(n+1))+A192534(n+1)`
-/

namespace A192533.P7003473349805930751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192534 (A000027 (n + 1)).toNat + A192534 (n + 1)

end

end A192533.P7003473349805930751

/-! ## A192533.P12371293843556750220

`A192534(A028310(n+1))+A192534(n+1)`
-/

namespace A192533.P12371293843556750220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192534 (A028310 (n + 1)).toNat + A192534 (n + 1)

end

end A192533.P12371293843556750220

/-! ## A192533.P6053310127711641566

`A192534(A085736(n+1))+A192534(n+1)`
-/

namespace A192533.P6053310127711641566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192534 (A085736 (n + 1)).toNat + A192534 (n + 1)

end

end A192533.P6053310127711641566

/-!
# A192534: (A192533)/2.

The programs for A192534, there is no canonical definition to state claims against.
-/

/-! ## A192534.P13356849476682445087

`A192533(n+1)/2`
-/

namespace A192534.P13356849476682445087
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A192533 (n + 1) : ℚ) / 2

end

end A192534.P13356849476682445087

/-! ## A192534.P17078972673092386349

`A014682(A192533(n+1))`
-/

namespace A192534.P17078972673092386349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A192533 (n + 1)).toNat

end

end A192534.P17078972673092386349

/-! ## A192534.P18412321937131302915

`A273943(lcm(2, A192533(n+1)))`
-/

namespace A192534.P18412321937131302915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273943 (Int.lcm 2 (A192533 (n + 1)))

end

end A192534.P18412321937131302915

/-! ## A192534.P9602834434763300893

`A273943(A192533(n+1)+char[1])`
-/

namespace A192534.P9602834434763300893
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273943 (A192533 (n + 1) + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)).toNat

end

end A192534.P9602834434763300893

/-! ## A192534.P9465899580178665122

`A304529(A192533(n+1)+A000035(2*n))`
-/

namespace A192534.P9465899580178665122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304529 (A192533 (n + 1) + A000035 (2 * n)).toNat

end

end A192534.P9465899580178665122

/-!
# A192535: Monotonic ordering of set S generated by these rules: if x and y are in S then x^2+y^2+xy is in S, and 1 is in S.

The programs for A192535, there is no canonical definition to state claims against.
-/

/-! ## A192535.P2722917109796273315

`A318368(A361396(n+1))`
-/

namespace A192535.P2722917109796273315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318368 (A361396 (n + 1)).toNat

end

end A192535.P2722917109796273315

/-!
# A192537: Monotonic ordering of set S generated by these rules: if x and y are in S then x^2+y^2-xy/2 is in S, and 2 is in S.

The programs for A192537, there is no canonical definition to state claims against.
-/

/-! ## A192537.P6954703954528212139

`2*A192538(n+1)`
-/

namespace A192537.P6954703954528212139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A192538 (n + 1)

end

end A192537.P6954703954528212139

/-! ## A192537.P6902765102697317487

`lcm(2, A192538(Δ[n²]-n))`
-/

namespace A192537.P6902765102697317487
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A192538 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat)

end

end A192537.P6902765102697317487

/-! ## A192537.P11370827435972988520

`record[2*A192538(A134478(n))]`
-/

namespace A192537.P11370827435972988520
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A192538 (A134478 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A192537.P11370827435972988520

/-! ## A192537.P591786178160049227

`record[2*A192538(A154958(n))]`
-/

namespace A192537.P591786178160049227
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A192538 (A154958 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A192537.P591786178160049227

/-! ## A192537.P2080752242389613887

`lcm(A192538(n+1), A362114(n))`
-/

namespace A192537.P2080752242389613887
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A192538 (n + 1)) (A362114 n)

end

end A192537.P2080752242389613887

/-!
# A192538: (A192537)/2.

The programs for A192538, there is no canonical definition to state claims against.
-/

/-! ## A192538.P12826263965666827818

`A192537(n+1)/2`
-/

namespace A192538.P12826263965666827818
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A192537 (n + 1) : ℚ) / 2

end

end A192538.P12826263965666827818

/-! ## A192538.P11560326256428228089

`record[ratio[A192537(A152271(n))]]`
-/

namespace A192538.P11560326256428228089
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192537 (A152271 n).toNat

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℚ) / (f2 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A192538.P11560326256428228089

/-! ## A192538.P9864654545316868551

`record[A192537(A134478(n))/2]`
-/

namespace A192538.P9864654545316868551
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A192537 (A134478 n).toNat : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A192538.P9864654545316868551

/-! ## A192538.P12787491839119695836

`record[A192537(A154958(n))/2]`
-/

namespace A192538.P12787491839119695836
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A192537 (A154958 n).toNat : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A192538.P12787491839119695836

/-! ## A192538.P7746779716797135010

`A000265(A192537(n+1))`
-/

namespace A192538.P7746779716797135010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A192537 (n + 1)).toNat

end

end A192538.P7746779716797135010

/-!
# A192540: G.f.: A(x) = Series_Reversion(x*G(x)) where G(x) = Sum_{n>=0} (-x)^(n*(n+1)/2).

The programs for A192540, there is no canonical definition to state claims against.
-/

/-! ## A192540.P18272684181423340439

`A369630(n)-A235145(A111235(n+1))`
-/

namespace A192540.P18272684181423340439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369630 n - A235145 (A111235 (n + 1)).toNat

end

end A192540.P18272684181423340439

/-! ## A192540.P2087449612155809147

`A369630(n)-A324930(A049288(n+1))`
-/

namespace A192540.P2087449612155809147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369630 n - A324930 (A049288 (n + 1)).toNat

end

end A192540.P2087449612155809147

/-! ## A192540.P2089117284106047430

`A369630(n)-A324424(A246080(n+1))`
-/

namespace A192540.P2089117284106047430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369630 n - A324424 (A246080 (n + 1)).toNat

end

end A192540.P2089117284106047430

/-! ## A192540.P10278930289116591942

`A369630(n)-A369660(A369630(n+1))`
-/

namespace A192540.P10278930289116591942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369630 n - A369660 (A369630 (n + 1)).toNat

end

end A192540.P10278930289116591942

/-! ## A192540.P1654915804691861521

`A369630(n)+A010815(A026063(3*(n+2)))`
-/

namespace A192540.P1654915804691861521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369630 n + A010815 (A026063 (3 * (n + 2))).toNat

end

end A192540.P1654915804691861521

/-!
# A192541: A046676(n) - A000607(n).

The programs for A192541, there is no canonical definition to state claims against.
-/

/-! ## A192541.P926896998067287608

`A046676(n)-A000607(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A192541.P926896998067287608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046676 n - A000607 n

end

end A192541.P926896998067287608

/-! ## A192541.P9377577078255895567

`A046676(n)-(A331849(n)+A000586(n))`
-/

namespace A192541.P9377577078255895567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046676 n - (A331849 n + A000586 n)

end

end A192541.P9377577078255895567

/-! ## A192541.P14643844773938023473

`A046676(n)-(A184199(n)+A184198(n))`
-/

namespace A192541.P14643844773938023473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046676 n - (A184199 n + A184198 n)

end

end A192541.P14643844773938023473

/-! ## A192541.P14328455162910002780

`A046676(n)-(A048165(n)+2*A184199(n))`
-/

namespace A192541.P14328455162910002780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046676 n - (A048165 n + 2 * A184199 n)

end

end A192541.P14328455162910002780

/-! ## A192541.P7167953333372101421

`A046676(n)-(2*A184198(n)-A048165(n))`
-/

namespace A192541.P7167953333372101421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046676 n - (2 * A184198 n - A048165 n)

end

end A192541.P7167953333372101421

/-! ## A192541.P8797605389442535882

`A046676(n)-(A298603(n+1)+A034891(n)-A034891(n+1))`
-/

namespace A192541.P8797605389442535882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046676 n - (A298603 (n + 1) + (A034891 n - A034891 (n + 1)))

end

end A192541.P8797605389442535882

/-! ## A192541.P1738904003178465962

`A046676(n)-(A219107(n)+A348323(n)-A348325(n))`
-/

namespace A192541.P1738904003178465962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046676 n - (A219107 n + (A348323 n - A348325 n))

end

end A192541.P1738904003178465962

/-!
# A192542: Positive numbers k such that the interval [2^k-k, 2^k] is prime-free.

The programs for A192542, there is no canonical definition to state claims against.
-/

/-! ## A192542.P7162970995468984363

`lt[n, A037036(n)]`
-/

namespace A192542.P7162970995468984363
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037036 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A192542.P7162970995468984363

/-! ## A192542.P11615447073770114486

`lt[n, A013603(n+1)]+1`
-/

namespace A192542.P11615447073770114486
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013603 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A192542.P11615447073770114486

/-! ## A192542.P18275933922494737551

`eq[n+1, (n+1)%A013603(n+2)]+2`
-/

namespace A192542.P18275933922494737551
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 1 : ℤ) (A013603 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A192542.P18275933922494737551

/-! ## A192542.P11054520570874347778

`A326178(lt[n, A013603(n+1)])`
-/

namespace A192542.P11054520570874347778
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013603 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326178 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A192542.P11054520570874347778

/-! ## A192542.P1064634205441530096

`lt[abs(1-n), A013603(A028310(n))]`
-/

namespace A192542.P1064634205441530096
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (n : ℤ)|

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013603 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A192542.P1064634205441530096

/-!
# A192543: Let r be the largest real zero of x^n - x^(n-1) - x^(n-2) - ... - 1 = 0. Then a(n) is the value of k which satisfies the equation 0.5/10^k < 2 - r < 5/10^k.

The programs for A192543, the canonical program `A192543.P5385280127348229963` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A192543 has offset 1).

The definition of A192543 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A192543.P17045817060443786987

`ceil(n/log2(10))`
-/

namespace A192543.P17045817060443786987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℝ) / Real.logb 2 (10 : ℝ)⌉

end

end A192543.P17045817060443786987

namespace A192543

/-- `ceil(n/log2(10))` -/
def P17045817060443786987.Spec : Prop :=
  ∀ n, P17045817060443786987.a n = A192543 (n + 1)

end A192543

/-! ## A192543.P17527710549060538390

`(floor(n/log2(10))+1)%comp[6*n]`
-/

namespace A192543.P17527710549060538390
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (⌊(n : ℝ) / Real.logb 2 (10 : ℝ)⌋ + 1) (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ)

end

end A192543.P17527710549060538390

namespace A192543

/-- `(floor(n/log2(10))+1)%comp[6*n]` -/
def P17527710549060538390.Spec : Prop :=
  ∀ n, P17527710549060538390.a n = A192543 (n + 1)

end A192543

/-! ## A192543.P11190236662813268107

`∑[char[A123384(n)]]`
-/

namespace A192543.P11190236662813268107
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123384 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A192543.P11190236662813268107

namespace A192543

/-- `∑[char[A123384(n)]]` -/
def P11190236662813268107.Spec : Prop :=
  ∀ n, (P11190236662813268107.a n : ℤ) = A192543 (n + 1)

end A192543

/-! ## A192543.P8637073109548521634

`1-A210435(n)+n`
-/

namespace A192543.P8637073109548521634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A210435 n + (n : ℤ)

end

end A192543.P8637073109548521634

namespace A192543

/-- `1-A210435(n)+n` -/
def P8637073109548521634.Spec : Prop :=
  ∀ n, P8637073109548521634.a n = A192543 (n + 1)

theorem P8637073109548521634.correct : P8637073109548521634.Spec := by
  intro n
  simp only [A192543, Nat.add_sub_cancel, A192543.P8637073109548521634.a, A192543.P5385280127348229963.a, A000007, A000007.P6599383543502402472.a, A034887, A034887.P3014094780525461233.a, A210435, A210435.P7595724009279329966.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A192543

/-! ## A192543.P2160996180210572688

`n-∑[char[A226721(n+1)]]`
-/

namespace A192543.P2160996180210572688
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226721 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A192543.P2160996180210572688

namespace A192543

/-- `n-∑[char[A226721(n+1)]]` -/
def P2160996180210572688.Spec : Prop :=
  ∀ n, P2160996180210572688.a n = A192543 (n + 1)

end A192543

/-! ## A192543.P5385280127348229963

`A034887(n)-A000007(n)`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A192543

/-- `A034887(n)-A000007(n)` -/
def P5385280127348229963.Spec : Prop :=
  ∀ n, P5385280127348229963.a n = A192543 (n + 1)

theorem P5385280127348229963.correct : P5385280127348229963.Spec := by
  intro n
  simp only [A192543, Nat.add_sub_cancel]

end A192543

/-! ## A192543.P12057121054802821419

`A034887(n)*A057427(n)`
-/

namespace A192543.P12057121054802821419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034887 n * A057427 n

end

end A192543.P12057121054802821419

namespace A192543

/-- `A034887(n)*A057427(n)` -/
def P12057121054802821419.Spec : Prop :=
  ∀ n, P12057121054802821419.a n = A192543 (n + 1)

end A192543

/-! ## A192543.P9186320164585808108

`and(A003817(n), A034887(n))`
-/

namespace A192543.P9186320164585808108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A003817 n) (A034887 n)

end

end A192543.P9186320164585808108

namespace A192543

/-- `and(A003817(n), A034887(n))` -/
def P9186320164585808108.Spec : Prop :=
  ∀ n, P9186320164585808108.a n = A192543 (n + 1)

end A192543

/-! ## A192543.P3279465736399390096

`and(A034887(n), A057428(n))`
-/

namespace A192543.P3279465736399390096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A034887 n) (A057428 n)

end

end A192543.P3279465736399390096

namespace A192543

/-- `and(A034887(n), A057428(n))` -/
def P3279465736399390096.Spec : Prop :=
  ∀ n, P3279465736399390096.a n = A192543 (n + 1)

end A192543

/-! ## A192543.P3770026447481804938

`and(A034887(n), A134824(n))`
-/

namespace A192543.P3770026447481804938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A034887 n) (A134824 n)

end

end A192543.P3770026447481804938

namespace A192543

/-- `and(A034887(n), A134824(n))` -/
def P3770026447481804938.Spec : Prop :=
  ∀ n, P3770026447481804938.a n = A192543 (n + 1)

end A192543

/-! ## A192543.P11161510902815271399

`A062157(n)²*A034887(n)`
-/

namespace A192543.P11161510902815271399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062157 n ^ 2 * A034887 n

end

end A192543.P11161510902815271399

namespace A192543

/-- `A062157(n)²*A034887(n)` -/
def P11161510902815271399.Spec : Prop :=
  ∀ n, P11161510902815271399.a n = A192543 (n + 1)

end A192543

/-! ## A192543.P17965061194519732631

`A034887(n)+1-A054977(n)`
-/

namespace A192543.P17965061194519732631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034887 n + (1 - A054977 n)

end

end A192543.P17965061194519732631

namespace A192543

/-- `A034887(n)+1-A054977(n)` -/
def P17965061194519732631.Spec : Prop :=
  ∀ n, P17965061194519732631.a n = A192543 (n + 1)

end A192543

/-! ## A192543.P15608776030679440061

`1-(A210435(A028310(n))-n)`
-/

namespace A192543.P15608776030679440061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (A210435 (A028310 n).toNat - (n : ℤ))

end

end A192543.P15608776030679440061

namespace A192543

/-- `1-(A210435(A028310(n))-n)` -/
def P15608776030679440061.Spec : Prop :=
  ∀ n, P15608776030679440061.a n = A192543 (n + 1)

end A192543

/-! ## A192543.P9982459205024164040

`A034887(n)-A000038(n)/2`
-/

namespace A192543.P9982459205024164040
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A034887 n : ℚ) - (A000038 n : ℚ) / 2

end

end A192543.P9982459205024164040

namespace A192543

/-- `A034887(n)-A000038(n)/2` -/
def P9982459205024164040.Spec : Prop :=
  ∀ n, P9982459205024164040.a n = (A192543 (n + 1) : ℚ)

theorem P9982459205024164040.correct : P9982459205024164040.Spec := by
  intro n
  simp only [A192543, Nat.add_sub_cancel, A192543.P9982459205024164040.a, A192543.P5385280127348229963.a, A000007, A000007.P6599383543502402472.a, A000038, A000038.P13734959004655594922.a, A034887, A034887.P3014094780525461233.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A192543

/-! ## A192543.P10811945663096496042

`A034887(n)+n-A028310(n)`
-/

namespace A192543.P10811945663096496042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034887 n + ((n : ℤ) - A028310 n)

end

end A192543.P10811945663096496042

namespace A192543

/-- `A034887(n)+n-A028310(n)` -/
def P10811945663096496042.Spec : Prop :=
  ∀ n, P10811945663096496042.a n = A192543 (n + 1)

end A192543

/-! ## A192543.P2560611725782979716

`(n-A014681(n))²*A034887(n)`
-/

namespace A192543.P2560611725782979716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - A014681 n) ^ 2 * A034887 n

end

end A192543.P2560611725782979716

namespace A192543

/-- `(n-A014681(n))²*A034887(n)` -/
def P2560611725782979716.Spec : Prop :=
  ∀ n, P2560611725782979716.a n = A192543 (n + 1)

end A192543

/-! ## A192543.P8048798263102192796

`A034887(n)-A010051(2*(n+1))`
-/

namespace A192543.P8048798263102192796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034887 n - A010051 (2 * (n + 1))

end

end A192543.P8048798263102192796

namespace A192543

/-- `A034887(n)-A010051(2*(n+1))` -/
def P8048798263102192796.Spec : Prop :=
  ∀ n, P8048798263102192796.a n = A192543 (n + 1)

end A192543

/-! ## A192543.P7472234873679592811

`∑[char[A138153(A067497(n)+1)]]`
-/

namespace A192543.P7472234873679592811
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138153 (A067497 n + 1).toNat

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A192543.P7472234873679592811

namespace A192543

/-- `∑[char[A138153(A067497(n)+1)]]` -/
def P7472234873679592811.Spec : Prop :=
  ∀ n, (P7472234873679592811.a n : ℤ) = A192543 (n + 1)

end A192543

/-! ## A192543.P15239058645590449300

`A034887(n)-A169585(2*n)`
-/

namespace A192543.P15239058645590449300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034887 n - A169585 (2 * n)

end

end A192543.P15239058645590449300

namespace A192543

/-- `A034887(n)-A169585(2*n)` -/
def P15239058645590449300.Spec : Prop :=
  ∀ n, P15239058645590449300.a n = A192543 (n + 1)

end A192543

/-! ## A192543.P11191398802441450076

`and(A034887(n), A078485(n))`
-/

namespace A192543.P11191398802441450076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A034887 n) (A078485 n)

end

end A192543.P11191398802441450076

namespace A192543

/-- `and(A034887(n), A078485(n))` -/
def P11191398802441450076.Spec : Prop :=
  ∀ n, P11191398802441450076.a n = A192543 (n + 1)

end A192543

/-!
# A192544: Bases b such that all integers m having the commuting property r(m)^2 = r(m^2), where r is cyclic replacement of digits d->(d+1) mod b, are of the form m = (b/2 - 1)*(b^k - 1)/(b - 1) + 1 for k >= 1.

The programs for A192544, the canonical program `A192544.P6167349055891237540` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A192544 has offset 1).

The definition of A192544 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A192544.P6167349055891237540

`4*(n+2)`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A192544

/-- `4*(n+2)` -/
def P6167349055891237540.Spec : Prop :=
  ∀ n, (P6167349055891237540.a n : ℤ) = A192544 (n + 1)

theorem P6167349055891237540.correct : P6167349055891237540.Spec := by
  intro n
  simp only [A192544, Nat.add_sub_cancel]

end A192544

/-!
# A192545: Numbers such that all numbers are composite when replacing exactly one digit with another, except the leading digit with zero.

The programs for A192545, there is no canonical definition to state claims against.
-/

/-! ## A192545.P6005061416255110393

`eq[0, A048853(n+1)]+1`
-/

namespace A192545.P6005061416255110393
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048853 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A192545.P6005061416255110393

/-! ## A192545.P16790896147262802383

`eq[0, A048853(A028310(n))]`
-/

namespace A192545.P16790896147262802383
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048853 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A192545.P16790896147262802383

/-! ## A192545.P10903478072566551881

`A020725(eq[0, A048853(n+1)])`
-/

namespace A192545.P10903478072566551881
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048853 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A192545.P10903478072566551881

/-! ## A192545.P14236116830193094556

`A065475(eq[0, A048853(n+1)])`
-/

namespace A192545.P14236116830193094556
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048853 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A192545.P14236116830193094556

/-! ## A192545.P14635052413411659697

`eq[0, A048853(A000038(n)+n)]`
-/

namespace A192545.P14635052413411659697
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048853 (A000038 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A192545.P14635052413411659697

/-! ## A192545.P12462362712477193323

`eq[0, A048853(A065033(2*n))]`
-/

namespace A192545.P12462362712477193323
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048853 (A065033 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A192545.P12462362712477193323

/-!
# A192546: a(n) = sum(stirling2(n,k)*stirling2(n+1,k+1),k=0..n).

The programs for A192546, there is no canonical definition to state claims against.
-/

/-! ## A192546.P4360597847611589110

`A119345(A001147(n))+A000088(n)`
-/

namespace A192546.P4360597847611589110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119345 (A001147 n).toNat + A000088 n

end

end A192546.P4360597847611589110

/-! ## A192546.P15986940095068213671

`A197911(A339836(n)*A339837(n))`
-/

namespace A192546.P15986940095068213671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197911 (A339836 n * A339837 n).toNat

end

end A192546.P15986940095068213671

/-!
# A192547: sum(stirling1(n,k)*stirling1(n+1,k+1),k=0..n).

The programs for A192547, there is no canonical definition to state claims against.
-/

/-! ## A192547.P14908931484252307095

`A327126(∑[n+2]+1)+1`
-/

namespace A192547.P14908931484252307095
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327126 (∑ j ∈ Finset.range (n + 1), f1 j + 1) + 1

end

end A192547.P14908931484252307095

/-!
# A192548: a(n) = sum(abs(stirling1(n,k))*stirling2(n+1,k+1),k=0..n).

The programs for A192548, there is no canonical definition to state claims against.
-/

/-! ## A192548.P18238608378935793892

`A164098(∏[n!])`
-/

namespace A192548.P18238608378935793892
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164098 (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A192548.P18238608378935793892

/-!
# A192549: a(n) = sum(abs(stirling1(n+1,k+1))*stirling2(n,k),k=0..n).

The programs for A192549, there is no canonical definition to state claims against.
-/

/-! ## A192549.P15973609279355534869

`n*A155469(a(n-1))` with `a(0)=1, a(1)=1`
-/

namespace A192549.P15973609279355534869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  (n : ℤ) * A155469 (a (n - 1)).toNat

end

end A192549.P15973609279355534869

/-!
# A192550: a(n) = sum(stirling2(n+1,k+1)*k!^2,k=0..n).

The programs for A192550, there is no canonical definition to state claims against.
-/

/-! ## A192550.P3957427298592919453

`∑[A000142(n)*A194640(A000522(n))]`
-/

namespace A192550.P3957427298592919453
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n * A194640 (A000522 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A192550.P3957427298592919453

/-!
# A192551: a(n) = sum(abs(stirling1(n+1,k+1))*k!^2,k=0..n).

The programs for A192551, there is no canonical definition to state claims against.
-/

/-! ## A192551.P15741762722136144872

`A320502(n)+n*a(n-1)` with `a(0)=1`
-/

namespace A192551.P15741762722136144872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A320502 n + (n : ℤ) * a (n - 1)

end

end A192551.P15741762722136144872

/-!
# A192552: a(n) = Sum_{k=0..n} Stirling2(n,k)*(-1)^(n-k)*k!^2.

The programs for A192552, there is no canonical definition to state claims against.
-/

/-! ## A192552.P13218993069180094457

`A319122(n^round(n/3))`
-/

namespace A192552.P13218993069180094457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319122 (SequenceMachineLib.roundAway ((n : ℚ) ^ (SequenceMachineLib.roundAway ((n : ℚ) / 3) : ℤ))).toNat

end

end A192552.P13218993069180094457

/-!
# A192553: Sums of powers of permutations of length n.

The programs for A192553, there is no canonical definition to state claims against.
-/

/-! ## A192553.P12676452941393956283

`A127757(A123164(n))+comp[2*n+3]`
-/

namespace A192553.P12676452941393956283
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 3

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127757 (A123164 n).toNat + (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ)

end

end A192553.P12676452941393956283

/-! ## A192553.P8497037927357492043

`A330133(n)+A283190(A238111(n))`
-/

namespace A192553.P8497037927357492043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330133 n + A283190 (A238111 n).toNat

end

end A192553.P8497037927357492043

/-! ## A192553.P15083219817090057371

`A062108(A030892(n+1)-A000078(n))`
-/

namespace A192553.P15083219817090057371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062108 (A030892 (n + 1) - A000078 n).toNat

end

end A192553.P15083219817090057371

/-!
# A192554: a(n) = Sum_{k=0..n} abs(Stirling1(n,k))*(-1)^(n-k)*k!^2.

The programs for A192554, there is no canonical definition to state claims against.
-/

/-! ## A192554.P1309523228640400481

`A002105(n+1)-A008615(A293128(n))`
-/

namespace A192554.P1309523228640400481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002105 (n + 1) - A008615 (A293128 n).toNat

end

end A192554.P1309523228640400481

/-!
# A192555: a(n) = Sum_{k=0..n} Stirling2(n+1, k+1)*(-1)^(n-k)*k!^2.

The programs for A192555, there is no canonical definition to state claims against.
-/

/-! ## A192555.P2170562907866850333

`A039879(a(n-1)+1)` with `a(0)=1, a(1)=0, a(2)=2, a(3)=18`
-/

namespace A192555.P2170562907866850333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 2, 18] fun n a =>
  A039879 (a (n - 1) + 1).toNat

end

end A192555.P2170562907866850333

/-!
# A192556: a(n) = sum(abs(stirling1(n+1,k+1))*(-1)^(n-k)*k!^2,k=0..n).

The programs for A192556, there is no canonical definition to state claims against.
-/

/-! ## A192556.P15471645741640515291

`A192554(n)-n*a(n-1)` with `a(0)=1`
-/

namespace A192556.P15471645741640515291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A192554 n - (n : ℤ) * a (n - 1)

end

end A192556.P15471645741640515291

/-!
# A192557: a(n) = Sum_{k=0..n} Stirling2(n,k)*Stirling2(n+1,k+1)*k!.

The programs for A192557, there is no canonical definition to state claims against.
-/

/-! ## A192557.P11793280947291378418

`A014235(n)-A124425(2*n+1)`
-/

namespace A192557.P11793280947291378418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014235 n - A124425 (2 * n + 1)

end

end A192557.P11793280947291378418

/-! ## A192557.P14307554842327769870

`A265706((1-n)²+n²)`
-/

namespace A192557.P14307554842327769870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265706 ((1 - (n : ℤ)) ^ 2 + (n ^ 2 : ℤ)).toNat

end

end A192557.P14307554842327769870

/-! ## A192557.P15877298492639517458

`A265707((1-n)²+n²)`
-/

namespace A192557.P15877298492639517458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265707 ((1 - (n : ℤ)) ^ 2 + (n ^ 2 : ℤ)).toNat

end

end A192557.P15877298492639517458

/-!
# A192558: a(n) = Sum_{k=0..n} stirling1(n,k)*stirling1(n+1,k+1)*k!.

The programs for A192558, there is no canonical definition to state claims against.
-/

/-! ## A192558.P16314165755154228130

`A130951(comp[2*n+3]^n)`
-/

namespace A192558.P16314165755154228130
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 3

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130951 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n ^ n)

end

end A192558.P16314165755154228130

/-!
# A192559: a(n) = sum(stirling1(n,k)^2*k!, k=0..n).

The programs for A192559, there is no canonical definition to state claims against.
-/

/-! ## A192559.P14242998746573692263

`A379820(∑[4*n])`
-/

namespace A192559.P14242998746573692263
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379820 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A192559.P14242998746573692263

/-!
# A192560: Primes of the form n + sum of proper non-divisors of n.

The programs for A192560, the canonical program `A192560.P12201452812500610226` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A192560 has offset 1).

The definition of A192560 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 116 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A192560.P12201452812500610226

`p?[∑[n+2]-∑{d}[n+1, #]]`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A192560

/-- `p?[∑[n+2]-∑{d}[n+1, #]]` -/
def P12201452812500610226.Spec : Prop :=
  ∀ n, P12201452812500610226.a n = A192560 (n + 1)

theorem P12201452812500610226.correct : P12201452812500610226.Spec := by
  intro n
  simp only [A192560, Nat.add_sub_cancel]

end A192560

/-! ## A192560.P5090335678947435301

`p?[A033879(n+1)+∑[n]]`
-/

namespace A192560.P5090335678947435301
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033879 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A192560.P5090335678947435301

namespace A192560

/-- `p?[A033879(n+1)+∑[n]]` -/
def P5090335678947435301.Spec : Prop :=
  ∀ n, P5090335678947435301.a n = A192560 (n + 1)

end A192560

/-! ## A192560.P1981562265158172942

`p?[A024816(n+1)+1+n]`
-/

namespace A192560.P1981562265158172942
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024816 (n + 1) + 1 + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A192560.P1981562265158172942

namespace A192560

/-- `p?[A024816(n+1)+1+n]` -/
def P1981562265158172942.Spec : Prop :=
  ∀ n, P1981562265158172942.a n = A192560 (n + 1)

end A192560

/-! ## A192560.P12438808617500533508

`p?[∑[n+1]-A001065(n+1)]`
-/

namespace A192560.P12438808617500533508
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - A001065 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A192560.P12438808617500533508

namespace A192560

/-- `p?[∑[n+1]-A001065(n+1)]` -/
def P12438808617500533508.Spec : Prop :=
  ∀ n, P12438808617500533508.a n = A192560 (n + 1)

end A192560

/-! ## A192560.P12155667240906715320

`p?[∑[n]+1-A237588(n+1)]`
-/

namespace A192560.P12155667240906715320
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j + 1 : ℕ) : ℤ) - A237588 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A192560.P12155667240906715320

namespace A192560

/-- `p?[∑[n]+1-A237588(n+1)]` -/
def P12155667240906715320.Spec : Prop :=
  ∀ n, P12155667240906715320.a n = A192560 (n + 1)

end A192560

/-! ## A192560.P1073116589378742010

`p?[∑[n+2]-A000203(n+1)]`
-/

namespace A192560.P1073116589378742010
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - A000203 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A192560.P1073116589378742010

namespace A192560

/-- `p?[∑[n+2]-A000203(n+1)]` -/
def P1073116589378742010.Spec : Prop :=
  ∀ n, P1073116589378742010.a n = A192560 (n + 1)

theorem P1073116589378742010.correct : P1073116589378742010.Spec := by
  intro n
  simp only [A192560, Nat.add_sub_cancel, A192560.P1073116589378742010.f2, A192560.P1073116589378742010.f1, A192560.P1073116589378742010.a, A192560.P12201452812500610226.f2, A192560.P12201452812500610226.f3, A192560.P12201452812500610226.f1, A192560.P12201452812500610226.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A192560

/-! ## A192560.P17652239831293790949

`p?[C(n+1, 2)-A033880(n+1)]`
-/

namespace A192560.P17652239831293790949
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (n + 1) 2 : ℤ) - A033880 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A192560.P17652239831293790949

namespace A192560

/-- `p?[C(n+1, 2)-A033880(n+1)]` -/
def P17652239831293790949.Spec : Prop :=
  ∀ n, P17652239831293790949.a n = A192560 (n + 1)

end A192560

/-! ## A192560.P17572081938687648384

`p?[C(n+2, 2)-A173455(n+1)]`
-/

namespace A192560.P17572081938687648384
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (n + 2) 2 : ℤ) - A173455 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A192560.P17572081938687648384

namespace A192560

/-- `p?[C(n+2, 2)-A173455(n+1)]` -/
def P17572081938687648384.Spec : Prop :=
  ∀ n, P17572081938687648384.a n = A192560 (n + 1)

end A192560

/-! ## A192560.P15082146913305613897

`p?[A235796(n+1)+A000124(n)]`
-/

namespace A192560.P15082146913305613897
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235796 (n + 1) + A000124 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A192560.P15082146913305613897

namespace A192560

/-- `p?[A235796(n+1)+A000124(n)]` -/
def P15082146913305613897.Spec : Prop :=
  ∀ n, P15082146913305613897.a n = A192560 (n + 1)

end A192560

/-! ## A192560.P4728606278688511865

`p?[A000217(n)-A033880(n+1)]`
-/

namespace A192560.P4728606278688511865
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n - A033880 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A192560.P4728606278688511865

namespace A192560

/-- `p?[A000217(n)-A033880(n+1)]` -/
def P4728606278688511865.Spec : Prop :=
  ∀ n, P4728606278688511865.a n = A192560 (n + 1)

end A192560

/-! ## A192560.P13901294610470341533

`p?[A000096(n)-A048050(n+1)]`
-/

namespace A192560.P13901294610470341533
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000096 n - A048050 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A192560.P13901294610470341533

namespace A192560

/-- `p?[A000096(n)-A048050(n+1)]` -/
def P13901294610470341533.Spec : Prop :=
  ∀ n, P13901294610470341533.a n = A192560 (n + 1)

end A192560

/-! ## A192560.P13593450023223704926

`p?[A033885(n+1)-A080956(n)]`
-/

namespace A192560.P13593450023223704926
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033885 (n + 1) - A080956 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A192560.P13593450023223704926

namespace A192560

/-- `p?[A033885(n+1)-A080956(n)]` -/
def P13593450023223704926.Spec : Prop :=
  ∀ n, P13593450023223704926.a n = A192560 (n + 1)

end A192560

/-! ## A192560.P4076267611930114175

`p?[A000217(n)+1-A237588(n+1)]`
-/

namespace A192560.P4076267611930114175
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n + (1 - A237588 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A192560.P4076267611930114175

namespace A192560

/-- `p?[A000217(n)+1-A237588(n+1)]` -/
def P4076267611930114175.Spec : Prop :=
  ∀ n, P4076267611930114175.a n = A192560 (n + 1)

end A192560

/-! ## A192560.P8625537496748908813

`p?[A055998(n)+2-A000203(n+1)]`
-/

namespace A192560.P8625537496748908813
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055998 n + (2 - A000203 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A192560.P8625537496748908813

namespace A192560

/-- `p?[A055998(n)+2-A000203(n+1)]` -/
def P8625537496748908813.Spec : Prop :=
  ∀ n, P8625537496748908813.a n = A192560 (n + 1)

end A192560

/-! ## A192560.P6091995281683318024

`p?[A000217(n)-A048050(n+1)+n]`
-/

namespace A192560.P6091995281683318024
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n - A048050 (n + 1) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A192560.P6091995281683318024

namespace A192560

/-- `p?[A000217(n)-A048050(n+1)+n]` -/
def P6091995281683318024.Spec : Prop :=
  ∀ n, P6091995281683318024.a n = A192560 (n + 1)

end A192560

/-! ## A192560.P6974537489167351845

`p?[abs(A000203(n+1)-A000096(n+1))]`
-/

namespace A192560.P6974537489167351845
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000203 (n + 1) - A000096 (n + 1)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A192560.P6974537489167351845

namespace A192560

/-- `p?[abs(A000203(n+1)-A000096(n+1))]` -/
def P6974537489167351845.Spec : Prop :=
  ∀ n, P6974537489167351845.a n = A192560 (n + 1)

end A192560

/-! ## A192560.P6076211622151533913

`p?[abs(A001065(n+1)-A000217(n+1))]`
-/

namespace A192560.P6076211622151533913
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A001065 (n + 1) - A000217 (n + 1)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A192560.P6076211622151533913

namespace A192560

/-- `p?[abs(A001065(n+1)-A000217(n+1))]` -/
def P6076211622151533913.Spec : Prop :=
  ∀ n, P6076211622151533913.a n = A192560 (n + 1)

end A192560

/-! ## A192560.P14225265565015010997

`p?[A000217(n+2)-(A000203(n+1)+1)]`
-/

namespace A192560.P14225265565015010997
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (n + 2) - (A000203 (n + 1) + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A192560.P14225265565015010997

namespace A192560

/-- `p?[A000217(n+2)-(A000203(n+1)+1)]` -/
def P14225265565015010997.Spec : Prop :=
  ∀ n, P14225265565015010997.a n = A192560 (n + 1)

end A192560

/-!
# A192561: a(n) = Sum_{k=0..n} Stirling1(n+1,k+1)^2*k!.

The programs for A192561, there is no canonical definition to state claims against.
-/

/-! ## A192561.P14500797852034279233

`A032766(n)+A004151(A303487(n))`
-/

namespace A192561.P14500797852034279233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032766 n + A004151 (A303487 n).toNat

end

end A192561.P14500797852034279233

/-!
# A192562: a(n) = sum(abs(stirling1(n,k))*stirling2(n+1,k+1)*k!,k=0..n).

The programs for A192562, there is no canonical definition to state claims against.
-/

/-! ## A192562.P9782439763353035964

`A125150(A088016(n))`
-/

namespace A192562.P9782439763353035964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125150 (A088016 n).toNat

end

end A192562.P9782439763353035964

/-!
# A192563: a(n) = Sum_{k=0..n} abs(Stirling1(n+1,k+1))*Stirling2(n+1,k+1)*k!.

The programs for A192563, there is no canonical definition to state claims against.
-/

/-! ## A192563.P15971455525399592000

`A344639(∑[4*n])`
-/

namespace A192563.P15971455525399592000
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344639 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A192563.P15971455525399592000

/-!
# A192564: a(n) = Sum_{k=0..n} abs(Stirling1(n,k))*Stirling2(n,k)*(k!)^2.

The programs for A192564, there is no canonical definition to state claims against.
-/

/-! ## A192564.P10037193158859608809

`A001951(A159347(∑[n]))`
-/

namespace A192564.P10037193158859608809
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001951 (A159347 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A192564.P10037193158859608809

/-!
# A192565: a(n) = sum(abs(stirling1(n+1,k+1))*stirling2(n,k)*k!^2,k=0..n).

The programs for A192565, there is no canonical definition to state claims against.
-/

/-! ## A192565.P7456293443499564853

`A028310(∑[A006121(n)-(n+1)])`
-/

namespace A192565.P7456293443499564853
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006121 n - (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A192565.P7456293443499564853

/-!
# A192566: a(n) = Sum_{k=0..n} abs(stirling1(n,k))*stirling2(n+1,k+1)*k!^2.

The programs for A192566, there is no canonical definition to state claims against.
-/

/-! ## A192566.P10010660547168539973

`A286420(A286450(14*a(n-1)-47*a(n-2)))` with `a(0)=1, a(1)=1, a(2)=7`
-/

namespace A192566.P10010660547168539973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 7] fun n a =>
  A286420 (A286450 (14 * a (n - 1) - 47 * a (n - 2)).toNat).toNat

end

end A192566.P10010660547168539973

/-!
# A192570: a(n) = floor(sqrt(Bell(n))).

The programs for A192570, there is no canonical definition to state claims against.
-/

/-! ## A192570.P3264216904116815413

`floor(sqrt(A000110(n)))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A192570.P3264216904116815413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A000110 n)

end

end A192570.P3264216904116815413

/-! ## A192570.P6952797971785514485

`floor(sqrt(A082951(n)))`
-/

namespace A192570.P6952797971785514485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A082951 n)

end

end A192570.P6952797971785514485

/-! ## A192570.P11667179584037651297

`floor(sqrt(abs(A292935(n))))`
-/

namespace A192570.P11667179584037651297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt |A292935 n|

end

end A192570.P11667179584037651297

/-! ## A192570.P1302441701883466036

`floor(sqrt(A011971(∑[n])))`
-/

namespace A192570.P1302441701883466036
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A011971 (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A192570.P1302441701883466036

/-! ## A192570.P9997421059399954439

`floor(sqrt(A095149(∑[n])))`
-/

namespace A192570.P9997421059399954439
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A095149 (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A192570.P9997421059399954439

/-! ## A192570.P11633771751208370425

`floor(sqrt(A327884(∑[n])))`
-/

namespace A192570.P11633771751208370425
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A327884 (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A192570.P11633771751208370425

/-! ## A192570.P14675822467413208137

`floor(sqrt(Δ[A005001(n)]))`
-/

namespace A192570.P14675822467413208137
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005001 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (f1 (n + 1) - f1 n)

end

end A192570.P14675822467413208137

/-! ## A192570.P9199011741779093505

`floor(sqrt(A188164(2*n)))`
-/

namespace A192570.P9199011741779093505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A188164 (2 * n))

end

end A192570.P9199011741779093505

/-! ## A192570.P89332540528205658

`floor(sqrt(A000296(n+1)+A000296(n)))`
-/

namespace A192570.P89332540528205658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A000296 (n + 1) + A000296 n)

end

end A192570.P89332540528205658

/-! ## A192570.P6647249283829544903

`floor(sqrt(A033306(∑[n])))`
-/

namespace A192570.P6647249283829544903
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A033306 (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A192570.P6647249283829544903

/-!
# A192571: a(n) = sum(floor(sqrt(Bell(k))),k=0..n).

The programs for A192571, there is no canonical definition to state claims against.
-/

/-! ## A192571.P8518121779130462131

`∑[A192570(n)]`
-/

namespace A192571.P8518121779130462131
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192570 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A192571.P8518121779130462131

/-! ## A192571.P5310196272832996670

`∑[2*A192572(n)]-A192572(n)`
-/

namespace A192571.P5310196272832996670
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A192572 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A192572 n

end

end A192571.P5310196272832996670

/-! ## A192571.P6528037309427099794

`∑[floor(sqrt(A000110(n)))]`
-/

namespace A192571.P6528037309427099794
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A000110 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A192571.P6528037309427099794

/-! ## A192571.P12250659540123869730

`∑[floor(sqrt(A082951(n)))]`
-/

namespace A192571.P12250659540123869730
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A082951 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A192571.P12250659540123869730

/-! ## A192571.P1199890850321629813

`∑[floor(sqrt(A055883((n²+n)/2)))]`
-/

namespace A192571.P1199890850321629813
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A055883 (SequenceMachineLib.roundAway ((n ^ 2 + n : ℚ) / 2)).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A192571.P1199890850321629813

/-!
# A192572: a(n) = Sum_{k=0..n} (-1)^(n-k)*floor(sqrt(Bell(k))).

The programs for A192572, there is no canonical definition to state claims against.
-/

/-! ## A192572.P11296952088761045232

`A192570(n)-a(n-1)` with `a(0)=1`
-/

namespace A192572.P11296952088761045232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A192570 n - a (n - 1)

end

end A192572.P11296952088761045232

/-! ## A192572.P2232197654670905312

`floor(sqrt(A000110(n)))-a(n-1)` with `a(0)=1`
-/

namespace A192572.P2232197654670905312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.sqrt (A000110 n) - a (n - 1)

end

end A192572.P2232197654670905312

/-! ## A192572.P17229659268547406669

`floor(sqrt(A082951(n)))-a(n-1)` with `a(0)=1`
-/

namespace A192572.P17229659268547406669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.sqrt (A082951 n) - a (n - 1)

end

end A192572.P17229659268547406669

/-! ## A192572.P7973653477451726469

`A261104(A300041(n)-A316829(n))`
-/

namespace A192572.P7973653477451726469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261104 (A300041 n - A316829 n).toNat

end

end A192572.P7973653477451726469

/-! ## A192572.P12834677321238478242

`A261104(A300041(n)-A359899(n))`
-/

namespace A192572.P12834677321238478242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261104 (A300041 n - A359899 n).toNat

end

end A192572.P12834677321238478242

/-!
# A192573: a(n) = Sum_{k=0..n} floor(sqrt(Bell(k)))*floor(sqrt(Bell(n-k))).

The programs for A192573, there is no canonical definition to state claims against.
-/

/-! ## A192573.P1661806371178868693

`A230980(A094587(n)+A000045(Δ[n²]))`
-/

namespace A192573.P1661806371178868693
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230980 (A094587 n + A000045 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat).toNat

end

end A192573.P1661806371178868693

/-! ## A192573.P12126716647641836063

`A230980(A218698(n)+A000045(Δ[n²]))`
-/

namespace A192573.P12126716647641836063
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230980 (A218698 n + A000045 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat).toNat

end

end A192573.P12126716647641836063

/-! ## A192573.P6509029181758626135

`A230980(A324342(n)+A000045(2*n+1))`
-/

namespace A192573.P6509029181758626135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230980 (A324342 n + A000045 (2 * n + 1)).toNat

end

end A192573.P6509029181758626135

/-! ## A192573.P6980277394281883969

`A230980(A000045(2*n+1))+A071986(n+5)`
-/

namespace A192573.P6980277394281883969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230980 (A000045 (2 * n + 1)).toNat + A071986 (n + 5)

end

end A192573.P6980277394281883969

/-! ## A192573.P9446640405962579657

`A054846(A148312(n+1))`
-/

namespace A192573.P9446640405962579657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054846 (A148312 (n + 1)).toNat

end

end A192573.P9446640405962579657

/-!
# A192574: a(n) = Sum_{k=0..n} binomial(n,k)*floor(sqrt(Bell(k)))*floor(sqrt(Bell(n-k))).

The programs for A192574, there is no canonical definition to state claims against.
-/

/-! ## A192574.P11623319450627013402

`∑[A110266(A149237(n))]`
-/

namespace A192574.P11623319450627013402
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110266 (A149237 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A192574.P11623319450627013402

/-! ## A192574.P2839976398423520328

`A023193(A081443(n+2))`
-/

namespace A192574.P2839976398423520328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023193 (A081443 (n + 2)).toNat

end

end A192574.P2839976398423520328

/-! ## A192574.P10765280051350379870

`A226190(A226190(2*(n+1))+A112808(n+1))`
-/

namespace A192574.P10765280051350379870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226190 (A226190 (2 * (n + 1)) + A112808 (n + 1)).toNat

end

end A192574.P10765280051350379870

/-!
# A192575: Triangle T(n,0) = A040000(n), T(n,k) = 0 (odd-numbered columns); T(n,k) = (-1)^(k/2)*A110813(n-k/2-1,k/2-1) (even-numbered columns, k>0).

The programs for A192575, there is no canonical definition to state claims against.
-/

/-! ## A192575.P7099425045309748629

`A195673(n)-A193002(n)`
-/

namespace A192575.P7099425045309748629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195673 n - A193002 n

end

end A192575.P7099425045309748629

/-! ## A192575.P5060448150891385783

`2*A192011(n)-A195662(n)`
-/

namespace A192575.P5060448150891385783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A192011 n - A195662 n

end

end A192575.P5060448150891385783

/-! ## A192575.P10037736794353672428

`A192174(n)+A127672(A061579(n))`
-/

namespace A192575.P10037736794353672428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192174 n + A127672 (A061579 n).toNat

end

end A192575.P10037736794353672428

/-! ## A192575.P4685674321913474831

`A108299(n)+A192174(n)+A133607(n)`
-/

namespace A192575.P4685674321913474831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108299 n + (A192174 n + A133607 n)

end

end A192575.P4685674321913474831

/-! ## A192575.P4303965709036698713

`A053119(n)+A174559(n)-A192011(n)`
-/

namespace A192575.P4303965709036698713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053119 n + (A174559 n - A192011 n)

end

end A192575.P4303965709036698713

/-! ## A192575.P9939656249845048737

`A053119(n)+A192011(n)-A192174(n)`
-/

namespace A192575.P9939656249845048737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053119 n + (A192011 n - A192174 n)

end

end A192575.P9939656249845048737

/-! ## A192575.P12535634285680198265

`A174559(n)+A192174(n)-A195662(n)`
-/

namespace A192575.P12535634285680198265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174559 n + (A192174 n - A195662 n)

end

end A192575.P12535634285680198265

/-! ## A192575.P10528041979194335054

`A192011(n)+A192174(n)-A193002(n)`
-/

namespace A192575.P10528041979194335054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192011 n + (A192174 n - A193002 n)

end

end A192575.P10528041979194335054

/-! ## A192575.P13370122399009100258

`A049310(A061579(n))+A192011(n)-A192174(n)`
-/

namespace A192575.P13370122399009100258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049310 (A061579 n).toNat + (A192011 n - A192174 n)

end

end A192575.P13370122399009100258

/-! ## A192575.P8670565858536655009

`A259875(A004202(n+1))+A192011(n)-A192174(n)`
-/

namespace A192575.P8670565858536655009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259875 (A004202 (n + 1)).toNat + (A192011 n - A192174 n)

end

end A192575.P8670565858536655009

/-!
# A192576: a(n) = sum(binomial(n,k)*floor(sqrt(Bell(k))),k=0..n).

The programs for A192576, there is no canonical definition to state claims against.
-/

/-! ## A192576.P16332689335915032770

`∑[A175072(a(n-1))]` with `a(0)=1, a(1)=1`
-/

namespace A192576.P16332689335915032770
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  A175072 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A192576.P16332689335915032770

/-! ## A192576.P14892956617149743537

`A084470(A187044(n))`
-/

namespace A192576.P14892956617149743537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084470 (A187044 n).toNat

end

end A192576.P14892956617149743537

/-! ## A192576.P4990326548494418570

`∑[A002024(A331608(n))]`
-/

namespace A192576.P4990326548494418570
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (A331608 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A192576.P4990326548494418570

/-!
# A192582: Monotonic ordering of set S generated by these rules: if x and y are in S and xy+1 is a prime, then xy+1 is in S, and 2, 4, and 6 are in S.

The programs for A192582, there is no canonical definition to state claims against.
-/

/-! ## A192582.P7021213007959215844

`∩[A192583(n+1), A353935(n+1)]`
-/

namespace A192582.P7021213007959215844
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192583 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353935 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A192582.P7021213007959215844

/-! ## A192582.P17027486483480480655

`eq[A226525(n+1), A271353(n+1)]`
-/

namespace A192582.P17027486483480480655
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226525 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271353 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A192582.P17027486483480480655

/-! ## A192582.P13034615823016185154

`∩[A035060(n+1), A192583(n+1)]`
-/

namespace A192582.P13034615823016185154
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035060 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192583 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A192582.P13034615823016185154

/-!
# A192583: Monotonic ordering of set S generated by these rules: if x and y are in S and xy+1 is a prime, then xy+1 is in S, and 2, 4, 6, and 8 are in S.

The programs for A192583, there is no canonical definition to state claims against.
-/

/-! ## A192583.P9473840946252856953

`A192584(comp[A320531(9*n)])`
-/

namespace A192583.P9473840946252856953
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320531 (9 * n)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192584 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A192583.P9473840946252856953

/-! ## A192583.P13952306340919879242

`∩[A192584(n+1), A346129(n+1)]`
-/

namespace A192583.P13952306340919879242
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192584 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346129 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A192583.P13952306340919879242

/-! ## A192583.P176188119796089410

`∩[A192584(n+1), A055572(n)]`
-/

namespace A192583.P176188119796089410
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192584 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055572 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A192583.P176188119796089410

/-! ## A192583.P2165368893284557172

`∩[A055571(n+1), A192584(n+1)]`
-/

namespace A192583.P2165368893284557172
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055571 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192584 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A192583.P2165368893284557172

/-! ## A192583.P2038588835015975280

`eq[A029443(n), A352824(n+1)]`
-/

namespace A192583.P2038588835015975280
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029443 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352824 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A192583.P2038588835015975280

/-!
# A192585: Monotonic ordering of set S generated by these rules: if x and y are in S and xy+1 is a prime, then xy+1 is in S, and 2, 5, 8, 11, and 14 are in S.

The programs for A192585, there is no canonical definition to state claims against.
-/

/-! ## A192585.P15174346127776478894

`A016789(eq[A029352(n), A029376(n)])`
-/

namespace A192585.P15174346127776478894
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029352 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029376 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016789 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A192585.P15174346127776478894

/-! ## A192585.P4657598642238554514

`eq[A007318(A168315(n+1)), A051626(n+1)]`
-/

namespace A192585.P4657598642238554514
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A168315 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051626 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A192585.P4657598642238554514

/-! ## A192585.P6392239785032578960

`eq[A172264(A065190(n+3)), A172500(3*(n+1))]`
-/

namespace A192585.P6392239785032578960
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172264 (A065190 (n + 3)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172500 (3 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A192585.P6392239785032578960

/-! ## A192585.P1071500473076343085

`lt[∑{d}[n, #], a(n-3)+1]` with `a(0)=0, a(1)=0, a(2)=34`
-/

namespace A192585.P1071500473076343085
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), d

def f3 : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 34] fun n f3 =>
  f3 (n - 3) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f3 j) n

end

end A192585.P1071500473076343085

/-! ## A192585.P12847284004559015011

`lt[A333379(n+5), A083184(A333363(n+1))]`
-/

namespace A192585.P12847284004559015011
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333379 (n + 5)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083184 (A333363 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A192585.P12847284004559015011

/-!
# A192586: Monotonic ordering of set S generated by these rules: if x and y are in S and xy-1 is a prime, then xy-1 is in S, and 2 and 4 are in S.

The programs for A192586, there is no canonical definition to state claims against.
-/

/-! ## A192586.P1077066532560830426

`A000040(a(n-3)+ceil((n+1)/10))` with `a(0)=2, a(1)=3, a(2)=4`
-/

namespace A192586.P1077066532560830426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 3, 4] fun n a =>
  A000040 (a (n - 3) + ⌈(n + 1 : ℚ) / 10⌉).toNat

end

end A192586.P1077066532560830426

/-! ## A192586.P15888418369391788104

`record[A001414(A326643(n)+2)]`
-/

namespace A192586.P15888418369391788104
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (A326643 n + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A192586.P15888418369391788104

/-! ## A192586.P4745970301272043993

`∪[A129302(n+1), A057999(n)]`
-/

namespace A192586.P4745970301272043993
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129302 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057999 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A192586.P4745970301272043993

/-! ## A192586.P2080008569802209726

`∪[A188754(n+1), A281481(n)]`
-/

namespace A192586.P2080008569802209726
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188754 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281481 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A192586.P2080008569802209726

/-! ## A192586.P5725452652950617357

`∪[A188754(n+1), A282702(n)]`
-/

namespace A192586.P5725452652950617357
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188754 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282702 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A192586.P5725452652950617357

/-!
# A192587: Monotonic ordering of set S generated by these rules: if x and y are in S and xy-1 is a prime, then xy-1 is in S, and 2, 4, and 6 are in S.

The programs for A192587, there is no canonical definition to state claims against.
-/

/-! ## A192587.P3616198753190026923

`record[A325351(A159630(n+1)+1)]`
-/

namespace A192587.P3616198753190026923
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325351 (A159630 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A192587.P3616198753190026923

/-! ## A192587.P5741702126660960145

`record[A001414(A003002(2*(n+1)))]`
-/

namespace A192587.P5741702126660960145
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (A003002 (2 * (n + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A192587.P5741702126660960145

/-! ## A192587.P9923283928293577529

`eq[A034887(A141256(n)), A287272(n)]`
-/

namespace A192587.P9923283928293577529
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034887 (A141256 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287272 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A192587.P9923283928293577529

/-! ## A192587.P14373138963217610323

`eq[A008835(n+1), A179752(A018783(n))]`
-/

namespace A192587.P14373138963217610323
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008835 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179752 (A018783 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A192587.P14373138963217610323

/-! ## A192587.P10219964791732297326

`eq[A053164(n+1), A179752(A018783(n))]`
-/

namespace A192587.P10219964791732297326
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053164 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179752 (A018783 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A192587.P10219964791732297326

/-!
# A192588: Monotonic ordering of set S generated by these rules: if x and y are in S and xy-1 is a prime, then xy-1 is in S, and 2, 4, 6, and 8 are in S.

The programs for A192588, there is no canonical definition to state claims against.
-/

/-! ## A192588.P5827852860008564881

`lt[A034042(A163466(n)), A007775(n+1)]`
-/

namespace A192588.P5827852860008564881
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034042 (A163466 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007775 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A192588.P5827852860008564881

/-! ## A192588.P5372552507395885615

`lt[Δ[A307984(n+1)], 4]+2`
-/

namespace A192588.P5372552507395885615
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307984 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n + 2

end

end A192588.P5372552507395885615

/-! ## A192588.P12784373519914188180

`lt[A018818(2*(n+2)), 78]+2`
-/

namespace A192588.P12784373519914188180
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018818 (2 * (n + 2))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  78

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 2

end

end A192588.P12784373519914188180

/-! ## A192588.P10688664941080138463

`record[A155963(A162190(n))]`
-/

namespace A192588.P10688664941080138463
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155963 (A162190 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A192588.P10688664941080138463

/-! ## A192588.P11666739436238551693

`record[A249821(n+2)]`
-/

namespace A192588.P11666739436238551693
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249821 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A192588.P11666739436238551693

/-!
# A192589: Monotonic ordering of set S generated by these rules: if x and y are in S and xy+3 is a prime, then xy+3 is in S, and 2 and 4 are in S.

The programs for A192589, there is no canonical definition to state claims against.
-/

/-! ## A192589.P502619411637054416

`lt[A319100(A335375(n+3)+n+1), 3]`
-/

namespace A192589.P502619411637054416
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319100 (A335375 (n + 3) + (n : ℤ) + 1).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A192589.P502619411637054416

/-! ## A192589.P6936268589636026076

`A023213(n+1)-A156595(floor(3^(n-1)))`
-/

namespace A192589.P6936268589636026076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023213 (n + 1) - A156595 ⌊(3 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋.toNat

end

end A192589.P6936268589636026076

/-! ## A192589.P12968729129213922638

`A023213(n+1)-val(∏{p}[A017281(n)^3, #], 11)`
-/

namespace A192589.P12968729129213922638
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017281 n ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023213 (n + 1) - (SequenceMachineLib.valuation (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p) 11 : ℤ)

end

end A192589.P12968729129213922638

/-! ## A192589.P18029092745636142739

`A023213(n+1)-A010051(A000984(n))`
-/

namespace A192589.P18029092745636142739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023213 (n + 1) - A010051 (A000984 n).toNat

end

end A192589.P18029092745636142739

/-! ## A192589.P14383990139944478308

`A023213(n+1)-A010051(A052906(n))`
-/

namespace A192589.P14383990139944478308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023213 (n + 1) - A010051 (A052906 n).toNat

end

end A192589.P14383990139944478308

/-!
# A192590: Monotonic ordering of set S generated by these rules: if x and y are in S and xy-3 is a prime, then xy-3 is in S, and 2 and 4 are in S.

The programs for A192590, there is no canonical definition to state claims against.
-/

/-! ## A192590.P2553486535562170933

`eq[A032741(n), A249949(A108087(n))]`
-/

namespace A192590.P2553486535562170933
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249949 (A108087 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A192590.P2553486535562170933

/-! ## A192590.P1815986337845657455

`eq[A009195(A066263(n+1)), A105700(n)]`
-/

namespace A192590.P1815986337845657455
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009195 (A066263 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105700 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A192590.P1815986337845657455

/-! ## A192590.P7358941270570857920

`eq[A071690(n), A139551(n)]`
-/

namespace A192590.P7358941270570857920
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071690 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139551 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A192590.P7358941270570857920

/-! ## A192590.P17920632514224985610

`lt[A130891(n), A029687(n+1)]`
-/

namespace A192590.P17920632514224985610
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130891 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029687 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A192590.P17920632514224985610

/-! ## A192590.P9312668293149131042

`record[A103153(2*n+5)-A232569(n+2)]`
-/

namespace A192590.P9312668293149131042
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103153 (2 * n + 5) - A232569 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A192590.P9312668293149131042

/-!
# A192591: Monotonic ordering of set S generated by these rules: if x and y are in S and x^2+y^2+1 is a prime, then x^2+y^2+1 is in S, and 1 is in S.

The programs for A192591, there is no canonical definition to state claims against.
-/

/-! ## A192591.P15226515656173717920

`a(n-2)²+10` with `a(0)=1, a(1)=3`
-/

namespace A192591.P15226515656173717920
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 3] fun n a =>
  a (n - 2) ^ 2 + 10

end

end A192591.P15226515656173717920

/-!
# A192592: Monotonic ordering of set S generated by these rules: if x and y are in S and 3x+2y is a prime, then 3x+2y is in S, and 1 is in S.

The programs for A192592, the canonical program `A192592.P18175779352790662671` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A192592 has offset 1).

The definition of A192592 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 609 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A192592.P18175779352790662671

`A280084(A011760(n+1))`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A192592

/-- `A280084(A011760(n+1))` -/
def P18175779352790662671.Spec : Prop :=
  ∀ n, P18175779352790662671.a n = A192592 (n + 1)

theorem P18175779352790662671.correct : P18175779352790662671.Spec := by
  intro n
  simp only [A192592, Nat.add_sub_cancel]

end A192592

/-! ## A192592.P11018980420232760534

`A002313(A011760(n+1))-A000007(n)`
-/

namespace A192592.P11018980420232760534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002313 (A011760 (n + 1)).toNat - A000007 n

end

end A192592.P11018980420232760534

namespace A192592

/-- `A002313(A011760(n+1))-A000007(n)` -/
def P11018980420232760534.Spec : Prop :=
  ∀ n, P11018980420232760534.a n = A192592 (n + 1)

end A192592

/-! ## A192592.P17554353247417645950

`A002313(A011760(n+1))+A057427(n)-1`
-/

namespace A192592.P17554353247417645950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002313 (A011760 (n + 1)).toNat + (A057427 n - 1)

end

end A192592.P17554353247417645950

namespace A192592

/-- `A002313(A011760(n+1))+A057427(n)-1` -/
def P17554353247417645950.Spec : Prop :=
  ∀ n, P17554353247417645950.a n = A192592 (n + 1)

end A192592

/-! ## A192592.P2406005886115874226

`A002313(A011760(n+1))^(A158015(n+1)%2)`
-/

namespace A192592.P2406005886115874226
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002313 (A011760 (n + 1)).toNat : ℚ) ^ (Int.tmod (A158015 (n + 1)) 2 : ℤ)

end

end A192592.P2406005886115874226

namespace A192592

/-- `A002313(A011760(n+1))^(A158015(n+1)%2)` -/
def P2406005886115874226.Spec : Prop :=
  ∀ n, P2406005886115874226.a n = (A192592 (n + 1) : ℚ)

end A192592

/-! ## A192592.P6324999792800513490

`record[A330691(A181935(n)*A306300(n+1))]`
-/

namespace A192592.P6324999792800513490
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330691 (A181935 n * A306300 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A192592.P6324999792800513490

namespace A192592

/-- `record[A330691(A181935(n)*A306300(n+1))]` -/
def P6324999792800513490.Spec : Prop :=
  ∀ n, P6324999792800513490.a n = A192592 (n + 1)

end A192592

/-! ## A192592.P7639859984503104306

`record[A014963(A004613(A216455(n+1)))]`
-/

namespace A192592.P7639859984503104306
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A004613 (A216455 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A192592.P7639859984503104306

namespace A192592

/-- `record[A014963(A004613(A216455(n+1)))]` -/
def P7639859984503104306.Spec : Prop :=
  ∀ n, P7639859984503104306.a n = A192592 (n + 1)

end A192592

/-! ## A192592.P7203426800602821738

`A008578(A192593(n+1)+1)`
-/

namespace A192592.P7203426800602821738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A192593 (n + 1) + 1).toNat

end

end A192592.P7203426800602821738

namespace A192592

/-- `A008578(A192593(n+1)+1)` -/
def P7203426800602821738.Spec : Prop :=
  ∀ n, P7203426800602821738.a n = A192592 (n + 1)

end A192592

/-! ## A192592.P6615220970255430141

`A001747(A192593(n+1)+1)/2`
-/

namespace A192592.P6615220970255430141
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001747 (A192593 (n + 1) + 1).toNat : ℚ) / 2

end

end A192592.P6615220970255430141

namespace A192592

/-- `A001747(A192593(n+1)+1)/2` -/
def P6615220970255430141.Spec : Prop :=
  ∀ n, P6615220970255430141.a n = (A192592 (n + 1) : ℚ)

end A192592

/-! ## A192592.P7772274704229217282

`A006005(or(C(n, n²), A192593(n+1)))`
-/

namespace A192592.P7772274704229217282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (Int.lor (Nat.choose n (n ^ 2) : ℤ) (A192593 (n + 1))).toNat

end

end A192592.P7772274704229217282

namespace A192592

/-- `A006005(or(C(n, n²), A192593(n+1)))` -/
def P7772274704229217282.Spec : Prop :=
  ∀ n, P7772274704229217282.a n = A192592 (n + 1)

end A192592

/-! ## A192592.P17437584740876530791

`record[A006530(A035608(A338091(n+1)))]`
-/

namespace A192592.P17437584740876530791
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A035608 (A338091 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A192592.P17437584740876530791

namespace A192592

/-- `record[A006530(A035608(A338091(n+1)))]` -/
def P17437584740876530791.Spec : Prop :=
  ∀ n, P17437584740876530791.a n = A192592 (n + 1)

end A192592

/-!
# A192593: Index-list of the primes generated at A192592.

The programs for A192593, there is no canonical definition to state claims against.
-/

/-! ## A192593.P15665460000344769912

`A000720(A192592(n+1))`
-/

namespace A192593.P15665460000344769912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A192592 (n + 1)).toNat

end

end A192593.P15665460000344769912

/-! ## A192593.P8409776273338857528

`A049084(or(1, A192592(n+1)))`
-/

namespace A192593.P8409776273338857528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049084 (Int.lor 1 (A192592 (n + 1))).toNat

end

end A192593.P8409776273338857528

/-! ## A192593.P17717288584878474668

`A055396(or(1, A192592(n+1)))`
-/

namespace A192593.P17717288584878474668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (Int.lor 1 (A192592 (n + 1))).toNat

end

end A192593.P17717288584878474668

/-! ## A192593.P5455220329444348896

`A056239(or(1, A192592(n+1)))`
-/

namespace A192593.P5455220329444348896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (Int.lor 1 (A192592 (n + 1))).toNat

end

end A192593.P5455220329444348896

/-! ## A192593.P6307758576280909446

`A061395(or(1, A192592(n+1)))`
-/

namespace A192593.P6307758576280909446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (Int.lor 1 (A192592 (n + 1))).toNat

end

end A192593.P6307758576280909446

/-! ## A192593.P8449186927865962273

`A230980(or(1, A192592(n+1)))`
-/

namespace A192593.P8449186927865962273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230980 (Int.lor 1 (A192592 (n + 1))).toNat

end

end A192593.P8449186927865962273

/-! ## A192593.P17298039875525251467

`A289507(or(1, A192592(n+1)))`
-/

namespace A192593.P17298039875525251467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289507 (Int.lor 1 (A192592 (n + 1))).toNat

end

end A192593.P17298039875525251467

/-! ## A192593.P4626170965402450687

`∑{d}[A192592(n+1), A049084(#)]`
-/

namespace A192593.P4626170965402450687
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192592 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A049084 d

end

end A192593.P4626170965402450687

/-! ## A192593.P3518621489711432141

`∑{d}[A192592(n+1), A055396(#)]`
-/

namespace A192593.P3518621489711432141
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192592 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A055396 d

end

end A192593.P3518621489711432141

/-! ## A192593.P10187695241485536545

`∑{d}[A192592(n+1), A061395(#)]`
-/

namespace A192593.P10187695241485536545
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192592 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A061395 d

end

end A192593.P10187695241485536545

/-!
# A192594: Monotonic ordering of set S generated by these rules: if x and y are in S and 5x+2y is a prime, then 5x+2y is in S, and 1 is in S.

The programs for A192594, there is no canonical definition to state claims against.
-/

/-! ## A192594.P1150777872556783211

`A008578(A192595(n+1)+1)`
-/

namespace A192594.P1150777872556783211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A192595 (n + 1) + 1).toNat

end

end A192594.P1150777872556783211

/-! ## A192594.P15815984973487677933

`char[72*n]+A299763(A192595(n+1)+1)-1`
-/

namespace A192594.P15815984973487677933
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  72 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) + (A299763 (A192595 (n + 1) + 1).toNat - 1)

end

end A192594.P15815984973487677933

/-! ## A192594.P17648331510763319754

`A299763(A192595(n+1)+1)-A057427(n)`
-/

namespace A192594.P17648331510763319754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299763 (A192595 (n + 1) + 1).toNat - A057427 n

end

end A192594.P17648331510763319754

/-! ## A192594.P2505675509407103451

`A299763(A192595(n+1)+1)-A178334(n)`
-/

namespace A192594.P2505675509407103451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299763 (A192595 (n + 1) + 1).toNat - A178334 n

end

end A192594.P2505675509407103451

/-! ## A192594.P12431115038019155489

`A299763(A192595(n+1)+1)-char[A193592(n)]`
-/

namespace A192594.P12431115038019155489
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299763 (A192595 (n + 1) + 1).toNat - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A192594.P12431115038019155489

/-! ## A192594.P7014581753601110467

`A000040(A192595(n+1)^A019426(2*n))^A019426(2*n)`
-/

namespace A192594.P7014581753601110467
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000040 (SequenceMachineLib.roundAway ((A192595 (n + 1) : ℚ) ^ (A019426 (2 * n) : ℤ))).toNat : ℚ) ^ (A019426 (2 * n) : ℤ)

end

end A192594.P7014581753601110467

/-! ## A192594.P12709421176483178270

`A299763(A192595(n+1)+1)-A001222(A168024(n))`
-/

namespace A192594.P12709421176483178270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299763 (A192595 (n + 1) + 1).toNat - A001222 (A168024 n).toNat

end

end A192594.P12709421176483178270

/-!
# A192595: Index-list of the primes generated at A192594.

The programs for A192595, there is no canonical definition to state claims against.
-/

/-! ## A192595.P15041533909812290817

`A000720(A192594(n+1))`
-/

namespace A192595.P15041533909812290817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A192594 (n + 1)).toNat

end

end A192595.P15041533909812290817

/-! ## A192595.P16219025219990717942

`A056172(2*A192594(n+1))`
-/

namespace A192595.P16219025219990717942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056172 (2 * A192594 (n + 1)).toNat

end

end A192595.P16219025219990717942

/-! ## A192595.P17280296878831870850

`A056172(lcm(2, A192594(n+1)))`
-/

namespace A192595.P17280296878831870850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056172 (Int.lcm 2 (A192594 (n + 1)))

end

end A192595.P17280296878831870850

/-! ## A192595.P15601480788259267142

`A049084(or(1, A192594(n+1)))`
-/

namespace A192595.P15601480788259267142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049084 (Int.lor 1 (A192594 (n + 1))).toNat

end

end A192595.P15601480788259267142

/-! ## A192595.P14641052319627121936

`A055396(or(1, A192594(n+1)))`
-/

namespace A192595.P14641052319627121936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (Int.lor 1 (A192594 (n + 1))).toNat

end

end A192595.P14641052319627121936

/-! ## A192595.P1160032974684022246

`A056239(or(1, A192594(n+1)))`
-/

namespace A192595.P1160032974684022246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (Int.lor 1 (A192594 (n + 1))).toNat

end

end A192595.P1160032974684022246

/-! ## A192595.P18116922736669346698

`A061395(or(1, A192594(n+1)))`
-/

namespace A192595.P18116922736669346698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (Int.lor 1 (A192594 (n + 1))).toNat

end

end A192595.P18116922736669346698

/-! ## A192595.P4468801823904875935

`∑{d}[A192594(n+1), A049084(#)]`
-/

namespace A192595.P4468801823904875935
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192594 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A049084 d

end

end A192595.P4468801823904875935

/-! ## A192595.P10759024509468007859

`∑{p}[A192594(n+1), A003963(#)]`
-/

namespace A192595.P10759024509468007859
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192594 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A003963 p

end

end A192595.P10759024509468007859

/-! ## A192595.P16853366706725641622

`A061395((n+1)*A192594(n+1))`
-/

namespace A192595.P16853366706725641622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 ((n + 1 : ℤ) * A192594 (n + 1)).toNat

end

end A192595.P16853366706725641622

/-!
# A192596: Monotonic ordering of set S generated by these rules: if x and y are in S and 3x+4y is a prime, then 3x+4y is in S, and 1 is in S.

The programs for A192596, there is no canonical definition to state claims against.
-/

/-! ## A192596.P2818483200406357652

`A008578(A192597(n+1)+1)`
-/

namespace A192596.P2818483200406357652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A192597 (n + 1) + 1).toNat

end

end A192596.P2818483200406357652

/-! ## A192596.P6226415223434991600

`A006005(A192597(n+1)^A137588(n+1))`
-/

namespace A192596.P6226415223434991600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (SequenceMachineLib.roundAway ((A192597 (n + 1) : ℚ) ^ (A137588 (n + 1) : ℤ))).toNat

end

end A192596.P6226415223434991600

/-!
# A192597: Index-list of the primes generated at A192596.

The programs for A192597, there is no canonical definition to state claims against.
-/

/-! ## A192597.P6493680168833758196

`A000720(A192596(n+1))`
-/

namespace A192597.P6493680168833758196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A192596 (n + 1)).toNat

end

end A192597.P6493680168833758196

/-! ## A192597.P18206011011953470681

`A061395(or(1, A192596(n+1)))`
-/

namespace A192597.P18206011011953470681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (Int.lor 1 (A192596 (n + 1))).toNat

end

end A192597.P18206011011953470681

/-! ## A192597.P15201350813364141960

`A066328(or(1, A192596(n+1)))`
-/

namespace A192597.P15201350813364141960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066328 (Int.lor 1 (A192596 (n + 1))).toNat

end

end A192597.P15201350813364141960

/-! ## A192597.P12567845958100365564

`A289508(or(1, A192596(n+1)))`
-/

namespace A192597.P12567845958100365564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289508 (Int.lor 1 (A192596 (n + 1))).toNat

end

end A192597.P12567845958100365564

/-! ## A192597.P837591268491448607

`A323164(or(1, A192596(n+1)))`
-/

namespace A192597.P837591268491448607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323164 (Int.lor 1 (A192596 (n + 1))).toNat

end

end A192597.P837591268491448607

/-!
# A192598: Monotonic ordering of set S generated by these rules: if x and y are in S and x^2+2y^2 is a prime, then x^2+2y^2 is in S, and 1 is in S.

The programs for A192598, there is no canonical definition to state claims against.
-/

/-! ## A192598.P16347079850838958022

`A192612(comp[∑[n-1]])`
-/

namespace A192598.P16347079850838958022
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192612 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A192598.P16347079850838958022

/-! ## A192598.P4024784027372987560

`A192613(∑[A327160(n+1)])`
-/

namespace A192598.P4024784027372987560
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327160 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192613 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A192598.P4024784027372987560

/-! ## A192598.P5945687725231698254

`or(1, A192612(A007401(n+1)))`
-/

namespace A192598.P5945687725231698254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A192612 (A007401 (n + 1)).toNat)

end

end A192598.P5945687725231698254

/-!
# A192599: Let N = pq (p<q) = A006881(n). Then a(n) = | (p^2-q)(q-1)/2 |.

The programs for A192599, there is no canonical definition to state claims against.
-/

/-! ## A192599.P12914505294623523574

`A339410(lt[A339443(3*n+2), A339413(n+1)])`
-/

namespace A192599.P12914505294623523574
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339443 (3 * n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339413 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339410 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A192599.P12914505294623523574

/-! ## A192599.P13644920957087345407

`A339410(lt[A339438(2*n+3), A339460(2*n+3)])`
-/

namespace A192599.P13644920957087345407
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339438 (2 * n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339460 (2 * n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339410 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A192599.P13644920957087345407

