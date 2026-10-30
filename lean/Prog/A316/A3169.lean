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
import Seq.B000.C019
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C040
import Seq.B000.C043
import Seq.B000.C044
import Seq.B000.C048
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C012
import Seq.B001.C013
import Seq.B001.C014
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
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
import Seq.Opaque.C017
import Seq.Opaque.C018
import Seq.Opaque.C019
import Seq.Opaque.C020
import Seq.Opaque.C021
import Seq.Opaque.C022
import Seq.Opaque.C023
import SequenceMachineLib.Triangle

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A316900: Heinz numbers of integer partitions into relatively prime parts whose reciprocal sum is an integer.

The programs for A316900, there is no canonical definition to state claims against.
-/

/-! ## A316900.P1867804913966047300

`record[A316437(A316856(n+2))]`
-/

namespace A316900.P1867804913966047300
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316437 (A316856 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A316900.P1867804913966047300

/-! ## A316900.P15358307733769097735

`filter[A316856(n+1), A327532(#)]`
-/

namespace A316900.P15358307733769097735
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316856 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A327532 (f1 j).toNat = 1) n)

end

end A316900.P15358307733769097735

/-! ## A316900.P16215504660982678237

`∩[A289509(n+1), A316856(n+1)]`
-/

namespace A316900.P16215504660982678237
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289509 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316856 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A316900.P16215504660982678237

/-! ## A316900.P8769118702278623351

`∩[A316856(n+1), A324847(n+1)]`
-/

namespace A316900.P8769118702278623351
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316856 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324847 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A316900.P8769118702278623351

/-! ## A316900.P12714339231021196314

`∩[A316856(n+1), A386213(n+1)]`
-/

namespace A316900.P12714339231021196314
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316856 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386213 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A316900.P12714339231021196314

/-!
# A316902: Heinz numbers of aperiodic integer partitions whose reciprocal sum is an integer.

The programs for A316902, there is no canonical definition to state claims against.
-/

/-! ## A316902.P1021703446473038485

`filter[A316856(n+2), A132350(#)]`
-/

namespace A316902.P1021703446473038485
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316856 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A132350 (f1 j).toNat = 1) n)

end

end A316902.P1021703446473038485

/-! ## A316902.P3449511393967673638

`∩[A007916(n+1), A316856(n+1)]`
-/

namespace A316902.P3449511393967673638
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007916 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316856 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A316902.P3449511393967673638

/-! ## A316902.P3078601621447471794

`∪[A316889(n+1), A316904(n+1)]%A316889(2*n+5)`
-/

namespace A316902.P3078601621447471794
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316889 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316904 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n : ℤ) (A316889 (2 * n + 5))

end

end A316902.P3078601621447471794

/-!
# A316903: Heinz numbers of aperiodic integer partitions whose reciprocal sum is the reciprocal of an integer.

The programs for A316903, there is no canonical definition to state claims against.
-/

/-! ## A316903.P10265032338168243783

`record[A052410(A316857(n+1))]`
-/

namespace A316903.P10265032338168243783
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052410 (A316857 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A316903.P10265032338168243783

/-! ## A316903.P6320135030810503669

`filter[A316857(n+1), A132350(#)]`
-/

namespace A316903.P6320135030810503669
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316857 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A132350 (f1 j).toNat = 1) n)

end

end A316903.P6320135030810503669

/-! ## A316903.P1221251307821861240

`∩[A007916(n+1), A316857(n+1)]`
-/

namespace A316903.P1221251307821861240
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007916 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316857 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A316903.P1221251307821861240

/-! ## A316903.P12869288785928462243

`∩[A052485(n+1), A316857(n+1)]`
-/

namespace A316903.P12869288785928462243
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052485 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316857 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A316903.P12869288785928462243

/-! ## A316903.P14828088514246199777

`∩[A085971(n+1), A316857(n+1)]`
-/

namespace A316903.P14828088514246199777
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085971 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316857 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A316903.P14828088514246199777

/-! ## A316903.P8694378531527802707

`∩[A094784(n+1), A316857(n+1)]`
-/

namespace A316903.P8694378531527802707
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094784 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316857 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A316903.P8694378531527802707

/-! ## A316903.P596917250094843650

`∩[A119316(n+1), A316857(n+1)]`
-/

namespace A316903.P596917250094843650
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119316 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316857 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A316903.P596917250094843650

/-! ## A316903.P14807233698887633274

`∩[A175082(n+1), A316857(n+1)]`
-/

namespace A316903.P14807233698887633274
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175082 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316857 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A316903.P14807233698887633274

/-! ## A316903.P3577835566415341325

`∩[A179983(n+1), A316857(n+1)]`
-/

namespace A316903.P3577835566415341325
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179983 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316857 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A316903.P3577835566415341325

/-! ## A316903.P17049134930374068952

`∩[A212167(n+1), A316857(n+1)]`
-/

namespace A316903.P17049134930374068952
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212167 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316857 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A316903.P17049134930374068952

/-!
# A316904: Heinz numbers of aperiodic integer partitions into relatively prime parts whose reciprocal sum is an integer.

The programs for A316904, there is no canonical definition to state claims against.
-/

/-! ## A316904.P1668083165650646518

`record[A316437(A316902(n+1))]`
-/

namespace A316904.P1668083165650646518
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316437 (A316902 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A316904.P1668083165650646518

/-! ## A316904.P11969782865896979939

`filter[A316902(n+1), A327532(#)]`
-/

namespace A316904.P11969782865896979939
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316902 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A327532 (f1 j).toNat = 1) n)

end

end A316904.P11969782865896979939

/-! ## A316904.P8555558079787333900

`∩[A065502(n+1), A316902(n+1)]`
-/

namespace A316904.P8555558079787333900
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065502 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316902 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A316904.P8555558079787333900

/-! ## A316904.P1782889324741116455

`record[A052410(A316900(n+1))]`
-/

namespace A316904.P1782889324741116455
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052410 (A316900 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A316904.P1782889324741116455

/-! ## A316904.P10019982765565541674

`filter[A316900(n+1), A132350(#)]`
-/

namespace A316904.P10019982765565541674
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316900 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A132350 (f1 j).toNat = 1) n)

end

end A316904.P10019982765565541674

/-!
# A316905: a(n) is the index of the first occurrence of n in A316774.

The programs for A316905, there is no canonical definition to state claims against.
-/

/-! ## A316905.P15258312289581872637

`A330447(n)-A330448(n)`
-/

namespace A316905.P15258312289581872637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330447 n - A330448 n

end

end A316905.P15258312289581872637

/-! ## A316905.P2840801229592849499

`A316774(A316984(A330440(A316774(A330440(n+1))+1)))`
-/

namespace A316905.P2840801229592849499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316774 (A316984 (A330440 (A316774 (A330440 (n + 1)).toNat + 1).toNat).toNat).toNat

end

end A316905.P2840801229592849499

/-! ## A316905.P3727838067317454984

`A330440(A187829(n+1))+Δ[A330448(n)]`
-/

namespace A316905.P3727838067317454984
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330448 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330440 (A187829 (n + 1)).toNat + (f1 (n + 1) - f1 n)

end

end A316905.P3727838067317454984

/-! ## A316905.P16663012188925656649

`A330448(A187829(n+1))+A330440(n+1)-A330448(n)`
-/

namespace A316905.P16663012188925656649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330448 (A187829 (n + 1)).toNat + (A330440 (n + 1) - A330448 n)

end

end A316905.P16663012188925656649

/-!
# A316907: Numbers k such that 2^(k-1) == 1 (mod k) and p-1 does not divide k-1 for every prime p dividing k.

The programs for A316907, there is no canonical definition to state claims against.
-/

/-! ## A316907.P6170273952565249776

`∩[A001567(n+1), A306097(n+1)]`
-/

namespace A316907.P6170273952565249776
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001567 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306097 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A316907.P6170273952565249776

/-! ## A316907.P18311501422287542978

`∩[A066488(n+1), A306097(n+1)]`
-/

namespace A316907.P18311501422287542978
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066488 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306097 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A316907.P18311501422287542978

/-! ## A316907.P2112598080436803924

`∩[A153508(n+1), A306097(n+1)]`
-/

namespace A316907.P2112598080436803924
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153508 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306097 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A316907.P2112598080436803924

/-! ## A316907.P7447231165064374757

`∩[A306097(n+1), A316906(n+1)]`
-/

namespace A316907.P7447231165064374757
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306097 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316906 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A316907.P7447231165064374757

/-! ## A316907.P7391426477828640750

`∩[A291617(n+1), A316906(n+1)]`
-/

namespace A316907.P7391426477828640750
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291617 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316906 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A316907.P7391426477828640750

/-!
# A316912: Define K(n) = Integral_{t=0..1} (-1/2)^n/(1+t)*((1-t)^2*t^2/(1+t))^n*dt and write K(n) = d(n)*log(2) - b(n)/a(n) where a(n), d(n), b(n) are positive integers; sequence gives a(n).

The programs for A316912, there is no canonical definition to state claims against.
-/

/-! ## A316912.P1908482223495445187

`A003958(C(A074400(2*n+1), n+1))`
-/

namespace A316912.P1908482223495445187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003958 (Nat.choose (A074400 (2 * n + 1)).toNat (n + 1))

end

end A316912.P1908482223495445187

/-!
# A316916: Records in A299773.

The programs for A316916, there is no canonical definition to state claims against.
-/

/-! ## A316916.P5387594130787555106

`record[A299773(n+1)]`
-/

namespace A316916.P5387594130787555106
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299773 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A316916.P5387594130787555106

/-! ## A316916.P184267026584467396

`A299773(A316886(n+1))`
-/

namespace A316916.P184267026584467396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299773 (A316886 (n + 1)).toNat

end

end A316916.P184267026584467396

/-! ## A316916.P14913363194244738769

`record[ratio[A299773(A100727(n))]]`
-/

namespace A316916.P14913363194244738769
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299773 (A100727 n).toNat

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℚ) / (f2 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A316916.P14913363194244738769

/-! ## A316916.P6071384439059046337

`A094759(A299773(A002093(n+1)))`
-/

namespace A316916.P6071384439059046337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094759 (A299773 (A002093 (n + 1)).toNat).toNat

end

end A316916.P6071384439059046337

/-!
# A316917: Let g(n) be the n-th maximal prime gap; a(n) = 1 if g(n) has record merit, 0 if it does not.

The programs for A316917, there is no canonical definition to state claims against.
-/

/-! ## A316917.P16277855094804406235

`A341347(or(A068914(n), A252250(n+1)))`
-/

namespace A316917.P16277855094804406235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341347 (Int.lor (A068914 n) (A252250 (n + 1))).toNat

end

end A316917.P16277855094804406235

/-! ## A316917.P5630141740856938324

`A062892(A358539(n+4)%A072774(2*(n+2)))`
-/

namespace A316917.P5630141740856938324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062892 (Int.tmod (A358539 (n + 4)) (A072774 (2 * (n + 2)))).toNat

end

end A316917.P5630141740856938324

/-! ## A316917.P6344831266121286819

`A069250(A128372(n+1))%2`
-/

namespace A316917.P6344831266121286819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A069250 (A128372 (n + 1)).toNat) 2

end

end A316917.P6344831266121286819

/-! ## A316917.P8628414606711427213

`A380668(A357954(n+2))`
-/

namespace A316917.P8628414606711427213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380668 (A357954 (n + 2)).toNat

end

end A316917.P8628414606711427213

/-! ## A316917.P17463251831932831081

`A275606(A089309(n+1)+A061884(2*(n+1)))`
-/

namespace A316917.P17463251831932831081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275606 (A089309 (n + 1) + A061884 (2 * (n + 1))).toNat

end

end A316917.P17463251831932831081

/-!
# A316919: Number of nXn 0..1 arrays with every element unequal to 0, 1, 3, 4, 5, 6 or 7 king-move adjacent elements, with upper left element zero.

The programs for A316919, there is no canonical definition to state claims against.
-/

/-! ## A316919.P15524580506574576846

`A316925(∑[4*n]+1)`
-/

namespace A316919.P15524580506574576846
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316925 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A316919.P15524580506574576846

/-! ## A316919.P4168811033358029005

`record[A214505(n)*A316925(n+1)]`
-/

namespace A316919.P4168811033358029005
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214505 n * A316925 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A316919.P4168811033358029005

/-! ## A316919.P844272097044779183

`record[gcd(A114327(n), A316925(n+1))]`
-/

namespace A316919.P844272097044779183
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A114327 n) (A316925 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A316919.P844272097044779183

/-! ## A316919.P1035513284650449622

`gcd(A017903(n), A316925(A001844(n)))`
-/

namespace A316919.P1035513284650449622
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A017903 n) (A316925 (A001844 n).toNat)

end

end A316919.P1035513284650449622

/-! ## A316919.P5158101402431208797

`lcm(A065357(n), A316925(A001844(n)))`
-/

namespace A316919.P5158101402431208797
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A065357 n) (A316925 (A001844 n).toNat)

end

end A316919.P5158101402431208797

/-!
# A316920: Number of nX3 0..1 arrays with every element unequal to 0, 1, 3, 4, 5, 6 or 7 king-move adjacent elements, with upper left element zero.

The programs for A316920, there is no canonical definition to state claims against.
-/

/-! ## A316920.P1143625046658358460

`A316925(∑[n+2]+4)`
-/

namespace A316920.P1143625046658358460
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316925 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A316920.P1143625046658358460

/-! ## A316920.P3887391797759845192

`or(A000007(n), A316925(A167614(n+1)))`
-/

namespace A316920.P3887391797759845192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A316925 (A167614 (n + 1)).toNat)

end

end A316920.P3887391797759845192

/-! ## A316920.P4399336017398683417

`A316925(A167614(n+1))+A000038(n+1)`
-/

namespace A316920.P4399336017398683417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316925 (A167614 (n + 1)).toNat + A000038 (n + 1)

end

end A316920.P4399336017398683417

/-! ## A316920.P10197316737670327462

`A316925(A167614(n+1))+A280492(n+1)`
-/

namespace A316920.P10197316737670327462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316925 (A167614 (n + 1)).toNat + A280492 (n + 1)

end

end A316920.P10197316737670327462

/-! ## A316920.P12823742613287374306

`A316925(A167614(n+1))%Δ[A316948(n+1)]`
-/

namespace A316920.P12823742613287374306
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316948 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A316925 (A167614 (n + 1)).toNat) (f1 (n + 1) - f1 n)

end

end A316920.P12823742613287374306

/-!
# A316921: Number of nX4 0..1 arrays with every element unequal to 0, 1, 3, 4, 5, 6 or 7 king-move adjacent elements, with upper left element zero.

The programs for A316921, there is no canonical definition to state claims against.
-/

/-! ## A316921.P8985437935217171426

`A316925(A374004(n+1))`
-/

namespace A316921.P8985437935217171426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316925 (A374004 (n + 1)).toNat

end

end A316921.P8985437935217171426

/-! ## A316921.P3206914682786465095

`A316925(A141214(n)+7)`
-/

namespace A316921.P3206914682786465095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316925 (A141214 n + 7).toNat

end

end A316921.P3206914682786465095

/-! ## A316921.P1298075247549643073

`A316925(A052905(n)+9)`
-/

namespace A316921.P1298075247549643073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316925 (A052905 n + 9).toNat

end

end A316921.P1298075247549643073

/-! ## A316921.P12564190919203095528

`A316925(A167614(n+2)+1)`
-/

namespace A316921.P12564190919203095528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316925 (A167614 (n + 2) + 1).toNat

end

end A316921.P12564190919203095528

/-! ## A316921.P8354597792572918976

`A316925(A141214(n+1))`
-/

namespace A316921.P8354597792572918976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316925 (A141214 (n + 1)).toNat

end

end A316921.P8354597792572918976

/-!
# A316922: Number of nX5 0..1 arrays with every element unequal to 0, 1, 3, 4, 5, 6 or 7 king-move adjacent elements, with upper left element zero.

The programs for A316922, there is no canonical definition to state claims against.
-/

/-! ## A316922.P15238701540857051940

`A316925(A374005(n+1))`
-/

namespace A316922.P15238701540857051940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316925 (A374005 (n + 1)).toNat

end

end A316922.P15238701540857051940

/-! ## A316922.P4971752222262746556

`A316925(A167499(n+3))`
-/

namespace A316922.P4971752222262746556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316925 (A167499 (n + 3)).toNat

end

end A316922.P4971752222262746556

/-! ## A316922.P2948485583339054835

`A316925(A155212(n)+13)`
-/

namespace A316922.P2948485583339054835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316925 (A155212 n + 13).toNat

end

end A316922.P2948485583339054835

/-! ## A316922.P12063751332203103151

`A316925(A056000(n)+15)`
-/

namespace A316922.P12063751332203103151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316925 (A056000 n + 15).toNat

end

end A316922.P12063751332203103151

/-! ## A316922.P11672450998722452877

`A316925(eq[7, A066657(n)])`
-/

namespace A316922.P11672450998722452877
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316925 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A316922.P11672450998722452877

/-!
# A316923: Number of nX6 0..1 arrays with every element unequal to 0, 1, 3, 4, 5, 6 or 7 king-move adjacent elements, with upper left element zero.

The programs for A316923, there is no canonical definition to state claims against.
-/

/-! ## A316923.P3070481256503024935

`A316925(A374007(n+1))`
-/

namespace A316923.P3070481256503024935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316925 (A374007 (n + 1)).toNat

end

end A316923.P3070481256503024935

/-! ## A316923.P10835897310933765012

`A316925(eq[7, A131818(n+1)])`
-/

namespace A316923.P10835897310933765012
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316925 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A316923.P10835897310933765012

/-! ## A316923.P4487275663382883932

`A316925(A052905(n+3))`
-/

namespace A316923.P4487275663382883932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316925 (A052905 (n + 3)).toNat

end

end A316923.P4487275663382883932

/-! ## A316923.P11172565105748152310

`A316925(eq[3, A219347(n)])`
-/

namespace A316923.P11172565105748152310
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316925 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A316923.P11172565105748152310

/-! ## A316923.P7314220174961474812

`A316925(eq[5, A193592(n)])`
-/

namespace A316923.P7314220174961474812
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316925 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A316923.P7314220174961474812

/-!
# A316924: Number of nX7 0..1 arrays with every element unequal to 0, 1, 3, 4, 5, 6 or 7 king-move adjacent elements, with upper left element zero.

The programs for A316924, there is no canonical definition to state claims against.
-/

/-! ## A316924.P6038416215803332011

`A316925(A374008(n+1))`
-/

namespace A316924.P6038416215803332011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316925 (A374008 (n + 1)).toNat

end

end A316924.P6038416215803332011

/-! ## A316924.P17288055231271547001

`A316925(eq[8, A131818(n+1)])`
-/

namespace A316924.P17288055231271547001
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316925 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A316924.P17288055231271547001

/-! ## A316924.P1704587401832161631

`A316925(A055999(n+4))`
-/

namespace A316924.P1704587401832161631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316925 (A055999 (n + 4)).toNat

end

end A316924.P1704587401832161631

/-! ## A316924.P10202509255284674467

`A316925(eq[4, A219347(n)])`
-/

namespace A316924.P10202509255284674467
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316925 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A316924.P10202509255284674467

/-! ## A316924.P13711052655506768093

`A316925(eq[6, A193592(n)])`
-/

namespace A316924.P13711052655506768093
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316925 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A316924.P13711052655506768093

/-!
# A316925: T(n,k)=Number of nXk 0..1 arrays with every element unequal to 0, 1, 3, 4, 5, 6 or 7 king-move adjacent elements, with upper left element zero.

The programs for A316925, there is no canonical definition to state claims against.
-/

/-! ## A316925.P14296629759453301109

`A309785(A299321(n+1))+A305649(n+1)`
-/

namespace A316925.P14296629759453301109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309785 (A299321 (n + 1)).toNat + A305649 (n + 1)

end

end A316925.P14296629759453301109

/-! ## A316925.P11211599337215259630

`A305649(n+1)+A004198(A185044(n))`
-/

namespace A316925.P11211599337215259630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305649 (n + 1) + A004198 (A185044 n).toNat

end

end A316925.P11211599337215259630

/-! ## A316925.P9378160381859501269

`A305649(n+1)+A230533(A159623(n))`
-/

namespace A316925.P9378160381859501269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305649 (n + 1) + A230533 (A159623 n).toNat

end

end A316925.P9378160381859501269

/-! ## A316925.P16293858907715961956

`A309785(A331562(n))+A305649(n+1)`
-/

namespace A316925.P16293858907715961956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309785 (A331562 n).toNat + A305649 (n + 1)

end

end A316925.P16293858907715961956

/-! ## A316925.P4013216411149401497

`A305649(n+1)+A073200(A230533(n+1))`
-/

namespace A316925.P4013216411149401497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305649 (n + 1) + A073200 (A230533 (n + 1)).toNat

end

end A316925.P4013216411149401497

/-!
# A316926: Number of n X n 0..1 arrays with every element unequal to 0, 2, 3, 4, 5, 6 or 7 king-move adjacent elements, with upper left element zero.

The programs for A316926, there is no canonical definition to state claims against.
-/

/-! ## A316926.P16342455012798714993

`A316932(∑[4*n]+1)`
-/

namespace A316926.P16342455012798714993
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316932 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A316926.P16342455012798714993

/-! ## A316926.P5777813401305278356

`record[A003982(n)*A316932(n+1)]`
-/

namespace A316926.P5777813401305278356
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A316932 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A316926.P5777813401305278356

/-! ## A316926.P503524166515133606

`record[gcd(A114327(n), A316932(n+1))]`
-/

namespace A316926.P503524166515133606
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A114327 n) (A316932 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A316926.P503524166515133606

/-! ## A316926.P36051348141574504

`gcd(A017903(n), A316932(A001844(n)))`
-/

namespace A316926.P36051348141574504
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A017903 n) (A316932 (A001844 n).toNat)

end

end A316926.P36051348141574504

/-! ## A316926.P13756924917881645506

`or(A000007(n), A316932(A001844(n)))`
-/

namespace A316926.P13756924917881645506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A316932 (A001844 n).toNat)

end

end A316926.P13756924917881645506

/-!
# A316927: Number of n X 3 0..1 arrays with every element unequal to 0, 2, 3, 4, 5, 6 or 7 king-move adjacent elements, with upper left element zero.

The programs for A316927, there is no canonical definition to state claims against.
-/

/-! ## A316927.P6492785858817135042

`A317703(∑[n+2]+4)`
-/

namespace A316927.P6492785858817135042
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317703 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A316927.P6492785858817135042

/-! ## A316927.P9759492375841158139

`A317703(A167614(n+1))+A180472(n)`
-/

namespace A316927.P9759492375841158139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317703 (A167614 (n + 1)).toNat + A180472 n

end

end A316927.P9759492375841158139

/-! ## A316927.P7859062372560653427

`gcd(A010894(n), A317703(A167614(n+1)))`
-/

namespace A316927.P7859062372560653427
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A010894 (n + 21)) (A317703 (A167614 (n + 1)).toNat)

end

end A316927.P7859062372560653427

/-! ## A316927.P9262545250743651753

`or(A025465(n), A317703(A167614(n+1)))`
-/

namespace A316927.P9262545250743651753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A025465 n) (A317703 (A167614 (n + 1)).toNat)

end

end A316927.P9262545250743651753

/-! ## A316927.P14815532533074663710

`A062513(n+1)*A317703(A167614(n+1))`
-/

namespace A316927.P14815532533074663710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062513 (n + 1) * A317703 (A167614 (n + 1)).toNat

end

end A316927.P14815532533074663710

/-!
# A316928: Number of nX4 0..1 arrays with every element unequal to 0, 2, 3, 4, 5, 6 or 7 king-move adjacent elements, with upper left element zero.

The programs for A316928, there is no canonical definition to state claims against.
-/

/-! ## A316928.P7208834933717615148

`A317703(A141214(n)+7)`
-/

namespace A316928.P7208834933717615148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317703 (A141214 n + 7).toNat

end

end A316928.P7208834933717615148

/-! ## A316928.P3679930870764116262

`A317703(A167614(n+2)+1)`
-/

namespace A316928.P3679930870764116262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317703 (A167614 (n + 2) + 1).toNat

end

end A316928.P3679930870764116262

/-! ## A316928.P6722484937883920781

`A317703(Δ[A023545(n+1)-n²])`
-/

namespace A316928.P6722484937883920781
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1) - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317703 (f1 (n + 1) - f1 n).toNat

end

end A316928.P6722484937883920781

/-! ## A316928.P15736473032844047301

`A316932(A374004(n+1))`
-/

namespace A316928.P15736473032844047301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316932 (A374004 (n + 1)).toNat

end

end A316928.P15736473032844047301

/-! ## A316928.P6213657121858915424

`A316932(A141214(n)+7)`
-/

namespace A316928.P6213657121858915424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316932 (A141214 n + 7).toNat

end

end A316928.P6213657121858915424

/-!
# A316929: Number of nX5 0..1 arrays with every element unequal to 0, 2, 3, 4, 5, 6 or 7 king-move adjacent elements, with upper left element zero.

The programs for A316929, there is no canonical definition to state claims against.
-/

/-! ## A316929.P15844516775990681830

`A316932(A374005(n+1))`
-/

namespace A316929.P15844516775990681830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316932 (A374005 (n + 1)).toNat

end

end A316929.P15844516775990681830

/-! ## A316929.P5175559744552627875

`A316932(A155212(n)+13)`
-/

namespace A316929.P5175559744552627875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316932 (A155212 n + 13).toNat

end

end A316929.P5175559744552627875

/-! ## A316929.P13246450143529458520

`A316932(A056000(n)+15)`
-/

namespace A316929.P13246450143529458520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316932 (A056000 n + 15).toNat

end

end A316929.P13246450143529458520

/-! ## A316929.P13594001453018745238

`A316932(eq[7, A066657(n)])`
-/

namespace A316929.P13594001453018745238
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316932 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A316929.P13594001453018745238

/-! ## A316929.P16668425681236993335

`A316932(A034856(n+4)-(n-2))`
-/

namespace A316929.P16668425681236993335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316932 (A034856 (n + 4) - ((n : ℤ) - 2)).toNat

end

end A316929.P16668425681236993335

/-!
# A316930: Number of nX6 0..1 arrays with every element unequal to 0, 2, 3, 4, 5, 6 or 7 king-move adjacent elements, with upper left element zero.

The programs for A316930, there is no canonical definition to state claims against.
-/

/-! ## A316930.P6321417545916196570

`A316932(A374007(n+1))`
-/

namespace A316930.P6321417545916196570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316932 (A374007 (n + 1)).toNat

end

end A316930.P6321417545916196570

/-! ## A316930.P8305369983396354658

`A316932(eq[7, A131818(n+1)])`
-/

namespace A316930.P8305369983396354658
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316932 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A316930.P8305369983396354658

/-! ## A316930.P5835085022886389008

`A316932(A052905(n+3))`
-/

namespace A316930.P5835085022886389008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316932 (A052905 (n + 3)).toNat

end

end A316930.P5835085022886389008

/-! ## A316930.P5192166061885868934

`A316932(eq[3, A219347(n)])`
-/

namespace A316930.P5192166061885868934
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316932 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A316930.P5192166061885868934

/-! ## A316930.P13156153517230225969

`A316932(eq[5, A193592(n)])`
-/

namespace A316930.P13156153517230225969
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316932 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A316930.P13156153517230225969

/-!
# A316931: Number of n X 7 0..1 arrays with every element unequal to 0, 2, 3, 4, 5, 6 or 7 king-move adjacent elements, with upper left element zero.

The programs for A316931, there is no canonical definition to state claims against.
-/

/-! ## A316931.P9327483464574004056

`A316932(A374008(n+1))`
-/

namespace A316931.P9327483464574004056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316932 (A374008 (n + 1)).toNat

end

end A316931.P9327483464574004056

/-! ## A316931.P3095904065150778459

`A316932(A167487(n+5))`
-/

namespace A316931.P3095904065150778459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316932 (A167487 (n + 5)).toNat

end

end A316931.P3095904065150778459

/-! ## A316931.P9858469759918159668

`A316932(A056119(n)+28)`
-/

namespace A316931.P9858469759918159668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316932 (A056119 n + 28).toNat

end

end A316931.P9858469759918159668

/-! ## A316931.P17991867395372596894

`A316932(eq[8, A131818(n+1)])`
-/

namespace A316931.P17991867395372596894
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316932 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A316931.P17991867395372596894

/-! ## A316931.P17733650688636091492

`A316932(A055999(n+4))`
-/

namespace A316931.P17733650688636091492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316932 (A055999 (n + 4)).toNat

end

end A316931.P17733650688636091492

/-!
# A316932: T(n,k)=Number of nXk 0..1 arrays with every element unequal to 0, 2, 3, 4, 5, 6 or 7 king-move adjacent elements, with upper left element zero.

The programs for A316932, there is no canonical definition to state claims against.
-/

/-! ## A316932.P14801017140992851523

`A317703(∑[A010894(n)!])`
-/

namespace A316932.P14801017140992851523
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A010894 (n + 21)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317703 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A316932.P14801017140992851523

/-! ## A316932.P50659540969223064

`A317703(A010894(n)!+n)`
-/

namespace A316932.P50659540969223064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317703 (Nat.factorial (A010894 (n + 21)).toNat + n)

end

end A316932.P50659540969223064

/-! ## A316932.P17919892757584308476

`A317703(n+1)^A062513(n+2)`
-/

namespace A316932.P17919892757584308476
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A317703 (n + 1) : ℚ) ^ (A062513 (n + 2) : ℤ)

end

end A316932.P17919892757584308476

/-! ## A316932.P16587975286557402902

`A317703(∑[A010894(n)^A010894(n)])`
-/

namespace A316932.P16587975286557402902
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A010894 (n + 21) : ℚ) ^ (A010894 (n + 21) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317703 (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A316932.P16587975286557402902

/-! ## A316932.P8934408379116280392

`A317703(n+1)+A000007(A336187(n))`
-/

namespace A316932.P8934408379116280392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317703 (n + 1) + A000007 (A336187 n).toNat

end

end A316932.P8934408379116280392

/-!
# A316933: Cumulative sums of A316918.

The programs for A316933, there is no canonical definition to state claims against.
-/

/-! ## A316933.P3467300007618030334

`∑[A316918(n+1)]`
-/

namespace A316933.P3467300007618030334
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316918 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A316933.P3467300007618030334

/-! ## A316933.P11076592386281872366

`A245543(2*2^lt[n, ∑{p}[n+1, #]])+∑[n+5]`
-/

namespace A316933.P11076592386281872366
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n), p

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245543 (2 * 2 ^ SequenceMachineLib.nth (fun j => f1 j < f2 j) n) + ((∑ j ∈ Finset.range (n + 1), f4 j : ℕ) : ℤ)

end

end A316933.P11076592386281872366

/-!
# A316936: a(n) is the maximum state complexity of the language C(w) of conjugates of w, over all length-n binary strings w.

The programs for A316936, there is no canonical definition to state claims against.
-/

/-! ## A316936.P6296539960274637615

`∑[∑[2*char[comp[2^n]]]]+1`
-/

namespace A316936.P6296539960274637615
noncomputable section

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

open Classical in
def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f4 j ≠ x) n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (if ∃ j, f3 j = n then 1 else 0)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A316936.P6296539960274637615

/-! ## A316936.P10940558302127847934

`∑[a(floor(n/2))+n-gcd(2, n)]` with `a(0)=3, a(1)=2`
-/

namespace A316936.P10940558302127847934
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [3, 2] fun n f1 =>
  f1 ⌊(n : ℚ) / 2⌋.toNat + (n : ℤ) - (Nat.gcd 2 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A316936.P10940558302127847934

/-! ## A316936.P17164108155176979791

`or(1, ∑[∑[2*A347523(n)]])`
-/

namespace A316936.P17164108155176979791
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A347523 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A316936.P17164108155176979791

/-! ## A316936.P8573895579464957859

`A005408(∑[∑[char[comp[2^n]]]])`
-/

namespace A316936.P8573895579464957859
noncomputable section

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

open Classical in
def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f4 j ≠ x) n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = n then 1 else 0

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A316936.P8573895579464957859

/-! ## A316936.P323477090774657950

`or(1, 2*(∑[n+2]-∑[A070941(n)])+1)`
-/

namespace A316936.P323477090774657950
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070941 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (2 * (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - ∑ j ∈ Finset.range (n + 1), f2 j) + 1)

end

end A316936.P323477090774657950

/-! ## A316936.P16611868055676604611

`A144396(∑[∑[A347523(n)]])`
-/

namespace A316936.P16611868055676604611
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347523 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144396 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A316936.P16611868055676604611

/-! ## A316936.P6539183132005718495

`A144396(∑[A182220(n+1)])`
-/

namespace A316936.P6539183132005718495
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182220 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144396 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A316936.P6539183132005718495

/-! ## A316936.P7756711131632625123

`A004273(∑[∑[A347523(n)]]+1)`
-/

namespace A316936.P7756711131632625123
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347523 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (∑ j ∈ Finset.range (n + 1), f1 j + 1).toNat

end

end A316936.P7756711131632625123

/-! ## A316936.P12971427430748232924

`A004273(∑[A182220(n+1)]+1)`
-/

namespace A316936.P12971427430748232924
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182220 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (∑ j ∈ Finset.range (n + 1), f1 j + 1).toNat

end

end A316936.P12971427430748232924

/-! ## A316936.P7514784829963090216

`A004274(∑[A182220(n+1)]+2)`
-/

namespace A316936.P7514784829963090216
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182220 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004274 (∑ j ∈ Finset.range (n + 1), f1 j + 2).toNat

end

end A316936.P7514784829963090216

/-!
# A316937: a(n) = 3*a(n-1) - a(n-2) - 2*a(n-3) for n > 2, a(0)=3, a(1)=10, a(2)=26.

The programs for A316937, the canonical program `A316937.P16112328070206874310` is in `Seq.B000.C043`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A316937 has offset 0).

The definition of A316937 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3*a(n-1)-a(n-2)-2*a(n-3)` (program `A316937.P16112328070206874310`, by `A316937.P16112328070206874310.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A316937.P17069134697563852150

`ogf((3+x-x^2)/(1-3x+x^2+2x^3))`
-/

namespace A316937.P17069134697563852150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, 1, -1] [1, -3, 1, 2] n

end

end A316937.P17069134697563852150

namespace A316937

/-- `ogf((3+x-x^2)/(1-3x+x^2+2x^3))` -/
def P17069134697563852150.Spec : Prop :=
  ∀ n, P17069134697563852150.a n = A316937 n

end A316937

/-! ## A316937.P2327407708018378222

`13*2^n-2*A000045(n+5)`
-/

namespace A316937.P2327407708018378222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (13 * 2 ^ n : ℤ) - 2 * A000045 (n + 5)

end

end A316937.P2327407708018378222

namespace A316937

/-- `13*2^n-2*A000045(n+5)` -/
def P2327407708018378222.Spec : Prop :=
  ∀ n, P2327407708018378222.a n = A316937 n

end A316937

/-! ## A316937.P16112328070206874310

`3*a(n-1)-a(n-2)-2*a(n-3)` with `a(0)=3, a(1)=10, a(2)=26`

The canonical program, it is in `Seq.B000.C043`.
-/

namespace A316937

/-- `3*a(n-1)-a(n-2)-2*a(n-3)` -/
def P16112328070206874310.Spec : Prop :=
  ∀ n, P16112328070206874310.a n = A316937 n

theorem P16112328070206874310.correct : P16112328070206874310.Spec := by
  intro n
  simp only [A316937]

end A316937

/-! ## A316937.P12324421653894313042

`2*(A000045(n+2)+a(n-1))` with `a(0)=3`
-/

namespace A316937.P12324421653894313042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  2 * (A000045 (n + 2) + a (n - 1))

end

end A316937.P12324421653894313042

namespace A316937

/-- `2*(A000045(n+2)+a(n-1))` -/
def P12324421653894313042.Spec : Prop :=
  ∀ n, P12324421653894313042.a n = A316937 n

end A316937

/-! ## A316937.P16238315955640952137

`A175660(n+1)+A099166(n)`
-/

namespace A316937.P16238315955640952137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175660 (n + 1) + A099166 n

end

end A316937.P16238315955640952137

namespace A316937

/-- `A175660(n+1)+A099166(n)` -/
def P16238315955640952137.Spec : Prop :=
  ∀ n, P16238315955640952137.a n = A316937 n

end A316937

/-! ## A316937.P4523606051648550810

`A316528(n)+A167821(n+3)`
-/

namespace A316937.P4523606051648550810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316528 n + A167821 (n + 3)

end

end A316937.P4523606051648550810

namespace A316937

/-- `A316528(n)+A167821(n+3)` -/
def P4523606051648550810.Spec : Prop :=
  ∀ n, P4523606051648550810.a n = A316937 n

end A316937

/-! ## A316937.P27739608045349723

`A175660(n+1)+A175660(n)+A027934(n)`
-/

namespace A316937.P27739608045349723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175660 (n + 1) + (A175660 n + A027934 n)

end

end A316937.P27739608045349723

namespace A316937

/-- `A175660(n+1)+A175660(n)+A027934(n)` -/
def P27739608045349723.Spec : Prop :=
  ∀ n, P27739608045349723.a n = A316937 n

end A316937

/-! ## A316937.P4991796829728631996

`A027974(n+1)-(A008466(n)+A000079(n+1))`
-/

namespace A316937.P4991796829728631996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027974 (n + 1) - (A008466 n + A000079 (n + 1))

end

end A316937.P4991796829728631996

namespace A316937

/-- `A027974(n+1)-(A008466(n)+A000079(n+1))` -/
def P4991796829728631996.Spec : Prop :=
  ∀ n, P4991796829728631996.a n = A316937 n

end A316937

/-! ## A316937.P13592554948166192334

`A027974(n+1)-(A027934(n+1)+A000079(n))`
-/

namespace A316937.P13592554948166192334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027974 (n + 1) - (A027934 (n + 1) + A000079 n)

end

end A316937.P13592554948166192334

namespace A316937

/-- `A027974(n+1)-(A027934(n+1)+A000079(n))` -/
def P13592554948166192334.Spec : Prop :=
  ∀ n, P13592554948166192334.a n = A316937 n

end A316937

/-! ## A316937.P1284515347527446122

`A175660(n+1)+A175660(n+1)-A175657(n)`
-/

namespace A316937.P1284515347527446122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175660 (n + 1) + (A175660 (n + 1) - A175657 n)

end

end A316937.P1284515347527446122

namespace A316937

/-- `A175660(n+1)+A175660(n+1)-A175657(n)` -/
def P1284515347527446122.Spec : Prop :=
  ∀ n, P1284515347527446122.a n = A316937 n

end A316937

/-! ## A316937.P3487175690441275030

`A020714(n+1)+A007283(n)-A090991(n+2)`
-/

namespace A316937.P3487175690441275030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020714 (n + 1) + (A007283 n - A090991 (n + 2))

end

end A316937.P3487175690441275030

namespace A316937

/-- `A020714(n+1)+A007283(n)-A090991(n+2)` -/
def P3487175690441275030.Spec : Prop :=
  ∀ n, P3487175690441275030.a n = A316937 n

end A316937

/-! ## A316937.P17671524288524552810

`A008466(n+1)+A175660(n+1)+A074878(n+1)`
-/

namespace A316937.P17671524288524552810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008466 (n + 1) + (A175660 (n + 1) + A074878 (n + 1))

end

end A316937.P17671524288524552810

namespace A316937

/-- `A008466(n+1)+A175660(n+1)+A074878(n+1)` -/
def P17671524288524552810.Spec : Prop :=
  ∀ n, P17671524288524552810.a n = A316937 n

end A316937

/-! ## A316937.P890825275062514409

`A250798(n+1)-A005009(n)`
-/

namespace A316937.P890825275062514409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250798 (n + 1) - A005009 n

end

end A316937.P890825275062514409

namespace A316937

/-- `A250798(n+1)-A005009(n)` -/
def P890825275062514409.Spec : Prop :=
  ∀ n, P890825275062514409.a n = A316937 n

end A316937

/-! ## A316937.P964743541924562843

`A316528(n+2)-A005009(n)`
-/

namespace A316937.P964743541924562843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316528 (n + 2) - A005009 n

end

end A316937.P964743541924562843

namespace A316937

/-- `A316528(n+2)-A005009(n)` -/
def P964743541924562843.Spec : Prop :=
  ∀ n, P964743541924562843.a n = A316937 n

end A316937

/-! ## A316937.P2242713159314420100

`A316528(n+2)-A070875(2*n+1)`
-/

namespace A316937.P2242713159314420100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316528 (n + 2) - A070875 (2 * n + 1)

end

end A316937.P2242713159314420100

namespace A316937

/-- `A316528(n+2)-A070875(2*n+1)` -/
def P2242713159314420100.Spec : Prop :=
  ∀ n, P2242713159314420100.a n = A316937 n

end A316937

/-!
# A316938: Triangle read by rows formed using Pascal's rule except that n-th row begins and ends with Fibonacci(n+4).

The programs for A316938, the canonical program `A316938.P13964179594612945196` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A316938 has offset 0).

The definition of A316938 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A316938.P13964179594612945196

`3*A316939(n)-A108617(n)`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A316938

/-- `3*A316939(n)-A108617(n)` -/
def P13964179594612945196.Spec : Prop :=
  ∀ n, P13964179594612945196.a n = A316938 n

theorem P13964179594612945196.correct : P13964179594612945196.Spec := by
  intro n
  simp only [A316938]

end A316938

/-! ## A316938.P13317237827841011177

`A074829(n+1)+2*A316939(n)`
-/

namespace A316938.P13317237827841011177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074829 (n + 1) + 2 * A316939 n

end

end A316938.P13317237827841011177

namespace A316938

/-- `A074829(n+1)+2*A316939(n)` -/
def P13317237827841011177.Spec : Prop :=
  ∀ n, P13317237827841011177.a n = A316938 n

theorem P13317237827841011177.correct : P13317237827841011177.Spec := by
  intro n
  simp only [A316938, Nat.add_sub_cancel, A316938.P13317237827841011177.a, A316938.P13964179594612945196.a, A074829, A074829.P5145561259685631456.a, A108617, A108617.P14334216948877724348.a, A316939, A316939.P16182272849058742776.a, A061579, A061579.P7462537595056690109.a, A136431, A136431.P5608628864521247328.a, A013609, A013609.P14824901554590578180.a, A056943, A056943.P2657344456391598982.a, A105809, A105809.P10491905477047754399.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A316938

/-! ## A316938.P3560778749309858645

`A008486(A074829(n+1))+2*A108617(n)`
-/

namespace A316938.P3560778749309858645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 (A074829 (n + 1)).toNat + 2 * A108617 n

end

end A316938.P3560778749309858645

namespace A316938

/-- `A008486(A074829(n+1))+2*A108617(n)` -/
def P3560778749309858645.Spec : Prop :=
  ∀ n, P3560778749309858645.a n = A316938 n

end A316938

/-! ## A316938.P17534152670992367154

`A008486(A074829(n+1))+A005843(A108617(n))`
-/

namespace A316938.P17534152670992367154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 (A074829 (n + 1)).toNat + A005843 (A108617 n).toNat

end

end A316938.P17534152670992367154

namespace A316938

/-- `A008486(A074829(n+1))+A005843(A108617(n))` -/
def P17534152670992367154.Spec : Prop :=
  ∀ n, P17534152670992367154.a n = A316938 n

end A316938

/-! ## A316938.P16938161035157751171

`A008486(A316939(n))-A108617(n)`
-/

namespace A316938.P16938161035157751171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 (A316939 n).toNat - A108617 n

end

end A316938.P16938161035157751171

namespace A316938

/-- `A008486(A316939(n))-A108617(n)` -/
def P16938161035157751171.Spec : Prop :=
  ∀ n, P16938161035157751171.a n = A316938 n

end A316938

/-! ## A316938.P15549837994965196806

`A074829(n+1)+A004277(A316939(n))`
-/

namespace A316938.P15549837994965196806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074829 (n + 1) + A004277 (A316939 n).toNat

end

end A316938.P15549837994965196806

namespace A316938

/-- `A074829(n+1)+A004277(A316939(n))` -/
def P15549837994965196806.Spec : Prop :=
  ∀ n, P15549837994965196806.a n = A316938 n

end A316938

/-! ## A316938.P780746590627587490

`A008486(A108617(n)+A074829(n+1))-A108617(n)`
-/

namespace A316938.P780746590627587490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 (A108617 n + A074829 (n + 1)).toNat - A108617 n

end

end A316938.P780746590627587490

namespace A316938

/-- `A008486(A108617(n)+A074829(n+1))-A108617(n)` -/
def P780746590627587490.Spec : Prop :=
  ∀ n, P780746590627587490.a n = A316938 n

end A316938

/-! ## A316938.P14117608483044935064

`A074829(n+1)+A004277(A108617(n)+A074829(n+1))`
-/

namespace A316938.P14117608483044935064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074829 (n + 1) + A004277 (A108617 n + A074829 (n + 1)).toNat

end

end A316938.P14117608483044935064

namespace A316938

/-- `A074829(n+1)+A004277(A108617(n)+A074829(n+1))` -/
def P14117608483044935064.Spec : Prop :=
  ∀ n, P14117608483044935064.a n = A316938 n

end A316938

/-! ## A316938.P13179075965806261875

`A074829(n+1)+A005843(A108617(n)+A074829(n+1))`
-/

namespace A316938.P13179075965806261875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074829 (n + 1) + A005843 (A108617 n + A074829 (n + 1)).toNat

end

end A316938.P13179075965806261875

namespace A316938

/-- `A074829(n+1)+A005843(A108617(n)+A074829(n+1))` -/
def P13179075965806261875.Spec : Prop :=
  ∀ n, P13179075965806261875.a n = A316938 n

end A316938

/-! ## A316938.P12187041430014693035

`A379837(n)+A316939(n)`
-/

namespace A316938.P12187041430014693035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379837 n + A316939 n

end

end A316938.P12187041430014693035

namespace A316938

/-- `A379837(n)+A316939(n)` -/
def P12187041430014693035.Spec : Prop :=
  ∀ n, P12187041430014693035.a n = A316938 n

end A316938

/-!
# A316939: Triangle read by rows formed using Pascal's rule except that n-th row begins and ends with Fibonacci(n+2).

The programs for A316939, the canonical program `A316939.P16182272849058742776` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A316939 has offset 0).

The definition of A316939 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A316939.P16182272849058742776

`A108617(n)+A074829(n+1)`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A316939

/-- `A108617(n)+A074829(n+1)` -/
def P16182272849058742776.Spec : Prop :=
  ∀ n, P16182272849058742776.a n = A316939 n

theorem P16182272849058742776.correct : P16182272849058742776.Spec := by
  intro n
  simp only [A316939]

end A316939

/-! ## A316939.P18091206474423085046

`(A316938(n)+A108617(n))/3`
-/

namespace A316939.P18091206474423085046
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A316938 n + A108617 n : ℚ) / 3

end

end A316939.P18091206474423085046

namespace A316939

/-- `(A316938(n)+A108617(n))/3` -/
def P18091206474423085046.Spec : Prop :=
  ∀ n, P18091206474423085046.a n = (A316939 n : ℚ)

theorem P18091206474423085046.correct : P18091206474423085046.Spec := by
  intro n
  simp only [A316939, Nat.add_sub_cancel, A316939.P18091206474423085046.a, A316939.P16182272849058742776.a, A074829, A074829.P5145561259685631456.a, A108617, A108617.P14334216948877724348.a, A316938, A316938.P13964179594612945196.a, A061579, A061579.P7462537595056690109.a, A136431, A136431.P5608628864521247328.a, A013609, A013609.P14824901554590578180.a, A056943, A056943.P2657344456391598982.a, A105809, A105809.P10491905477047754399.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A316939

/-! ## A316939.P2326369167692733364

`(A316938(n)-A074829(n+1))/2`
-/

namespace A316939.P2326369167692733364
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A316938 n - A074829 (n + 1) : ℚ) / 2

end

end A316939.P2326369167692733364

namespace A316939

/-- `(A316938(n)-A074829(n+1))/2` -/
def P2326369167692733364.Spec : Prop :=
  ∀ n, P2326369167692733364.a n = (A316939 n : ℚ)

theorem P2326369167692733364.correct : P2326369167692733364.Spec := by
  intro n
  simp only [A316939, Nat.add_sub_cancel, A316939.P2326369167692733364.a, A316939.P16182272849058742776.a, A074829, A074829.P5145561259685631456.a, A108617, A108617.P14334216948877724348.a, A316938, A316938.P13964179594612945196.a, A061579, A061579.P7462537595056690109.a, A136431, A136431.P5608628864521247328.a, A013609, A013609.P14824901554590578180.a, A056943, A056943.P2657344456391598982.a, A105809, A105809.P10491905477047754399.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A316939

/-! ## A316939.P15998471459362261103

`A108617(n)+∑[A105809(n)-A108617(n)]`
-/

namespace A316939.P15998471459362261103
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105809 n - A108617 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108617 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A316939.P15998471459362261103

namespace A316939

/-- `A108617(n)+∑[A105809(n)-A108617(n)]` -/
def P15998471459362261103.Spec : Prop :=
  ∀ n, P15998471459362261103.a n = A316939 n

end A316939

/-! ## A316939.P3131264321449885635

`A136431(A061579(n))+A108617(A007401(n+1))`
-/

namespace A316939.P3131264321449885635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136431 (A061579 n).toNat + A108617 (A007401 (n + 1)).toNat

end

end A316939.P3131264321449885635

namespace A316939

/-- `A136431(A061579(n))+A108617(A007401(n+1))` -/
def P3131264321449885635.Spec : Prop :=
  ∀ n, P3131264321449885635.a n = A316939 n

end A316939

/-! ## A316939.P8012500387727309634

`A108617(A007401(n+1))+A108617(n)-A136431(n)`
-/

namespace A316939.P8012500387727309634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108617 (A007401 (n + 1)).toNat + (A108617 n - A136431 n)

end

end A316939.P8012500387727309634

namespace A316939

/-- `A108617(A007401(n+1))+A108617(n)-A136431(n)` -/
def P8012500387727309634.Spec : Prop :=
  ∀ n, P8012500387727309634.a n = A316939 n

end A316939

/-! ## A316939.P16497615928983723265

`A136431(n)+A108617(A014132(n+1))`
-/

namespace A316939.P16497615928983723265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136431 n + A108617 (A014132 (n + 1)).toNat

end

end A316939.P16497615928983723265

namespace A316939

/-- `A136431(n)+A108617(A014132(n+1))` -/
def P16497615928983723265.Spec : Prop :=
  ∀ n, P16497615928983723265.a n = A316939 n

end A316939

/-! ## A316939.P16764255620458175316

`A136431(n)+A108617(A007401(n+1)+1)`
-/

namespace A316939.P16764255620458175316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136431 n + A108617 (A007401 (n + 1) + 1).toNat

end

end A316939.P16764255620458175316

namespace A316939

/-- `A136431(n)+A108617(A007401(n+1)+1)` -/
def P16764255620458175316.Spec : Prop :=
  ∀ n, P16764255620458175316.a n = A316939 n

end A316939

/-! ## A316939.P11285638452326020830

`A014682(A316938(n)-A074829(n+1))`
-/

namespace A316939.P11285638452326020830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A316938 n - A074829 (n + 1)).toNat

end

end A316939.P11285638452326020830

namespace A316939

/-- `A014682(A316938(n)-A074829(n+1))` -/
def P11285638452326020830.Spec : Prop :=
  ∀ n, P11285638452326020830.a n = A316939 n

end A316939

/-! ## A316939.P609016073329737979

`A002264(A316938(n)+A108617(n))`
-/

namespace A316939.P609016073329737979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A316938 n + A108617 n).toNat

end

end A316939.P609016073329737979

namespace A316939

/-- `A002264(A316938(n)+A108617(n))` -/
def P609016073329737979.Spec : Prop :=
  ∀ n, P609016073329737979.a n = A316939 n

end A316939

/-!
# A316942: a(n) = n - a(pi(n)) - a(n-pi(n)) with a(1) = a(2) = 1, where pi = A000720.

The programs for A316942, the canonical program `A316942.P3129868701570837006` is in `Seq.B001.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A316942 has offset 1).

The definition of A316942 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n+1-a(A000720(n+1)-1)-a(n-A000720(n+1))` (program `A316942.P3129868701570837006`, by `A316942.P3129868701570837006.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A316942.P5991862015660287509

`n+1-a(A000720(n+1)-1)-a(A062298(n+1)-1)` with `a(0)=1, a(1)=1`
-/

namespace A316942.P5991862015660287509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  (n + 1 : ℤ) - a (A000720 (n + 1) - 1).toNat - a (A062298 (n + 1) - 1).toNat

end

end A316942.P5991862015660287509

namespace A316942

/-- `n+1-a(A000720(n+1)-1)-a(A062298(n+1)-1)` -/
def P5991862015660287509.Spec : Prop :=
  ∀ n, P5991862015660287509.a n = A316942 (n + 1)

theorem P5991862015660287509.correct : P5991862015660287509.Spec := by
  intro n
  simp only [A316942, Nat.add_sub_cancel, A316942.P5991862015660287509.a, A316942.P3129868701570837006.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A062298, A062298.P8226643735375377344.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A316942

/-! ## A316942.P3129868701570837006

`n+1-a(A000720(n+1)-1)-a(n-A000720(n+1))` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B001.C012`.
-/

namespace A316942

/-- `n+1-a(A000720(n+1)-1)-a(n-A000720(n+1))` -/
def P3129868701570837006.Spec : Prop :=
  ∀ n, P3129868701570837006.a n = A316942 (n + 1)

theorem P3129868701570837006.correct : P3129868701570837006.Spec := by
  intro n
  simp only [A316942, Nat.add_sub_cancel]

end A316942

/-!
# A316944: Total height of the binary search trees summed over all permutations of [n].

The programs for A316944, there is no canonical definition to state claims against.
-/

/-! ## A316944.P816934024281746414

`∑{#}[n, #*A195581(C(n+1, 2)+#)]`
-/

namespace A316944.P816934024281746414
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (k : ℤ) * A195581 (Nat.choose (n + 1) 2 + k)

end

end A316944.P816934024281746414

/-! ## A316944.P906416367404978290

`A000142(n)*A195582(n)/A195583(n)`
-/

namespace A316944.P906416367404978290
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000142 n * A195582 n : ℚ) / (A195583 n : ℚ)

end

end A316944.P906416367404978290

/-!
# A316947: Number of n X n 0..1 arrays with every element unequal to 1, 2, 3, 4, 5, 6 or 7 king-move adjacent elements, with upper left element zero.

The programs for A316947, there is no canonical definition to state claims against.
-/

/-! ## A316947.P15142017069223602714

`A316953(∑[4*n]+1)`
-/

namespace A316947.P15142017069223602714
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316953 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A316947.P15142017069223602714

/-! ## A316947.P4853550585991545349

`record[A003982(n)*A316953(n+1)]`
-/

namespace A316947.P4853550585991545349
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A316953 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A316947.P4853550585991545349

/-! ## A316947.P1608721456070506429

`A316953(A001844(n))+A011737(n)`
-/

namespace A316947.P1608721456070506429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316953 (A001844 n).toNat + A011737 n

end

end A316947.P1608721456070506429

/-! ## A316947.P4800518365249338769

`A316953(A001844(n))+A185238(n)`
-/

namespace A316947.P4800518365249338769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316953 (A001844 n).toNat + A185238 n

end

end A316947.P4800518365249338769

/-! ## A316947.P14202089941751178426

`A014698(n)*A316953(A001844(n))`
-/

namespace A316947.P14202089941751178426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014698 n * A316953 (A001844 n).toNat

end

end A316947.P14202089941751178426

/-!
# A316948: Number of nX3 0..1 arrays with every element unequal to 1, 2, 3, 4, 5, 6 or 7 king-move adjacent elements, with upper left element zero.

The programs for A316948, there is no canonical definition to state claims against.
-/

/-! ## A316948.P5258443672394275549

`A316953(∑[n+2]+4)`
-/

namespace A316948.P5258443672394275549
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316953 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A316948.P5258443672394275549

/-! ## A316948.P13906238937048710264

`record[gcd(A303913(n), A316953(n+1))]`
-/

namespace A316948.P13906238937048710264
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A303913 n) (A316953 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A316948.P13906238937048710264

/-! ## A316948.P15420962671663543465

`gcd(A000038(n), A316953(A167614(n+1)))`
-/

namespace A316948.P15420962671663543465
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A316953 (A167614 (n + 1)).toNat)

end

end A316948.P15420962671663543465

/-! ## A316948.P9457906328850159039

`lcm(A033999(n), A316953(A167614(n+1)))`
-/

namespace A316948.P9457906328850159039
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A316953 (A167614 (n + 1)).toNat)

end

end A316948.P9457906328850159039

/-! ## A316948.P759429319507637704

`or(A000007(n), A316953(A167614(n+1)))`
-/

namespace A316948.P759429319507637704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A316953 (A167614 (n + 1)).toNat)

end

end A316948.P759429319507637704

/-!
# A316949: Number of nX4 0..1 arrays with every element unequal to 1, 2, 3, 4, 5, 6 or 7 king-move adjacent elements, with upper left element zero.

The programs for A316949, there is no canonical definition to state claims against.
-/

/-! ## A316949.P16030220839549337781

`A316953(A141214(n)+7)`
-/

namespace A316949.P16030220839549337781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316953 (A141214 n + 7).toNat

end

end A316949.P16030220839549337781

/-! ## A316949.P17472310549983875002

`A316953(A055999(n)+10)`
-/

namespace A316949.P17472310549983875002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316953 (A055999 n + 10).toNat

end

end A316949.P17472310549983875002

/-! ## A316949.P6792221902955154428

`A316953(A167614(n+2)+1)`
-/

namespace A316949.P6792221902955154428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316953 (A167614 (n + 2) + 1).toNat

end

end A316949.P6792221902955154428

/-! ## A316949.P13487544973435882663

`A316953(A112355(n+1)+4)`
-/

namespace A316949.P13487544973435882663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316953 (A112355 (n + 1) + 4).toNat

end

end A316949.P13487544973435882663

/-! ## A316949.P15683735073135846413

`A316953(Δ[A264443(n)-n²])`
-/

namespace A316949.P15683735073135846413
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316953 (f1 (n + 1) - f1 n).toNat

end

end A316949.P15683735073135846413

/-!
# A316950: Number of nX5 0..1 arrays with every element unequal to 1, 2, 3, 4, 5, 6 or 7 king-move adjacent elements, with upper left element zero.

The programs for A316950, there is no canonical definition to state claims against.
-/

/-! ## A316950.P2588261987752614537

`A316953(A167499(n+3))`
-/

namespace A316950.P2588261987752614537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316953 (A167499 (n + 3)).toNat

end

end A316950.P2588261987752614537

/-! ## A316950.P6418410925355944336

`A316953(A155212(n)+13)`
-/

namespace A316950.P6418410925355944336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316953 (A155212 n + 13).toNat

end

end A316950.P6418410925355944336

/-! ## A316950.P8292267698034823211

`A316953(A056000(n)+15)`
-/

namespace A316950.P8292267698034823211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316953 (A056000 n + 15).toNat

end

end A316950.P8292267698034823211

/-! ## A316950.P13369687027320427004

`A316953(eq[6, A131818(n+1)])`
-/

namespace A316950.P13369687027320427004
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316953 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A316950.P13369687027320427004

/-! ## A316950.P10276909147269256144

`A316953(Δ[A264443(n)])`
-/

namespace A316950.P10276909147269256144
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316953 (f1 (n + 1) - f1 n).toNat

end

end A316950.P10276909147269256144

/-!
# A316951: Number of nX6 0..1 arrays with every element unequal to 1, 2, 3, 4, 5, 6 or 7 king-move adjacent elements, with upper left element zero.

The programs for A316951, there is no canonical definition to state claims against.
-/

/-! ## A316951.P10092501313325000405

`A316953(A056115(n)+21)`
-/

namespace A316951.P10092501313325000405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316953 (A056115 n + 21).toNat

end

end A316951.P10092501313325000405

/-! ## A316951.P11460258651605887789

`A316953(A167614(n+4)+3)`
-/

namespace A316951.P11460258651605887789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316953 (A167614 (n + 4) + 3).toNat

end

end A316951.P11460258651605887789

/-! ## A316951.P15054656146562673669

`A316953(eq[7, A131818(n+1)])`
-/

namespace A316951.P15054656146562673669
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316953 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A316951.P15054656146562673669

/-! ## A316951.P4872116667456239119

`A316953(A000124(n+6)-(n+1))`
-/

namespace A316951.P4872116667456239119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316953 (A000124 (n + 6) - (n + 1 : ℤ)).toNat

end

end A316951.P4872116667456239119

/-! ## A316951.P4189684333649024783

`A316953(A374007(n+1))`
-/

namespace A316951.P4189684333649024783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316953 (A374007 (n + 1)).toNat

end

end A316951.P4189684333649024783

/-!
# A316952: Number of nX7 0..1 arrays with every element unequal to 1, 2, 3, 4, 5, 6 or 7 king-move adjacent elements, with upper left element zero.

The programs for A316952, there is no canonical definition to state claims against.
-/

/-! ## A316952.P16238508625336331490

`A316953(eq[8, A131818(n+1)])`
-/

namespace A316952.P16238508625336331490
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316953 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A316952.P16238508625336331490

/-! ## A316952.P7680405648474028547

`A316953(A374008(n+1))`
-/

namespace A316952.P7680405648474028547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316953 (A374008 (n + 1)).toNat

end

end A316952.P7680405648474028547

/-! ## A316952.P6639288613564676065

`A316953(A055999(n+4))`
-/

namespace A316952.P6639288613564676065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316953 (A055999 (n + 4)).toNat

end

end A316952.P6639288613564676065

/-! ## A316952.P13084493534593218358

`A316953(eq[4, A219347(n)])`
-/

namespace A316952.P13084493534593218358
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316953 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A316952.P13084493534593218358

/-! ## A316952.P3702891869716525836

`A316953(eq[6, A193592(n)])`
-/

namespace A316952.P3702891869716525836
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316953 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A316952.P3702891869716525836

/-!
# A316953: T(n,k)=Number of nXk 0..1 arrays with every element unequal to 1, 2, 3, 4, 5, 6 or 7 king-move adjacent elements, with upper left element zero.

The programs for A316953, there is no canonical definition to state claims against.
-/

/-! ## A316953.P6416657873171983259

`A317733(n+1)-A010894(A003401(n+1))`
-/

namespace A316953.P6416657873171983259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317733 (n + 1) - A010894 ((A003401 (n + 1)).toNat + 21)

end

end A316953.P6416657873171983259

/-! ## A316953.P7933366104709434541

`A317733(n+1)+A016389(A022166(n))`
-/

namespace A316953.P7933366104709434541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317733 (n + 1) + A016389 (A022166 n).toNat

end

end A316953.P7933366104709434541

/-! ## A316953.P341375178978508466

`A317733(n+1)+A016389(A027336(n))`
-/

namespace A316953.P341375178978508466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317733 (n + 1) + A016389 (A027336 n).toNat

end

end A316953.P341375178978508466

/-! ## A316953.P11593939510709017353

`A317733(n+1)+A016389(A176561(n))`
-/

namespace A316953.P11593939510709017353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317733 (n + 1) + A016389 (A176561 n).toNat

end

end A316953.P11593939510709017353

/-! ## A316953.P6175749250875661169

`A317733(n+1)-A007814(A157151(n))`
-/

namespace A316953.P6175749250875661169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317733 (n + 1) - A007814 (A157151 n).toNat

end

end A316953.P6175749250875661169

/-!
# A316954: Number of nXn 0..1 arrays with every element unequal to 0, 1, 2, 3, 4, 5 or 8 king-move adjacent elements, with upper left element zero.

The programs for A316954, there is no canonical definition to state claims against.
-/

/-! ## A316954.P16953802953334293948

`A316960(∑[4*n]+1)`
-/

namespace A316954.P16953802953334293948
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316960 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A316954.P16953802953334293948

/-! ## A316954.P2659409564331979538

`record[A003982(n)*A316960(n+1)]`
-/

namespace A316954.P2659409564331979538
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A316960 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A316954.P2659409564331979538

/-! ## A316954.P13403966475196834092

`A316960(A001844(n))+A178798(n)`
-/

namespace A316954.P13403966475196834092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316960 (A001844 n).toNat + A178798 n

end

end A316954.P13403966475196834092

/-! ## A316954.P3537119242471871662

`gcd(A017903(n), A316960(A001844(n)))`
-/

namespace A316954.P3537119242471871662
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A017903 n) (A316960 (A001844 n).toNat)

end

end A316954.P3537119242471871662

/-! ## A316954.P11414863308749603455

`A316960(A001844(n))+A001222(gcd(n, n+1))`
-/

namespace A316954.P11414863308749603455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316960 (A001844 n).toNat + A001222 (Nat.gcd n (n + 1))

end

end A316954.P11414863308749603455

/-!
# A316955: Number of nX3 0..1 arrays with every element unequal to 0, 1, 2, 3, 4, 5 or 8 king-move adjacent elements, with upper left element zero.

The programs for A316955, there is no canonical definition to state claims against.
-/

/-! ## A316955.P1128528950652450409

`A316960(∑[n+2]+4)`
-/

namespace A316955.P1128528950652450409
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316960 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A316955.P1128528950652450409

/-! ## A316955.P12610147621802813129

`lcm(A164660(n), A316960(A167614(n+1)))`
-/

namespace A316955.P12610147621802813129
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A164660 n) (A316960 (A167614 (n + 1)).toNat)

end

end A316955.P12610147621802813129

/-! ## A316955.P970197839137693672

`A316960(A167614(n+1))%A235066(n+1)`
-/

namespace A316955.P970197839137693672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A316960 (A167614 (n + 1)).toNat) (A235066 (n + 1))

end

end A316955.P970197839137693672

/-! ## A316955.P14182297846378309297

`A316960(A034856(n+2))+A151878(n+1)`
-/

namespace A316955.P14182297846378309297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316960 (A034856 (n + 2)).toNat + A151878 (n + 1)

end

end A316955.P14182297846378309297

/-! ## A316955.P8564033531484111477

`A316960(A034856(n+2))%A006480(n+1)`
-/

namespace A316955.P8564033531484111477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A316960 (A034856 (n + 2)).toNat) (A006480 (n + 1))

end

end A316955.P8564033531484111477

/-!
# A316956: Number of nX4 0..1 arrays with every element unequal to 0, 1, 2, 3, 4, 5 or 8 king-move adjacent elements, with upper left element zero.

The programs for A316956, there is no canonical definition to state claims against.
-/

/-! ## A316956.P16930849692007716077

`A316960(A374004(n+1))`
-/

namespace A316956.P16930849692007716077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316960 (A374004 (n + 1)).toNat

end

end A316956.P16930849692007716077

/-! ## A316956.P5447256836794563997

`A316960(A141214(n)+7)`
-/

namespace A316956.P5447256836794563997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316960 (A141214 n + 7).toNat

end

end A316956.P5447256836794563997

/-! ## A316956.P2656955833840146197

`A316960(A052905(n)+9)`
-/

namespace A316956.P2656955833840146197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316960 (A052905 n + 9).toNat

end

end A316956.P2656955833840146197

/-! ## A316956.P16235687419323866802

`A316960(A055999(n)+10)`
-/

namespace A316956.P16235687419323866802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316960 (A055999 n + 10).toNat

end

end A316956.P16235687419323866802

/-! ## A316956.P11893321379584299755

`A316960(A167614(n+2)+1)`
-/

namespace A316956.P11893321379584299755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316960 (A167614 (n + 2) + 1).toNat

end

end A316956.P11893321379584299755

/-!
# A316957: Number of nX5 0..1 arrays with every element unequal to 0, 1, 2, 3, 4, 5 or 8 king-move adjacent elements, with upper left element zero.

The programs for A316957, there is no canonical definition to state claims against.
-/

/-! ## A316957.P18338220737572118676

`A316960(A374005(n+1))`
-/

namespace A316957.P18338220737572118676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316960 (A374005 (n + 1)).toNat

end

end A316957.P18338220737572118676

/-! ## A316957.P6936065471863329736

`A316960(A167499(n+3))`
-/

namespace A316957.P6936065471863329736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316960 (A167499 (n + 3)).toNat

end

end A316957.P6936065471863329736

/-! ## A316957.P9092771199246076569

`A316960(A056000(n)+15)`
-/

namespace A316957.P9092771199246076569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316960 (A056000 n + 15).toNat

end

end A316957.P9092771199246076569

/-! ## A316957.P5984615186497611814

`A316960(eq[6, A131818(n+1)])`
-/

namespace A316957.P5984615186497611814
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316960 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A316957.P5984615186497611814

/-! ## A316957.P17963422219082842934

`A316960(Δ[A264443(n)])`
-/

namespace A316957.P17963422219082842934
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316960 (f1 (n + 1) - f1 n).toNat

end

end A316957.P17963422219082842934

/-!
# A316958: Number of nX6 0..1 arrays with every element unequal to 0, 1, 2, 3, 4, 5 or 8 king-move adjacent elements, with upper left element zero.

The programs for A316958, there is no canonical definition to state claims against.
-/

/-! ## A316958.P6347284921006831270

`A316960(A374007(n+1))`
-/

namespace A316958.P6347284921006831270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316960 (A374007 (n + 1)).toNat

end

end A316958.P6347284921006831270

/-! ## A316958.P2627802019443191247

`A316960(A166136(n+4))`
-/

namespace A316958.P2627802019443191247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316960 (A166136 (n + 4)).toNat

end

end A316958.P2627802019443191247

/-! ## A316958.P15948169476257787702

`A316960(A056115(n)+21)`
-/

namespace A316958.P15948169476257787702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316960 (A056115 n + 21).toNat

end

end A316958.P15948169476257787702

/-! ## A316958.P5530876878193506288

`A316960(eq[7, A131818(n+1)])`
-/

namespace A316958.P5530876878193506288
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316960 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A316958.P5530876878193506288

/-! ## A316958.P8294860044846389787

`A316960(A052905(n+3))`
-/

namespace A316958.P8294860044846389787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316960 (A052905 (n + 3)).toNat

end

end A316958.P8294860044846389787

/-!
# A316959: Number of nX7 0..1 arrays with every element unequal to 0, 1, 2, 3, 4, 5 or 8 king-move adjacent elements, with upper left element zero.

The programs for A316959, there is no canonical definition to state claims against.
-/

/-! ## A316959.P10626228249437871257

`A316960(A374008(n+1))`
-/

namespace A316959.P10626228249437871257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316960 (A374008 (n + 1)).toNat

end

end A316959.P10626228249437871257

/-! ## A316959.P4885079433751634129

`A316960(A056119(n)+28)`
-/

namespace A316959.P4885079433751634129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316960 (A056119 n + 28).toNat

end

end A316959.P4885079433751634129

/-! ## A316959.P14530753451398956423

`A316960(eq[8, A131818(n+1)])`
-/

namespace A316959.P14530753451398956423
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316960 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A316959.P14530753451398956423

/-! ## A316959.P10991587425875653927

`A316960(A055999(n+4))`
-/

namespace A316959.P10991587425875653927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316960 (A055999 (n + 4)).toNat

end

end A316959.P10991587425875653927

/-! ## A316959.P8860288596452666320

`A316960(eq[4, A219347(n)])`
-/

namespace A316959.P8860288596452666320
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316960 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A316959.P8860288596452666320

/-!
# A316960: T(n,k)=Number of nXk 0..1 arrays with every element unequal to 0, 1, 2, 3, 4, 5 or 8 king-move adjacent elements, with upper left element zero.

The programs for A316960, there is no canonical definition to state claims against.
-/

/-! ## A316960.P9908852468900489581

`A305523(n+1)+A080940(A305523(n+1))²²`
-/

namespace A316960.P9908852468900489581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305523 (n + 1) + (A080940 (A305523 (n + 1)).toNat ^ 2) ^ 2

end

end A316960.P9908852468900489581

/-!
# A316961: Expansion of Product_{k>=1} 1/(1 - sigma(k)*x^k), where sigma(k) is the sum of the divisors of k (A000203).

The programs for A316961, there is no canonical definition to state claims against.
-/

/-! ## A316961.P5346304932841156502

`A129851(A129922(n))`
-/

namespace A316961.P5346304932841156502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129851 (A129922 n).toNat

end

end A316961.P5346304932841156502

/-! ## A316961.P14396189522688412390

`A113320(A253909(n))+and(lcm(2, n+1)/2, -2)`
-/

namespace A316961.P14396189522688412390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113320 (A253909 n).toNat + Int.land (SequenceMachineLib.roundAway ((Nat.lcm 2 (n + 1) : ℚ) / 2)) (-2)

end

end A316961.P14396189522688412390

/-! ## A316961.P7919624081938758240

`A371169(A371192(n)+A145550(n+1))`
-/

namespace A316961.P7919624081938758240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371169 (A371192 n + A145550 (n + 1)).toNat

end

end A316961.P7919624081938758240

/-!
# A316963: Same as A316668, except numbering of the squares starts at 0 rather than 1.

The programs for A316963, there is no canonical definition to state claims against.
-/

/-! ## A316963.P17025710719472280057

`A316668(n+1)-1`
-/

namespace A316963.P17025710719472280057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316668 (n + 1) - 1

end

end A316963.P17025710719472280057

/-! ## A316963.P10622723265886846284

`(A316668(n+1)+∑[n+1])%A134869(n+1)`
-/

namespace A316963.P10622723265886846284
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A316668 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)) (A134869 (n + 1))

end

end A316963.P10622723265886846284

/-! ## A316963.P5144323585171464148

`A317939(A001358(n+1))+A316668(n+1)`
-/

namespace A316963.P5144323585171464148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317939 (A001358 (n + 1)).toNat + A316668 (n + 1)

end

end A316963.P5144323585171464148

/-! ## A316963.P17496611372533913920

`abs(A316668(n+1)+(-1)^A000040(n+2))`
-/

namespace A316963.P17496611372533913920
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A316668 (n + 1) : ℚ) + (-1 : ℚ) ^ (A000040 (n + 2) : ℤ)|

end

end A316963.P17496611372533913920

/-! ## A316963.P18253053525076780338

`A023443(A316668(n+1))`
-/

namespace A316963.P18253053525076780338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A316668 (n + 1)).toNat

end

end A316963.P18253053525076780338

/-! ## A316963.P10763008729354641850

`A023444(A316668(n+1)+1)`
-/

namespace A316963.P10763008729354641850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 (A316668 (n + 1) + 1).toNat

end

end A316963.P10763008729354641850

/-! ## A316963.P13985557726993957061

`A023446(A316668(n+1)+3)`
-/

namespace A316963.P13985557726993957061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023446 (A316668 (n + 1) + 3).toNat

end

end A316963.P13985557726993957061

/-! ## A316963.P12366907015414379

`(A316965(n)+A316668(n+1))%A316670(n+1)`
-/

namespace A316963.P12366907015414379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A316965 n + A316668 (n + 1)) (A316670 (n + 1))

end

end A316963.P12366907015414379

/-! ## A316963.P9807675633863920953

`A165900(A316668(n+1)²)%A316668(n+1)`
-/

namespace A316963.P9807675633863920953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A165900 (A316668 (n + 1) ^ 2).toNat) (A316668 (n + 1))

end

end A316963.P9807675633863920953

/-!
# A316964: Same as A316669, except numbering of the squares starts at 0 rather than 1.

The programs for A316964, the canonical program `A316964.P17608788837257111621` is in `Seq.B001.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A316964 has offset 0).

The definition of A316964 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A316964.P2345046829641291920

`floor(ratio[lcm(T(n-1,k), T(n-2,k-1))+1])+n-1` with `a(0)=1`
-/

namespace A316964.P2345046829641291920
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  Nat.lcm (SequenceMachineLib.triUp f1 n) (SequenceMachineLib.triUp2Left f1 n) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(f1 (n + 1) : ℚ) / (f1 n : ℚ)⌋ + (n : ℤ) - 1

end

end A316964.P2345046829641291920

namespace A316964

/-- `floor(ratio[lcm(T(n-1,k), T(n-2,k-1))+1])+n-1` -/
def P2345046829641291920.Spec : Prop :=
  ∀ n, P2345046829641291920.a n = A316964 n

end A316964

/-! ## A316964.P17608788837257111621

`Δ[A193592(n)]+n`

The canonical program, it is in `Seq.B001.C012`.
-/

namespace A316964

/-- `Δ[A193592(n)]+n` -/
def P17608788837257111621.Spec : Prop :=
  ∀ n, P17608788837257111621.a n = A316964 n

theorem P17608788837257111621.correct : P17608788837257111621.Spec := by
  intro n
  simp only [A316964]

end A316964

/-! ## A316964.P1365300351659803322

`A316669(n+1)-1`
-/

namespace A316964.P1365300351659803322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316669 (n + 1) - 1

end

end A316964.P1365300351659803322

namespace A316964

/-- `A316669(n+1)-1` -/
def P1365300351659803322.Spec : Prop :=
  ∀ n, P1365300351659803322.a n = A316964 n

end A316964

/-! ## A316964.P17347461510693723075

`A158821(n)-1+n`
-/

namespace A316964.P17347461510693723075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158821 n - 1 + (n : ℤ)

end

end A316964.P17347461510693723075

namespace A316964

/-- `A158821(n)-1+n` -/
def P17347461510693723075.Spec : Prop :=
  ∀ n, P17347461510693723075.a n = A316964 n

end A316964

/-! ## A316964.P4580636234599588028

`Δ[log2(Δ[A023758(n+1)])]+n`
-/

namespace A316964.P4580636234599588028
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023758 (n + 1)

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (f2 (n + 1) - f2 n : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (n : ℝ)

end

end A316964.P4580636234599588028

namespace A316964

/-- `Δ[log2(Δ[A023758(n+1)])]+n` -/
def P4580636234599588028.Spec : Prop :=
  ∀ n, P4580636234599588028.a n = (A316964 n : ℝ)

end A316964

/-! ## A316964.P17973766479518506937

`A023443(A316669(n+1))`
-/

namespace A316964.P17973766479518506937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A316669 (n + 1)).toNat

end

end A316964.P17973766479518506937

namespace A316964

/-- `A023443(A316669(n+1))` -/
def P17973766479518506937.Spec : Prop :=
  ∀ n, P17973766479518506937.a n = A316964 n

end A316964

/-! ## A316964.P11582969948696853460

`A023443(A158821(n)+n)`
-/

namespace A316964.P11582969948696853460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A158821 n + (n : ℤ)).toNat

end

end A316964.P11582969948696853460

namespace A316964

/-- `A023443(A158821(n)+n)` -/
def P11582969948696853460.Spec : Prop :=
  ∀ n, P11582969948696853460.a n = A316964 n

end A316964

/-! ## A316964.P11645426736282274428

`A158821(n)-A024000(n)`
-/

namespace A316964.P11645426736282274428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158821 n - A024000 n

end

end A316964.P11645426736282274428

namespace A316964

/-- `A158821(n)-A024000(n)` -/
def P11645426736282274428.Spec : Prop :=
  ∀ n, P11645426736282274428.a n = A316964 n

end A316964

/-! ## A316964.P3682128895601523464

`A145677(A061579(n))-1+n`
-/

namespace A316964.P3682128895601523464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145677 (A061579 n).toNat - 1 + (n : ℤ)

end

end A316964.P3682128895601523464

namespace A316964

/-- `A145677(A061579(n))-1+n` -/
def P3682128895601523464.Spec : Prop :=
  ∀ n, P3682128895601523464.a n = A316964 n

end A316964

/-! ## A316964.P16088185847079198758

`n²-(A002061(n)-A158821(n))`
-/

namespace A316964.P16088185847079198758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - (A002061 n - A158821 n)

end

end A316964.P16088185847079198758

namespace A316964

/-- `n²-(A002061(n)-A158821(n))` -/
def P16088185847079198758.Spec : Prop :=
  ∀ n, P16088185847079198758.a n = A316964 n

end A316964

/-! ## A316964.P15761715771420742816

`Δ[A025581(n)%A007318(n)]+n`
-/

namespace A316964.P15761715771420742816
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A025581 n) (A007318 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (n : ℤ)

end

end A316964.P15761715771420742816

namespace A316964

/-- `Δ[A025581(n)%A007318(n)]+n` -/
def P15761715771420742816.Spec : Prop :=
  ∀ n, P15761715771420742816.a n = A316964 n

end A316964

/-! ## A316964.P2861318847394709028

`Δ[gcd(A137948(n), A193739(n))]+n`
-/

namespace A316964.P2861318847394709028
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A137948 n) (A193739 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) + (n : ℤ)

end

end A316964.P2861318847394709028

namespace A316964

/-- `Δ[gcd(A137948(n), A193739(n))]+n` -/
def P2861318847394709028.Spec : Prop :=
  ∀ n, P2861318847394709028.a n = A316964 n

end A316964

/-! ## A316964.P6288477064445889463

`Δ[A004736(n+2)%A007318(n)]+n`
-/

namespace A316964.P6288477064445889463
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004736 (n + 2)) (A007318 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (n : ℤ)

end

end A316964.P6288477064445889463

namespace A316964

/-- `Δ[A004736(n+2)%A007318(n)]+n` -/
def P6288477064445889463.Spec : Prop :=
  ∀ n, P6288477064445889463.a n = A316964 n

end A316964

/-! ## A316964.P1075258522277220260

`Δ[gcd(A004736(n+1), A008279(n))]+n`
-/

namespace A316964.P1075258522277220260
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A004736 (n + 1)) (A008279 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) + (n : ℤ)

end

end A316964.P1075258522277220260

namespace A316964

/-- `Δ[gcd(A004736(n+1), A008279(n))]+n` -/
def P1075258522277220260.Spec : Prop :=
  ∀ n, P1075258522277220260.a n = A316964 n

end A316964

/-! ## A316964.P15632830521864809426

`A007318(n+1)*A103451(n)+n-1`
-/

namespace A316964.P15632830521864809426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (n + 1) * A103451 n + (n : ℤ) - 1

end

end A316964.P15632830521864809426

namespace A316964

/-- `A007318(n+1)*A103451(n)+n-1` -/
def P15632830521864809426.Spec : Prop :=
  ∀ n, P15632830521864809426.a n = A316964 n

end A316964

/-! ## A316964.P10942563606204963885

`C(A007318(n+1), A007318(n)²)-1+n`
-/

namespace A316964.P10942563606204963885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (A007318 (n + 1)).toNat (A007318 n ^ 2).toNat : ℤ) - 1 + (n : ℤ)

end

end A316964.P10942563606204963885

namespace A316964

/-- `C(A007318(n+1), A007318(n)²)-1+n` -/
def P10942563606204963885.Spec : Prop :=
  ∀ n, P10942563606204963885.a n = A316964 n

end A316964

/-! ## A316964.P7328078262791619695

`C(A144112(n+1), A002262(n)+1)+n-1`
-/

namespace A316964.P7328078262791619695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (A144112 (n + 1)).toNat (A002262 n + 1).toNat : ℤ) + ((n : ℤ) - 1)

end

end A316964.P7328078262791619695

namespace A316964

/-- `C(A144112(n+1), A002262(n)+1)+n-1` -/
def P7328078262791619695.Spec : Prop :=
  ∀ n, P7328078262791619695.a n = A316964 n

end A316964

/-! ## A316964.P3064365350767586869

`A061579(1-(A158821(n)-A061579(n)))`
-/

namespace A316964.P3064365350767586869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061579 (1 - (A158821 n - A061579 n)).toNat

end

end A316964.P3064365350767586869

namespace A316964

/-- `A061579(1-(A158821(n)-A061579(n)))` -/
def P3064365350767586869.Spec : Prop :=
  ∀ n, P3064365350767586869.a n = A316964 n

end A316964

/-! ## A316964.P9562784300181863895

`Δ[A000005(Δ[A023758(n+1)])]+n`
-/

namespace A316964.P9562784300181863895
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023758 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (n : ℤ)

end

end A316964.P9562784300181863895

namespace A316964

/-- `Δ[A000005(Δ[A023758(n+1)])]+n` -/
def P9562784300181863895.Spec : Prop :=
  ∀ n, P9562784300181863895.a n = A316964 n

end A316964

/-! ## A316964.P8889344401552071871

`Δ[A001222(Δ[A023758(n+1)])]+n`
-/

namespace A316964.P8889344401552071871
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023758 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (n : ℤ)

end

end A316964.P8889344401552071871

namespace A316964

/-- `Δ[A001222(Δ[A023758(n+1)])]+n` -/
def P8889344401552071871.Spec : Prop :=
  ∀ n, P8889344401552071871.a n = A316964 n

end A316964

/-!
# A316965: Same as A316670, except numbering of the squares starts at 0 rather than 1.

The programs for A316965, the canonical program `A316965.P11469551014600044917` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A316965 has offset 0).

The definition of A316965 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A316965.P11469551014600044917

`A316670(n+1)-1`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A316965

/-- `A316670(n+1)-1` -/
def P11469551014600044917.Spec : Prop :=
  ∀ n, P11469551014600044917.a n = A316965 n

theorem P11469551014600044917.correct : P11469551014600044917.Spec := by
  intro n
  simp only [A316965]

end A316965

/-! ## A316965.P17652937708205456591

`A023443(A316670(n+1))`
-/

namespace A316965.P17652937708205456591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A316670 (n + 1)).toNat

end

end A316965.P17652937708205456591

namespace A316965

/-- `A023443(A316670(n+1))` -/
def P17652937708205456591.Spec : Prop :=
  ∀ n, P17652937708205456591.a n = A316965 n

end A316965

/-! ## A316965.P11505700422061168971

`A023444(A316670(n+1)+1)`
-/

namespace A316965.P11505700422061168971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 (A316670 (n + 1) + 1).toNat

end

end A316965.P11505700422061168971

namespace A316965

/-- `A023444(A316670(n+1)+1)` -/
def P11505700422061168971.Spec : Prop :=
  ∀ n, P11505700422061168971.a n = A316965 n

end A316965

/-! ## A316965.P13648511404929150452

`A316669(A007606(1+n))-1`
-/

namespace A316965.P13648511404929150452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316669 (A007606 (1 + n)).toNat - 1

end

end A316965.P13648511404929150452

namespace A316965

/-- `A316669(A007606(1+n))-1` -/
def P13648511404929150452.Spec : Prop :=
  ∀ n, P13648511404929150452.a n = A316965 n

end A316965

/-! ## A316965.P14914769281793264242

`row(C(A316670(n+1), A040000(n+2)))`
-/

namespace A316965.P14914769281793264242
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.triRow (Nat.choose (A316670 (n + 1)).toNat (A040000 (n + 2)).toNat)

end

end A316965.P14914769281793264242

namespace A316965

/-- `row(C(A316670(n+1), A040000(n+2)))` -/
def P14914769281793264242.Spec : Prop :=
  ∀ n, (P14914769281793264242.a n : ℤ) = A316965 n

end A316965

/-! ## A316965.P1467529922069618502

`A004273(2*A316670(n+1))%A316670(n+1)`
-/

namespace A316965.P1467529922069618502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004273 (2 * A316670 (n + 1)).toNat) (A316670 (n + 1))

end

end A316965.P1467529922069618502

namespace A316965

/-- `A004273(2*A316670(n+1))%A316670(n+1)` -/
def P1467529922069618502.Spec : Prop :=
  ∀ n, P1467529922069618502.a n = A316965 n

end A316965

/-! ## A316965.P11334192871444452726

`A316964(A161983(n))`
-/

namespace A316965.P11334192871444452726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316964 (A161983 n).toNat

end

end A316965.P11334192871444452726

namespace A316965

/-- `A316964(A161983(n))` -/
def P11334192871444452726.Spec : Prop :=
  ∀ n, P11334192871444452726.a n = A316965 n

end A316965

/-! ## A316965.P3266972478990964158

`A004956(n)*A233583(A316670(n+1))/A026351(n)`
-/

namespace A316965.P3266972478990964158
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004956 n * A233583 (A316670 (n + 1)).toNat : ℚ) / (A026351 n : ℚ)

end

end A316965.P3266972478990964158

namespace A316965

/-- `A004956(n)*A233583(A316670(n+1))/A026351(n)` -/
def P3266972478990964158.Spec : Prop :=
  ∀ n, P3266972478990964158.a n = (A316965 n : ℚ)

end A316965

/-! ## A316965.P5343982443628767399

`xor(-1, -A316670(A000196((n+1)²)))`
-/

namespace A316965.P5343982443628767399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (-1) (-A316670 (A000196 ((n + 1) ^ 2)).toNat)

end

end A316965.P5343982443628767399

namespace A316965

/-- `xor(-1, -A316670(A000196((n+1)²)))` -/
def P5343982443628767399.Spec : Prop :=
  ∀ n, P5343982443628767399.a n = A316965 n

end A316965

/-!
# A316966: Same as A316671, except numbering of the squares starts at 0 rather than 1.

The programs for A316966, the canonical program `A316966.P2954345592620064588` is in `Seq.B000.C043`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A316966 has offset 0).

The definition of A316966 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A316966.P14129132621132093239

`ogf((4x-x^2+x^4)/(1-x-2x^2+2x^3+x^4-x^5))`
-/

namespace A316966.P14129132621132093239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 4, -1, 0, 1] [1, -1, -2, 2, 1, -1] n

end

end A316966.P14129132621132093239

namespace A316966

/-- `ogf((4x-x^2+x^4)/(1-x-2x^2+2x^3+x^4-x^5))` -/
def P14129132621132093239.Spec : Prop :=
  ∀ n, P14129132621132093239.a n = A316966 n

end A316966

/-! ## A316966.P2954345592620064588

`1+(n+2)*(n-(-1)^n)/2`

The canonical program, it is in `Seq.B000.C043`.
-/

namespace A316966

/-- `1+(n+2)*(n-(-1)^n)/2` -/
def P2954345592620064588.Spec : Prop :=
  ∀ n, P2954345592620064588.a n = (A316966 n : ℚ)

end A316966

/-! ## A316966.P1834173099166771769

`∑[n]+(n+2)*n%2`
-/

namespace A316966.P1834173099166771769
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n + 2) * (n % 2)

end

end A316966.P1834173099166771769

namespace A316966

/-- `∑[n]+(n+2)*n%2` -/
def P1834173099166771769.Spec : Prop :=
  ∀ n, (P1834173099166771769.a n : ℤ) = A316966 n

end A316966

/-! ## A316966.P14158206951562888546

`∑[n]+(n+2)*and(1, n)`
-/

namespace A316966.P14158206951562888546
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n + 2) * Nat.land 1 n

end

end A316966.P14158206951562888546

namespace A316966

/-- `∑[n]+(n+2)*and(1, n)` -/
def P14158206951562888546.Spec : Prop :=
  ∀ n, (P14158206951562888546.a n : ℤ) = A316966 n

end A316966

/-! ## A316966.P5990999059872623803

`∑[n]+lcm(n+2, and(1, n))`
-/

namespace A316966.P5990999059872623803
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + Nat.lcm (n + 2) (Nat.land 1 n)

end

end A316966.P5990999059872623803

namespace A316966

/-- `∑[n]+lcm(n+2, and(1, n))` -/
def P5990999059872623803.Spec : Prop :=
  ∀ n, (P5990999059872623803.a n : ℤ) = A316966 n

end A316966

/-! ## A316966.P14873787627987070798

`∑[Δ[lcm(2, n+1)]+n]-n`
-/

namespace A316966.P14873787627987070798
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 2 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A316966.P14873787627987070798

namespace A316966

/-- `∑[Δ[lcm(2, n+1)]+n]-n` -/
def P14873787627987070798.Spec : Prop :=
  ∀ n, P14873787627987070798.a n = A316966 n

end A316966

/-! ## A316966.P17751839646928758891

`∑[n]+C(xor(1, n+1), n+1)`
-/

namespace A316966.P17751839646928758891
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + Nat.choose (Nat.xor 1 (n + 1)) (n + 1)

end

end A316966.P17751839646928758891

namespace A316966

/-- `∑[n]+C(xor(1, n+1), n+1)` -/
def P17751839646928758891.Spec : Prop :=
  ∀ n, (P17751839646928758891.a n : ℤ) = A316966 n

end A316966

/-! ## A316966.P7308723871274112537

`∑[a(n-2)-floor(4/a(n-1))]` with `a(0)=0, a(1)=4`
-/

namespace A316966.P7308723871274112537
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 4] fun n f1 =>
  f1 (n - 2) - ⌊4 / (f1 (n - 1) : ℚ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A316966.P7308723871274112537

namespace A316966

/-- `∑[a(n-2)-floor(4/a(n-1))]` -/
def P7308723871274112537.Spec : Prop :=
  ∀ n, P7308723871274112537.a n = A316966 n

end A316966

/-! ## A316966.P6531201971830188157

`A131179(xor(1, n+1))`
-/

namespace A316966.P6531201971830188157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131179 (Nat.xor 1 (n + 1))

end

end A316966.P6531201971830188157

namespace A316966

/-- `A131179(xor(1, n+1))` -/
def P6531201971830188157.Spec : Prop :=
  ∀ n, P6531201971830188157.a n = A316966 n

end A316966

/-! ## A316966.P15218343287803091728

`∑[A266222(n+1)-1]`
-/

namespace A316966.P15218343287803091728
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266222 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A316966.P15218343287803091728

namespace A316966

/-- `∑[A266222(n+1)-1]` -/
def P15218343287803091728.Spec : Prop :=
  ∀ n, P15218343287803091728.a n = A316966 n

end A316966

/-! ## A316966.P10507303777740986583

`A131179(A004442(n+1))`
-/

namespace A316966.P10507303777740986583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131179 (A004442 (n + 1)).toNat

end

end A316966.P10507303777740986583

namespace A316966

/-- `A131179(A004442(n+1))` -/
def P10507303777740986583.Spec : Prop :=
  ∀ n, P10507303777740986583.a n = A316966 n

end A316966

/-! ## A316966.P6132958127560488032

`A131179(1-A033999(n)+n)`
-/

namespace A316966.P6132958127560488032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131179 (1 - A033999 n + (n : ℤ)).toNat

end

end A316966.P6132958127560488032

namespace A316966

/-- `A131179(1-A033999(n)+n)` -/
def P6132958127560488032.Spec : Prop :=
  ∀ n, P6132958127560488032.a n = A316966 n

end A316966

/-! ## A316966.P10582603288684335809

`A131179(1-(A033999(n)-n))`
-/

namespace A316966.P10582603288684335809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131179 (1 - (A033999 n - (n : ℤ))).toNat

end

end A316966.P10582603288684335809

namespace A316966

/-- `A131179(1-(A033999(n)-n))` -/
def P10582603288684335809.Spec : Prop :=
  ∀ n, P10582603288684335809.a n = A316966 n

end A316966

/-! ## A316966.P2034598660408970177

`abs(A280193(n+1)+A266257(n))`
-/

namespace A316966.P2034598660408970177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A280193 (n + 1) + A266257 n|

end

end A316966.P2034598660408970177

namespace A316966

/-- `abs(A280193(n+1)+A266257(n))` -/
def P2034598660408970177.Spec : Prop :=
  ∀ n, P2034598660408970177.a n = A316966 n

end A316966

/-! ## A316966.P10391781607681784874

`n/A014681(n+1)*A084263(n+1)`
-/

namespace A316966.P10391781607681784874
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (A014681 (n + 1) : ℚ) * (A084263 (n + 1) : ℚ)

end

end A316966.P10391781607681784874

namespace A316966

/-- `n/A014681(n+1)*A084263(n+1)` -/
def P10391781607681784874.Spec : Prop :=
  ∀ n, P10391781607681784874.a n = (A316966 n : ℚ)

end A316966

/-! ## A316966.P8822002252025458479

`A131179(Δ[Δ[A000982(n)]]+n)`
-/

namespace A316966.P8822002252025458479
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000982 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131179 (f1 (n + 1) - f1 n + (n : ℤ)).toNat

end

end A316966.P8822002252025458479

namespace A316966

/-- `A131179(Δ[Δ[A000982(n)]]+n)` -/
def P8822002252025458479.Spec : Prop :=
  ∀ n, P8822002252025458479.a n = A316966 n

end A316966

/-! ## A316966.P3951652972970611593

`∑[A187180(2*n+1)-A181983(n+1)]`
-/

namespace A316966.P3951652972970611593
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187180 (2 * n + 1) - A181983 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A316966.P3951652972970611593

namespace A316966

/-- `∑[A187180(2*n+1)-A181983(n+1)]` -/
def P3951652972970611593.Spec : Prop :=
  ∀ n, P3951652972970611593.a n = A316966 n

end A316966

/-! ## A316966.P8560177707223925007

`A365582(A084265(n+1))`
-/

namespace A316966.P8560177707223925007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365582 (A084265 (n + 1)).toNat

end

end A316966.P8560177707223925007

namespace A316966

/-- `A365582(A084265(n+1))` -/
def P8560177707223925007.Spec : Prop :=
  ∀ n, P8560177707223925007.a n = A316966 n

end A316966

/-! ## A316966.P4010319957321198177

`A286098(A125577(n+1))`
-/

namespace A316966.P4010319957321198177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286098 (A125577 (n + 1)).toNat

end

end A316966.P4010319957321198177

namespace A316966

/-- `A286098(A125577(n+1))` -/
def P4010319957321198177.Spec : Prop :=
  ∀ n, P4010319957321198177.a n = A316966 n

end A316966

/-! ## A316966.P1664780009496962186

`A286098(A004442(n+1)+A000217(n))`
-/

namespace A316966.P1664780009496962186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286098 (A004442 (n + 1) + A000217 n).toNat

end

end A316966.P1664780009496962186

namespace A316966

/-- `A286098(A004442(n+1)+A000217(n))` -/
def P1664780009496962186.Spec : Prop :=
  ∀ n, P1664780009496962186.a n = A316966 n

end A316966

/-!
# A316967: Same as A316884, except numbering of the squares starts at 0 rather than 1.

The programs for A316967, there is no canonical definition to state claims against.
-/

/-! ## A316967.P17201718595615402714

`A316884(n+1)-1`
-/

namespace A316967.P17201718595615402714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316884 (n + 1) - 1

end

end A316967.P17201718595615402714

/-! ## A316967.P9994297095318809296

`xor(1, A316884(A000027(n+1)))`
-/

namespace A316967.P9994297095318809296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A316884 (A000027 (n + 1)).toNat)

end

end A316967.P9994297095318809296

/-! ## A316967.P1811726346763093436

`xor(1, A316884(A028310(n+1)))`
-/

namespace A316967.P1811726346763093436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A316884 (A028310 (n + 1)).toNat)

end

end A316967.P1811726346763093436

/-! ## A316967.P15026680009018993837

`xor(abs(A020985(n)), A316884(n+1))`
-/

namespace A316967.P15026680009018993837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor |A020985 n| (A316884 (n + 1))

end

end A316967.P15026680009018993837

/-! ## A316967.P2967469638111631300

`xor(A033999(n)², A316884(n+1))`
-/

namespace A316967.P2967469638111631300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A033999 n ^ 2) (A316884 (n + 1))

end

end A316967.P2967469638111631300

/-! ## A316967.P9087399517319460626

`xor(A106400(n)², A316884(n+1))`
-/

namespace A316967.P9087399517319460626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A106400 n ^ 2) (A316884 (n + 1))

end

end A316967.P9087399517319460626

/-! ## A316967.P13561665483315527864

`xor(A002061(C(n, n+1)), A316884(n+1))`
-/

namespace A316967.P13561665483315527864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A002061 (Nat.choose n (n + 1))) (A316884 (n + 1))

end

end A316967.P13561665483315527864

/-! ## A316967.P2690267594635528093

`xor(A016192(A005811(n)), A316884(n+1))`
-/

namespace A316967.P2690267594635528093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A016192 (A005811 n).toNat) (A316884 (n + 1))

end

end A316967.P2690267594635528093

/-! ## A316967.P6700828995323748878

`xor(A057427(A109613(n)), A316884(n+1))`
-/

namespace A316967.P6700828995323748878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A057427 (A109613 n).toNat) (A316884 (n + 1))

end

end A316967.P6700828995323748878

/-! ## A316967.P8390369405262519069

`xor(A055396(A133265(n)), A316884(n+1))`
-/

namespace A316967.P8390369405262519069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A055396 (A133265 n).toNat) (A316884 (n + 1))

end

end A316967.P8390369405262519069

/-! ## A316967.P10943026835581670112

`xor(A054977(n+2), A316884(n+1))`
-/

namespace A316967.P10943026835581670112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A054977 (n + 2)) (A316884 (n + 1))

end

end A316967.P10943026835581670112

/-! ## A316967.P7991949148260729258

`xor(A010051(A000040(n+1)), A316884(n+1))`
-/

namespace A316967.P7991949148260729258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A010051 (A000040 (n + 1)).toNat) (A316884 (n + 1))

end

end A316967.P7991949148260729258

/-! ## A316967.P92651810827939977

`xor(A000035(2*n+1), A316884(n+1))`
-/

namespace A316967.P92651810827939977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000035 (2 * n + 1)) (A316884 (n + 1))

end

end A316967.P92651810827939977

/-! ## A316967.P10914582896367508872

`xor(A055396(2*(n+1)), A316884(n+1))`
-/

namespace A316967.P10914582896367508872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A055396 (2 * (n + 1))) (A316884 (n + 1))

end

end A316967.P10914582896367508872

/-! ## A316967.P9662249701743516087

`xor(1, A316884(A008611(3*n)))`
-/

namespace A316967.P9662249701743516087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A316884 (A008611 (3 * n)).toNat)

end

end A316967.P9662249701743516087

/-! ## A316967.P7080875388995018881

`xor(A035214(3*(n+1)+2), A316884(n+1))`
-/

namespace A316967.P7080875388995018881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A035214 (3 * (n + 1) + 2)) (A316884 (n + 1))

end

end A316967.P7080875388995018881

/-! ## A316967.P49153012569307465

`A004442(A316884(n+1))`
-/

namespace A316967.P49153012569307465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (A316884 (n + 1)).toNat

end

end A316967.P49153012569307465

/-! ## A316967.P15525972392968564443

`A023444(A316884(n+1)+1)`
-/

namespace A316967.P15525972392968564443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 (A316884 (n + 1) + 1).toNat

end

end A316967.P15525972392968564443

/-! ## A316967.P5568461845896504800

`xor(A056594(4*n), A316884(n+1))`
-/

namespace A316967.P5568461845896504800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A056594 (4 * n)) (A316884 (n + 1))

end

end A316967.P5568461845896504800

/-! ## A316967.P6747609058639915963

`xor(A014963(8*n+6), A316884(n+1))`
-/

namespace A316967.P6747609058639915963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A014963 (8 * n + 6)) (A316884 (n + 1))

end

end A316967.P6747609058639915963

/-!
# A316969: Primes p such that p^2 contains all of the square digits {0, 1, 4, 9} only.

The programs for A316969, there is no canonical definition to state claims against.
-/

/-! ## A316969.P14206421933307709021

`p?[A317579(n+1)]`
-/

namespace A316969.P14206421933307709021
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317579 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A316969.P14206421933307709021

/-!
# A316971: Prime numbers of the form p1^3 + p2^2 + p3, with p1, p2 and p3 also prime and all different.

The programs for A316971, there is no canonical definition to state claims against.
-/

/-! ## A316971.P8693731444643971611

`A094727(A229311(n+9)+1)`
-/

namespace A316971.P8693731444643971611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094727 (A229311 (n + 9) + 1).toNat

end

end A316971.P8693731444643971611

/-! ## A316971.P6086131671995345070

`A007528(A046668(n+5)%A059802(2*(n+2)))`
-/

namespace A316971.P6086131671995345070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007528 (Int.tmod (A046668 (n + 5)) (A059802 (2 * (n + 2)))).toNat

end

end A316971.P6086131671995345070

/-!
# A316972: Number of connected multiset partitions of {1, 1, 2, 2, 3, 3, ..., n, n}.

The programs for A316972, there is no canonical definition to state claims against.
-/

/-! ## A316972.P14009632362540369936

`∑[A247983(n^n)]`
-/

namespace A316972.P14009632362540369936
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247983 (n ^ n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A316972.P14009632362540369936

/-!
# A316973: a(n) is the number of occurrences of n in A316774.

The programs for A316973, there is no canonical definition to state claims against.
-/

/-! ## A316973.P2176819979230618445

`A330439(A316984(n))`
-/

namespace A316973.P2176819979230618445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330439 (A316984 n).toNat

end

end A316973.P2176819979230618445

/-!
# A316974: Number of non-isomorphic strict multiset partitions of {1, 1, 2, 2, 3, 3, ..., n, n}.

The programs for A316974, there is no canonical definition to state claims against.
-/

/-! ## A316974.P1641397134214665137

`A262978(A148947(n))`
-/

namespace A316974.P1641397134214665137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262978 (A148947 n).toNat

end

end A316974.P1641397134214665137

/-! ## A316974.P12620874984694994866

`A008624(A008549(n)+A007331(n))`
-/

namespace A316974.P12620874984694994866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008624 (A008549 n + A007331 n).toNat

end

end A316974.P12620874984694994866

/-! ## A316974.P12986916857854021246

`A291636(A349014(n))+A070095(n+1)`
-/

namespace A316974.P12986916857854021246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291636 (A349014 n).toNat + A070095 (n + 1)

end

end A316974.P12986916857854021246

/-!
# A316975: a(n) is the minimum number of occurrences of the same value (r0-r1+n) mod n for all pairs (r0,r1) of quadratic residues mod n.

The programs for A316975, there is no canonical definition to state claims against.
-/

/-! ## A316975.P10675114407324203532

`A043534(3^A249298(n+1))`
-/

namespace A316975.P10675114407324203532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043534 (SequenceMachineLib.roundAway ((3 : ℚ) ^ (A249298 (n + 1) : ℤ))).toNat

end

end A316975.P10675114407324203532

/-! ## A316975.P3604332119030073198

`A043559(3^A249298(n+1))`
-/

namespace A316975.P3604332119030073198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043559 (SequenceMachineLib.roundAway ((3 : ℚ) ^ (A249298 (n + 1) : ℤ))).toNat

end

end A316975.P3604332119030073198

/-! ## A316975.P16294396351370719709

`A194821(4^A249298(n+1))`
-/

namespace A316975.P16294396351370719709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194821 (SequenceMachineLib.roundAway ((4 : ℚ) ^ (A249298 (n + 1) : ℤ))).toNat

end

end A316975.P16294396351370719709

/-! ## A316975.P17931620168604681892

`A328615(4^A249298(n+1))`
-/

namespace A316975.P17931620168604681892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328615 (SequenceMachineLib.roundAway ((4 : ℚ) ^ (A249298 (n + 1) : ℤ))).toNat

end

end A316975.P17931620168604681892

/-! ## A316975.P7674329364654375074

`A043568(A249298(n+1)^5)`
-/

namespace A316975.P7674329364654375074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043568 (A249298 (n + 1) ^ 5).toNat

end

end A316975.P7674329364654375074

/-!
# A316976: Numbers k such that some of the values (r0-r1+k) mod k for all pairs (r0,r1) of quadratic residues mod k are unique.

The programs for A316976, there is no canonical definition to state claims against.
-/

/-! ## A316976.P16205121881484050066

`eq[1, A316975(n+1)]+1`
-/

namespace A316976.P16205121881484050066
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316975 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A316976.P16205121881484050066

/-! ## A316976.P2730325675019932632

`record[A000027(n+1)/A316975(n+1)]`
-/

namespace A316976.P2730325675019932632
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000027 (n + 1) : ℚ) / (A316975 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A316976.P2730325675019932632

/-! ## A316976.P17839457774937905719

`record[A228732(n+1)/A316975(n+1)]`
-/

namespace A316976.P17839457774937905719
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A228732 (n + 1) : ℚ) / (A316975 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A316976.P17839457774937905719

/-! ## A316976.P14049501766368062961

`eq[A054977(n), A316975(A028310(n))]`
-/

namespace A316976.P14049501766368062961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316975 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A316976.P14049501766368062961

/-! ## A316976.P16200921685965364718

`record[A002473(n+1)/A316975(A002473(n+1))]`
-/

namespace A316976.P16200921685965364718
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002473 (n + 1) : ℚ) / (A316975 (A002473 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A316976.P16200921685965364718

/-!
# A316978: Number of factorizations of n into factors > 1 with no equivalent primes.

The programs for A316978, there is no canonical definition to state claims against.
-/

/-! ## A316978.P4989114683492474997

`A317791(n+1)-A004526(A050326(n+1))`
-/

namespace A316978.P4989114683492474997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317791 (n + 1) - A004526 (A050326 (n + 1)).toNat

end

end A316978.P4989114683492474997

/-! ## A316978.P4999841316117120631

`gcd(A228360(A114717(n+1)), A317791(n+1))`
-/

namespace A316978.P4999841316117120631
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A228360 (A114717 (n + 1)).toNat) (A317791 (n + 1))

end

end A316978.P4999841316117120631

/-! ## A316978.P3919440713424422017

`A335516(A322020(n+1))+A062977(n+1)`
-/

namespace A316978.P3919440713424422017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335516 (A322020 (n + 1)).toNat + A062977 (n + 1)

end

end A316978.P3919440713424422017

/-! ## A316978.P8637658304559992395

`and(A117060(n+1), A331023(n+1))`
-/

namespace A316978.P8637658304559992395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A117060 (n + 1)) (A331023 (n + 1))

end

end A316978.P8637658304559992395

/-! ## A316978.P9690380570512266298

`and(A145038(n+1), A331023(n+1))`
-/

namespace A316978.P9690380570512266298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A145038 (n + 1)) (A331023 (n + 1))

end

end A316978.P9690380570512266298

/-!
# A316979: Number of strict factorizations of n into factors > 1 with no equivalent primes.

The programs for A316979, there is no canonical definition to state claims against.
-/

/-! ## A316979.P8936972849359558578

`A331024(n+1)-(A000005(n+1)-A307408(n+1))%A136101(n)`
-/

namespace A316979.P8936972849359558578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331024 (n + 1) - Int.tmod (A000005 (n + 1) - A307408 (n + 1)) (A136101 n)

end

end A316979.P8936972849359558578

/-! ## A316979.P1933486132224787715

`A331024(n+1)-A335520(A047228(n+1))`
-/

namespace A316979.P1933486132224787715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331024 (n + 1) - A335520 (A047228 (n + 1)).toNat

end

end A316979.P1933486132224787715

/-! ## A316979.P8449084694932075390

`A331024(A031285(n))`
-/

namespace A316979.P8449084694932075390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331024 (A031285 n).toNat

end

end A316979.P8449084694932075390

/-!
# A316980: Number of non-isomorphic strict multiset partitions of weight n.

The programs for A316980, there is no canonical definition to state claims against.
-/

/-! ## A316980.P9916839154038703805

`A056594(A323794(n))+A014398(n)`
-/

namespace A316980.P9916839154038703805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056594 (A323794 n).toNat + A014398 n

end

end A316980.P9916839154038703805

/-! ## A316980.P6799641053320327005

`A014398(n)-A102681(A048473(n))`
-/

namespace A316980.P6799641053320327005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014398 n - A102681 (A048473 n).toNat

end

end A316980.P6799641053320327005

/-! ## A316980.P115271437440313273

`A014398(n)-A055641(A149407(n))`
-/

namespace A316980.P115271437440313273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014398 n - A055641 (A149407 n).toNat

end

end A316980.P115271437440313273

/-! ## A316980.P6565047805942915237

`A014398(n)+A014394(A173348(n+1))`
-/

namespace A316980.P6565047805942915237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014398 n + A014394 (A173348 (n + 1)).toNat

end

end A316980.P6565047805942915237

/-!
# A316981: Number of non-isomorphic strict multiset partitions of weight n with no equivalent vertices.

The programs for A316981, there is no canonical definition to state claims against.
-/

/-! ## A316981.P14962108088485862283

`floor(tan(1)^∑[sqrt(n)])`
-/

namespace A316981.P14962108088485862283
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (n : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.tan (1 : ℝ) ^ (∑ j ∈ Finset.range (n + 1), f1 j)⌋

end

end A316981.P14962108088485862283

/-! ## A316981.P1231490282555467911

`floor(cot(1)^∑[-sqrt(n)])`
-/

namespace A316981.P1231490282555467911
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  -Real.sqrt (n : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.cot (1 : ℝ) ^ (∑ j ∈ Finset.range (n + 1), f1 j)⌋

end

end A316981.P1231490282555467911

/-! ## A316981.P5552644187091895399

`ogf((-1+2x+x^2+3x^4+5x^5-x^6)/(-1+3x))`
-/

namespace A316981.P5552644187091895399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -2, -1, 0, -3, -5, 1] [1, -3] n

end

end A316981.P5552644187091895399

/-!
# A316983: Number of non-isomorphic self-dual multiset partitions of weight n.

The programs for A316983, there is no canonical definition to state claims against.
-/

/-! ## A316983.P3075798968660591968

`2*A318395(n)-A007716(n)`
-/

namespace A316983.P3075798968660591968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A318395 n - A007716 n

end

end A316983.P3075798968660591968

/-! ## A316983.P9744054425187520444

`2*A318395(n)+A007716(n)*A308778(n²)`
-/

namespace A316983.P9744054425187520444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A318395 n + A007716 n * A308778 (n ^ 2)

end

end A316983.P9744054425187520444

/-! ## A316983.P4362273152814586511

`2*A318395(n)+A007716(n)*A062157(A321769(n+1))`
-/

namespace A316983.P4362273152814586511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A318395 n + A007716 n * A062157 (A321769 (n + 1)).toNat

end

end A316983.P4362273152814586511

/-! ## A316983.P16567791421339761638

`A320797(n)+A321409(n)-A321413(n)`
-/

namespace A316983.P16567791421339761638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320797 n + (A321409 n - A321413 n)

end

end A316983.P16567791421339761638

/-! ## A316983.P11397049004377797484

`A095773(A151267(n))`
-/

namespace A316983.P11397049004377797484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095773 (A151267 n).toNat

end

end A316983.P11397049004377797484

/-!
# A316985: Number of solutions to x^2 + y^2 - z^2 == 1 (mod n).

The programs for A316985, there is no canonical definition to state claims against.
-/

/-! ## A316985.P14948388941748088896

`(n+1)*A000005(n^5+1)`
-/

namespace A316985.P14948388941748088896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A000005 (n ^ 5 + 1)

end

end A316985.P14948388941748088896

/-! ## A316985.P506979609094684195

`(n+1)*A301855(n^5+1)`
-/

namespace A316985.P506979609094684195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A301855 (n ^ 5 + 1)

end

end A316985.P506979609094684195

/-! ## A316985.P15162272542509939832

`(A305611(n^5+1)+1)*(n+1)`
-/

namespace A316985.P15162272542509939832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A305611 (n ^ 5 + 1) + 1) * (n + 1 : ℤ)

end

end A316985.P15162272542509939832

/-! ## A316985.P196324423689990904

`A301855(n^5+1)*A331300(n)`
-/

namespace A316985.P196324423689990904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301855 (n ^ 5 + 1) * A331300 n

end

end A316985.P196324423689990904

/-!
# A316988: The odd members of the "Almost natural numbers" (A007376).

The programs for A316988, there is no canonical definition to state claims against.
-/

/-! ## A316988.P12483697183054960521

`A007376(eq[1, A007376(n)%2])`
-/

namespace A316988.P12483697183054960521
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007376 n) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007376 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A316988.P12483697183054960521

/-! ## A316988.P11110498951450839274

`A007376(eq[1, gcd(2, A007376(n))])`
-/

namespace A316988.P11110498951450839274
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (A007376 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007376 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A316988.P11110498951450839274

/-! ## A316988.P7786362032674976226

`A033307(eq[1, gcd(4, A033307(n))])`
-/

namespace A316988.P7786362032674976226
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 4 (A033307 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033307 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A316988.P7786362032674976226

/-! ## A316988.P15754310705030778651

`A007376(eq[1, and(1, A007376(n))])`
-/

namespace A316988.P15754310705030778651
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A007376 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007376 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A316988.P15754310705030778651

/-! ## A316988.P4459855434915269917

`A007376(record[n^and(1, A007376(n))])`
-/

namespace A316988.P4459855434915269917
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) ^ (Int.land 1 (A007376 n) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007376 (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))).toNat

end

end A316988.P4459855434915269917

/-!
# A316990: Smallest exponent m of n such that A289280(n) | n^m.

The programs for A316990, there is no canonical definition to state claims against.
-/

/-! ## A316990.P12371934176532894816

`A329903(A013617(n))+2`
-/

namespace A316990.P12371934176532894816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329903 (A013617 n).toNat + 2

end

end A316990.P12371934176532894816

/-! ## A316990.P15136851722331956990

`A055874(∑[2^A049773(n+1)])`
-/

namespace A316990.P15136851722331956990
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A049773 (n + 1) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055874 (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A316990.P15136851722331956990

/-! ## A316990.P8991880951039504377

`A007978(∑[2^A049773(n+1)])-1`
-/

namespace A316990.P8991880951039504377
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A049773 (n + 1) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007978 (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)).toNat - 1

end

end A316990.P8991880951039504377

/-! ## A316990.P16727855566839382399

`A105117(gcd(n+2, A045542(n+1))²)`
-/

namespace A316990.P16727855566839382399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105117 (Int.gcd (n + 2 : ℤ) (A045542 (n + 1)) ^ 2)

end

end A316990.P16727855566839382399

/-! ## A316990.P8275325123996522435

`A055874(∑[A000079(A049773(n+1))])`
-/

namespace A316990.P8275325123996522435
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A049773 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055874 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A316990.P8275325123996522435

/-!
# A316991: Numbers m such that 1 < gcd(m, 14) < m and m does not divide 14^e for e >= 0.

The programs for A316991, there is no canonical definition to state claims against.
-/

/-! ## A316991.P17210688575859353089

`∩[A156262(A361102(2*(n+1))), A361102(n+1)]`
-/

namespace A316991.P17210688575859353089
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156262 (A361102 (2 * (n + 1))).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361102 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A316991.P17210688575859353089

/-! ## A316991.P90085108709819718

`∩[A156262(A024619(2*n+3)), A024619(n+1)]`
-/

namespace A316991.P90085108709819718
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156262 (A024619 (2 * n + 3)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024619 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A316991.P90085108709819718

/-! ## A316991.P16502390143146989595

`eq[A014963(A121885(n+3)), A131636(n+1)]`
-/

namespace A316991.P16502390143146989595
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A121885 (n + 3)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131636 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A316991.P16502390143146989595

/-! ## A316991.P71590651373158210

`lt[A175121(2*n+5), A123193(A225244(n))]`
-/

namespace A316991.P71590651373158210
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175121 (2 * n + 5)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123193 (A225244 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A316991.P71590651373158210

/-!
# A316992: Numbers m such that 1 < gcd(m, 15) < m and m does not divide 15^e for e >= 0.

The programs for A316992, there is no canonical definition to state claims against.
-/

/-! ## A316992.P7722392496554756772

`record[gcd(A336406(2*(n+2)), A336442(n+1))]`
-/

namespace A316992.P7722392496554756772
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A336406 (2 * (n + 2))) (A336442 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A316992.P7722392496554756772

/-! ## A316992.P17824691742421511374

`A215284(n+1)+A052343(A245488(n+1))`
-/

namespace A316992.P17824691742421511374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215284 (n + 1) + A052343 (A245488 (n + 1)).toNat

end

end A316992.P17824691742421511374

/-! ## A316992.P5979385142787889756

`A257569(A242719(n+2))+A005098(n+1)`
-/

namespace A316992.P5979385142787889756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257569 (A242719 (n + 2)).toNat + A005098 (n + 1)

end

end A316992.P5979385142787889756

/-! ## A316992.P3611838965935359257

`A119689(n+1)-A073490(A001008(n+2))`
-/

namespace A316992.P3611838965935359257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119689 (n + 1) - A073490 (A001008 (n + 2)).toNat

end

end A316992.P3611838965935359257

/-! ## A316992.P8096679900670224161

`lt[A320808(A182703(3*n+1)), A325334(n)]`
-/

namespace A316992.P8096679900670224161
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320808 (A182703 (3 * n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325334 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A316992.P8096679900670224161

/-!
# A316996: Consider a partition of n into distinct parts with the summands written in binary notation. a(n) is the number of such partitions whose binary representation has an odd number of binary ones.

The programs for A316996, there is no canonical definition to state claims against.
-/

/-! ## A316996.P5140005094621275480

`A000009(n)-A317239(n)`
-/

namespace A316996.P5140005094621275480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 n - A317239 n

end

end A316996.P5140005094621275480

/-! ## A316996.P1722533324735339962

`abs(A081360(n))-A317239(n)`
-/

namespace A316996.P1722533324735339962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A081360 n| - A317239 n

end

end A316996.P1722533324735339962

/-! ## A316996.P9445244930150525482

`∑[A087897(n)]-A317239(n)`
-/

namespace A316996.P9445244930150525482
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087897 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A317239 n

end

end A316996.P9445244930150525482

/-! ## A316996.P7698393868804517834

`A111133(n)+1-A317239(n)`
-/

namespace A316996.P7698393868804517834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111133 n + (1 - A317239 n)

end

end A316996.P7698393868804517834

/-! ## A316996.P9909432310646974459

`A025147(n)+A096765(n)-A317239(n)`
-/

namespace A316996.P9909432310646974459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025147 n + (A096765 n - A317239 n)

end

end A316996.P9909432310646974459

/-! ## A316996.P562438349747602744

`A003114(n)+A238708(n)-A317239(n)`
-/

namespace A316996.P562438349747602744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003114 n + (A238708 n - A317239 n)

end

end A316996.P562438349747602744

/-! ## A316996.P472100741624576016

`A239239(n)+A239243(n)-A317239(n)`
-/

namespace A316996.P472100741624576016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239239 n + (A239243 n - A317239 n)

end

end A316996.P472100741624576016

/-! ## A316996.P15555187979468922325

`A239240(n)+A239242(n)-A317239(n)`
-/

namespace A316996.P15555187979468922325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239240 n + (A239242 n - A317239 n)

end

end A316996.P15555187979468922325

/-! ## A316996.P2686570061947465644

`lcm(A020985(n), A081360(n))-A317239(n)`
-/

namespace A316996.P2686570061947465644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A020985 n) (A081360 n) : ℤ) - A317239 n

end

end A316996.P2686570061947465644

/-! ## A316996.P5955047721753181799

`A035457(2*n)-A317239(n)`
-/

namespace A316996.P5955047721753181799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035457 (2 * n) - A317239 n

end

end A316996.P5955047721753181799

/-! ## A316996.P4204968148683036557

`A032303(n)-(A317239(n)+A096765(n))`
-/

namespace A316996.P4204968148683036557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032303 n - (A317239 n + A096765 n)

end

end A316996.P4204968148683036557

/-! ## A316996.P2075789145330317807

`A116675(A327672(2*n))-A317239(n)`
-/

namespace A316996.P2075789145330317807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116675 (A327672 (2 * n)).toNat - A317239 n

end

end A316996.P2075789145330317807

/-! ## A316996.P17770875935829958606

`A219347(A000124(n))-A317239(n)`
-/

namespace A316996.P17770875935829958606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 (A000124 n).toNat - A317239 n

end

end A316996.P17770875935829958606

/-!
# A316997: Number of 1's in the first n digits of the binary expansion of sqrt(n).

The programs for A316997, there is no canonical definition to state claims against.
-/

/-! ## A316997.P56366719304703053

`A023416(or(2*n, A182691(n+1)))`
-/

namespace A316997.P56366719304703053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023416 (Int.lor (2 * n : ℤ) (A182691 (n + 1))).toNat

end

end A316997.P56366719304703053

/-! ## A316997.P3232581101508956100

`A213911(or(A011971(n+1), A292460(n+1)))`
-/

namespace A316997.P3232581101508956100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213911 (Int.lor (A011971 (n + 1)) (A292460 (n + 1))).toNat

end

end A316997.P3232581101508956100

/-! ## A316997.P14289724339522546507

`A002487(lt[A015112(2*(n+1)), A088071(3*n+2)])`
-/

namespace A316997.P14289724339522546507
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015112 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088071 (3 * n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A316997.P14289724339522546507

/-! ## A316997.P3071549749209405088

`A002487(lt[A015133(2*(n+1)), A371112(2*n+5)])`
-/

namespace A316997.P3071549749209405088
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015133 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371112 (2 * n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A316997.P3071549749209405088

/-!
# A316998: Number of nXn 0..1 arrays with every element unequal to 0, 1, 2, 3, 4, 6 or 8 king-move adjacent elements, with upper left element zero.

The programs for A316998, there is no canonical definition to state claims against.
-/

/-! ## A316998.P4800723671654505124

`A317004(∑[4*n]+1)`
-/

namespace A316998.P4800723671654505124
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317004 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A316998.P4800723671654505124

/-! ## A316998.P4388985716144267295

`record[A317004(Δ[A079824(n+1)])]`
-/

namespace A316998.P4388985716144267295
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079824 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317004 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A316998.P4388985716144267295

/-! ## A316998.P1047408195255194266

`record[A003982(n)*A317004(n+1)]`
-/

namespace A316998.P1047408195255194266
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A317004 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A316998.P1047408195255194266

/-! ## A316998.P16487071207215582976

`A317004(A001844(n))+A056965(n)`
-/

namespace A316998.P16487071207215582976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317004 (A001844 n).toNat + A056965 n

end

end A316998.P16487071207215582976

/-! ## A316998.P8046812106423768585

`A317004(A001844(n))+A180472(n)`
-/

namespace A316998.P8046812106423768585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317004 (A001844 n).toNat + A180472 n

end

end A316998.P8046812106423768585

/-!
# A316999: Number of nX3 0..1 arrays with every element unequal to 0, 1, 2, 3, 4, 6 or 8 king-move adjacent elements, with upper left element zero.

The programs for A316999, there is no canonical definition to state claims against.
-/

/-! ## A316999.P13698845419755634775

`A317004(∑[n+2]+4)`
-/

namespace A316999.P13698845419755634775
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317004 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A316999.P13698845419755634775

/-! ## A316999.P8182687871474572877

`A317004(A167614(n+1))+A011731(n)`
-/

namespace A316999.P8182687871474572877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317004 (A167614 (n + 1)).toNat + A011731 n

end

end A316999.P8182687871474572877

/-! ## A316999.P7010220533976368890

`A317004(A167614(n+1))+A025439(n)`
-/

namespace A316999.P7010220533976368890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317004 (A167614 (n + 1)).toNat + A025439 n

end

end A316999.P7010220533976368890

/-! ## A316999.P10354526356721993755

`A317004(A167614(n+1))+A185284(n)`
-/

namespace A316999.P10354526356721993755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317004 (A167614 (n + 1)).toNat + A185284 n

end

end A316999.P10354526356721993755

/-! ## A316999.P2949378799868216806

`lcm(A033999(n), A317004(A167614(n+1)))`
-/

namespace A316999.P2949378799868216806
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A317004 (A167614 (n + 1)).toNat)

end

end A316999.P2949378799868216806

