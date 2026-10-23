import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C020
import Seq.B000.C023
import Seq.B000.C030
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C038
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C003
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
import Seq.B010.C000
import Seq.B011.C000
import Seq.B011.C001
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

/-!
# A106900: Primes of the form x^2+xy+12y^2, with x and y nonnegative.

The programs for A106900, there is no canonical definition to state claims against.
-/

/-! ## A106900.P8273036128639653498

`A033232(A322282(n)+A082217(n+1))`
-/

namespace A106900.P8273036128639653498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033232 (A322282 n + A082217 (n + 1)).toNat

end

end A106900.P8273036128639653498

/-! ## A106900.P9045859414487729607

`A033232(A033271(n+1)+A032559(n+1))`
-/

namespace A106900.P9045859414487729607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033232 (A033271 (n + 1) + A032559 (n + 1)).toNat

end

end A106900.P9045859414487729607

/-!
# A106901: Primes of the form 3x^2+3xy+5y^2, with x and y nonnegative.

The programs for A106901, there is no canonical definition to state claims against.
-/

/-! ## A106901.P10269573390106730721

`p?[∑[A065090(A301784(n+1))]]`
-/

namespace A106901.P10269573390106730721
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065090 (A301784 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A106901.P10269573390106730721

/-! ## A106901.P9374158046682027056

`p?[∑[A333337(A305593(n+1))]]`
-/

namespace A106901.P9374158046682027056
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333337 (A305593 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A106901.P9374158046682027056

/-! ## A106901.P2643251449064321776

`p?[∑[A333337(A316209(n+1))]]`
-/

namespace A106901.P2643251449064321776
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333337 (A316209 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A106901.P2643251449064321776

/-!
# A106902: Primes of the form 3x^2-3xy+5y^2, with x and y nonnegative.

The programs for A106902, there is no canonical definition to state claims against.
-/

/-! ## A106902.P4609027850122875815

`record[p?[A025581(A226169(n+1))]]`
-/

namespace A106902.P4609027850122875815
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 (A226169 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A106902.P4609027850122875815

/-! ## A106902.P1606539810472697852

`record[p?[A163528(A346368(n+1))]]`
-/

namespace A106902.P1606539810472697852
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163528 (A346368 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A106902.P1606539810472697852

/-! ## A106902.P18072679966481847777

`lt[A275841(A062584(n)), A275735(n)]`
-/

namespace A106902.P18072679966481847777
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275841 (A062584 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275735 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A106902.P18072679966481847777

/-!
# A106904: Primes of the form x^2-xy+13y^2, with x and y nonnegative.

The programs for A106904, there is no canonical definition to state claims against.
-/

/-! ## A106904.P15692292681908515038

`p?[A038889(n+1)%3*A038889(n+1)]`
-/

namespace A106904.P15692292681908515038
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A038889 (n + 1)) 3 * A038889 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A106904.P15692292681908515038

/-! ## A106904.P12450715736514882756

`∩[A002476(n+1), A038889(n+1)]`
-/

namespace A106904.P12450715736514882756
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002476 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038889 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106904.P12450715736514882756

/-! ## A106904.P15646765803055362941

`∩[A007645(n+1), A038889(n+1)]`
-/

namespace A106904.P15646765803055362941
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007645 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038889 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106904.P15646765803055362941

/-! ## A106904.P15663647634890397578

`∩[A038889(n+1), A123365(n+1)]`
-/

namespace A106904.P15663647634890397578
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038889 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123365 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106904.P15663647634890397578

/-! ## A106904.P2293504203099912454

`∩[A007645(n+1), A296938(n+1)]`
-/

namespace A106904.P2293504203099912454
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007645 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296938 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106904.P2293504203099912454

/-! ## A106904.P11182982228456830987

`∩[A296938(n+1), A123365(n+1)]`
-/

namespace A106904.P11182982228456830987
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296938 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123365 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106904.P11182982228456830987

/-! ## A106904.P13349838903974066726

`∩[A002476(n+1), A191034(n+1)]`
-/

namespace A106904.P13349838903974066726
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002476 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191034 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106904.P13349838903974066726

/-! ## A106904.P11014877526841146436

`∩[A007645(n+1), A191034(n+1)]`
-/

namespace A106904.P11014877526841146436
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007645 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191034 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106904.P11014877526841146436

/-! ## A106904.P17143381900475875408

`∩[A045331(n+1), A191034(n+1)]`
-/

namespace A106904.P17143381900475875408
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045331 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191034 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106904.P17143381900475875408

/-! ## A106904.P8474348075950967924

`∩[A123365(n+1), A191034(n+1)]`
-/

namespace A106904.P8474348075950967924
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123365 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191034 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106904.P8474348075950967924

/-! ## A106904.P2319487182459993656

`∩[A038889(n+1), A055664(n+1)]`
-/

namespace A106904.P2319487182459993656
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038889 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055664 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106904.P2319487182459993656

/-! ## A106904.P3987677594761240210

`∩[A055664(n+1), A191034(n+1)]`
-/

namespace A106904.P3987677594761240210
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055664 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191034 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106904.P3987677594761240210

/-! ## A106904.P9729653699285955000

`∩[A055664(n+1), A296938(n+1)]`
-/

namespace A106904.P9729653699285955000
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055664 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296938 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106904.P9729653699285955000

/-! ## A106904.P3203535164959375774

`∩[A038889(n+1), A133290(n+1)]`
-/

namespace A106904.P3203535164959375774
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038889 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133290 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106904.P3203535164959375774

/-! ## A106904.P12413620239461574201

`∩[A133290(n+1), A191034(n+1)]`
-/

namespace A106904.P12413620239461574201
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133290 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191034 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106904.P12413620239461574201

/-! ## A106904.P17088822374868540756

`∩[A038889(n+1), A137827(n+1)]`
-/

namespace A106904.P17088822374868540756
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038889 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137827 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106904.P17088822374868540756

/-! ## A106904.P15314404164048420884

`∩[A137827(n+1), A191034(n+1)]`
-/

namespace A106904.P15314404164048420884
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137827 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191034 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106904.P15314404164048420884

/-! ## A106904.P5942283891025666238

`filter[A038889(n+1), A070563(#)]`
-/

namespace A106904.P5942283891025666238
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038889 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A070563 (f1 j).toNat = 1) n)

end

end A106904.P5942283891025666238

/-! ## A106904.P2711451325016215355

`filter[A191034(n+1), A070563(#)]`
-/

namespace A106904.P2711451325016215355
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191034 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A070563 (f1 j).toNat = 1) n)

end

end A106904.P2711451325016215355

/-! ## A106904.P3681600450490288634

`filter[A296938(n+1), A070563(#)]`
-/

namespace A106904.P3681600450490288634
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296938 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A070563 (f1 j).toNat = 1) n)

end

end A106904.P3681600450490288634

/-!
# A106905: Primes of the form 2x^2+2xy+7y^2, with x and y nonnegative.

The programs for A106905, there is no canonical definition to state claims against.
-/

/-! ## A106905.P1578328967891607553

`filter[A038884(n+1), A248396(#)]`
-/

namespace A106905.P1578328967891607553
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038884 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A248396 (f1 j).toNat = 1) n)

end

end A106905.P1578328967891607553

/-! ## A106905.P16857298085179676920

`filter[A106906(n+1), A248396(#)]`
-/

namespace A106905.P16857298085179676920
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106906 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A248396 (f1 j).toNat = 1) n)

end

end A106905.P16857298085179676920

/-! ## A106905.P17931349763426908538

`filter[A109611(n+1), A248396(#)]`
-/

namespace A106905.P17931349763426908538
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109611 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A248396 (f1 j).toNat = 1) n)

end

end A106905.P17931349763426908538

/-! ## A106905.P15662509618663756904

`filter[A120330(n+1), A248396(#)]`
-/

namespace A106905.P15662509618663756904
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120330 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A248396 (f1 j).toNat = 1) n)

end

end A106905.P15662509618663756904

/-!
# A106906: Primes of the form 2x^2-2xy+7y^2, with x and y nonnegative.

The programs for A106906, there is no canonical definition to state claims against.
-/

/-! ## A106906.P8715095422533683985

`∩[A038884(n+1), A045326(n+1)]`
-/

namespace A106906.P8715095422533683985
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038884 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045326 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106906.P8715095422533683985

/-! ## A106906.P15130200390220056915

`∩[A045326(n+1), A120330(n+1)]`
-/

namespace A106906.P15130200390220056915
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045326 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120330 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106906.P15130200390220056915

/-! ## A106906.P16322966001001018571

`∩[A038884(n+1), A332555(n+1)]`
-/

namespace A106906.P16322966001001018571
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038884 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332555 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106906.P16322966001001018571

/-! ## A106906.P17073692886359263962

`∩[A120330(n+1), A332555(n+1)]`
-/

namespace A106906.P17073692886359263962
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120330 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332555 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106906.P17073692886359263962

/-! ## A106906.P11969123814087988324

`∩[A038884(n+1), A097987(n+1)]`
-/

namespace A106906.P11969123814087988324
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038884 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097987 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106906.P11969123814087988324

/-! ## A106906.P10994780721185793629

`∩[A097987(n+1), A120330(n+1)]`
-/

namespace A106906.P10994780721185793629
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097987 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120330 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106906.P10994780721185793629

/-! ## A106906.P10361669604460355092

`∩[A038884(n+1), A120127(n+1)]`
-/

namespace A106906.P10361669604460355092
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038884 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120127 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106906.P10361669604460355092

/-! ## A106906.P389092734600419588

`∩[A120127(n+1), A120330(n+1)]`
-/

namespace A106906.P389092734600419588
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120127 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120330 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106906.P389092734600419588

/-! ## A106906.P8727281037659126224

`filter[A038884(n+1), A347871(#)]`
-/

namespace A106906.P8727281037659126224
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038884 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A347871 (f1 j).toNat = 1) n)

end

end A106906.P8727281037659126224

/-! ## A106906.P16171302325932080517

`filter[A120330(n+1), A347871(#)]`
-/

namespace A106906.P16171302325932080517
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120330 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A347871 (f1 j).toNat = 1) n)

end

end A106906.P16171302325932080517

/-! ## A106906.P10782318323369306185

`∩[A004144(n+1), A038884(n+1)]`
-/

namespace A106906.P10782318323369306185
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004144 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038884 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106906.P10782318323369306185

/-! ## A106906.P14510302820444056771

`∩[A004144(n+1), A120330(n+1)]`
-/

namespace A106906.P14510302820444056771
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004144 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120330 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106906.P14510302820444056771

/-! ## A106906.P9382077674378352121

`∩[A038884(n+1), A394579(n+1)]`
-/

namespace A106906.P9382077674378352121
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038884 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394579 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106906.P9382077674378352121

/-! ## A106906.P6086349361568534425

`∩[A120330(n+1), A394579(n+1)]`
-/

namespace A106906.P6086349361568534425
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120330 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394579 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106906.P6086349361568534425

/-! ## A106906.P18371013360231326277

`∩[A038884(n+1), A081754(n+1)]`
-/

namespace A106906.P18371013360231326277
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038884 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081754 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106906.P18371013360231326277

/-! ## A106906.P11875994363424256401

`∩[A081754(n+1), A120330(n+1)]`
-/

namespace A106906.P11875994363424256401
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081754 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120330 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106906.P11875994363424256401

/-! ## A106906.P17122992528680355605

`∩[A038884(n+1), A268377(n+1)]`
-/

namespace A106906.P17122992528680355605
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038884 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268377 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106906.P17122992528680355605

/-! ## A106906.P10010401596372888091

`∩[A120330(n+1), A268377(n+1)]`
-/

namespace A106906.P10010401596372888091
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120330 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268377 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106906.P10010401596372888091

/-! ## A106906.P13584054119535447606

`∩[A038884(n+1), A047531(n+1)]`
-/

namespace A106906.P13584054119535447606
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038884 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047531 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106906.P13584054119535447606

/-! ## A106906.P17482298939905283156

`∩[A047531(n+1), A120330(n+1)]`
-/

namespace A106906.P17482298939905283156
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047531 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120330 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106906.P17482298939905283156

/-!
# A106908: Primes of the form 4x^2+3xy+4y^2, with x and y any integer.

The programs for A106908, there is no canonical definition to state claims against.
-/

/-! ## A106908.P5331374053493031207

`∪[A106907(n+1), A106909(n+1)]`
-/

namespace A106908.P5331374053493031207
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106907 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106909 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A106908.P5331374053493031207

/-!
# A106909: Primes of the form 4x^2-3xy+4y^2, with x and y nonnegative.

The programs for A106909, there is no canonical definition to state claims against.
-/

/-! ## A106909.P10949918970300293578

`A106908(eq[1, A262905(n)])`
-/

namespace A106909.P10949918970300293578
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262905 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106908 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A106909.P10949918970300293578

/-!
# A106910: Primes of the form 2x^2+xy+7y^2, with x and y nonnegative.

The programs for A106910, there is no canonical definition to state claims against.
-/

/-! ## A106910.P15374572207567642050

`A166159(or(n, A301199(n)))`
-/

namespace A106910.P15374572207567642050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166159 (Int.lor (n : ℤ) (A301199 n)).toNat

end

end A106910.P15374572207567642050

/-! ## A106910.P17996386587413414774

`A000040(A331022(2*n)+A004977(n+1))`
-/

namespace A106910.P17996386587413414774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A331022 (2 * n) + A004977 (n + 1)).toNat

end

end A106910.P17996386587413414774

/-!
# A106911: Primes of the form 2x^2+xy+7y^2, with x and y any integer.

The programs for A106911, there is no canonical definition to state claims against.
-/

/-! ## A106911.P16720775837725458426

`∪[A106910(n+1), A106912(n+1)]`
-/

namespace A106911.P16720775837725458426
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106910 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106912 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A106911.P16720775837725458426

/-! ## A106911.P14662042966422267038

`∩[A191036(n+1), A191060(n+1)]`
-/

namespace A106911.P14662042966422267038
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191036 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191060 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106911.P14662042966422267038

/-! ## A106911.P7886255377797347532

`∩[A003631(n+1), A191036(n+1)]`
-/

namespace A106911.P7886255377797347532
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003631 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191036 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106911.P7886255377797347532

/-! ## A106911.P14792931446661349330

`∩[A003631(n+1), A191060(n+1)]`
-/

namespace A106911.P14792931446661349330
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003631 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191060 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106911.P14792931446661349330

/-! ## A106911.P1450890130723190023

`∩[A042993(n+1), A191036(n+1)]`
-/

namespace A106911.P1450890130723190023
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042993 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191036 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106911.P1450890130723190023

/-! ## A106911.P7749991550265357131

`∩[A042993(n+1), A191060(n+1)]`
-/

namespace A106911.P7749991550265357131
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042993 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191060 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106911.P7749991550265357131

/-! ## A106911.P3322549958910305460

`∩[A069104(n+1), A191036(n+1)]`
-/

namespace A106911.P3322549958910305460
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069104 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191036 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106911.P3322549958910305460

/-! ## A106911.P9821686755426056962

`∩[A069104(n+1), A191060(n+1)]`
-/

namespace A106911.P9821686755426056962
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069104 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191060 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106911.P9821686755426056962

/-! ## A106911.P15113556877392365264

`∩[A140971(n+1), A191036(n+1)]`
-/

namespace A106911.P15113556877392365264
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140971 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191036 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106911.P15113556877392365264

/-! ## A106911.P11356818036541382606

`∩[A140971(n+1), A191060(n+1)]`
-/

namespace A106911.P11356818036541382606
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140971 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191060 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106911.P11356818036541382606

/-! ## A106911.P2216619192795640268

`∩[A023162(n+1), A191036(n+1)]`
-/

namespace A106911.P2216619192795640268
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023162 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191036 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106911.P2216619192795640268

/-! ## A106911.P4572168172730269214

`∩[A023162(n+1), A191060(n+1)]`
-/

namespace A106911.P4572168172730269214
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023162 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191060 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106911.P4572168172730269214

/-! ## A106911.P11110909746514595061

`∩[A063206(n+1), A191036(n+1)]`
-/

namespace A106911.P11110909746514595061
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063206 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191036 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106911.P11110909746514595061

/-! ## A106911.P10023593289361984472

`∩[A063206(n+1), A191060(n+1)]`
-/

namespace A106911.P10023593289361984472
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063206 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191060 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106911.P10023593289361984472

/-! ## A106911.P2889556946652805842

`∩[A191036(n+1), A379211(n+1)]`
-/

namespace A106911.P2889556946652805842
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191036 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379211 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106911.P2889556946652805842

/-! ## A106911.P2619678135495477333

`∩[A191060(n+1), A379211(n+1)]`
-/

namespace A106911.P2619678135495477333
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191060 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379211 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106911.P2619678135495477333

/-! ## A106911.P15822517121252891798

`∩[A047221(n+1), A191036(n+1)]`
-/

namespace A106911.P15822517121252891798
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047221 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191036 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106911.P15822517121252891798

/-! ## A106911.P7291616592111727590

`∩[A047221(n+1), A191060(n+1)]`
-/

namespace A106911.P7291616592111727590
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047221 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191060 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106911.P7291616592111727590

/-! ## A106911.P17717364999800929864

`∩[A191036(n+1), A260181(n+1)]`
-/

namespace A106911.P17717364999800929864
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191036 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260181 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106911.P17717364999800929864

/-! ## A106911.P1889421465492141689

`∩[A191060(n+1), A260181(n+1)]`
-/

namespace A106911.P1889421465492141689
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191060 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260181 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106911.P1889421465492141689

/-!
# A106912: Primes of the form 2x^2-xy+7y^2, with x and y nonnegative.

The programs for A106912, there is no canonical definition to state claims against.
-/

/-! ## A106912.P16520238353257892270

`p?[∑[A258594(A083861(n))]]`
-/

namespace A106912.P16520238353257892270
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258594 (A083861 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A106912.P16520238353257892270

/-! ## A106912.P12075419563767355161

`∩[A106911(n+1), A191927(n+1)]`
-/

namespace A106912.P12075419563767355161
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106911 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191927 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106912.P12075419563767355161

/-!
# A106913: Primes of the form x^2+xy+14y^2, with x and y nonnegative.

The programs for A106913, there is no canonical definition to state claims against.
-/

/-! ## A106913.P11105109644387639911

`A033235(A229300(n+1)^A008835(n+1))`
-/

namespace A106913.P11105109644387639911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033235 (SequenceMachineLib.roundAway ((A229300 (n + 1) : ℚ) ^ (A008835 (n + 1) : ℤ))).toNat

end

end A106913.P11105109644387639911

/-! ## A106913.P17322837037201773325

`A033235(A229300(n+1)%A014891(n+1))`
-/

namespace A106913.P17322837037201773325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033235 (Int.tmod (A229300 (n + 1)) (A014891 (n + 1))).toNat

end

end A106913.P17322837037201773325

/-! ## A106913.P3442780370202865307

`A033235(A008835(n+1)²²*A229300(n+1))`
-/

namespace A106913.P3442780370202865307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033235 ((A008835 (n + 1) ^ 2) ^ 2 * A229300 (n + 1)).toNat

end

end A106913.P3442780370202865307

/-! ## A106913.P9292379217316565522

`A033235(A229300(n+1))/A229300(A008835(n+1)²)`
-/

namespace A106913.P9292379217316565522
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A033235 (A229300 (n + 1)).toNat : ℚ) / (A229300 (A008835 (n + 1) ^ 2).toNat : ℚ)

end

end A106913.P9292379217316565522

/-!
# A106914: Primes of the form 3x^2+2xy+5y^2, with x and y nonnegative.

The programs for A106914, there is no canonical definition to state claims against.
-/

/-! ## A106914.P9133475737330249163

`A089793((a(n-1)+3)²)` with `a(0)=3`
-/

namespace A106914.P9133475737330249163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  A089793 ((a (n - 1) + 3) ^ 2).toNat

end

end A106914.P9133475737330249163

/-!
# A106915: Primes of the form 3x^2 + 2xy + 5y^2, with x and y any integer.

The programs for A106915, the canonical program `A106915.P15563211329436691642` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A106915 has offset 1).

The definition of A106915 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5004 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A106915.P10275965768611351377

`∪[A106914(n+1), A106916(n+1)]`
-/

namespace A106915.P10275965768611351377
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106914 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106916 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A106915.P10275965768611351377

namespace A106915

/-- `∪[A106914(n+1), A106916(n+1)]` -/
def P10275965768611351377.Spec : Prop :=
  ∀ n, (P10275965768611351377.a n : ℤ) = A106915 (n + 1)

end A106915

/-! ## A106915.P7962124086684940698

`∩[A003625(n+1), A191017(n+1)]`
-/

namespace A106915.P7962124086684940698
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003625 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191017 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106915.P7962124086684940698

namespace A106915

/-- `∩[A003625(n+1), A191017(n+1)]` -/
def P7962124086684940698.Spec : Prop :=
  ∀ n, (P7962124086684940698.a n : ℤ) = A106915 (n + 1)

end A106915

/-! ## A106915.P5899161936322232589

`∩[A045399(n+1), A191017(n+1)]`
-/

namespace A106915.P5899161936322232589
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045399 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191017 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106915.P5899161936322232589

namespace A106915

/-- `∩[A045399(n+1), A191017(n+1)]` -/
def P5899161936322232589.Spec : Prop :=
  ∀ n, (P5899161936322232589.a n : ℤ) = A106915 (n + 1)

end A106915

/-! ## A106915.P15563211329436691642

`∩[A003625(n+1), A003629(n+1)]`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A106915

/-- `∩[A003625(n+1), A003629(n+1)]` -/
def P15563211329436691642.Spec : Prop :=
  ∀ n, (P15563211329436691642.a n : ℤ) = A106915 (n + 1)

theorem P15563211329436691642.correct : P15563211329436691642.Spec := by
  intro n
  simp only [A106915, Nat.add_sub_cancel]

end A106915

/-! ## A106915.P6117986126538554073

`∩[A003625(n+1), A042999(n+1)]`
-/

namespace A106915.P6117986126538554073
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003625 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042999 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106915.P6117986126538554073

namespace A106915

/-- `∩[A003625(n+1), A042999(n+1)]` -/
def P6117986126538554073.Spec : Prop :=
  ∀ n, (P6117986126538554073.a n : ℤ) = A106915 (n + 1)

end A106915

/-! ## A106915.P15941649666478292343

`∩[A003629(n+1), A045399(n+1)]`
-/

namespace A106915.P15941649666478292343
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003629 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045399 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106915.P15941649666478292343

namespace A106915

/-- `∩[A003629(n+1), A045399(n+1)]` -/
def P15941649666478292343.Spec : Prop :=
  ∀ n, (P15941649666478292343.a n : ℤ) = A106915 (n + 1)

end A106915

/-! ## A106915.P11111682239688012819

`∩[A042999(n+1), A045399(n+1)]`
-/

namespace A106915.P11111682239688012819
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042999 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045399 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106915.P11111682239688012819

namespace A106915

/-- `∩[A042999(n+1), A045399(n+1)]` -/
def P11111682239688012819.Spec : Prop :=
  ∀ n, (P11111682239688012819.a n : ℤ) = A106915 (n + 1)

end A106915

/-! ## A106915.P5232513754521075672

`∩[A003629(n+1), A191017(n+1)]`
-/

namespace A106915.P5232513754521075672
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003629 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191017 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106915.P5232513754521075672

namespace A106915

/-- `∩[A003629(n+1), A191017(n+1)]` -/
def P5232513754521075672.Spec : Prop :=
  ∀ n, (P5232513754521075672.a n : ℤ) = A106915 (n + 1)

end A106915

/-! ## A106915.P16439934266729457449

`∩[A042999(n+1), A191017(n+1)]`
-/

namespace A106915.P16439934266729457449
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042999 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191017 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106915.P16439934266729457449

namespace A106915

/-- `∩[A042999(n+1), A191017(n+1)]` -/
def P16439934266729457449.Spec : Prop :=
  ∀ n, (P16439934266729457449.a n : ℤ) = A106915 (n + 1)

end A106915

/-! ## A106915.P11367291435132584784

`∩[A003625(n+1), A319041(n+1)]`
-/

namespace A106915.P11367291435132584784
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003625 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319041 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106915.P11367291435132584784

namespace A106915

/-- `∩[A003625(n+1), A319041(n+1)]` -/
def P11367291435132584784.Spec : Prop :=
  ∀ n, (P11367291435132584784.a n : ℤ) = A106915 (n + 1)

end A106915

/-! ## A106915.P10638035046804734491

`∩[A045399(n+1), A319041(n+1)]`
-/

namespace A106915.P10638035046804734491
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045399 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319041 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106915.P10638035046804734491

namespace A106915

/-- `∩[A045399(n+1), A319041(n+1)]` -/
def P10638035046804734491.Spec : Prop :=
  ∀ n, (P10638035046804734491.a n : ℤ) = A106915 (n + 1)

end A106915

/-! ## A106915.P17958780770998193847

`∩[A319041(n+1), A191017(n+1)]`
-/

namespace A106915.P17958780770998193847
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319041 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191017 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106915.P17958780770998193847

namespace A106915

/-- `∩[A319041(n+1), A191017(n+1)]` -/
def P17958780770998193847.Spec : Prop :=
  ∀ n, (P17958780770998193847.a n : ℤ) = A106915 (n + 1)

end A106915

/-! ## A106915.P14712505791084029326

`∩[A003625(n+1), A270699(n+1)]`
-/

namespace A106915.P14712505791084029326
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003625 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270699 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106915.P14712505791084029326

namespace A106915

/-- `∩[A003625(n+1), A270699(n+1)]` -/
def P14712505791084029326.Spec : Prop :=
  ∀ n, (P14712505791084029326.a n : ℤ) = A106915 (n + 1)

end A106915

/-! ## A106915.P9297679572405256920

`∩[A045399(n+1), A270699(n+1)]`
-/

namespace A106915.P9297679572405256920
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045399 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270699 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106915.P9297679572405256920

namespace A106915

/-- `∩[A045399(n+1), A270699(n+1)]` -/
def P9297679572405256920.Spec : Prop :=
  ∀ n, (P9297679572405256920.a n : ℤ) = A106915 (n + 1)

end A106915

/-! ## A106915.P3337747980230671999

`∩[A003625(n+1), A059265(n+1)]`
-/

namespace A106915.P3337747980230671999
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003625 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059265 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106915.P3337747980230671999

namespace A106915

/-- `∩[A003625(n+1), A059265(n+1)]` -/
def P3337747980230671999.Spec : Prop :=
  ∀ n, (P3337747980230671999.a n : ℤ) = A106915 (n + 1)

end A106915

/-! ## A106915.P16129214873339029335

`∩[A045399(n+1), A059265(n+1)]`
-/

namespace A106915.P16129214873339029335
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045399 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059265 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106915.P16129214873339029335

namespace A106915

/-- `∩[A045399(n+1), A059265(n+1)]` -/
def P16129214873339029335.Spec : Prop :=
  ∀ n, (P16129214873339029335.a n : ℤ) = A106915 (n + 1)

end A106915

/-! ## A106915.P5203066723176867607

`∩[A003629(n+1), A042952(n)]`
-/

namespace A106915.P5203066723176867607
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003629 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042952 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106915.P5203066723176867607

namespace A106915

/-- `∩[A003629(n+1), A042952(n)]` -/
def P5203066723176867607.Spec : Prop :=
  ∀ n, (P5203066723176867607.a n : ℤ) = A106915 (n + 1)

end A106915

/-!
# A106916: Primes of the form 3x^2-2xy+5y^2, with x and y nonnegative.

The programs for A106916, there is no canonical definition to state claims against.
-/

/-! ## A106916.P7224527906289381168

`p?[A238872(A238895(n+1)-1)]`
-/

namespace A106916.P7224527906289381168
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238872 (A238895 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A106916.P7224527906289381168

/-! ## A106916.P900895560006774031

`p?[A161182(n+1)*A334546(n)]`
-/

namespace A106916.P900895560006774031
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161182 (n + 1) * A334546 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A106916.P900895560006774031

/-! ## A106916.P7192749765891947154

`A000040(lt[A348366(n), A124606(n)])`
-/

namespace A106916.P7192749765891947154
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348366 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124606 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A106916.P7192749765891947154

/-!
# A106917: Primes of the form 2x^2 + 7y^2.

The programs for A106917, there is no canonical definition to state claims against.
-/

/-! ## A106917.P10090196629561629596

`p?[A020675(n+1)]`
-/

namespace A106917.P10090196629561629596
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020675 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A106917.P10090196629561629596

/-! ## A106917.P18001617188159001491

`filter[A020675(n+2), A010051(#)]`
-/

namespace A106917.P18001617188159001491
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020675 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A106917.P18001617188159001491

/-! ## A106917.P11711211122630531356

`∩[A020675(n+1), A042988(n)]`
-/

namespace A106917.P11711211122630531356
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020675 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042988 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106917.P11711211122630531356

/-! ## A106917.P17150975139318685657

`∩[A000040(n+1), A020675(n+1)]`
-/

namespace A106917.P17150975139318685657
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020675 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106917.P17150975139318685657

/-! ## A106917.P377899655935182076

`∩[A008578(n+1), A020675(n+1)]`
-/

namespace A106917.P377899655935182076
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020675 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106917.P377899655935182076

/-! ## A106917.P2891359099645105581

`∩[A020675(n+1), A038873(n+1)]`
-/

namespace A106917.P2891359099645105581
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020675 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038873 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106917.P2891359099645105581

/-! ## A106917.P8360019008088188968

`∩[A020675(n+1), A045319(n+1)]`
-/

namespace A106917.P8360019008088188968
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020675 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106917.P8360019008088188968

/-! ## A106917.P13019812375033476393

`∩[A020675(n+1), A045320(n+1)]`
-/

namespace A106917.P13019812375033476393
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020675 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045320 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106917.P13019812375033476393

/-! ## A106917.P2800892562323495171

`∩[A020675(n+1), A045323(n+1)]`
-/

namespace A106917.P2800892562323495171
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020675 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045323 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106917.P2800892562323495171

/-! ## A106917.P4550727676303682763

`∩[A020675(n+1), A045324(n+1)]`
-/

namespace A106917.P4550727676303682763
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020675 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045324 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106917.P4550727676303682763

/-! ## A106917.P1708309649866652825

`∩[A020675(n+1), A045344(n+1)]`
-/

namespace A106917.P1708309649866652825
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020675 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106917.P1708309649866652825

/-! ## A106917.P6131852478867729909

`∩[A020675(n+1), A045346(n+1)]`
-/

namespace A106917.P6131852478867729909
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020675 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045346 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106917.P6131852478867729909

/-! ## A106917.P16030219617430090478

`∩[A020675(n+1), A045350(n+1)]`
-/

namespace A106917.P16030219617430090478
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020675 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045350 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106917.P16030219617430090478

/-! ## A106917.P4411683566187080336

`∩[A020675(n+1), A045352(n+1)]`
-/

namespace A106917.P4411683566187080336
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020675 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045352 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106917.P4411683566187080336

/-! ## A106917.P16725143632568881972

`∩[A020675(n+1), A045369(n+1)]`
-/

namespace A106917.P16725143632568881972
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020675 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045369 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106917.P16725143632568881972

/-! ## A106917.P17692139966043384522

`∩[A020675(n+1), A045373(n+1)]`
-/

namespace A106917.P17692139966043384522
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020675 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045373 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106917.P17692139966043384522

/-! ## A106917.P2043456305701611670

`∩[A020675(n+1), A046022(n+1)]`
-/

namespace A106917.P2043456305701611670
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020675 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046022 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106917.P2043456305701611670

/-! ## A106917.P9645226370414311775

`∩[A020675(n+1), A051948(n+1)]`
-/

namespace A106917.P9645226370414311775
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020675 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051948 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106917.P9645226370414311775

/-! ## A106917.P1663776739752794487

`∩[A020675(n+1), A106118(n+1)]`
-/

namespace A106917.P1663776739752794487
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020675 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106118 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106917.P1663776739752794487

/-! ## A106917.P10762273330679388823

`∩[A020675(n+1), A270617(n+1)]`
-/

namespace A106917.P10762273330679388823
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020675 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270617 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106917.P10762273330679388823

/-!
# A106918: Primes of the form 3x^2+xy+5y^2, with x and y nonnegative.

The programs for A106918, there is no canonical definition to state claims against.
-/

/-! ## A106918.P14041632785315779615

`record[p?[A131003(n+2)-A130400(n)]]`
-/

namespace A106918.P14041632785315779615
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131003 (n + 2) - A130400 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A106918.P14041632785315779615

/-! ## A106918.P5887213868271848315

`A316857(A053818(n+1)+A053798(n))`
-/

namespace A106918.P5887213868271848315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316857 (A053818 (n + 1) + A053798 n).toNat

end

end A106918.P5887213868271848315

/-!
# A106919: Primes of the form 3x^2+xy+5y^2, with x and y any integer.

The programs for A106919, there is no canonical definition to state claims against.
-/

/-! ## A106919.P6838735349001396351

`∪[A106918(n+1), A106920(n+1)]`
-/

namespace A106919.P6838735349001396351
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106918 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106920 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A106919.P6838735349001396351

/-!
# A106920: Primes of the form 3x^2-xy+5y^2, with x and y nonnegative.

The programs for A106920, there is no canonical definition to state claims against.
-/

/-! ## A106920.P16102763756420151694

`A354370(A155978(n+1))`
-/

namespace A106920.P16102763756420151694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354370 (A155978 (n + 1)).toNat

end

end A106920.P16102763756420151694

/-! ## A106920.P10806447374332816111

`filter[A098860(n+1), A374769(#)]`
-/

namespace A106920.P10806447374332816111
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098860 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374769 (f1 j).toNat = 1) n)

end

end A106920.P10806447374332816111

/-! ## A106920.P10087842133147281660

`A098860(lt[A098888(n+1), A227742(n+1)])`
-/

namespace A106920.P10087842133147281660
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098888 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227742 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098860 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A106920.P10087842133147281660

/-!
# A106921: Primes of the form x^2+xy+15y^2, with x and y nonnegative.

The programs for A106921, there is no canonical definition to state claims against.
-/

/-! ## A106921.P2370330746580945562

`A106922(floor(atan(A106685(n)))+n+1)`
-/

namespace A106921.P2370330746580945562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106922 (⌊Real.arctan (A106685 n : ℝ)⌋ + (n + 1 : ℤ)).toNat

end

end A106921.P2370330746580945562

/-! ## A106921.P15474295839151798075

`record[A106922(n+1)%A106923(A001609(n+1))]`
-/

namespace A106921.P15474295839151798075
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A106922 (n + 1)) (A106923 (A001609 (n + 1)).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A106921.P15474295839151798075

/-! ## A106921.P5708703878330126103

`A106922(floor(atan(A107112(n)))+n+1)`
-/

namespace A106921.P5708703878330126103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106922 (⌊Real.arctan (A107112 n : ℝ)⌋ + (n + 1 : ℤ)).toNat

end

end A106921.P5708703878330126103

/-! ## A106921.P10128473078112012385

`A106922(floor(atan(A106684(n)))+n+1)`
-/

namespace A106921.P10128473078112012385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106922 (⌊Real.arctan (A106684 n : ℝ)⌋ + (n + 1 : ℤ)).toNat

end

end A106921.P10128473078112012385

/-! ## A106921.P4901319639247402514

`A106922(n+2)%A256786(A247581(n+2))`
-/

namespace A106921.P4901319639247402514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A106922 (n + 2)) (A256786 (A247581 (n + 2)).toNat)

end

end A106921.P4901319639247402514

/-!
# A106922: Primes of the form x^2-xy+15y^2, with x and y nonnegative.

The programs for A106922, there is no canonical definition to state claims against.
-/

/-! ## A106922.P4740389648570325535

`A353833(A088909(n+1)-A334028(n))`
-/

namespace A106922.P4740389648570325535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353833 (A088909 (n + 1) - A334028 n).toNat

end

end A106922.P4740389648570325535

/-!
# A106923: Primes of the form 4x^2+xy+4y^2, with x and y nonnegative.

The programs for A106923, there is no canonical definition to state claims against.
-/

/-! ## A106923.P18251447379334221711

`p?[A020691(n+1)*A077042(n)]`
-/

namespace A106923.P18251447379334221711
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020691 (n + 1) * A077042 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A106923.P18251447379334221711

/-! ## A106923.P1411668696694018152

`p?[A020691(n+1)*A108947(n)]`
-/

namespace A106923.P1411668696694018152
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020691 (n + 1) * A108947 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A106923.P1411668696694018152

/-!
# A106924: Primes of the form 4x^2 + xy + 4y^2, with x and y any integer.

The programs for A106924, there is no canonical definition to state claims against.
-/

/-! ## A106924.P9310944931253606364

`∪[A106923(n+1), A106925(n+1)]`
-/

namespace A106924.P9310944931253606364
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106923 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106925 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A106924.P9310944931253606364

/-! ## A106924.P5113504155483742280

`p?[A020691(n+1)]`
-/

namespace A106924.P5113504155483742280
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020691 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A106924.P5113504155483742280

/-! ## A106924.P14079502207986252657

`∩[A002476(n+1), A020691(n+1)]`
-/

namespace A106924.P14079502207986252657
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002476 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020691 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106924.P14079502207986252657

/-! ## A106924.P17562989874884360592

`∩[A007645(n+1), A020691(n+1)]`
-/

namespace A106924.P17562989874884360592
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007645 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020691 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106924.P17562989874884360592

/-! ## A106924.P10512189177637756294

`∩[A020691(n+1), A033207(n+1)]`
-/

namespace A106924.P10512189177637756294
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020691 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033207 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106924.P10512189177637756294

/-! ## A106924.P6549580389034964687

`∩[A020691(n+1), A038893(n+1)]`
-/

namespace A106924.P6549580389034964687
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020691 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038893 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106924.P6549580389034964687

/-! ## A106924.P13235295847119419248

`∩[A020691(n+1), A040116(n+1)]`
-/

namespace A106924.P13235295847119419248
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020691 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040116 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106924.P13235295847119419248

/-! ## A106924.P16142605141293871687

`∩[A020691(n+1), A045324(n+1)]`
-/

namespace A106924.P16142605141293871687
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020691 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045324 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106924.P16142605141293871687

/-! ## A106924.P16152718883619060913

`∩[A020691(n+1), A045331(n+1)]`
-/

namespace A106924.P16152718883619060913
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020691 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045331 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106924.P16152718883619060913

/-! ## A106924.P77055311071141558

`∩[A020691(n+1), A045350(n+1)]`
-/

namespace A106924.P77055311071141558
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020691 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045350 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106924.P77055311071141558

/-! ## A106924.P4984181126306663942

`∩[A020691(n+1), A045369(n+1)]`
-/

namespace A106924.P4984181126306663942
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020691 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045369 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106924.P4984181126306663942

/-! ## A106924.P10456609095022408773

`∩[A020691(n+1), A045373(n+1)]`
-/

namespace A106924.P10456609095022408773
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020691 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045373 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106924.P10456609095022408773

/-! ## A106924.P7915302645387812083

`∩[A020691(n+1), A045375(n+1)]`
-/

namespace A106924.P7915302645387812083
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020691 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045375 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106924.P7915302645387812083

/-! ## A106924.P9168986893639061540

`∩[A020691(n+1), A123365(n+1)]`
-/

namespace A106924.P9168986893639061540
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020691 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123365 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106924.P9168986893639061540

/-! ## A106924.P2598534297410425145

`∩[A020691(n+1), A139492(n+1)]`
-/

namespace A106924.P2598534297410425145
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020691 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139492 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106924.P2598534297410425145

/-! ## A106924.P13312085776882507459

`∩[A020691(n+1), A325143(n+1)]`
-/

namespace A106924.P13312085776882507459
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020691 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325143 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106924.P13312085776882507459

/-! ## A106924.P17820947642606228685

`∩[A020691(n+1), A042988(n)]`
-/

namespace A106924.P17820947642606228685
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020691 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042988 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106924.P17820947642606228685

/-! ## A106924.P10217115150259014412

`∩[A020691(n+1), A045320(n+1)]`
-/

namespace A106924.P10217115150259014412
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020691 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045320 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106924.P10217115150259014412

/-! ## A106924.P9697341556985496428

`∩[A020691(n+1), A045346(n+1)]`
-/

namespace A106924.P9697341556985496428
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020691 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045346 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106924.P9697341556985496428

/-! ## A106924.P10890535991703103841

`∩[A020691(n+1), A140557(n+1)]`
-/

namespace A106924.P10890535991703103841
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020691 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140557 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106924.P10890535991703103841

/-!
# A106925: Primes of the form 4x^2-xy+4y^2, with x and y nonnegative.

The programs for A106925, there is no canonical definition to state claims against.
-/

/-! ## A106925.P6189095143542356542

`∩[A020691(n+1), A223036(n+1)]`
-/

namespace A106925.P6189095143542356542
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020691 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223036 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106925.P6189095143542356542

/-!
# A106926: Primes of the form 2x^2+xy+8y^2, with x and y nonnegative.

The programs for A106926, there is no canonical definition to state claims against.
-/

/-! ## A106926.P7161251251561422620

`A186782(A252760(n+2))`
-/

namespace A106926.P7161251251561422620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186782 (A252760 (n + 2)).toNat

end

end A106926.P7161251251561422620

/-! ## A106926.P10519482293470471974

`p?[A307645(record[A309714(n+1)])]`
-/

namespace A106926.P10519482293470471974
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309714 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307645 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A106926.P10519482293470471974

/-!
# A106927: Primes of the form 2x^2+xy+8y^2, with x and y any integer.

The programs for A106927, the canonical program `A106927.P1792570215804592626` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A106927 has offset 1).

The definition of A106927 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5003 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A106927.P12267335671912450458

`∪[A106926(n+1), A106928(n+1)]`
-/

namespace A106927.P12267335671912450458
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106926 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106928 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A106927.P12267335671912450458

namespace A106927

/-- `∪[A106926(n+1), A106928(n+1)]` -/
def P12267335671912450458.Spec : Prop :=
  ∀ n, (P12267335671912450458.a n : ℤ) = A106927 (n + 1)

end A106927

/-! ## A106927.P1792570215804592626

`∩[A038894(n+1), A045373(n+1)]`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A106927

/-- `∩[A038894(n+1), A045373(n+1)]` -/
def P1792570215804592626.Spec : Prop :=
  ∀ n, (P1792570215804592626.a n : ℤ) = A106927 (n + 1)

theorem P1792570215804592626.correct : P1792570215804592626.Spec := by
  intro n
  simp only [A106927, Nat.add_sub_cancel]

end A106927

/-! ## A106927.P3909570580672199559

`∩[A038894(n+1), A045386(n+1)]`
-/

namespace A106927.P3909570580672199559
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038894 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045386 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106927.P3909570580672199559

namespace A106927

/-- `∩[A038894(n+1), A045386(n+1)]` -/
def P3909570580672199559.Spec : Prop :=
  ∀ n, (P3909570580672199559.a n : ℤ) = A106927 (n + 1)

end A106927

/-! ## A106927.P10983482685992027373

`∩[A003627(n+1), A038894(n+1)]`
-/

namespace A106927.P10983482685992027373
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003627 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038894 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106927.P10983482685992027373

namespace A106927

/-- `∩[A003627(n+1), A038894(n+1)]` -/
def P10983482685992027373.Spec : Prop :=
  ∀ n, (P10983482685992027373.a n : ℤ) = A106927 (n + 1)

end A106927

/-! ## A106927.P15707879377813318361

`∩[A003627(n+1), A045373(n+1)]`
-/

namespace A106927.P15707879377813318361
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003627 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045373 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106927.P15707879377813318361

namespace A106927

/-- `∩[A003627(n+1), A045373(n+1)]` -/
def P15707879377813318361.Spec : Prop :=
  ∀ n, (P15707879377813318361.a n : ℤ) = A106927 (n + 1)

end A106927

/-! ## A106927.P4429396358110895805

`∩[A003627(n+1), A045386(n+1)]`
-/

namespace A106927.P4429396358110895805
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003627 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045386 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106927.P4429396358110895805

namespace A106927

/-- `∩[A003627(n+1), A045386(n+1)]` -/
def P4429396358110895805.Spec : Prop :=
  ∀ n, (P4429396358110895805.a n : ℤ) = A106927 (n + 1)

end A106927

/-! ## A106927.P11926262311068618789

`∩[A038894(n+1), A045309(n+1)]`
-/

namespace A106927.P11926262311068618789
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038894 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045309 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106927.P11926262311068618789

namespace A106927

/-- `∩[A038894(n+1), A045309(n+1)]` -/
def P11926262311068618789.Spec : Prop :=
  ∀ n, (P11926262311068618789.a n : ℤ) = A106927 (n + 1)

end A106927

/-! ## A106927.P8271159037760040801

`∩[A045309(n+1), A045373(n+1)]`
-/

namespace A106927.P8271159037760040801
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045309 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045373 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106927.P8271159037760040801

namespace A106927

/-- `∩[A045309(n+1), A045373(n+1)]` -/
def P8271159037760040801.Spec : Prop :=
  ∀ n, (P8271159037760040801.a n : ℤ) = A106927 (n + 1)

end A106927

/-! ## A106927.P17027419962035948192

`∩[A045309(n+1), A045386(n+1)]`
-/

namespace A106927.P17027419962035948192
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045309 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045386 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106927.P17027419962035948192

namespace A106927

/-- `∩[A045309(n+1), A045386(n+1)]` -/
def P17027419962035948192.Spec : Prop :=
  ∀ n, (P17027419962035948192.a n : ℤ) = A106927 (n + 1)

end A106927

/-! ## A106927.P812377691749773076

`∩[A038894(n+1), A066501(n+1)]`
-/

namespace A106927.P812377691749773076
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038894 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066501 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106927.P812377691749773076

namespace A106927

/-- `∩[A038894(n+1), A066501(n+1)]` -/
def P812377691749773076.Spec : Prop :=
  ∀ n, (P812377691749773076.a n : ℤ) = A106927 (n + 1)

end A106927

/-! ## A106927.P2228230567223263637

`∩[A045373(n+1), A066501(n+1)]`
-/

namespace A106927.P2228230567223263637
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045373 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066501 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106927.P2228230567223263637

namespace A106927

/-- `∩[A045373(n+1), A066501(n+1)]` -/
def P2228230567223263637.Spec : Prop :=
  ∀ n, (P2228230567223263637.a n : ℤ) = A106927 (n + 1)

end A106927

/-! ## A106927.P16436024871194925917

`∩[A045386(n+1), A066501(n+1)]`
-/

namespace A106927.P16436024871194925917
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045386 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066501 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106927.P16436024871194925917

namespace A106927

/-- `∩[A045386(n+1), A066501(n+1)]` -/
def P16436024871194925917.Spec : Prop :=
  ∀ n, (P16436024871194925917.a n : ℤ) = A106927 (n + 1)

end A106927

/-! ## A106927.P518301801338961155

`p?[∑[3*A037904(A190779(a(n-1)+1)+1)]]` with `a(0)=2`
-/

namespace A106927.P518301801338961155
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f2 =>
  3 * A037904 (A190779 (f2 (n - 1) + 1).toNat + 1).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A106927.P518301801338961155

namespace A106927

/-- `p?[∑[3*A037904(A190779(a(n-1)+1)+1)]]` -/
def P518301801338961155.Spec : Prop :=
  ∀ n, P518301801338961155.a n = A106927 (n + 1)

end A106927

/-! ## A106927.P13200387372056426587

`∩[A038894(n+1), A082406(n+1)]`
-/

namespace A106927.P13200387372056426587
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038894 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082406 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106927.P13200387372056426587

namespace A106927

/-- `∩[A038894(n+1), A082406(n+1)]` -/
def P13200387372056426587.Spec : Prop :=
  ∀ n, (P13200387372056426587.a n : ℤ) = A106927 (n + 1)

end A106927

/-! ## A106927.P11716768230168454835

`∩[A045373(n+1), A082406(n+1)]`
-/

namespace A106927.P11716768230168454835
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045373 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082406 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106927.P11716768230168454835

namespace A106927

/-- `∩[A045373(n+1), A082406(n+1)]` -/
def P11716768230168454835.Spec : Prop :=
  ∀ n, (P11716768230168454835.a n : ℤ) = A106927 (n + 1)

end A106927

/-! ## A106927.P11820435265556308199

`∩[A045386(n+1), A082406(n+1)]`
-/

namespace A106927.P11820435265556308199
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045386 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082406 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106927.P11820435265556308199

namespace A106927

/-- `∩[A045386(n+1), A082406(n+1)]` -/
def P11820435265556308199.Spec : Prop :=
  ∀ n, (P11820435265556308199.a n : ℤ) = A106927 (n + 1)

end A106927

/-! ## A106927.P15099052721567037025

`∩[A038894(n+1), A167409(n+1)]`
-/

namespace A106927.P15099052721567037025
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038894 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167409 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106927.P15099052721567037025

namespace A106927

/-- `∩[A038894(n+1), A167409(n+1)]` -/
def P15099052721567037025.Spec : Prop :=
  ∀ n, (P15099052721567037025.a n : ℤ) = A106927 (n + 1)

end A106927

/-! ## A106927.P12852515979161860434

`∩[A045373(n+1), A167409(n+1)]`
-/

namespace A106927.P12852515979161860434
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045373 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167409 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106927.P12852515979161860434

namespace A106927

/-- `∩[A045373(n+1), A167409(n+1)]` -/
def P12852515979161860434.Spec : Prop :=
  ∀ n, (P12852515979161860434.a n : ℤ) = A106927 (n + 1)

end A106927

/-! ## A106927.P6691476221725908829

`∩[A045386(n+1), A167409(n+1)]`
-/

namespace A106927.P6691476221725908829
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045386 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167409 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106927.P6691476221725908829

namespace A106927

/-- `∩[A045386(n+1), A167409(n+1)]` -/
def P6691476221725908829.Spec : Prop :=
  ∀ n, (P6691476221725908829.a n : ℤ) = A106927 (n + 1)

end A106927

/-! ## A106927.P1011243109200683815

`∩[A003627(n+1), A244779(n+1)]`
-/

namespace A106927.P1011243109200683815
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003627 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244779 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106927.P1011243109200683815

namespace A106927

/-- `∩[A003627(n+1), A244779(n+1)]` -/
def P1011243109200683815.Spec : Prop :=
  ∀ n, (P1011243109200683815.a n : ℤ) = A106927 (n + 1)

end A106927

/-!
# A106929: Primes of the form x^2+xy+16y^2, with x and y nonnegative.

The programs for A106929, there is no canonical definition to state claims against.
-/

/-! ## A106929.P5847830942205490221

`A106930(∑[A322871(A166753(n))])`
-/

namespace A106929.P5847830942205490221
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322871 (A166753 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106930 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A106929.P5847830942205490221

/-! ## A106929.P11464754737117240331

`A106930(∑[A124778(2*n+1)])`
-/

namespace A106929.P11464754737117240331
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124778 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106930 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A106929.P11464754737117240331

/-! ## A106929.P15321887778986543008

`A106930(record[A319225(A157282(n+1))])`
-/

namespace A106929.P15321887778986543008
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319225 (A157282 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106930 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A106929.P15321887778986543008

/-! ## A106929.P7718442431972235890

`p?[A106930(n+1)*A124778(2*n+1)]`
-/

namespace A106929.P7718442431972235890
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106930 (n + 1) * A124778 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A106929.P7718442431972235890

/-! ## A106929.P3187610646758099369

`A106930(A124778(A062399(n))+n)`
-/

namespace A106929.P3187610646758099369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106930 (A124778 (A062399 n).toNat + (n : ℤ)).toNat

end

end A106929.P3187610646758099369

/-!
# A106930: Primes of the form x^2 - xy + 16y^2, with x and y nonnegative.

The programs for A106930, there is no canonical definition to state claims against.
-/

/-! ## A106930.P1453531727466508020

`p?[eq[2, A030201(n)]]`
-/

namespace A106930.P1453531727466508020
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030201 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A106930.P1453531727466508020

/-! ## A106930.P18013551666159239216

`eq[A030201(n), A046691(A032741(n))]`
-/

namespace A106930.P18013551666159239216
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030201 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046691 (A032741 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A106930.P18013551666159239216

/-! ## A106930.P16608234453768793359

`p?[A016921(eq[2, A160806(n)])]`
-/

namespace A106930.P16608234453768793359
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160806 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016921 (SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A106930.P16608234453768793359

/-! ## A106930.P1696017681800477575

`p?[(A160806(n)-1)*A016921(n)]`
-/

namespace A106930.P1696017681800477575
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A160806 n - 1) * A016921 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A106930.P1696017681800477575

/-!
# A106931: Primes of the form 4x^2+4xy+5y^2, with x and y nonnegative.

The programs for A106931, there is no canonical definition to state claims against.
-/

/-! ## A106931.P3676030622417359209

`p?[A144451(2*n+1)+8*n+4]`
-/

namespace A106931.P3676030622417359209
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144451 (2 * n + 1) + (8 * n + 4 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A106931.P3676030622417359209

/-!
# A106933: Primes of the form x^2-xy+17y^2, with x and y nonnegative.

The programs for A106933, there is no canonical definition to state claims against.
-/

/-! ## A106933.P7077966720801327598

`p?[A341789(n+1)]`
-/

namespace A106933.P7077966720801327598
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341789 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A106933.P7077966720801327598

/-! ## A106933.P5193994995239116396

`∩[A015919(n+1), A341789(n+1)]`
-/

namespace A106933.P5193994995239116396
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015919 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341789 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106933.P5193994995239116396

/-! ## A106933.P3041301010657872185

`∩[A004139(n+1), A341789(n+1)]`
-/

namespace A106933.P3041301010657872185
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341789 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106933.P3041301010657872185

/-! ## A106933.P13789495393200025008

`∩[A045319(n+1), A341789(n+1)]`
-/

namespace A106933.P13789495393200025008
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341789 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106933.P13789495393200025008

/-! ## A106933.P9959134076927718478

`∩[A045344(n+1), A341789(n+1)]`
-/

namespace A106933.P9959134076927718478
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341789 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106933.P9959134076927718478

/-! ## A106933.P17765812604621766629

`∩[A065091(n+1), A341789(n+1)]`
-/

namespace A106933.P17765812604621766629
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341789 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106933.P17765812604621766629

/-! ## A106933.P10460095351777889285

`∩[A000040(n+1), A341789(n+1)]`
-/

namespace A106933.P10460095351777889285
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341789 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106933.P10460095351777889285

/-! ## A106933.P3548934611380478412

`∩[A006005(n+1), A341789(n+1)]`
-/

namespace A106933.P3548934611380478412
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341789 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106933.P3548934611380478412

/-! ## A106933.P59250403992095772

`∩[A008578(n+1), A341789(n+1)]`
-/

namespace A106933.P59250403992095772
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341789 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106933.P59250403992095772

/-! ## A106933.P4546326830993558071

`∩[A053813(n+1), A341789(n+1)]`
-/

namespace A106933.P4546326830993558071
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053813 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341789 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106933.P4546326830993558071

/-! ## A106933.P17671071802375242216

`∩[A341789(n+1), A260442(n)]`
-/

namespace A106933.P17671071802375242216
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341789 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260442 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106933.P17671071802375242216

/-! ## A106933.P355590323917158981

`∩[A079603(n+1), A341789(n+1)]`
-/

namespace A106933.P355590323917158981
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079603 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341789 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106933.P355590323917158981

/-! ## A106933.P10010040878818423241

`∩[A117286(n+1), A341789(n+1)]`
-/

namespace A106933.P10010040878818423241
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117286 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341789 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106933.P10010040878818423241

/-! ## A106933.P4681847564184673865

`record[A006530(A341789(n+3))]`
-/

namespace A106933.P4681847564184673865
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A341789 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A106933.P4681847564184673865

/-! ## A106933.P6661883773874726891

`filter[A341789(n+1), A008966(#)]`
-/

namespace A106933.P6661883773874726891
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341789 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A106933.P6661883773874726891

/-! ## A106933.P6768285525773097388

`filter[A341789(n+1), A010051(#)]`
-/

namespace A106933.P6768285525773097388
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341789 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A106933.P6768285525773097388

/-! ## A106933.P5946571049885569625

`filter[A341789(n+1), A066829(#)]`
-/

namespace A106933.P5946571049885569625
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341789 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A066829 (f1 j).toNat = 1) n)

end

end A106933.P5946571049885569625

/-! ## A106933.P3251164849042467036

`∩[A063752(n+1), A341789(n+1)]`
-/

namespace A106933.P3251164849042467036
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063752 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341789 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106933.P3251164849042467036

/-! ## A106933.P12694890781508557666

`filter[A341789(n+1), A257531(#)]`
-/

namespace A106933.P12694890781508557666
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341789 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A257531 (f1 j).toNat = 1) n)

end

end A106933.P12694890781508557666

/-! ## A106933.P12682777671141815803

`filter[A341789(n+1), A049240(#)]`
-/

namespace A106933.P12682777671141815803
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341789 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A049240 (f1 j).toNat = 1) n)

end

end A106933.P12682777671141815803

/-!
# A106934: Primes of the form 3x^2+2xy+6y^2, with x and y nonnegative.

The programs for A106934, there is no canonical definition to state claims against.
-/

/-! ## A106934.P8367275331137592981

`A002145(record[A231717(abs(1-8*n))])`
-/

namespace A106934.P8367275331137592981
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231717 |1 - (8 * n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002145 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A106934.P8367275331137592981

/-!
# A106935: Primes of the form 3x^2+2xy+6y^2, with x and y any integer.

The programs for A106935, the canonical program `A106935.P8140297274515338449` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A106935 has offset 1).

The definition of A106935 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5001 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A106935.P13096607055981007594

`∩[A002145(n+1), A296929(n+1)]`
-/

namespace A106935.P13096607055981007594
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002145 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296929 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106935.P13096607055981007594

namespace A106935

/-- `∩[A002145(n+1), A296929(n+1)]` -/
def P13096607055981007594.Spec : Prop :=
  ∀ n, (P13096607055981007594.a n : ℤ) = A106935 (n + 1)

end A106935

/-! ## A106935.P7619258949329693390

`∩[A002145(n+1), A296931(n+1)]`
-/

namespace A106935.P7619258949329693390
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002145 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296931 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106935.P7619258949329693390

namespace A106935

/-- `∩[A002145(n+1), A296931(n+1)]` -/
def P7619258949329693390.Spec : Prop :=
  ∀ n, (P7619258949329693390.a n : ℤ) = A106935 (n + 1)

end A106935

/-! ## A106935.P7487116633755107588

`∩[A045326(n+1), A296929(n+1)]`
-/

namespace A106935.P7487116633755107588
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045326 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296929 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106935.P7487116633755107588

namespace A106935

/-- `∩[A045326(n+1), A296929(n+1)]` -/
def P7487116633755107588.Spec : Prop :=
  ∀ n, (P7487116633755107588.a n : ℤ) = A106935 (n + 1)

end A106935

/-! ## A106935.P8140297274515338449

`∩[A002145(n+1), A038890(n+1)]`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A106935

/-- `∩[A002145(n+1), A038890(n+1)]` -/
def P8140297274515338449.Spec : Prop :=
  ∀ n, (P8140297274515338449.a n : ℤ) = A106935 (n + 1)

theorem P8140297274515338449.correct : P8140297274515338449.Spec := by
  intro n
  simp only [A106935, Nat.add_sub_cancel]

end A106935

/-! ## A106935.P3036585956371857243

`∩[A038890(n+1), A045326(n+1)]`
-/

namespace A106935.P3036585956371857243
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038890 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045326 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106935.P3036585956371857243

namespace A106935

/-- `∩[A038890(n+1), A045326(n+1)]` -/
def P3036585956371857243.Spec : Prop :=
  ∀ n, (P3036585956371857243.a n : ℤ) = A106935 (n + 1)

end A106935

/-! ## A106935.P16928824965015742814

`∩[A038890(n+1), A085760(n+1)]`
-/

namespace A106935.P16928824965015742814
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038890 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085760 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106935.P16928824965015742814

namespace A106935

/-- `∩[A038890(n+1), A085760(n+1)]` -/
def P16928824965015742814.Spec : Prop :=
  ∀ n, (P16928824965015742814.a n : ℤ) = A106935 (n + 1)

end A106935

/-! ## A106935.P6892037842981131932

`∩[A038890(n+1), A197504(n+1)]`
-/

namespace A106935.P6892037842981131932
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038890 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197504 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106935.P6892037842981131932

namespace A106935

/-- `∩[A038890(n+1), A197504(n+1)]` -/
def P6892037842981131932.Spec : Prop :=
  ∀ n, (P6892037842981131932.a n : ℤ) = A106935 (n + 1)

end A106935

/-! ## A106935.P2514048596240310700

`∩[A038890(n+1), A292762(n+1)]`
-/

namespace A106935.P2514048596240310700
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038890 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292762 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106935.P2514048596240310700

namespace A106935

/-- `∩[A038890(n+1), A292762(n+1)]` -/
def P2514048596240310700.Spec : Prop :=
  ∀ n, (P2514048596240310700.a n : ℤ) = A106935 (n + 1)

end A106935

/-! ## A106935.P1882167503950147947

`∩[A002145(n+1), A040140(n+1)]`
-/

namespace A106935.P1882167503950147947
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002145 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040140 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106935.P1882167503950147947

namespace A106935

/-- `∩[A002145(n+1), A040140(n+1)]` -/
def P1882167503950147947.Spec : Prop :=
  ∀ n, (P1882167503950147947.a n : ℤ) = A106935 (n + 1)

end A106935

/-! ## A106935.P3952502258227994244

`∩[A040140(n+1), A045326(n+1)]`
-/

namespace A106935.P3952502258227994244
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040140 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045326 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106935.P3952502258227994244

namespace A106935

/-- `∩[A040140(n+1), A045326(n+1)]` -/
def P3952502258227994244.Spec : Prop :=
  ∀ n, (P3952502258227994244.a n : ℤ) = A106935 (n + 1)

end A106935

/-! ## A106935.P7775270510082202026

`∩[A040140(n+1), A085760(n+1)]`
-/

namespace A106935.P7775270510082202026
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040140 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085760 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106935.P7775270510082202026

namespace A106935

/-- `∩[A040140(n+1), A085760(n+1)]` -/
def P7775270510082202026.Spec : Prop :=
  ∀ n, (P7775270510082202026.a n : ℤ) = A106935 (n + 1)

end A106935

/-! ## A106935.P17049696172176096233

`∩[A040140(n+1), A197504(n+1)]`
-/

namespace A106935.P17049696172176096233
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040140 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197504 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106935.P17049696172176096233

namespace A106935

/-- `∩[A040140(n+1), A197504(n+1)]` -/
def P17049696172176096233.Spec : Prop :=
  ∀ n, (P17049696172176096233.a n : ℤ) = A106935 (n + 1)

end A106935

/-! ## A106935.P11076676858096295036

`∩[A038890(n+1), A066499(n+1)]`
-/

namespace A106935.P11076676858096295036
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038890 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066499 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106935.P11076676858096295036

namespace A106935

/-- `∩[A038890(n+1), A066499(n+1)]` -/
def P11076676858096295036.Spec : Prop :=
  ∀ n, (P11076676858096295036.a n : ℤ) = A106935 (n + 1)

end A106935

/-! ## A106935.P570211667264967448

`∩[A040140(n+1), A066499(n+1)]`
-/

namespace A106935.P570211667264967448
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040140 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066499 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106935.P570211667264967448

namespace A106935

/-- `∩[A040140(n+1), A066499(n+1)]` -/
def P570211667264967448.Spec : Prop :=
  ∀ n, (P570211667264967448.a n : ℤ) = A106935 (n + 1)

end A106935

/-! ## A106935.P3774112334646536683

`∩[A038890(n+1), A097987(n+1)]`
-/

namespace A106935.P3774112334646536683
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038890 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097987 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106935.P3774112334646536683

namespace A106935

/-- `∩[A038890(n+1), A097987(n+1)]` -/
def P3774112334646536683.Spec : Prop :=
  ∀ n, (P3774112334646536683.a n : ℤ) = A106935 (n + 1)

end A106935

/-! ## A106935.P7460939975484488865

`∩[A040140(n+1), A097987(n+1)]`
-/

namespace A106935.P7460939975484488865
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040140 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097987 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106935.P7460939975484488865

namespace A106935

/-- `∩[A040140(n+1), A097987(n+1)]` -/
def P7460939975484488865.Spec : Prop :=
  ∀ n, (P7460939975484488865.a n : ℤ) = A106935 (n + 1)

end A106935

/-! ## A106935.P12416999302525079468

`∩[A038890(n+1), A094179(n+1)]`
-/

namespace A106935.P12416999302525079468
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038890 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094179 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106935.P12416999302525079468

namespace A106935

/-- `∩[A038890(n+1), A094179(n+1)]` -/
def P12416999302525079468.Spec : Prop :=
  ∀ n, (P12416999302525079468.a n : ℤ) = A106935 (n + 1)

end A106935

/-! ## A106935.P6945018541838413113

`∩[A040140(n+1), A094179(n+1)]`
-/

namespace A106935.P6945018541838413113
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040140 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094179 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106935.P6945018541838413113

namespace A106935

/-- `∩[A040140(n+1), A094179(n+1)]` -/
def P6945018541838413113.Spec : Prop :=
  ∀ n, (P6945018541838413113.a n : ℤ) = A106935 (n + 1)

end A106935

/-! ## A106935.P12220729082849916648

`filter[A038890(n+1), A359152(#)]`
-/

namespace A106935.P12220729082849916648
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038890 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359152 (f1 j).toNat = 1) n)

end

end A106935.P12220729082849916648

namespace A106935

/-- `filter[A038890(n+1), A359152(#)]` -/
def P12220729082849916648.Spec : Prop :=
  ∀ n, P12220729082849916648.a n = A106935 (n + 1)

end A106935

/-! ## A106935.P2232120465424549848

`filter[A040140(n+1), A359152(#)]`
-/

namespace A106935.P2232120465424549848
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040140 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359152 (f1 j).toNat = 1) n)

end

end A106935.P2232120465424549848

namespace A106935

/-- `filter[A040140(n+1), A359152(#)]` -/
def P2232120465424549848.Spec : Prop :=
  ∀ n, P2232120465424549848.a n = A106935 (n + 1)

end A106935

/-!
# A106936: Primes of the form 3x^2-2xy+6y^2, with x and y nonnegative.

The programs for A106936, there is no canonical definition to state claims against.
-/

/-! ## A106936.P14856941746097149219

`A152451(A067824(n+1)*A241820(n+4))`
-/

namespace A106936.P14856941746097149219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152451 (A067824 (n + 1) * A241820 (n + 4)).toNat

end

end A106936.P14856941746097149219

/-! ## A106936.P7782020952109668692

`A152451(A241820(n+4)*A348717(n+1))`
-/

namespace A106936.P7782020952109668692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152451 (A241820 (n + 4) * A348717 (n + 1)).toNat

end

end A106936.P7782020952109668692

/-! ## A106936.P8474171691731221191

`A244077(2*n+1)%A008438(A003242(3*n))`
-/

namespace A106936.P8474171691731221191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A244077 (2 * n + 1)) (A008438 (A003242 (3 * n)).toNat)

end

end A106936.P8474171691731221191

/-!
# A106937: Primes of the form 2x^2+2xy+9y^2, with x and y nonnegative.

The programs for A106937, there is no canonical definition to state claims against.
-/

/-! ## A106937.P16379907192182912835

`A106938(A336547(n+1)%A117824(2*(n+2)))`
-/

namespace A106937.P16379907192182912835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106938 (Int.tmod (A336547 (n + 1)) (A117824 (2 * (n + 2)))).toNat

end

end A106937.P16379907192182912835

/-! ## A106937.P15030186085331473718

`A106938(A318275(n+1)%A095531(n))`
-/

namespace A106937.P15030186085331473718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106938 (Int.tmod (A318275 (n + 1)) (A095531 n)).toNat

end

end A106937.P15030186085331473718

/-! ## A106937.P2041068717833642175

`A106938(A141807(n+1)^A207539(n))`
-/

namespace A106937.P2041068717833642175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106938 (SequenceMachineLib.roundAway ((A141807 (n + 1) : ℚ) ^ (A207539 n : ℤ))).toNat

end

end A106937.P2041068717833642175

/-! ## A106937.P16504469387560912520

`A106938(A207539(n)²²*A141807(n+1))`
-/

namespace A106937.P16504469387560912520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106938 ((A207539 n ^ 2) ^ 2 * A141807 (n + 1)).toNat

end

end A106937.P16504469387560912520

/-!
# A106938: Primes of the form 2x^2-2xy+9y^2, with x and y nonnegative.

The programs for A106938, there is no canonical definition to state claims against.
-/

/-! ## A106938.P11154145372189475446

`p?[lt[0, A028633(n)]]`
-/

namespace A106938.P11154145372189475446
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028633 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A106938.P11154145372189475446

/-! ## A106938.P5290396498767358755

`p?[eq[A028633(n), A171977(n+1)]]`
-/

namespace A106938.P5290396498767358755
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028633 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171977 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j = f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A106938.P5290396498767358755

/-! ## A106938.P1361421794823589701

`p?[n*A030101(A033729(2*n))]`
-/

namespace A106938.P1361421794823589701
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A030101 (A033729 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A106938.P1361421794823589701

/-! ## A106938.P10890948495437661744

`A106937(A032555(n+1))`
-/

namespace A106938.P10890948495437661744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106937 (A032555 (n + 1)).toNat

end

end A106938.P10890948495437661744

/-! ## A106938.P15182183144951688300

`A106937(A032559(n+1))`
-/

namespace A106938.P15182183144951688300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106937 (A032559 (n + 1)).toNat

end

end A106938.P15182183144951688300

/-!
# A106940: Primes of the form 4x^2+3xy+5y^2, with x and y any integer.

The programs for A106940, there is no canonical definition to state claims against.
-/

/-! ## A106940.P10315019335151644920

`∪[A106939(n+1), A106941(n+1)]`
-/

namespace A106940.P10315019335151644920
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106939 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106941 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A106940.P10315019335151644920

/-!
# A106941: Primes of the form 4x^2-3xy+5y^2, with x and y nonnegative.

The programs for A106941, there is no canonical definition to state claims against.
-/

/-! ## A106941.P7222354525524137223

`A106940(∑[A037224(n+1)!])`
-/

namespace A106941.P7222354525524137223
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A037224 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106940 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A106941.P7222354525524137223

/-! ## A106941.P11232112415863760031

`∩[A106940(n+1), A129621(n+1)]`
-/

namespace A106941.P11232112415863760031
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106940 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129621 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106941.P11232112415863760031

/-! ## A106941.P12263781138206450762

`∩[A106940(n+1), A379541(n+1)]`
-/

namespace A106941.P12263781138206450762
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106940 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379541 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106941.P12263781138206450762

/-!
# A106942: Primes of the form 3x^2+xy+6y^2, with x and y nonnegative.

The programs for A106942, there is no canonical definition to state claims against.
-/

/-! ## A106942.P5692110061376558978

`p?[∑[A196098(A120652(n))]]`
-/

namespace A106942.P5692110061376558978
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196098 (A120652 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A106942.P5692110061376558978

/-!
# A106943: Primes of the form 3x^2+xy+6y^2, with x and y any integer.

The programs for A106943, there is no canonical definition to state claims against.
-/

/-! ## A106943.P7875623749021870676

`∪[A106942(n+1), A106944(n+1)]`
-/

namespace A106943.P7875623749021870676
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106942 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106944 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A106943.P7875623749021870676

/-!
# A106945: Primes of the form 2x^2+xy+9y^2, with x and y nonnegative.

The programs for A106945, there is no canonical definition to state claims against.
-/

/-! ## A106945.P10827055110367745986

`p?[A101287(n)%A052906(n)]`
-/

namespace A106945.P10827055110367745986
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A101287 n) (A052906 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A106945.P10827055110367745986

/-!
# A106946: Primes of the form 2x^2+xy+9y^2, with x and y any integer.

The programs for A106946, there is no canonical definition to state claims against.
-/

/-! ## A106946.P13664079831411229859

`∪[A106945(n+1), A106947(n+1)]`
-/

namespace A106946.P13664079831411229859
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106945 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106947 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A106946.P13664079831411229859

/-! ## A106946.P5140254803741306907

`A322394(A063422(2*n+3)+A062717(n+1))`
-/

namespace A106946.P5140254803741306907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322394 (A063422 (2 * n + 3) + A062717 (n + 1)).toNat

end

end A106946.P5140254803741306907

/-!
# A106947: Primes of the form 2x^2-xy+9y^2, with x and y nonnegative.

The programs for A106947, there is no canonical definition to state claims against.
-/

/-! ## A106947.P1709528740093622984

`∩[A106946(n+1), A337498(n)]`
-/

namespace A106947.P1709528740093622984
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106946 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337498 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106947.P1709528740093622984

/-!
# A106948: Primes of the form x^2+xy+18y^2, with x and y nonnegative.

The programs for A106948, there is no canonical definition to state claims against.
-/

/-! ## A106948.P12484134970082839874

`p?[or(A033246(n+2), A068037(2*n))]`
-/

namespace A106948.P12484134970082839874
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A033246 (n + 2)) (A068037 (2 * n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A106948.P12484134970082839874

/-!
# A106949: Primes of the form 2x^2 + 9y^2.

The programs for A106949, the canonical program `A106949.P1038574931821632341` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A106949 has offset 1).

The definition of A106949 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A106949.P1038574931821632341

`p?[(n+1)%3+8*n+1]`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A106949

/-- `p?[(n+1)%3+8*n+1]` -/
def P1038574931821632341.Spec : Prop :=
  ∀ n, (P1038574931821632341.a n : ℤ) = A106949 (n + 1)

theorem P1038574931821632341.correct : P1038574931821632341.Spec := by
  intro n
  simp only [A106949, Nat.add_sub_cancel]

end A106949

/-! ## A106949.P18126278722635396049

`p?[4*n-xor(5, n+1)]`
-/

namespace A106949.P18126278722635396049
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * n : ℤ) - (Nat.xor 5 (n + 1) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A106949.P18126278722635396049

namespace A106949

/-- `p?[4*n-xor(5, n+1)]` -/
def P18126278722635396049.Spec : Prop :=
  ∀ n, P18126278722635396049.a n = A106949 (n + 1)

end A106949

/-! ## A106949.P16038785173224091385

`p?[xor(4, 3*n)-11]`
-/

namespace A106949.P16038785173224091385
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.xor 4 (3 * n) : ℤ) - 11

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A106949.P16038785173224091385

namespace A106949

/-- `p?[xor(4, 3*n)-11]` -/
def P16038785173224091385.Spec : Prop :=
  ∀ n, P16038785173224091385.a n = A106949 (n + 1)

end A106949

/-! ## A106949.P7344294013594035542

`∩[A003627(n+1), A033203(n+1)]`
-/

namespace A106949.P7344294013594035542
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003627 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033203 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106949.P7344294013594035542

namespace A106949

/-- `∩[A003627(n+1), A033203(n+1)]` -/
def P7344294013594035542.Spec : Prop :=
  ∀ n, (P7344294013594035542.a n : ℤ) = A106949 (n + 1)

end A106949

/-! ## A106949.P1578922483389344729

`∩[A003627(n+1), A051072(n+1)]`
-/

namespace A106949.P1578922483389344729
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003627 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051072 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106949.P1578922483389344729

namespace A106949

/-- `∩[A003627(n+1), A051072(n+1)]` -/
def P1578922483389344729.Spec : Prop :=
  ∀ n, (P1578922483389344729.a n : ℤ) = A106949 (n + 1)

end A106949

/-! ## A106949.P2018350499032551854

`∩[A003627(n+1), A051078(n+1)]`
-/

namespace A106949.P2018350499032551854
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003627 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051078 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106949.P2018350499032551854

namespace A106949

/-- `∩[A003627(n+1), A051078(n+1)]` -/
def P2018350499032551854.Spec : Prop :=
  ∀ n, (P2018350499032551854.a n : ℤ) = A106949 (n + 1)

end A106949

/-! ## A106949.P1114530092481922886

`p?[∑[lcm(6, a(n-2))]]` with `a(0)=2, a(1)=9`
-/

namespace A106949.P1114530092481922886
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [2, 9] fun n f2 =>
  Nat.lcm 6 (f2 (n - 2))

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A106949.P1114530092481922886

namespace A106949

/-- `p?[∑[lcm(6, a(n-2))]]` -/
def P1114530092481922886.Spec : Prop :=
  ∀ n, (P1114530092481922886.a n : ℤ) = A106949 (n + 1)

end A106949

/-! ## A106949.P15655121488263225789

`p?[∑[3*A001222(A031447(a(n-1)+1))]]` with `a(0)=2`
-/

namespace A106949.P15655121488263225789
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f2 =>
  3 * A001222 (A031447 (f2 (n - 1) + 1).toNat).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A106949.P15655121488263225789

namespace A106949

/-- `p?[∑[3*A001222(A031447(a(n-1)+1))]]` -/
def P15655121488263225789.Spec : Prop :=
  ∀ n, P15655121488263225789.a n = A106949 (n + 1)

end A106949

/-! ## A106949.P9956344845851069867

`∩[A033203(n+1), A082406(n+1)]`
-/

namespace A106949.P9956344845851069867
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033203 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082406 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106949.P9956344845851069867

namespace A106949

/-- `∩[A033203(n+1), A082406(n+1)]` -/
def P9956344845851069867.Spec : Prop :=
  ∀ n, (P9956344845851069867.a n : ℤ) = A106949 (n + 1)

end A106949

/-! ## A106949.P8089104326754946177

`p?[A020676(n+1)]`
-/

namespace A106949.P8089104326754946177
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020676 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A106949.P8089104326754946177

namespace A106949

/-- `p?[A020676(n+1)]` -/
def P8089104326754946177.Spec : Prop :=
  ∀ n, P8089104326754946177.a n = A106949 (n + 1)

end A106949

/-! ## A106949.P3976963975426114307

`p?[abs(4*n+2-A010124(n))]`
-/

namespace A106949.P3976963975426114307
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(4 * n + 2 : ℤ) - A010124 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A106949.P3976963975426114307

namespace A106949

/-- `p?[abs(4*n+2-A010124(n))]` -/
def P3976963975426114307.Spec : Prop :=
  ∀ n, P3976963975426114307.a n = A106949 (n + 1)

end A106949

/-! ## A106949.P14342116198114030858

`filter[A020676(n+2), A010051(#)]`
-/

namespace A106949.P14342116198114030858
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020676 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A106949.P14342116198114030858

namespace A106949

/-- `filter[A020676(n+2), A010051(#)]` -/
def P14342116198114030858.Spec : Prop :=
  ∀ n, P14342116198114030858.a n = A106949 (n + 1)

end A106949

/-! ## A106949.P156216980808154055

`∩[A020676(n+1), A140460(n)]`
-/

namespace A106949.P156216980808154055
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020676 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140460 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106949.P156216980808154055

namespace A106949

/-- `∩[A020676(n+1), A140460(n)]` -/
def P156216980808154055.Spec : Prop :=
  ∀ n, (P156216980808154055.a n : ℤ) = A106949 (n + 1)

end A106949

/-! ## A106949.P14887008157395905961

`∩[A000040(n+1), A020676(n+1)]`
-/

namespace A106949.P14887008157395905961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020676 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106949.P14887008157395905961

namespace A106949

/-- `∩[A000040(n+1), A020676(n+1)]` -/
def P14887008157395905961.Spec : Prop :=
  ∀ n, (P14887008157395905961.a n : ℤ) = A106949 (n + 1)

end A106949

/-! ## A106949.P15819819650366853291

`∩[A003627(n+1), A020676(n+1)]`
-/

namespace A106949.P15819819650366853291
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003627 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020676 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106949.P15819819650366853291

namespace A106949

/-- `∩[A003627(n+1), A020676(n+1)]` -/
def P15819819650366853291.Spec : Prop :=
  ∀ n, (P15819819650366853291.a n : ℤ) = A106949 (n + 1)

end A106949

/-! ## A106949.P14614990145438591517

`∩[A008578(n+1), A020676(n+1)]`
-/

namespace A106949.P14614990145438591517
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020676 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106949.P14614990145438591517

namespace A106949

/-- `∩[A008578(n+1), A020676(n+1)]` -/
def P14614990145438591517.Spec : Prop :=
  ∀ n, (P14614990145438591517.a n : ℤ) = A106949 (n + 1)

end A106949

/-! ## A106949.P3988750531914018229

`∩[A015919(n+1), A020676(n+1)]`
-/

namespace A106949.P3988750531914018229
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015919 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020676 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106949.P3988750531914018229

namespace A106949

/-- `∩[A015919(n+1), A020676(n+1)]` -/
def P3988750531914018229.Spec : Prop :=
  ∀ n, (P3988750531914018229.a n : ℤ) = A106949 (n + 1)

end A106949

/-! ## A106949.P5059763535086551747

`∩[A020676(n+1), A025584(n+1)]`
-/

namespace A106949.P5059763535086551747
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020676 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025584 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106949.P5059763535086551747

namespace A106949

/-- `∩[A020676(n+1), A025584(n+1)]` -/
def P5059763535086551747.Spec : Prop :=
  ∀ n, (P5059763535086551747.a n : ℤ) = A106949 (n + 1)

end A106949

/-! ## A106949.P16363124304326846520

`∩[A020676(n+1), A033203(n+1)]`
-/

namespace A106949.P16363124304326846520
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020676 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033203 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106949.P16363124304326846520

namespace A106949

/-- `∩[A020676(n+1), A033203(n+1)]` -/
def P16363124304326846520.Spec : Prop :=
  ∀ n, (P16363124304326846520.a n : ℤ) = A106949 (n + 1)

end A106949

/-! ## A106949.P8936745317573031022

`∩[A020676(n+1), A040028(n+1)]`
-/

namespace A106949.P8936745317573031022
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020676 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040028 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106949.P8936745317573031022

namespace A106949

/-- `∩[A020676(n+1), A040028(n+1)]` -/
def P8936745317573031022.Spec : Prop :=
  ∀ n, (P8936745317573031022.a n : ℤ) = A106949 (n + 1)

end A106949

/-!
# A106950: Primes of the form x^2 + 18y^2.

The programs for A106950, the canonical program `A106950.P17678438688107650138` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A106950 has offset 1).

The definition of A106950 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A106950.P17678438688107650138

`p?[xor(4, 6*n-1)]`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A106950

/-- `p?[xor(4, 6*n-1)]` -/
def P17678438688107650138.Spec : Prop :=
  ∀ n, P17678438688107650138.a n = A106950 (n + 1)

theorem P17678438688107650138.correct : P17678438688107650138.Spec := by
  intro n
  simp only [A106950, Nat.add_sub_cancel]

end A106950

/-! ## A106950.P12712934713696754477

`p?[3*(n+1)*and(2, n)+1]`
-/

namespace A106950.P12712934713696754477
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * ((n + 1) * Nat.land 2 n) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A106950.P12712934713696754477

namespace A106950

/-- `p?[3*(n+1)*and(2, n)+1]` -/
def P12712934713696754477.Spec : Prop :=
  ∀ n, (P12712934713696754477.a n : ℤ) = A106950 (n + 1)

end A106950

/-! ## A106950.P10398095320217788365

`A141170(n+2)`
-/

namespace A106950.P10398095320217788365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141170 (n + 2)

end

end A106950.P10398095320217788365

namespace A106950

/-- `A141170(n+2)` -/
def P10398095320217788365.Spec : Prop :=
  ∀ n, P10398095320217788365.a n = A106950 (n + 1)

end A106950

/-! ## A106950.P16710766890946829597

`p?[gcd(6, n)+4*(n+1)]`
-/

namespace A106950.P16710766890946829597
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 6 n + 4 * (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A106950.P16710766890946829597

namespace A106950

/-- `p?[gcd(6, n)+4*(n+1)]` -/
def P16710766890946829597.Spec : Prop :=
  ∀ n, (P16710766890946829597.a n : ℤ) = A106950 (n + 1)

end A106950

/-! ## A106950.P9579002876029621541

`p?[4*or(4, n)-n]`
-/

namespace A106950.P9579002876029621541
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * Nat.lor 4 n : ℤ) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A106950.P9579002876029621541

namespace A106950

/-- `p?[4*or(4, n)-n]` -/
def P9579002876029621541.Spec : Prop :=
  ∀ n, P9579002876029621541.a n = A106950 (n + 1)

end A106950

/-! ## A106950.P13791996735483202358

`p?[or(9, 2*n)+n+3]`
-/

namespace A106950.P13791996735483202358
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 9 (2 * n) + (n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A106950.P13791996735483202358

namespace A106950

/-- `p?[or(9, 2*n)+n+3]` -/
def P13791996735483202358.Spec : Prop :=
  ∀ n, (P13791996735483202358.a n : ℤ) = A106950 (n + 1)

end A106950

/-! ## A106950.P3234941587732796162

`∩[A002476(n+1), A033200(n+1)]`
-/

namespace A106950.P3234941587732796162
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002476 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033200 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106950.P3234941587732796162

namespace A106950

/-- `∩[A002476(n+1), A033200(n+1)]` -/
def P3234941587732796162.Spec : Prop :=
  ∀ n, (P3234941587732796162.a n : ℤ) = A106950 (n + 1)

end A106950

/-! ## A106950.P10615358864226466945

`∩[A002476(n+1), A033203(n+1)]`
-/

namespace A106950.P10615358864226466945
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002476 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033203 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106950.P10615358864226466945

namespace A106950

/-- `∩[A002476(n+1), A033203(n+1)]` -/
def P10615358864226466945.Spec : Prop :=
  ∀ n, (P10615358864226466945.a n : ℤ) = A106950 (n + 1)

end A106950

/-! ## A106950.P14962356819871843535

`∩[A002476(n+1), A038876(n+1)]`
-/

namespace A106950.P14962356819871843535
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002476 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038876 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106950.P14962356819871843535

namespace A106950

/-- `∩[A002476(n+1), A038876(n+1)]` -/
def P14962356819871843535.Spec : Prop :=
  ∀ n, (P14962356819871843535.a n : ℤ) = A106950 (n + 1)

end A106950

/-! ## A106950.P12140306057874355408

`∩[A038876(n+1), A033200(n+2)]`
-/

namespace A106950.P12140306057874355408
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038876 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033200 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106950.P12140306057874355408

namespace A106950

/-- `∩[A038876(n+1), A033200(n+2)]` -/
def P12140306057874355408.Spec : Prop :=
  ∀ n, (P12140306057874355408.a n : ℤ) = A106950 (n + 1)

end A106950

/-! ## A106950.P9191063178803398265

`∩[A033200(n+1), A045375(n+1)]`
-/

namespace A106950.P9191063178803398265
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033200 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045375 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106950.P9191063178803398265

namespace A106950

/-- `∩[A033200(n+1), A045375(n+1)]` -/
def P9191063178803398265.Spec : Prop :=
  ∀ n, (P9191063178803398265.a n : ℤ) = A106950 (n + 1)

end A106950

/-! ## A106950.P7627915725532857025

`∩[A097934(n+1), A007645(n+1)]`
-/

namespace A106950.P7627915725532857025
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097934 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007645 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106950.P7627915725532857025

namespace A106950

/-- `∩[A097934(n+1), A007645(n+1)]` -/
def P7627915725532857025.Spec : Prop :=
  ∀ n, (P7627915725532857025.a n : ℤ) = A106950 (n + 1)

end A106950

/-! ## A106950.P16230516902319139906

`∩[A033200(n+1), A007645(n+2)]`
-/

namespace A106950.P16230516902319139906
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033200 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007645 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106950.P16230516902319139906

namespace A106950

/-- `∩[A033200(n+1), A007645(n+2)]` -/
def P16230516902319139906.Spec : Prop :=
  ∀ n, (P16230516902319139906.a n : ℤ) = A106950 (n + 1)

end A106950

/-! ## A106950.P5906981892108710336

`∩[A033203(n+1), A007645(n+2)]`
-/

namespace A106950.P5906981892108710336
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033203 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007645 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106950.P5906981892108710336

namespace A106950

/-- `∩[A033203(n+1), A007645(n+2)]` -/
def P5906981892108710336.Spec : Prop :=
  ∀ n, (P5906981892108710336.a n : ℤ) = A106950 (n + 1)

end A106950

/-! ## A106950.P13249358336141850106

`∩[A038876(n+1), A007645(n+2)]`
-/

namespace A106950.P13249358336141850106
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038876 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007645 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106950.P13249358336141850106

namespace A106950

/-- `∩[A038876(n+1), A007645(n+2)]` -/
def P13249358336141850106.Spec : Prop :=
  ∀ n, (P13249358336141850106.a n : ℤ) = A106950 (n + 1)

end A106950

/-! ## A106950.P9421270173005995554

`∩[A045331(n+1), A033200(n+2)]`
-/

namespace A106950.P9421270173005995554
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045331 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033200 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106950.P9421270173005995554

namespace A106950

/-- `∩[A045331(n+1), A033200(n+2)]` -/
def P9421270173005995554.Spec : Prop :=
  ∀ n, (P9421270173005995554.a n : ℤ) = A106950 (n + 1)

end A106950

/-! ## A106950.P2824260822505522497

`∩[A033200(n+1), A055664(n+2)]`
-/

namespace A106950.P2824260822505522497
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033200 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055664 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106950.P2824260822505522497

namespace A106950

/-- `∩[A033200(n+1), A055664(n+2)]` -/
def P2824260822505522497.Spec : Prop :=
  ∀ n, (P2824260822505522497.a n : ℤ) = A106950 (n + 1)

end A106950

/-! ## A106950.P494216978616108586

`∩[A033203(n+2), A055664(n+2)]`
-/

namespace A106950.P494216978616108586
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033203 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055664 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106950.P494216978616108586

namespace A106950

/-- `∩[A033203(n+2), A055664(n+2)]` -/
def P494216978616108586.Spec : Prop :=
  ∀ n, (P494216978616108586.a n : ℤ) = A106950 (n + 1)

end A106950

/-! ## A106950.P8026237405779300252

`∩[A038876(n+2), A055664(n+2)]`
-/

namespace A106950.P8026237405779300252
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038876 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055664 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106950.P8026237405779300252

namespace A106950

/-- `∩[A038876(n+2), A055664(n+2)]` -/
def P8026237405779300252.Spec : Prop :=
  ∀ n, (P8026237405779300252.a n : ℤ) = A106950 (n + 1)

end A106950

/-! ## A106950.P6546498932396815738

`∩[A007645(n+2), A155564(n+2)]`
-/

namespace A106950.P6546498932396815738
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007645 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155564 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106950.P6546498932396815738

namespace A106950

/-- `∩[A007645(n+2), A155564(n+2)]` -/
def P6546498932396815738.Spec : Prop :=
  ∀ n, (P6546498932396815738.a n : ℤ) = A106950 (n + 1)

end A106950

/-!
# A106951: Primes of the form 3x^2+3xy+7y^2, with x and y nonnegative.

The programs for A106951, there is no canonical definition to state claims against.
-/

/-! ## A106951.P8505757147748827175

`A106952(lt[A147570(n+1)/2, n+1]+1)`
-/

namespace A106951.P8505757147748827175
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A147570 (n + 1) : ℚ) / 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106952 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℚ)) n + 1)

end

end A106951.P8505757147748827175

/-! ## A106951.P881636533485513848

`A023212(lt[A023189(n+2), A023165(n+1)])`
-/

namespace A106951.P881636533485513848
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023189 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023165 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023212 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A106951.P881636533485513848

/-! ## A106951.P11928482076383484335

`record[A023212(A374994(n+1))]`
-/

namespace A106951.P11928482076383484335
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023212 (A374994 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A106951.P11928482076383484335

/-! ## A106951.P9458431670578403585

`p?[record[A025480(A098085(n+1))]]`
-/

namespace A106951.P9458431670578403585
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A098085 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A106951.P9458431670578403585

/-!
# A106952: Primes of the form 3x^2-3xy+7y^2, with x and y nonnegative.

The programs for A106952, the canonical program `A106952.P11704571453125807921` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A106952 has offset 1).

The definition of A106952 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A106952.P11704571453125807921

`p?[a(n-4)+30]` with `a(0)=3, a(1)=7, a(2)=13, a(3)=27`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A106952

/-- `p?[a(n-4)+30]` -/
def P11704571453125807921.Spec : Prop :=
  ∀ n, (P11704571453125807921.a n : ℤ) = A106952 (n + 1)

theorem P11704571453125807921.correct : P11704571453125807921.Spec := by
  intro n
  simp only [A106952, Nat.add_sub_cancel]

end A106952

/-! ## A106952.P17015061531924106693

`p?[ogf((1+2x+4x^2+5x^3+3x^4)/(1-x-x^3+x^4))]`
-/

namespace A106952.P17015061531924106693
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 2, 4, 5, 3] [1, -1, 0, -1, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A106952.P17015061531924106693

namespace A106952

/-- `p?[ogf((1+2x+4x^2+5x^3+3x^4)/(1-x-x^3+x^4))]` -/
def P17015061531924106693.Spec : Prop :=
  ∀ n, P17015061531924106693.a n = A106952 (n + 1)

end A106952

/-! ## A106952.P552607876788949859

`∩[A003631(n+1), A007645(n+1)]`
-/

namespace A106952.P552607876788949859
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003631 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007645 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106952.P552607876788949859

namespace A106952

/-- `∩[A003631(n+1), A007645(n+1)]` -/
def P552607876788949859.Spec : Prop :=
  ∀ n, (P552607876788949859.a n : ℤ) = A106952 (n + 1)

end A106952

/-! ## A106952.P10159697235419674674

`∩[A003631(n+1), A055664(n+1)]`
-/

namespace A106952.P10159697235419674674
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003631 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055664 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106952.P10159697235419674674

namespace A106952

/-- `∩[A003631(n+1), A055664(n+1)]` -/
def P10159697235419674674.Spec : Prop :=
  ∀ n, (P10159697235419674674.a n : ℤ) = A106952 (n + 1)

end A106952

/-! ## A106952.P2046128072884681757

`∩[A007645(n+1), A097957(n+1)]`
-/

namespace A106952.P2046128072884681757
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007645 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097957 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106952.P2046128072884681757

namespace A106952

/-- `∩[A007645(n+1), A097957(n+1)]` -/
def P2046128072884681757.Spec : Prop :=
  ∀ n, (P2046128072884681757.a n : ℤ) = A106952 (n + 1)

end A106952

/-! ## A106952.P2391822782577229273

`∩[A045331(n+1), A097957(n+1)]`
-/

namespace A106952.P2391822782577229273
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045331 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097957 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106952.P2391822782577229273

namespace A106952

/-- `∩[A045331(n+1), A097957(n+1)]` -/
def P2391822782577229273.Spec : Prop :=
  ∀ n, (P2391822782577229273.a n : ℤ) = A106952 (n + 1)

end A106952

/-! ## A106952.P3602857156624167499

`∩[A055664(n+1), A097957(n+1)]`
-/

namespace A106952.P3602857156624167499
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055664 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097957 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106952.P3602857156624167499

namespace A106952

/-- `∩[A055664(n+1), A097957(n+1)]` -/
def P3602857156624167499.Spec : Prop :=
  ∀ n, (P3602857156624167499.a n : ℤ) = A106952 (n + 1)

end A106952

/-! ## A106952.P5387490801941068067

`∩[A279815(n+1), A003631(n+1)]`
-/

namespace A106952.P5387490801941068067
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279815 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003631 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106952.P5387490801941068067

namespace A106952

/-- `∩[A279815(n+1), A003631(n+1)]` -/
def P5387490801941068067.Spec : Prop :=
  ∀ n, (P5387490801941068067.a n : ℤ) = A106952 (n + 1)

end A106952

/-! ## A106952.P4444729220264206150

`∩[A007645(n+1), A042993(n+1)]`
-/

namespace A106952.P4444729220264206150
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007645 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042993 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106952.P4444729220264206150

namespace A106952

/-- `∩[A007645(n+1), A042993(n+1)]` -/
def P4444729220264206150.Spec : Prop :=
  ∀ n, (P4444729220264206150.a n : ℤ) = A106952 (n + 1)

end A106952

/-! ## A106952.P12095113178381460525

`∩[A042993(n+1), A055664(n+1)]`
-/

namespace A106952.P12095113178381460525
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042993 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055664 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106952.P12095113178381460525

namespace A106952

/-- `∩[A042993(n+1), A055664(n+1)]` -/
def P12095113178381460525.Spec : Prop :=
  ∀ n, (P12095113178381460525.a n : ℤ) = A106952 (n + 1)

end A106952

/-! ## A106952.P10254320961287033546

`∩[A007645(n+1), A069104(n+1)]`
-/

namespace A106952.P10254320961287033546
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007645 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069104 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106952.P10254320961287033546

namespace A106952

/-- `∩[A007645(n+1), A069104(n+1)]` -/
def P10254320961287033546.Spec : Prop :=
  ∀ n, (P10254320961287033546.a n : ℤ) = A106952 (n + 1)

end A106952

/-! ## A106952.P10318430030252987031

`∩[A055664(n+1), A069104(n+1)]`
-/

namespace A106952.P10318430030252987031
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055664 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069104 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106952.P10318430030252987031

namespace A106952

/-- `∩[A055664(n+1), A069104(n+1)]` -/
def P10318430030252987031.Spec : Prop :=
  ∀ n, (P10318430030252987031.a n : ℤ) = A106952 (n + 1)

end A106952

/-! ## A106952.P9827621258002418544

`∩[A007645(n+1), A140971(n+1)]`
-/

namespace A106952.P9827621258002418544
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007645 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140971 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106952.P9827621258002418544

namespace A106952

/-- `∩[A007645(n+1), A140971(n+1)]` -/
def P9827621258002418544.Spec : Prop :=
  ∀ n, (P9827621258002418544.a n : ℤ) = A106952 (n + 1)

end A106952

/-! ## A106952.P776143863485868239

`∩[A007645(n+1), A023162(n+1)]`
-/

namespace A106952.P776143863485868239
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007645 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023162 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106952.P776143863485868239

namespace A106952

/-- `∩[A007645(n+1), A023162(n+1)]` -/
def P776143863485868239.Spec : Prop :=
  ∀ n, (P776143863485868239.a n : ℤ) = A106952 (n + 1)

end A106952

/-! ## A106952.P2461368146447769950

`filter[A003631(n+1), A353815(#)]`
-/

namespace A106952.P2461368146447769950
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003631 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353815 (f1 j).toNat = 1) n)

end

end A106952.P2461368146447769950

namespace A106952

/-- `filter[A003631(n+1), A353815(#)]` -/
def P2461368146447769950.Spec : Prop :=
  ∀ n, P2461368146447769950.a n = A106952 (n + 1)

end A106952

/-! ## A106952.P8615135191153417909

`filter[A003631(n+1), A353816(#)]`
-/

namespace A106952.P8615135191153417909
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003631 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353816 (f1 j).toNat = 1) n)

end

end A106952.P8615135191153417909

namespace A106952

/-- `filter[A003631(n+1), A353816(#)]` -/
def P8615135191153417909.Spec : Prop :=
  ∀ n, P8615135191153417909.a n = A106952 (n + 1)

end A106952

/-! ## A106952.P17002834534746858395

`filter[A042993(n+1), A353815(#)]`
-/

namespace A106952.P17002834534746858395
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042993 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353815 (f1 j).toNat = 1) n)

end

end A106952.P17002834534746858395

namespace A106952

/-- `filter[A042993(n+1), A353815(#)]` -/
def P17002834534746858395.Spec : Prop :=
  ∀ n, P17002834534746858395.a n = A106952 (n + 1)

end A106952

/-! ## A106952.P16417023394448166615

`filter[A042993(n+1), A353816(#)]`
-/

namespace A106952.P16417023394448166615
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042993 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353816 (f1 j).toNat = 1) n)

end

end A106952.P16417023394448166615

namespace A106952

/-- `filter[A042993(n+1), A353816(#)]` -/
def P16417023394448166615.Spec : Prop :=
  ∀ n, P16417023394448166615.a n = A106952 (n + 1)

end A106952

/-! ## A106952.P2244723467888452807

`filter[A097957(n+1), A353815(#)]`
-/

namespace A106952.P2244723467888452807
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097957 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353815 (f1 j).toNat = 1) n)

end

end A106952.P2244723467888452807

namespace A106952

/-- `filter[A097957(n+1), A353815(#)]` -/
def P2244723467888452807.Spec : Prop :=
  ∀ n, P2244723467888452807.a n = A106952 (n + 1)

end A106952

/-! ## A106952.P3462529976179117033

`filter[A097957(n+1), A353816(#)]`
-/

namespace A106952.P3462529976179117033
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097957 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353816 (f1 j).toNat = 1) n)

end

end A106952.P3462529976179117033

namespace A106952

/-- `filter[A097957(n+1), A353816(#)]` -/
def P3462529976179117033.Spec : Prop :=
  ∀ n, P3462529976179117033.a n = A106952 (n + 1)

end A106952

/-!
# A106953: Primes of the form 4x^2+2xy+5y^2, with x and y nonnegative.

The programs for A106953, there is no canonical definition to state claims against.
-/

/-! ## A106953.P2539792098099438644

`p?[record[A099375(A086734(n+1))]]`
-/

namespace A106953.P2539792098099438644
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099375 (A086734 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A106953.P2539792098099438644

/-!
# A106954: Primes of the form 4x^2+2xy+5y^2, with x and y any integer.

The programs for A106954, there is no canonical definition to state claims against.
-/

/-! ## A106954.P103341019430469544

`∪[A106953(n+1), A106955(n+1)]`
-/

namespace A106954.P103341019430469544
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106953 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106955 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A106954.P103341019430469544

/-! ## A106954.P5214931650136597294

`p?[(2*n+5)*A033778(n)]`
-/

namespace A106954.P5214931650136597294
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 5 : ℤ) * A033778 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A106954.P5214931650136597294

/-! ## A106954.P18156399776725058066

`eq[A210442(n)+A033731(n), A011585(n)]`
-/

namespace A106954.P18156399776725058066
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210442 n + A033731 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011585 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A106954.P18156399776725058066

/-! ## A106954.P10130160429919387260

`eq[A211110(n)+A033731(n), A011585(n)]`
-/

namespace A106954.P10130160429919387260
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211110 n + A033731 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011585 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A106954.P10130160429919387260

/-! ## A106954.P9132719333357100433

`eq[A033731(n)^A028641(n), A072480(n)]`
-/

namespace A106954.P9132719333357100433
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A033731 n : ℚ) ^ (A028641 n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072480 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℚ)) n

end

end A106954.P9132719333357100433

/-! ## A106954.P16598019276125721580

`eq[A033731(n)^A028641(n), A277894(n)]`
-/

namespace A106954.P16598019276125721580
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A033731 n : ℚ) ^ (A028641 n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277894 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℚ)) n

end

end A106954.P16598019276125721580

/-! ## A106954.P15548477313687982583

`eq[A053989(n+1)+A033731(n), A011585(n)]`
-/

namespace A106954.P15548477313687982583
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053989 (n + 1) + A033731 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011585 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A106954.P15548477313687982583

/-! ## A106954.P7536847715864816112

`record[and(A085090(n+3), A187097(n+2))]`
-/

namespace A106954.P7536847715864816112
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A085090 (n + 3)) (A187097 (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A106954.P7536847715864816112

/-!
# A106955: Primes of the form 4x^2-2xy+5y^2, with x and y nonnegative.

The programs for A106955, there is no canonical definition to state claims against.
-/

/-! ## A106955.P4770557726248324433

`A106863(eq[A087936(n), A330682(n+1)])`
-/

namespace A106955.P4770557726248324433
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087936 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330682 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106863 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A106955.P4770557726248324433

/-! ## A106955.P6480515598121425528

`A007310(record[A091834(n)])`
-/

namespace A106955.P6480515598121425528
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091834 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007310 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A106955.P6480515598121425528

/-!
# A106956: Primes of the form 4x^2+xy+5y^2, with x and y nonnegative.

The programs for A106956, there is no canonical definition to state claims against.
-/

/-! ## A106956.P12813164363347178285

`∩[A106957(n+1), A192285(n+1)]`
-/

namespace A106956.P12813164363347178285
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106957 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192285 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106956.P12813164363347178285

/-! ## A106956.P7689092476397735465

`A084671(n+1)-A055087(A002079(n))`
-/

namespace A106956.P7689092476397735465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084671 (n + 1) - A055087 (A002079 n).toNat

end

end A106956.P7689092476397735465

/-!
# A106957: Primes of the form 4x^2+xy+5y^2, with x and y any integer.

The programs for A106957, there is no canonical definition to state claims against.
-/

/-! ## A106957.P10657523110007239079

`∪[A106956(n+1), A106958(n+1)]`
-/

namespace A106957.P10657523110007239079
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106956 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106958 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A106957.P10657523110007239079

/-!
# A106959: Primes of the form 2x^2+xy+10y^2, with x and y nonnegative.

The programs for A106959, there is no canonical definition to state claims against.
-/

/-! ## A106959.P1453893440026238653

`p?[A332293(2*(n+1))+floor(atan(n))]`
-/

namespace A106959.P1453893440026238653
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332293 (2 * (n + 1)) + ⌊Real.arctan (n : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A106959.P1453893440026238653

/-!
# A106960: Primes of the form 2x^2+xy+10y^2, with x and y any integer.

The programs for A106960, there is no canonical definition to state claims against.
-/

/-! ## A106960.P14863182228926536686

`∪[A106959(n+1), A106961(n+1)]`
-/

namespace A106960.P14863182228926536686
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106959 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106961 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A106960.P14863182228926536686

/-! ## A106960.P12477252191000876487

`p?[∑[A038502(A299483(3*n+1))]]`
-/

namespace A106960.P12477252191000876487
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038502 (A299483 (3 * n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A106960.P12477252191000876487

/-! ## A106960.P5201921098992601346

`p?[∑[A091412(2*n+5)²]]`
-/

namespace A106960.P5201921098992601346
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091412 (2 * n + 5) ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A106960.P5201921098992601346

/-!
# A106961: Primes of the form 2x^2-xy+10y^2, with x and y nonnegative.

The programs for A106961, there is no canonical definition to state claims against.
-/

/-! ## A106961.P4741962338953610346

`∩[A093514(n+1), A106960(n+1)]`
-/

namespace A106961.P4741962338953610346
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093514 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106960 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106961.P4741962338953610346

/-!
# A106963: Primes of the form 4x^2 + 5y^2.

The programs for A106963, there is no canonical definition to state claims against.
-/

/-! ## A106963.P12906268271484696417

`p?[A020682(n+1)]`
-/

namespace A106963.P12906268271484696417
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020682 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A106963.P12906268271484696417

/-! ## A106963.P13329477277629563082

`record[A020639(A020682(n+3))]`
-/

namespace A106963.P13329477277629563082
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A020682 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A106963.P13329477277629563082

/-! ## A106963.P1255084267255347286

`filter[A020682(n+2), A010051(#)]`
-/

namespace A106963.P1255084267255347286
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020682 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A106963.P1255084267255347286

/-! ## A106963.P8364113039148516229

`filter[A020682(n+2), A380467(#)]`
-/

namespace A106963.P8364113039148516229
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020682 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A380467 (f1 j).toNat = 1) n)

end

end A106963.P8364113039148516229

/-! ## A106963.P2320763258418328563

`∩[A000040(n+1), A020682(n+1)]`
-/

namespace A106963.P2320763258418328563
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020682 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106963.P2320763258418328563

/-! ## A106963.P1092584054140972849

`∩[A002144(n+1), A020682(n+1)]`
-/

namespace A106963.P1092584054140972849
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002144 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020682 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106963.P1092584054140972849

/-! ## A106963.P3436517701567395853

`∩[A002313(n+1), A020682(n+1)]`
-/

namespace A106963.P3436517701567395853
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002313 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020682 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106963.P3436517701567395853

/-! ## A106963.P2120963231713919265

`∩[A006005(n+1), A020682(n+1)]`
-/

namespace A106963.P2120963231713919265
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020682 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106963.P2120963231713919265

/-! ## A106963.P2770497453106462217

`∩[A008578(n+1), A020682(n+1)]`
-/

namespace A106963.P2770497453106462217
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020682 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106963.P2770497453106462217

/-! ## A106963.P16366628097122645838

`∩[A020682(n+1), A033205(n+1)]`
-/

namespace A106963.P16366628097122645838
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020682 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033205 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106963.P16366628097122645838

/-! ## A106963.P17002811594871070039

`∩[A020682(n+1), A038872(n+1)]`
-/

namespace A106963.P17002811594871070039
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020682 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038872 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106963.P17002811594871070039

/-! ## A106963.P42223476394457777

`∩[A020682(n+1), A042998(n+1)]`
-/

namespace A106963.P42223476394457777
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020682 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042998 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106963.P42223476394457777

/-! ## A106963.P12746881114226880437

`∩[A020682(n+1), A045344(n+1)]`
-/

namespace A106963.P12746881114226880437
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020682 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106963.P12746881114226880437

/-! ## A106963.P13193829953977147273

`∩[A020682(n+1), A045348(n+1)]`
-/

namespace A106963.P13193829953977147273
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020682 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045348 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106963.P13193829953977147273

/-! ## A106963.P798380930315719605

`∩[A020682(n+1), A045352(n+1)]`
-/

namespace A106963.P798380930315719605
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020682 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045352 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106963.P798380930315719605

/-! ## A106963.P15409435043880593664

`∩[A020682(n+1), A045403(n+1)]`
-/

namespace A106963.P15409435043880593664
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020682 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045403 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106963.P15409435043880593664

/-! ## A106963.P14322541845559864251

`∩[A020682(n+1), A045405(n+1)]`
-/

namespace A106963.P14322541845559864251
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020682 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045405 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106963.P14322541845559864251

/-! ## A106963.P1180047026864575658

`∩[A020682(n+1), A045442(n+1)]`
-/

namespace A106963.P1180047026864575658
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020682 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045442 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106963.P1180047026864575658

/-! ## A106963.P14945293724318681976

`∩[A020682(n+1), A049092(n+1)]`
-/

namespace A106963.P14945293724318681976
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020682 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049092 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106963.P14945293724318681976

/-! ## A106963.P10080965934585073453

`∩[A020682(n+1), A053813(n+1)]`
-/

namespace A106963.P10080965934585073453
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020682 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053813 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106963.P10080965934585073453

/-!
# A106964: Primes of the form 3x^2+2xy+7y^2, with x and y nonnegative.

The programs for A106964, there is no canonical definition to state claims against.
-/

/-! ## A106964.P14592756312435961441

`record[A136019(A040098(n+1))]`
-/

namespace A106964.P14592756312435961441
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136019 (A040098 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A106964.P14592756312435961441

/-!
# A106965: Primes of the form 3x^2-2xy+7y^2, with x and y nonnegative.

The programs for A106965, there is no canonical definition to state claims against.
-/

/-! ## A106965.P12010308329956464222

`A106864(A181709(n+1)%A036688(n+1))`
-/

namespace A106965.P12010308329956464222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106864 (Int.tmod (A181709 (n + 1)) (A036688 (n + 1))).toNat

end

end A106965.P12010308329956464222

/-!
# A106966: Primes of the form 3x^2+xy+7y^2, with x and y nonnegative.

The programs for A106966, there is no canonical definition to state claims against.
-/

/-! ## A106966.P15821884915343497306

`A249370(or(2^floor(log2(n+1))+n, n²))`
-/

namespace A106966.P15821884915343497306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249370 (Nat.lor (2 ^ Nat.log 2 (n + 1) + n) (n ^ 2))

end

end A106966.P15821884915343497306

/-!
# A106967: Primes of the form 3x^2+xy+7y^2, with x and y any integer.

The programs for A106967, there is no canonical definition to state claims against.
-/

/-! ## A106967.P4142513153397605906

`∪[A106966(n+1), A106968(n+1)]`
-/

namespace A106967.P4142513153397605906
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106966 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106968 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A106967.P4142513153397605906

/-! ## A106967.P18432033133375770334

`p?[A010444(A105048(n+1))]`
-/

namespace A106967.P18432033133375770334
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010444 (A105048 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A106967.P18432033133375770334

/-! ## A106967.P6576886232902192819

`p?[eq[A011600(n), A353741(n)]]`
-/

namespace A106967.P6576886232902192819
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011600 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353741 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j = f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A106967.P6576886232902192819

/-! ## A106967.P12464669546967308695

`p?[record[A160931(A196372(n+1))]]`
-/

namespace A106967.P12464669546967308695
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160931 (A196372 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A106967.P12464669546967308695

/-! ## A106967.P11618654906472051204

`∩[A010444(n+1), A179740(n+1)]`
-/

namespace A106967.P11618654906472051204
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010444 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179740 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106967.P11618654906472051204

/-!
# A106968: Primes of the form 3x^2-xy+7y^2, with x and y nonnegative.

The programs for A106968, there is no canonical definition to state claims against.
-/

/-! ## A106968.P12939402643192092586

`A083989(C(A020473(n+1), A156993(n)²))`
-/

namespace A106968.P12939402643192092586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083989 (Nat.choose (A020473 (n + 1)).toNat (A156993 n ^ 2).toNat)

end

end A106968.P12939402643192092586

/-! ## A106968.P15322033323491870598

`A168322(A323197(n+1))`
-/

namespace A106968.P15322033323491870598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168322 (A323197 (n + 1)).toNat

end

end A106968.P15322033323491870598

/-!
# A106969: Primes of the form x^2+xy+21y^2, with x and y nonnegative.

The programs for A106969, there is no canonical definition to state claims against.
-/

/-! ## A106969.P3068321920584110907

`∩[A106970(n+1), A172096(n+1)]`
-/

namespace A106969.P3068321920584110907
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106970 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172096 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106969.P3068321920584110907

/-! ## A106969.P10471839196451770497

`∩[A106970(n+1), A335075(n+1)]`
-/

namespace A106969.P10471839196451770497
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106970 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335075 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106969.P10471839196451770497

/-! ## A106969.P1793491694562959765

`∩[A106970(n+1), A342799(n+1)]`
-/

namespace A106969.P1793491694562959765
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106970 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342799 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106969.P1793491694562959765

/-!
# A106970: Primes of the form x^2-xy+21y^2, with x and y nonnegative.

The programs for A106970, there is no canonical definition to state claims against.
-/

/-! ## A106970.P15100174042548948372

`A193461(A194444(n+4)+A000265(n+1))`
-/

namespace A106970.P15100174042548948372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193461 (A194444 (n + 4) + A000265 (n + 1)).toNat

end

end A106970.P15100174042548948372

/-!
# A106971: Primes of the form 5x^2+4xy+5y^2, with x and y nonnegative.

The programs for A106971, there is no canonical definition to state claims against.
-/

/-! ## A106971.P14719371417175584616

`A329946(A023228(n+1)*A050320(n+5))`
-/

namespace A106971.P14719371417175584616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329946 (A023228 (n + 1) * A050320 (n + 5)).toNat

end

end A106971.P14719371417175584616

/-!
# A106972: Primes of the form 5x^2+4xy+5y^2, with x and y any integer.

The programs for A106972, the canonical program `A106972.P7111820639917467714` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A106972 has offset 1).

The definition of A106972 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5003 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A106972.P9052351132893381806

`∪[A106971(n+1), A106973(n+1)]`
-/

namespace A106972.P9052351132893381806
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106971 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106973 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A106972.P9052351132893381806

namespace A106972

/-- `∪[A106971(n+1), A106973(n+1)]` -/
def P9052351132893381806.Spec : Prop :=
  ∀ n, (P9052351132893381806.a n : ℤ) = A106972 (n + 1)

end A106972

/-! ## A106972.P7260035703866706265

`∪[A139879(n+1), A140616(n+1)]`
-/

namespace A106972.P7260035703866706265
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139879 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140616 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A106972.P7260035703866706265

namespace A106972

/-- `∪[A139879(n+1), A140616(n+1)]` -/
def P7260035703866706265.Spec : Prop :=
  ∀ n, (P7260035703866706265.a n : ℤ) = A106972 (n + 1)

end A106972

/-! ## A106972.P7111820639917467714

`∩[A040117(n+1), A141160(n+1)]`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A106972

/-- `∩[A040117(n+1), A141160(n+1)]` -/
def P7111820639917467714.Spec : Prop :=
  ∀ n, (P7111820639917467714.a n : ℤ) = A106972 (n + 1)

theorem P7111820639917467714.correct : P7111820639917467714.Spec := by
  intro n
  simp only [A106972, Nat.add_sub_cancel]

end A106972

/-! ## A106972.P1262648852754471597

`∩[A002144(n+1), A141160(n+1)]`
-/

namespace A106972.P1262648852754471597
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002144 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141160 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106972.P1262648852754471597

namespace A106972

/-- `∩[A002144(n+1), A141160(n+1)]` -/
def P1262648852754471597.Spec : Prop :=
  ∀ n, (P1262648852754471597.a n : ℤ) = A106972 (n + 1)

end A106972

/-! ## A106972.P17046699655359550095

`∩[A002313(n+1), A141160(n+1)]`
-/

namespace A106972.P17046699655359550095
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002313 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141160 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106972.P17046699655359550095

namespace A106972

/-- `∩[A002313(n+1), A141160(n+1)]` -/
def P17046699655359550095.Spec : Prop :=
  ∀ n, (P17046699655359550095.a n : ℤ) = A106972 (n + 1)

end A106972

/-! ## A106972.P3636276816695925838

`∩[A038893(n+1), A040117(n+1)]`
-/

namespace A106972.P3636276816695925838
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038893 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040117 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106972.P3636276816695925838

namespace A106972

/-- `∩[A038893(n+1), A040117(n+1)]` -/
def P3636276816695925838.Spec : Prop :=
  ∀ n, (P3636276816695925838.a n : ℤ) = A106972 (n + 1)

end A106972

/-! ## A106972.P15774492082089020087

`∩[A003625(n+1), A040117(n+1)]`
-/

namespace A106972.P15774492082089020087
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003625 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040117 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106972.P15774492082089020087

namespace A106972

/-- `∩[A003625(n+1), A040117(n+1)]` -/
def P15774492082089020087.Spec : Prop :=
  ∀ n, (P15774492082089020087.a n : ℤ) = A106972 (n + 1)

end A106972

/-! ## A106972.P15003387981415326009

`∩[A003632(n+1), A040117(n+1)]`
-/

namespace A106972.P15003387981415326009
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003632 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040117 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106972.P15003387981415326009

namespace A106972

/-- `∩[A003632(n+1), A040117(n+1)]` -/
def P15003387981415326009.Spec : Prop :=
  ∀ n, (P15003387981415326009.a n : ℤ) = A106972 (n + 1)

end A106972

/-! ## A106972.P4355428772219247731

`∩[A040117(n+1), A045399(n+1)]`
-/

namespace A106972.P4355428772219247731
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040117 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045399 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106972.P4355428772219247731

namespace A106972

/-- `∩[A040117(n+1), A045399(n+1)]` -/
def P4355428772219247731.Spec : Prop :=
  ∀ n, (P4355428772219247731.a n : ℤ) = A106972 (n + 1)

end A106972

/-! ## A106972.P16240535311759345894

`∩[A003632(n+1), A141160(n+1)]`
-/

namespace A106972.P16240535311759345894
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003632 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141160 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106972.P16240535311759345894

namespace A106972

/-- `∩[A003632(n+1), A141160(n+1)]` -/
def P16240535311759345894.Spec : Prop :=
  ∀ n, (P16240535311759345894.a n : ℤ) = A106972 (n + 1)

end A106972

/-! ## A106972.P13585600313970517371

`∩[A003632(n+1), A243183(n+1)]`
-/

namespace A106972.P13585600313970517371
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003632 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243183 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106972.P13585600313970517371

namespace A106972

/-- `∩[A003632(n+1), A243183(n+1)]` -/
def P13585600313970517371.Spec : Prop :=
  ∀ n, (P13585600313970517371.a n : ℤ) = A106972 (n + 1)

end A106972

/-! ## A106972.P10449470350610556577

`∩[A055025(n+1), A141160(n+1)]`
-/

namespace A106972.P10449470350610556577
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055025 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141160 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106972.P10449470350610556577

namespace A106972

/-- `∩[A055025(n+1), A141160(n+1)]` -/
def P10449470350610556577.Spec : Prop :=
  ∀ n, (P10449470350610556577.a n : ℤ) = A106972 (n + 1)

end A106972

/-! ## A106972.P11645035604770240588

`∩[A003630(n+1), A141160(n+1)]`
-/

namespace A106972.P11645035604770240588
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003630 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141160 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106972.P11645035604770240588

namespace A106972

/-- `∩[A003630(n+1), A141160(n+1)]` -/
def P11645035604770240588.Spec : Prop :=
  ∀ n, (P11645035604770240588.a n : ℤ) = A106972 (n + 1)

end A106972

/-! ## A106972.P16751569170193198700

`∩[A038875(n+1), A141160(n+1)]`
-/

namespace A106972.P16751569170193198700
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038875 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141160 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106972.P16751569170193198700

namespace A106972

/-- `∩[A038875(n+1), A141160(n+1)]` -/
def P16751569170193198700.Spec : Prop :=
  ∀ n, (P16751569170193198700.a n : ℤ) = A106972 (n + 1)

end A106972

/-! ## A106972.P5321868043278606059

`∩[A040125(n+1), A141160(n+1)]`
-/

namespace A106972.P5321868043278606059
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040125 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141160 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106972.P5321868043278606059

namespace A106972

/-- `∩[A040125(n+1), A141160(n+1)]` -/
def P5321868043278606059.Spec : Prop :=
  ∀ n, (P5321868043278606059.a n : ℤ) = A106972 (n + 1)

end A106972

/-! ## A106972.P10496473998890286947

`∩[A040102(n+1), A141160(n+1)]`
-/

namespace A106972.P10496473998890286947
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040102 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141160 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106972.P10496473998890286947

namespace A106972

/-- `∩[A040102(n+1), A141160(n+1)]` -/
def P10496473998890286947.Spec : Prop :=
  ∀ n, (P10496473998890286947.a n : ℤ) = A106972 (n + 1)

end A106972

/-! ## A106972.P17287629056313572248

`∩[A040113(n+1), A141160(n+1)]`
-/

namespace A106972.P17287629056313572248
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040113 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141160 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106972.P17287629056313572248

namespace A106972

/-- `∩[A040113(n+1), A141160(n+1)]` -/
def P17287629056313572248.Spec : Prop :=
  ∀ n, (P17287629056313572248.a n : ℤ) = A106972 (n + 1)

end A106972

/-! ## A106972.P17937123105143598625

`∩[A045318(n+1), A141160(n+1)]`
-/

namespace A106972.P17937123105143598625
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045318 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141160 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106972.P17937123105143598625

namespace A106972

/-- `∩[A045318(n+1), A141160(n+1)]` -/
def P17937123105143598625.Spec : Prop :=
  ∀ n, (P17937123105143598625.a n : ℤ) = A106972 (n + 1)

end A106972

/-! ## A106972.P12089615805106597077

`∩[A141160(n+1), A301916(n+1)]`
-/

namespace A106972.P12089615805106597077
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141160 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301916 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106972.P12089615805106597077

namespace A106972

/-- `∩[A141160(n+1), A301916(n+1)]` -/
def P12089615805106597077.Spec : Prop :=
  ∀ n, (P12089615805106597077.a n : ℤ) = A106972 (n + 1)

end A106972

/-! ## A106972.P6561657420136087194

`∩[A040995(n+1), A141160(n+1)]`
-/

namespace A106972.P6561657420136087194
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040995 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141160 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106972.P6561657420136087194

namespace A106972

/-- `∩[A040995(n+1), A141160(n+1)]` -/
def P6561657420136087194.Spec : Prop :=
  ∀ n, (P6561657420136087194.a n : ℤ) = A106972 (n + 1)

end A106972

/-!
# A106973: Primes of the form 5x^2-4xy+5y^2, with x and y nonnegative.

The programs for A106973, there is no canonical definition to state claims against.
-/

/-! ## A106973.P10685195798565005375

`A086523(∑[A326399(n+1)^A002324(n+1)])`
-/

namespace A106973.P10685195798565005375
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A326399 (n + 1) : ℚ) ^ (A002324 (n + 1) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086523 (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A106973.P10685195798565005375

/-!
# A106974: Primes of the form 2x^2+2xy+11y^2, with x and y nonnegative.

The programs for A106974, there is no canonical definition to state claims against.
-/

/-! ## A106974.P1926284168412405746

`eq[A036581(A028649(n)), A166974(n)]`
-/

namespace A106974.P1926284168412405746
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036581 (A028649 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166974 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A106974.P1926284168412405746

/-! ## A106974.P6853031952875019169

`A102273(A028310(n))%A102267(n+1)`
-/

namespace A106974.P6853031952875019169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A102273 (A028310 n).toNat) (A102267 (n + 1))

end

end A106974.P6853031952875019169

/-! ## A106974.P15281417828142571815

`A102273(A274933(n+1))%A102267(n+1)`
-/

namespace A106974.P15281417828142571815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A102273 (A274933 (n + 1)).toNat) (A102267 (n + 1))

end

end A106974.P15281417828142571815

/-!
# A106975: Primes of the form 4x^2+3xy+6y^2, with x and y nonnegative.

The programs for A106975, there is no canonical definition to state claims against.
-/

/-! ## A106975.P14382673074891798947

`A272407(A362078(3*(n+1))+A272398(n+1))`
-/

namespace A106975.P14382673074891798947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272407 (A362078 (3 * (n + 1)) + A272398 (n + 1)).toNat

end

end A106975.P14382673074891798947

/-!
# A106976: Primes of the form 4x^2+3xy+6y^2, with x and y any integer.

The programs for A106976, there is no canonical definition to state claims against.
-/

/-! ## A106976.P3218652094481229699

`∪[A106975(n+1), A106977(n+1)]`
-/

namespace A106976.P3218652094481229699
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106975 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106977 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A106976.P3218652094481229699

/-! ## A106976.P7465687973542153870

`p?[∏{p}[p?[3*n+1], #]*A131794(n+1)]`
-/

namespace A106976.P7465687973542153870
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => (f3 j).Prime) n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f2 n), p : ℕ) : ℤ) * A131794 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A106976.P7465687973542153870

/-!
# A106977: Primes of the form 4x^2-3xy+6y^2, with x and y nonnegative.

The programs for A106977, there is no canonical definition to state claims against.
-/

/-! ## A106977.P18375109082076241713

`A002476(eq[A083912(n+1), A238744(3*n+5)])`
-/

namespace A106977.P18375109082076241713
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083912 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238744 (3 * n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002476 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A106977.P18375109082076241713

/-! ## A106977.P16727153516218558016

`A285688(A342339(2*n+5))%A086647(2*(n+2))`
-/

namespace A106977.P16727153516218558016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A285688 (A342339 (2 * n + 5)).toNat) (A086647 (2 * (n + 2)))

end

end A106977.P16727153516218558016

/-!
# A106978: Primes of the form 3x^2+3xy+8y^2, with x and y nonnegative.

The programs for A106978, there is no canonical definition to state claims against.
-/

/-! ## A106978.P14388819888140581887

`A106979(n+2)%A106975(A191684(n))`
-/

namespace A106978.P14388819888140581887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A106979 (n + 2)) (A106975 (A191684 n).toNat)

end

end A106978.P14388819888140581887

/-! ## A106978.P26438306407953476

`∩[A106979(n+1), A045319(A325389(n+1))]`
-/

namespace A106978.P26438306407953476
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106979 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (A325389 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106978.P26438306407953476

/-!
# A106979: Primes of the form 3x^2-3xy+8y^2, with x and y nonnegative.

The programs for A106979, there is no canonical definition to state claims against.
-/

/-! ## A106979.P10458692498965011298

`A094480(A122756(n+1))`
-/

namespace A106979.P10458692498965011298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094480 (A122756 (n + 1)).toNat

end

end A106979.P10458692498965011298

/-!
# A106981: Primes of the form 2x^2+xy+11y^2, with x and y any integer.

The programs for A106981, there is no canonical definition to state claims against.
-/

/-! ## A106981.P2158751575959207952

`∪[A106980(n+1), A106982(n+1)]`
-/

namespace A106981.P2158751575959207952
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106980 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106982 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A106981.P2158751575959207952

/-! ## A106981.P8860888299753181933

`p?[A247421(3*n+2)]%A247374(2*n+1)`
-/

namespace A106981.P8860888299753181933
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247421 (3 * n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A247374 (2 * n + 1))

end

end A106981.P8860888299753181933

/-! ## A106981.P16150106813578758891

`p?[A206815(A206911(n+1)+A011655(n))]`
-/

namespace A106981.P16150106813578758891
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206815 (A206911 (n + 1) + A011655 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A106981.P16150106813578758891

/-!
# A106982: Primes of the form 2x^2-xy+11y^2, with x and y nonnegative.

The programs for A106982, there is no canonical definition to state claims against.
-/

/-! ## A106982.P15403384382156557044

`A106981(eq[A264550(n+1), A283674(n)])`
-/

namespace A106982.P15403384382156557044
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264550 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283674 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106981 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A106982.P15403384382156557044

/-!
# A106983: Primes of the form x^2+xy+22y^2, with x and y nonnegative.

The programs for A106983, there is no canonical definition to state claims against.
-/

/-! ## A106983.P11366623578215761934

`∩[A033256(n+1), A087685(n+1)]`
-/

namespace A106983.P11366623578215761934
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033256 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087685 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106983.P11366623578215761934

/-! ## A106983.P1483898122051247914

`∩[A033256(n+1), A097144(n+1)]`
-/

namespace A106983.P1483898122051247914
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033256 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097144 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106983.P1483898122051247914

/-!
# A106984: Primes of the form 2x^2 + 11y^2.

The programs for A106984, there is no canonical definition to state claims against.
-/

/-! ## A106984.P5114999324207129005

`∩[A035241(n+1), A042999(n+1)]`
-/

namespace A106984.P5114999324207129005
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035241 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042999 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106984.P5114999324207129005

/-!
# A106986: Primes of the form 5x^2+3xy+5y^2, with x and y any integers.

The programs for A106986, there is no canonical definition to state claims against.
-/

/-! ## A106986.P6853923244751676695

`∪[A106985(n+1), A106987(n+1)]`
-/

namespace A106986.P6853923244751676695
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106985 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106987 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A106986.P6853923244751676695

/-! ## A106986.P14905213761125266742

`∩[A045399(n+1), A120330(n+1)]`
-/

namespace A106986.P14905213761125266742
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045399 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120330 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106986.P14905213761125266742

/-! ## A106986.P11635568397116415119

`∩[A047328(n+1), A120330(n+1)]`
-/

namespace A106986.P11635568397116415119
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047328 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120330 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106986.P11635568397116415119

/-! ## A106986.P4588313297089948364

`filter[A120330(n+1), A011671(#)]`
-/

namespace A106986.P4588313297089948364
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120330 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A011671 (f1 j).toNat = 1) n)

end

end A106986.P4588313297089948364

/-! ## A106986.P1746186988451731813

`∩[A028811(n+1), A120330(n+1)]`
-/

namespace A106986.P1746186988451731813
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028811 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120330 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106986.P1746186988451731813

/-!
# A106989: Primes of the form x^2-xy+23y^2, with x and y nonnegative.

The programs for A106989, there is no canonical definition to state claims against.
-/

/-! ## A106989.P8246286921292794566

`∩[p?[a(n-3)+7], A038883(n+1)]` with `a(0)=0, a(1)=2, a(2)=6, a(3)=7, a(4)=1, a(5)=4, a(6)=9`
-/

namespace A106989.P8246286921292794566
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 2, 6, 7, 1, 4, 9] fun n f2 =>
  f2 (n - 3) + 7

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038883 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f3 j = (x : ℤ)) n

end

end A106989.P8246286921292794566

/-! ## A106989.P17485282007968416869

`∩[p?[a(n-3)+7], A296937(n+1)]` with `a(0)=0, a(1)=2, a(2)=6, a(3)=7, a(4)=1, a(5)=4, a(6)=9`
-/

namespace A106989.P17485282007968416869
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 2, 6, 7, 1, 4, 9] fun n f2 =>
  f2 (n - 3) + 7

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296937 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f3 j = (x : ℤ)) n

end

end A106989.P17485282007968416869

/-! ## A106989.P13879866609030495371

`∩[A033207(n+1), A038883(n+1)]`
-/

namespace A106989.P13879866609030495371
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033207 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038883 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106989.P13879866609030495371

/-! ## A106989.P7895265778749910909

`∩[A038883(n+1), A045373(n+1)]`
-/

namespace A106989.P7895265778749910909
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038883 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045373 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106989.P7895265778749910909

/-! ## A106989.P16784339074169326009

`∩[A038883(n+1), A045386(n+1)]`
-/

namespace A106989.P16784339074169326009
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038883 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045386 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106989.P16784339074169326009

/-! ## A106989.P13616004358508163119

`∩[A033207(n+1), A191054(n+1)]`
-/

namespace A106989.P13616004358508163119
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033207 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191054 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106989.P13616004358508163119

/-! ## A106989.P5497809679718380383

`∩[A038883(n+1), A191054(n+1)]`
-/

namespace A106989.P5497809679718380383
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038883 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191054 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106989.P5497809679718380383

/-! ## A106989.P8204826442991342884

`∩[A045373(n+1), A191054(n+1)]`
-/

namespace A106989.P8204826442991342884
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045373 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191054 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106989.P8204826442991342884

/-! ## A106989.P6289026013946818815

`∩[A045386(n+1), A191054(n+1)]`
-/

namespace A106989.P6289026013946818815
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045386 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191054 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106989.P6289026013946818815

/-! ## A106989.P17628697884770147865

`∩[A033207(n+1), A296937(n+1)]`
-/

namespace A106989.P17628697884770147865
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033207 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296937 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106989.P17628697884770147865

/-! ## A106989.P14753631196217404630

`∩[A045373(n+1), A296937(n+1)]`
-/

namespace A106989.P14753631196217404630
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045373 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296937 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106989.P14753631196217404630

/-! ## A106989.P5964182281885247247

`∩[A045386(n+1), A296937(n+1)]`
-/

namespace A106989.P5964182281885247247
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045386 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296937 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106989.P5964182281885247247

/-! ## A106989.P3215520259907079431

`∩[A191054(n+1), A296937(n+1)]`
-/

namespace A106989.P3215520259907079431
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191054 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296937 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106989.P3215520259907079431

/-! ## A106989.P2380662215798072805

`∩[A033207(n+1), A270997(n+1)]`
-/

namespace A106989.P2380662215798072805
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033207 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270997 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106989.P2380662215798072805

/-! ## A106989.P13121730475309737082

`∩[A045373(n+1), A270997(n+1)]`
-/

namespace A106989.P13121730475309737082
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045373 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270997 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106989.P13121730475309737082

/-! ## A106989.P2256171916160025681

`∩[A045386(n+1), A270997(n+1)]`
-/

namespace A106989.P2256171916160025681
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045386 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270997 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106989.P2256171916160025681

/-! ## A106989.P12510328516226644796

`∩[A191054(n+1), A270997(n+1)]`
-/

namespace A106989.P12510328516226644796
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191054 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270997 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106989.P12510328516226644796

/-! ## A106989.P7150029820085546494

`∩[A038883(n+1), A155717(n+1)]`
-/

namespace A106989.P7150029820085546494
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038883 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155717 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106989.P7150029820085546494

/-! ## A106989.P6388816716931389870

`∩[A155717(n+1), A191054(n+1)]`
-/

namespace A106989.P6388816716931389870
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155717 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191054 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106989.P6388816716931389870

/-! ## A106989.P13021146614443744868

`∩[A155717(n+1), A296937(n+1)]`
-/

namespace A106989.P13021146614443744868
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155717 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296937 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106989.P13021146614443744868

/-!
# A106993: Primes of the form 4x^2+xy+6y^2, with x and y any integer.

The programs for A106993, there is no canonical definition to state claims against.
-/

/-! ## A106993.P8198757018574848210

`∪[A106992(n+1), A106994(n+1)]`
-/

namespace A106993.P8198757018574848210
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106992 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106994 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A106993.P8198757018574848210

/-! ## A106993.P3262738087823752577

`p?[lcm(n, A030213(n))]`
-/

namespace A106993.P3262738087823752577
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n : ℤ) (A030213 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A106993.P3262738087823752577

/-! ## A106993.P17806966245175799992

`eq[A030213(n), A260148(n)]`
-/

namespace A106993.P17806966245175799992
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030213 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260148 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A106993.P17806966245175799992

/-! ## A106993.P8265235294198552017

`p?[A001489(n)*A030213(n)]`
-/

namespace A106993.P8265235294198552017
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001489 n * A030213 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A106993.P8265235294198552017

/-! ## A106993.P14699378708843175028

`p?[eq[A030213(n), A033999(n)]]`
-/

namespace A106993.P14699378708843175028
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030213 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j = f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A106993.P14699378708843175028

/-! ## A106993.P5623407204394089934

`p?[n*(A000007(n)-A030213(n))]`
-/

namespace A106993.P5623407204394089934
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A000007 n - A030213 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A106993.P5623407204394089934

/-! ## A106993.P12160088009971836402

`p?[A030213(A005408(n))²*A005408(n)]`
-/

namespace A106993.P12160088009971836402
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030213 (A005408 n).toNat ^ 2 * A005408 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A106993.P12160088009971836402

/-!
# A106994: Primes of the form 4x^2-xy+6y^2, with x and y nonnegative.

The programs for A106994, there is no canonical definition to state claims against.
-/

/-! ## A106994.P6191402284858035948

`∩[A092195(n+1), A106993(n+1)]`
-/

namespace A106994.P6191402284858035948
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092195 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106993 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106994.P6191402284858035948

/-!
# A106995: Primes of the form 3x^2+xy+8y^2, with x and y nonnegative.

The programs for A106995, there is no canonical definition to state claims against.
-/

/-! ## A106995.P11797250232047115038

`p?[A178334(∑[A162658(n+1)])]`
-/

namespace A106995.P11797250232047115038
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162658 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178334 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A106995.P11797250232047115038

/-!
# A106996: Primes of the form 3x^2+xy+8y^2, with x and y any integer.

The programs for A106996, there is no canonical definition to state claims against.
-/

/-! ## A106996.P14744842817488428933

`∪[A106995(n+1), A106997(n+1)]`
-/

namespace A106996.P14744842817488428933
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106995 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106997 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A106996.P14744842817488428933

/-! ## A106996.P14550044014385514701

`eq[A030213(2*n), A260148(n)]`
-/

namespace A106996.P14550044014385514701
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030213 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260148 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A106996.P14550044014385514701

/-! ## A106996.P12463529756116634386

`p?[-(A001281(n)*A030213(n))]`
-/

namespace A106996.P12463529756116634386
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(A001281 n * A030213 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A106996.P12463529756116634386

/-! ## A106996.P3055874808783782638

`p?[A001489(n)*A030213(2*n)]`
-/

namespace A106996.P3055874808783782638
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001489 n * A030213 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A106996.P3055874808783782638

/-! ## A106996.P2753301912555302667

`p?[eq[A030213(2*n), A033999(n)]]`
-/

namespace A106996.P2753301912555302667
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030213 (2 * n)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j = f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A106996.P2753301912555302667

/-! ## A106996.P8598759329385127304

`p?[(A064680(n)-n)*A030213(n)]`
-/

namespace A106996.P8598759329385127304
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A064680 n - (n : ℤ)) * A030213 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A106996.P8598759329385127304

/-! ## A106996.P834037223742271395

`p?[A000007(n)-A001281(n)*A030213(n)]`
-/

namespace A106996.P834037223742271395
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n - A001281 n * A030213 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A106996.P834037223742271395

/-!
# A106997: Primes of the form 3x^2-xy+8y^2, with x and y nonnegative.

The programs for A106997, there is no canonical definition to state claims against.
-/

/-! ## A106997.P11611452204665282456

`A174010(A050903(n+2))`
-/

namespace A106997.P11611452204665282456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174010 (A050903 (n + 2)).toNat

end

end A106997.P11611452204665282456

/-!
# A106998: Primes of the form 2x^2+xy+12y^2, with x and y nonnegative.

The programs for A106998, there is no canonical definition to state claims against.
-/

/-! ## A106998.P16104943990770272278

`A142352(A001615(n+1)+10*n)`
-/

namespace A106998.P16104943990770272278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142352 (A001615 (n + 1) + (10 * n : ℤ)).toNat

end

end A106998.P16104943990770272278

/-!
# A106999: Primes of the form 2x^2+xy+12y^2, with x and y any integer.

The programs for A106999, there is no canonical definition to state claims against.
-/

/-! ## A106999.P4798639294029977240

`∪[A106998(n+1), A107000(n+1)]`
-/

namespace A106999.P4798639294029977240
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106998 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107000 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A106999.P4798639294029977240

/-! ## A106999.P11248309449129653610

`p?[A001281(n)*A030213(n)]`
-/

namespace A106999.P11248309449129653610
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 n * A030213 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A106999.P11248309449129653610

/-! ## A106999.P4262806807709511581

`p?[n*A030213(A064680(n))]`
-/

namespace A106999.P4262806807709511581
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A030213 (A064680 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A106999.P4262806807709511581

