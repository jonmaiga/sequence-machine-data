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
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C022
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C038
import Seq.B000.C039
import Seq.B000.C040
import Seq.B000.C041
import Seq.B000.C042
import Seq.B000.C043
import Seq.B000.C048
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
import Seq.B003.C005
import Seq.B003.C006
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
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
# A105900: Primes for which -28 is a primitive root.

The programs for A105900, there is no canonical definition to state claims against.
-/

/-! ## A105900.P12709146859997074449

`A003625(A073491(n+1)%A345970(3*n+8))`
-/

namespace A105900.P12709146859997074449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003625 (Int.tmod (A073491 (n + 1)) (A345970 (3 * n + 8))).toNat

end

end A105900.P12709146859997074449

/-! ## A105900.P12212544110419739123

`∩[A003625(n+1), A167662(n+1)]`
-/

namespace A105900.P12212544110419739123
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003625 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167662 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105900.P12212544110419739123

/-! ## A105900.P13620694068321822118

`∩[A003625(n+1), A168543(n+1)]`
-/

namespace A105900.P13620694068321822118
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003625 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168543 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105900.P13620694068321822118

/-! ## A105900.P16070934924939483401

`∩[A003625(n+1), A357304(n+1)]`
-/

namespace A105900.P16070934924939483401
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003625 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357304 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105900.P16070934924939483401

/-! ## A105900.P14250701661457337007

`∩[A003625(n+1), A322911(n+1)]`
-/

namespace A105900.P14250701661457337007
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003625 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322911 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105900.P14250701661457337007

/-!
# A105902: Primes for which -30 is a primitive root.

The programs for A105902, there is no canonical definition to state claims against.
-/

/-! ## A105902.P1583702008574234505

`A030144(lt[1, A316656(2*n+1)])`
-/

namespace A105902.P1583702008574234505
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316656 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030144 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A105902.P1583702008574234505

/-! ## A105902.P3677510086585432072

`A343590(lt[A326542(n), A086971(2*n+1)])`
-/

namespace A105902.P3677510086585432072
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326542 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086971 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343590 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A105902.P3677510086585432072

/-!
# A105903: Primes for which -31 is a primitive root.

The programs for A105903, there is no canonical definition to state claims against.
-/

/-! ## A105903.P11042632847543386175

`p?[eq[2, A001222(A288529(n+1))]]`
-/

namespace A105903.P11042632847543386175
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A288529 (n + 1)).toNat

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A105903.P11042632847543386175

/-! ## A105903.P2887197229675105057

`p?[∑[A172263(A347499(2*n+5))]]`
-/

namespace A105903.P2887197229675105057
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172263 (A347499 (2 * n + 5)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A105903.P2887197229675105057

/-! ## A105903.P2987294278886536049

`eq[A001222(A288529(n+1)), A005127(n)]`
-/

namespace A105903.P2987294278886536049
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A288529 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005127 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A105903.P2987294278886536049

/-! ## A105903.P17013051173840082182

`record[A094701(A094671(n+4)²)]`
-/

namespace A105903.P17013051173840082182
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094701 (A094671 (n + 4) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A105903.P17013051173840082182

/-! ## A105903.P3636835733886444937

`record[A045337(n+1)%A299970(3*(n+1))]`
-/

namespace A105903.P3636835733886444937
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A045337 (n + 1)) (A299970 (3 * (n + 1)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A105903.P3636835733886444937

/-!
# A105904: Primes for which -32 is a primitive root.

The programs for A105904, there is no canonical definition to state claims against.
-/

/-! ## A105904.P12942131034012939093

`∩[A042991(n+1), A105874(n+1)]`
-/

namespace A105904.P12942131034012939093
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042991 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105874 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105904.P12942131034012939093

/-! ## A105904.P1702234318219501230

`∩[A042991(n+1), A167798(n+1)]`
-/

namespace A105904.P1702234318219501230
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042991 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167798 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105904.P1702234318219501230

/-! ## A105904.P16299057463072042758

`∩[A049557(n+1), A105874(n+1)]`
-/

namespace A105904.P16299057463072042758
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049557 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105874 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105904.P16299057463072042758

/-! ## A105904.P12644795031188532086

`∩[A049557(n+1), A167798(n+1)]`
-/

namespace A105904.P12644795031188532086
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049557 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167798 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105904.P12644795031188532086

/-! ## A105904.P12696560297679621023

`∩[A040159(n+1), A105874(n+1)]`
-/

namespace A105904.P12696560297679621023
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040159 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105874 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105904.P12696560297679621023

/-! ## A105904.P11247754549156861791

`∩[A040159(n+1), A167798(n+1)]`
-/

namespace A105904.P11247754549156861791
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040159 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167798 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105904.P11247754549156861791

/-! ## A105904.P15742808485952224079

`∩[A105874(n+1), A187332(n+1)]`
-/

namespace A105904.P15742808485952224079
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105874 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187332 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105904.P15742808485952224079

/-! ## A105904.P8518107095887906318

`∩[A047203(n+1), A105874(n+1)]`
-/

namespace A105904.P8518107095887906318
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047203 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105874 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105904.P8518107095887906318

/-! ## A105904.P6265310489515344378

`record[A052274(A167798(n+1))]`
-/

namespace A105904.P6265310489515344378
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052274 (A167798 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A105904.P6265310489515344378

/-! ## A105904.P5787131661105125738

`∩[A105874(n+1), A344308(n+1)]`
-/

namespace A105904.P5787131661105125738
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105874 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344308 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105904.P5787131661105125738

/-! ## A105904.P16645335700313412380

`∩[A167798(n+1), A344308(n+1)]`
-/

namespace A105904.P16645335700313412380
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167798 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344308 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105904.P16645335700313412380

/-!
# A105906: Primes for which -34 is a primitive root.

The programs for A105906, there is no canonical definition to state claims against.
-/

/-! ## A105906.P6521390912875695188

`p?[∑[A014589(A235555(n+1))]]`
-/

namespace A105906.P6521390912875695188
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014589 (A235555 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A105906.P6521390912875695188

/-! ## A105906.P4328864753920493405

`p?[∑[A001588(A300831(n+1))]]`
-/

namespace A105906.P4328864753920493405
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001588 (A300831 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A105906.P4328864753920493405

/-! ## A105906.P12903332802878038227

`p?[∑[A282243(A118259(n+1))]]`
-/

namespace A105906.P12903332802878038227
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282243 (A118259 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A105906.P12903332802878038227

/-!
# A105907: Primes for which -35 is a primitive root.

The programs for A105907, there is no canonical definition to state claims against.
-/

/-! ## A105907.P9742787444310085807

`filter[A191068(n+1), A255887(#)]`
-/

namespace A105907.P9742787444310085807
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191068 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A255887 (f1 j).toNat = 1) n)

end

end A105907.P9742787444310085807

/-! ## A105907.P16058197536025877032

`∩[A189891(n+1), A191068(n+1)]`
-/

namespace A105907.P16058197536025877032
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189891 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191068 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105907.P16058197536025877032

/-! ## A105907.P10355060542616375782

`∩[A191068(n+1), A206718(n+1)]`
-/

namespace A105907.P10355060542616375782
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191068 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206718 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105907.P10355060542616375782

/-!
# A105908: Primes for which -36 is a primitive root.

The programs for A105908, there is no canonical definition to state claims against.
-/

/-! ## A105908.P16121744580080560095

`p?[A059029(eq[n, A103492(n)])]`
-/

namespace A105908.P16121744580080560095
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103492 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059029 (SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A105908.P16121744580080560095

/-! ## A105908.P12145097391330381657

`2*eq[A029579(n), A103492(n)]+1`
-/

namespace A105908.P12145097391330381657
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029579 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103492 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A105908.P12145097391330381657

/-! ## A105908.P6089281034854020445

`A005408(eq[A029579(n), A103492(n)])`
-/

namespace A105908.P6089281034854020445
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029579 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103492 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A105908.P6089281034854020445

/-! ## A105908.P4977099912383797054

`A059029(eq[A029579(n), A103492(n)])`
-/

namespace A105908.P4977099912383797054
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029579 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103492 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059029 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A105908.P4977099912383797054

/-! ## A105908.P14573173055496929381

`A005408(eq[A103492(n), A109613(n)])`
-/

namespace A105908.P14573173055496929381
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103492 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109613 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A105908.P14573173055496929381

/-!
# A105909: Primes for which -37 is a primitive root.

The programs for A105909, there is no canonical definition to state claims against.
-/

/-! ## A105909.P6615127823155864986

`∩[A051647(n+1), A191932(n+1)]`
-/

namespace A105909.P6615127823155864986
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051647 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191932 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105909.P6615127823155864986

/-! ## A105909.P3384654328000565488

`A230775(A015442(n)+A008000(n))`
-/

namespace A105909.P3384654328000565488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230775 (A015442 n + A008000 n).toNat

end

end A105909.P3384654328000565488

/-! ## A105909.P15020038318467103393

`A038614(lt[A250853(n+1), A056214(n+1)])`
-/

namespace A105909.P15020038318467103393
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250853 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056214 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038614 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A105909.P15020038318467103393

/-! ## A105909.P1635259533882452329

`record[p?[A122666(n+1)]]`
-/

namespace A105909.P1635259533882452329
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122666 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A105909.P1635259533882452329

/-! ## A105909.P15860155970911063324

`p?[record[A358066(n+1)]]`
-/

namespace A105909.P15860155970911063324
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358066 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A105909.P15860155970911063324

/-!
# A105910: Primes for which -38 is a primitive root.

The programs for A105910, there is no canonical definition to state claims against.
-/

/-! ## A105910.P16630499432419319391

`∩[A191069(n+1), A352748(n+1)]`
-/

namespace A105910.P16630499432419319391
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191069 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352748 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105910.P16630499432419319391

/-! ## A105910.P16056659117707602685

`A000040(lt[A333252(2*(n+2)), A333253(3*n+5)])`
-/

namespace A105910.P16056659117707602685
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333252 (2 * (n + 2))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333253 (3 * n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A105910.P16056659117707602685

/-!
# A105911: Primes for which -39 is a primitive root.

The programs for A105911, there is no canonical definition to state claims against.
-/

/-! ## A105911.P6322573402840768184

`p?[eq[A005925(n), A332006(n)]]`
-/

namespace A105911.P6322573402840768184
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005925 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332006 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j = f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A105911.P6322573402840768184

/-!
# A105912: Primes for which -40 is a primitive root.

The programs for A105912, there is no canonical definition to state claims against.
-/

/-! ## A105912.P18084206797884910394

`A023221(eq[1, A319734(2*n+1)])`
-/

namespace A105912.P18084206797884910394
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319734 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023221 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A105912.P18084206797884910394

/-!
# A105914: Primes for which -42 is a primitive root.

The programs for A105914, there is no canonical definition to state claims against.
-/

/-! ## A105914.P12461218458972191214

`p?[A320837(n+5)+A320829(3*n+1)]`
-/

namespace A105914.P12461218458972191214
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320837 (n + 5) + A320829 (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A105914.P12461218458972191214

/-!
# A105915: Hamming weight enumerator of a certain code over GF(4).

The programs for A105915, there is no canonical definition to state claims against.
-/

/-! ## A105915.P15544848132631407343

`ceil((ϕ+1)*2^n)%A000079(A020063(n))`
-/

namespace A105915.P15544848132631407343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌈(Real.goldenRatio + 1) * (2 ^ n : ℝ)⌉ (A000079 (A020063 n).toNat)

end

end A105915.P15544848132631407343

/-! ## A105915.P8956026928560352559

`A125555(A195177(n)^A051036(n))`
-/

namespace A105915.P8956026928560352559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125555 (SequenceMachineLib.roundAway ((A195177 n : ℚ) ^ (A051036 n : ℤ))).toNat

end

end A105915.P8956026928560352559

/-! ## A105915.P14360060101779255546

`A004013(xor(A100326(n), A346922(n)))`
-/

namespace A105915.P14360060101779255546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004013 (Int.xor (A100326 n) (A346922 n)).toNat

end

end A105915.P14360060101779255546

/-! ## A105915.P9726181532412122229

`A000010(A018548(n+1))*A343345(n)`
-/

namespace A105915.P9726181532412122229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A018548 (n + 1)).toNat * A343345 n

end

end A105915.P9726181532412122229

/-!
# A105916: Lee weight enumerator of a certain code over GF(4).

The programs for A105916, there is no canonical definition to state claims against.
-/

/-! ## A105916.P18341009357766146601

`A154452(3*a(n-1))` with `a(0)=1, a(1)=0, a(2)=12`
-/

namespace A105916.P18341009357766146601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 12] fun n a =>
  A154452 (3 * a (n - 1)).toNat

end

end A105916.P18341009357766146601

/-!
# A105918: Weight distribution of [24,12,6] odd Golay code.

The programs for A105918, there is no canonical definition to state claims against.
-/

/-! ## A105918.P15276887878365918271

`A008680(n)*A029470(A061933(n+1))`
-/

namespace A105918.P15276887878365918271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008680 n * A029470 (A061933 (n + 1)).toNat

end

end A105918.P15276887878365918271

/-! ## A105918.P6338841329534197845

`A008680(n)*A029470(A061954(n+1))`
-/

namespace A105918.P6338841329534197845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008680 n * A029470 (A061954 (n + 1)).toNat

end

end A105918.P6338841329534197845

/-!
# A105919: Lee weight enumerator of a certain code over GF(4).

The programs for A105919, there is no canonical definition to state claims against.
-/

/-! ## A105919.P10864046910313755523

`A332845(A008544(n))`
-/

namespace A105919.P10864046910313755523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332845 (A008544 n).toNat

end

end A105919.P10864046910313755523

/-!
# A105920: Lee weight enumerator of a certain code over GF(4).

The programs for A105920, there is no canonical definition to state claims against.
-/

/-! ## A105920.P18406246072925276211

`A123108(A116201(n)^6)`
-/

namespace A105920.P18406246072925276211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (A116201 n ^ 6).toNat

end

end A105920.P18406246072925276211

/-! ## A105920.P4873912935917425246

`A123108(A224985(n)^6)`
-/

namespace A105920.P4873912935917425246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (A224985 n ^ 6).toNat

end

end A105920.P4873912935917425246

/-!
# A105921: Lee weight enumerator of a certain code over GF(4).

The programs for A105921, there is no canonical definition to state claims against.
-/

/-! ## A105921.P2227901228976609447

`and(A005344(n+1), A007716(A104433(n)))`
-/

namespace A105921.P2227901228976609447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A005344 (n + 1)) (A007716 (A104433 n).toNat)

end

end A105921.P2227901228976609447

/-!
# A105922: Lee weight enumerator of a certain code over GF(4).

The programs for A105922, there is no canonical definition to state claims against.
-/

/-! ## A105922.P211902414400103789

`A174707(n+1)*A327784(A001157(n+1))`
-/

namespace A105922.P211902414400103789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174707 (n + 1) * A327784 (A001157 (n + 1)).toNat

end

end A105922.P211902414400103789

/-! ## A105922.P276226947472444689

`A087604(record[C(xor(2, n), 2)])`
-/

namespace A105922.P276226947472444689
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (Nat.xor 2 n) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087604 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A105922.P276226947472444689

/-!
# A105923: Lee weight enumerator of a certain code over GF(4).

The programs for A105923, there is no canonical definition to state claims against.
-/

/-! ## A105923.P8263886729169334740

`and((10*C(n, 6))!, C(n+7, 7))`
-/

namespace A105923.P8263886729169334740
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land (Nat.factorial (10 * Nat.choose n 6)) (Nat.choose (n + 7) 7)

end

end A105923.P8263886729169334740

/-! ## A105923.P9160337512765703304

`and(6^n, A147640(n+1))`
-/

namespace A105923.P9160337512765703304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (6 ^ n : ℤ) (A147640 (n + 1))

end

end A105923.P9160337512765703304

/-! ## A105923.P8246830434848259774

`A059985(A059063(n))`
-/

namespace A105923.P8246830434848259774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059985 (A059063 n).toNat

end

end A105923.P8246830434848259774

/-!
# A105924: Hamming weight enumerator of an extremal [92, 46, 16] binary self-dual code.

The programs for A105924, there is no canonical definition to state claims against.
-/

/-! ## A105924.P7022070320743718837

`(n+2)*A167654((a(n-1)+val(n, 2))!)` with `a(0)=1`
-/

namespace A105924.P7022070320743718837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (n + 2 : ℤ) * A167654 (Nat.factorial (a (n - 1) + (SequenceMachineLib.valuation n 2 : ℤ)).toNat)

end

end A105924.P7022070320743718837

/-! ## A105924.P14252041634584082304

`C(a(n-1)+6*n-2, A034694(2*n+5))` with `a(0)=1`
-/

namespace A105924.P14252041634584082304
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.choose ((a (n - 1) + 6 * n : ℤ) - 2).toNat (A034694 (2 * n + 5)).toNat

end

end A105924.P14252041634584082304

/-! ## A105924.P834612060066652143

`A290910(A288546(n+7))`
-/

namespace A105924.P834612060066652143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290910 (A288546 (n + 7)).toNat

end

end A105924.P834612060066652143

/-! ## A105924.P13481215455385251176

`C(A287020(n), A219721(n))`
-/

namespace A105924.P13481215455385251176
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A287020 n).toNat (A219721 n).toNat

end

end A105924.P13481215455385251176

/-! ## A105924.P1193146700115372932

`C(A180501(A180501(n)), ∏{e}[n+1, #+1])`
-/

namespace A105924.P1193146700115372932
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A180501 (A180501 n).toNat).toNat (∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1))

end

end A105924.P1193146700115372932

/-!
# A105925: Lee weight enumerator of a certain code over GF(4).

The programs for A105925, there is no canonical definition to state claims against.
-/

/-! ## A105925.P977830672591524618

`A001444(n)*A051907(A016754(n))`
-/

namespace A105925.P977830672591524618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001444 n * A051907 (A016754 n).toNat

end

end A105925.P977830672591524618

/-!
# A105926: First differences of A000166.

The programs for A105926, the canonical program `A105926.P9471521188307592422` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A105926 has offset 0).

The definition of A105926 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A105926.P9471521188307592422

`A000166(n+1)-A000166(n)`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A105926

/-- `A000166(n+1)-A000166(n)` -/
def P9471521188307592422.Spec : Prop :=
  ∀ n, P9471521188307592422.a n = A105926 n

theorem P9471521188307592422.correct : P9471521188307592422.Spec := by
  intro n
  simp only [A105926]

end A105926

/-! ## A105926.P9838050748142707103

`Δ[xor(1, n*a(n-1))]` with `a(0)=1`
-/

namespace A105926.P9838050748142707103
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  Nat.xor 1 (n * f1 (n - 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A105926.P9838050748142707103

namespace A105926

/-- `Δ[xor(1, n*a(n-1))]` -/
def P9838050748142707103.Spec : Prop :=
  ∀ n, P9838050748142707103.a n = A105926 n

end A105926

/-! ## A105926.P6440681994043084996

`Δ[xor(1, a(n-1)/n^(-1))]` with `a(0)=1`
-/

namespace A105926.P6440681994043084996
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  Int.xor 1 (SequenceMachineLib.roundAway ((f1 (n - 1) : ℚ) / (n : ℚ) ^ (-1 : ℤ)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A105926.P6440681994043084996

namespace A105926

/-- `Δ[xor(1, a(n-1)/n^(-1))]` -/
def P6440681994043084996.Spec : Prop :=
  ∀ n, P6440681994043084996.a n = A105926 n

end A105926

/-! ## A105926.P8827881858355845995

`Δ[(-1)^n+n*a(n-1)]` with `a(0)=1`
-/

namespace A105926.P8827881858355845995
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  (-1) ^ n + (n : ℤ) * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A105926.P8827881858355845995

namespace A105926

/-- `Δ[(-1)^n+n*a(n-1)]` -/
def P8827881858355845995.Spec : Prop :=
  ∀ n, P8827881858355845995.a n = A105926 n

theorem P8827881858355845995.correct : P8827881858355845995.Spec := by
  intro n
  simp only [A105926, Nat.add_sub_cancel, A105926.P8827881858355845995.f1, A105926.P8827881858355845995.a, A105926.P9471521188307592422.a, A000166, A000166.P17301805902585999237.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A105926

/-! ## A105926.P12755893696401987962

`Δ[n*a(n-1)-(-1)^(1-n)]` with `a(0)=1`
-/

namespace A105926.P12755893696401987962
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1] fun n f1 =>
  (n : ℚ) * f1 (n - 1) - (-1 : ℚ) ^ (1 - (n : ℤ) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A105926.P12755893696401987962

namespace A105926

/-- `Δ[n*a(n-1)-(-1)^(1-n)]` -/
def P12755893696401987962.Spec : Prop :=
  ∀ n, P12755893696401987962.a n = (A105926 n : ℚ)

end A105926

/-! ## A105926.P5188158038733245476

`Δ[(-1)^n+a(n-1)/n^(-1)]` with `a(0)=1`
-/

namespace A105926.P5188158038733245476
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1] fun n f1 =>
  ((-1) ^ n : ℚ) + f1 (n - 1) / (n : ℚ) ^ (-1 : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A105926.P5188158038733245476

namespace A105926

/-- `Δ[(-1)^n+a(n-1)/n^(-1)]` -/
def P5188158038733245476.Spec : Prop :=
  ∀ n, P5188158038733245476.a n = (A105926 n : ℚ)

end A105926

/-! ## A105926.P3682170575852001070

`Δ[xor(1, abs(n*a((2*n)%(n+1))))]` with `a(0)=1`
-/

namespace A105926.P3682170575852001070
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  Nat.xor 1 (n * f1 (2 * n % (n + 1)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A105926.P3682170575852001070

namespace A105926

/-- `Δ[xor(1, abs(n*a((2*n)%(n+1))))]` -/
def P3682170575852001070.Spec : Prop :=
  ∀ n, P3682170575852001070.a n = A105926 n

end A105926

/-! ## A105926.P9028425876101481900

`Δ[(a(n-1)+a(n-2))*(n-1)]` with `a(0)=1, a(1)=0`
-/

namespace A105926.P9028425876101481900
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n f1 =>
  (f1 (n - 1) + f1 (n - 2)) * ((n : ℤ) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A105926.P9028425876101481900

namespace A105926

/-- `Δ[(a(n-1)+a(n-2))*(n-1)]` -/
def P9028425876101481900.Spec : Prop :=
  ∀ n, P9028425876101481900.a n = A105926 n

end A105926

/-! ## A105926.P12870458763544227587

`Δ[(a(n-1)-round(-a(n-2)))*(n-1)]` with `a(0)=1, a(1)=0`

`round` is left out, it is the identity on integers.
-/

namespace A105926.P12870458763544227587
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n f1 =>
  (f1 (n - 1) - (-f1 (n - 2))) * ((n : ℤ) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A105926.P12870458763544227587

namespace A105926

/-- `Δ[(a(n-1)-round(-a(n-2)))*(n-1)]` -/
def P12870458763544227587.Spec : Prop :=
  ∀ n, P12870458763544227587.a n = A105926 n

end A105926

/-! ## A105926.P8295427675909822664

`Δ[floor(n*a(floor(n²/(n+1))))+(-1)^n]` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A105926.P8295427675909822664
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  (n : ℤ) * f1 ⌊(n ^ 2 : ℚ) / (n + 1 : ℚ)⌋.toNat + (-1) ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A105926.P8295427675909822664

namespace A105926

/-- `Δ[floor(n*a(floor(n²/(n+1))))+(-1)^n]` -/
def P8295427675909822664.Spec : Prop :=
  ∀ n, P8295427675909822664.a n = A105926 n

end A105926

/-!
# A105927: Let d(n) = A000166(n); then a(n) = ( (n^2+n-1)*d(n) + (-1)^(n-1)*(n-1) )/2.

The programs for A105927, the canonical program `A105927.P17902523682908334449` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A105927 has offset 0).

The definition of A105927 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A105927.P17339107800994247199

`(A000166(n+2)-2*A000166(n+1)-A000166(n))/2`
-/

namespace A105927.P17339107800994247199
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000166 (n + 2) - 2 * A000166 (n + 1) - A000166 n : ℚ) / 2

end

end A105927.P17339107800994247199

namespace A105927

/-- `(A000166(n+2)-2*A000166(n+1)-A000166(n))/2` -/
def P17339107800994247199.Spec : Prop :=
  ∀ n, P17339107800994247199.a n = (A105927 n : ℚ)

end A105927

/-! ## A105927.P17902523682908334449

`n*(n-1)*(a(n-1)+a(n-2))/(n-2)` with `a(0)=0, a(1)=0, a(2)=2`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A105927

/-- `n*(n-1)*(a(n-1)+a(n-2))/(n-2)` -/
def P17902523682908334449.Spec : Prop :=
  ∀ n, P17902523682908334449.a n = (A105927 n : ℚ)

end A105927

/-! ## A105927.P1112860987646305453

`A331007(n+2)/2`
-/

namespace A105927.P1112860987646305453
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A331007 (n + 2) : ℚ) / 2

end

end A105927.P1112860987646305453

namespace A105927

/-- `A331007(n+2)/2` -/
def P1112860987646305453.Spec : Prop :=
  ∀ n, P1112860987646305453.a n = (A105927 n : ℚ)

end A105927

/-! ## A105927.P2496411455214825193

`n*(A000166(n)+a(n-1))` with `a(0)=0`
-/

namespace A105927.P2496411455214825193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (n : ℤ) * (A000166 n + a (n - 1))

end

end A105927.P2496411455214825193

namespace A105927

/-- `n*(A000166(n)+a(n-1))` -/
def P2496411455214825193.Spec : Prop :=
  ∀ n, P2496411455214825193.a n = A105927 n

end A105927

/-! ## A105927.P9248315808444294378

`A086325(n)+n*a(n-1)` with `a(0)=0`
-/

namespace A105927.P9248315808444294378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A086325 n + (n : ℤ) * a (n - 1)

end

end A105927.P9248315808444294378

namespace A105927

/-- `A086325(n)+n*a(n-1)` -/
def P9248315808444294378.Spec : Prop :=
  ∀ n, P9248315808444294378.a n = A105927 n

end A105927

/-! ## A105927.P15293395073884367846

`floor((n!+1)/e)*∑[n]-A000387(n)`
-/

namespace A105927.P15293395073884367846
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.factorial n + 1 : ℝ) / Real.exp 1⌋ * ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A000387 n

end

end A105927.P15293395073884367846

namespace A105927

/-- `floor((n!+1)/e)*∑[n]-A000387(n)` -/
def P15293395073884367846.Spec : Prop :=
  ∀ n, P15293395073884367846.a n = A105927 n

end A105927

/-! ## A105927.P14130286474906102005

`A065087(n)-A000387(n)`
-/

namespace A105927.P14130286474906102005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065087 n - A000387 n

end

end A105927.P14130286474906102005

namespace A105927

/-- `A065087(n)-A000387(n)` -/
def P14130286474906102005.Spec : Prop :=
  ∀ n, P14130286474906102005.a n = A105927 n

end A105927

/-! ## A105927.P789992875784121210

`n*(A000255(n)-A000153(n))`
-/

namespace A105927.P789992875784121210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A000255 n - A000153 n)

end

end A105927.P789992875784121210

namespace A105927

/-- `n*(A000255(n)-A000153(n))` -/
def P789992875784121210.Spec : Prop :=
  ∀ n, P789992875784121210.a n = A105927 n

end A105927

/-! ## A105927.P3799519334537738052

`A000166(n+2)-A000153(n+1)`
-/

namespace A105927.P3799519334537738052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000166 (n + 2) - A000153 (n + 1)

end

end A105927.P3799519334537738052

namespace A105927

/-- `A000166(n+2)-A000153(n+1)` -/
def P3799519334537738052.Spec : Prop :=
  ∀ n, P3799519334537738052.a n = A105927 n

end A105927

/-! ## A105927.P17436454601058819668

`A000153(n+1)-A259834(n+2)`
-/

namespace A105927.P17436454601058819668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000153 (n + 1) - A259834 (n + 2)

end

end A105927.P17436454601058819668

namespace A105927

/-- `A000153(n+1)-A259834(n+2)` -/
def P17436454601058819668.Spec : Prop :=
  ∀ n, P17436454601058819668.a n = A105927 n

end A105927

/-!
# A105928: a(n) = ((n^3 - 4n + 1)*A000166(n) + (-1)^(n+1)*(n-1)^2) / 6.

The programs for A105928, the canonical program `A105928.P695013797224093824` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A105928 has offset 0).

The definition of A105928 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A105928.P695013797224093824

`((n^3-4*n+1)*A000166(n)+(-1)^(n+1)*(n-1)²)/6`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A105928

/-- `((n^3-4*n+1)*A000166(n)+(-1)^(n+1)*(n-1)²)/6` -/
def P695013797224093824.Spec : Prop :=
  ∀ n, P695013797224093824.a n = (A105928 n : ℚ)

end A105928

/-! ## A105928.P8939832332295355630

`n*(A000261(n+1)-A000255(n))`
-/

namespace A105928.P8939832332295355630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A000261 (n + 1) - A000255 n)

end

end A105928.P8939832332295355630

namespace A105928

/-- `n*(A000261(n+1)-A000255(n))` -/
def P8939832332295355630.Spec : Prop :=
  ∀ n, P8939832332295355630.a n = A105928 n

end A105928

/-! ## A105928.P749429466620361517

`lcm(A093968(n), A323905(A000142(n)))`
-/

namespace A105928.P749429466620361517
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A093968 n) (A323905 (A000142 n).toNat)

end

end A105928.P749429466620361517

namespace A105928

/-- `lcm(A093968(n), A323905(A000142(n)))` -/
def P749429466620361517.Spec : Prop :=
  ∀ n, (P749429466620361517.a n : ℤ) = A105928 n

end A105928

/-!
# A105929: Triangle read by rows: T(n,k) is the number of directed column-convex polyominoes of area n, having k columns of height 1 starting at level 0.

The programs for A105929, there is no canonical definition to state claims against.
-/

/-! ## A105929.P11364605411908613313

`A065600(n)-A051767(n+1)%3`
-/

namespace A105929.P11364605411908613313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065600 n - Int.tmod (A051767 (n + 1)) 3

end

end A105929.P11364605411908613313

/-! ## A105929.P7088494470829236167

`A317369(A152151(n))`
-/

namespace A105929.P7088494470829236167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317369 (A152151 n).toNat

end

end A105929.P7088494470829236167

/-! ## A105929.P8392473617964253490

`A072782(2^A065600(n))`
-/

namespace A105929.P8392473617964253490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072782 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A065600 n : ℤ))).toNat

end

end A105929.P8392473617964253490

/-! ## A105929.P14193180282399469144

`∑{e}[A291000(A008290(n)), #]`
-/

namespace A105929.P14193180282399469144
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291000 (A008290 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A105929.P14193180282399469144

/-! ## A105929.P13077033084506191681

`A109754(n+2)*A389446(A249359(n+1))`
-/

namespace A105929.P13077033084506191681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109754 (n + 2) * A389446 (A249359 (n + 1)).toNat

end

end A105929.P13077033084506191681

/-!
# A105930: Starting position of the n-th prime in the almost-natural numbers sequence A007376.

The programs for A105930, there is no canonical definition to state claims against.
-/

/-! ## A105930.P14963059294966709863

`A117804(p?[xor(1, n)+1])`
-/

namespace A105930.P14963059294966709863
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117804 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A105930.P14963059294966709863

/-! ## A105930.P1280324716637411641

`A117804(p?[n%3+n])`
-/

namespace A105930.P1280324716637411641
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 3 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117804 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A105930.P1280324716637411641

/-! ## A105930.P12717492590154357395

`A117804(p?[n-(-1)^n])`
-/

namespace A105930.P12717492590154357395
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (-1) ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117804 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A105930.P12717492590154357395

/-! ## A105930.P3820971318631836495

`A117804(Δ[A007504(n)])`
-/

namespace A105930.P3820971318631836495
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117804 (f1 (n + 1) - f1 n).toNat

end

end A105930.P3820971318631836495

/-! ## A105930.P6979566944687226829

`A117804(record[A051698(n)])`
-/

namespace A105930.P6979566944687226829
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051698 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117804 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A105930.P6979566944687226829

/-! ## A105930.P8455841877511838194

`A117804(A000040(n+1))`
-/

namespace A105930.P8455841877511838194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117804 (A000040 (n + 1)).toNat

end

end A105930.P8455841877511838194

/-! ## A105930.P9482907524496309520

`A117804(A216883(n+1))`
-/

namespace A105930.P9482907524496309520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117804 (A216883 (n + 1)).toNat

end

end A105930.P9482907524496309520

/-! ## A105930.P11862331409046599949

`A117804(A216884(n+1))`
-/

namespace A105930.P11862331409046599949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117804 (A216884 (n + 1)).toNat

end

end A105930.P11862331409046599949

/-! ## A105930.P9223558418912091596

`A117804(A216885(n+1))`
-/

namespace A105930.P9223558418912091596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117804 (A216885 (n + 1)).toNat

end

end A105930.P9223558418912091596

/-!
# A105931: a(1) = 1 then a(n) = a(n-1) - (-1)^ceiling(n/2)*a(floor(n/2)).

The programs for A105931, the canonical program `A105931.P5737954110285966001` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A105931 has offset 1).

The definition of A105931 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A105931.P5737954110285966001

`a(n-1)-(-1)^ceil((n+1)/2)*a(floor((n+1)/2)-1)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A105931

/-- `a(n-1)-(-1)^ceil((n+1)/2)*a(floor((n+1)/2)-1)` -/
def P5737954110285966001.Spec : Prop :=
  ∀ n, P5737954110285966001.a n = (A105931 (n + 1) : ℚ)

end A105931

/-! ## A105931.P15101515359544510993

`(3-a(floor(n/2))²)^(n%2)` with `a(0)=1`
-/

namespace A105931.P15101515359544510993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (3 - a ⌊(n : ℚ) / 2⌋.toNat ^ 2) ^ (n % 2)

end

end A105931.P15101515359544510993

namespace A105931

/-- `(3-a(floor(n/2))²)^(n%2)` -/
def P15101515359544510993.Spec : Prop :=
  ∀ n, P15101515359544510993.a n = A105931 (n + 1)

end A105931

/-! ## A105931.P1995319176387985810

`(val(n+1, 2)%2+1)²-Δ[or(1, n)]`
-/

namespace A105931.P1995319176387985810
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((SequenceMachineLib.valuation (n + 1) 2 % 2 + 1) ^ 2 : ℕ) : ℤ) - ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A105931.P1995319176387985810

namespace A105931

/-- `(val(n+1, 2)%2+1)²-Δ[or(1, n)]` -/
def P1995319176387985810.Spec : Prop :=
  ∀ n, P1995319176387985810.a n = A105931 (n + 1)

end A105931

/-! ## A105931.P16489106730773329461

`2-(val(n+1, 2)²+2*n+1)%4`
-/

namespace A105931.P16489106730773329461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (((SequenceMachineLib.valuation (n + 1) 2 ^ 2 + (2 * n + 1)) % 4 : ℕ) : ℤ)

end

end A105931.P16489106730773329461

namespace A105931

/-- `2-(val(n+1, 2)²+2*n+1)%4` -/
def P16489106730773329461.Spec : Prop :=
  ∀ n, P16489106730773329461.a n = A105931 (n + 1)

end A105931

/-! ## A105931.P2199067747375008899

`2-xor(1, A191254(n+1))`
-/

namespace A105931.P2199067747375008899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - Int.xor 1 (A191254 (n + 1))

end

end A105931.P2199067747375008899

namespace A105931

/-- `2-xor(1, A191254(n+1))` -/
def P2199067747375008899.Spec : Prop :=
  ∀ n, P2199067747375008899.a n = A105931 (n + 1)

end A105931

/-! ## A105931.P15945305327663945249

`2-A096936(2^val(n+1, 2))`
-/

namespace A105931.P15945305327663945249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A096936 (2 ^ SequenceMachineLib.valuation (n + 1) 2)

end

end A105931.P15945305327663945249

namespace A105931

/-- `2-A096936(2^val(n+1, 2))` -/
def P15945305327663945249.Spec : Prop :=
  ∀ n, P15945305327663945249.a n = A105931 (n + 1)

end A105931

/-! ## A105931.P2237274617527604674

`xor(2, val(A066990(n+1), 2))-1`
-/

namespace A105931.P2237274617527604674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.xor 2 (SequenceMachineLib.valuation (A066990 (n + 1)).toNat 2) : ℤ) - 1

end

end A105931.P2237274617527604674

namespace A105931

/-- `xor(2, val(A066990(n+1), 2))-1` -/
def P2237274617527604674.Spec : Prop :=
  ∀ n, P2237274617527604674.a n = A105931 (n + 1)

end A105931

/-! ## A105931.P11140145730909219481

`A056832(n+1)²-2*and(1, n)`
-/

namespace A105931.P11140145730909219481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056832 (n + 1) ^ 2 - (2 * Nat.land 1 n : ℤ)

end

end A105931.P11140145730909219481

namespace A105931

/-- `A056832(n+1)²-2*and(1, n)` -/
def P11140145730909219481.Spec : Prop :=
  ∀ n, P11140145730909219481.a n = A105931 (n + 1)

end A105931

/-! ## A105931.P8440084165928805300

`or(-A328981(n+1), gcd(2, n+1))`
-/

namespace A105931.P8440084165928805300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (-A328981 (n + 1)) (Nat.gcd 2 (n + 1) : ℤ)

end

end A105931.P8440084165928805300

namespace A105931

/-- `or(-A328981(n+1), gcd(2, n+1))` -/
def P8440084165928805300.Spec : Prop :=
  ∀ n, P8440084165928805300.a n = A105931 (n + 1)

end A105931

/-! ## A105931.P12245849714294465269

`and(n+1, -(n+1))%3*A309873((n+1)/∏{p}[n+1, #])`
-/

namespace A105931.P12245849714294465269
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.land (n + 1 : ℤ) (-(n + 1 : ℤ))) 3 * A309873 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ))).toNat

end

end A105931.P12245849714294465269

namespace A105931

/-- `and(n+1, -(n+1))%3*A309873((n+1)/∏{p}[n+1, #])` -/
def P12245849714294465269.Spec : Prop :=
  ∀ n, P12245849714294465269.a n = A105931 (n + 1)

end A105931

/-! ## A105931.P4423993542035541374

`A057079(A135481(n))`
-/

namespace A105931.P4423993542035541374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057079 (A135481 n).toNat

end

end A105931.P4423993542035541374

namespace A105931

/-- `A057079(A135481(n))` -/
def P4423993542035541374.Spec : Prop :=
  ∀ n, P4423993542035541374.a n = A105931 (n + 1)

end A105931

/-! ## A105931.P15112919245804569343

`A113661(A006519(n+1))`
-/

namespace A105931.P15112919245804569343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113661 (A006519 (n + 1)).toNat

end

end A105931.P15112919245804569343

namespace A105931

/-- `A113661(A006519(n+1))` -/
def P15112919245804569343.Spec : Prop :=
  ∀ n, P15112919245804569343.a n = A105931 (n + 1)

end A105931

/-! ## A105931.P7448397564660698438

`A113661(A065331(n+1))`
-/

namespace A105931.P7448397564660698438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113661 (A065331 (n + 1)).toNat

end

end A105931.P7448397564660698438

namespace A105931

/-- `A113661(A065331(n+1))` -/
def P7448397564660698438.Spec : Prop :=
  ∀ n, P7448397564660698438.a n = A105931 (n + 1)

end A105931

/-! ## A105931.P5033900770535147758

`A113661(A065338(n+1))`
-/

namespace A105931.P5033900770535147758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113661 (A065338 (n + 1)).toNat

end

end A105931.P5033900770535147758

namespace A105931

/-- `A113661(A065338(n+1))` -/
def P5033900770535147758.Spec : Prop :=
  ∀ n, P5033900770535147758.a n = A105931 (n + 1)

end A105931

/-! ## A105931.P8914219154755267070

`A113661(A079065(n+1))`
-/

namespace A105931.P8914219154755267070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113661 (A079065 (n + 1)).toNat

end

end A105931.P8914219154755267070

namespace A105931

/-- `A113661(A079065(n+1))` -/
def P8914219154755267070.Spec : Prop :=
  ∀ n, P8914219154755267070.a n = A105931 (n + 1)

end A105931

/-! ## A105931.P14150919473536174936

`A143098(A330569(n+1))`
-/

namespace A105931.P14150919473536174936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143098 (A330569 (n + 1)).toNat

end

end A105931.P14150919473536174936

namespace A105931

/-- `A143098(A330569(n+1))` -/
def P14150919473536174936.Spec : Prop :=
  ∀ n, P14150919473536174936.a n = A105931 (n + 1)

end A105931

/-! ## A105931.P11237611429444527009

`A056832(n+1)-2*A328981(n+1)`
-/

namespace A105931.P11237611429444527009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056832 (n + 1) - 2 * A328981 (n + 1)

end

end A105931.P11237611429444527009

namespace A105931

/-- `A056832(n+1)-2*A328981(n+1)` -/
def P11237611429444527009.Spec : Prop :=
  ∀ n, P11237611429444527009.a n = A105931 (n + 1)

end A105931

/-! ## A105931.P13877043084695631675

`A099837(A006519(n+1)-A033999(n))`
-/

namespace A105931.P13877043084695631675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099837 (A006519 (n + 1) - A033999 n).toNat

end

end A105931.P13877043084695631675

namespace A105931

/-- `A099837(A006519(n+1)-A033999(n))` -/
def P13877043084695631675.Spec : Prop :=
  ∀ n, P13877043084695631675.a n = A105931 (n + 1)

end A105931

/-! ## A105931.P12883722245751492750

`A099837(A033999(n+1)+A006519(n+1))`
-/

namespace A105931.P12883722245751492750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099837 (A033999 (n + 1) + A006519 (n + 1)).toNat

end

end A105931.P12883722245751492750

namespace A105931

/-- `A099837(A033999(n+1)+A006519(n+1))` -/
def P12883722245751492750.Spec : Prop :=
  ∀ n, P12883722245751492750.a n = A105931 (n + 1)

end A105931

/-! ## A105931.P16925389948770320983

`A359832(n+1)+A096268(n)-A328981(n+1)`
-/

namespace A105931.P16925389948770320983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359832 (n + 1) + (A096268 n - A328981 (n + 1))

end

end A105931.P16925389948770320983

namespace A105931

/-- `A359832(n+1)+A096268(n)-A328981(n+1)` -/
def P16925389948770320983.Spec : Prop :=
  ∀ n, P16925389948770320983.a n = A105931 (n + 1)

end A105931

/-!
# A105933: An eight-symbol substitution on an hypertetrahedron with two symbol connection per vertex : limited to coverage of the connections : characteristic polynomial:x^8-4*x^&5-4*x^4-8*x^3.

The programs for A105933, there is no canonical definition to state claims against.
-/

/-! ## A105933.P6971101378641241214

`A131818(n+1)-A244735(2^n)`
-/

namespace A105933.P6971101378641241214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1) - A244735 (2 ^ n)

end

end A105933.P6971101378641241214

/-! ## A105933.P14935755609514567710

`A102820(A343115(n+1))+A001842(n)`
-/

namespace A105933.P14935755609514567710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102820 (A343115 (n + 1)).toNat + A001842 n

end

end A105933.P14935755609514567710

/-! ## A105933.P7679223009878061170

`A118144(A118140(n+1)+A103600(n+1))`
-/

namespace A105933.P7679223009878061170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118144 (A118140 (n + 1) + A103600 (n + 1)).toNat

end

end A105933.P7679223009878061170

/-! ## A105933.P23340422115397323

`A131818(n+1)-A333755(A303650(n+1))`
-/

namespace A105933.P23340422115397323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1) - A333755 (A303650 (n + 1)).toNat

end

end A105933.P23340422115397323

/-! ## A105933.P4531456068658480223

`A342765(n+1)-A163535(A056652(3*n+4))`
-/

namespace A105933.P4531456068658480223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342765 (n + 1) - A163535 (A056652 (3 * n + 4)).toNat

end

end A105933.P4531456068658480223

/-!
# A105934: Positive integers n such that n^22 + 1 is semiprime (A001358).

The programs for A105934, there is no canonical definition to state claims against.
-/

/-! ## A105934.P6116460824843110888

`∩[A005574(n+1), A250191(n+1)]`
-/

namespace A105934.P6116460824843110888
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005574 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250191 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105934.P6116460824843110888

/-! ## A105934.P380572175377213805

`filter[A250191(n+1), A295405(#)]`
-/

namespace A105934.P380572175377213805
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250191 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A295405 (f1 j).toNat = 1) n)

end

end A105934.P380572175377213805

/-! ## A105934.P5718992022186667080

`sqrt(∩[A105122(n+1), n²])`
-/

namespace A105934.P5718992022186667080
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105122 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n : ℝ)

end

end A105934.P5718992022186667080

/-!
# A105936: Numbers that are the product of exactly 3 primes and are of the form prime(n) + prime(n+1).

The programs for A105936, there is no canonical definition to state claims against.
-/

/-! ## A105936.P6170579210386932946

`2*A078443(n+1)`
-/

namespace A105936.P6170579210386932946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A078443 (n + 1)

end

end A105936.P6170579210386932946

/-! ## A105936.P7545271409350418606

`record[2*A078443(A329048(n))]`
-/

namespace A105936.P7545271409350418606
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A078443 (A329048 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A105936.P7545271409350418606

/-! ## A105936.P3327657981786725599

`A078443(n+1)+A078443(Δ[n²]-n)`
-/

namespace A105936.P3327657981786725599
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078443 (n + 1) + A078443 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat

end

end A105936.P3327657981786725599

/-! ## A105936.P16431308654208227301

`A078443(n+1)+record[A078443(A329048(n))]`
-/

namespace A105936.P16431308654208227301
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078443 (A329048 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078443 (n + 1) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A105936.P16431308654208227301

/-! ## A105936.P3901225348275212528

`A078443(n+1)+A078443(n+1)%A017054(n)`
-/

namespace A105936.P3901225348275212528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078443 (n + 1) + Int.tmod (A078443 (n + 1)) (A017054 n)

end

end A105936.P3901225348275212528

/-! ## A105936.P13354326813948891514

`(A078443(n+1)+A078443(n+1))%A075296(n+1)`
-/

namespace A105936.P13354326813948891514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A078443 (n + 1) + A078443 (n + 1)) (A075296 (n + 1))

end

end A105936.P13354326813948891514

/-! ## A105936.P9921503932993046072

`2*∩[A001358(n+1), A162800(n)]`
-/

namespace A105936.P9921503932993046072
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162800 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105936.P9921503932993046072

/-! ## A105936.P7289092389322866963

`2*∩[A001358(n+1), A024675(n+1)]`
-/

namespace A105936.P7289092389322866963
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024675 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105936.P7289092389322866963

/-! ## A105936.P6655505648043892601

`2*∩[A001358(n+1), A145025(n+1)]`
-/

namespace A105936.P6655505648043892601
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145025 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105936.P6655505648043892601

/-! ## A105936.P1997336653220160458

`2*∩[A001358(n+1), A162735(n+1)]`
-/

namespace A105936.P1997336653220160458
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162735 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105936.P1997336653220160458

/-! ## A105936.P5834354034147980356

`2*∩[A001358(n+1), A063934(n+1)]`
-/

namespace A105936.P5834354034147980356
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063934 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105936.P5834354034147980356

/-! ## A105936.P13713839916550077504

`∩[A001043(n+1), A075818(n+1)]`
-/

namespace A105936.P13713839916550077504
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001043 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075818 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105936.P13713839916550077504

/-! ## A105936.P14824634038110445956

`∩[A011974(n+1), A075818(n+1)]`
-/

namespace A105936.P14824634038110445956
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011974 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075818 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105936.P14824634038110445956

/-! ## A105936.P7582954826654261433

`∩[A075818(n+1), A144043(n+1)]`
-/

namespace A105936.P7582954826654261433
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075818 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144043 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105936.P7582954826654261433

/-! ## A105936.P15974931481425507513

`∩[A075818(n+1), A164653(n+1)]`
-/

namespace A105936.P15974931481425507513
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075818 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164653 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105936.P15974931481425507513

/-! ## A105936.P8475449368786716785

`2*∩[A176540(n+1), A162800(n)]`
-/

namespace A105936.P8475449368786716785
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176540 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162800 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105936.P8475449368786716785

/-! ## A105936.P16629841902707740550

`2*∩[A024675(n+1), A176540(n+1)]`
-/

namespace A105936.P16629841902707740550
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024675 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176540 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105936.P16629841902707740550

/-! ## A105936.P1797344310471379797

`2*∩[A063934(n+1), A176540(n+1)]`
-/

namespace A105936.P1797344310471379797
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063934 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176540 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105936.P1797344310471379797

/-! ## A105936.P7974980794392262076

`2*∩[A145025(n+1), A176540(n+1)]`
-/

namespace A105936.P7974980794392262076
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145025 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176540 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105936.P7974980794392262076

/-! ## A105936.P3964279956420654404

`2*∩[A323644(n+1), A162800(n)]`
-/

namespace A105936.P3964279956420654404
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323644 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162800 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105936.P3964279956420654404

/-!
# A105937: Infinite square array read by antidiagonals: T(m, 0) = 1, T(m, 1) = m; T(m, k) = (m - k + 1) T(m+1, k-1) - (k-1) (m+1) T(m+2, k-2).

The programs for A105937, there is no canonical definition to state claims against.
-/

/-! ## A105937.P17535276565205922377

`A217257(n)-A258769(A135846(n+1))`
-/

namespace A105937.P17535276565205922377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217257 n - A258769 (A135846 (n + 1)).toNat

end

end A105937.P17535276565205922377

/-! ## A105937.P6864664941041782171

`A290429(n)-A258769(A135846(n+1))`
-/

namespace A105937.P6864664941041782171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290429 n - A258769 (A135846 (n + 1)).toNat

end

end A105937.P6864664941041782171

/-! ## A105937.P10398549477868912690

`A246935(n)-A301979(A308674(n+1))`
-/

namespace A105937.P10398549477868912690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246935 n - A301979 (A308674 (n + 1)).toNat

end

end A105937.P10398549477868912690

/-! ## A105937.P14620643455042835569

`A045847(n)-A000038(A081114(2*(n+2)))`
-/

namespace A105937.P14620643455042835569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045847 n - A000038 (A081114 (2 * (n + 2))).toNat

end

end A105937.P14620643455042835569

/-! ## A105937.P11624278398067430748

`A217257(n)-A000122(A144502(2*(n+2)))`
-/

namespace A105937.P11624278398067430748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217257 n - A000122 (A144502 (2 * (n + 2))).toNat

end

end A105937.P11624278398067430748

/-!
# A105938: a(n) = binomial(n+2,2)*binomial(n+5,2).

The programs for A105938, the canonical program `A105938.P11666215245170671259` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A105938 has offset 0).

The definition of A105938 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(n+2, 2)*C(n+5, 2)` (program `A105938.P11666215245170671259`, by `A105938.P11666215245170671259.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A105938.P11666215245170671259

`C(n+2, 2)*C(n+5, 2)`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A105938

/-- `C(n+2, 2)*C(n+5, 2)` -/
def P11666215245170671259.Spec : Prop :=
  ∀ n, (P11666215245170671259.a n : ℤ) = A105938 n

theorem P11666215245170671259.correct : P11666215245170671259.Spec := by
  intro n
  simp only [A105938]

end A105938

/-! ## A105938.P17184376952982615734

`ogf((10-5x+x^2)/(1-5x+10x^2-10x^3+5x^4-x^5))`
-/

namespace A105938.P17184376952982615734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [10, -5, 1] [1, -5, 10, -10, 5, -1] n

end

end A105938.P17184376952982615734

namespace A105938

/-- `ogf((10-5x+x^2)/(1-5x+10x^2-10x^3+5x^4-x^5))` -/
def P17184376952982615734.Spec : Prop :=
  ∀ n, P17184376952982615734.a n = A105938 n

end A105938

/-! ## A105938.P4731460511639761194

`5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` with `a(0)=10, a(1)=45, a(2)=126, a(3)=280, a(4)=540`
-/

namespace A105938.P4731460511639761194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [10, 45, 126, 280, 540] fun n a =>
  5 * a (n - 1) - 10 * a (n - 2) + 10 * a (n - 3) - 5 * a (n - 4) + a (n - 5)

end

end A105938.P4731460511639761194

namespace A105938

/-- `5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` -/
def P4731460511639761194.Spec : Prop :=
  ∀ n, P4731460511639761194.a n = A105938 n

end A105938

/-! ## A105938.P14677046998638296806

`A000217(n+1)*A000217(n+4)`
-/

namespace A105938.P14677046998638296806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (n + 1) * A000217 (n + 4)

end

end A105938.P14677046998638296806

namespace A105938

/-- `A000217(n+1)*A000217(n+4)` -/
def P14677046998638296806.Spec : Prop :=
  ∀ n, P14677046998638296806.a n = A105938 n

theorem P14677046998638296806.correct : P14677046998638296806.Spec := by
  intro n
  simp only [A105938, Nat.add_sub_cancel, A105938.P14677046998638296806.a, A105938.P11666215245170671259.a, A000217, A000217.P10269402890581615239.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A105938

/-! ## A105938.P11645785810747069730

`A000096(n+1)*A000096(n+2)`
-/

namespace A105938.P11645785810747069730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000096 (n + 1) * A000096 (n + 2)

end

end A105938.P11645785810747069730

namespace A105938

/-- `A000096(n+1)*A000096(n+2)` -/
def P11645785810747069730.Spec : Prop :=
  ∀ n, P11645785810747069730.a n = A105938 n

theorem P11645785810747069730.correct : P11645785810747069730.Spec := by
  intro n
  simp only [A105938, Nat.add_sub_cancel, A105938.P11645785810747069730.a, A105938.P11666215245170671259.a, A000096, A000096.P6925830517264718723.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A105938

/-! ## A105938.P2713960285387558331

`30*A000389(n+5)/(n+3)`
-/

namespace A105938.P2713960285387558331
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (30 * A000389 (n + 5) : ℚ) / (n + 3 : ℚ)

end

end A105938.P2713960285387558331

namespace A105938

/-- `30*A000389(n+5)/(n+3)` -/
def P2713960285387558331.Spec : Prop :=
  ∀ n, P2713960285387558331.a n = (A105938 n : ℚ)

theorem P2713960285387558331.correct : P2713960285387558331.Spec := by
  intro n
  simp only [A105938, Nat.add_sub_cancel, A105938.P2713960285387558331.a, A105938.P11666215245170671259.a, A000389, A000389.P15450220129395289428.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A105938

/-! ## A105938.P3567966912548684080

`C(n+5, 2)*∑[n+1]`
-/

namespace A105938.P3567966912548684080
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 5) 2 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A105938.P3567966912548684080

namespace A105938

/-- `C(n+5, 2)*∑[n+1]` -/
def P3567966912548684080.Spec : Prop :=
  ∀ n, (P3567966912548684080.a n : ℤ) = A105938 n

end A105938

/-! ## A105938.P8787533678398293734

`∑[∑[3*(n+2)²-2]]`
-/

namespace A105938.P8787533678398293734
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * (n + 2) ^ 2 : ℤ) - 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A105938.P8787533678398293734

namespace A105938

/-- `∑[∑[3*(n+2)²-2]]` -/
def P8787533678398293734.Spec : Prop :=
  ∀ n, P8787533678398293734.a n = A105938 n

end A105938

/-! ## A105938.P4304761673600326567

`floor(C((n+3)²-2, 2)/2)`
-/

namespace A105938.P4304761673600326567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.choose (((n + 3) ^ 2 : ℤ) - 2).toNat 2 : ℚ) / 2⌋

end

end A105938.P4304761673600326567

namespace A105938

/-- `floor(C((n+3)²-2, 2)/2)` -/
def P4304761673600326567.Spec : Prop :=
  ∀ n, P4304761673600326567.a n = A105938 n

end A105938

/-! ## A105938.P4202131848091102011

`(C((n+3)²-2, 2)-1)/2`
-/

namespace A105938.P4202131848091102011
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((Nat.choose (((n + 3) ^ 2 : ℤ) - 2).toNat 2 : ℤ) - 1 : ℚ) / 2

end

end A105938.P4202131848091102011

namespace A105938

/-- `(C((n+3)²-2, 2)-1)/2` -/
def P4202131848091102011.Spec : Prop :=
  ∀ n, P4202131848091102011.a n = (A105938 n : ℚ)

end A105938

/-! ## A105938.P10022641832419866314

`(∑[n+3]+gcd(2, 2*n))*∑[n+2]`
-/

namespace A105938.P10022641832419866314
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j + Nat.gcd 2 (2 * n)) * (∑ j ∈ Finset.range (n + 1), f2 j)

end

end A105938.P10022641832419866314

namespace A105938

/-- `(∑[n+3]+gcd(2, 2*n))*∑[n+2]` -/
def P10022641832419866314.Spec : Prop :=
  ∀ n, (P10022641832419866314.a n : ℤ) = A105938 n

end A105938

/-! ## A105938.P9112329817839391931

`(lcm(n+2, n+3)-∑[n+1])*∑[n+2]`
-/

namespace A105938.P9112329817839391931
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((Nat.lcm (n + 2) (n + 3) : ℤ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)) * ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

end

end A105938.P9112329817839391931

namespace A105938

/-- `(lcm(n+2, n+3)-∑[n+1])*∑[n+2]` -/
def P9112329817839391931.Spec : Prop :=
  ∀ n, P9112329817839391931.a n = A105938 n

end A105938

/-! ## A105938.P7459444445216467569

`A054559(n+5)/(n+3)`
-/

namespace A105938.P7459444445216467569
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A054559 (n + 5) : ℚ) / (n + 3 : ℚ)

end

end A105938.P7459444445216467569

namespace A105938

/-- `A054559(n+5)/(n+3)` -/
def P7459444445216467569.Spec : Prop :=
  ∀ n, P7459444445216467569.a n = (A105938 n : ℚ)

theorem P7459444445216467569.correct : P7459444445216467569.Spec := by
  intro n
  simp only [A105938, Nat.add_sub_cancel, A105938.P7459444445216467569.a, A105938.P11666215245170671259.a, A054559, A054559.P15202165871438408034.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A105938

/-! ## A105938.P12533583741195549130

`A005564(n+3)+∑[n+2]²`
-/

namespace A105938.P12533583741195549130
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005564 (n + 3) + (((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℤ)

end

end A105938.P12533583741195549130

namespace A105938

/-- `A005564(n+3)+∑[n+2]²` -/
def P12533583741195549130.Spec : Prop :=
  ∀ n, P12533583741195549130.a n = A105938 n

end A105938

/-! ## A105938.P2874836091167224051

`A154286(n)+A006504(n+1)`
-/

namespace A105938.P2874836091167224051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154286 n + A006504 (n + 1)

end

end A105938.P2874836091167224051

namespace A105938

/-- `A154286(n)+A006504(n+1)` -/
def P2874836091167224051.Spec : Prop :=
  ∀ n, P2874836091167224051.a n = A105938 n

end A105938

/-! ## A105938.P6308913498431367958

`A000292(n+1)+∑[A027620(n)]`
-/

namespace A105938.P6308913498431367958
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027620 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A105938.P6308913498431367958

namespace A105938

/-- `A000292(n+1)+∑[A027620(n)]` -/
def P6308913498431367958.Spec : Prop :=
  ∀ n, P6308913498431367958.a n = A105938 n

end A105938

/-! ## A105938.P4017936362636248479

`A024191(n+1)+A154286(n)+A000292(n)`
-/

namespace A105938.P4017936362636248479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024191 (n + 1) + (A154286 n + A000292 n)

end

end A105938.P4017936362636248479

namespace A105938

/-- `A024191(n+1)+A154286(n)+A000292(n)` -/
def P4017936362636248479.Spec : Prop :=
  ∀ n, P4017936362636248479.a n = A105938 n

end A105938

/-! ## A105938.P11109877907166792781

`(A027790(n+2)-A105939(n))²/A027790(n+2)`
-/

namespace A105938.P11109877907166792781
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A027790 (n + 2) - A105939 n) ^ 2 : ℚ) / (A027790 (n + 2) : ℚ)

end

end A105938.P11109877907166792781

namespace A105938

/-- `(A027790(n+2)-A105939(n))²/A027790(n+2)` -/
def P11109877907166792781.Spec : Prop :=
  ∀ n, P11109877907166792781.a n = (A105938 n : ℚ)

end A105938

/-! ## A105938.P15718378531570218323

`∑[A303609(n+1)]/2`
-/

namespace A105938.P15718378531570218323
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303609 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 2

end

end A105938.P15718378531570218323

namespace A105938

/-- `∑[A303609(n+1)]/2` -/
def P15718378531570218323.Spec : Prop :=
  ∀ n, P15718378531570218323.a n = (A105938 n : ℚ)

end A105938

/-! ## A105938.P231883761433797149

`2*A151974(n+1)/(n+3)`
-/

namespace A105938.P231883761433797149
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 * ((A151974 (n + 1) : ℚ) / (n + 3 : ℚ))

end

end A105938.P231883761433797149

namespace A105938

/-- `2*A151974(n+1)/(n+3)` -/
def P231883761433797149.Spec : Prop :=
  ∀ n, P231883761433797149.a n = (A105938 n : ℚ)

theorem P231883761433797149.correct : P231883761433797149.Spec := by
  intro n
  simp only [A105938, Nat.add_sub_cancel, A105938.P231883761433797149.a, A105938.P11666215245170671259.a, A151974, A151974.P10190100127795550298.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A105938

/-!
# A105939: a(n) = binomial(n+3,3)*binomial(n+6,3).

The programs for A105939, the canonical program `A105939.P13479038352763795535` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A105939 has offset 0).

The definition of A105939 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(n+3, 3)*C(n+6, 3)` (program `A105939.P13479038352763795535`, by `A105939.P13479038352763795535.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A105939.P3969816720994180491

`20*C(n+6, 6)`
-/

namespace A105939.P3969816720994180491
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  20 * Nat.choose (n + 6) 6

end

end A105939.P3969816720994180491

namespace A105939

/-- `20*C(n+6, 6)` -/
def P3969816720994180491.Spec : Prop :=
  ∀ n, (P3969816720994180491.a n : ℤ) = A105939 n

theorem P3969816720994180491.correct : P3969816720994180491.Spec := by
  intro n
  simp only [A105939, Nat.add_sub_cancel, A105939.P3969816720994180491.a, A105939.P13479038352763795535.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A105939

/-! ## A105939.P13479038352763795535

`C(n+3, 3)*C(n+6, 3)`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A105939

/-- `C(n+3, 3)*C(n+6, 3)` -/
def P13479038352763795535.Spec : Prop :=
  ∀ n, (P13479038352763795535.a n : ℤ) = A105939 n

theorem P13479038352763795535.correct : P13479038352763795535.Spec := by
  intro n
  simp only [A105939]

end A105939

/-! ## A105939.P16479269089480873441

`ogf(20/(1-7x+21x^2-35x^3+35x^4-21x^5+7x^6-x^7))`
-/

namespace A105939.P16479269089480873441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [20] [1, -7, 21, -35, 35, -21, 7, -1] n

end

end A105939.P16479269089480873441

namespace A105939

/-- `ogf(20/(1-7x+21x^2-35x^3+35x^4-21x^5+7x^6-x^7))` -/
def P16479269089480873441.Spec : Prop :=
  ∀ n, P16479269089480873441.a n = A105939 n

end A105939

/-! ## A105939.P2896659580382746701

`A000292(n+1)*A000292(n+4)`
-/

namespace A105939.P2896659580382746701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 (n + 1) * A000292 (n + 4)

end

end A105939.P2896659580382746701

namespace A105939

/-- `A000292(n+1)*A000292(n+4)` -/
def P2896659580382746701.Spec : Prop :=
  ∀ n, P2896659580382746701.a n = A105939 n

theorem P2896659580382746701.correct : P2896659580382746701.Spec := by
  intro n
  simp only [A105939, Nat.add_sub_cancel, A105939.P2896659580382746701.a, A105939.P13479038352763795535.a, A000292, A000292.P18322089543142633594.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A105939

/-! ## A105939.P2930327803916465936

`20*A000579(n+6)`
-/

namespace A105939.P2930327803916465936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  20 * A000579 (n + 6)

end

end A105939.P2930327803916465936

namespace A105939

/-- `20*A000579(n+6)` -/
def P2930327803916465936.Spec : Prop :=
  ∀ n, P2930327803916465936.a n = A105939 n

theorem P2930327803916465936.correct : P2930327803916465936.Spec := by
  intro n
  simp only [A105939, Nat.add_sub_cancel, A105939.P2930327803916465936.a, A105939.P13479038352763795535.a, A000579, A000579.P13663713855180125612.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A105939

/-! ## A105939.P13875855374194707403

`∑[∑[∑[∑[∑[4*5*(n+1)]]]]]`
-/

namespace A105939.P13875855374194707403
noncomputable section

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * (5 * (n + 1))

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A105939.P13875855374194707403

namespace A105939

/-- `∑[∑[∑[∑[∑[4*5*(n+1)]]]]]` -/
def P13875855374194707403.Spec : Prop :=
  ∀ n, (P13875855374194707403.a n : ℤ) = A105939 n

end A105939

/-! ## A105939.P7768354098635945028

`2*∑[A266732(n+1)]`
-/

namespace A105939.P7768354098635945028
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266732 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A105939.P7768354098635945028

namespace A105939

/-- `2*∑[A266732(n+1)]` -/
def P7768354098635945028.Spec : Prop :=
  ∀ n, P7768354098635945028.a n = A105939 n

end A105939

/-! ## A105939.P18257887591357046549

`4*∑[A174002(n+1)]`
-/

namespace A105939.P18257887591357046549
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174002 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A105939.P18257887591357046549

namespace A105939

/-- `4*∑[A174002(n+1)]` -/
def P18257887591357046549.Spec : Prop :=
  ∀ n, P18257887591357046549.a n = A105939 n

end A105939

/-! ## A105939.P5555346782719364388

`∑[A293615(n+1)]/3`
-/

namespace A105939.P5555346782719364388
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293615 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 3

end

end A105939.P5555346782719364388

namespace A105939

/-- `∑[A293615(n+1)]/3` -/
def P5555346782719364388.Spec : Prop :=
  ∀ n, P5555346782719364388.a n = (A105939 n : ℚ)

end A105939

/-! ## A105939.P1116854453702142481

`5*∑[∑[A033488(n+1)]]`
-/

namespace A105939.P1116854453702142481
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033488 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A105939.P1116854453702142481

namespace A105939

/-- `5*∑[∑[A033488(n+1)]]` -/
def P1116854453702142481.Spec : Prop :=
  ∀ n, P1116854453702142481.a n = A105939 n

end A105939

/-! ## A105939.P4386078992939842121

`A000292(n+2)*A005586(n+1)`
-/

namespace A105939.P4386078992939842121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 (n + 2) * A005586 (n + 1)

end

end A105939.P4386078992939842121

namespace A105939

/-- `A000292(n+2)*A005586(n+1)` -/
def P4386078992939842121.Spec : Prop :=
  ∀ n, P4386078992939842121.a n = A105939 n

end A105939

/-! ## A105939.P2299779068972589022

`A027790(n+3)/A104474(n+1)*A104677(n)`
-/

namespace A105939.P2299779068972589022
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A027790 (n + 3) : ℚ) / (A104474 (n + 1) : ℚ) * (A104677 n : ℚ)

end

end A105939.P2299779068972589022

namespace A105939

/-- `A027790(n+3)/A104474(n+1)*A104677(n)` -/
def P2299779068972589022.Spec : Prop :=
  ∀ n, P2299779068972589022.a n = (A105939 n : ℚ)

end A105939

/-! ## A105939.P5935650514652072722

`(A034856(n+2)+A005581(n+1))*A005586(n+1)`
-/

namespace A105939.P5935650514652072722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A034856 (n + 2) + A005581 (n + 1)) * A005586 (n + 1)

end

end A105939.P5935650514652072722

namespace A105939

/-- `(A034856(n+2)+A005581(n+1))*A005586(n+1)` -/
def P5935650514652072722.Spec : Prop :=
  ∀ n, P5935650514652072722.a n = A105939 n

end A105939

/-! ## A105939.P11678500822431592508

`(A005586(n+1)-A034856(n+1))*A005586(n+1)`
-/

namespace A105939.P11678500822431592508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A005586 (n + 1) - A034856 (n + 1)) * A005586 (n + 1)

end

end A105939.P11678500822431592508

namespace A105939

/-- `(A005586(n+1)-A034856(n+1))*A005586(n+1)` -/
def P11678500822431592508.Spec : Prop :=
  ∀ n, P11678500822431592508.a n = A105939 n

end A105939

/-! ## A105939.P9909392441681298393

`A381862(n+6)+A381862(n+6)-A054559(n+6)`
-/

namespace A105939.P9909392441681298393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381862 (n + 6) + (A381862 (n + 6) - A054559 (n + 6))

end

end A105939.P9909392441681298393

namespace A105939

/-- `A381862(n+6)+A381862(n+6)-A054559(n+6)` -/
def P9909392441681298393.Spec : Prop :=
  ∀ n, P9909392441681298393.a n = A105939 n

theorem P9909392441681298393.correct : P9909392441681298393.Spec := by
  intro n
  simp only [A105939, Nat.add_sub_cancel, A105939.P9909392441681298393.a, A105939.P13479038352763795535.a, A054559, A054559.P15202165871438408034.a, A381862, A381862.P17529336584558989778.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A105939

/-! ## A105939.P16982512712679912893

`(n+1)/3*A266732(n+2)`
-/

namespace A105939.P16982512712679912893
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / 3 * (A266732 (n + 2) : ℚ)

end

end A105939.P16982512712679912893

namespace A105939

/-- `(n+1)/3*A266732(n+2)` -/
def P16982512712679912893.Spec : Prop :=
  ∀ n, P16982512712679912893.a n = (A105939 n : ℚ)

theorem P16982512712679912893.correct : P16982512712679912893.Spec := by
  intro n
  simp only [A105939, Nat.add_sub_cancel, A105939.P16982512712679912893.a, A105939.P13479038352763795535.a, A266732, A266732.P1525120879752990614.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A105939

/-! ## A105939.P8557185103142786906

`20*∑[A000389(n+5)]`
-/

namespace A105939.P8557185103142786906
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000389 (n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  20 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A105939.P8557185103142786906

namespace A105939

/-- `20*∑[A000389(n+5)]` -/
def P8557185103142786906.Spec : Prop :=
  ∀ n, P8557185103142786906.a n = A105939 n

end A105939

/-! ## A105939.P1037239987644741541

`2*A271040(n+6)`
-/

namespace A105939.P1037239987644741541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A271040 (n + 6)

end

end A105939.P1037239987644741541

namespace A105939

/-- `2*A271040(n+6)` -/
def P1037239987644741541.Spec : Prop :=
  ∀ n, P1037239987644741541.a n = A105939 n

theorem P1037239987644741541.correct : P1037239987644741541.Spec := by
  intro n
  simp only [A105939, Nat.add_sub_cancel, A105939.P1037239987644741541.a, A105939.P13479038352763795535.a, A271040, A271040.P14101773628109120962.a, A000579, A000579.P13663713855180125612.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A105939

/-! ## A105939.P1206303750863983628

`4*A000910(n+6)`
-/

namespace A105939.P1206303750863983628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A000910 (n + 6)

end

end A105939.P1206303750863983628

namespace A105939

/-- `4*A000910(n+6)` -/
def P1206303750863983628.Spec : Prop :=
  ∀ n, P1206303750863983628.a n = A105939 n

theorem P1206303750863983628.correct : P1206303750863983628.Spec := by
  intro n
  simp only [A105939, Nat.add_sub_cancel, A105939.P1206303750863983628.a, A105939.P13479038352763795535.a, A000910, A000910.P14640695646812070873.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A105939

/-! ## A105939.P11597222528467656748

`2*2*A000910(A020715(n))`
-/

namespace A105939.P11597222528467656748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (2 * A000910 (A020715 n).toNat)

end

end A105939.P11597222528467656748

namespace A105939

/-- `2*2*A000910(A020715(n))` -/
def P11597222528467656748.Spec : Prop :=
  ∀ n, P11597222528467656748.a n = A105939 n

end A105939

/-!
# A105940: a(n) = binomial(n+5, 5)*binomial(n+8, 5).

The programs for A105940, the canonical program `A105940.P16826096021146375573` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A105940 has offset 0).

The definition of A105940 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(n+5, 5)*C(n+8, 5)` (program `A105940.P16826096021146375573`, by `A105940.P16826096021146375573.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A105940.P16826096021146375573

`C(n+5, 5)*C(n+8, 5)`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A105940

/-- `C(n+5, 5)*C(n+8, 5)` -/
def P16826096021146375573.Spec : Prop :=
  ∀ n, (P16826096021146375573.a n : ℤ) = A105940 n

theorem P16826096021146375573.correct : P16826096021146375573.Spec := by
  intro n
  simp only [A105940]

end A105940

/-! ## A105940.P939618144586281253

`A027814(n+4)-A027804(n+4)`
-/

namespace A105940.P939618144586281253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027814 (n + 4) - A027804 (n + 4)

end

end A105940.P939618144586281253

namespace A105940

/-- `A027814(n+4)-A027804(n+4)` -/
def P939618144586281253.Spec : Prop :=
  ∀ n, P939618144586281253.a n = A105940 n

theorem P939618144586281253.correct : P939618144586281253.Spec := by
  intro n
  simp only [A105940, Nat.add_sub_cancel, A105940.P939618144586281253.a, A105940.P16826096021146375573.a, A027804, A027804.P723827974120069819.a, A027814, A027814.P6850746754417898866.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A105940

/-! ## A105940.P11951732838338557345

`A000389(n+5)*A000389(n+8)`
-/

namespace A105940.P11951732838338557345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000389 (n + 5) * A000389 (n + 8)

end

end A105940.P11951732838338557345

namespace A105940

/-- `A000389(n+5)*A000389(n+8)` -/
def P11951732838338557345.Spec : Prop :=
  ∀ n, P11951732838338557345.a n = A105940 n

theorem P11951732838338557345.correct : P11951732838338557345.Spec := by
  intro n
  simp only [A105940, Nat.add_sub_cancel, A105940.P11951732838338557345.a, A105940.P16826096021146375573.a, A000389, A000389.P15450220129395289428.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A105940

/-! ## A105940.P17492366374181212906

`Δ[A000579(n+5)]*Δ[A000579(n+8)]`
-/

namespace A105940.P17492366374181212906
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000579 (n + 5)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000579 (n + 8)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * (f2 (n + 1) - f2 n)

end

end A105940.P17492366374181212906

namespace A105940

/-- `Δ[A000579(n+5)]*Δ[A000579(n+8)]` -/
def P17492366374181212906.Spec : Prop :=
  ∀ n, P17492366374181212906.a n = A105940 n

theorem P17492366374181212906.correct : P17492366374181212906.Spec := by
  intro n
  simp only [A105940, Nat.add_sub_cancel, A105940.P17492366374181212906.f1, A105940.P17492366374181212906.f2, A105940.P17492366374181212906.a, A105940.P16826096021146375573.a, A000579, A000579.P13663713855180125612.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A105940

/-! ## A105940.P1964094252906713798

`A074909(A167499(n+3))*A074909(A167499(n+6))`
-/

namespace A105940.P1964094252906713798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074909 (A167499 (n + 3)).toNat * A074909 (A167499 (n + 6)).toNat

end

end A105940.P1964094252906713798

namespace A105940

/-- `A074909(A167499(n+3))*A074909(A167499(n+6))` -/
def P1964094252906713798.Spec : Prop :=
  ∀ n, P1964094252906713798.a n = A105940 n

end A105940

/-! ## A105940.P9926996970360142182

`A213551(A000124(n+3))*A213551(A000124(n))`
-/

namespace A105940.P9926996970360142182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213551 (A000124 (n + 3)).toNat * A213551 (A000124 n).toNat

end

end A105940.P9926996970360142182

namespace A105940

/-- `A213551(A000124(n+3))*A213551(A000124(n))` -/
def P9926996970360142182.Spec : Prop :=
  ∀ n, P9926996970360142182.a n = A105940 n

end A105940

/-! ## A105940.P14324947867540636512

`A007318(A055999(n+3))*A007318(A055999(n+6))`
-/

namespace A105940.P14324947867540636512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A055999 (n + 3)).toNat * A007318 (A055999 (n + 6)).toNat

end

end A105940.P14324947867540636512

namespace A105940

/-- `A007318(A055999(n+3))*A007318(A055999(n+6))` -/
def P14324947867540636512.Spec : Prop :=
  ∀ n, P14324947867540636512.a n = A105940 n

end A105940

/-! ## A105940.P12237838114459360891

`A007318(A167499(n+4))*A007318(A167499(n+7))`
-/

namespace A105940.P12237838114459360891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A167499 (n + 4)).toNat * A007318 (A167499 (n + 7)).toNat

end

end A105940.P12237838114459360891

namespace A105940

/-- `A007318(A167499(n+4))*A007318(A167499(n+7))` -/
def P12237838114459360891.Spec : Prop :=
  ∀ n, P12237838114459360891.a n = A105940 n

end A105940

/-! ## A105940.P10133745343094485623

`A007318(A077169(n+6))*A007318(A077169(n+9))`
-/

namespace A105940.P10133745343094485623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A077169 (n + 6)).toNat * A007318 (A077169 (n + 9)).toNat

end

end A105940.P10133745343094485623

namespace A105940

/-- `A007318(A077169(n+6))*A007318(A077169(n+9))` -/
def P10133745343094485623.Spec : Prop :=
  ∀ n, P10133745343094485623.a n = A105940 n

end A105940

/-!
# A105942: a(n) = binomial(n+6,6)*binomial(n+9,6).

The programs for A105942, the canonical program `A105942.P15119643869937749774` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A105942 has offset 0).

The definition of A105942 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(n+6, 6)*C(n+9, 6)` (program `A105942.P15119643869937749774`, by `A105942.P15119643869937749774.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A105942.P15119643869937749774

`C(n+6, 6)*C(n+9, 6)`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A105942

/-- `C(n+6, 6)*C(n+9, 6)` -/
def P15119643869937749774.Spec : Prop :=
  ∀ n, (P15119643869937749774.a n : ℤ) = A105942 n

theorem P15119643869937749774.correct : P15119643869937749774.Spec := by
  intro n
  simp only [A105942]

end A105942

/-! ## A105942.P6803081580382728287

`A027821(n+3)/A027800(n)*A027818(n)`
-/

namespace A105942.P6803081580382728287
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A027821 (n + 3) : ℚ) / (A027800 n : ℚ) * (A027818 n : ℚ)

end

end A105942.P6803081580382728287

namespace A105942

/-- `A027821(n+3)/A027800(n)*A027818(n)` -/
def P6803081580382728287.Spec : Prop :=
  ∀ n, P6803081580382728287.a n = (A105942 n : ℚ)

end A105942

/-! ## A105942.P5112371794572120310

`A000579(n+6)*A000579(n+9)`
-/

namespace A105942.P5112371794572120310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000579 (n + 6) * A000579 (n + 9)

end

end A105942.P5112371794572120310

namespace A105942

/-- `A000579(n+6)*A000579(n+9)` -/
def P5112371794572120310.Spec : Prop :=
  ∀ n, P5112371794572120310.a n = A105942 n

theorem P5112371794572120310.correct : P5112371794572120310.Spec := by
  intro n
  simp only [A105942, Nat.add_sub_cancel, A105942.P5112371794572120310.a, A105942.P15119643869937749774.a, A000579, A000579.P13663713855180125612.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A105942

/-! ## A105942.P18255680894241515876

`Δ[A000580(n+9)]*A299338(2*n)`
-/

namespace A105942.P18255680894241515876
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000580 (n + 9)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A299338 (2 * n)

end

end A105942.P18255680894241515876

namespace A105942

/-- `Δ[A000580(n+9)]*A299338(2*n)` -/
def P18255680894241515876.Spec : Prop :=
  ∀ n, P18255680894241515876.a n = A105942 n

end A105942

/-! ## A105942.P5759018190384991248

`A299338(2*n)*A299338(A020742(n))`
-/

namespace A105942.P5759018190384991248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299338 (2 * n) * A299338 (A020742 n).toNat

end

end A105942.P5759018190384991248

namespace A105942

/-- `A299338(2*n)*A299338(A020742(n))` -/
def P5759018190384991248.Spec : Prop :=
  ∀ n, P5759018190384991248.a n = A105942 n

end A105942

/-!
# A105943: a(n) = binomial(n+7,7) * binomial(n+10,7).

The programs for A105943, the canonical program `A105943.P11360441474270401301` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A105943 has offset 0).

The definition of A105943 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(n+7, 7)*C(n+10, 7)` (program `A105943.P11360441474270401301`, by `A105943.P11360441474270401301.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A105943.P11360441474270401301

`C(n+7, 7)*C(n+10, 7)`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A105943

/-- `C(n+7, 7)*C(n+10, 7)` -/
def P11360441474270401301.Spec : Prop :=
  ∀ n, (P11360441474270401301.a n : ℤ) = A105943 n

theorem P11360441474270401301.correct : P11360441474270401301.Spec := by
  intro n
  simp only [A105943]

end A105943

/-! ## A105943.P4605511956362378577

`A000580(n+7)*A000580(n+10)`
-/

namespace A105943.P4605511956362378577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000580 (n + 7) * A000580 (n + 10)

end

end A105943.P4605511956362378577

namespace A105943

/-- `A000580(n+7)*A000580(n+10)` -/
def P4605511956362378577.Spec : Prop :=
  ∀ n, P4605511956362378577.a n = A105943 n

theorem P4605511956362378577.correct : P4605511956362378577.Spec := by
  intro n
  simp only [A105943, Nat.add_sub_cancel, A105943.P4605511956362378577.a, A105943.P11360441474270401301.a, A000580, A000580.P16667415707980948191.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A105943

/-! ## A105943.P7824585982704509510

`A062145(eq[7, A002262(n)])`
-/

namespace A105943.P7824585982704509510
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062145 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A105943.P7824585982704509510

namespace A105943

/-- `A062145(eq[7, A002262(n)])` -/
def P7824585982704509510.Spec : Prop :=
  ∀ n, P7824585982704509510.a n = A105943 n

end A105943

/-! ## A105943.P14798393255454669382

`A007318(A155212(n+4))*A007318(A155212(n+7))`
-/

namespace A105943.P14798393255454669382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A155212 (n + 4)).toNat * A007318 (A155212 (n + 7)).toNat

end

end A105943.P14798393255454669382

namespace A105943

/-- `A007318(A155212(n+4))*A007318(A155212(n+7))` -/
def P14798393255454669382.Spec : Prop :=
  ∀ n, P14798393255454669382.a n = A105943 n

end A105943

/-!
# A105944: a(n) = binomial(n+8,n)*binomial(n+11,8).

The programs for A105944, the canonical program `A105944.P14385738167752518419` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A105944 has offset 0).

The definition of A105944 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(n+8, n)*C(n+11, 8)` (program `A105944.P14385738167752518419`, by `A105944.P14385738167752518419.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A105944.P3558280274116731722

`C(n+8, 8)*C(n+11, 8)`
-/

namespace A105944.P3558280274116731722
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 8) 8 * Nat.choose (n + 11) 8

end

end A105944.P3558280274116731722

namespace A105944

/-- `C(n+8, 8)*C(n+11, 8)` -/
def P3558280274116731722.Spec : Prop :=
  ∀ n, (P3558280274116731722.a n : ℤ) = A105944 n

end A105944

/-! ## A105944.P14385738167752518419

`C(n+8, n)*C(n+11, 8)`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A105944

/-- `C(n+8, n)*C(n+11, 8)` -/
def P14385738167752518419.Spec : Prop :=
  ∀ n, (P14385738167752518419.a n : ℤ) = A105944 n

theorem P14385738167752518419.correct : P14385738167752518419.Spec := by
  intro n
  simp only [A105944]

end A105944

/-! ## A105944.P16448099565116522181

`165*A030648(n)`
-/

namespace A105944.P16448099565116522181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  165 * A030648 n

end

end A105944.P16448099565116522181

namespace A105944

/-- `165*A030648(n)` -/
def P16448099565116522181.Spec : Prop :=
  ∀ n, P16448099565116522181.a n = A105944 n

end A105944

/-! ## A105944.P12369317379394485386

`A000581(n+8)*A000581(n+11)`
-/

namespace A105944.P12369317379394485386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000581 (n + 8) * A000581 (n + 11)

end

end A105944.P12369317379394485386

namespace A105944

/-- `A000581(n+8)*A000581(n+11)` -/
def P12369317379394485386.Spec : Prop :=
  ∀ n, P12369317379394485386.a n = A105944 n

end A105944

/-! ## A105944.P332443194835923771

`∑[A000580(n+7)]*Δ[A000582(n+11)]`
-/

namespace A105944.P332443194835923771
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000580 (n + 7)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000582 (n + 11)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * (f2 (n + 1) - f2 n)

end

end A105944.P332443194835923771

namespace A105944

/-- `∑[A000580(n+7)]*Δ[A000582(n+11)]` -/
def P332443194835923771.Spec : Prop :=
  ∀ n, P332443194835923771.a n = A105944 n

end A105944

/-! ## A105944.P3431211828232555405

`A053347(n+4)/4*A053347(n)`
-/

namespace A105944.P3431211828232555405
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053347 (n + 4) : ℚ) / 4 * (A053347 n : ℚ)

end

end A105944.P3431211828232555405

namespace A105944

/-- `A053347(n+4)/4*A053347(n)` -/
def P3431211828232555405.Spec : Prop :=
  ∀ n, P3431211828232555405.a n = (A105944 n : ℚ)

end A105944

/-! ## A105944.P5478789081629566666

`A054142(A052905(n+2))*A054142(A052905(n+5))`
-/

namespace A105944.P5478789081629566666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054142 (A052905 (n + 2)).toNat * A054142 (A052905 (n + 5)).toNat

end

end A105944.P5478789081629566666

namespace A105944

/-- `A054142(A052905(n+2))*A054142(A052905(n+5))` -/
def P5478789081629566666.Spec : Prop :=
  ∀ n, P5478789081629566666.a n = A105944 n

end A105944

/-!
# A105945: Any digit d from any integer i must be interpreted as: "The d-est digit of this integer is a `d'".

The programs for A105945, there is no canonical definition to state claims against.
-/

/-! ## A105945.P239724503852003515

`A240763(n+1)+A188585(A342456(n))`
-/

namespace A105945.P239724503852003515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240763 (n + 1) + A188585 (A342456 n).toNat

end

end A105945.P239724503852003515

/-! ## A105945.P17481038913100203889

`A240763(n+1)+A120325(A000166(n))`
-/

namespace A105945.P17481038913100203889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240763 (n + 1) + A120325 (A000166 n).toNat

end

end A105945.P17481038913100203889

/-! ## A105945.P9011551964797114155

`A361718(A369919(n))+A240763(n+1)`
-/

namespace A105945.P9011551964797114155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361718 (A369919 n).toNat + A240763 (n + 1)

end

end A105945.P9011551964797114155

/-! ## A105945.P13627025340767236685

`A275926(A124348(n+1))+A240763(n+1)`
-/

namespace A105945.P13627025340767236685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275926 (A124348 (n + 1)).toNat + A240763 (n + 1)

end

end A105945.P13627025340767236685

/-! ## A105945.P18041278055844240263

`A335460(A096503(2*n+5))+A240763(n+1)`
-/

namespace A105945.P18041278055844240263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335460 (A096503 (2 * n + 5)).toNat + A240763 (n + 1)

end

end A105945.P18041278055844240263

/-!
# A105946: a(n) = C(n+3,3) * C(n+5,5).

The programs for A105946, the canonical program `A105946.P5656565158310904957` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A105946 has offset 0).

The definition of A105946 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(n+3, 3)*C(n+5, 5)` (program `A105946.P5656565158310904957`, by `A105946.P5656565158310904957.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A105946.P5656565158310904957

`C(n+3, 3)*C(n+5, 5)`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A105946

/-- `C(n+3, 3)*C(n+5, 5)` -/
def P5656565158310904957.Spec : Prop :=
  ∀ n, (P5656565158310904957.a n : ℤ) = A105946 n

theorem P5656565158310904957.correct : P5656565158310904957.Spec := by
  intro n
  simp only [A105946]

end A105946

/-! ## A105946.P12758788635232729570

`∑[∑[∑[∑[(n+1)²]]]]*∑[n+1]`
-/

namespace A105946.P12758788635232729570
noncomputable section

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * (∑ j ∈ Finset.range (n + 1), f5 j)

end

end A105946.P12758788635232729570

namespace A105946

/-- `∑[∑[∑[∑[(n+1)²]]]]*∑[n+1]` -/
def P12758788635232729570.Spec : Prop :=
  ∀ n, (P12758788635232729570.a n : ℤ) = A105946 n

end A105946

/-! ## A105946.P7431472154622391069

`A040977(n)+A000096(n)*A040977(n)`
-/

namespace A105946.P7431472154622391069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040977 n + A000096 n * A040977 n

end

end A105946.P7431472154622391069

namespace A105946

/-- `A040977(n)+A000096(n)*A040977(n)` -/
def P7431472154622391069.Spec : Prop :=
  ∀ n, P7431472154622391069.a n = A105946 n

theorem P7431472154622391069.correct : P7431472154622391069.Spec := by
  intro n
  simp only [A105946, Nat.add_sub_cancel, A105946.P7431472154622391069.a, A105946.P5656565158310904957.a, A000096, A000096.P6925830517264718723.a, A040977, A040977.P17094286001024075111.a, A000579, A000579.P13663713855180125612.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A105946

/-! ## A105946.P13603156097905520823

`A006857(n)+A107891(n)-A006542(n+4)`
-/

namespace A105946.P13603156097905520823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006857 n + (A107891 n - A006542 (n + 4))

end

end A105946.P13603156097905520823

namespace A105946

/-- `A006857(n)+A107891(n)-A006542(n+4)` -/
def P13603156097905520823.Spec : Prop :=
  ∀ n, P13603156097905520823.a n = A105946 n

end A105946

/-! ## A105946.P15572090172095283406

`A000292(n+1)*A323228(n+1)-A000292(n+1)`
-/

namespace A105946.P15572090172095283406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 (n + 1) * A323228 (n + 1) - A000292 (n + 1)

end

end A105946.P15572090172095283406

namespace A105946

/-- `A000292(n+1)*A323228(n+1)-A000292(n+1)` -/
def P15572090172095283406.Spec : Prop :=
  ∀ n, P15572090172095283406.a n = A105946 n

theorem P15572090172095283406.correct : P15572090172095283406.Spec := by
  intro n
  simp only [A105946, Nat.add_sub_cancel, A105946.P15572090172095283406.a, A105946.P5656565158310904957.a, A000292, A000292.P18322089543142633594.a, A323228, A323228.P5825280664412522790.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A105946

/-! ## A105946.P8805122575023852879

`A056136(2*(n+1))*A299337(2*n)/2`
-/

namespace A105946.P8805122575023852879
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A056136 (2 * (n + 1)) * A299337 (2 * n) : ℚ) / 2

end

end A105946.P8805122575023852879

namespace A105946

/-- `A056136(2*(n+1))*A299337(2*n)/2` -/
def P8805122575023852879.Spec : Prop :=
  ∀ n, P8805122575023852879.a n = (A105946 n : ℚ)

end A105946

/-! ## A105946.P17191691551674165131

`A005232(2*n+1)*A177747(2*n+1)/2`
-/

namespace A105946.P17191691551674165131
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005232 (2 * n + 1) * A177747 (2 * n + 1) : ℚ) / 2

end

end A105946.P17191691551674165131

namespace A105946

/-- `A005232(2*n+1)*A177747(2*n+1)/2` -/
def P17191691551674165131.Spec : Prop :=
  ∀ n, P17191691551674165131.a n = (A105946 n : ℚ)

end A105946

/-! ## A105946.P3425263257706633199

`record[A213500(n+1)*A213551(n+1)]`
-/

namespace A105946.P3425263257706633199
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213500 (n + 1) * A213551 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A105946.P3425263257706633199

namespace A105946

/-- `record[A213500(n+1)*A213551(n+1)]` -/
def P3425263257706633199.Spec : Prop :=
  ∀ n, P3425263257706633199.a n = A105946 n

end A105946

/-! ## A105946.P8366117040306155745

`A062196(∑[n+3]+n+3)`
-/

namespace A105946.P8366117040306155745
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062196 (∑ j ∈ Finset.range (n + 1), f1 j + (n + 3))

end

end A105946.P8366117040306155745

namespace A105946

/-- `A062196(∑[n+3]+n+3)` -/
def P8366117040306155745.Spec : Prop :=
  ∀ n, P8366117040306155745.a n = A105946 n

end A105946

/-! ## A105946.P16574992275670336487

`A124848(A055999(n+3))`
-/

namespace A105946.P16574992275670336487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124848 (A055999 (n + 3)).toNat

end

end A105946.P16574992275670336487

namespace A105946

/-- `A124848(A055999(n+3))` -/
def P16574992275670336487.Spec : Prop :=
  ∀ n, P16574992275670336487.a n = A105946 n

end A105946

/-!
# A105947: a(n) = C(n+4,4) * C(n+6,6).

The programs for A105947, the canonical program `A105947.P2423878120395670801` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A105947 has offset 0).

The definition of A105947 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(n+4, 4)*C(n+6, 6)` (program `A105947.P2423878120395670801`, by `A105947.P2423878120395670801.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A105947.P2423878120395670801

`C(n+4, 4)*C(n+6, 6)`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A105947

/-- `C(n+4, 4)*C(n+6, 6)` -/
def P2423878120395670801.Spec : Prop :=
  ∀ n, (P2423878120395670801.a n : ℤ) = A105947 n

theorem P2423878120395670801.correct : P2423878120395670801.Spec := by
  intro n
  simp only [A105947]

end A105947

/-! ## A105947.P4003674778657650381

`∑[∑[∑[n+1]]]*∑[∑[∑[∑[∑[n+1]]]]]`
-/

namespace A105947.P4003674778657650381
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f8 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f7 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f8 j

def f6 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f7 j

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f6 j

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * (∑ j ∈ Finset.range (n + 1), f4 j)

end

end A105947.P4003674778657650381

namespace A105947

/-- `∑[∑[∑[n+1]]]*∑[∑[∑[∑[∑[n+1]]]]]` -/
def P4003674778657650381.Spec : Prop :=
  ∀ n, (P4003674778657650381.a n : ℤ) = A105947 n

end A105947

/-! ## A105947.P734613185702297196

`A108679(n)*A288876(n)/A006857(n)`
-/

namespace A105947.P734613185702297196
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A108679 n * A288876 n : ℚ) / (A006857 n : ℚ)

end

end A105947.P734613185702297196

namespace A105947

/-- `A108679(n)*A288876(n)/A006857(n)` -/
def P734613185702297196.Spec : Prop :=
  ∀ n, P734613185702297196.a n = (A105947 n : ℚ)

end A105947

/-! ## A105947.P12281613421202254813

`ceil(sqrt(A288876(n))*A000579(n+6))`
-/

namespace A105947.P12281613421202254813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A288876 n : ℝ) * (A000579 (n + 6) : ℝ)⌉

end

end A105947.P12281613421202254813

namespace A105947

/-- `ceil(sqrt(A288876(n))*A000579(n+6))` -/
def P12281613421202254813.Spec : Prop :=
  ∀ n, P12281613421202254813.a n = A105947 n

end A105947

/-! ## A105947.P354319423026011903

`A080951(n)*A082140(n)/A011782(n)²`
-/

namespace A105947.P354319423026011903
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A080951 n * A082140 n : ℚ) / (A011782 n ^ 2 : ℚ)

end

end A105947.P354319423026011903

namespace A105947

/-- `A080951(n)*A082140(n)/A011782(n)²` -/
def P354319423026011903.Spec : Prop :=
  ∀ n, P354319423026011903.a n = (A105947 n : ℚ)

end A105947

/-! ## A105947.P6953571207211010786

`A002409(n)*A003472(n+4)/A000079(n)²`
-/

namespace A105947.P6953571207211010786
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002409 n * A003472 (n + 4) : ℚ) / (A000079 n ^ 2 : ℚ)

end

end A105947.P6953571207211010786

namespace A105947

/-- `A002409(n)*A003472(n+4)/A000079(n)²` -/
def P6953571207211010786.Spec : Prop :=
  ∀ n, P6953571207211010786.a n = (A105947 n : ℚ)

end A105947

/-! ## A105947.P7346447584810991792

`A062196(A052905(n+2))`
-/

namespace A105947.P7346447584810991792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062196 (A052905 (n + 2)).toNat

end

end A105947.P7346447584810991792

namespace A105947

/-- `A062196(A052905(n+2))` -/
def P7346447584810991792.Spec : Prop :=
  ∀ n, P7346447584810991792.a n = A105947 n

end A105947

/-! ## A105947.P8766832958641558869

`A062196(Δ[A264443(n)]-1)`
-/

namespace A105947.P8766832958641558869
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062196 (f1 (n + 1) - f1 n - 1).toNat

end

end A105947.P8766832958641558869

namespace A105947

/-- `A062196(Δ[A264443(n)]-1)` -/
def P8766832958641558869.Spec : Prop :=
  ∀ n, P8766832958641558869.a n = A105947 n

end A105947

/-! ## A105947.P744878199314519151

`A062196(A000217(n+5)-5)`
-/

namespace A105947.P744878199314519151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062196 (A000217 (n + 5) - 5).toNat

end

end A105947.P744878199314519151

namespace A105947

/-- `A062196(A000217(n+5)-5)` -/
def P744878199314519151.Spec : Prop :=
  ∀ n, P744878199314519151.a n = A105947 n

end A105947

/-! ## A105947.P11425534948229359347

`A062196(eq[5, A004736(n+1)])`
-/

namespace A105947.P11425534948229359347
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062196 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A105947.P11425534948229359347

namespace A105947

/-- `A062196(eq[5, A004736(n+1)])` -/
def P11425534948229359347.Spec : Prop :=
  ∀ n, P11425534948229359347.a n = A105947 n

end A105947

/-!
# A105948: a(n) = C(n+5,5) * C(n+7,7).

The programs for A105948, the canonical program `A105948.P12328574996413902184` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A105948 has offset 0).

The definition of A105948 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(n+5, 5)*C(n+7, 7)` (program `A105948.P12328574996413902184`, by `A105948.P12328574996413902184.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A105948.P12328574996413902184

`C(n+5, 5)*C(n+7, 7)`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A105948

/-- `C(n+5, 5)*C(n+7, 7)` -/
def P12328574996413902184.Spec : Prop :=
  ∀ n, (P12328574996413902184.a n : ℤ) = A105948 n

theorem P12328574996413902184.correct : P12328574996413902184.Spec := by
  intro n
  simp only [A105948]

end A105948

/-! ## A105948.P16007118280732115850

`∑[∑[A000292(n+1)]]*A000580(n+7)`
-/

namespace A105948.P16007118280732115850
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A000580 (n + 7)

end

end A105948.P16007118280732115850

namespace A105948

/-- `∑[∑[A000292(n+1)]]*A000580(n+7)` -/
def P16007118280732115850.Spec : Prop :=
  ∀ n, P16007118280732115850.a n = A105948 n

end A105948

/-! ## A105948.P3887625499428769311

`∑[n+1]*A133111(n+4)`
-/

namespace A105948.P3887625499428769311
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A133111 (n + 4)

end

end A105948.P3887625499428769311

namespace A105948

/-- `∑[n+1]*A133111(n+4)` -/
def P3887625499428769311.Spec : Prop :=
  ∀ n, P3887625499428769311.a n = A105948 n

end A105948

/-! ## A105948.P12683085930157623732

`A000389(n+5)*A000580(n+7)`
-/

namespace A105948.P12683085930157623732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000389 (n + 5) * A000580 (n + 7)

end

end A105948.P12683085930157623732

namespace A105948

/-- `A000389(n+5)*A000580(n+7)` -/
def P12683085930157623732.Spec : Prop :=
  ∀ n, P12683085930157623732.a n = A105948 n

theorem P12683085930157623732.correct : P12683085930157623732.Spec := by
  intro n
  simp only [A105948, Nat.add_sub_cancel, A105948.P12683085930157623732.a, A105948.P12328574996413902184.a, A000389, A000389.P15450220129395289428.a, A000580, A000580.P16667415707980948191.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A105948

/-! ## A105948.P14769796959416883160

`Δ[A000579(n+5)]*A000580(n+7)`
-/

namespace A105948.P14769796959416883160
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000579 (n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A000580 (n + 7)

end

end A105948.P14769796959416883160

namespace A105948

/-- `Δ[A000579(n+5)]*A000580(n+7)` -/
def P14769796959416883160.Spec : Prop :=
  ∀ n, P14769796959416883160.a n = A105948 n

theorem P14769796959416883160.correct : P14769796959416883160.Spec := by
  intro n
  simp only [A105948, Nat.add_sub_cancel, A105948.P14769796959416883160.f1, A105948.P14769796959416883160.a, A105948.P12328574996413902184.a, A000579, A000579.P13663713855180125612.a, A000580, A000580.P16667415707980948191.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A105948

/-! ## A105948.P6560782655933803594

`∑[∑[A189980(2*n)]]*A189980(2*n)`
-/

namespace A105948.P6560782655933803594
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189980 (2 * n + 10)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A189980 (2 * n + 10)

end

end A105948.P6560782655933803594

namespace A105948

/-- `∑[∑[A189980(2*n)]]*A189980(2*n)` -/
def P6560782655933803594.Spec : Prop :=
  ∀ n, P6560782655933803594.a n = A105948 n

end A105948

/-! ## A105948.P15162910233057698950

`A062196(Δ[A264443(n+1)]-2)`
-/

namespace A105948.P15162910233057698950
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062196 (f1 (n + 1) - f1 n - 2).toNat

end

end A105948.P15162910233057698950

namespace A105948

/-- `A062196(Δ[A264443(n+1)]-2)` -/
def P15162910233057698950.Spec : Prop :=
  ∀ n, P15162910233057698950.a n = A105948 n

end A105948

/-! ## A105948.P1675408190379491123

`A062195(n)/n!`
-/

namespace A105948.P1675408190379491123
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A062195 n : ℚ) / (Nat.factorial n : ℚ)

end

end A105948.P1675408190379491123

namespace A105948

/-- `A062195(n)/n!` -/
def P1675408190379491123.Spec : Prop :=
  ∀ n, P1675408190379491123.a n = (A105948 n : ℚ)

end A105948

/-! ## A105948.P15809543239838252199

`A062195(n)/A000142(n)`
-/

namespace A105948.P15809543239838252199
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A062195 n : ℚ) / (A000142 n : ℚ)

end

end A105948.P15809543239838252199

namespace A105948

/-- `A062195(n)/A000142(n)` -/
def P15809543239838252199.Spec : Prop :=
  ∀ n, P15809543239838252199.a n = (A105948 n : ℚ)

end A105948

/-! ## A105948.P2344984074861217042

`A001725(n+5)/A000142(n)*A049388(n)/n!`
-/

namespace A105948.P2344984074861217042
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001725 (n + 5) : ℚ) / (A000142 n : ℚ) * (A049388 n : ℚ) / (Nat.factorial n : ℚ)

end

end A105948.P2344984074861217042

namespace A105948

/-- `A001725(n+5)/A000142(n)*A049388(n)/n!` -/
def P2344984074861217042.Spec : Prop :=
  ∀ n, P2344984074861217042.a n = (A105948 n : ℚ)

end A105948

/-!
# A105951: a(2*n) = -(2^(2*n+1) + 1), a(2*n+1) = (2^(n+1) - (-1)^n)^2.

The programs for A105951, the canonical program `A105951.P3895568230202454181` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A105951 has offset 0).

The definition of A105951 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A105951.P3895568230202454181

`ogf((-3-8x-18x^2-16x^3)/(1+3x+4x^2+6x^3+4x^4))`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A105951

/-- `ogf((-3-8x-18x^2-16x^3)/(1+3x+4x^2+6x^3+4x^4))` -/
def P3895568230202454181.Spec : Prop :=
  ∀ n, P3895568230202454181.a n = A105951 n

theorem P3895568230202454181.correct : P3895568230202454181.Spec := by
  intro n
  simp only [A105951]

end A105951

/-!
# A105952: (2n)-th Legendre polynomial P_{2n}(x), evaluated at x = 2n-1. Here the Legendre polynomials are normalized so that P_{n}(1) = 1.

The programs for A105952, there is no canonical definition to state claims against.
-/

/-! ## A105952.P491951320459559386

`A335333(A022267(n+1))`
-/

namespace A105952.P491951320459559386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335333 (A022267 (n + 1)).toNat

end

end A105952.P491951320459559386

/-!
# A105953: Numbers k such that the period length P(k) of the Fibonacci sequence mod k is a multiple of k.

The programs for A105953, the canonical program `A105953.P17143844621823135066` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A105953 has offset 1).

The definition of A105953 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A105953.P17143844621823135066

`5*a(n-6)` with `a(0)=1, a(1)=5, a(2)=6, a(3)=10, a(4)=12, a(5)=20, a(6)=24`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A105953

/-- `5*a(n-6)` -/
def P17143844621823135066.Spec : Prop :=
  ∀ n, (P17143844621823135066.a n : ℤ) = A105953 (n + 1)

theorem P17143844621823135066.correct : P17143844621823135066.Spec := by
  intro n
  simp only [A105953, Nat.add_sub_cancel]

end A105953

/-! ## A105953.P9930155431602610079

`ogf((1+5x+6x^2+10x^3+12x^4+20x^5+19x^6)/(1-5x^6))`
-/

namespace A105953.P9930155431602610079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 5, 6, 10, 12, 20, 19] [1, 0, 0, 0, 0, 0, -5] n

end

end A105953.P9930155431602610079

namespace A105953

/-- `ogf((1+5x+6x^2+10x^3+12x^4+20x^5+19x^6)/(1-5x^6))` -/
def P9930155431602610079.Spec : Prop :=
  ∀ n, P9930155431602610079.a n = A105953 (n + 1)

end A105953

/-! ## A105953.P10553550035839312684

`record[gcd(A001175(n+1), A178915(n+1))]`
-/

namespace A105953.P10553550035839312684
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A001175 (n + 1)) (A178915 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A105953.P10553550035839312684

namespace A105953

/-- `record[gcd(A001175(n+1), A178915(n+1))]` -/
def P10553550035839312684.Spec : Prop :=
  ∀ n, (P10553550035839312684.a n : ℤ) = A105953 (n + 1)

end A105953

/-! ## A105953.P10125319150208454289

`eq[A001175(n+1), A213278(n+1)]+1`
-/

namespace A105953.P10125319150208454289
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001175 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213278 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A105953.P10125319150208454289

namespace A105953

/-- `eq[A001175(n+1), A213278(n+1)]+1` -/
def P10125319150208454289.Spec : Prop :=
  ∀ n, (P10125319150208454289.a n : ℤ) = A105953 (n + 1)

end A105953

/-! ## A105953.P17321494994995837673

`lt[A002378(A001175(n+1)%(n+1)), 2]+1`
-/

namespace A105953.P17321494994995837673
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002378 (Int.tmod (A001175 (n + 1)) (n + 1 : ℤ)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A105953.P17321494994995837673

namespace A105953

/-- `lt[A002378(A001175(n+1)%(n+1)), 2]+1` -/
def P17321494994995837673.Spec : Prop :=
  ∀ n, (P17321494994995837673.a n : ℤ) = A105953 (n + 1)

end A105953

/-!
# A105954: Array read by descending antidiagonals: A(n, k) = (n + 1)! * H(k, n + 1), where H(n, k) is a higher-order harmonic number, H(0, k) = 1/k and H(n, k) = Sum_{j=1..k} H(n-1, j), for 0 <= k <= n.

The programs for A105954, there is no canonical definition to state claims against.
-/

/-! ## A105954.P1096265545593609649

`A166350(n+1)*A213998(n)/A213999(n)`
-/

namespace A105954.P1096265545593609649
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A166350 (n + 1) * A213998 n : ℚ) / (A213999 n : ℚ)

end

end A105954.P1096265545593609649

/-! ## A105954.P9026383247908437922

`A213998(n)/A213999(n)*A002260(n+1)!`
-/

namespace A105954.P9026383247908437922
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A213998 n : ℚ) / (A213999 n : ℚ) * (Nat.factorial (A002260 (n + 1)).toNat : ℚ)

end

end A105954.P9026383247908437922

/-! ## A105954.P14598088014262337020

`A213998(n)/A213999(n)*(A002262(n)+1)!`
-/

namespace A105954.P14598088014262337020
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A213998 n : ℚ) / (A213999 n : ℚ) * (Nat.factorial (A002262 n + 1).toNat : ℚ)

end

end A105954.P14598088014262337020

/-! ## A105954.P11794925705063439703

`A213998(n)/A213999(n)*A194859(A194860(n+1))!`
-/

namespace A105954.P11794925705063439703
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A213998 n : ℚ) / (A213999 n : ℚ) * (Nat.factorial (A194859 (A194860 (n + 1)).toNat).toNat : ℚ)

end

end A105954.P11794925705063439703

/-! ## A105954.P3380349630268629154

`A292717(comp[∑[n]])`
-/

namespace A105954.P3380349630268629154
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292717 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A105954.P3380349630268629154

/-! ## A105954.P3131584949253173883

`A165675(A061579(n))`
-/

namespace A105954.P3131584949253173883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165675 (A061579 n).toNat

end

end A105954.P3131584949253173883

/-! ## A105954.P14186572033137356464

`or(char[1], A292717(A014132(n+1)))`
-/

namespace A105954.P14186572033137356464
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A292717 (A014132 (n + 1)).toNat)

end

end A105954.P14186572033137356464

/-! ## A105954.P11439014702105360954

`A292717(∑[A035214(n)])%A017355(n)`
-/

namespace A105954.P11439014702105360954
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035214 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A292717 (∑ j ∈ Finset.range (n + 1), f1 j).toNat) (A017355 n)

end

end A105954.P11439014702105360954

/-! ## A105954.P17823675618361237805

`A292717(A014132(n+1))%A000045(n+3)`
-/

namespace A105954.P17823675618361237805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A292717 (A014132 (n + 1)).toNat) (A000045 (n + 3))

end

end A105954.P17823675618361237805

/-!
# A105955: a(n) = Fibonacci(n) mod 11.

The programs for A105955, the canonical program `A105955.P4781516105658201707` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A105955 has offset 0).

The definition of A105955 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000045(n)%11` (program `A105955.P4781516105658201707`, by `A105955.P4781516105658201707.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A105955.P6576198213114076079

`ogf((x+x^2+2x^3+3x^4+5x^5+8x^6+2x^7+10x^8+x^9)/(1-x^10))`
-/

namespace A105955.P6576198213114076079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, 1, 2, 3, 5, 8, 2, 10, 1] [1, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1] n

end

end A105955.P6576198213114076079

namespace A105955

/-- `ogf((x+x^2+2x^3+3x^4+5x^5+8x^6+2x^7+10x^8+x^9)/(1-x^10))` -/
def P6576198213114076079.Spec : Prop :=
  ∀ n, P6576198213114076079.a n = A105955 n

end A105955

/-! ## A105955.P4781516105658201707

`A000045(n)%11`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A105955

/-- `A000045(n)%11` -/
def P4781516105658201707.Spec : Prop :=
  ∀ n, P4781516105658201707.a n = A105955 n

theorem P4781516105658201707.correct : P4781516105658201707.Spec := by
  intro n
  simp only [A105955]

end A105955

/-!
# A105956: Integers are written in the form abcd...n where "a" means "At position a in this integer there is a digit b"; "b" means: "at position b there is a digit c"; "c" means: "at position c there is a digit d"; ... and "n" means: "at position n there is a digit a".

The programs for A105956, there is no canonical definition to state claims against.
-/

/-! ## A105956.P9260011170735284499

`A360450(A029544(n+2))`
-/

namespace A105956.P9260011170735284499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360450 (A029544 (n + 2)).toNat

end

end A105956.P9260011170735284499

/-! ## A105956.P4330624086534310090

`record[A025435(n+1)*A320390(n+2)]`
-/

namespace A105956.P4330624086534310090
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025435 (n + 1) * A320390 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A105956.P4330624086534310090

/-!
# A105957: Integers are written in the form abcd...n where "a" means "At position a in this integer there is a digit b"; "b" means: "at position b there is a digit c"; "c" means: "at position c there is a digit d"; ... and "n" means nothing.

The programs for A105957, there is no canonical definition to state claims against.
-/

/-! ## A105957.P4461561959564959080

`A250040(n+1)+A072198(A061906(n))`
-/

namespace A105957.P4461561959564959080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250040 (n + 1) + A072198 (A061906 n).toNat

end

end A105957.P4461561959564959080

/-! ## A105957.P17588545228813347292

`A326734(n+1)+A326687(A245667(n))+10`
-/

namespace A105957.P17588545228813347292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326734 (n + 1) + A326687 (A245667 n).toNat + 10

end

end A105957.P17588545228813347292

/-!
# A105958: Integers are written in the form abcd...n where "a" means "At position a in this integer there is a digit b"; "b" means: "at position b there is a digit c"; "c" means: "at position c there is a digit d"; ... and "n" means nothing. No repetitions are allowed (like in the integer 111).

The programs for A105958, there is no canonical definition to state claims against.
-/

/-! ## A105958.P8760287336113187009

`A105957(∑[A056832(A166962(n+1))])`
-/

namespace A105958.P8760287336113187009
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056832 (A166962 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105957 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A105958.P8760287336113187009

/-! ## A105958.P301164294293007581

`record[gcd(A051767(n+1), A105957(n+1))]`
-/

namespace A105958.P301164294293007581
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A051767 (n + 1)) (A105957 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A105958.P301164294293007581

/-! ## A105958.P14097813279952834609

`A105957(A249157(n+1)+1)`
-/

namespace A105958.P14097813279952834609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105957 (A249157 (n + 1) + 1).toNat

end

end A105958.P14097813279952834609

/-!
# A105959: Integers are written in the form abcd...n where "a" means: This integer contains "a" times the digit b; "b" means: This integer contains "b" times the digit c; "c" means: This integer contains "c" times the digit d; ... and "n" means nothing.

The programs for A105959, there is no canonical definition to state claims against.
-/

/-! ## A105959.P14963395737622281261

`eq[A139337(n), A178358(A059995(n))]`
-/

namespace A105959.P14963395737622281261
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139337 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178358 (A059995 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A105959.P14963395737622281261

/-!
# A105960: Smallest integer q >= 1 such that difference between q*sqrt(2) and the nearest integer is <= 1/n.

The programs for A105960, there is no canonical definition to state claims against.
-/

/-! ## A105960.P13750551061463677650

`A000129(floor(log(A037198(n+1))))`
-/

namespace A105960.P13750551061463677650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000129 ⌊Real.log (A037198 (n + 1) : ℝ)⌋.toNat

end

end A105960.P13750551061463677650

/-! ## A105960.P9753633103563172124

`A000129(ceil(log(A063656(n+2))))`
-/

namespace A105960.P9753633103563172124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000129 ⌈Real.log (A063656 (n + 2) : ℝ)⌉.toNat

end

end A105960.P9753633103563172124

/-! ## A105960.P14678335762562716192

`A000129(round(log(A285135(n+1))))`
-/

namespace A105960.P14678335762562716192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000129 (SequenceMachineLib.roundAway (Real.log (A285135 (n + 1) : ℝ))).toNat

end

end A105960.P14678335762562716192

/-! ## A105960.P12773630176038025694

`A000129(ceil(log(A230044(n+3))))`
-/

namespace A105960.P12773630176038025694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000129 ⌈Real.log (A230044 (n + 3) : ℝ)⌉.toNat

end

end A105960.P12773630176038025694

/-! ## A105960.P15918715158122926758

`A000129(floor(log2(A099802(2*(n+1)))))`
-/

namespace A105960.P15918715158122926758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000129 (Nat.log 2 (A099802 (2 * (n + 1))).toNat)

end

end A105960.P15918715158122926758

/-! ## A105960.P13113284161735133785

`A000129(floor(log2(A000720(4*(n+1)))))`
-/

namespace A105960.P13113284161735133785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000129 (Nat.log 2 (A000720 (4 * (n + 1))).toNat)

end

end A105960.P13113284161735133785

/-! ## A105960.P13616692918704498671

`A000129(ceil(log(A106577(n+1))))`
-/

namespace A105960.P13616692918704498671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000129 ⌈Real.log (A106577 (n + 1) : ℝ)⌉.toNat

end

end A105960.P13616692918704498671

/-!
# A105961: Primes p such that 20*p + 3 is prime.

The programs for A105961, the canonical program `A105961.P2774094207711005184` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A105961 has offset 1).

The definition of A105961 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1454 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A105961.P2774094207711005184

`p?[floor(A139830(n+1)/20)]`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A105961

/-- `p?[floor(A139830(n+1)/20)]` -/
def P2774094207711005184.Spec : Prop :=
  ∀ n, P2774094207711005184.a n = A105961 (n + 1)

theorem P2774094207711005184.correct : P2774094207711005184.Spec := by
  intro n
  simp only [A105961, Nat.add_sub_cancel]

end A105961

/-! ## A105961.P14536385593271138080

`p?[round(A105854(n+1)/20)]`
-/

namespace A105961.P14536385593271138080
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A105854 (n + 1) : ℚ) / 20)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A105961.P14536385593271138080

namespace A105961

/-- `p?[round(A105854(n+1)/20)]` -/
def P14536385593271138080.Spec : Prop :=
  ∀ n, P14536385593271138080.a n = A105961 (n + 1)

end A105961

/-! ## A105961.P6306007465432976858

`∩[A000040(n+1), round(A105854(n+1)/20)]`
-/

namespace A105961.P6306007465432976858
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A105854 (n + 1) : ℚ) / 20)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105961.P6306007465432976858

namespace A105961

/-- `∩[A000040(n+1), round(A105854(n+1)/20)]` -/
def P6306007465432976858.Spec : Prop :=
  ∀ n, (P6306007465432976858.a n : ℤ) = A105961 (n + 1)

end A105961

/-! ## A105961.P9106787066062526482

`p?[A117494(A102338(n+2))]`
-/

namespace A105961.P9106787066062526482
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117494 (A102338 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A105961.P9106787066062526482

namespace A105961

/-- `p?[A117494(A102338(n+2))]` -/
def P9106787066062526482.Spec : Prop :=
  ∀ n, P9106787066062526482.a n = A105961 (n + 1)

end A105961

/-! ## A105961.P15576315495057196204

`p?[A102338(n+1)-A038572(A102338(n+1))]`
-/

namespace A105961.P15576315495057196204
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102338 (n + 1) - A038572 (A102338 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A105961.P15576315495057196204

namespace A105961

/-- `p?[A102338(n+1)-A038572(A102338(n+1))]` -/
def P15576315495057196204.Spec : Prop :=
  ∀ n, P15576315495057196204.a n = A105961 (n + 1)

end A105961

/-! ## A105961.P16228119183729103343

`p?[n*A001222(20*n+3)]`
-/

namespace A105961.P16228119183729103343
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A001222 (20 * n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A105961.P16228119183729103343

namespace A105961

/-- `p?[n*A001222(20*n+3)]` -/
def P16228119183729103343.Spec : Prop :=
  ∀ n, P16228119183729103343.a n = A105961 (n + 1)

end A105961

/-! ## A105961.P11170223697035714708

`p?[A057979(A024913(n+1))]`
-/

namespace A105961.P11170223697035714708
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 (A024913 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A105961.P11170223697035714708

namespace A105961

/-- `p?[A057979(A024913(n+1))]` -/
def P11170223697035714708.Spec : Prop :=
  ∀ n, P11170223697035714708.a n = A105961 (n + 1)

end A105961

/-! ## A105961.P3817571167904730877

`p?[A029578(A102338(n+1))]`
-/

namespace A105961.P3817571167904730877
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029578 (A102338 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A105961.P3817571167904730877

namespace A105961

/-- `p?[A029578(A102338(n+1))]` -/
def P3817571167904730877.Spec : Prop :=
  ∀ n, P3817571167904730877.a n = A105961 (n + 1)

end A105961

/-! ## A105961.P2280736620403226103

`p?[A004524(A024913(n+5))]`
-/

namespace A105961.P2280736620403226103
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (A024913 (n + 5)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A105961.P2280736620403226103

namespace A105961

/-- `p?[A004524(A024913(n+5))]` -/
def P2280736620403226103.Spec : Prop :=
  ∀ n, P2280736620403226103.a n = A105961 (n + 1)

end A105961

/-! ## A105961.P11571938435842239654

`p?[(n+1)*A004526(A096915(2*(n+1)))]`
-/

namespace A105961.P11571938435842239654
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A004526 (A096915 (2 * (n + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A105961.P11571938435842239654

namespace A105961

/-- `p?[(n+1)*A004526(A096915(2*(n+1)))]` -/
def P11571938435842239654.Spec : Prop :=
  ∀ n, P11571938435842239654.a n = A105961 (n + 1)

end A105961

/-!
# A105963: Expansion of (1+4*x)/(1-x-3*x^2).

The programs for A105963, the canonical program `A105963.P12933615783161336711` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A105963 has offset 0).

The definition of A105963 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+4x)/(1-x-3x^2))` (program `A105963.P12933615783161336711`, by `A105963.P12933615783161336711.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A105963.P12933615783161336711

`ogf((1+4x)/(1-x-3x^2))`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A105963

/-- `ogf((1+4x)/(1-x-3x^2))` -/
def P12933615783161336711.Spec : Prop :=
  ∀ n, P12933615783161336711.a n = A105963 n

theorem P12933615783161336711.correct : P12933615783161336711.Spec := by
  intro n
  simp only [A105963]

end A105963

/-! ## A105963.P10147908143767258642

`a(n-1)+3*a(n-2)` with `a(0)=1, a(1)=5`
-/

namespace A105963.P10147908143767258642
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 5] fun n a =>
  a (n - 1) + 3 * a (n - 2)

end

end A105963.P10147908143767258642

namespace A105963

/-- `a(n-1)+3*a(n-2)` -/
def P10147908143767258642.Spec : Prop :=
  ∀ n, (P10147908143767258642.a n : ℤ) = A105963 n

end A105963

/-! ## A105963.P17697474983624973179

`a(n-1)+lcm(3, a(n-2))` with `a(0)=1, a(1)=5`
-/

namespace A105963.P17697474983624973179
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 5] fun n a =>
  a (n - 1) + Nat.lcm 3 (a (n - 2))

end

end A105963.P17697474983624973179

namespace A105963

/-- `a(n-1)+lcm(3, a(n-2))` -/
def P17697474983624973179.Spec : Prop :=
  ∀ n, (P17697474983624973179.a n : ℤ) = A105963 n

end A105963

/-! ## A105963.P11569940741880862354

`4*a(n-2)-(a(n-2)-a(n-1))` with `a(0)=1, a(1)=5`
-/

namespace A105963.P11569940741880862354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 5] fun n a =>
  4 * a (n - 2) - (a (n - 2) - a (n - 1))

end

end A105963.P11569940741880862354

namespace A105963

/-- `4*a(n-2)-(a(n-2)-a(n-1))` -/
def P11569940741880862354.Spec : Prop :=
  ∀ n, P11569940741880862354.a n = A105963 n

end A105963

/-! ## A105963.P7267028514881311170

`a(n-2)+a(n-2)+a(n-1)+a(n-2)` with `a(0)=1, a(1)=5`
-/

namespace A105963.P7267028514881311170
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 5] fun n a =>
  a (n - 2) + (a (n - 2) + (a (n - 1) + a (n - 2)))

end

end A105963.P7267028514881311170

namespace A105963

/-- `a(n-2)+a(n-2)+a(n-1)+a(n-2)` -/
def P7267028514881311170.Spec : Prop :=
  ∀ n, (P7267028514881311170.a n : ℤ) = A105963 n

end A105963

/-! ## A105963.P822967284557607785

`A006138(n)+Δ[A006130(n)]`
-/

namespace A105963.P822967284557607785
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006130 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006138 n + (f1 (n + 1) - f1 n)

end

end A105963.P822967284557607785

namespace A105963

/-- `A006138(n)+Δ[A006130(n)]` -/
def P822967284557607785.Spec : Prop :=
  ∀ n, P822967284557607785.a n = A105963 n

end A105963

/-! ## A105963.P5175678830143092854

`A052533(n+1)+A006138(n)`
-/

namespace A105963.P5175678830143092854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052533 (n + 1) + A006138 n

end

end A105963.P5175678830143092854

namespace A105963

/-- `A052533(n+1)+A006138(n)` -/
def P5175678830143092854.Spec : Prop :=
  ∀ n, P5175678830143092854.a n = A105963 n

end A105963

/-! ## A105963.P316935100562272768

`A006130(n+1)+abs(A182228(n))`
-/

namespace A105963.P316935100562272768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006130 (n + 1) + |A182228 n|

end

end A105963.P316935100562272768

namespace A105963

/-- `A006130(n+1)+abs(A182228(n))` -/
def P316935100562272768.Spec : Prop :=
  ∀ n, P316935100562272768.a n = A105963 n

end A105963

/-! ## A105963.P2826897396354998408

`Δ[A052533(n)]+2*A006130(n)`
-/

namespace A105963.P2826897396354998408
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052533 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 2 * A006130 n

end

end A105963.P2826897396354998408

namespace A105963

/-- `Δ[A052533(n)]+2*A006130(n)` -/
def P2826897396354998408.Spec : Prop :=
  ∀ n, P2826897396354998408.a n = A105963 n

end A105963

/-! ## A105963.P1331593522268973151

`A006130(n)+A274977(n)-A006138(n)`
-/

namespace A105963.P1331593522268973151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006130 n + (A274977 n - A006138 n)

end

end A105963.P1331593522268973151

namespace A105963

/-- `A006130(n)+A274977(n)-A006138(n)` -/
def P1331593522268973151.Spec : Prop :=
  ∀ n, P1331593522268973151.a n = A105963 n

end A105963

/-! ## A105963.P8466152268286799067

`A052533(n)+A274977(n)-A006130(n)`
-/

namespace A105963.P8466152268286799067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052533 n + (A274977 n - A006130 n)

end

end A105963.P8466152268286799067

namespace A105963

/-- `A052533(n)+A274977(n)-A006130(n)` -/
def P8466152268286799067.Spec : Prop :=
  ∀ n, P8466152268286799067.a n = A105963 n

end A105963

/-! ## A105963.P97166358339539543

`A006130(n+1)+A006138(n)-A006130(n)`
-/

namespace A105963.P97166358339539543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006130 (n + 1) + (A006138 n - A006130 n)

end

end A105963.P97166358339539543

namespace A105963

/-- `A006130(n+1)+A006138(n)-A006130(n)` -/
def P97166358339539543.Spec : Prop :=
  ∀ n, P97166358339539543.a n = A105963 n

end A105963

/-! ## A105963.P9904652428915482814

`A006130(n+1)+A006130(n)-A052533(n)`
-/

namespace A105963.P9904652428915482814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006130 (n + 1) + (A006130 n - A052533 n)

end

end A105963.P9904652428915482814

namespace A105963

/-- `A006130(n+1)+A006130(n)-A052533(n)` -/
def P9904652428915482814.Spec : Prop :=
  ∀ n, P9904652428915482814.a n = A105963 n

end A105963

/-! ## A105963.P6834563843898031606

`A006138(n)+A274977(n)-A105476(n+1)`
-/

namespace A105963.P6834563843898031606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006138 n + (A274977 n - A105476 (n + 1))

end

end A105963.P6834563843898031606

namespace A105963

/-- `A006138(n)+A274977(n)-A105476(n+1)` -/
def P6834563843898031606.Spec : Prop :=
  ∀ n, P6834563843898031606.a n = A105963 n

end A105963

/-! ## A105963.P1825422640938077813

`A075118(n+1)+A175654(n)-A175655(n)`
-/

namespace A105963.P1825422640938077813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075118 (n + 1) + (A175654 n - A175655 n)

end

end A105963.P1825422640938077813

namespace A105963

/-- `A075118(n+1)+A175654(n)-A175655(n)` -/
def P1825422640938077813.Spec : Prop :=
  ∀ n, P1825422640938077813.a n = A105963 n

end A105963

/-! ## A105963.P5901645577411964622

`A274977(n)+A274977(n)-A075118(n+1)`
-/

namespace A105963.P5901645577411964622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274977 n + (A274977 n - A075118 (n + 1))

end

end A105963.P5901645577411964622

namespace A105963

/-- `A274977(n)+A274977(n)-A075118(n+1)` -/
def P5901645577411964622.Spec : Prop :=
  ∀ n, P5901645577411964622.a n = A105963 n

end A105963

/-! ## A105963.P6294331181171940727

`A075118(n+1)+A006130(n)-A105476(n+1)`
-/

namespace A105963.P6294331181171940727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075118 (n + 1) + (A006130 n - A105476 (n + 1))

end

end A105963.P6294331181171940727

namespace A105963

/-- `A075118(n+1)+A006130(n)-A105476(n+1)` -/
def P6294331181171940727.Spec : Prop :=
  ∀ n, P6294331181171940727.a n = A105963 n

end A105963

/-! ## A105963.P14308892903978028504

`A052533(n+1)+A228661(n+1)-A052533(n)`
-/

namespace A105963.P14308892903978028504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052533 (n + 1) + (A228661 (n + 1) - A052533 n)

end

end A105963.P14308892903978028504

namespace A105963

/-- `A052533(n+1)+A228661(n+1)-A052533(n)` -/
def P14308892903978028504.Spec : Prop :=
  ∀ n, P14308892903978028504.a n = A105963 n

end A105963

/-! ## A105963.P9395528072679549797

`A105476(n+1)+A274977(n)-A006130(n+1)`
-/

namespace A105963.P9395528072679549797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105476 (n + 1) + (A274977 n - A006130 (n + 1))

end

end A105963.P9395528072679549797

namespace A105963

/-- `A105476(n+1)+A274977(n)-A006130(n+1)` -/
def P9395528072679549797.Spec : Prop :=
  ∀ n, P9395528072679549797.a n = A105963 n

end A105963

/-! ## A105963.P11224450217947622222

`A105476(n+2)-A075118(n)`
-/

namespace A105963.P11224450217947622222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105476 (n + 2) - A075118 n

end

end A105963.P11224450217947622222

namespace A105963

/-- `A105476(n+2)-A075118(n)` -/
def P11224450217947622222.Spec : Prop :=
  ∀ n, P11224450217947622222.a n = A105963 n

end A105963

/-!
# A105964: Expansion of x*(1+x^3-x^6+x^7)/(1-x^6)^2.

The programs for A105964, the canonical program `A105964.P4285277711960575595` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A105964 has offset 0).

The definition of A105964 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((x+x^4-x^7+x^8)/(1-2x^6+x^12))` (program `A105964.P4285277711960575595`, by `A105964.P4285277711960575595.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A105964.P4285277711960575595

`ogf((x+x^4-x^7+x^8)/(1-2x^6+x^12))`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A105964

/-- `ogf((x+x^4-x^7+x^8)/(1-2x^6+x^12))` -/
def P4285277711960575595.Spec : Prop :=
  ∀ n, P4285277711960575595.a n = A105964 n

theorem P4285277711960575595.correct : P4285277711960575595.Spec := by
  intro n
  simp only [A105964]

end A105964

/-! ## A105964.P12356650590304909845

`A004526(gcd(A007980(n), A051274(n)))`
-/

namespace A105964.P12356650590304909845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (Int.gcd (A007980 n) (A051274 n))

end

end A105964.P12356650590304909845

namespace A105964

/-- `A004526(gcd(A007980(n), A051274(n)))` -/
def P12356650590304909845.Spec : Prop :=
  ∀ n, P12356650590304909845.a n = A105964 n

end A105964

/-! ## A105964.P2108485614740586160

`A004526(gcd(A099254(n), A285870(n)))`
-/

namespace A105964.P2108485614740586160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (Int.gcd (A099254 n) (A285870 n))

end

end A105964.P2108485614740586160

namespace A105964

/-- `A004526(gcd(A099254(n), A285870(n)))` -/
def P2108485614740586160.Spec : Prop :=
  ∀ n, P2108485614740586160.a n = A105964 n

end A105964

/-! ## A105964.P4674495021628442148

`A110657(and(A133513(n), A285872(n)))`
-/

namespace A105964.P4674495021628442148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110657 (Int.land (A133513 n) (A285872 n)).toNat

end

end A105964.P4674495021628442148

namespace A105964

/-- `A110657(and(A133513(n), A285872(n)))` -/
def P4674495021628442148.Spec : Prop :=
  ∀ n, P4674495021628442148.a n = A105964 n

end A105964

/-! ## A105964.P13231382625551029152

`A152271(A087509(n))-Δ[A004396(n)]`
-/

namespace A105964.P13231382625551029152
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152271 (A087509 n).toNat - (f1 (n + 1) - f1 n)

end

end A105964.P13231382625551029152

namespace A105964

/-- `A152271(A087509(n))-Δ[A004396(n)]` -/
def P13231382625551029152.Spec : Prop :=
  ∀ n, P13231382625551029152.a n = A105964 n

end A105964

/-! ## A105964.P6849768115789672300

`A002264(gcd(A028242(n), A321773(n+3)))`
-/

namespace A105964.P6849768115789672300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (Int.gcd (A028242 n) (A321773 (n + 3)))

end

end A105964.P6849768115789672300

namespace A105964

/-- `A002264(gcd(A028242(n), A321773(n+3)))` -/
def P6849768115789672300.Spec : Prop :=
  ∀ n, P6849768115789672300.a n = A105964 n

end A105964

/-! ## A105964.P17476147743598622887

`A152271(A186731(n))-A000035(A042968(n+1))`
-/

namespace A105964.P17476147743598622887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152271 (A186731 n).toNat - A000035 (A042968 (n + 1)).toNat

end

end A105964.P17476147743598622887

namespace A105964

/-- `A152271(A186731(n))-A000035(A042968(n+1))` -/
def P17476147743598622887.Spec : Prop :=
  ∀ n, P17476147743598622887.a n = A105964 n

end A105964

/-! ## A105964.P4152453461400550834

`A002264(gcd(n+2, A289143(2*n+1)))`
-/

namespace A105964.P4152453461400550834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (Int.gcd (n + 2 : ℤ) (A289143 (2 * n + 1)))

end

end A105964.P4152453461400550834

namespace A105964

/-- `A002264(gcd(n+2, A289143(2*n+1)))` -/
def P4152453461400550834.Spec : Prop :=
  ∀ n, P4152453461400550834.a n = A105964 n

end A105964

/-! ## A105964.P17990463814496044186

`abs(Δ[A029579(A117910(2*n))])`
-/

namespace A105964.P17990463814496044186
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029579 (A117910 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A105964.P17990463814496044186

namespace A105964

/-- `abs(Δ[A029579(A117910(2*n))])` -/
def P17990463814496044186.Spec : Prop :=
  ∀ n, P17990463814496044186.a n = A105964 n

end A105964

/-!
# A105965: Numbers n such that n = 2^i_1+2^i_2+...2^i_k = b(j_1)*b(j_2)*...b(j_k) for distinct i's and distinct j's, where b is A050376.

The programs for A105965, there is no canonical definition to state claims against.
-/

/-! ## A105965.P16399574426420706928

`eq[A001316(n+1), A037445(n+1)]+1`
-/

namespace A105965.P16399574426420706928
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037445 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A105965.P16399574426420706928

/-! ## A105965.P9035642125975738777

`eq[A000120(n+1), A064547(n+1)]+1`
-/

namespace A105965.P9035642125975738777
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064547 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A105965.P9035642125975738777

/-! ## A105965.P3523121315442044244

`eq[A000120(n), A064547(A000038(n)+n)]`
-/

namespace A105965.P3523121315442044244
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064547 (A000038 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A105965.P3523121315442044244

/-! ## A105965.P15433250635982000878

`A020725(eq[A000120(n+1), A064547(n+1)])`
-/

namespace A105965.P15433250635982000878
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064547 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A105965.P15433250635982000878

/-! ## A105965.P9166458220265522450

`eq[A000079(A000120(n+1)), A037445(n+1)]+1`
-/

namespace A105965.P9166458220265522450
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A000120 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037445 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A105965.P9166458220265522450

/-!
# A105967: Slowest increasing sequence all of whose successive digits are the digits of the Fibonacci numbers.

The programs for A105967, there is no canonical definition to state claims against.
-/

/-! ## A105967.P3790837509789137196

`A097473(A097448(n²))`
-/

namespace A105967.P3790837509789137196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097473 (A097448 (n ^ 2)).toNat

end

end A105967.P3790837509789137196

/-! ## A105967.P1810661193244215474

`A004442(xor(1, A097473(n)))`
-/

namespace A105967.P1810661193244215474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (Int.xor 1 (A097473 n)).toNat

end

end A105967.P1810661193244215474

/-!
# A105968: a(n) = 4*a(n-1) - a(n-2) - 2*(-1)^n, a(0) = 1, a(1) = 4.

The programs for A105968, the canonical program `A105968.P8795690534092293502` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A105968 has offset 0).

The definition of A105968 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `4*a(n-1)-a(n-2)-2*(-1)^n` (program `A105968.P8795690534092293502`, by `A105968.P8795690534092293502.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A105968.P11869262792169385530

`ogf((1+x-2x^2)/(1-3x-3x^2+x^3))`
-/

namespace A105968.P11869262792169385530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1, -2] [1, -3, -3, 1] n

end

end A105968.P11869262792169385530

namespace A105968

/-- `ogf((1+x-2x^2)/(1-3x-3x^2+x^3))` -/
def P11869262792169385530.Spec : Prop :=
  ∀ n, P11869262792169385530.a n = A105968 n

end A105968

/-! ## A105968.P8795690534092293502

`4*a(n-1)-a(n-2)-2*(-1)^n` with `a(0)=1, a(1)=4`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A105968

/-- `4*a(n-1)-a(n-2)-2*(-1)^n` -/
def P8795690534092293502.Spec : Prop :=
  ∀ n, P8795690534092293502.a n = A105968 n

theorem P8795690534092293502.correct : P8795690534092293502.Spec := by
  intro n
  simp only [A105968]

end A105968

/-! ## A105968.P18153089546868708717

`3*a(n-1)+3*a(n-2)-a(n-3)` with `a(0)=1, a(1)=4, a(2)=13`
-/

namespace A105968.P18153089546868708717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4, 13] fun n a =>
  3 * a (n - 1) + 3 * a (n - 2) - a (n - 3)

end

end A105968.P18153089546868708717

namespace A105968

/-- `3*a(n-1)+3*a(n-2)-a(n-3)` -/
def P18153089546868708717.Spec : Prop :=
  ∀ n, P18153089546868708717.a n = A105968 n

end A105968

/-! ## A105968.P15040459696066281165

`3*(a(n-1)+a(n-2))-a(n-3)` with `a(0)=1, a(1)=4, a(2)=13`
-/

namespace A105968.P15040459696066281165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4, 13] fun n a =>
  3 * (a (n - 1) + a (n - 2)) - a (n - 3)

end

end A105968.P15040459696066281165

namespace A105968

/-- `3*(a(n-1)+a(n-2))-a(n-3)` -/
def P15040459696066281165.Spec : Prop :=
  ∀ n, P15040459696066281165.a n = A105968 n

end A105968

/-! ## A105968.P18057434106394257562

`round(A077236(n)/3)`
-/

namespace A105968.P18057434106394257562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A077236 n : ℚ) / 3)

end

end A105968.P18057434106394257562

namespace A105968

/-- `round(A077236(n)/3)` -/
def P18057434106394257562.Spec : Prop :=
  ∀ n, P18057434106394257562.a n = A105968 n

end A105968

/-! ## A105968.P6655266406288634313

`round(A077238(2*n)/3)`
-/

namespace A105968.P6655266406288634313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A077238 (2 * n) : ℚ) / 3)

end

end A105968.P6655266406288634313

namespace A105968

/-- `round(A077238(2*n)/3)` -/
def P6655266406288634313.Spec : Prop :=
  ∀ n, P6655266406288634313.a n = A105968 n

end A105968

/-! ## A105968.P5123653255382747569

`A144721(n)-A120893(n)`
-/

namespace A105968.P5123653255382747569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144721 n - A120893 n

end

end A105968.P5123653255382747569

namespace A105968

/-- `A144721(n)-A120893(n)` -/
def P5123653255382747569.Spec : Prop :=
  ∀ n, P5123653255382747569.a n = A105968 n

end A105968

/-! ## A105968.P2218723160915040004

`Δ[A052530(n)]-A006253(n)`
-/

namespace A105968.P2218723160915040004
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052530 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A006253 n

end

end A105968.P2218723160915040004

namespace A105968

/-- `Δ[A052530(n)]-A006253(n)` -/
def P2218723160915040004.Spec : Prop :=
  ∀ n, P2218723160915040004.a n = A105968 n

end A105968

/-! ## A105968.P17012550830925752096

`A120893(n+1)+A106707(n)`
-/

namespace A105968.P17012550830925752096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120893 (n + 1) + A106707 n

end

end A105968.P17012550830925752096

namespace A105968

/-- `A120893(n+1)+A106707(n)` -/
def P17012550830925752096.Spec : Prop :=
  ∀ n, P17012550830925752096.a n = A105968 n

end A105968

/-! ## A105968.P1190990140313685682

`A120893(n)+A120892(n+1)`
-/

namespace A105968.P1190990140313685682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120893 n + A120892 (n + 1)

end

end A105968.P1190990140313685682

namespace A105968

/-- `A120893(n)+A120892(n+1)` -/
def P1190990140313685682.Spec : Prop :=
  ∀ n, P1190990140313685682.a n = A105968 n

end A105968

/-! ## A105968.P3994835184047043723

`A006253(n+1)-A001834(n)`
-/

namespace A105968.P3994835184047043723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006253 (n + 1) - A001834 n

end

end A105968.P3994835184047043723

namespace A105968

/-- `A006253(n+1)-A001834(n)` -/
def P3994835184047043723.Spec : Prop :=
  ∀ n, P3994835184047043723.a n = A105968 n

end A105968

/-! ## A105968.P5148445823090495083

`A120893(n+1)-A001353(n)`
-/

namespace A105968.P5148445823090495083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120893 (n + 1) - A001353 n

end

end A105968.P5148445823090495083

namespace A105968

/-- `A120893(n+1)-A001353(n)` -/
def P5148445823090495083.Spec : Prop :=
  ∀ n, P5148445823090495083.a n = A105968 n

end A105968

/-! ## A105968.P16073534173649856277

`A001075(n)+2*A109437(n)`
-/

namespace A105968.P16073534173649856277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001075 n + 2 * A109437 n

end

end A105968.P16073534173649856277

namespace A105968

/-- `A001075(n)+2*A109437(n)` -/
def P16073534173649856277.Spec : Prop :=
  ∀ n, P16073534173649856277.a n = A105968 n

end A105968

/-! ## A105968.P17643526012185743307

`A120893(n)+xor(1, A006253(n))`
-/

namespace A105968.P17643526012185743307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120893 n + Int.xor 1 (A006253 n)

end

end A105968.P17643526012185743307

namespace A105968

/-- `A120893(n)+xor(1, A006253(n))` -/
def P17643526012185743307.Spec : Prop :=
  ∀ n, P17643526012185743307.a n = A105968 n

end A105968

/-! ## A105968.P19050881191969089

`A217233(n)+xor(1, A001075(n))`
-/

namespace A105968.P19050881191969089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217233 n + Int.xor 1 (A001075 n)

end

end A105968.P19050881191969089

namespace A105968

/-- `A217233(n)+xor(1, A001075(n))` -/
def P19050881191969089.Spec : Prop :=
  ∀ n, P19050881191969089.a n = A105968 n

end A105968

/-! ## A105968.P9450983287547079828

`2*A079935(n+1)-A006253(n)`
-/

namespace A105968.P9450983287547079828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A079935 (n + 1) - A006253 n

end

end A105968.P9450983287547079828

namespace A105968

/-- `2*A079935(n+1)-A006253(n)` -/
def P9450983287547079828.Spec : Prop :=
  ∀ n, P9450983287547079828.a n = A105968 n

end A105968

/-! ## A105968.P7975060127346792051

`A006253(n+1)-A108412(2*n)`
-/

namespace A105968.P7975060127346792051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006253 (n + 1) - A108412 (2 * n)

end

end A105968.P7975060127346792051

namespace A105968

/-- `A006253(n+1)-A108412(2*n)` -/
def P7975060127346792051.Spec : Prop :=
  ∀ n, P7975060127346792051.a n = A105968 n

end A105968

/-! ## A105968.P9053397875846459155

`A120893(n+1)-A002530(2*n)`
-/

namespace A105968.P9053397875846459155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120893 (n + 1) - A002530 (2 * n)

end

end A105968.P9053397875846459155

namespace A105968

/-- `A120893(n+1)-A002530(2*n)` -/
def P9053397875846459155.Spec : Prop :=
  ∀ n, P9053397875846459155.a n = A105968 n

end A105968

/-! ## A105968.P10903569133792893185

`(A217233(n+1)+A001835(n))/2`
-/

namespace A105968.P10903569133792893185
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A217233 (n + 1) + A001835 n : ℚ) / 2

end

end A105968.P10903569133792893185

namespace A105968

/-- `(A217233(n+1)+A001835(n))/2` -/
def P10903569133792893185.Spec : Prop :=
  ∀ n, P10903569133792893185.a n = (A105968 n : ℚ)

end A105968

/-! ## A105968.P5039338512652511080

`A006253(n+1)-A002531(2*n+1)`
-/

namespace A105968.P5039338512652511080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006253 (n + 1) - A002531 (2 * n + 1)

end

end A105968.P5039338512652511080

namespace A105968

/-- `A006253(n+1)-A002531(2*n+1)` -/
def P5039338512652511080.Spec : Prop :=
  ∀ n, P5039338512652511080.a n = A105968 n

end A105968

/-!
# A105970: Number of ordered integral solutions of Descartes' equation 2(a^2 + b^2 + c^2 + d^2) = (a + b + c + d)^2 with a + b + c + d = 4n - 2.

The programs for A105970, there is no canonical definition to state claims against.
-/

/-! ## A105970.P2713520925858308570

`A097266(n)+A049317(n+1)`
-/

namespace A105970.P2713520925858308570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097266 n + A049317 (n + 1)

end

end A105970.P2713520925858308570

/-! ## A105970.P15631083926875856734

`A223730(Δ[n²]²)+A049317(n+1)`
-/

namespace A105970.P15631083926875856734
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223730 (((f1 (n + 1) : ℤ) - (f1 n : ℤ)) ^ 2).toNat + A049317 (n + 1)

end

end A105970.P15631083926875856734

/-! ## A105970.P18128414349596615131

`A049317(n+1)+C(2, C(2, n²))*A223730((2*n+1)²)`
-/

namespace A105970.P18128414349596615131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049317 (n + 1) + (Nat.choose 2 (Nat.choose 2 (n ^ 2)) : ℤ) * A223730 ((2 * n + 1) ^ 2)

end

end A105970.P18128414349596615131

/-! ## A105970.P12165959730941020179

`A049317(n+1)+or(char[1], A223730(A157142(n)²))`
-/

namespace A105970.P12165959730941020179
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049317 (n + 1) + Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A223730 (A157142 n ^ 2).toNat)

end

end A105970.P12165959730941020179

/-! ## A105970.P3006489146828022299

`A049317(n+1)+A057427(n)*A223730((2*n+1)²)`
-/

namespace A105970.P3006489146828022299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049317 (n + 1) + A057427 n * A223730 ((2 * n + 1) ^ 2)

end

end A105970.P3006489146828022299

/-! ## A105970.P12579817008469592851

`A049317(n+1)+A007318(∑[n])*A223730((2*n+1)²)`
-/

namespace A105970.P12579817008469592851
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049317 (n + 1) + A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * A223730 ((2 * n + 1) ^ 2)

end

end A105970.P12579817008469592851

/-! ## A105970.P6452159829082411953

`A049317(n+1)+ceil(n/A000041(n))*A223730((2*n+1)²)`
-/

namespace A105970.P6452159829082411953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049317 (n + 1) + ⌈(n : ℚ) / (A000041 n : ℚ)⌉ * A223730 ((2 * n + 1) ^ 2)

end

end A105970.P6452159829082411953

/-! ## A105970.P10550274828575865881

`A049317(n+1)+A223730((2*n+1)²)+A008683(4*(n+1))`
-/

namespace A105970.P10550274828575865881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049317 (n + 1) + (A223730 ((2 * n + 1) ^ 2) + A008683 (4 * (n + 1)))

end

end A105970.P10550274828575865881

/-!
# A105971: Number of distinct prime divisors of 66...667 (with n 6's).

The programs for A105971, there is no canonical definition to state claims against.
-/

/-! ## A105971.P12813553825173338500

`A185037(A340693(n))+A167866(A188399(n+1))`
-/

namespace A105971.P12813553825173338500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185037 (A340693 n).toNat + A167866 (A188399 (n + 1)).toNat

end

end A105971.P12813553825173338500

/-! ## A105971.P786387934570188516

`A186746(A162663(n))+A167866(A188399(n+1))`
-/

namespace A105971.P786387934570188516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186746 (A162663 n).toNat + A167866 (A188399 (n + 1)).toNat

end

end A105971.P786387934570188516

/-! ## A105971.P15783775510558878147

`A167866(A188399(n+1))*A240228(A314307(n))`
-/

namespace A105971.P15783775510558878147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167866 (A188399 (n + 1)).toNat * A240228 (A314307 n).toNat

end

end A105971.P15783775510558878147

/-! ## A105971.P16191795429502145595

`A167866(A188399(n+1))+A138363(A138368(n+1))`
-/

namespace A105971.P16191795429502145595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167866 (A188399 (n + 1)).toNat + A138363 (A138368 (n + 1)).toNat

end

end A105971.P16191795429502145595

/-! ## A105971.P6397063249891206701

`A116452(A107852(n)*A163329(n))`
-/

namespace A105971.P6397063249891206701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116452 (A107852 n * A163329 n).toNat

end

end A105971.P6397063249891206701

/-!
# A105973: Number of distinct prime divisors of 88...883 (with n 8's).

The programs for A105973, there is no canonical definition to state claims against.
-/

/-! ## A105973.P8632801094221953553

`A290695(A037323(A289336(n+1)))`
-/

namespace A105973.P8632801094221953553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290695 (A037323 (A289336 (n + 1)).toNat).toNat

end

end A105973.P8632801094221953553

/-!
# A105974: (A001035(n) - 1)/2 where A001035 is the number of partially ordered sets ("posets") with n labeled elements.

The programs for A105974, there is no canonical definition to state claims against.
-/

/-! ## A105974.P17843435598304152208

`(A001035(n)-1)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A105974.P17843435598304152208
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001035 n - 1 : ℚ) / 2

end

end A105974.P17843435598304152208

/-! ## A105974.P425011030997709081

`floor(A001035(n)/2)`
-/

namespace A105974.P425011030997709081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A001035 n : ℚ) / 2⌋

end

end A105974.P425011030997709081

/-! ## A105974.P1182813650671599364

`floor(A245767(∑[n])/2)`
-/

namespace A105974.P1182813650671599364
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A245767 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ) / 2⌋

end

end A105974.P1182813650671599364

/-! ## A105974.P12137739934720270409

`floor(A006059(n+1)/(2*(n+1)))`
-/

namespace A105974.P12137739934720270409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A006059 (n + 1) : ℚ) / (2 * (n + 1) : ℚ)⌋

end

end A105974.P12137739934720270409

/-! ## A105974.P13507280039948144074

`(A245767(A000217(n))-1)/2`
-/

namespace A105974.P13507280039948144074
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A245767 (A000217 n).toNat - 1 : ℚ) / 2

end

end A105974.P13507280039948144074

/-!
# A105975: Near-repdigit primes with 9 as repeated digit.

The programs for A105975, there is no canonical definition to state claims against.
-/

/-! ## A105975.P10034898772533885561

`∩[A164937(n+1), A292739(n+1)]`
-/

namespace A105975.P10034898772533885561
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164937 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292739 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105975.P10034898772533885561

/-! ## A105975.P9658398976060243821

`∩[A164937(n+1), A292449(n+1)]`
-/

namespace A105975.P9658398976060243821
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164937 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292449 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105975.P9658398976060243821

/-! ## A105975.P8527330657394017304

`record[A062854(A292739(n+3))]`
-/

namespace A105975.P8527330657394017304
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062854 (A292739 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A105975.P8527330657394017304

/-! ## A105975.P5650258972551399804

`filter[A292739(n+1), A080339(#)]`
-/

namespace A105975.P5650258972551399804
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292739 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080339 (f1 j).toNat = 1) n)

end

end A105975.P5650258972551399804

/-! ## A105975.P11804600142032191465

`filter[A292739(n+1), A080545(#)]`
-/

namespace A105975.P11804600142032191465
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292739 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080545 (f1 j).toNat = 1) n)

end

end A105975.P11804600142032191465

/-!
# A105976: Near-repdigit primes with at least two 8's as the repeated digit.

The programs for A105976, there is no canonical definition to state claims against.
-/

/-! ## A105976.P5087444921462826786

`∩[A056710(n+1), A237346(n)]`
-/

namespace A105976.P5087444921462826786
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056710 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237346 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105976.P5087444921462826786

/-! ## A105976.P2378405974814101890

`∩[A164937(n+1), A237346(n)]`
-/

namespace A105976.P2378405974814101890
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164937 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237346 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105976.P2378405974814101890

/-! ## A105976.P739470738548076170

`∩[A167843(n+1), A237346(n)]`
-/

namespace A105976.P739470738548076170
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167843 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237346 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105976.P739470738548076170

/-! ## A105976.P4289117584254507997

`∩[A397848(n+1), A237346(n)]`
-/

namespace A105976.P4289117584254507997
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397848 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237346 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105976.P4289117584254507997

/-! ## A105976.P363636356439366197

`∩[A056710(n+1), A069683(n+1)]`
-/

namespace A105976.P363636356439366197
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056710 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069683 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105976.P363636356439366197

/-!
# A105977: Near-repdigit primes with 7 as repeated digit.

The programs for A105977, there is no canonical definition to state claims against.
-/

/-! ## A105977.P17244185013629832964

`∩[A164937(n+1), A292737(n+1)]`
-/

namespace A105977.P17244185013629832964
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164937 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292737 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105977.P17244185013629832964

/-! ## A105977.P3600450487641082355

`∩[A164937(n+1), A292457(n+1)]`
-/

namespace A105977.P3600450487641082355
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164937 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292457 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105977.P3600450487641082355

/-! ## A105977.P16681407534876773936

`filter[A292737(n+2), A010055(#)]`
-/

namespace A105977.P16681407534876773936
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292737 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010055 (f1 j).toNat = 1) n)

end

end A105977.P16681407534876773936

/-! ## A105977.P3883678327047334887

`filter[A292737(n+2), A080339(#)]`
-/

namespace A105977.P3883678327047334887
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292737 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080339 (f1 j).toNat = 1) n)

end

end A105977.P3883678327047334887

/-! ## A105977.P1490221788084231831

`filter[A292737(n+2), A080545(#)]`
-/

namespace A105977.P1490221788084231831
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292737 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080545 (f1 j).toNat = 1) n)

end

end A105977.P1490221788084231831

/-!
# A105978: Near-repdigit primes with at least two 6's as the repeated digit.

The programs for A105978, there is no canonical definition to state claims against.
-/

/-! ## A105978.P3625335014894144547

`∩[A056710(n+1), A069681(n+1)]`
-/

namespace A105978.P3625335014894144547
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056710 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069681 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105978.P3625335014894144547

/-! ## A105978.P2017344042342896970

`∩[A069681(n+1), A397848(n+1)]`
-/

namespace A105978.P2017344042342896970
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069681 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397848 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105978.P2017344042342896970

/-! ## A105978.P1599922337859379864

`∩[A178004(n+1), A037065(n)]`
-/

namespace A105978.P1599922337859379864
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178004 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037065 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105978.P1599922337859379864

/-!
# A105979: Near-repdigit primes with at least two 5's as the repeated digit.

The programs for A105979, there is no canonical definition to state claims against.
-/

/-! ## A105979.P11448491171474097147

`∩[A056710(n+1), A069680(n+1)]`
-/

namespace A105979.P11448491171474097147
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056710 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069680 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105979.P11448491171474097147

/-!
# A105980: Near-repdigit primes with at least two 4's as the repeated digit.

The programs for A105980, there is no canonical definition to state claims against.
-/

/-! ## A105980.P7630299765754182808

`∩[A056710(n+1), A069679(n+1)]`
-/

namespace A105980.P7630299765754182808
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056710 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069679 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105980.P7630299765754182808

/-! ## A105980.P6572001427322508830

`∩[A069679(n+1), A164937(n+1)]`
-/

namespace A105980.P6572001427322508830
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069679 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164937 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105980.P6572001427322508830

/-! ## A105980.P4070489363746360005

`∩[A069679(n+1), A397848(n+1)]`
-/

namespace A105980.P4070489363746360005
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069679 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397848 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105980.P4070489363746360005

/-!
# A105981: Near-repdigit primes with 3 as repeated digit.

The programs for A105981, there is no canonical definition to state claims against.
-/

/-! ## A105981.P17723393666146254905

`∩[A164937(n+1), A292733(n+1)]`
-/

namespace A105981.P17723393666146254905
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164937 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292733 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105981.P17723393666146254905

/-! ## A105981.P18322985843374006837

`∩[A164937(n+1), A292453(n+1)]`
-/

namespace A105981.P18322985843374006837
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164937 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292453 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105981.P18322985843374006837

/-! ## A105981.P15882324323919615526

`filter[A292733(n+1), A171387(#)]`
-/

namespace A105981.P15882324323919615526
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292733 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A171387 (f1 j).toNat = 1) n)

end

end A105981.P15882324323919615526

/-! ## A105981.P7264743483525854772

`filter[A292733(n+2), A080339(#)]`
-/

namespace A105981.P7264743483525854772
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292733 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080339 (f1 j).toNat = 1) n)

end

end A105981.P7264743483525854772

/-! ## A105981.P4204142997720611719

`filter[A292733(n+2), A080545(#)]`
-/

namespace A105981.P4204142997720611719
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292733 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080545 (f1 j).toNat = 1) n)

end

end A105981.P4204142997720611719

/-!
# A105982: Near-repdigit primes with at least two 2's as the repeated digit.

The programs for A105982, there is no canonical definition to state claims against.
-/

/-! ## A105982.P12354837704595047592

`∩[A056710(n+1), A069677(n+1)]`
-/

namespace A105982.P12354837704595047592
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056710 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069677 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105982.P12354837704595047592

/-!
# A105983: Near-repdigit semiprimes with 2 as repeated digit.

The programs for A105983, there is no canonical definition to state claims against.
-/

/-! ## A105983.P17748499637333460571

`∩[A043498(n+1), A235690(n+1)]`
-/

namespace A105983.P17748499637333460571
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043498 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235690 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105983.P17748499637333460571

/-!
# A105984: Near-repdigit semiprimes with 3 as repeated digit.

The programs for A105984, there is no canonical definition to state claims against.
-/

/-! ## A105984.P14694018647103944292

`∩[A043502(n+1), A235690(n+1)]`
-/

namespace A105984.P14694018647103944292
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043502 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235690 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105984.P14694018647103944292

/-! ## A105984.P13294634738780460160

`∩[A235690(n+1), A292453(n+1)]`
-/

namespace A105984.P13294634738780460160
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235690 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292453 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105984.P13294634738780460160

/-! ## A105984.P18188079452135503501

`∩[A235690(n+1), A292733(n+1)]`
-/

namespace A105984.P18188079452135503501
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235690 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292733 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105984.P18188079452135503501

/-!
# A105986: Near-repdigit semiprimes with 5 as repeated digit.

The programs for A105986, there is no canonical definition to state claims against.
-/

/-! ## A105986.P5458269448874090613

`A043510(lt[A330882(3*n), A000285(n)])`
-/

namespace A105986.P5458269448874090613
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330882 (3 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000285 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043510 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A105986.P5458269448874090613

/-!
# A105987: Near-repdigit semiprimes with 6 as repeated digit.

The programs for A105987, there is no canonical definition to state claims against.
-/

/-! ## A105987.P4413656462129135585

`∩[A055396(A106349(n+1)), A292736(n+3)]`
-/

namespace A105987.P4413656462129135585
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (A106349 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292736 (n + 3)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105987.P4413656462129135585

/-!
# A105990: Near-repdigit semiprimes with 9 as repeated digit.

The programs for A105990, there is no canonical definition to state claims against.
-/

/-! ## A105990.P11755308834499853310

`filter[A292739(n+2), A383575(#)]`
-/

namespace A105990.P11755308834499853310
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292739 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A383575 (f1 j).toNat = 1) n)

end

end A105990.P11755308834499853310

/-!
# A105991: Semiprimes consisting of digits 0 and 1 only.

The programs for A105991, there is no canonical definition to state claims against.
-/

/-! ## A105991.P8161276862879170721

`∩[A007089(A108873(n+1)), A007088(n)]`
-/

namespace A105991.P8161276862879170721
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007089 (A108873 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105991.P8161276862879170721

/-! ## A105991.P17097229978470132804

`∩[A108614(n+1), A007088(n)]`
-/

namespace A105991.P17097229978470132804
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108614 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105991.P17097229978470132804

/-! ## A105991.P13294252790506812550

`A007088(eq[2, ∑{e}[A007088(n), #]])`
-/

namespace A105991.P13294252790506812550
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n).natAbs, Nat.factorization (f3 n).natAbs p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A105991.P13294252790506812550

/-! ## A105991.P17979832994333293382

`A007088(eq[4, ∏{e}[A007088(n), #+1]])`
-/

namespace A105991.P17979832994333293382
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f3 n).natAbs, (Nat.factorization (f3 n).natAbs p + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A105991.P17979832994333293382

/-! ## A105991.P16350882174450204256

`A007088(lt[(2-∑{e}[A007088(n), #])², 1])`
-/

namespace A105991.P16350882174450204256
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - ((∑ p ∈ Nat.primeFactors (f2 n).natAbs, Nat.factorization (f2 n).natAbs p : ℕ) : ℤ)) ^ 2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n)

end

end A105991.P16350882174450204256

/-!
# A105992: Near-repunit primes.

The programs for A105992, there is no canonical definition to state claims against.
-/

/-! ## A105992.P13647922075906613713

`∩[A164937(n+1), A259300(n+1)]`
-/

namespace A105992.P13647922075906613713
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164937 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259300 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105992.P13647922075906613713

/-! ## A105992.P1962580171704815396

`∩[A030291(n+1), A259300(n+1)]`
-/

namespace A105992.P1962580171704815396
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030291 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259300 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105992.P1962580171704815396

/-! ## A105992.P14829054650606717535

`∩[A235154(n+1), A259300(n+1)]`
-/

namespace A105992.P14829054650606717535
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235154 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259300 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105992.P14829054650606717535

/-! ## A105992.P15129716785273325307

`∩[A182051(n+1), A259300(n+1)]`
-/

namespace A105992.P15129716785273325307
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182051 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259300 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105992.P15129716785273325307

/-! ## A105992.P10616631106709471445

`∩[A164937(n+1), A292731(n+1)]`
-/

namespace A105992.P10616631106709471445
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164937 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292731 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105992.P10616631106709471445

/-!
# A105993: Near-repunit semiprimes.

The programs for A105993, there is no canonical definition to state claims against.
-/

/-! ## A105993.P8549033567882733377

`filter[A259300(n+1), A064911(#)]`
-/

namespace A105993.P8549033567882733377
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259300 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A064911 (f1 j).toNat = 1) n)

end

end A105993.P8549033567882733377

/-! ## A105993.P4275344050206827439

`∩[A001358(n+1), A259300(n+1)]`
-/

namespace A105993.P4275344050206827439
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259300 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105993.P4275344050206827439

/-! ## A105993.P7836671535538751635

`∩[A077136(n+1), A259300(n+1)]`
-/

namespace A105993.P7836671535538751635
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077136 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259300 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105993.P7836671535538751635

/-! ## A105993.P8399660207653314735

`∩[A085155(n+1), A259300(n+1)]`
-/

namespace A105993.P8399660207653314735
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085155 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259300 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105993.P8399660207653314735

/-! ## A105993.P8008013670640927459

`∩[A131368(n+1), A259300(n+1)]`
-/

namespace A105993.P8008013670640927459
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131368 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259300 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105993.P8008013670640927459

/-!
# A105994: Fibonacci sequence (mod 13).

The programs for A105994, the canonical program `A105994.P17023538067118322338` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A105994 has offset 0).

The definition of A105994 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A105994.P17023538067118322338

`A000045(n)%13`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A105994

/-- `A000045(n)%13` -/
def P17023538067118322338.Spec : Prop :=
  ∀ n, P17023538067118322338.a n = A105994 n

theorem P17023538067118322338.correct : P17023538067118322338.Spec := by
  intro n
  simp only [A105994]

end A105994

/-!
# A105995: Fibonacci sequence (mod 14).

The programs for A105995, the canonical program `A105995.P3672666394306400851` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A105995 has offset 0).

The definition of A105995 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A105995.P3672666394306400851

`A000045(n)%14`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A105995

/-- `A000045(n)%14` -/
def P3672666394306400851.Spec : Prop :=
  ∀ n, P3672666394306400851.a n = A105995 n

theorem P3672666394306400851.correct : P3672666394306400851.Spec := by
  intro n
  simp only [A105995]

end A105995

/-!
# A105996: A050030(2^n+1).

The programs for A105996, there is no canonical definition to state claims against.
-/

/-! ## A105996.P1500255354748479049

`A050030(2^n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A105996.P1500255354748479049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050030 (2 ^ n + 1)

end

end A105996.P1500255354748479049

/-! ## A105996.P2383959575370399005

`record[A050030(A052552(n))]`
-/

namespace A105996.P2383959575370399005
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050030 (A052552 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A105996.P2383959575370399005

/-! ## A105996.P1840129160224595286

`record[A050030(A154221(n))]`
-/

namespace A105996.P1840129160224595286
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050030 (A154221 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A105996.P1840129160224595286

/-! ## A105996.P9894966074034284060

`record[A050030(A271709(n))]`
-/

namespace A105996.P9894966074034284060
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050030 (A271709 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A105996.P9894966074034284060

/-! ## A105996.P9917143160777171458

`A050030(A052548(n))-1`
-/

namespace A105996.P9917143160777171458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050030 (A052548 n).toNat - 1

end

end A105996.P9917143160777171458

/-!
# A105997: Semiprime function n -> A001358(n) applied three times to n.

The programs for A105997, the canonical program `A105997.P10297636534008351587` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A105997 has offset 1).

The definition of A105997 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001358, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A105997.P10297636534008351587

`A001358(A001358(A001358(n+1)))`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A105997

/-- `A001358(A001358(A001358(n+1)))` -/
def P10297636534008351587.Spec : Prop :=
  ∀ n, P10297636534008351587.a n = A105997 (n + 1)

theorem P10297636534008351587.correct : P10297636534008351587.Spec := by
  intro n
  simp only [A105997, Nat.add_sub_cancel]

end A105997

/-! ## A105997.P16378552144802223156

`A091022(A001358(n+1))`
-/

namespace A105997.P16378552144802223156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091022 (A001358 (n + 1)).toNat

end

end A105997.P16378552144802223156

namespace A105997

/-- `A091022(A001358(n+1))` -/
def P16378552144802223156.Spec : Prop :=
  ∀ n, P16378552144802223156.a n = A105997 (n + 1)

end A105997

/-! ## A105997.P12100135898669451155

`A091022(A176540(n+2))`
-/

namespace A105997.P12100135898669451155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091022 (A176540 (n + 2)).toNat

end

end A105997.P12100135898669451155

namespace A105997

/-- `A091022(A176540(n+2))` -/
def P12100135898669451155.Spec : Prop :=
  ∀ n, P12100135898669451155.a n = A105997 (n + 1)

end A105997

/-! ## A105997.P7594017698090860901

`A091022(sqrt(A074985(n+1)))`
-/

namespace A105997.P7594017698090860901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091022 (SequenceMachineLib.roundAway (Real.sqrt (A074985 (n + 1) : ℝ))).toNat

end

end A105997.P7594017698090860901

namespace A105997

/-- `A091022(sqrt(A074985(n+1)))` -/
def P7594017698090860901.Spec : Prop :=
  ∀ n, P7594017698090860901.a n = A105997 (n + 1)

end A105997

/-! ## A105997.P10022790231180307169

`A091022(A186621(n+1)+1)`
-/

namespace A105997.P10022790231180307169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091022 (A186621 (n + 1) + 1).toNat

end

end A105997.P10022790231180307169

namespace A105997

/-- `A091022(A186621(n+1)+1)` -/
def P10022790231180307169.Spec : Prop :=
  ∀ n, P10022790231180307169.a n = A105997 (n + 1)

theorem P10022790231180307169.correct : P10022790231180307169.Spec := by
  intro n
  simp only [A105997, Nat.add_sub_cancel, A105997.P10022790231180307169.a, A105997.P10297636534008351587.a, A001358, A001358.P632087320844056370.a, A091022, A091022.P5439883607584721882.a, A186621, A186621.P5089299060388261365.a, A088707, A088707.P7291141647877559993.a, A100493, A100493.P3342029395979233194.f1, A100493.P3342029395979233194.a, A072000, A072000.P3706059858088101648.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A105997

/-! ## A105997.P3988220441450972282

`A058933(A105998(n+1))`
-/

namespace A105997.P3988220441450972282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058933 (A105998 (n + 1)).toNat

end

end A105997.P3988220441450972282

namespace A105997

/-- `A058933(A105998(n+1))` -/
def P3988220441450972282.Spec : Prop :=
  ∀ n, P3988220441450972282.a n = A105997 (n + 1)

end A105997

/-!
# A105998: Semiprime function n -> A001358(n) applied four times to n.

The programs for A105998, the canonical program `A105998.P15896179053106827670` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A105998 has offset 1).

The definition of A105998 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001358, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A105998.P15896179053106827670

`A001358(A001358(A001358(A001358(n+1))))`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A105998

/-- `A001358(A001358(A001358(A001358(n+1))))` -/
def P15896179053106827670.Spec : Prop :=
  ∀ n, P15896179053106827670.a n = A105998 (n + 1)

theorem P15896179053106827670.correct : P15896179053106827670.Spec := by
  intro n
  simp only [A105998, Nat.add_sub_cancel]

end A105998

/-! ## A105998.P17723465480379344010

`A105997(A001358(n+1))`
-/

namespace A105998.P17723465480379344010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105997 (A001358 (n + 1)).toNat

end

end A105998.P17723465480379344010

namespace A105998

/-- `A105997(A001358(n+1))` -/
def P17723465480379344010.Spec : Prop :=
  ∀ n, P17723465480379344010.a n = A105998 (n + 1)

end A105998

/-! ## A105998.P435872479267552040

`A105997(A176540(n+2))`
-/

namespace A105998.P435872479267552040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105997 (A176540 (n + 2)).toNat

end

end A105998.P435872479267552040

namespace A105998

/-- `A105997(A176540(n+2))` -/
def P435872479267552040.Spec : Prop :=
  ∀ n, P435872479267552040.a n = A105998 (n + 1)

end A105998

/-! ## A105998.P17183453198315504551

`A105997(A186621(n+1)+1)`
-/

namespace A105998.P17183453198315504551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105997 (A186621 (n + 1) + 1).toNat

end

end A105998.P17183453198315504551

namespace A105998

/-- `A105997(A186621(n+1)+1)` -/
def P17183453198315504551.Spec : Prop :=
  ∀ n, P17183453198315504551.a n = A105998 (n + 1)

theorem P17183453198315504551.correct : P17183453198315504551.Spec := by
  intro n
  simp only [A105998, Nat.add_sub_cancel, A105998.P17183453198315504551.a, A105998.P15896179053106827670.a, A001358, A001358.P632087320844056370.a, A105997, A105997.P10297636534008351587.a, A186621, A186621.P5089299060388261365.a, A088707, A088707.P7291141647877559993.a, A100493, A100493.P3342029395979233194.f1, A100493.P3342029395979233194.a, A072000, A072000.P3706059858088101648.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A105998

/-! ## A105998.P5810326983729575716

`A105997(A088707(n+1)-1)`
-/

namespace A105998.P5810326983729575716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105997 (A088707 (n + 1) - 1).toNat

end

end A105998.P5810326983729575716

namespace A105998

/-- `A105997(A088707(n+1)-1)` -/
def P5810326983729575716.Spec : Prop :=
  ∀ n, P5810326983729575716.a n = A105998 (n + 1)

end A105998

/-! ## A105998.P3614681362139427597

`A105997(∑{d}[A106349(n+1), A000720(#)])`
-/

namespace A105998.P3614681362139427597
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106349 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105997 (∑ d ∈ Nat.divisors (f1 n).natAbs, A000720 d).toNat

end

end A105998.P3614681362139427597

namespace A105998

/-- `A105997(∑{d}[A106349(n+1), A000720(#)])` -/
def P3614681362139427597.Spec : Prop :=
  ∀ n, P3614681362139427597.a n = A105998 (n + 1)

end A105998

/-! ## A105998.P13661809884349748844

`A091022(A091022(n+1))`
-/

namespace A105998.P13661809884349748844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091022 (A091022 (n + 1)).toNat

end

end A105998.P13661809884349748844

namespace A105998

/-- `A091022(A091022(n+1))` -/
def P13661809884349748844.Spec : Prop :=
  ∀ n, P13661809884349748844.a n = A105998 (n + 1)

end A105998

/-! ## A105998.P5156138156083255325

`A117323(A105997(n+1))`
-/

namespace A105998.P5156138156083255325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117323 (A105997 (n + 1)).toNat

end

end A105998.P5156138156083255325

namespace A105998

/-- `A117323(A105997(n+1))` -/
def P5156138156083255325.Spec : Prop :=
  ∀ n, P5156138156083255325.a n = A105998 (n + 1)

end A105998

/-!
# A105999: Semiprimeth recurrence: a(0) = 1, a(n+1) = semiprime(a(n)) = A001358(a(n)).

The programs for A105999, there is no canonical definition to state claims against.
-/

/-! ## A105999.P891892114410360886

`A001358(a(n-1))` with `a(0)=1`
-/

namespace A105999.P891892114410360886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A001358 (a (n - 1)).toNat

end

end A105999.P891892114410360886

/-! ## A105999.P14750933904130745933

`A091022(a(n-2))` with `a(0)=1, a(1)=4`
-/

namespace A105999.P14750933904130745933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4] fun n a =>
  A091022 (a (n - 2)).toNat

end

end A105999.P14750933904130745933

/-! ## A105999.P9996546530605602868

`A001358(abs(a(A002113(n))))` with `a(0)=1`
-/

namespace A105999.P9996546530605602868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A001358 |a (A002113 n).toNat|.toNat

end

end A105999.P9996546530605602868

/-! ## A105999.P14357391111316553228

`A001358(abs(a(A023443(n))))` with `a(0)=1`
-/

namespace A105999.P14357391111316553228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A001358 |a (A023443 n).toNat|.toNat

end

end A105999.P14357391111316553228

/-! ## A105999.P3239218287791005766

`A001358(floor(a(A023443(n))))` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A105999.P3239218287791005766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A001358 (a (A023443 n).toNat).toNat

end

end A105999.P3239218287791005766

