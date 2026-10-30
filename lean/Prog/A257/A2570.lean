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
import Seq.B000.C015
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C039
import Seq.B000.C041
import Seq.B000.C042
import Seq.B000.C043
import Seq.B000.C044
import Seq.B000.C045
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
import Seq.B001.C012
import Seq.B001.C014
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
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B008.C000
import Seq.B010.C000
import Seq.B011.C000
import Seq.B012.C000
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

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A257000: Characteristic function for A206074.

The programs for A257000, there is no canonical definition to state claims against.
-/

/-! ## A257000.P5341234155377932358

`char[A206074(n+1)]`
-/

namespace A257000.P5341234155377932358
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206074 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A257000.P5341234155377932358

/-! ## A257000.P15080022451033946266

`char[A305430(n+1)]`
-/

namespace A257000.P15080022451033946266
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305430 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A257000.P15080022451033946266

/-! ## A257000.P7709930217773521344

`char[A305429(n+3)]`
-/

namespace A257000.P7709930217773521344
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305429 (n + 3)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A257000.P7709930217773521344

/-! ## A257000.P2633924575996944036

`Δ[A255574(abs(1-n))]`
-/

namespace A257000.P2633924575996944036
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255574 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A257000.P2633924575996944036

/-! ## A257000.P13135310717462919448

`A255574(n)-A255574(A004273(n)-n)`
-/

namespace A257000.P13135310717462919448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255574 n - A255574 (A004273 n - (n : ℤ)).toNat

end

end A257000.P13135310717462919448

/-! ## A257000.P9384226085225326592

`A389911(A019565(n))`
-/

namespace A257000.P9384226085225326592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389911 (A019565 n).toNat

end

end A257000.P9384226085225326592

/-! ## A257000.P4430313363581332964

`A280749(lcm(4, n)/2+1)+char[A280740(n+1)]`
-/

namespace A257000.P4430313363581332964
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280740 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280749 (SequenceMachineLib.roundAway ((Nat.lcm 4 n : ℚ) / 2 + 1)).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A257000.P4430313363581332964

/-! ## A257000.P13891227389386158865

`A280749(2*n+1)+char[A280740(n+1)]`
-/

namespace A257000.P13891227389386158865
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280740 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280749 (2 * n + 1) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A257000.P13891227389386158865

/-!
# A257001: Numbers such that the largest missing digit is a divisor.

The programs for A257001, there is no canonical definition to state claims against.
-/

/-! ## A257001.P3473324694692325010

`eq[n%A116667(n), A000007(n)]`
-/

namespace A257001.P3473324694692325010
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n : ℤ) (A116667 n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A257001.P3473324694692325010

/-! ## A257001.P3672539160164739495

`eq[(n+1)%A116667(n), A052409(A175067(n+1))]`
-/

namespace A257001.P3672539160164739495
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 1 : ℤ) (A116667 n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052409 (A175067 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A257001.P3672539160164739495

/-! ## A257001.P12256874203311732583

`eq[(n+1)%A116667(n), A052409(n²+1)]`
-/

namespace A257001.P12256874203311732583
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 1 : ℤ) (A116667 n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052409 (n ^ 2 + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A257001.P12256874203311732583

/-! ## A257001.P11782892123469669486

`A366847(A117124(n+2))`
-/

namespace A257001.P11782892123469669486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366847 (A117124 (n + 2)).toNat

end

end A257001.P11782892123469669486

/-! ## A257001.P10216220838423469390

`A036627(A036638(n))+9*(n+2)`
-/

namespace A257001.P10216220838423469390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036627 (A036638 n).toNat + (9 * (n + 2) : ℤ)

end

end A257001.P10216220838423469390

/-!
# A257002: Primes p such that p+2 divides p^p+2.

The programs for A257002, there is no canonical definition to state claims against.
-/

/-! ## A257002.P4398903150053920676

`p?[A015922(n+5)-2]`
-/

namespace A257002.P4398903150053920676
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015922 (n + 5) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A257002.P4398903150053920676

/-! ## A257002.P17777568913497569990

`p?[A081765(n+1)]`
-/

namespace A257002.P17777568913497569990
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081765 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A257002.P17777568913497569990

/-! ## A257002.P5967758666726909193

`p?[A276967(n+1)-2]`
-/

namespace A257002.P5967758666726909193
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276967 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A257002.P5967758666726909193

/-! ## A257002.P17108265714804375056

`p?[A213382(n+1)]`
-/

namespace A257002.P17108265714804375056
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213382 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A257002.P17108265714804375056

/-! ## A257002.P14496936907040962213

`∩[A049591(n+1), A081765(n+1)]`
-/

namespace A257002.P14496936907040962213
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049591 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081765 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A257002.P14496936907040962213

/-! ## A257002.P17575567606307677139

`∩[A000040(n+1), A081765(n+1)]`
-/

namespace A257002.P17575567606307677139
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081765 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A257002.P17575567606307677139

/-! ## A257002.P5871287053813768665

`∩[A004139(n+1), A081765(n+1)]`
-/

namespace A257002.P5871287053813768665
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081765 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A257002.P5871287053813768665

/-! ## A257002.P17529812910764391154

`∩[A045319(n+1), A081765(n+1)]`
-/

namespace A257002.P17529812910764391154
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081765 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A257002.P17529812910764391154

/-! ## A257002.P8238043340977950444

`∩[A045344(n+1), A081765(n+1)]`
-/

namespace A257002.P8238043340977950444
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081765 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A257002.P8238043340977950444

/-! ## A257002.P10561111106855086919

`∩[A051948(n+1), A081765(n+1)]`
-/

namespace A257002.P10561111106855086919
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051948 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081765 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A257002.P10561111106855086919

/-! ## A257002.P10291784499024153656

`∩[A053813(n+1), A081765(n+1)]`
-/

namespace A257002.P10291784499024153656
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053813 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081765 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A257002.P10291784499024153656

/-! ## A257002.P6967836512569464172

`∩[A064728(n+1), A081765(n+1)]`
-/

namespace A257002.P6967836512569464172
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064728 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081765 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A257002.P6967836512569464172

/-! ## A257002.P3155917051079572717

`∩[A065091(n+1), A081765(n+1)]`
-/

namespace A257002.P3155917051079572717
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081765 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A257002.P3155917051079572717

/-! ## A257002.P10654208907613467611

`∩[A066542(n+1), A081765(n+1)]`
-/

namespace A257002.P10654208907613467611
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066542 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081765 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A257002.P10654208907613467611

/-! ## A257002.P8287829484984048871

`∩[A081765(n+1), A083249(n+1)]`
-/

namespace A257002.P8287829484984048871
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081765 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083249 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A257002.P8287829484984048871

/-! ## A257002.P644888294273304334

`∩[A081765(n+1), A093515(n+1)]`
-/

namespace A257002.P644888294273304334
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081765 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093515 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A257002.P644888294273304334

/-! ## A257002.P685183490192998409

`∩[A000040(n+1), A213382(n+1)]`
-/

namespace A257002.P685183490192998409
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213382 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A257002.P685183490192998409

/-! ## A257002.P3970718198177370011

`∩[A140826(n+1), A081765(n+1)]`
-/

namespace A257002.P3970718198177370011
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140826 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081765 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A257002.P3970718198177370011

/-! ## A257002.P826405424961222640

`∩[A045344(n+1), A213382(n+1)]`
-/

namespace A257002.P826405424961222640
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213382 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A257002.P826405424961222640

/-! ## A257002.P29348153789778584

`∩[A081765(n+1), A182140(n+1)]`
-/

namespace A257002.P29348153789778584
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081765 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182140 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A257002.P29348153789778584

/-!
# A257003: Number of Zagier-reduced indefinite quadratic forms over the integers in two variables with discriminants D(n) = A079896(n).

The programs for A257003, there is no canonical definition to state claims against.
-/

/-! ## A257003.P9546935116258467002

`A113730(A337885(n+2)+A265901(n+1))`
-/

namespace A257003.P9546935116258467002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113730 (A337885 (n + 2) + A265901 (n + 1)).toNat

end

end A257003.P9546935116258467002

/-! ## A257003.P12336974783452399115

`A000120(or(A029542(n+1), A049149(n+1)))`
-/

namespace A257003.P12336974783452399115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (Int.lor (A029542 (n + 1)) (A049149 (n + 1))).toNat

end

end A257003.P12336974783452399115

/-! ## A257003.P16429247084000640869

`A347762(C(A055034(2*n+3), A067284(n)))`
-/

namespace A257003.P16429247084000640869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347762 (Nat.choose (A055034 (2 * n + 3)).toNat (A067284 n).toNat)

end

end A257003.P16429247084000640869

/-! ## A257003.P5496132522828056574

`A361159(A179309(n+1)*A252940(3*n+1))`
-/

namespace A257003.P5496132522828056574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361159 (A179309 (n + 1) * A252940 (3 * n + 1)).toNat

end

end A257003.P5496132522828056574

/-!
# A257005: Irregular triangle read by rows: period lengths of periods of Zagier-reduced binary quadratic forms with discriminants D(n) = A079896(n).

The programs for A257005, there is no canonical definition to state claims against.
-/

/-! ## A257005.P3373078107673459690

`A281013(n+1)+A033985(A145523(n))`
-/

namespace A257005.P3373078107673459690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281013 (n + 1) + A033985 (A145523 n).toNat

end

end A257005.P3373078107673459690

/-! ## A257005.P11194419913601398082

`and(A005408(A000120(n)), A277554(n+1))`
-/

namespace A257005.P11194419913601398082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A005408 (A000120 n).toNat) (A277554 (n + 1))

end

end A257005.P11194419913601398082

/-! ## A257005.P11643225500347316424

`gcd(A002808(A243716(3*n+1)), A175342(n+1))`
-/

namespace A257005.P11643225500347316424
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002808 (A243716 (3 * n + 1)).toNat) (A175342 (n + 1))

end

end A257005.P11643225500347316424

/-!
# A257007: Number of Zagier-reduced binary quadratic forms of discriminant n^2-4.

The programs for A257007, there is no canonical definition to state claims against.
-/

/-! ## A257007.P10447873803696122692

`Δ[A264599(gcd(n, C(2, n)))]`
-/

namespace A257007.P10447873803696122692
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264599 (Nat.gcd n (Nat.choose 2 n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A257007.P10447873803696122692

/-! ## A257007.P10015659019189338679

`Δ[A264599(floor(acot(n)+n))]`
-/

namespace A257007.P10015659019189338679
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264599 ⌊SequenceMachineLib.acot (n : ℝ) + (n : ℝ)⌋.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A257007.P10015659019189338679

/-! ## A257007.P4653137366845910885

`Δ[A264599(round(acot(n)+n))]`
-/

namespace A257007.P4653137366845910885
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264599 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A257007.P4653137366845910885

/-! ## A257007.P11651514946800304747

`Δ[A264599(abs(1-n)+1)]`
-/

namespace A257007.P11651514946800304747
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264599 (|1 - (n : ℤ)| + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A257007.P11651514946800304747

/-! ## A257007.P11512270033922868848

`abs(Δ[A264599(A028310(n))])`
-/

namespace A257007.P11512270033922868848
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264599 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A257007.P11512270033922868848

/-! ## A257007.P6804726522615309651

`A264599(n+1)-A264599(A028310(n))`
-/

namespace A257007.P6804726522615309651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264599 (n + 1) - A264599 (A028310 n).toNat

end

end A257007.P6804726522615309651

/-!
# A257008: Number of Zagier-reduced binary quadratic forms of discriminant n^2 + 4.

The programs for A257008, there is no canonical definition to state claims against.
-/

/-! ## A257008.P7055621584023010790

`A257003(A333574(n+1))`
-/

namespace A257008.P7055621584023010790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257003 (A333574 (n + 1)).toNat

end

end A257008.P7055621584023010790

/-!
# A257009: Number of finite sequences of positive integers with alternant equal to n.

The programs for A257009, there is no canonical definition to state claims against.
-/

/-! ## A257009.P8783821300681527432

`A257008(n+3)+A257007(n+3)`
-/

namespace A257009.P8783821300681527432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257008 (n + 3) + A257007 (n + 3)

end

end A257009.P8783821300681527432

/-! ## A257009.P5687239908734835731

`A257008(n+3)+Δ[A264599(n+2)]`
-/

namespace A257009.P5687239908734835731
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264599 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257008 (n + 3) + (f1 (n + 1) - f1 n)

end

end A257009.P5687239908734835731

/-! ## A257009.P13129428329650036216

`A257008(n+3)+A264599(n+3)-A264599(n+2)`
-/

namespace A257009.P13129428329650036216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257008 (n + 3) + (A264599 (n + 3) - A264599 (n + 2))

end

end A257009.P13129428329650036216

/-!
# A257014: Number of (n+2)X(1+2) 0..2 arrays with no 3x3 subblock diagonal sum equal to the antidiagonal sum.

The programs for A257014, there is no canonical definition to state claims against.
-/

/-! ## A257014.P13583166230100573163

`A257017(∑[n]+1)`
-/

namespace A257014.P13583166230100573163
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257017 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A257014.P13583166230100573163

/-! ## A257014.P10753810368200819728

`lcm(2, A257017(A000124(n)))`
-/

namespace A257014.P10753810368200819728
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A257017 (A000124 n).toNat)

end

end A257014.P10753810368200819728

/-! ## A257014.P5025844307816361053

`record[A010054(n)*A257017(n+1)]`
-/

namespace A257014.P5025844307816361053
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A257017 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A257014.P5025844307816361053

/-! ## A257014.P6971084482138266487

`record[A103451(n)*A257017(n+1)]`
-/

namespace A257014.P6971084482138266487
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103451 n * A257017 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A257014.P6971084482138266487

/-! ## A257014.P6749884592987036328

`record[root(A257017(n+1), A046899(n))]`
-/

namespace A257014.P6749884592987036328
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A257017 (n + 1) : ℝ) ^ (1 / (A046899 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A257014.P6749884592987036328

/-!
# A257015: Number of (n+2)X(2+2) 0..2 arrays with no 3x3 subblock diagonal sum equal to the antidiagonal sum.

The programs for A257015, there is no canonical definition to state claims against.
-/

/-! ## A257015.P10733163329524504529

`A185771(n+2)²`
-/

namespace A257015.P10733163329524504529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185771 (n + 2) ^ 2

end

end A257015.P10733163329524504529

/-! ## A257015.P5221476265128515168

`A253294(∑[n+1]+1)²`
-/

namespace A257015.P5221476265128515168
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253294 (∑ j ∈ Finset.range (n + 1), f1 j + 1) ^ 2

end

end A257015.P5221476265128515168

/-! ## A257015.P9049820205129711764

`record[A253294(A347629(n+1))²]`
-/

namespace A257015.P9049820205129711764
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253294 (A347629 (n + 1)).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A257015.P9049820205129711764

/-! ## A257015.P2199269771948984621

`A257017(∑[n+1]+2)`
-/

namespace A257015.P2199269771948984621
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257017 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A257015.P2199269771948984621

/-! ## A257015.P11864688179893620786

`A185777(∑[n+1]+1)²`
-/

namespace A257015.P11864688179893620786
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185777 (∑ j ∈ Finset.range (n + 1), f1 j + 1) ^ 2

end

end A257015.P11864688179893620786

/-!
# A257016: Number of (n+2)X(3+2) 0..2 arrays with no 3x3 subblock diagonal sum equal to the antidiagonal sum.

The programs for A257016, there is no canonical definition to state claims against.
-/

/-! ## A257016.P8455220768692953060

`A257017(∑[n+3]+1)`
-/

namespace A257016.P8455220768692953060
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257017 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A257016.P8455220768692953060

/-!
# A257019: Numbers whose quarter-square representation consists of two terms.

The programs for A257019, the canonical program `A257019.P16041214096739442514` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A257019 has offset 1).

The definition of A257019 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A257019.P16041214096739442514

`eq[3, 1+a(A055087(n))]` with `a(0)=1`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A257019

/-- `eq[3, 1+a(A055087(n))]` -/
def P16041214096739442514.Spec : Prop :=
  ∀ n, (P16041214096739442514.a n : ℤ) = A257019 (n + 1)

theorem P16041214096739442514.correct : P16041214096739442514.Spec := by
  intro n
  simp only [A257019, Nat.add_sub_cancel]

end A257019

/-! ## A257019.P6087682650228630529

`eq[1, A034807(A055087(n))]`
-/

namespace A257019.P6087682650228630529
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034807 (A055087 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A257019.P6087682650228630529

namespace A257019

/-- `eq[1, A034807(A055087(n))]` -/
def P6087682650228630529.Spec : Prop :=
  ∀ n, (P6087682650228630529.a n : ℤ) = A257019 (n + 1)

end A257019

/-! ## A257019.P667952030365460587

`eq[1, A004016(a(A055087(n)))]` with `a(0)=2`
-/

namespace A257019.P667952030365460587
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f2 =>
  A004016 (f2 (A055087 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A257019.P667952030365460587

namespace A257019

/-- `eq[1, A004016(a(A055087(n)))]` -/
def P667952030365460587.Spec : Prop :=
  ∀ n, (P667952030365460587.a n : ℤ) = A257019 (n + 1)

end A257019

/-! ## A257019.P5047060766134406536

`eq[2, A006370(a(A055087(n)))]` with `a(0)=1`
-/

namespace A257019.P5047060766134406536
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f2 =>
  A006370 (f2 (A055087 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A257019.P5047060766134406536

namespace A257019

/-- `eq[2, A006370(a(A055087(n)))]` -/
def P5047060766134406536.Spec : Prop :=
  ∀ n, (P5047060766134406536.a n : ℤ) = A257019 (n + 1)

end A257019

/-! ## A257019.P4724052631190175129

`eq[3, A000040(a(A055087(n)))]` with `a(0)=1`
-/

namespace A257019.P4724052631190175129
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f2 =>
  A000040 (f2 (A055087 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A257019.P4724052631190175129

namespace A257019

/-- `eq[3, A000040(a(A055087(n)))]` -/
def P4724052631190175129.Spec : Prop :=
  ∀ n, (P4724052631190175129.a n : ℤ) = A257019 (n + 1)

end A257019

/-! ## A257019.P5410838744952545234

`eq[3, A005384(a(A055087(n)))]` with `a(0)=1`
-/

namespace A257019.P5410838744952545234
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f2 =>
  A005384 (f2 (A055087 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A257019.P5410838744952545234

namespace A257019

/-- `eq[3, A005384(a(A055087(n)))]` -/
def P5410838744952545234.Spec : Prop :=
  ∀ n, (P5410838744952545234.a n : ℤ) = A257019 (n + 1)

end A257019

/-! ## A257019.P301130108426415202

`eq[18, A039725(a(n%A000196(n+1)))]` with `a(0)=1`
-/

namespace A257019.P301130108426415202
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  18

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f2 =>
  A039725 (f2 (Int.tmod (n : ℤ) (A000196 (n + 1))).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A257019.P301130108426415202

namespace A257019

/-- `eq[18, A039725(a(n%A000196(n+1)))]` -/
def P301130108426415202.Spec : Prop :=
  ∀ n, (P301130108426415202.a n : ℤ) = A257019 (n + 1)

end A257019

/-! ## A257019.P9478276866019313175

`eq[1, A122197(A122197(n+1))%A122197(n+1)]`
-/

namespace A257019.P9478276866019313175
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A122197 (A122197 (n + 1)).toNat) (A122197 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A257019.P9478276866019313175

namespace A257019

/-- `eq[1, A122197(A122197(n+1))%A122197(n+1)]` -/
def P9478276866019313175.Spec : Prop :=
  ∀ n, (P9478276866019313175.a n : ℤ) = A257019 (n + 1)

end A257019

/-! ## A257019.P14710972814496022494

`eq[2, A257023(n)]`
-/

namespace A257019.P14710972814496022494
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257023 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A257019.P14710972814496022494

namespace A257019

/-- `eq[2, A257023(n)]` -/
def P14710972814496022494.Spec : Prop :=
  ∀ n, (P14710972814496022494.a n : ℤ) = A257019 (n + 1)

end A257019

/-! ## A257019.P5274029377853677643

`eq[A055087(n+1), A257022(n+1)]+1`
-/

namespace A257019.P5274029377853677643
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055087 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257022 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A257019.P5274029377853677643

namespace A257019

/-- `eq[A055087(n+1), A257022(n+1)]+1` -/
def P5274029377853677643.Spec : Prop :=
  ∀ n, (P5274029377853677643.a n : ℤ) = A257019 (n + 1)

end A257019

/-!
# A257020: Numbers whose quarter-square representation consists of three terms.

The programs for A257020, the canonical program `A257020.P12343170561729900275` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A257020 has offset 1).

The definition of A257020 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A257020.P13036577954741534366

`eq[2, a(A055087(n))+1]` with `a(0)=-1, a(1)=0`
-/

namespace A257020.P13036577954741534366
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.rec [-1, 0] fun n f2 =>
  f2 (A055087 n).toNat + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A257020.P13036577954741534366

namespace A257020

/-- `eq[2, a(A055087(n))+1]` -/
def P13036577954741534366.Spec : Prop :=
  ∀ n, (P13036577954741534366.a n : ℤ) = A257020 (n + 1)

end A257020

/-! ## A257020.P7645422387827810374

`eq[1, A004016(a(A055087(n)))]` with `a(0)=3`
-/

namespace A257020.P7645422387827810374
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [3] fun n f2 =>
  A004016 (f2 (A055087 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A257020.P7645422387827810374

namespace A257020

/-- `eq[1, A004016(a(A055087(n)))]` -/
def P7645422387827810374.Spec : Prop :=
  ∀ n, (P7645422387827810374.a n : ℤ) = A257020 (n + 1)

end A257020

/-! ## A257020.P3348726041600089932

`eq[2, A000010(a(A055087(n)))]` with `a(0)=15`
-/

namespace A257020.P3348726041600089932
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.rec [15] fun n f2 =>
  A000010 (f2 (A055087 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A257020.P3348726041600089932

namespace A257020

/-- `eq[2, A000010(a(A055087(n)))]` -/
def P3348726041600089932.Spec : Prop :=
  ∀ n, (P3348726041600089932.a n : ℤ) = A257020 (n + 1)

end A257020

/-! ## A257020.P12102974014026422268

`eq[1, A001222(a(A055087(n)))]` with `a(0)=64`
-/

namespace A257020.P12102974014026422268
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [64] fun n f2 =>
  A001222 (f2 (A055087 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A257020.P12102974014026422268

namespace A257020

/-- `eq[1, A001222(a(A055087(n)))]` -/
def P12102974014026422268.Spec : Prop :=
  ∀ n, (P12102974014026422268.a n : ℤ) = A257020 (n + 1)

end A257020

/-! ## A257020.P12343170561729900275

`eq[2, A001285(A055087(A055087(n)))]`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A257020

/-- `eq[2, A001285(A055087(A055087(n)))]` -/
def P12343170561729900275.Spec : Prop :=
  ∀ n, (P12343170561729900275.a n : ℤ) = A257020 (n + 1)

theorem P12343170561729900275.correct : P12343170561729900275.Spec := by
  intro n
  simp only [A257020, Nat.add_sub_cancel]

end A257020

/-! ## A257020.P11443009420319632202

`eq[2, A000005(A122197(A122197(n+1)))]`
-/

namespace A257020.P11443009420319632202
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A122197 (A122197 (n + 1)).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A257020.P11443009420319632202

namespace A257020

/-- `eq[2, A000005(A122197(A122197(n+1)))]` -/
def P11443009420319632202.Spec : Prop :=
  ∀ n, (P11443009420319632202.a n : ℤ) = A257020 (n + 1)

end A257020

/-! ## A257020.P15171670817656904423

`eq[3, A257023(n)]`
-/

namespace A257020.P15171670817656904423
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257023 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A257020.P15171670817656904423

namespace A257020

/-- `eq[3, A257023(n)]` -/
def P15171670817656904423.Spec : Prop :=
  ∀ n, (P15171670817656904423.a n : ℤ) = A257020 (n + 1)

end A257020

/-!
# A257021: Numbers whose quarter-square representation consists of four terms.

The programs for A257021, there is no canonical definition to state claims against.
-/

/-! ## A257021.P11886167162279568418

`lt[3, A257023(n)]`
-/

namespace A257021.P11886167162279568418
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257023 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A257021.P11886167162279568418

/-! ## A257021.P2050251791058917890

`eq[4, A257023(round(acot(n)+n))]`
-/

namespace A257021.P2050251791058917890
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257023 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A257021.P2050251791058917890

/-! ## A257021.P16672355960532038123

`A000027(eq[4, A257023(n)])`
-/

namespace A257021.P16672355960532038123
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257023 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A257021.P16672355960532038123

/-! ## A257021.P1084467633800264065

`record[A257018(n+4)]`
-/

namespace A257021.P1084467633800264065
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257018 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A257021.P1084467633800264065

/-! ## A257021.P14569763529552738503

`A257018(4*(n+1))`
-/

namespace A257021.P14569763529552738503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257018 (4 * (n + 1))

end

end A257021.P14569763529552738503

/-!
# A257022: Trace of n in the quarter-sum representation of n.

The programs for A257022, there is no canonical definition to state claims against.
-/

/-! ## A257022.P712951957119228287

`A001222(gcd(2*A055087(n), 2^n))`
-/

namespace A257022.P712951957119228287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (Int.gcd (2 * A055087 n) (2 ^ n : ℤ))

end

end A257022.P712951957119228287

/-! ## A257022.P17596801728707198731

`A055396(record[A066048(n+1)]*A249727(n+1))`
-/

namespace A257022.P17596801728707198731
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066048 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A249727 (n + 1)).toNat

end

end A257022.P17596801728707198731

/-! ## A257022.P13319076911180188376

`gcd(A055087(n), A056239(A017914(n)))`
-/

namespace A257022.P13319076911180188376
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A055087 n) (A056239 (A017914 n).toNat)

end

end A257022.P13319076911180188376

/-! ## A257022.P9700103267490855695

`A051903(or(A000079(n), A274878(n)))`
-/

namespace A257022.P9700103267490855695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (Int.lor (A000079 n) (A274878 n)).toNat

end

end A257022.P9700103267490855695

/-! ## A257022.P2787937159030430177

`A000120(n%floor(sqrt(n+1))+2^n-1)`
-/

namespace A257022.P2787937159030430177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (((n % Nat.sqrt (n + 1) : ℕ) : ℤ) + ((2 ^ n : ℤ) - 1)).toNat

end

end A257022.P2787937159030430177

/-!
# A257023: Number of terms in the quarter-sum representation of n.

The programs for A257023, the canonical program `A257023.P5149314278277772350` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A257023 has offset 0).

The definition of A257023 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1001 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A257023.P5149314278277772350

`∏{e}[2*a(A055087(n)), #]` with `a(0)=1`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A257023

/-- `∏{e}[2*a(A055087(n)), #]` -/
def P5149314278277772350.Spec : Prop :=
  ∀ n, (P5149314278277772350.a n : ℤ) = A257023 n

theorem P5149314278277772350.correct : P5149314278277772350.Spec := by
  intro n
  simp only [A257023]

end A257023

/-! ## A257023.P7336457526396919377

`Δ[A083479(n)]+a(A055087(n))` with `a(0)=1`
-/

namespace A257023.P7336457526396919377
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083479 n

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  f1 (n + 1) - f1 n + a (A055087 n).toNat

end

end A257023.P7336457526396919377

namespace A257023

/-- `Δ[A083479(n)]+a(A055087(n))` -/
def P7336457526396919377.Spec : Prop :=
  ∀ n, P7336457526396919377.a n = A257023 n

end A257023

/-! ## A257023.P6414576909583816173

`∏{d}[a(A055087(n))+1, A006530(#)]` with `a(0)=0`
-/

namespace A257023.P6414576909583816173
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f1 =>
  f1 (A055087 n).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n), A006530 d

end

end A257023.P6414576909583816173

namespace A257023

/-- `∏{d}[a(A055087(n))+1, A006530(#)]` -/
def P6414576909583816173.Spec : Prop :=
  ∀ n, P6414576909583816173.a n = A257023 n

end A257023

/-! ## A257023.P14819394109397520265

`∏{p}[a(A055087(n))-4, A110654(#)]` with `a(0)=2`
-/

namespace A257023.P14819394109397520265
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f1 =>
  f1 (A055087 n).toNat - 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A110654 p

end

end A257023.P14819394109397520265

namespace A257023

/-- `∏{p}[a(A055087(n))-4, A110654(#)]` -/
def P14819394109397520265.Spec : Prop :=
  ∀ n, P14819394109397520265.a n = A257023 n

end A257023

/-! ## A257023.P4656259921763013030

`A185049(A185075((n%floor(sqrt(n+1))+1)²)²)`
-/

namespace A257023.P4656259921763013030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185049 (A185075 ((n % Nat.sqrt (n + 1) + 1) ^ 2) ^ 2).toNat

end

end A257023.P4656259921763013030

namespace A257023

/-- `A185049(A185075((n%floor(sqrt(n+1))+1)²)²)` -/
def P4656259921763013030.Spec : Prop :=
  ∀ n, P4656259921763013030.a n = A257023 n

end A257023

/-! ## A257023.P3035574067505519867

`A316112(A126114(n+1))`
-/

namespace A257023.P3035574067505519867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316112 (A126114 (n + 1)).toNat

end

end A257023.P3035574067505519867

namespace A257023

/-- `A316112(A126114(n+1))` -/
def P3035574067505519867.Spec : Prop :=
  ∀ n, P3035574067505519867.a n = A257023 n

end A257023

/-! ## A257023.P17907828962244005245

`A316112((A055087(n)+1)²)`
-/

namespace A257023.P17907828962244005245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316112 ((A055087 n + 1) ^ 2).toNat

end

end A257023.P17907828962244005245

namespace A257023

/-- `A316112((A055087(n)+1)²)` -/
def P17907828962244005245.Spec : Prop :=
  ∀ n, P17907828962244005245.a n = A257023 n

end A257023

/-! ## A257023.P9709537344236121037

`A316112(A122197(n+1)²)`
-/

namespace A257023.P9709537344236121037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316112 (A122197 (n + 1) ^ 2).toNat

end

end A257023.P9709537344236121037

namespace A257023

/-- `A316112(A122197(n+1)²)` -/
def P9709537344236121037.Spec : Prop :=
  ∀ n, P9709537344236121037.a n = A257023 n

end A257023

/-! ## A257023.P8330244557598643953

`A164002(A126114(n+1)+9)`
-/

namespace A257023.P8330244557598643953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164002 (A126114 (n + 1) + 9).toNat

end

end A257023.P8330244557598643953

namespace A257023

/-- `A164002(A126114(n+1)+9)` -/
def P8330244557598643953.Spec : Prop :=
  ∀ n, P8330244557598643953.a n = A257023 n

end A257023

/-! ## A257023.P4876050239100855427

`A316112(A008728(A055087(n))²)`
-/

namespace A257023.P4876050239100855427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316112 (A008728 (A055087 n).toNat ^ 2).toNat

end

end A257023.P4876050239100855427

namespace A257023

/-- `A316112(A008728(A055087(n))²)` -/
def P4876050239100855427.Spec : Prop :=
  ∀ n, P4876050239100855427.a n = A257023 n

end A257023

/-!
# A257024: Number of squares in the quarter-sum representation of n.

The programs for A257024, there is no canonical definition to state claims against.
-/

/-! ## A257024.P2776205982935152132

`A008574(n)-A260740(4*n+3)`
-/

namespace A257024.P2776205982935152132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n - A260740 (4 * n + 3)

end

end A257024.P2776205982935152132

/-! ## A257024.P1092199684488697608

`A028310(4*n)-A260740(4*n+3)`
-/

namespace A257024.P1092199684488697608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (4 * n) - A260740 (4 * n + 3)

end

end A257024.P1092199684488697608

/-! ## A257024.P15164625410261156626

`record[A257088(n)]-A260740(A004767(n))`
-/

namespace A257024.P15164625410261156626
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257088 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A260740 (A004767 n).toNat

end

end A257024.P15164625410261156626

/-! ## A257024.P7101376487374381745

`A257088(2*n)-A260740(A004767(n))`
-/

namespace A257024.P7101376487374381745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257088 (2 * n) - A260740 (A004767 n).toNat

end

end A257024.P7101376487374381745

/-! ## A257024.P1837043798672162948

`A008486(n)+n-A260740(A004767(n))`
-/

namespace A257024.P1837043798672162948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 n + ((n : ℤ) - A260740 (A004767 n).toNat)

end

end A257024.P1837043798672162948

/-! ## A257024.P1514547408795003419

`A004275(2*n+1)-A260740(A004767(n))`
-/

namespace A257024.P1514547408795003419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (2 * n + 1) - A260740 (A004767 n).toNat

end

end A257024.P1514547408795003419

/-! ## A257024.P16258874027342312137

`A053610(4*n+2)-A050873(A165157(4*n+1))`
-/

namespace A257024.P16258874027342312137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053610 (4 * n + 2) - A050873 (A165157 (4 * n + 1)).toNat

end

end A257024.P16258874027342312137

/-! ## A257024.P5732823885636022055

`A053610(4*n+2)-A005811(A329562(n))`
-/

namespace A257024.P5732823885636022055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053610 (4 * n + 2) - A005811 (A329562 n).toNat

end

end A257024.P5732823885636022055

/-!
# A257025: Numbers k such that 3*R_(k+2) + 4*10^k is prime, where R_k = 11...1 is the repunit (A002275) of length k.

The programs for A257025, there is no canonical definition to state claims against.
-/

/-! ## A257025.P3730566895996594535

`A166448(A077419(n))+A077419(A036453(n+1)+A032555(n+1))`
-/

namespace A257025.P3730566895996594535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166448 (A077419 n).toNat + A077419 (A036453 (n + 1) + A032555 (n + 1)).toNat

end

end A257025.P3730566895996594535

/-!
# A257026: Numbers k such that 3*R_(k+2) + 5*10^k is prime, where R_k = 11...1 is the repunit (A002275) of length k.

The programs for A257026, there is no canonical definition to state claims against.
-/

/-! ## A257026.P7014132570656901990

`∑[A241299(∑[A274547(n)])]`
-/

namespace A257026.P7014132570656901990
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274547 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241299 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A257026.P7014132570656901990

/-! ## A257026.P13896957990283195557

`∑[A126795(A059221(ceil(3*n/2)))]`
-/

namespace A257026.P13896957990283195557
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126795 (A059221 ⌈3 * ((n : ℚ) / 2)⌉.toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A257026.P13896957990283195557

/-! ## A257026.P7738741820412651523

`record[A286606(A018900(2*(n+2)))+1]`
-/

namespace A257026.P7738741820412651523
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286606 (A018900 (2 * (n + 2))).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A257026.P7738741820412651523

/-! ## A257026.P1920813077041634260

`eq[∏{e}[n+1, #+1], A246029(A305252(n+1))]`
-/

namespace A257026.P1920813077041634260
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), (Nat.factorization (f2 n) p + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246029 (A305252 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A257026.P1920813077041634260

/-! ## A257026.P1470837561335053352

`A192013(A125666(3*(n+1)))+A000982(n)`
-/

namespace A257026.P1470837561335053352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192013 (A125666 (3 * (n + 1))).toNat + A000982 n

end

end A257026.P1470837561335053352

/-!
# A257027: Numbers k such that 7*R_(k+2) - 6*10^k is prime, where R_k = 11...1 is the repunit (A002275) of length k.

The programs for A257027, there is no canonical definition to state claims against.
-/

/-! ## A257027.P12687414494249709865

`eq[A241020(n+2), A329683(n)]`
-/

namespace A257027.P12687414494249709865
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241020 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329683 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A257027.P12687414494249709865

/-! ## A257027.P13657118233232082049

`eq[A090794(A381078(2*(n+2))), A241020(n+2)]`
-/

namespace A257027.P13657118233232082049
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090794 (A381078 (2 * (n + 2))).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241020 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A257027.P13657118233232082049

/-! ## A257027.P8341499329760329681

`eq[A241020(n+2), A381078(A242660(3*n+2))]`
-/

namespace A257027.P8341499329760329681
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241020 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381078 (A242660 (3 * n + 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A257027.P8341499329760329681

/-!
# A257030: Numbers k such that 7*R_(k+2) - 3*10^k is prime, where R_k = 11...1 is the repunit (A002275) of length k.

The programs for A257030, there is no canonical definition to state claims against.
-/

/-! ## A257030.P854192402344097024

`A001414(A367831(n)+A000203(2*n+1))`
-/

namespace A257030.P854192402344097024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (A367831 n + A000203 (2 * n + 1)).toNat

end

end A257030.P854192402344097024

/-!
# A257036: Numbers k such that 9*R_(k+2) - 8*10^k is prime, where R_k = 11...1 is the repunit (A002275) of length k.

The programs for A257036, there is no canonical definition to state claims against.
-/

/-! ## A257036.P4266567207460423132

`eq[A046698(n), A241018(n+2)]`
-/

namespace A257036.P4266567207460423132
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046698 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241018 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A257036.P4266567207460423132

/-!
# A257039: Numbers k such that 9*R_(k+2) - 4*10^k is prime, where R_k = 11...1 is the repunit (A002275) of length k.

The programs for A257039, there is no canonical definition to state claims against.
-/

/-! ## A257039.P1176567177151591743

`A067581(A065243(3*n+2)%A097926(n+5))`
-/

namespace A257039.P1176567177151591743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067581 (Int.tmod (A065243 (3 * n + 2)) (A097926 (n + 5))).toNat

end

end A257039.P1176567177151591743

/-!
# A257042: a(n) = (3*n+7)*n^2.

The programs for A257042, the canonical program `A257042.P6657327043587294459` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A257042 has offset 0).

The definition of A257042 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(3*n+7)*n²` (program `A257042.P6657327043587294459`, by `A257042.P6657327043587294459.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A257042.P6657327043587294459

`(3*n+7)*n²`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A257042

/-- `(3*n+7)*n²` -/
def P6657327043587294459.Spec : Prop :=
  ∀ n, (P6657327043587294459.a n : ℤ) = A257042 n

theorem P6657327043587294459.correct : P6657327043587294459.Spec := by
  intro n
  simp only [A257042]

end A257042

/-! ## A257042.P5143746974302119457

`ogf((10x+12x^2-4x^3)/(1-4x+6x^2-4x^3+x^4))`
-/

namespace A257042.P5143746974302119457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 10, 12, -4] [1, -4, 6, -4, 1] n

end

end A257042.P5143746974302119457

namespace A257042

/-- `ogf((10x+12x^2-4x^3)/(1-4x+6x^2-4x^3+x^4))` -/
def P5143746974302119457.Spec : Prop :=
  ∀ n, P5143746974302119457.a n = A257042 n

end A257042

/-! ## A257042.P7557957814219897006

`4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` with `a(0)=0, a(1)=10, a(2)=52, a(3)=144`
-/

namespace A257042.P7557957814219897006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 10, 52, 144] fun n a =>
  4 * a (n - 1) - 6 * a (n - 2) + 4 * a (n - 3) - a (n - 4)

end

end A257042.P7557957814219897006

namespace A257042

/-- `4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` -/
def P7557957814219897006.Spec : Prop :=
  ∀ n, P7557957814219897006.a n = A257042 n

theorem P7557957814219897006.correct : P7557957814219897006.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 =>
      simp [A257042, Nat.add_sub_cancel, A257042.P7557957814219897006.a, A257042.P6657327043587294459.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 4 =>
      have h1 := ih (m + 3) (by omega)
      have h2 := ih (m + 2) (by omega)
      have h3 := ih (m + 1) (by omega)
      have h4 := ih m (by omega)
      simp only [A257042, Nat.add_sub_cancel, A257042.P7557957814219897006.a, A257042.P6657327043587294459.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 4 - 1 = m + 3 by omega, show m + 4 - 2 = m + 2 by omega, show m + 4 - 3 = m + 1 by omega, show m + 4 - 4 = m by omega, show m + 3 < m + 4 by omega, show m + 2 < m + 4 by omega, show m + 1 < m + 4 by omega, show m < m + 4 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 ⊢
      rw [h1, h2, h3, h4]
      first | ring1 | ring_nf | (field_simp; (first | ring1 | ring_nf)) | omega | (push_cast; ring_nf) | nlinarith

end A257042

/-! ## A257042.P11992337863592208708

`∑[(record[lcm(4, n)]+n)*(n+1)]`
-/

namespace A257042.P11992337863592208708
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 4 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n) + n) * (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A257042.P11992337863592208708

namespace A257042

/-- `∑[(record[lcm(4, n)]+n)*(n+1)]` -/
def P11992337863592208708.Spec : Prop :=
  ∀ n, (P11992337863592208708.a n : ℤ) = A257042 n

end A257042

/-! ## A257042.P16940007276978843726

`∑[∑[18*n-4]%Δ[n^4]]`
-/

namespace A257042.P16940007276978843726
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (18 * n : ℤ) - 4

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 4

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f2 j) ((f3 (n + 1) : ℤ) - (f3 n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A257042.P16940007276978843726

namespace A257042

/-- `∑[∑[18*n-4]%Δ[n^4]]` -/
def P16940007276978843726.Spec : Prop :=
  ∀ n, P16940007276978843726.a n = A257042 n

end A257042

/-! ## A257042.P15036842818116443198

`lcm(2, (3*n+7)*n^(4/2))`
-/

namespace A257042.P15036842818116443198
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (SequenceMachineLib.roundAway ((3 * n + 7 : ℝ) * (n : ℝ) ^ ((4 : ℚ) / 2 : ℝ)))

end

end A257042.P15036842818116443198

namespace A257042

/-- `lcm(2, (3*n+7)*n^(4/2))` -/
def P15036842818116443198.Spec : Prop :=
  ∀ n, (P15036842818116443198.a n : ℤ) = A257042 n

end A257042

/-! ## A257042.P9123866145706131034

`n²+A196507(n)-n`
-/

namespace A257042.P9123866145706131034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) + (A196507 n - (n : ℤ))

end

end A257042.P9123866145706131034

namespace A257042

/-- `n²+A196507(n)-n` -/
def P9123866145706131034.Spec : Prop :=
  ∀ n, P9123866145706131034.a n = A257042 n

theorem P9123866145706131034.correct : P9123866145706131034.Spec := by
  intro n
  simp only [A257042, Nat.add_sub_cancel, A257042.P9123866145706131034.a, A257042.P6657327043587294459.a, A196507, A196507.P14709704508244085490.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A257042

/-! ## A257042.P17245179097939014109

`A179259(n)+(n+1)*(n-2)`
-/

namespace A257042.P17245179097939014109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179259 n + (n + 1 : ℤ) * ((n : ℤ) - 2)

end

end A257042.P17245179097939014109

namespace A257042

/-- `A179259(n)+(n+1)*(n-2)` -/
def P17245179097939014109.Spec : Prop :=
  ∀ n, P17245179097939014109.a n = A257042 n

theorem P17245179097939014109.correct : P17245179097939014109.Spec := by
  intro n
  simp only [A257042, Nat.add_sub_cancel, A257042.P17245179097939014109.a, A257042.P6657327043587294459.a, A179259, A179259.P11329462594109540401.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A257042

/-! ## A257042.P905791831639954401

`∑[(record[4*A006257(n)]+n)*(n+1)]`
-/

namespace A257042.P905791831639954401
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A006257 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n) + (n : ℤ)) * (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A257042.P905791831639954401

namespace A257042

/-- `∑[(record[4*A006257(n)]+n)*(n+1)]` -/
def P905791831639954401.Spec : Prop :=
  ∀ n, P905791831639954401.a n = A257042 n

end A257042

/-! ## A257042.P16119380045210759248

`A022276(n)+A005945(n)`
-/

namespace A257042.P16119380045210759248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022276 n + A005945 n

end

end A257042.P16119380045210759248

namespace A257042

/-- `A022276(n)+A005945(n)` -/
def P16119380045210759248.Spec : Prop :=
  ∀ n, P16119380045210759248.a n = A257042 n

end A257042

/-! ## A257042.P7897273711852518909

`A049450(n)+A027903(n)`
-/

namespace A257042.P7897273711852518909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049450 n + A027903 n

end

end A257042.P7897273711852518909

namespace A257042

/-- `A049450(n)+A027903(n)` -/
def P7897273711852518909.Spec : Prop :=
  ∀ n, P7897273711852518909.a n = A257042 n

theorem P7897273711852518909.correct : P7897273711852518909.Spec := by
  intro n
  simp only [A257042, Nat.add_sub_cancel, A257042.P7897273711852518909.a, A257042.P6657327043587294459.a, A027903, A027903.P4209147286881915011.a, A049450, A049450.P1815257678583562472.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A257042

/-! ## A257042.P9541902536787524928

`A115519(n)+A022268(n)`
-/

namespace A257042.P9541902536787524928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115519 n + A022268 n

end

end A257042.P9541902536787524928

namespace A257042

/-- `A115519(n)+A022268(n)` -/
def P9541902536787524928.Spec : Prop :=
  ∀ n, P9541902536787524928.a n = A257042 n

end A257042

/-! ## A257042.P4867776061220713463

`A117642(n)+A033582(n)`
-/

namespace A257042.P4867776061220713463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117642 n + A033582 n

end

end A257042.P4867776061220713463

namespace A257042

/-- `A117642(n)+A033582(n)` -/
def P4867776061220713463.Spec : Prop :=
  ∀ n, P4867776061220713463.a n = A257042 n

theorem P4867776061220713463.correct : P4867776061220713463.Spec := by
  intro n
  simp only [A257042, Nat.add_sub_cancel, A257042.P4867776061220713463.a, A257042.P6657327043587294459.a, A033582, A033582.P4303886374806047270.a, A117642, A117642.P2206942344561243653.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A257042

/-! ## A257042.P17916311941196810955

`A220443(n)+A000566(n)`
-/

namespace A257042.P17916311941196810955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220443 n + A000566 n

end

end A257042.P17916311941196810955

namespace A257042

/-- `A220443(n)+A000566(n)` -/
def P17916311941196810955.Spec : Prop :=
  ∀ n, P17916311941196810955.a n = A257042 n

end A257042

/-! ## A257042.P17889208645317909801

`A249354(n)+A033991(n)`
-/

namespace A257042.P17889208645317909801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249354 n + A033991 n

end

end A257042.P17889208645317909801

namespace A257042

/-- `A249354(n)+A033991(n)` -/
def P17889208645317909801.Spec : Prop :=
  ∀ n, P17889208645317909801.a n = A257042 n

theorem P17889208645317909801.correct : P17889208645317909801.Spec := by
  intro n
  simp only [A257042, Nat.add_sub_cancel, A257042.P17889208645317909801.a, A257042.P6657327043587294459.a, A033991, A033991.P11968073306702908903.a, A249354, A249354.P14794765986060037338.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A257042

/-! ## A257042.P7216547634316185912

`A202804(n)+A083127(n)`
-/

namespace A257042.P7216547634316185912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202804 n + A083127 n

end

end A257042.P7216547634316185912

namespace A257042

/-- `A202804(n)+A083127(n)` -/
def P7216547634316185912.Spec : Prop :=
  ∀ n, P7216547634316185912.a n = A257042 n

theorem P7216547634316185912.correct : P7216547634316185912.Spec := by
  intro n
  simp only [A257042, Nat.add_sub_cancel, A257042.P7216547634316185912.a, A257042.P6657327043587294459.a, A083127, A083127.P13350646007919024394.a, A202804, A202804.P11278304754932210698.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A257042

/-! ## A257042.P13448040765577560455

`A226450(n)+A062783(n)`
-/

namespace A257042.P13448040765577560455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226450 n + A062783 n

end

end A257042.P13448040765577560455

namespace A257042

/-- `A226450(n)+A062783(n)` -/
def P13448040765577560455.Spec : Prop :=
  ∀ n, P13448040765577560455.a n = A257042 n

theorem P13448040765577560455.correct : P13448040765577560455.Spec := by
  intro n
  simp only [A257042, Nat.add_sub_cancel, A257042.P13448040765577560455.a, A257042.P6657327043587294459.a, A062783, A062783.P15889295991207525073.a, A226450, A226450.P15708609786639552732.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A257042

/-! ## A257042.P5636780862240440719

`A294315(n)+A033581(n)`
-/

namespace A257042.P5636780862240440719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294315 n + A033581 n

end

end A257042.P5636780862240440719

namespace A257042

/-- `A294315(n)+A033581(n)` -/
def P5636780862240440719.Spec : Prop :=
  ∀ n, P5636780862240440719.a n = A257042 n

theorem P5636780862240440719.correct : P5636780862240440719.Spec := by
  intro n
  simp only [A257042, Nat.add_sub_cancel, A257042.P5636780862240440719.a, A257042.P6657327043587294459.a, A033581, A033581.P13583599227635646969.a, A294315, A294315.P3866111110080714343.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A257042

/-! ## A257042.P4671440280236660928

`A345701(n)+A247541(n)`
-/

namespace A257042.P4671440280236660928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345701 n + A247541 n

end

end A257042.P4671440280236660928

namespace A257042

/-- `A345701(n)+A247541(n)` -/
def P4671440280236660928.Spec : Prop :=
  ∀ n, P4671440280236660928.a n = A257042 n

theorem P4671440280236660928.correct : P4671440280236660928.Spec := by
  intro n
  simp only [A257042, Nat.add_sub_cancel, A257042.P4671440280236660928.a, A257042.P6657327043587294459.a, A247541, A247541.P3935640903610456510.a, A345701, A345701.P6903315535729720725.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A257042

/-! ## A257042.P3561997759340095159

`A163833(n)-A055998(n)`
-/

namespace A257042.P3561997759340095159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163833 n - A055998 n

end

end A257042.P3561997759340095159

namespace A257042

/-- `A163833(n)-A055998(n)` -/
def P3561997759340095159.Spec : Prop :=
  ∀ n, P3561997759340095159.a n = A257042 n

end A257042

/-!
# A257044: a(n) = (A242804(n)-9)/12.

The programs for A257044, there is no canonical definition to state claims against.
-/

/-! ## A257044.P10694953900413096013

`(A242804(n+1)-9)/12`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A257044.P10694953900413096013
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A242804 (n + 1) - 9 : ℚ) / 12

end

end A257044.P10694953900413096013

/-! ## A257044.P4392834922984688000

`floor(A202319(n+1)/12)`
-/

namespace A257044.P4392834922984688000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A202319 (n + 1) : ℚ) / 12⌋

end

end A257044.P4392834922984688000

/-! ## A257044.P5475038333216755201

`floor(A242804(n+1)/12)`
-/

namespace A257044.P5475038333216755201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A242804 (n + 1) : ℚ) / 12⌋

end

end A257044.P5475038333216755201

/-! ## A257044.P4870942007924262028

`ceil(A202319(n+1)/12-A010051(A000040(n+1)))`
-/

namespace A257044.P4870942007924262028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A202319 (n + 1) : ℚ) / 12 - (A010051 (A000040 (n + 1)).toNat : ℚ)⌉

end

end A257044.P4870942007924262028

/-! ## A257044.P11555163466574458279

`ceil(A129667(A020482(n+2))+A202319(n+1)/12)`
-/

namespace A257044.P11555163466574458279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A129667 (A020482 (n + 2)).toNat : ℚ) + (A202319 (n + 1) : ℚ) / 12⌉

end

end A257044.P11555163466574458279

/-! ## A257044.P3274280929021696583

`ceil(A202319(n+1)/12-A001222(A145473(n+1)))`
-/

namespace A257044.P3274280929021696583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A202319 (n + 1) : ℚ) / 12 - (A001222 (A145473 (n + 1)).toNat : ℚ)⌉

end

end A257044.P3274280929021696583

/-!
# A257045: Denominators of Apéry's rational approximations p_n/q_n to zeta(3).

The programs for A257045, there is no canonical definition to state claims against.
-/

/-! ## A257045.P8882206445882775680

`∑{#}[n, (C(n, #)*C(n+#, #))²]*A059416(n)`
-/

namespace A257045.P8882206445882775680
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ k ∈ Finset.range (f1 n + 1), (Nat.choose n k * Nat.choose (n + k) k) ^ 2 : ℕ) : ℤ) * A059416 n

end

end A257045.P8882206445882775680

/-! ## A257045.P8886470902499628972

`A005259(n)*A059416(n)`
-/

namespace A257045.P8886470902499628972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005259 n * A059416 n

end

end A257045.P8886470902499628972

/-! ## A257045.P7791992249874023007

`A059416(n)*A143007(∑[4*n])`
-/

namespace A257045.P7791992249874023007
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059416 n * A143007 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A257045.P7791992249874023007

/-! ## A257045.P7965173663055092264

`or(1, A143007(2*(n²+n)))*A059416(n)`
-/

namespace A257045.P7965173663055092264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A143007 (2 * (n ^ 2 + n))) * A059416 n

end

end A257045.P7965173663055092264

/-! ## A257045.P4426320061987608126

`record[A003982(n)*A143007(n)]*A059416(n)`
-/

namespace A257045.P4426320061987608126
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A143007 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A059416 n

end

end A257045.P4426320061987608126

/-!
# A257046: Numbers having trace 1 in their enhanced squares representation, see A256913.

The programs for A257046, there is no canonical definition to state claims against.
-/

/-! ## A257046.P2695343071708858754

`comp[A257047(n+1)]`
-/

namespace A257046.P2695343071708858754
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257047 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A257046.P2695343071708858754

/-! ## A257046.P8456485333815777284

`eq[1, A256914(n)]`
-/

namespace A257046.P8456485333815777284
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256914 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A257046.P8456485333815777284

/-! ## A257046.P2696121450294911217

`record[(n+1)/A256914(n+1)]`
-/

namespace A257046.P2696121450294911217
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A256914 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A257046.P2696121450294911217

/-! ## A257046.P14610452667213916425

`record[n+1-A256914(n%(n+1))]`
-/

namespace A257046.P14610452667213916425
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A256914 (n % (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A257046.P14610452667213916425

/-! ## A257046.P7941666986126793748

`record[A000027(n+1)-A256914(n)]`
-/

namespace A257046.P7941666986126793748
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (n + 1) - A256914 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A257046.P7941666986126793748

/-! ## A257046.P793609657316347313

`record[n+1-A256914(A256914(n+1)-1)]`
-/

namespace A257046.P793609657316347313
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A256914 (A256914 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A257046.P793609657316347313

/-! ## A257046.P4026112100921550399

`record[A000720(A000040(n+1))-A256914(n)]`
-/

namespace A257046.P4026112100921550399
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A000040 (n + 1)).toNat - A256914 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A257046.P4026112100921550399

/-!
# A257047: Numbers not having trace 1 in their enhanced squares representation, see A256913.

The programs for A257047, there is no canonical definition to state claims against.
-/

/-! ## A257047.P3257962851068685732

`comp[A257046(n+1)]`
-/

namespace A257047.P3257962851068685732
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257046 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A257047.P3257962851068685732

/-! ## A257047.P15262238293131301045

`eq[char[A257046(n+1)], A000007(n+1)]`
-/

namespace A257047.P15262238293131301045
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257046 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A257047.P15262238293131301045

/-! ## A257047.P12339666565302732087

`record[(n+1)%(A256914(n+1)+n)]`
-/

namespace A257047.P12339666565302732087
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 1 : ℤ) (A256914 (n + 1) + (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A257047.P12339666565302732087

/-! ## A257047.P11404399628601603073

`eq[1, A060576(A256914(n))]`
-/

namespace A257047.P11404399628601603073
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060576 (A256914 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A257047.P11404399628601603073

/-! ## A257047.P2013239724339742538

`eq[A000007(n), A214263(A256914(n))]`
-/

namespace A257047.P2013239724339742538
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214263 (A256914 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A257047.P2013239724339742538

/-! ## A257047.P720343396136850599

`eq[A209229(2*n+1), A214263(A256914(n))]`
-/

namespace A257047.P720343396136850599
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209229 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214263 (A256914 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A257047.P720343396136850599

/-!
# A257049: Integer area of integer-sided triangle such that two sides are twin primes.

The programs for A257049, there is no canonical definition to state claims against.
-/

/-! ## A257049.P11822939664462373310

`2*A086381(n+1)*A253639(n+1)`
-/

namespace A257049.P11822939664462373310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A086381 (n + 1) * A253639 (n + 1)

end

end A257049.P11822939664462373310

/-! ## A257049.P4885211495771728538

`(A257547(n+1)+2)*A086381(n+1)`
-/

namespace A257049.P4885211495771728538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A257547 (n + 1) + 2) * A086381 (n + 1)

end

end A257049.P4885211495771728538

/-! ## A257049.P16231988142644246120

`2*sqrt(A085554(n+1)-4)*A253639(n+1)`
-/

namespace A257049.P16231988142644246120
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  2 * (Real.sqrt (A085554 (n + 1) - 4 : ℝ) * (A253639 (n + 1) : ℝ))

end

end A257049.P16231988142644246120

/-! ## A257049.P7849335442026696972

`(A085554(n+1)+A086381(n+1)²)*A086381(n+1)`
-/

namespace A257049.P7849335442026696972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A085554 (n + 1) + A086381 (n + 1) ^ 2) * A086381 (n + 1)

end

end A257049.P7849335442026696972

/-! ## A257049.P15071194045121329847

`2*sqrt(A253639(n+1)-A020639(2*(n+1)))*A253639(n+1)`
-/

namespace A257049.P15071194045121329847
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  2 * (Real.sqrt (A253639 (n + 1) - A020639 (2 * (n + 1)) : ℝ) * (A253639 (n + 1) : ℝ))

end

end A257049.P15071194045121329847

/-! ## A257049.P3746075015610702021

`2*A054602(A086381(n+1))`
-/

namespace A257049.P3746075015610702021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A054602 (A086381 (n + 1)).toNat

end

end A257049.P3746075015610702021

/-! ## A257049.P17408382105832462888

`2*A054602(floor(sqrt(A253639(n+1))))`
-/

namespace A257049.P17408382105832462888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A054602 (Int.sqrt (A253639 (n + 1))).toNat

end

end A257049.P17408382105832462888

/-! ## A257049.P7049244650174608805

`A005843(A086381(n+1))*A253639(n+1)`
-/

namespace A257049.P7049244650174608805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A086381 (n + 1)).toNat * A253639 (n + 1)

end

end A257049.P7049244650174608805

/-!
# A257050: Array a(m,n) (m>0, n>=0) of quotient of de Bruijn alternating sums of m-th powers of binomial coefficients, listed by ascending antidiagonals.

The programs for A257050, there is no canonical definition to state claims against.
-/

/-! ## A257050.P2583059903451330512

`A262882(A294118(n))`
-/

namespace A257050.P2583059903451330512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262882 (A294118 n).toNat

end

end A257050.P2583059903451330512

/-! ## A257050.P9029197466047226134

`A262882(A381512(n))`
-/

namespace A257050.P9029197466047226134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262882 (A381512 n).toNat

end

end A257050.P9029197466047226134

/-! ## A257050.P17401473958759838168

`A262882(A003992(n)²)`
-/

namespace A257050.P17401473958759838168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262882 (A003992 n ^ 2).toNat

end

end A257050.P17401473958759838168

/-! ## A257050.P7161567236165583231

`A038573(A323837(n)²)`
-/

namespace A257050.P7161567236165583231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038573 (A323837 n ^ 2).toNat

end

end A257050.P7161567236165583231

/-! ## A257050.P7052622899503537306

`A262882(A118340(n)²)`
-/

namespace A257050.P7052622899503537306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262882 (A118340 n ^ 2).toNat

end

end A257050.P7052622899503537306

/-!
# A257051: a(n) = cpg(n, 3) + cpg(n, 4) + ... + cpg(n, n) where cpg(n, m) is the m-th n-th-order centered polygonal number.

The programs for A257051, the canonical program `A257051.P2036527897121247495` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A257051 has offset 0).

The definition of A257051 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A257051.P12606403966672171033

`ogf((10x^3-12x^4+8x^5-2x^6)/(1-5x+10x^2-10x^3+5x^4-x^5))`
-/

namespace A257051.P12606403966672171033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 0, 0, 10, -12, 8, -2] [1, -5, 10, -10, 5, -1] n

end

end A257051.P12606403966672171033

namespace A257051

/-- `ogf((10x^3-12x^4+8x^5-2x^6)/(1-5x+10x^2-10x^3+5x^4-x^5))` -/
def P12606403966672171033.Spec : Prop :=
  ∀ n, P12606403966672171033.a n = A257051 n

end A257051

/-! ## A257051.P2036527897121247495

`5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` with `a(0)=0, a(1)=0, a(2)=0, a(3)=10, a(4)=38, a(5)=98, a(6)=208`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A257051

/-- `5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` -/
def P2036527897121247495.Spec : Prop :=
  ∀ n, P2036527897121247495.a n = A257051 n

theorem P2036527897121247495.correct : P2036527897121247495.Spec := by
  intro n
  simp only [A257051]

end A257051

/-! ## A257051.P11437745973861449481

`abs(C(n², 2)/3-1)-1`
-/

namespace A257051.P11437745973861449481
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(Nat.choose (n ^ 2) 2 : ℚ) / 3 - 1| - 1

end

end A257051.P11437745973861449481

namespace A257051

/-- `abs(C(n², 2)/3-1)-1` -/
def P11437745973861449481.Spec : Prop :=
  ∀ n, P11437745973861449481.a n = (A257051 n : ℚ)

end A257051

/-! ## A257051.P3890570702454637782

`abs(n*∑[C(n, 2)]-1)-1`
-/

namespace A257051.P3890570702454637782
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |((n * (∑ j ∈ Finset.range (n + 1), f1 j) : ℕ) : ℤ) - 1| - 1

end

end A257051.P3890570702454637782

namespace A257051

/-- `abs(n*∑[C(n, 2)]-1)-1` -/
def P3890570702454637782.Spec : Prop :=
  ∀ n, P3890570702454637782.a n = A257051 n

end A257051

/-! ## A257051.P9750497571432120670

`abs(n*C(n+1, 3)-1)-1`
-/

namespace A257051.P9750497571432120670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n * Nat.choose (n + 1) 3 : ℤ) - 1| - 1

end

end A257051.P9750497571432120670

namespace A257051

/-- `abs(n*C(n+1, 3)-1)-1` -/
def P9750497571432120670.Spec : Prop :=
  ∀ n, P9750497571432120670.a n = A257051 n

end A257051

/-! ## A257051.P13253512096915809924

`abs(1-n*∑[∑[n]-n])-1`
-/

namespace A257051.P13253512096915809924
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (n : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)| - 1

end

end A257051.P13253512096915809924

namespace A257051

/-- `abs(1-n*∑[∑[n]-n])-1` -/
def P13253512096915809924.Spec : Prop :=
  ∀ n, P13253512096915809924.a n = A257051 n

end A257051

/-! ## A257051.P7333439599696748995

`2*(A002415(n)-A157928(n))`
-/

namespace A257051.P7333439599696748995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A002415 n - A157928 n)

end

end A257051.P7333439599696748995

namespace A257051

/-- `2*(A002415(n)-A157928(n))` -/
def P7333439599696748995.Spec : Prop :=
  ∀ n, P7333439599696748995.a n = A257051 n

end A257051

/-! ## A257051.P17234679821798507396

`∑[A011894(2*n%A011782(n))]`
-/

namespace A257051.P17234679821798507396
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011894 (2 * Int.tmod (n : ℤ) (A011782 n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A257051.P17234679821798507396

namespace A257051

/-- `∑[A011894(2*n%A011782(n))]` -/
def P17234679821798507396.Spec : Prop :=
  ∀ n, P17234679821798507396.a n = A257051 n

end A257051

/-! ## A257051.P9386390272989473279

`2*(A001263(A152950(n+1))-1)`
-/

namespace A257051.P9386390272989473279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A001263 (A152950 (n + 1)).toNat - 1)

end

end A257051.P9386390272989473279

namespace A257051

/-- `2*(A001263(A152950(n+1))-1)` -/
def P9386390272989473279.Spec : Prop :=
  ∀ n, P9386390272989473279.a n = A257051 n

end A257051

/-! ## A257051.P17593096749333277430

`2*(A210664(A133263(n))-1)`
-/

namespace A257051.P17593096749333277430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A210664 (A133263 n).toNat - 1)

end

end A257051.P17593096749333277430

namespace A257051

/-- `2*(A210664(A133263(n))-1)` -/
def P17593096749333277430.Spec : Prop :=
  ∀ n, P17593096749333277430.a n = A257051 n

end A257051

/-!
# A257052: a(n) = cpg(3, n) + cpg(4, n) + ... + cpg(n, n) where cpg(m, n) is the n-th m-th-order centered polygonal number.

The programs for A257052, the canonical program `A257052.P3701379190444861965` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A257052 has offset 0).

The definition of A257052 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A257052.P14518019933785223236

`ogf((10x^3-6x^4+3x^5-x^6)/(1-5x+10x^2-10x^3+5x^4-x^5))`
-/

namespace A257052.P14518019933785223236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 0, 0, 10, -6, 3, -1] [1, -5, 10, -10, 5, -1] n

end

end A257052.P14518019933785223236

namespace A257052

/-- `ogf((10x^3-6x^4+3x^5-x^6)/(1-5x+10x^2-10x^3+5x^4-x^5))` -/
def P14518019933785223236.Spec : Prop :=
  ∀ n, P14518019933785223236.a n = A257052 n

end A257052

/-! ## A257052.P3701379190444861965

`5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` with `a(0)=0, a(1)=0, a(2)=0, a(3)=10, a(4)=44, a(5)=123, a(6)=274`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A257052

/-- `5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` -/
def P3701379190444861965.Spec : Prop :=
  ∀ n, P3701379190444861965.a n = A257052 n

theorem P3701379190444861965.correct : P3701379190444861965.Spec := by
  intro n
  simp only [A257052]

end A257052

/-! ## A257052.P8609234734091846514

`A289207(n)+3*A117662(n)`
-/

namespace A257052.P8609234734091846514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289207 n + 3 * A117662 n

end

end A257052.P8609234734091846514

namespace A257052

/-- `A289207(n)+3*A117662(n)` -/
def P8609234734091846514.Spec : Prop :=
  ∀ n, P8609234734091846514.a n = A257052 n

end A257052

/-! ## A257052.P839927816320782783

`A004275(n)+A006011(n)-A000326(n)`
-/

namespace A257052.P839927816320782783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 n + (A006011 n - A000326 n)

end

end A257052.P839927816320782783

namespace A257052

/-- `A004275(n)+A006011(n)-A000326(n)` -/
def P839927816320782783.Spec : Prop :=
  ∀ n, P839927816320782783.a n = A257052 n

end A257052

/-! ## A257052.P14310752537137559171

`A188667(n)+A289207(n)-A135503(n)`
-/

namespace A257052.P14310752537137559171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188667 n + (A289207 n - A135503 n)

end

end A257052.P14310752537137559171

namespace A257052

/-- `A188667(n)+A289207(n)-A135503(n)` -/
def P14310752537137559171.Spec : Prop :=
  ∀ n, P14310752537137559171.a n = A257052 n

end A257052

/-! ## A257052.P7677863117322114562

`A004280(n+1)+A006011(n)-A143689(n)`
-/

namespace A257052.P7677863117322114562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004280 (n + 1) + (A006011 n - A143689 n)

end

end A257052.P7677863117322114562

namespace A257052

/-- `A004280(n+1)+A006011(n)-A143689(n)` -/
def P7677863117322114562.Spec : Prop :=
  ∀ n, P7677863117322114562.a n = A257052 n

end A257052

/-! ## A257052.P17330845926424363344

`A006011(n)-Δ[A006000(A289207(n))]`
-/

namespace A257052.P17330845926424363344
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006000 (A289207 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006011 n - (f1 (n + 1) - f1 n)

end

end A257052.P17330845926424363344

namespace A257052

/-- `A006011(n)-Δ[A006000(A289207(n))]` -/
def P17330845926424363344.Spec : Prop :=
  ∀ n, P17330845926424363344.a n = A257052 n

end A257052

/-! ## A257052.P12150381318548531667

`A006011(n)+record[A029578(n)]-A000326(n)`
-/

namespace A257052.P12150381318548531667
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029578 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006011 n + (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A000326 n)

end

end A257052.P12150381318548531667

namespace A257052

/-- `A006011(n)+record[A029578(n)]-A000326(n)` -/
def P12150381318548531667.Spec : Prop :=
  ∀ n, P12150381318548531667.a n = A257052 n

end A257052

/-!
# A257054: Numbers k such that for each decimal digit d of k, "sum of all occurrences of d in k" is constant.

The programs for A257054, there is no canonical definition to state claims against.
-/

/-! ## A257054.P9500594788463280261

`∩[A048321(n+1), A138234(n)]`
-/

namespace A257054.P9500594788463280261
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048321 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138234 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A257054.P9500594788463280261

/-! ## A257054.P10784457543819960303

`lt[A040115(n), A369162(A191741(n+4))]`
-/

namespace A257054.P10784457543819960303
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040115 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369162 (A191741 (n + 4)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A257054.P10784457543819960303

/-! ## A257054.P1651572686711241083

`∪[A010785(n), A300950(A343566(n+1))]`
-/

namespace A257054.P1651572686711241083
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010785 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300950 (A343566 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A257054.P1651572686711241083

/-! ## A257054.P6263675945890698452

`∪[A010785(n), A100417(A062572(2*(n+2)))]`
-/

namespace A257054.P6263675945890698452
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010785 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100417 (A062572 (2 * (n + 2))).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A257054.P6263675945890698452

/-!
# A257055: a(n) = n*(n + 1)*(n^2 - n + 3)/6.

The programs for A257055, the canonical program `A257055.P6142584101810580142` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A257055 has offset 0).

The definition of A257055 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(n+1)*(n²-n+3)/6` (program `A257055.P17371046337829337756`, by `A257055.P17371046337829337756.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A257055.P4095972069957169806

`ogf((x+3x^3)/(1-5x+10x^2-10x^3+5x^4-x^5))`
-/

namespace A257055.P4095972069957169806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, 0, 3] [1, -5, 10, -10, 5, -1] n

end

end A257055.P4095972069957169806

namespace A257055

/-- `ogf((x+3x^3)/(1-5x+10x^2-10x^3+5x^4-x^5))` -/
def P4095972069957169806.Spec : Prop :=
  ∀ n, P4095972069957169806.a n = A257055 n

end A257055

/-! ## A257055.P17371046337829337756

`n*(n+1)*(n²-n+3)/6`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A257055.P17371046337829337756
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n * (n + 1) : ℤ) * ((n ^ 2 : ℤ) - (n : ℤ) + 3) : ℚ) / 6

end

end A257055.P17371046337829337756

namespace A257055

/-- `n*(n+1)*(n²-n+3)/6` -/
def P17371046337829337756.Spec : Prop :=
  ∀ n, P17371046337829337756.a n = (A257055 n : ℚ)

theorem P17371046337829337756.correct : P17371046337829337756.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 | 4 =>
      simp [A257055, Nat.add_sub_cancel, A257055.P17371046337829337756.a, A257055.P6142584101810580142.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 5 =>
      have h1 := ih (m + 4) (by omega)
      have h2 := ih (m + 3) (by omega)
      have h3 := ih (m + 2) (by omega)
      have h4 := ih (m + 1) (by omega)
      have h5 := ih m (by omega)
      simp only [A257055, Nat.add_sub_cancel, A257055.P17371046337829337756.a, A257055.P6142584101810580142.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 h5 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 5 - 1 = m + 4 by omega, show m + 5 - 2 = m + 3 by omega, show m + 5 - 3 = m + 2 by omega, show m + 5 - 4 = m + 1 by omega, show m + 5 - 5 = m by omega, show m + 4 < m + 5 by omega, show m + 3 < m + 5 by omega, show m + 2 < m + 5 by omega, show m + 1 < m + 5 by omega, show m < m + 5 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 h5 ⊢
      rw [← h1, ← h2, ← h3, ← h4, ← h5]
      first | ring1 | ring_nf | (field_simp; (first | ring1 | ring_nf)) | omega | (push_cast; ring_nf) | nlinarith

end A257055

/-! ## A257055.P6142584101810580142

`5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` with `a(0)=0, a(1)=1, a(2)=5, a(3)=18, a(4)=50`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A257055

/-- `5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` -/
def P6142584101810580142.Spec : Prop :=
  ∀ n, P6142584101810580142.a n = A257055 n

theorem P6142584101810580142.correct : P6142584101810580142.Spec := by
  intro n
  simp only [A257055]

end A257055

/-! ## A257055.P17234109295109195845

`3*A000332(n+1)+A000332(n+3)`
-/

namespace A257055.P17234109295109195845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A000332 (n + 1) + A000332 (n + 3)

end

end A257055.P17234109295109195845

namespace A257055

/-- `3*A000332(n+1)+A000332(n+3)` -/
def P17234109295109195845.Spec : Prop :=
  ∀ n, P17234109295109195845.a n = A257055 n

end A257055

/-! ## A257055.P6707913230770153519

`∑[n]+C(n², 2)/3`
-/

namespace A257055.P6707913230770153519
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) + (Nat.choose (n ^ 2) 2 : ℚ) / 3

end

end A257055.P6707913230770153519

namespace A257055

/-- `∑[n]+C(n², 2)/3` -/
def P6707913230770153519.Spec : Prop :=
  ∀ n, P6707913230770153519.a n = (A257055 n : ℚ)

end A257055

/-! ## A257055.P12366938210006166795

`∑[n²+4*C(n, 3)]`
-/

namespace A257055.P12366938210006166795
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 + 4 * Nat.choose n 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A257055.P12366938210006166795

namespace A257055

/-- `∑[n²+4*C(n, 3)]` -/
def P12366938210006166795.Spec : Prop :=
  ∀ n, (P12366938210006166795.a n : ℤ) = A257055 n

end A257055

/-! ## A257055.P3396511652834274875

`∑[n]+n*∑[C(n, 2)]`
-/

namespace A257055.P3396511652834274875
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + n * (∑ j ∈ Finset.range (n + 1), f2 j)

end

end A257055.P3396511652834274875

namespace A257055

/-- `∑[n]+n*∑[C(n, 2)]` -/
def P3396511652834274875.Spec : Prop :=
  ∀ n, (P3396511652834274875.a n : ℤ) = A257055 n

end A257055

/-! ## A257055.P11706704406702193247

`∑[∑[∑[a(n-1)+4]]]` with `a(0)=0, a(1)=1, a(2)=2`
-/

namespace A257055.P11706704406702193247
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 2] fun n f3 =>
  f3 (n - 1) + 4

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A257055.P11706704406702193247

namespace A257055

/-- `∑[∑[∑[a(n-1)+4]]]` -/
def P11706704406702193247.Spec : Prop :=
  ∀ n, (P11706704406702193247.a n : ℤ) = A257055 n

end A257055

/-! ## A257055.P17885335925145916801

`∑[∑[2*n²]-C(2*n, 2)]`
-/

namespace A257055.P17885335925145916801
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - (Nat.choose (2 * n) 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A257055.P17885335925145916801

namespace A257055

/-- `∑[∑[2*n²]-C(2*n, 2)]` -/
def P17885335925145916801.Spec : Prop :=
  ∀ n, P17885335925145916801.a n = A257055 n

end A257055

/-! ## A257055.P7363571112156526163

`∑[A037235(n)]`
-/

namespace A257055.P7363571112156526163
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037235 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A257055.P7363571112156526163

namespace A257055

/-- `∑[A037235(n)]` -/
def P7363571112156526163.Spec : Prop :=
  ∀ n, P7363571112156526163.a n = A257055 n

end A257055

/-! ## A257055.P1860882291907219980

`A326278(n)+n²`
-/

namespace A257055.P1860882291907219980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326278 n + (n ^ 2 : ℤ)

end

end A257055.P1860882291907219980

namespace A257055

/-- `A326278(n)+n²` -/
def P1860882291907219980.Spec : Prop :=
  ∀ n, P1860882291907219980.a n = A257055 n

end A257055

/-! ## A257055.P7599129063244072547

`A008911(n)+∑[n]`
-/

namespace A257055.P7599129063244072547
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008911 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A257055.P7599129063244072547

namespace A257055

/-- `A008911(n)+∑[n]` -/
def P7599129063244072547.Spec : Prop :=
  ∀ n, P7599129063244072547.a n = A257055 n

end A257055

/-! ## A257055.P16088050963740706200

`∑[(A161712(n)-1)/2]`
-/

namespace A257055.P16088050963740706200
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A161712 n - 1 : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A257055.P16088050963740706200

namespace A257055

/-- `∑[(A161712(n)-1)/2]` -/
def P16088050963740706200.Spec : Prop :=
  ∀ n, P16088050963740706200.a n = (A257055 n : ℚ)

end A257055

/-! ## A257055.P12144517464654999342

`∑[A146298(n)+2*n]`
-/

namespace A257055.P12144517464654999342
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146298 n + (2 * n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A257055.P12144517464654999342

namespace A257055

/-- `∑[A146298(n)+2*n]` -/
def P12144517464654999342.Spec : Prop :=
  ∀ n, P12144517464654999342.a n = A257055 n

end A257055

/-! ## A257055.P17852536693864555415

`n/2*∑[A002061(n)]`
-/

namespace A257055.P17852536693864555415
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002061 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / 2 * ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ)

end

end A257055.P17852536693864555415

namespace A257055

/-- `n/2*∑[A002061(n)]` -/
def P17852536693864555415.Spec : Prop :=
  ∀ n, P17852536693864555415.a n = (A257055 n : ℚ)

end A257055

/-! ## A257055.P17318650814532708067

`∑[Δ[A103290(n)]-n²]`
-/

namespace A257055.P17318650814532708067
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103290 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A257055.P17318650814532708067

namespace A257055

/-- `∑[Δ[A103290(n)]-n²]` -/
def P17318650814532708067.Spec : Prop :=
  ∀ n, P17318650814532708067.a n = A257055 n

end A257055

/-! ## A257055.P321853797047389053

`n/2*A116731(n+1)`
-/

namespace A257055.P321853797047389053
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / 2 * (A116731 (n + 1) : ℚ)

end

end A257055.P321853797047389053

namespace A257055

/-- `n/2*A116731(n+1)` -/
def P321853797047389053.Spec : Prop :=
  ∀ n, P321853797047389053.a n = (A257055 n : ℚ)

end A257055

/-! ## A257055.P5389234085848596648

`A103290(n+1)-∑[n²]`
-/

namespace A257055.P5389234085848596648
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103290 (n + 1) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A257055.P5389234085848596648

namespace A257055

/-- `A103290(n+1)-∑[n²]` -/
def P5389234085848596648.Spec : Prop :=
  ∀ n, P5389234085848596648.a n = A257055 n

end A257055

/-! ## A257055.P17129883345319392464

`∑[∑[A046092(n)]-3*n²]`
-/

namespace A257055.P17129883345319392464
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046092 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - (3 * n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A257055.P17129883345319392464

namespace A257055

/-- `∑[∑[A046092(n)]-3*n²]` -/
def P17129883345319392464.Spec : Prop :=
  ∀ n, P17129883345319392464.a n = A257055 n

end A257055

/-!
# A257056: Numbers k such that (# squares) < (# nonsquares) in the quarter-squares representation of k.

The programs for A257056, there is no canonical definition to state claims against.
-/

/-! ## A257056.P301610477660585190

`lt[2*A257024(n), A257023(n)]`
-/

namespace A257056.P301610477660585190
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A257024 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257023 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A257056.P301610477660585190

/-! ## A257056.P17800422612572398589

`eq[A000034(A117384(n+1)), A091453(n)]`
-/

namespace A257056.P17800422612572398589
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (A117384 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091453 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A257056.P17800422612572398589

/-! ## A257056.P10435235619726093431

`eq[3, A260452(A263132(n+1))]`
-/

namespace A257056.P10435235619726093431
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260452 (A263132 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A257056.P10435235619726093431

/-! ## A257056.P5592476258325000256

`lt[A286079(A253580(n)), A343607(n+1)]`
-/

namespace A257056.P5592476258325000256
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286079 (A253580 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343607 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A257056.P5592476258325000256

/-! ## A257056.P16611401193447631152

`lt[Δ[A117125(n+1)], A117136(n+2)]`
-/

namespace A257056.P16611401193447631152
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117125 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117136 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f3 j) n

end

end A257056.P16611401193447631152

/-!
# A257057: Numbers k such that (# squares) = (# nonsquares) in the quarter-squares representation of k.

The programs for A257057, there is no canonical definition to state claims against.
-/

/-! ## A257057.P5022482749384390525

`eq[2*A257024(n), A257023(n)]`
-/

namespace A257057.P5022482749384390525
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A257024 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257023 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A257057.P5022482749384390525

/-! ## A257057.P7175081428325708825

`eq[A000040(A256914(4*n+3)), A256915(4*n+3)]`
-/

namespace A257057.P7175081428325708825
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A256914 (4 * n + 3)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256915 (4 * n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A257057.P7175081428325708825

/-! ## A257057.P7649067086273774244

`eq[2, A088370(A167430(n+1))]`
-/

namespace A257057.P7649067086273774244
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088370 (A167430 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A257057.P7649067086273774244

/-! ## A257057.P13560531018241721267

`lt[A117434(A063226(n+1)), A350866(2*n+1)]`
-/

namespace A257057.P13560531018241721267
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117434 (A063226 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350866 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A257057.P13560531018241721267

/-! ## A257057.P8196575497491483520

`A156259(or(1, n²)+3)+A284930(n+2)-1`
-/

namespace A257057.P8196575497491483520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156259 (Nat.lor 1 (n ^ 2) + 3) + (A284930 (n + 2) - 1)

end

end A257057.P8196575497491483520

/-!
# A257058: Numbers k such that (# squares) > (# nonsquares) in the quarter-squares representation of k.

The programs for A257058, there is no canonical definition to state claims against.
-/

/-! ## A257058.P2344251684287182145

`comp[∪[A257056(n+1), A257057(n+1)]]`
-/

namespace A257058.P2344251684287182145
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257056 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257057 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A257058.P2344251684287182145

/-! ## A257058.P3830844459868409814

`lt[log2(A257023(n)), A257024(n)]`
-/

namespace A257058.P3830844459868409814
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A257023 n : ℝ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257024 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℝ)) n

end

end A257058.P3830844459868409814

/-! ## A257058.P14356729532837477877

`eq[A020639(A059344(n)), A257024(n)]`
-/

namespace A257058.P14356729532837477877
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A059344 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257024 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A257058.P14356729532837477877

/-! ## A257058.P4294418416709955285

`lt[n², A137384(2*n+1)]`
-/

namespace A257058.P4294418416709955285
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137384 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A257058.P4294418416709955285

/-!
# A257059: Number of length n 1..(n+1) arrays with every leading partial sum divisible by 2 or 3.

The programs for A257059, there is no canonical definition to state claims against.
-/

/-! ## A257059.P6701740365915535967

`A257062(∑[4*n]+1)`
-/

namespace A257059.P6701740365915535967
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257062 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A257059.P6701740365915535967

/-! ## A257059.P13569904161277444645

`record[gcd(A114327(n), A257062(n+1))]`
-/

namespace A257059.P13569904161277444645
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A114327 n) (A257062 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A257059.P13569904161277444645

/-! ## A257059.P9005242430801376137

`gcd(A000038(n), A257062(A001844(n)))`
-/

namespace A257059.P9005242430801376137
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A257062 (A001844 n).toNat)

end

end A257059.P9005242430801376137

/-! ## A257059.P17224151687653040014

`or(A000007(n), A257062(A001844(n)))`
-/

namespace A257059.P17224151687653040014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A257062 (A001844 n).toNat)

end

end A257059.P17224151687653040014

/-! ## A257059.P16433372517381291017

`A005117(gcd(n, n+1))*A257062(A001844(n))`
-/

namespace A257059.P16433372517381291017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (Nat.gcd n (n + 1)) * A257062 (A001844 n).toNat

end

end A257059.P16433372517381291017

/-! ## A257059.P3937777066271256048

`A008480(A006519(n+1))*A257062(A001844(n))`
-/

namespace A257059.P3937777066271256048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008480 (A006519 (n + 1)).toNat * A257062 (A001844 n).toNat

end

end A257059.P3937777066271256048

/-! ## A257059.P14908104340308509755

`A001222(A075019(n+2))*A257062(A001844(n))`
-/

namespace A257059.P14908104340308509755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A075019 (n + 2)).toNat * A257062 (A001844 n).toNat

end

end A257059.P14908104340308509755

/-!
# A257060: Number of length n 1..(6+1) arrays with every leading partial sum divisible by 2 or 3.

The programs for A257060, the canonical program `A257060.P9536337493416883851` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A257060 has offset 1).

The definition of A257060 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 153 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A257060.P3713134674254732079

`Δ[ogf(1/(1-5x+2x^2+x^3+x^4))]`
-/

namespace A257060.P3713134674254732079
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, -5, 2, 1, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A257060.P3713134674254732079

namespace A257060

/-- `Δ[ogf(1/(1-5x+2x^2+x^3+x^4))]` -/
def P3713134674254732079.Spec : Prop :=
  ∀ n, P3713134674254732079.a n = A257060 (n + 1)

end A257060

/-! ## A257060.P10830052316883741223

`ogf((4+2x+x^2)/(1-4x-2x^2-x^3))`
-/

namespace A257060.P10830052316883741223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [4, 2, 1] [1, -4, -2, -1] n

end

end A257060.P10830052316883741223

namespace A257060

/-- `ogf((4+2x+x^2)/(1-4x-2x^2-x^3))` -/
def P10830052316883741223.Spec : Prop :=
  ∀ n, P10830052316883741223.a n = A257060 (n + 1)

end A257060

/-! ## A257060.P9536337493416883851

`4*a(n-1)+2*a(n-2)+a(n-3)` with `a(0)=4, a(1)=18, a(2)=81`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A257060

/-- `4*a(n-1)+2*a(n-2)+a(n-3)` -/
def P9536337493416883851.Spec : Prop :=
  ∀ n, (P9536337493416883851.a n : ℤ) = A257060 (n + 1)

theorem P9536337493416883851.correct : P9536337493416883851.Spec := by
  intro n
  simp only [A257060, Nat.add_sub_cancel]

end A257060

/-! ## A257060.P9434296599905111921

`A257062(A052905(n+3))`
-/

namespace A257060.P9434296599905111921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257062 (A052905 (n + 3)).toNat

end

end A257060.P9434296599905111921

namespace A257060

/-- `A257062(A052905(n+3))` -/
def P9434296599905111921.Spec : Prop :=
  ∀ n, P9434296599905111921.a n = A257060 (n + 1)

end A257060

/-! ## A257060.P16214833716778285742

`A257062(eq[3, A219347(n)])`
-/

namespace A257060.P16214833716778285742
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257062 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A257060.P16214833716778285742

namespace A257060

/-- `A257062(eq[3, A219347(n)])` -/
def P16214833716778285742.Spec : Prop :=
  ∀ n, P16214833716778285742.a n = A257060 (n + 1)

end A257060

/-! ## A257060.P16725156646466720463

`A257062(Δ[Δ[A006504(n+1)]])`
-/

namespace A257060.P16725156646466720463
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006504 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257062 (f1 (n + 1) - f1 n).toNat

end

end A257060.P16725156646466720463

namespace A257060

/-- `A257062(Δ[Δ[A006504(n+1)]])` -/
def P16725156646466720463.Spec : Prop :=
  ∀ n, P16725156646466720463.a n = A257060 (n + 1)

end A257060

/-! ## A257060.P10044978685394866497

`A257062(Δ[A023545(n+2)]-1)`
-/

namespace A257060.P10044978685394866497
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257062 (f1 (n + 1) - f1 n - 1).toNat

end

end A257060.P10044978685394866497

namespace A257060

/-- `A257062(Δ[A023545(n+2)]-1)` -/
def P10044978685394866497.Spec : Prop :=
  ∀ n, P10044978685394866497.a n = A257060 (n + 1)

end A257060

/-! ## A257060.P15942542476672679471

`record[A257062(A052905(A007599(n)))]`
-/

namespace A257060.P15942542476672679471
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257062 (A052905 (A007599 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A257060.P15942542476672679471

namespace A257060

/-- `record[A257062(A052905(A007599(n)))]` -/
def P15942542476672679471.Spec : Prop :=
  ∀ n, P15942542476672679471.a n = A257060 (n + 1)

end A257060

/-! ## A257060.P658291826354046209

`record[A257062(A052905(A008621(n)))]`
-/

namespace A257060.P658291826354046209
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257062 (A052905 (A008621 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A257060.P658291826354046209

namespace A257060

/-- `record[A257062(A052905(A008621(n)))]` -/
def P658291826354046209.Spec : Prop :=
  ∀ n, P658291826354046209.a n = A257060 (n + 1)

end A257060

/-!
# A257061: Number of length n 1..(7+1) arrays with every leading partial sum divisible by 2 or 3.

The programs for A257061, the canonical program `A257061.P9597231729639958616` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A257061 has offset 1).

The definition of A257061 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 139 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A257061.P16385288559706066938

`ogf((5+7x+8x^2+4x^3)/(1-4x-5x^2-7x^3-4x^4))`
-/

namespace A257061.P16385288559706066938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [5, 7, 8, 4] [1, -4, -5, -7, -4] n

end

end A257061.P16385288559706066938

namespace A257061

/-- `ogf((5+7x+8x^2+4x^3)/(1-4x-5x^2-7x^3-4x^4))` -/
def P16385288559706066938.Spec : Prop :=
  ∀ n, P16385288559706066938.a n = A257061 (n + 1)

end A257061

/-! ## A257061.P9597231729639958616

`4*a(n-1)+5*a(n-2)+7*a(n-3)+4*a(n-4)` with `a(0)=5, a(1)=27, a(2)=141, a(3)=738`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A257061

/-- `4*a(n-1)+5*a(n-2)+7*a(n-3)+4*a(n-4)` -/
def P9597231729639958616.Spec : Prop :=
  ∀ n, (P9597231729639958616.a n : ℤ) = A257061 (n + 1)

theorem P9597231729639958616.correct : P9597231729639958616.Spec := by
  intro n
  simp only [A257061, Nat.add_sub_cancel]

end A257061

/-! ## A257061.P13931442537536695819

`A257062(A055999(n+4))`
-/

namespace A257061.P13931442537536695819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257062 (A055999 (n + 4)).toNat

end

end A257061.P13931442537536695819

namespace A257061

/-- `A257062(A055999(n+4))` -/
def P13931442537536695819.Spec : Prop :=
  ∀ n, P13931442537536695819.a n = A257061 (n + 1)

end A257061

/-! ## A257061.P10775299960432482444

`A257062(eq[4, A219347(n)])`
-/

namespace A257061.P10775299960432482444
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257062 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A257061.P10775299960432482444

namespace A257061

/-- `A257062(eq[4, A219347(n)])` -/
def P10775299960432482444.Spec : Prop :=
  ∀ n, P10775299960432482444.a n = A257061 (n + 1)

end A257061

/-! ## A257061.P6722914557680719624

`A257062(A000096(n+6)-5)`
-/

namespace A257061.P6722914557680719624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257062 (A000096 (n + 6) - 5).toNat

end

end A257061.P6722914557680719624

namespace A257061

/-- `A257062(A000096(n+6)-5)` -/
def P6722914557680719624.Spec : Prop :=
  ∀ n, P6722914557680719624.a n = A257061 (n + 1)

end A257061

/-! ## A257061.P5433488092578246518

`A257062(A002378(n+8)-A167499(n+8))`
-/

namespace A257061.P5433488092578246518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257062 (A002378 (n + 8) - A167499 (n + 8)).toNat

end

end A257061.P5433488092578246518

namespace A257061

/-- `A257062(A002378(n+8)-A167499(n+8))` -/
def P5433488092578246518.Spec : Prop :=
  ∀ n, P5433488092578246518.a n = A257061 (n + 1)

end A257061

/-! ## A257061.P10443655616447859575

`A257062(A002378(n+8)%A167499(n+8))`
-/

namespace A257061.P10443655616447859575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257062 (Int.tmod (A002378 (n + 8)) (A167499 (n + 8))).toNat

end

end A257061.P10443655616447859575

namespace A257061

/-- `A257062(A002378(n+8)%A167499(n+8))` -/
def P10443655616447859575.Spec : Prop :=
  ∀ n, P10443655616447859575.a n = A257061 (n + 1)

end A257061

/-!
# A257062: T(n,k)=Number of length n 1..(k+1) arrays with every leading partial sum divisible by 2 or 3.

The programs for A257062, there is no canonical definition to state claims against.
-/

/-! ## A257062.P6416161693177527543

`A107324(A249252(n+1))+A053616(n)`
-/

namespace A257062.P6416161693177527543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107324 (A249252 (n + 1)).toNat + A053616 n

end

end A257062.P6416161693177527543

/-! ## A257062.P2174765855158848923

`A331852(A182945(n+1))-A238727(n)`
-/

namespace A257062.P2174765855158848923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331852 (A182945 (n + 1)).toNat - A238727 n

end

end A257062.P2174765855158848923

/-! ## A257062.P4396017709924477654

`A106491(C(A320324(n+1), A302998(n)))`
-/

namespace A257062.P4396017709924477654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106491 (Nat.choose (A320324 (n + 1)).toNat (A302998 n).toNat)

end

end A257062.P4396017709924477654

/-! ## A257062.P17969996379589205173

`A070939(A263382(n+1))-A000700(n+4)`
-/

namespace A257062.P17969996379589205173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 (A263382 (n + 1)).toNat - A000700 (n + 4)

end

end A257062.P17969996379589205173

/-! ## A257062.P10748038273328241252

`A325678(A131818(n+2)*A214985(n+2))`
-/

namespace A257062.P10748038273328241252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325678 (A131818 (n + 2) * A214985 (n + 2)).toNat

end

end A257062.P10748038273328241252

/-!
# A257063: Number of length 1 1..(n+1) arrays with every leading partial sum divisible by 2 or 3.

The programs for A257063, the canonical program `A257063.P14805338126840968255` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A257063 has offset 1).

The definition of A257063 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A257063.P14805338126840968255

`ceil(record[or(5, n)/6])`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A257063

/-- `ceil(record[or(5, n)/6])` -/
def P14805338126840968255.Spec : Prop :=
  ∀ n, P14805338126840968255.a n = A257063 (n + 1)

theorem P14805338126840968255.correct : P14805338126840968255.Spec := by
  intro n
  simp only [A257063, Nat.add_sub_cancel]

end A257063

/-! ## A257063.P17435651567411721617

`ceil(record[xor(5, n)/6])`
-/

namespace A257063.P17435651567411721617
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.xor 5 n : ℚ) / 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)⌉

end

end A257063.P17435651567411721617

namespace A257063

/-- `ceil(record[xor(5, n)/6])` -/
def P17435651567411721617.Spec : Prop :=
  ∀ n, P17435651567411721617.a n = A257063 (n + 1)

end A257063

/-! ## A257063.P11261243405251732814

`∑[7%gcd(6, n+2)]`
-/

namespace A257063.P11261243405251732814
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7 % Nat.gcd 6 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A257063.P11261243405251732814

namespace A257063

/-- `∑[7%gcd(6, n+2)]` -/
def P11261243405251732814.Spec : Prop :=
  ∀ n, (P11261243405251732814.a n : ℤ) = A257063 (n + 1)

end A257063

/-! ## A257063.P12197350703567579964

`ceil(eq[n, or(5, n)]/6)`
-/

namespace A257063.P12197350703567579964
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 5 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(SequenceMachineLib.nth (fun j => f1 j = f2 j) n : ℚ) / 6⌉

end

end A257063.P12197350703567579964

namespace A257063

/-- `ceil(eq[n, or(5, n)]/6)` -/
def P12197350703567579964.Spec : Prop :=
  ∀ n, P12197350703567579964.a n = A257063 (n + 1)

end A257063

/-! ## A257063.P11187381992030062182

`∑[round(exp(n%6))%2]`
-/

namespace A257063.P11187381992030062182
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway (Real.exp ((n % 6 : ℕ) : ℝ))) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A257063.P11187381992030062182

namespace A257063

/-- `∑[round(exp(n%6))%2]` -/
def P11187381992030062182.Spec : Prop :=
  ∀ n, P11187381992030062182.a n = A257063 (n + 1)

end A257063

/-! ## A257063.P8881828998224759381

`∑[∑[xor(1, n)]²%3]`
-/

namespace A257063.P8881828998224759381
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) ^ 2 % 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A257063.P8881828998224759381

namespace A257063

/-- `∑[∑[xor(1, n)]²%3]` -/
def P8881828998224759381.Spec : Prop :=
  ∀ n, (P8881828998224759381.a n : ℤ) = A257063 (n + 1)

end A257063

/-! ## A257063.P4804410345195291010

`floor(record[xor(2, n)/3])+1`
-/

namespace A257063.P4804410345195291010
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.xor 2 n : ℚ) / 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)⌋ + 1

end

end A257063.P4804410345195291010

namespace A257063

/-- `floor(record[xor(2, n)/3])+1` -/
def P4804410345195291010.Spec : Prop :=
  ∀ n, P4804410345195291010.a n = A257063 (n + 1)

end A257063

/-! ## A257063.P3785846206710531897

`floor(record[or(2, n)+3]/3)`
-/

namespace A257063.P3785846206710531897
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 2 n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) / 3⌋

end

end A257063.P3785846206710531897

namespace A257063

/-- `floor(record[or(2, n)+3]/3)` -/
def P3785846206710531897.Spec : Prop :=
  ∀ n, P3785846206710531897.a n = A257063 (n + 1)

end A257063

/-! ## A257063.P7146954565907198175

`ceil(comp[or(2, n)]/3)+1`
-/

namespace A257063.P7146954565907198175
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 2 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℚ) / 3⌉ + 1

end

end A257063.P7146954565907198175

namespace A257063

/-- `ceil(comp[or(2, n)]/3)+1` -/
def P7146954565907198175.Spec : Prop :=
  ∀ n, P7146954565907198175.a n = A257063 (n + 1)

end A257063

/-! ## A257063.P809732075270438525

`round(or(3, 6*n)/9)+1`
-/

namespace A257063.P809732075270438525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Nat.lor 3 (6 * n) : ℚ) / 9) + 1

end

end A257063.P809732075270438525

namespace A257063

/-- `round(or(3, 6*n)/9)+1` -/
def P809732075270438525.Spec : Prop :=
  ∀ n, P809732075270438525.a n = A257063 (n + 1)

end A257063

/-! ## A257063.P7235315700048698469

`ceil(or(2, 6*n+5)/9)`
-/

namespace A257063.P7235315700048698469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Nat.lor 2 (6 * n + 5) : ℚ) / 9⌉

end

end A257063.P7235315700048698469

namespace A257063

/-- `ceil(or(2, 6*n+5)/9)` -/
def P7235315700048698469.Spec : Prop :=
  ∀ n, P7235315700048698469.a n = A257063 (n + 1)

end A257063

/-! ## A257063.P2335571550430976912

`ceil((or(1, n+2)+n)/3)`
-/

namespace A257063.P2335571550430976912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Nat.lor 1 (n + 2) + n : ℚ) / 3⌉

end

end A257063.P2335571550430976912

namespace A257063

/-- `ceil((or(1, n+2)+n)/3)` -/
def P2335571550430976912.Spec : Prop :=
  ∀ n, P2335571550430976912.a n = A257063 (n + 1)

end A257063

/-! ## A257063.P9108808139774797804

`round((or(1, n)+n+3)/3)`
-/

namespace A257063.P9108808139774797804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Nat.lor 1 n + (n + 3) : ℚ) / 3)

end

end A257063.P9108808139774797804

namespace A257063

/-- `round((or(1, n)+n+3)/3)` -/
def P9108808139774797804.Spec : Prop :=
  ∀ n, P9108808139774797804.a n = A257063 (n + 1)

end A257063

/-! ## A257063.P11246278038752930535

`n-floor(or(1, n-3)/3)`
-/

namespace A257063.P11246278038752930535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ⌊(Int.lor 1 ((n : ℤ) - 3) : ℚ) / 3⌋

end

end A257063.P11246278038752930535

namespace A257063

/-- `n-floor(or(1, n-3)/3)` -/
def P11246278038752930535.Spec : Prop :=
  ∀ n, P11246278038752930535.a n = A257063 (n + 1)

end A257063

/-! ## A257063.P1212430513910721893

`ceil(n-or(1, n-3)/3)`
-/

namespace A257063.P1212430513910721893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℚ) - (Int.lor 1 ((n : ℤ) - 3) : ℚ) / 3⌉

end

end A257063.P1212430513910721893

namespace A257063

/-- `ceil(n-or(1, n-3)/3)` -/
def P1212430513910721893.Spec : Prop :=
  ∀ n, P1212430513910721893.a n = A257063 (n + 1)

end A257063

/-! ## A257063.P13668893398509498009

`ceil(∑[(-1)^n+2]/3)`
-/

namespace A257063.P13668893398509498009
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 3⌉

end

end A257063.P13668893398509498009

namespace A257063

/-- `ceil(∑[(-1)^n+2]/3)` -/
def P13668893398509498009.Spec : Prop :=
  ∀ n, P13668893398509498009.a n = A257063 (n + 1)

end A257063

/-! ## A257063.P9465313165422667733

`ceil(lt[n, xor(2, n)]/3)+1`
-/

namespace A257063.P9465313165422667733
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(SequenceMachineLib.nth (fun j => f1 j < f2 j) n : ℚ) / 3⌉ + 1

end

end A257063.P9465313165422667733

namespace A257063

/-- `ceil(lt[n, xor(2, n)]/3)+1` -/
def P9465313165422667733.Spec : Prop :=
  ∀ n, P9465313165422667733.a n = A257063 (n + 1)

end A257063

/-! ## A257063.P4579284397307280097

`∑[∑[or(1, n+1)]²%3]`
-/

namespace A257063.P4579284397307280097
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) ^ 2 % 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A257063.P4579284397307280097

namespace A257063

/-- `∑[∑[or(1, n+1)]²%3]` -/
def P4579284397307280097.Spec : Prop :=
  ∀ n, (P4579284397307280097.a n : ℤ) = A257063 (n + 1)

end A257063

/-! ## A257063.P1184516913550958925

`floor(∑[4-a(n-1)]/3)` with `a(0)=5, a(1)=1`
-/

namespace A257063.P1184516913550958925
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [5, 1] fun n f1 =>
  4 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 3⌋

end

end A257063.P1184516913550958925

namespace A257063

/-- `floor(∑[4-a(n-1)]/3)` -/
def P1184516913550958925.Spec : Prop :=
  ∀ n, P1184516913550958925.a n = A257063 (n + 1)

end A257063

/-! ## A257063.P11969541604072730275

`floor((or(1, n+2)+n+2)/3)`
-/

namespace A257063.P11969541604072730275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.lor 1 (n + 2) + (n + 2) : ℚ) / 3⌋

end

end A257063.P11969541604072730275

namespace A257063

/-- `floor((or(1, n+2)+n+2)/3)` -/
def P11969541604072730275.Spec : Prop :=
  ∀ n, P11969541604072730275.a n = A257063 (n + 1)

end A257063

/-!
# A257064: Number of length 2 1..(n+1) arrays with every leading partial sum divisible by 2 or 3.

The programs for A257064, the canonical program `A257064.P3679631364865498332` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A257064 has offset 1).

The definition of A257064 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A257064.P3679631364865498332

`ogf((2+2x+3x^2+2x^3+7x^4+2x^5+5x^6+4x^7+4x^8+x^10)/(1-x-2x^6+2x^7+x^12-x^13))`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A257064

/-- `ogf((2+2x+3x^2+2x^3+7x^4+2x^5+5x^6+4x^7+4x^8+x^10)/(1-x-2x^6+2x^7+x^12-x^13))` -/
def P3679631364865498332.Spec : Prop :=
  ∀ n, P3679631364865498332.a n = A257064 (n + 1)

theorem P3679631364865498332.correct : P3679631364865498332.Spec := by
  intro n
  simp only [A257064, Nat.add_sub_cancel]

end A257064

/-! ## A257064.P7861590994304469019

`A257062(∑[n+1]+2)`
-/

namespace A257064.P7861590994304469019
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257062 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A257064.P7861590994304469019

namespace A257064

/-- `A257062(∑[n+1]+2)` -/
def P7861590994304469019.Spec : Prop :=
  ∀ n, P7861590994304469019.a n = A257064 (n + 1)

end A257064

/-! ## A257064.P188669123280488886

`A257062(C(n+2, 2)+2)%(C(n+2, 2)+2)`
-/

namespace A257064.P188669123280488886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A257062 (Nat.choose (n + 2) 2 + 2)) (Nat.choose (n + 2) 2 + 2 : ℤ)

end

end A257064.P188669123280488886

namespace A257064

/-- `A257062(C(n+2, 2)+2)%(C(n+2, 2)+2)` -/
def P188669123280488886.Spec : Prop :=
  ∀ n, P188669123280488886.a n = A257064 (n + 1)

end A257064

/-! ## A257064.P6140103431288724686

`A257062(C(n+2, 2)+2)%A076461(n+1)`
-/

namespace A257064.P6140103431288724686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A257062 (Nat.choose (n + 2) 2 + 2)) (A076461 (n + 1))

end

end A257064.P6140103431288724686

namespace A257064

/-- `A257062(C(n+2, 2)+2)%A076461(n+1)` -/
def P6140103431288724686.Spec : Prop :=
  ∀ n, P6140103431288724686.a n = A257064 (n + 1)

end A257064

/-! ## A257064.P2515962963666596657

`A257062(A167487(n)-5)%A074985(n+1)`
-/

namespace A257064.P2515962963666596657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A257062 (A167487 n - 5).toNat) (A074985 (n + 1))

end

end A257064.P2515962963666596657

namespace A257064

/-- `A257062(A167487(n)-5)%A074985(n+1)` -/
def P2515962963666596657.Spec : Prop :=
  ∀ n, P2515962963666596657.a n = A257064 (n + 1)

end A257064

/-! ## A257064.P13093040309665454735

`A008315((5-n)²)*A257062(A167487(n)-5)`
-/

namespace A257064.P13093040309665454735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008315 ((5 - (n : ℤ)) ^ 2).toNat * A257062 (A167487 n - 5).toNat

end

end A257064.P13093040309665454735

namespace A257064

/-- `A008315((5-n)²)*A257062(A167487(n)-5)` -/
def P13093040309665454735.Spec : Prop :=
  ∀ n, P13093040309665454735.a n = A257064 (n + 1)

end A257064

/-!
# A257065: Number of length 3 1..(n+1) arrays with every leading partial sum divisible by 2 or 3.

The programs for A257065, there is no canonical definition to state claims against.
-/

/-! ## A257065.P7105393184285641114

`A257062(∑[n+2]+4)`
-/

namespace A257065.P7105393184285641114
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257062 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A257065.P7105393184285641114

/-! ## A257065.P9988174238091173231

`A257062(A167614(n+1))%A018919(n)`
-/

namespace A257065.P9988174238091173231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A257062 (A167614 (n + 1)).toNat) (A018919 n)

end

end A257065.P9988174238091173231

/-! ## A257065.P18094671711679944377

`lcm(A020985(n), A257062(A167614(n+1)))`
-/

namespace A257065.P18094671711679944377
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 n) (A257062 (A167614 (n + 1)).toNat)

end

end A257065.P18094671711679944377

/-! ## A257065.P4066431435788247003

`A257062(A000096(n+1)+4)%A000917(n)`
-/

namespace A257065.P4066431435788247003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A257062 (A000096 (n + 1) + 4).toNat) (A000917 n)

end

end A257065.P4066431435788247003

/-! ## A257065.P3418244190567856043

`A257062(A055998(n)+6)%A054902(n+1)`
-/

namespace A257065.P3418244190567856043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A257062 (A055998 n + 6).toNat) (A054902 (n + 1))

end

end A257065.P3418244190567856043

/-! ## A257065.P6749654589198694576

`A014963(A008458(n))*A257062(A167614(n+1))`
-/

namespace A257065.P6749654589198694576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A008458 n).toNat * A257062 (A167614 (n + 1)).toNat

end

end A257065.P6749654589198694576

/-! ## A257065.P10399332313984193806

`A014963(A008458(n))*A257062(A000124(n+2)+2)`
-/

namespace A257065.P10399332313984193806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A008458 n).toNat * A257062 (A000124 (n + 2) + 2).toNat

end

end A257065.P10399332313984193806

/-!
# A257066: Number of length 4 1..(n+1) arrays with every leading partial sum divisible by 2 or 3.

The programs for A257066, there is no canonical definition to state claims against.
-/

/-! ## A257066.P12059762596418042798

`A257062(Δ[(n+1)²]+∑[n+1]+6)`
-/

namespace A257066.P12059762596418042798
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257062 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) + ((∑ j ∈ Finset.range (n + 1), f2 j + 6 : ℕ) : ℤ)).toNat

end

end A257066.P12059762596418042798

/-! ## A257066.P9923155719327861490

`lcm(A257062(A052905(n)+9), A269529(n))`
-/

namespace A257066.P9923155719327861490
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A257062 (A052905 n + 9).toNat) (A269529 n)

end

end A257066.P9923155719327861490

/-! ## A257066.P2844377492442110991

`A007318(∑[n])*A257062(A052905(n)+9)`
-/

namespace A257066.P2844377492442110991
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * A257062 (A052905 n + 9).toNat

end

end A257066.P2844377492442110991

/-! ## A257066.P7150439251828137042

`A257062(A052905(n)+9)+A000007(n+1)`
-/

namespace A257066.P7150439251828137042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257062 (A052905 n + 9).toNat + A000007 (n + 1)

end

end A257066.P7150439251828137042

/-! ## A257066.P7569624554256855266

`A257062(A052905(n)+9)%A216007(n+1)`
-/

namespace A257066.P7569624554256855266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A257062 (A052905 n + 9).toNat) (A216007 (n + 1))

end

end A257066.P7569624554256855266

/-! ## A257066.P2544940004720946775

`or(A000038(n), A257062(A000124(n+3)+3))`
-/

namespace A257066.P2544940004720946775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000038 n) (A257062 (A000124 (n + 3) + 3).toNat)

end

end A257066.P2544940004720946775

/-! ## A257066.P2573972618938667951

`A257062(A052905(n)+9)+char[A157998(n+1)]`
-/

namespace A257066.P2573972618938667951
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157998 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257062 (A052905 n + 9).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A257066.P2573972618938667951

/-! ## A257066.P8818991294211448076

`A257062(A000124(n+3)+3)%A281448(n+1)`
-/

namespace A257066.P8818991294211448076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A257062 (A000124 (n + 3) + 3).toNat) (A281448 (n + 1))

end

end A257066.P8818991294211448076

/-! ## A257066.P652489065443771094

`A257062(A052905(n)+9)+A055029(or(2, 3*n+1))`
-/

namespace A257066.P652489065443771094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257062 (A052905 n + 9).toNat + A055029 (Nat.lor 2 (3 * n + 1))

end

end A257066.P652489065443771094

/-! ## A257066.P12827378197709641286

`A153861(A000096(n))*A257062(A052905(n)+9)`
-/

namespace A257066.P12827378197709641286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153861 (A000096 n).toNat * A257062 (A052905 n + 9).toNat

end

end A257066.P12827378197709641286

/-! ## A257066.P9796476048941193209

`A320655(A008578(n+2))+A257062(A052905(n)+9)`
-/

namespace A257066.P9796476048941193209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320655 (A008578 (n + 2)).toNat + A257062 (A052905 n + 9).toNat

end

end A257066.P9796476048941193209

/-! ## A257066.P15516562939445201227

`A257062(A052905(n)+9)+A038760((n+1)²)`
-/

namespace A257066.P15516562939445201227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257062 (A052905 n + 9).toNat + A038760 ((n + 1) ^ 2)

end

end A257066.P15516562939445201227

/-!
# A257067: Number of length 5 1..(n+1) arrays with every leading partial sum divisible by 2 or 3.

The programs for A257067, there is no canonical definition to state claims against.
-/

/-! ## A257067.P7734496774911511092

`A257062(A167499(n+3))`
-/

namespace A257067.P7734496774911511092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257062 (A167499 (n + 3)).toNat

end

end A257067.P7734496774911511092

/-! ## A257067.P2183120618745152726

`A257062(A056000(n)+15)`
-/

namespace A257067.P2183120618745152726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257062 (A056000 n + 15).toNat

end

end A257067.P2183120618745152726

/-! ## A257067.P13905733100243801369

`A257062(A145018(n+5)+1)`
-/

namespace A257067.P13905733100243801369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257062 (A145018 (n + 5) + 1).toNat

end

end A257067.P13905733100243801369

/-! ## A257067.P2587857398396119349

`A257062(A000124(n+5)-(n+1))`
-/

namespace A257067.P2587857398396119349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257062 (A000124 (n + 5) - (n + 1 : ℤ)).toNat

end

end A257067.P2587857398396119349

/-! ## A257067.P9805692838618532677

`A257062(A133263(n+5)-(n+2))`
-/

namespace A257067.P9805692838618532677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257062 (A133263 (n + 5) - (n + 2 : ℤ)).toNat

end

end A257067.P9805692838618532677

/-! ## A257067.P16567573183030494581

`A257062(A038722(Δ[A023545(n+1)]))`
-/

namespace A257067.P16567573183030494581
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257062 (A038722 (f1 (n + 1) - f1 n).toNat).toNat

end

end A257067.P16567573183030494581

/-!
# A257068: Number of length 6 1..(n+1) arrays with every leading partial sum divisible by 2 or 3.

The programs for A257068, there is no canonical definition to state claims against.
-/

/-! ## A257068.P13896010234562776130

`A257062(A145018(n+6)+2)`
-/

namespace A257068.P13896010234562776130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257062 (A145018 (n + 6) + 2).toNat

end

end A257068.P13896010234562776130

/-! ## A257068.P16809545356852451058

`A257062(A000217(n+5)+6)`
-/

namespace A257068.P16809545356852451058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257062 (A000217 (n + 5) + 6).toNat

end

end A257068.P16809545356852451058

/-! ## A257068.P9241749725166071125

`A257062(A133263(n+6)-(n+2))`
-/

namespace A257068.P9241749725166071125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257062 (A133263 (n + 6) - (n + 2 : ℤ)).toNat

end

end A257068.P9241749725166071125

/-! ## A257068.P17816121684058767408

`A257062(A002620(n+2)+A002620(n+9))`
-/

namespace A257068.P17816121684058767408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257062 (A002620 (n + 2) + A002620 (n + 9)).toNat

end

end A257068.P17816121684058767408

/-! ## A257068.P17769848256755058118

`A257062(A167499(n+11)-A017053(n+8))`
-/

namespace A257068.P17769848256755058118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257062 (A167499 (n + 11) - A017053 (n + 8)).toNat

end

end A257068.P17769848256755058118

/-!
# A257069: Number of length 7 1..(n+1) arrays with every leading partial sum divisible by 2 or 3.

The programs for A257069, there is no canonical definition to state claims against.
-/

/-! ## A257069.P3606326500977952988

`A257062(A145018(n+7)+3)`
-/

namespace A257069.P3606326500977952988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257062 (A145018 (n + 7) + 3).toNat

end

end A257069.P3606326500977952988

/-! ## A257069.P5733548853451292917

`A257062(A000217(n+6)+7)`
-/

namespace A257069.P5733548853451292917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257062 (A000217 (n + 6) + 7).toNat

end

end A257069.P5733548853451292917

/-! ## A257069.P5239396745151066956

`A257062(A052905(n+3)+12)`
-/

namespace A257069.P5239396745151066956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257062 (A052905 (n + 3) + 12).toNat

end

end A257069.P5239396745151066956

/-! ## A257069.P2714709838041158272

`A257062(A133263(n+7)-(n+2))`
-/

namespace A257069.P2714709838041158272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257062 (A133263 (n + 7) - (n + 2 : ℤ)).toNat

end

end A257069.P2714709838041158272

/-! ## A257069.P1655582474469350026

`A257062(A020719(A000217(n+6)))`
-/

namespace A257069.P1655582474469350026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257062 (A020719 (A000217 (n + 6)).toNat).toNat

end

end A257069.P1655582474469350026

/-!
# A257070: Traces of primes in enhanced squares representation, cf. A256913.

The programs for A257070, there is no canonical definition to state claims against.
-/

/-! ## A257070.P14597167852380265282

`A257053(∑[A257071(1+n)])`
-/

namespace A257070.P14597167852380265282
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257071 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257053 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A257070.P14597167852380265282

/-! ## A257070.P8946053505908468396

`A257053(eq[n, n%A257053(n+2)]+1)`
-/

namespace A257070.P8946053505908468396
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n : ℤ) (A257053 (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257053 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A257070.P8946053505908468396

/-! ## A257070.P4890076665261158635

`A257053(lt[A051698(n), A257053(n+1)])`
-/

namespace A257070.P4890076665261158635
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051698 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257053 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257053 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A257070.P4890076665261158635

/-! ## A257070.P14813894006897693446

`A256914(Δ[A007504(n)])`
-/

namespace A257070.P14813894006897693446
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256914 (f1 (n + 1) - f1 n).toNat

end

end A257070.P14813894006897693446

/-! ## A257070.P4353877611662783059

`A256914(record[A051698(n)])`
-/

namespace A257070.P4353877611662783059
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051698 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256914 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A257070.P4353877611662783059

/-! ## A257070.P11118640009700972313

`A256914(A000040(n+1))`
-/

namespace A257070.P11118640009700972313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256914 (A000040 (n + 1)).toNat

end

end A257070.P11118640009700972313

/-! ## A257070.P7030296094925896239

`A256914(A161847(n+1))`
-/

namespace A257070.P7030296094925896239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256914 (A161847 (n + 1)).toNat

end

end A257070.P7030296094925896239

/-! ## A257070.P7070932865046629583

`A256914(A008578(n+2))`
-/

namespace A257070.P7070932865046629583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256914 (A008578 (n + 2)).toNat

end

end A257070.P7070932865046629583

/-! ## A257070.P11310786150256926602

`A256914(A182986(n+2))`
-/

namespace A257070.P11310786150256926602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256914 (A182986 (n + 2)).toNat

end

end A257070.P11310786150256926602

/-! ## A257070.P17773298568138224944

`A256914(record[A006530(n+2)])`
-/

namespace A257070.P17773298568138224944
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256914 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A257070.P17773298568138224944

/-! ## A257070.P17772765249427636009

`A256914(record[A014963(n+2)])`
-/

namespace A257070.P17772765249427636009
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256914 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A257070.P17772765249427636009

/-! ## A257070.P1130496660682531304

`A256914(record[A020639(n+2)])`
-/

namespace A257070.P1130496660682531304
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256914 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A257070.P1130496660682531304

/-! ## A257070.P9803716765608923618

`A256914(A006093(n+1)+1)`
-/

namespace A257070.P9803716765608923618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256914 (A006093 (n + 1) + 1).toNat

end

end A257070.P9803716765608923618

/-! ## A257070.P2278415138950754053

`A256914(A007504(n+1)-A007504(n))`
-/

namespace A257070.P2278415138950754053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256914 (A007504 (n + 1) - A007504 n).toNat

end

end A257070.P2278415138950754053

/-!
# A257071: Length of enhanced squares representation of n-th prime, cf. A256913.

The programs for A257071, there is no canonical definition to state claims against.
-/

/-! ## A257071.P4026408072929739616

`A256915(p?[xor(1, n)])`
-/

namespace A257071.P4026408072929739616
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256915 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A257071.P4026408072929739616

/-! ## A257071.P12922372582024417967

`A256915(Δ[A007504(n)])`
-/

namespace A257071.P12922372582024417967
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256915 (f1 (n + 1) - f1 n).toNat

end

end A257071.P12922372582024417967

/-! ## A257071.P13898261153339692177

`A256915(record[A051698(n)])`
-/

namespace A257071.P13898261153339692177
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051698 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256915 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A257071.P13898261153339692177

/-! ## A257071.P10358561298610329421

`A256915(p?[A091203(n)])`
-/

namespace A257071.P10358561298610329421
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091203 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256915 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A257071.P10358561298610329421

/-! ## A257071.P2759756320940672083

`A256915(A000040(n+1))`
-/

namespace A257071.P2759756320940672083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256915 (A000040 (n + 1)).toNat

end

end A257071.P2759756320940672083

/-! ## A257071.P14076749965967953082

`A256915(A006005(n+1))`
-/

namespace A257071.P14076749965967953082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256915 (A006005 (n + 1)).toNat

end

end A257071.P14076749965967953082

/-! ## A257071.P4158885912417166346

`A256915(A171577(n+1))`
-/

namespace A257071.P4158885912417166346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256915 (A171577 (n + 1)).toNat

end

end A257071.P4158885912417166346

/-! ## A257071.P3260695285240742078

`A256915(A008578(n+2))`
-/

namespace A257071.P3260695285240742078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256915 (A008578 (n + 2)).toNat

end

end A257071.P3260695285240742078

/-! ## A257071.P17740341153596427896

`A256915(A075643(n+2))`
-/

namespace A257071.P17740341153596427896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256915 (A075643 (n + 2)).toNat

end

end A257071.P17740341153596427896

/-! ## A257071.P15089363383002609109

`A256915(A171525(n+2))`
-/

namespace A257071.P15089363383002609109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256915 (A171525 (n + 2)).toNat

end

end A257071.P15089363383002609109

/-! ## A257071.P1114660026356168167

`A256915(A175787(n+2))`
-/

namespace A257071.P1114660026356168167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256915 (A175787 (n + 2)).toNat

end

end A257071.P1114660026356168167

/-! ## A257071.P4100295930070849454

`A256915(A182986(n+2))`
-/

namespace A257071.P4100295930070849454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256915 (A182986 (n + 2)).toNat

end

end A257071.P4100295930070849454

/-! ## A257071.P3722557832258248318

`A256915(eq[1, A003415(n)])`
-/

namespace A257071.P3722557832258248318
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256915 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A257071.P3722557832258248318

/-! ## A257071.P7809720311384016234

`A256915(record[A006530(n+2)])`
-/

namespace A257071.P7809720311384016234
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256915 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A257071.P7809720311384016234

/-! ## A257071.P985357770757841511

`A256915(record[A014963(n+2)])`
-/

namespace A257071.P985357770757841511
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256915 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A257071.P985357770757841511

/-! ## A257071.P7784267259117282262

`A256915(record[A020639(n+2)])`
-/

namespace A257071.P7784267259117282262
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256915 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A257071.P7784267259117282262

/-! ## A257071.P16544356830746112830

`A256915(A007504(n+1)-A007504(n))`
-/

namespace A257071.P16544356830746112830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256915 (A007504 (n + 1) - A007504 n).toNat

end

end A257071.P16544356830746112830

/-!
# A257072: Number of 3-colored Schroeder paths of semilength n in which there are no (2,0)-steps at level 1.

The programs for A257072, there is no canonical definition to state claims against.
-/

/-! ## A257072.P10182808142126415557

`A163296((n+4)*a(n-1))` with `a(0)=1`
-/

namespace A257072.P10182808142126415557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A163296 ((n + 4 : ℤ) * a (n - 1)).toNat

end

end A257072.P10182808142126415557

/-!
# A257074: Primes in the 10th-order Fibonacci numbers A127194.

The programs for A257074, there is no canonical definition to state claims against.
-/

/-! ## A257074.P11101441557889823343

`A127194(A257073(n+1))`
-/

namespace A257074.P11101441557889823343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127194 (A257073 (n + 1)).toNat

end

end A257074.P11101441557889823343

/-! ## A257074.P8494740672575850009

`p?[A127194(n+1)]`
-/

namespace A257074.P8494740672575850009
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127194 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A257074.P8494740672575850009

/-!
# A257075: a(n) = (-1)^(n mod 3).

The programs for A257075, the canonical program `A257075.P4184405803018994330` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A257075 has offset 0).

The definition of A257075 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(-1)^(n%3)` (program `A257075.P4184405803018994330`, by `A257075.P4184405803018994330.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A257075.P4184405803018994330

`(-1)^(n%3)`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A257075

/-- `(-1)^(n%3)` -/
def P4184405803018994330.Spec : Prop :=
  ∀ n, P4184405803018994330.a n = A257075 n

theorem P4184405803018994330.correct : P4184405803018994330.Spec := by
  intro n
  simp only [A257075]

end A257075

/-!
# A257076: Expansion of (1 - x^3) / (1 - x + x^2) in powers of x.

The programs for A257076, the canonical program `A257076.P14930900354382646488` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A257076 has offset 0).

The definition of A257076 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-x^3)/(1-x+x^2))` (program `A257076.P14930900354382646488`, by `A257076.P14930900354382646488.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A257076.P14930900354382646488

`ogf((1-x^3)/(1-x+x^2))`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A257076

/-- `ogf((1-x^3)/(1-x+x^2))` -/
def P14930900354382646488.Spec : Prop :=
  ∀ n, P14930900354382646488.a n = A257076 n

theorem P14930900354382646488.correct : P14930900354382646488.Spec := by
  intro n
  simp only [A257076]

end A257076

/-!
# A257077: a(n) = prime(n)-prime(1)-prime(2)-...-prime(k), while the result > 0.

The programs for A257077, the canonical program `A257077.P17026154758205929853` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A257077 has offset 1).

The definition of A257077 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1229 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A257077.P11070995819676005796

`A037125(p?[comp[n²]])`
-/

namespace A257077.P11070995819676005796
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037125 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A257077.P11070995819676005796

namespace A257077

/-- `A037125(p?[comp[n²]])` -/
def P11070995819676005796.Spec : Prop :=
  ∀ n, P11070995819676005796.a n = A257077 (n + 1)

end A257077

/-! ## A257077.P784170131357027342

`A037125(Δ[A007504(n)])`
-/

namespace A257077.P784170131357027342
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037125 (f1 (n + 1) - f1 n).toNat

end

end A257077.P784170131357027342

namespace A257077

/-- `A037125(Δ[A007504(n)])` -/
def P784170131357027342.Spec : Prop :=
  ∀ n, P784170131357027342.a n = A257077 (n + 1)

end A257077

/-! ## A257077.P17026154758205929853

`A037125(A000040(n+1))`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A257077

/-- `A037125(A000040(n+1))` -/
def P17026154758205929853.Spec : Prop :=
  ∀ n, P17026154758205929853.a n = A257077 (n + 1)

theorem P17026154758205929853.correct : P17026154758205929853.Spec := by
  intro n
  simp only [A257077, Nat.add_sub_cancel]

end A257077

/-! ## A257077.P12843651239963829751

`A037125(A008578(n+2))`
-/

namespace A257077.P12843651239963829751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037125 (A008578 (n + 2)).toNat

end

end A257077.P12843651239963829751

namespace A257077

/-- `A037125(A008578(n+2))` -/
def P12843651239963829751.Spec : Prop :=
  ∀ n, P12843651239963829751.a n = A257077 (n + 1)

end A257077

/-! ## A257077.P3684062681060403342

`A037125(A182986(n+2))`
-/

namespace A257077.P3684062681060403342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037125 (A182986 (n + 2)).toNat

end

end A257077.P3684062681060403342

namespace A257077

/-- `A037125(A182986(n+2))` -/
def P3684062681060403342.Spec : Prop :=
  ∀ n, P3684062681060403342.a n = A257077 (n + 1)

end A257077

/-! ## A257077.P4395868529181849356

`A037125(eq[1, A018783(n)])`
-/

namespace A257077.P4395868529181849356
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018783 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037125 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A257077.P4395868529181849356

namespace A257077

/-- `A037125(eq[1, A018783(n)])` -/
def P4395868529181849356.Spec : Prop :=
  ∀ n, P4395868529181849356.a n = A257077 (n + 1)

end A257077

/-! ## A257077.P4203236199321346449

`A037125(record[A006530(n+2)])`
-/

namespace A257077.P4203236199321346449
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037125 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A257077.P4203236199321346449

namespace A257077

/-- `A037125(record[A006530(n+2)])` -/
def P4203236199321346449.Spec : Prop :=
  ∀ n, P4203236199321346449.a n = A257077 (n + 1)

end A257077

/-! ## A257077.P10129321554331358679

`A037125(record[A014963(n+2)])`
-/

namespace A257077.P10129321554331358679
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037125 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A257077.P10129321554331358679

namespace A257077

/-- `A037125(record[A014963(n+2)])` -/
def P10129321554331358679.Spec : Prop :=
  ∀ n, P10129321554331358679.a n = A257077 (n + 1)

end A257077

/-! ## A257077.P12353783345142157862

`A037125(record[A020639(n+2)])`
-/

namespace A257077.P12353783345142157862
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037125 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A257077.P12353783345142157862

namespace A257077

/-- `A037125(record[A020639(n+2)])` -/
def P12353783345142157862.Spec : Prop :=
  ∀ n, P12353783345142157862.a n = A257077 (n + 1)

end A257077

/-! ## A257077.P10059032382237212310

`A037125(A067747(2*n+1))`
-/

namespace A257077.P10059032382237212310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037125 (A067747 (2 * n + 1)).toNat

end

end A257077.P10059032382237212310

namespace A257077

/-- `A037125(A067747(2*n+1))` -/
def P10059032382237212310.Spec : Prop :=
  ∀ n, P10059032382237212310.a n = A257077 (n + 1)

end A257077

/-! ## A257077.P4371714123027006785

`A037125(record[A000010(n+1)+1])`
-/

namespace A257077.P4371714123027006785
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037125 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A257077.P4371714123027006785

namespace A257077

/-- `A037125(record[A000010(n+1)+1])` -/
def P4371714123027006785.Spec : Prop :=
  ∀ n, P4371714123027006785.a n = A257077 (n + 1)

end A257077

/-! ## A257077.P2761699352178429760

`A037125(eq[1, A005451(n+2)]+2)`
-/

namespace A257077.P2761699352178429760
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005451 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037125 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2)

end

end A257077.P2761699352178429760

namespace A257077

/-- `A037125(eq[1, A005451(n+2)]+2)` -/
def P2761699352178429760.Spec : Prop :=
  ∀ n, P2761699352178429760.a n = A257077 (n + 1)

end A257077

/-! ## A257077.P15721300460182753209

`A037125(eq[1, A056583(n+2)]+2)`
-/

namespace A257077.P15721300460182753209
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056583 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037125 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2)

end

end A257077.P15721300460182753209

namespace A257077

/-- `A037125(eq[1, A056583(n+2)]+2)` -/
def P15721300460182753209.Spec : Prop :=
  ∀ n, P15721300460182753209.a n = A257077 (n + 1)

end A257077

/-! ## A257077.P1315800940193686363

`A037125(eq[1, A072869(n+2)]+2)`
-/

namespace A257077.P1315800940193686363
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072869 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037125 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2)

end

end A257077.P1315800940193686363

namespace A257077

/-- `A037125(eq[1, A072869(n+2)]+2)` -/
def P1315800940193686363.Spec : Prop :=
  ∀ n, P1315800940193686363.a n = A257077 (n + 1)

end A257077

/-! ## A257077.P15406476280184239235

`A037125(A007504(n+1)-A007504(n))`
-/

namespace A257077.P15406476280184239235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037125 (A007504 (n + 1) - A007504 n).toNat

end

end A257077.P15406476280184239235

namespace A257077

/-- `A037125(A007504(n+1)-A007504(n))` -/
def P15406476280184239235.Spec : Prop :=
  ∀ n, P15406476280184239235.a n = A257077 (n + 1)

end A257077

/-! ## A257077.P17361867155537613617

`A037125(eq[2, A053204(n)])`
-/

namespace A257077.P17361867155537613617
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053204 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037125 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A257077.P17361867155537613617

namespace A257077

/-- `A037125(eq[2, A053204(n)])` -/
def P17361867155537613617.Spec : Prop :=
  ∀ n, P17361867155537613617.a n = A257077 (n + 1)

end A257077

/-! ## A257077.P11761367155906225152

`A000720(A327277(Δ[A007504(n)]))`
-/

namespace A257077.P11761367155906225152
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A327277 (f1 (n + 1) - f1 n).toNat).toNat

end

end A257077.P11761367155906225152

namespace A257077

/-- `A000720(A327277(Δ[A007504(n)]))` -/
def P11761367155906225152.Spec : Prop :=
  ∀ n, P11761367155906225152.a n = A257077 (n + 1)

end A257077

/-! ## A257077.P14280399746836137520

`A000720(A327277(p?[A014681(n)]))`
-/

namespace A257077.P14280399746836137520
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A327277 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat).toNat

end

end A257077.P14280399746836137520

namespace A257077

/-- `A000720(A327277(p?[A014681(n)]))` -/
def P14280399746836137520.Spec : Prop :=
  ∀ n, P14280399746836137520.a n = A257077 (n + 1)

end A257077

/-! ## A257077.P3549986723037935110

`A000720(A327277(p?[A064429(n)]))`
-/

namespace A257077.P3549986723037935110
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064429 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A327277 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat).toNat

end

end A257077.P3549986723037935110

namespace A257077

/-- `A000720(A327277(p?[A064429(n)]))` -/
def P3549986723037935110.Spec : Prop :=
  ∀ n, P3549986723037935110.a n = A257077 (n + 1)

end A257077

/-! ## A257077.P2748586973712347706

`A055396(A327277(p?[A056847(n)]))`
-/

namespace A257077.P2748586973712347706
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056847 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (A327277 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat).toNat

end

end A257077.P2748586973712347706

namespace A257077

/-- `A055396(A327277(p?[A056847(n)]))` -/
def P2748586973712347706.Spec : Prop :=
  ∀ n, P2748586973712347706.a n = A257077 (n + 1)

end A257077

/-!
# A257079: The least nonzero digit missing from the factorial representation (A007623) of n.

The programs for A257079, there is no canonical definition to state claims against.
-/

/-! ## A257079.P4973998195786215137

`floor(A257080(n)/(n+1))+1`
-/

namespace A257079.P4973998195786215137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A257080 n : ℚ) / (n + 1 : ℚ)⌋ + 1

end

end A257079.P4973998195786215137

/-! ## A257079.P14824113375888285782

`A257080(n)/(A343330(a(n-1))+n)` with `a(0)=1`
-/

namespace A257079.P14824113375888285782
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (A257080 n : ℚ) / (A343330 (SequenceMachineLib.roundAway (a (n - 1))).toNat + (n : ℤ) : ℚ)

end

end A257079.P14824113375888285782

/-! ## A257079.P14351305278448437069

`A257080(n*A123895(a(n-1)))/n` with `a(0)=1`
-/

namespace A257079.P14351305278448437069
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (A257080 ((n : ℤ) * A123895 (SequenceMachineLib.roundAway (a (n - 1))).toNat).toNat : ℚ) / (n : ℚ)

end

end A257079.P14351305278448437069

/-! ## A257079.P14742875292289428210

`A329028(A351576(n))`
-/

namespace A257079.P14742875292289428210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329028 (A351576 n).toNat

end

end A257079.P14742875292289428210

/-! ## A257079.P17773213930297441204

`A257993(A275735(n))`
-/

namespace A257079.P17773213930297441204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257993 (A275735 n).toNat

end

end A257079.P17773213930297441204

/-! ## A257079.P10588069217996969710

`A257680(n)*A276084(A275735(n))+1`
-/

namespace A257079.P10588069217996969710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257680 n * A276084 (A275735 n).toNat + 1

end

end A257079.P10588069217996969710

/-! ## A257079.P5304192988645486575

`A004277(A257080(n))/A004277(n)`
-/

namespace A257079.P5304192988645486575
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004277 (A257080 n).toNat : ℚ) / (A004277 n : ℚ)

end

end A257079.P5304192988645486575

/-! ## A257079.P2099400250054797908

`A008486(A257080(n))/A008486(n)`
-/

namespace A257079.P2099400250054797908
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008486 (A257080 n).toNat : ℚ) / (A008486 n : ℚ)

end

end A257079.P2099400250054797908

/-! ## A257079.P16561025406101033074

`A008706(A257080(n))/A008706(n)`
-/

namespace A257079.P16561025406101033074
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008706 (A257080 n).toNat : ℚ) / (A008706 n : ℚ)

end

end A257079.P16561025406101033074

/-! ## A257079.P18025696015810342803

`A008458(A257080(n))/A008458(n)`
-/

namespace A257079.P18025696015810342803
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008458 (A257080 n).toNat : ℚ) / (A008458 n : ℚ)

end

end A257079.P18025696015810342803

/-! ## A257079.P2567252611953783588

`A261794(A007623(n))`
-/

namespace A257079.P2567252611953783588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261794 (A007623 n).toNat

end

end A257079.P2567252611953783588

/-!
# A257080: n multiplied by the least nonzero digit missing from its factorial base representation: a(n) = n * A257079(n).

The programs for A257080, there is no canonical definition to state claims against.
-/

/-! ## A257080.P14476035461637268388

`n*A257079(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A257080.P14476035461637268388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A257079 n

end

end A257080.P14476035461637268388

/-! ## A257080.P5769346578465542528

`n/A257079(n)^A133574(A001316(n))`
-/

namespace A257080.P5769346578465542528
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (A257079 n : ℚ) ^ (A133574 (A001316 n).toNat : ℤ)

end

end A257080.P5769346578465542528

/-! ## A257080.P780625882225929748

`n*A329028(A351576(n))`
-/

namespace A257080.P780625882225929748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A329028 (A351576 n).toNat

end

end A257080.P780625882225929748

/-! ## A257080.P13613062563708427472

`n*A257993(A275735(n))`
-/

namespace A257080.P13613062563708427472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A257993 (A275735 n).toNat

end

end A257080.P13613062563708427472

/-! ## A257080.P5219457884847027469

`n*(A276084(A275735(n))+A257680(2*n+1))`
-/

namespace A257080.P5219457884847027469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A276084 (A275735 n).toNat + A257680 (2 * n + 1))

end

end A257080.P5219457884847027469

/-! ## A257080.P8373594835960508470

`n*A261794(A007623(n))`
-/

namespace A257080.P8373594835960508470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A261794 (A007623 n).toNat

end

end A257080.P8373594835960508470

/-! ## A257080.P5022140883064007993

`n*A134193(A278236(n))`
-/

namespace A257080.P5022140883064007993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A134193 (A278236 n).toNat

end

end A257080.P5022140883064007993

/-!
# A257081: a(n) = Number of iterations of A257080 needed, starting from n, before a fixed point is reached.

The programs for A257081, there is no canonical definition to state claims against.
-/

/-! ## A257081.P17435568658359384289

`and(A006465(n), A010205(A018097(n)))`
-/

namespace A257081.P17435568658359384289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A006465 n) (A010205 (A018097 n).toNat)

end

end A257081.P17435568658359384289

/-! ## A257081.P18120422196017232683

`A030399(lcm(A031131(n+1), A288360(n)))`
-/

namespace A257081.P18120422196017232683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030399 (Int.lcm (A031131 (n + 1)) (A288360 n))

end

end A257081.P18120422196017232683

/-! ## A257081.P5887912764937155380

`A257510(∑[∑[2^n]]+2)`
-/

namespace A257081.P5887912764937155380
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257510 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A257081.P5887912764937155380

/-! ## A257081.P10404246586415274600

`A291147(A126120(n))+A190427(n+1)`
-/

namespace A257081.P10404246586415274600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291147 (A126120 n).toNat + A190427 (n + 1)

end

end A257081.P10404246586415274600

/-! ## A257081.P12007467884794555876

`A030399(A303376(n+1)+A008328(n+1))`
-/

namespace A257081.P12007467884794555876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030399 (A303376 (n + 1) + A008328 (n + 1)).toNat

end

end A257081.P12007467884794555876

/-!
# A257082: a(n) is one sixth of the total number of free ends of 6 line segments expansion at n iterations (see Comments lines for definition).

The programs for A257082, there is no canonical definition to state claims against.
-/

/-! ## A257082.P531646430025278136

`A034444(A033453(n))*A221834(n+1)`
-/

namespace A257082.P531646430025278136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034444 (A033453 n).toNat * A221834 (n + 1)

end

end A257082.P531646430025278136

/-! ## A257082.P3232712548595233725

`A003642(n+1)*A161205(A007317(n+1))`
-/

namespace A257082.P3232712548595233725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003642 (n + 1) * A161205 (A007317 (n + 1)).toNat

end

end A257082.P3232712548595233725

/-! ## A257082.P16988496798847617266

`A340458(A351859(n+1))`
-/

namespace A257082.P16988496798847617266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340458 (A351859 (n + 1)).toNat

end

end A257082.P16988496798847617266

/-!
# A257083: Partial sums of A257088.

The programs for A257083, the canonical program `A257083.P8201460956873173727` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A257083 has offset 0).

The definition of A257083 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A257083.P12122759586981148845

`ogf((1+x+2x^2+x^3+x^4)/(1-x-2x^2+2x^3+x^4-x^5))`
-/

namespace A257083.P12122759586981148845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1, 2, 1, 1] [1, -1, -2, 2, 1, -1] n

end

end A257083.P12122759586981148845

namespace A257083

/-- `ogf((1+x+2x^2+x^3+x^4)/(1-x-2x^2+2x^3+x^4-x^5))` -/
def P12122759586981148845.Spec : Prop :=
  ∀ n, P12122759586981148845.a n = A257083 n

end A257083

/-! ## A257083.P17437422207702824910

`(6*n*(n+1)+(2*n+1)*(-1)^n+7)/8`
-/

namespace A257083.P17437422207702824910
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((6 * n * (n + 1) : ℤ) + (2 * n + 1 : ℤ) * (-1) ^ n + 7 : ℚ) / 8

end

end A257083.P17437422207702824910

namespace A257083

/-- `(6*n*(n+1)+(2*n+1)*(-1)^n+7)/8` -/
def P17437422207702824910.Spec : Prop :=
  ∀ n, P17437422207702824910.a n = (A257083 n : ℚ)

theorem P17437422207702824910.correct : P17437422207702824910.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 | 4 =>
      simp [A257083, Nat.add_sub_cancel, A257083.P17437422207702824910.a, A257083.P8201460956873173727.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 5 =>
      have h1 := ih (m + 4) (by omega)
      have h2 := ih (m + 3) (by omega)
      have h3 := ih (m + 2) (by omega)
      have h4 := ih (m + 1) (by omega)
      have h5 := ih m (by omega)
      simp only [A257083, Nat.add_sub_cancel, A257083.P17437422207702824910.a, A257083.P8201460956873173727.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 h5 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 5 - 1 = m + 4 by omega, show m + 5 - 2 = m + 3 by omega, show m + 5 - 3 = m + 2 by omega, show m + 5 - 4 = m + 1 by omega, show m + 5 - 5 = m by omega, show m + 4 < m + 5 by omega, show m + 3 < m + 5 by omega, show m + 2 < m + 5 by omega, show m + 1 < m + 5 by omega, show m < m + 5 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 h5 ⊢
      rw [← h1, ← h2, ← h3, ← h4, ← h5]
      first | ring1 | ring_nf | (field_simp; (first | ring1 | ring_nf)) | omega | (push_cast; ring_nf) | nlinarith

end A257083

/-! ## A257083.P8201460956873173727

`a(n-1)+2*a(n-2)-2*a(n-3)-a(n-4)+a(n-5)` with `a(0)=1, a(1)=2, a(2)=6, a(3)=9, a(4)=17`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A257083

/-- `a(n-1)+2*a(n-2)-2*a(n-3)-a(n-4)+a(n-5)` -/
def P8201460956873173727.Spec : Prop :=
  ∀ n, P8201460956873173727.a n = A257083 n

theorem P8201460956873173727.correct : P8201460956873173727.Spec := by
  intro n
  simp only [A257083]

end A257083

/-! ## A257083.P8555258745579026645

`∑[gcd(2, n)*n]+1`
-/

namespace A257083.P8555258745579026645
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 2 n * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A257083.P8555258745579026645

namespace A257083

/-- `∑[gcd(2, n)*n]+1` -/
def P8555258745579026645.Spec : Prop :=
  ∀ n, (P8555258745579026645.a n : ℤ) = A257083 n

end A257083

/-! ## A257083.P234159706908615433

`1-∑[n*or(n, -2)]`
-/

namespace A257083.P234159706908615433
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * Int.lor (n : ℤ) (-2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A257083.P234159706908615433

namespace A257083

/-- `1-∑[n*or(n, -2)]` -/
def P234159706908615433.Spec : Prop :=
  ∀ n, P234159706908615433.a n = A257083 n

end A257083

/-! ## A257083.P16654960492952061026

`∑[(2-n%2)*n]+1`
-/

namespace A257083.P16654960492952061026
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - ((n % 2 : ℕ) : ℤ)) * (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A257083.P16654960492952061026

namespace A257083

/-- `∑[(2-n%2)*n]+1` -/
def P16654960492952061026.Spec : Prop :=
  ∀ n, P16654960492952061026.a n = A257083 n

end A257083

/-! ## A257083.P13360409801146205923

`∑[-(n*or(n, -2))]+1`
-/

namespace A257083.P13360409801146205923
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -((n : ℤ) * Int.lor (n : ℤ) (-2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A257083.P13360409801146205923

namespace A257083

/-- `∑[-(n*or(n, -2))]+1` -/
def P13360409801146205923.Spec : Prop :=
  ∀ n, P13360409801146205923.a n = A257083 n

end A257083

/-! ## A257083.P6187996988621354364

`∑[or(1, n)]+floor(n/2)²`
-/

namespace A257083.P6187996988621354364
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + ⌊(n : ℚ) / 2⌋ ^ 2

end

end A257083.P6187996988621354364

namespace A257083

/-- `∑[or(1, n)]+floor(n/2)²` -/
def P6187996988621354364.Spec : Prop :=
  ∀ n, P6187996988621354364.a n = A257083 n

end A257083

/-! ## A257083.P17620550201646433788

`∑[C(or(1, n), n)+n]-n`
-/

namespace A257083.P17620550201646433788
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (Nat.lor 1 n) n + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (n : ℤ)

end

end A257083.P17620550201646433788

namespace A257083

/-- `∑[C(or(1, n), n)+n]-n` -/
def P17620550201646433788.Spec : Prop :=
  ∀ n, P17620550201646433788.a n = A257083 n

end A257083

/-! ## A257083.P16694039783657467382

`∑[∏{p}[n, #^val(2*n, #)]]`
-/

namespace A257083.P16694039783657467382
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), p ^ SequenceMachineLib.valuation (2 * n) p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A257083.P16694039783657467382

namespace A257083

/-- `∑[∏{p}[n, #^val(2*n, #)]]` -/
def P16694039783657467382.Spec : Prop :=
  ∀ n, (P16694039783657467382.a n : ℤ) = A257083 n

end A257083

/-! ## A257083.P371214280692105791

`∑[C(n, a(n-1))+n]` with `a(0)=1, a(1)=1`
-/

namespace A257083.P371214280692105791
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  Nat.choose n (f1 (n - 1)) + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A257083.P371214280692105791

namespace A257083

/-- `∑[C(n, a(n-1))+n]` -/
def P371214280692105791.Spec : Prop :=
  ∀ n, (P371214280692105791.a n : ℤ) = A257083 n

end A257083

/-! ## A257083.P1373393234603357530

`∑[1-lcm(2, n)+n]+n²`
-/

namespace A257083.P1373393234603357530
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (Nat.lcm 2 n : ℤ) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n ^ 2 : ℤ)

end

end A257083.P1373393234603357530

namespace A257083

/-- `∑[1-lcm(2, n)+n]+n²` -/
def P1373393234603357530.Spec : Prop :=
  ∀ n, P1373393234603357530.a n = A257083 n

end A257083

/-! ## A257083.P6003231316870036005

`∑[n*ceil(n/a(n-1))]` with `a(0)=1`
-/

namespace A257083.P6003231316870036005
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  (n : ℤ) * ⌈(n : ℚ) / (f1 (n - 1) : ℚ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A257083.P6003231316870036005

namespace A257083

/-- `∑[n*ceil(n/a(n-1))]` -/
def P6003231316870036005.Spec : Prop :=
  ∀ n, P6003231316870036005.a n = A257083 n

end A257083

/-! ## A257083.P14342393993326453296

`∑[xor(1, a(n-2))+3]` with `a(0)=1, a(1)=1, a(2)=4`
-/

namespace A257083.P14342393993326453296
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 4] fun n f1 =>
  Nat.xor 1 (f1 (n - 2)) + 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A257083.P14342393993326453296

namespace A257083

/-- `∑[xor(1, a(n-2))+3]` -/
def P14342393993326453296.Spec : Prop :=
  ∀ n, (P14342393993326453296.a n : ℤ) = A257083 n

end A257083

/-! ## A257083.P3240955707297261295

`∑[n*((n+1)%2+1)]+1`
-/

namespace A257083.P3240955707297261295
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * ((n + 1) % 2 + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A257083.P3240955707297261295

namespace A257083

/-- `∑[n*((n+1)%2+1)]+1` -/
def P3240955707297261295.Spec : Prop :=
  ∀ n, (P3240955707297261295.a n : ℤ) = A257083 n

end A257083

/-! ## A257083.P4800075655579092775

`a(n-1)+gcd(2*n, n²)` with `a(0)=1`
-/

namespace A257083.P4800075655579092775
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + Nat.gcd (2 * n) (n ^ 2)

end

end A257083.P4800075655579092775

namespace A257083

/-- `a(n-1)+gcd(2*n, n²)` -/
def P4800075655579092775.Spec : Prop :=
  ∀ n, (P4800075655579092775.a n : ℤ) = A257083 n

end A257083

/-! ## A257083.P14182581027413365684

`∑[n*(2-floor(a(n-1)/n))]` with `a(0)=1`
-/

namespace A257083.P14182581027413365684
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  (n : ℤ) * (2 - ⌊(f1 (n - 1) : ℚ) / (n : ℚ)⌋)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A257083.P14182581027413365684

namespace A257083

/-- `∑[n*(2-floor(a(n-1)/n))]` -/
def P14182581027413365684.Spec : Prop :=
  ∀ n, P14182581027413365684.a n = A257083 n

end A257083

/-! ## A257083.P2620591496294022117

`∑[∑[∑[ogf((1+2x+3x^2)/(1+2x+x^2))]]]-n`
-/

namespace A257083.P2620591496294022117
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 2, 3] [1, 2, 1] n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A257083.P2620591496294022117

namespace A257083

/-- `∑[∑[∑[ogf((1+2x+3x^2)/(1+2x+x^2))]]]-n` -/
def P2620591496294022117.Spec : Prop :=
  ∀ n, P2620591496294022117.a n = A257083 n

end A257083

/-! ## A257083.P17162281715556441871

`a(n-1)+n*a(∑[(-1)^n])` with `a(0)=1`
-/

namespace A257083.P17162281715556441871
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + n * a (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A257083.P17162281715556441871

namespace A257083

/-- `a(n-1)+n*a(∑[(-1)^n])` -/
def P17162281715556441871.Spec : Prop :=
  ∀ n, (P17162281715556441871.a n : ℤ) = A257083 n

end A257083

/-! ## A257083.P8469410025737176854

`∑[lcm(n+1, 2*n)/(n+1)]+1`
-/

namespace A257083.P8469410025737176854
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.lcm (n + 1) (2 * n) : ℚ) / (n + 1 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A257083.P8469410025737176854

namespace A257083

/-- `∑[lcm(n+1, 2*n)/(n+1)]+1` -/
def P8469410025737176854.Spec : Prop :=
  ∀ n, P8469410025737176854.a n = (A257083 n : ℚ)

end A257083

/-!
# A257084: G.f. A(x) satisfies A(F(x)) = x, where F(x) is the g.f. of A251690.

The programs for A257084, there is no canonical definition to state claims against.
-/

/-! ## A257084.P11096889583061806688

`A110266(or(1, A047665(n)))`
-/

namespace A257084.P11096889583061806688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110266 (Int.lor 1 (A047665 n)).toNat

end

end A257084.P11096889583061806688

/-! ## A257084.P16870208471347371528

`A011782(n)+A008615(A246020(n))`
-/

namespace A257084.P16870208471347371528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n + A008615 (A246020 n).toNat

end

end A257084.P16870208471347371528

/-!
# A257085: Numbers n such that the decimal expansions of both n and n^2 only use the digits 0..6.

The programs for A257085, there is no canonical definition to state claims against.
-/

/-! ## A257085.P17136972018712611977

`lt[A004250(A092528(n+1)), A328250(2*(n+1))]`
-/

namespace A257085.P17136972018712611977
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004250 (A092528 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328250 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A257085.P17136972018712611977

/-! ## A257085.P126888613996980932

`lt[A007052(A061357(3*n+1)), A196268(n+1)]`
-/

namespace A257085.P126888613996980932
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007052 (A061357 (3 * n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196268 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A257085.P126888613996980932

/-!
# A257086: Numbers n such that the decimal expansions of both n and n^2 only use the digits 0..5.

The programs for A257086, there is no canonical definition to state claims against.
-/

/-! ## A257086.P8675422960972776703

`sqrt(∩[A007092(n), A007092(n)²])`
-/

namespace A257086.P8675422960972776703
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007092 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007092 n ^ 2

open Classical in
def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℝ)

end

end A257086.P8675422960972776703

/-! ## A257086.P16591621390844300834

`∪[A137007(n+1)%A030097(n+2), A136810(n+1)]`
-/

namespace A257086.P16591621390844300834
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A137007 (n + 1)) (A030097 (n + 2))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136810 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A257086.P16591621390844300834

/-! ## A257086.P716043709934445773

`eq[A025829(A051801(n)), A185284(n)]`
-/

namespace A257086.P716043709934445773
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025829 (A051801 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185284 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A257086.P716043709934445773

/-!
# A257088: a(2*n) = 4*n if n>0, a(2*n + 1) = 2*n + 1, a(0) = 1.

The programs for A257088, the canonical program `A257088.P18062701801236014187` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A257088 has offset 0).

The definition of A257088 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A257088.P12312877913551429973

`ogf((1+x+2x^2+x^3+x^4)/(1-2x^2+x^4))`
-/

namespace A257088.P12312877913551429973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1, 2, 1, 1] [1, 0, -2, 0, 1] n

end

end A257088.P12312877913551429973

namespace A257088

/-- `ogf((1+x+2x^2+x^3+x^4)/(1-2x^2+x^4))` -/
def P12312877913551429973.Spec : Prop :=
  ∀ n, P12312877913551429973.a n = A257088 n

end A257088

/-! ## A257088.P18062701801236014187

`gcd(n^n, 2*n)`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A257088

/-- `gcd(n^n, 2*n)` -/
def P18062701801236014187.Spec : Prop :=
  ∀ n, (P18062701801236014187.a n : ℤ) = A257088 n

theorem P18062701801236014187.correct : P18062701801236014187.Spec := by
  intro n
  simp only [A257088]

end A257088

/-! ## A257088.P7623270394257030365

`∏{p}[n, #^val(2*n, #)]`
-/

namespace A257088.P7623270394257030365
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), p ^ SequenceMachineLib.valuation (2 * n) p

end

end A257088.P7623270394257030365

namespace A257088

/-- `∏{p}[n, #^val(2*n, #)]` -/
def P7623270394257030365.Spec : Prop :=
  ∀ n, (P7623270394257030365.a n : ℤ) = A257088 n

end A257088

/-! ## A257088.P9467679833304934233

`C(n, a(n-1))+n` with `a(0)=1, a(1)=1`
-/

namespace A257088.P9467679833304934233
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n a =>
  Nat.choose n (a (n - 1)) + n

end

end A257088.P9467679833304934233

namespace A257088

/-- `C(n, a(n-1))+n` -/
def P9467679833304934233.Spec : Prop :=
  ∀ n, (P9467679833304934233.a n : ℤ) = A257088 n

end A257088

/-! ## A257088.P9164074985964120287

`n*ceil(n/a(n-1))` with `a(0)=1`
-/

namespace A257088.P9164074985964120287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (n : ℤ) * ⌈(n : ℚ) / (a (n - 1) : ℚ)⌉

end

end A257088.P9164074985964120287

namespace A257088

/-- `n*ceil(n/a(n-1))` -/
def P9164074985964120287.Spec : Prop :=
  ∀ n, P9164074985964120287.a n = A257088 n

end A257088

/-! ## A257088.P18285317172124419379

`round(sqrt((n*gcd(2, n))²+1))`
-/

namespace A257088.P18285317172124419379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt ((n * Nat.gcd 2 n) ^ 2 + 1 : ℝ))

end

end A257088.P18285317172124419379

namespace A257088

/-- `round(sqrt((n*gcd(2, n))²+1))` -/
def P18285317172124419379.Spec : Prop :=
  ∀ n, P18285317172124419379.a n = A257088 n

end A257088

/-! ## A257088.P1264938605589558204

`xor(1, a(n-2))+3` with `a(0)=1, a(1)=1, a(2)=4`
-/

namespace A257088.P1264938605589558204
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 4] fun n a =>
  Nat.xor 1 (a (n - 2)) + 3

end

end A257088.P1264938605589558204

namespace A257088

/-- `xor(1, a(n-2))+3` -/
def P1264938605589558204.Spec : Prop :=
  ∀ n, (P1264938605589558204.a n : ℤ) = A257088 n

end A257088

/-! ## A257088.P16719122095106747230

`floor(lcm(2, (n+1)²)/(n+2))`
-/

namespace A257088.P16719122095106747230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.lcm 2 ((n + 1) ^ 2) : ℚ) / (n + 2 : ℚ)⌋

end

end A257088.P16719122095106747230

namespace A257088

/-- `floor(lcm(2, (n+1)²)/(n+2))` -/
def P16719122095106747230.Spec : Prop :=
  ∀ n, P16719122095106747230.a n = A257088 n

end A257088

/-! ## A257088.P7890825480674071712

`n*(a(n-1)%2+1)` with `a(0)=1, a(1)=1`
-/

namespace A257088.P7890825480674071712
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n a =>
  n * (a (n - 1) % 2 + 1)

end

end A257088.P7890825480674071712

namespace A257088

/-- `n*(a(n-1)%2+1)` -/
def P7890825480674071712.Spec : Prop :=
  ∀ n, (P7890825480674071712.a n : ℤ) = A257088 n

end A257088

/-! ## A257088.P7624331630443638016

`n*(and(1, a(n-1))+1)` with `a(0)=1, a(1)=1`
-/

namespace A257088.P7624331630443638016
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n a =>
  n * (Nat.land 1 (a (n - 1)) + 1)

end

end A257088.P7624331630443638016

namespace A257088

/-- `n*(and(1, a(n-1))+1)` -/
def P7624331630443638016.Spec : Prop :=
  ∀ n, (P7624331630443638016.a n : ℤ) = A257088 n

end A257088

/-! ## A257088.P6466459643124070945

`n*C(2, and(1, a(n-1)))` with `a(0)=1, a(1)=1`
-/

namespace A257088.P6466459643124070945
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n a =>
  n * Nat.choose 2 (Nat.land 1 (a (n - 1)))

end

end A257088.P6466459643124070945

namespace A257088

/-- `n*C(2, and(1, a(n-1)))` -/
def P6466459643124070945.Spec : Prop :=
  ∀ n, (P6466459643124070945.a n : ℤ) = A257088 n

end A257088

/-! ## A257088.P10578283475540363001

`n%(a(n-2)+2)+n` with `a(0)=1, a(1)=1`
-/

namespace A257088.P10578283475540363001
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n a =>
  n % (a (n - 2) + 2) + n

end

end A257088.P10578283475540363001

namespace A257088

/-- `n%(a(n-2)+2)+n` -/
def P10578283475540363001.Spec : Prop :=
  ∀ n, (P10578283475540363001.a n : ℤ) = A257088 n

end A257088

/-! ## A257088.P14810249764042647936

`lcm(n, and(1, a(n-1)))+n` with `a(0)=1, a(1)=1`
-/

namespace A257088.P14810249764042647936
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n a =>
  Nat.lcm n (Nat.land 1 (a (n - 1))) + n

end

end A257088.P14810249764042647936

namespace A257088

/-- `lcm(n, and(1, a(n-1)))+n` -/
def P14810249764042647936.Spec : Prop :=
  ∀ n, (P14810249764042647936.a n : ℤ) = A257088 n

end A257088

/-! ## A257088.P16781824338688868468

`n*(2-floor(a(n-1)/n))` with `a(0)=1`
-/

namespace A257088.P16781824338688868468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (n : ℤ) * (2 - ⌊(a (n - 1) : ℚ) / (n : ℚ)⌋)

end

end A257088.P16781824338688868468

namespace A257088

/-- `n*(2-floor(a(n-1)/n))` -/
def P16781824338688868468.Spec : Prop :=
  ∀ n, P16781824338688868468.a n = A257088 n

end A257088

/-! ## A257088.P14046743985860691788

`2*n-Δ[round((n-1)/2)²]`
-/

namespace A257088.P14046743985860691788
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((n : ℤ) - 1 : ℚ) / 2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - (f1 (n + 1) - f1 n)

end

end A257088.P14046743985860691788

namespace A257088

/-- `2*n-Δ[round((n-1)/2)²]` -/
def P14046743985860691788.Spec : Prop :=
  ∀ n, P14046743985860691788.a n = A257088 n

end A257088

/-! ## A257088.P10743270049644844154

`a(n-2)/(1-2/n)` with `a(0)=1, a(1)=1, a(2)=4`
-/

namespace A257088.P10743270049644844154
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 1, 4] fun n a =>
  a (n - 2) / (1 - 2 / (n : ℚ))

end

end A257088.P10743270049644844154

namespace A257088

/-- `a(n-2)/(1-2/n)` -/
def P10743270049644844154.Spec : Prop :=
  ∀ n, P10743270049644844154.a n = (A257088 n : ℚ)

end A257088

/-! ## A257088.P13158850956713761310

`n*(2-a(n-2)%2)` with `a(0)=1, a(1)=1, a(2)=4`
-/

namespace A257088.P13158850956713761310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 4] fun n a =>
  (n : ℤ) * (2 - Int.tmod (a (n - 2)) 2)

end

end A257088.P13158850956713761310

namespace A257088

/-- `n*(2-a(n-2)%2)` -/
def P13158850956713761310.Spec : Prop :=
  ∀ n, P13158850956713761310.a n = A257088 n

end A257088

/-! ## A257088.P8640454309228294471

`n*2^C(n-1, a(n-1))` with `a(0)=1`
-/

namespace A257088.P8640454309228294471
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  n * 2 ^ Nat.choose ((n : ℤ) - 1).toNat (a (n - 1))

end

end A257088.P8640454309228294471

namespace A257088

/-- `n*2^C(n-1, a(n-1))` -/
def P8640454309228294471.Spec : Prop :=
  ∀ n, (P8640454309228294471.a n : ℤ) = A257088 n

end A257088

/-! ## A257088.P7352825529020927356

`n*C(2, C(n-1, a(n-1)))` with `a(0)=1`
-/

namespace A257088.P7352825529020927356
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  n * Nat.choose 2 (Nat.choose ((n : ℤ) - 1).toNat (a (n - 1)))

end

end A257088.P7352825529020927356

namespace A257088

/-- `n*C(2, C(n-1, a(n-1)))` -/
def P7352825529020927356.Spec : Prop :=
  ∀ n, (P7352825529020927356.a n : ℤ) = A257088 n

end A257088

/-! ## A257088.P17721281422520920601

`floor(n^(n-a(n-1))+n)` with `a(0)=1, a(1)=1`
-/

namespace A257088.P17721281422520920601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  ⌊(n : ℚ) ^ ((n : ℤ) - a (n - 1) : ℤ) + (n : ℚ)⌋

end

end A257088.P17721281422520920601

namespace A257088

/-- `floor(n^(n-a(n-1))+n)` -/
def P17721281422520920601.Spec : Prop :=
  ∀ n, P17721281422520920601.a n = A257088 n

end A257088

/-!
# A257089: a(n) = log_3 (A256689(n)).

The programs for A257089, the canonical program `A257089.P3849951302181853917` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A257089 has offset 1).

The definition of A257089 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A256689, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A257089.P3849951302181853917

`A007949(A256689(n+1))`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A257089

/-- `A007949(A256689(n+1))` -/
def P3849951302181853917.Spec : Prop :=
  ∀ n, P3849951302181853917.a n = A257089 (n + 1)

theorem P3849951302181853917.correct : P3849951302181853917.Spec := by
  intro n
  simp only [A257089, Nat.add_sub_cancel]

end A257089

/-! ## A257089.P13046664391169300309

`∑{e}[n+1, floor(4*#/3)]`
-/

namespace A257089.P13046664391169300309
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), ⌊4 * ((Nat.factorization (f1 n) p : ℚ) / 3)⌋

end

end A257089.P13046664391169300309

namespace A257089

/-- `∑{e}[n+1, floor(4*#/3)]` -/
def P13046664391169300309.Spec : Prop :=
  ∀ n, P13046664391169300309.a n = A257089 (n + 1)

end A257089

/-! ## A257089.P4150520903513557862

`val(∏{e}[n+1, (3*#)!], 3)`
-/

namespace A257089.P4150520903513557862
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (∏ p ∈ Nat.primeFactors (f1 n), Nat.factorial (3 * Nat.factorization (f1 n) p)) 3

end

end A257089.P4150520903513557862

namespace A257089

/-- `val(∏{e}[n+1, (3*#)!], 3)` -/
def P4150520903513557862.Spec : Prop :=
  ∀ n, (P4150520903513557862.a n : ℤ) = A257089 (n + 1)

end A257089

/-! ## A257089.P14916412475710443928

`val(A256689(n+1), 3)`
-/

namespace A257089.P14916412475710443928
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A256689 (n + 1)).toNat 3

end

end A257089.P14916412475710443928

namespace A257089

/-- `val(A256689(n+1), 3)` -/
def P14916412475710443928.Spec : Prop :=
  ∀ n, (P14916412475710443928.a n : ℤ) = A257089 (n + 1)

end A257089

/-! ## A257089.P16218914195701312751

`A001222(A256689(n+1))`
-/

namespace A257089.P16218914195701312751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A256689 (n + 1)).toNat

end

end A257089.P16218914195701312751

namespace A257089

/-- `A001222(A256689(n+1))` -/
def P16218914195701312751.Spec : Prop :=
  ∀ n, P16218914195701312751.a n = A257089 (n + 1)

end A257089

/-! ## A257089.P11891660841744580495

`∑{d}[A256689(n+1), A001221(#)]`
-/

namespace A257089.P11891660841744580495
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256689 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A001221 d

end

end A257089.P11891660841744580495

namespace A257089

/-- `∑{d}[A256689(n+1), A001221(#)]` -/
def P11891660841744580495.Spec : Prop :=
  ∀ n, P11891660841744580495.a n = A257089 (n + 1)

end A257089

/-! ## A257089.P12646075448182202456

`A001222(∏{e}[n+1, A067623(#)])`
-/

namespace A257089.P12646075448182202456
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (∏ p ∈ Nat.primeFactors (f1 n), A067623 (Nat.factorization (f1 n) p)).toNat

end

end A257089.P12646075448182202456

namespace A257089

/-- `A001222(∏{e}[n+1, A067623(#)])` -/
def P12646075448182202456.Spec : Prop :=
  ∀ n, P12646075448182202456.a n = A257089 (n + 1)

end A257089

/-! ## A257089.P2053597703464417530

`A366123(n+1)+A001222(n+1)`
-/

namespace A257089.P2053597703464417530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366123 (n + 1) + A001222 (n + 1)

end

end A257089.P2053597703464417530

namespace A257089

/-- `A366123(n+1)+A001222(n+1)` -/
def P2053597703464417530.Spec : Prop :=
  ∀ n, P2053597703464417530.a n = A257089 (n + 1)

end A257089

/-! ## A257089.P10557289522724100108

`A385378(n+1)+A046660(n+1)`
-/

namespace A257089.P10557289522724100108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385378 (n + 1) + A046660 (n + 1)

end

end A257089.P10557289522724100108

namespace A257089

/-- `A385378(n+1)+A046660(n+1)` -/
def P10557289522724100108.Spec : Prop :=
  ∀ n, P10557289522724100108.a n = A257089 (n + 1)

end A257089

/-! ## A257089.P7103082638492827129

`A001222((n+1)*A053150(n+1))`
-/

namespace A257089.P7103082638492827129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 ((n + 1 : ℤ) * A053150 (n + 1)).toNat

end

end A257089.P7103082638492827129

namespace A257089

/-- `A001222((n+1)*A053150(n+1))` -/
def P7103082638492827129.Spec : Prop :=
  ∀ n, P7103082638492827129.a n = A257089 (n + 1)

end A257089

/-! ## A257089.P17696155439731911187

`A000005(∏{e}[n+1, A067623(#)])-1`
-/

namespace A257089.P17696155439731911187
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (∏ p ∈ Nat.primeFactors (f1 n), A067623 (Nat.factorization (f1 n) p)).toNat - 1

end

end A257089.P17696155439731911187

namespace A257089

/-- `A000005(∏{e}[n+1, A067623(#)])-1` -/
def P17696155439731911187.Spec : Prop :=
  ∀ n, P17696155439731911187.a n = A257089 (n + 1)

end A257089

/-! ## A257089.P7383854488915719262

`A001222(n+1)+A001222(A053150(n+1))`
-/

namespace A257089.P7383854488915719262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1) + A001222 (A053150 (n + 1)).toNat

end

end A257089.P7383854488915719262

namespace A257089

/-- `A001222(n+1)+A001222(A053150(n+1))` -/
def P7383854488915719262.Spec : Prop :=
  ∀ n, P7383854488915719262.a n = A257089 (n + 1)

end A257089

/-! ## A257089.P15516279965000523103

`A007949(∏{e}[1+n, #!])+∑{e}[n+1, #]`
-/

namespace A257089.P15516279965000523103
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007949 (∏ p ∈ Nat.primeFactors (f1 n), Nat.factorial (Nat.factorization (f1 n) p)) + ((∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p : ℕ) : ℤ)

end

end A257089.P15516279965000523103

namespace A257089

/-- `A007949(∏{e}[1+n, #!])+∑{e}[n+1, #]` -/
def P15516279965000523103.Spec : Prop :=
  ∀ n, P15516279965000523103.a n = A257089 (n + 1)

end A257089

/-! ## A257089.P16024897722467385611

`A328194(3*A256689(n+1))`
-/

namespace A257089.P16024897722467385611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328194 (3 * A256689 (n + 1)).toNat

end

end A257089.P16024897722467385611

namespace A257089

/-- `A328194(3*A256689(n+1))` -/
def P16024897722467385611.Spec : Prop :=
  ∀ n, P16024897722467385611.a n = A257089 (n + 1)

end A257089

/-! ## A257089.P15208761432673896651

`A000195(A256689(n+1))`
-/

namespace A257089.P15208761432673896651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000195 (A256689 (n + 1)).toNat

end

end A257089.P15208761432673896651

namespace A257089

/-- `A000195(A256689(n+1))` -/
def P15208761432673896651.Spec : Prop :=
  ∀ n, P15208761432673896651.a n = A257089 (n + 1)

end A257089

/-! ## A257089.P17573057823775736879

`A007949(n+1)+A007949(A383794(n+1))`
-/

namespace A257089.P17573057823775736879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007949 (n + 1) + A007949 (A383794 (n + 1)).toNat

end

end A257089.P17573057823775736879

namespace A257089

/-- `A007949(n+1)+A007949(A383794(n+1))` -/
def P17573057823775736879.Spec : Prop :=
  ∀ n, P17573057823775736879.a n = A257089 (n + 1)

end A257089

/-! ## A257089.P3183501092841657933

`A001222(A000189((n+1)²))`
-/

namespace A257089.P3183501092841657933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A000189 ((n + 1) ^ 2)).toNat

end

end A257089.P3183501092841657933

namespace A257089

/-- `A001222(A000189((n+1)²))` -/
def P3183501092841657933.Spec : Prop :=
  ∀ n, P3183501092841657933.a n = A257089 (n + 1)

end A257089

/-!
# A257090: a(n) = log_2 (A256691(n)).

The programs for A257090, the canonical program `A257090.P18330022939788008876` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A257090 has offset 1).

The definition of A257090 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A256691, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A257090.P18330022939788008876

`log2(A256691(n+1))`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A257090

/-- `log2(A256691(n+1))` -/
def P18330022939788008876.Spec : Prop :=
  ∀ n, P18330022939788008876.a n = (A257090 (n + 1) : ℝ)

end A257090

/-! ## A257090.P14818561561700523401

`∑{e}[(1+n)², val(#!, 2)]+∑{e}[n+1, #]`
-/

namespace A257090.P14818561561700523401
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (1 + n) ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), SequenceMachineLib.valuation (Nat.factorial (Nat.factorization (f1 n) p)) 2 + ∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p

end

end A257090.P14818561561700523401

namespace A257090

/-- `∑{e}[(1+n)², val(#!, 2)]+∑{e}[n+1, #]` -/
def P14818561561700523401.Spec : Prop :=
  ∀ n, (P14818561561700523401.a n : ℤ) = A257090 (n + 1)

end A257090

/-! ## A257090.P5816040093930014519

`∑{e}[n+1, A004134(#)]`
-/

namespace A257090.P5816040093930014519
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A004134 (Nat.factorization (f1 n) p)

end

end A257090.P5816040093930014519

namespace A257090

/-- `∑{e}[n+1, A004134(#)]` -/
def P5816040093930014519.Spec : Prop :=
  ∀ n, P5816040093930014519.a n = A257090 (n + 1)

end A257090

/-! ## A257090.P6975290284279549869

`A046645(n+1)+∑{e}[n+1, #]`
-/

namespace A257090.P6975290284279549869
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046645 (n + 1) + ((∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p : ℕ) : ℤ)

end

end A257090.P6975290284279549869

namespace A257090

/-- `A046645(n+1)+∑{e}[n+1, #]` -/
def P6975290284279549869.Spec : Prop :=
  ∀ n, P6975290284279549869.a n = A257090 (n + 1)

end A257090

/-! ## A257090.P308464655934605226

`∑{e}[n+1, #]+log2(A046644(n+1))`
-/

namespace A257090.P308464655934605226
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p : ℕ) : ℝ) + Real.logb 2 (A046644 (n + 1) : ℝ)

end

end A257090.P308464655934605226

namespace A257090

/-- `∑{e}[n+1, #]+log2(A046644(n+1))` -/
def P308464655934605226.Spec : Prop :=
  ∀ n, P308464655934605226.a n = (A257090 (n + 1) : ℝ)

end A257090

/-! ## A257090.P17653632496705817914

`A046645(n+1)+Δ[A022559(n)]`
-/

namespace A257090.P17653632496705817914
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022559 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046645 (n + 1) + (f1 (n + 1) - f1 n)

end

end A257090.P17653632496705817914

namespace A257090

/-- `A046645(n+1)+Δ[A022559(n)]` -/
def P17653632496705817914.Spec : Prop :=
  ∀ n, P17653632496705817914.a n = A257090 (n + 1)

end A257090

/-! ## A257090.P13241722445323685201

`A046645(n+1)+A001222(n+1)`
-/

namespace A257090.P13241722445323685201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046645 (n + 1) + A001222 (n + 1)

end

end A257090.P13241722445323685201

namespace A257090

/-- `A046645(n+1)+A001222(n+1)` -/
def P13241722445323685201.Spec : Prop :=
  ∀ n, P13241722445323685201.a n = A257090 (n + 1)

end A257090

/-! ## A257090.P12216501645313854701

`A317946(n+1)+A255201(n+1)`
-/

namespace A257090.P12216501645313854701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317946 (n + 1) + A255201 (n + 1)

end

end A257090.P12216501645313854701

namespace A257090

/-- `A317946(n+1)+A255201(n+1)` -/
def P12216501645313854701.Spec : Prop :=
  ∀ n, P12216501645313854701.a n = A257090 (n + 1)

end A257090

/-! ## A257090.P14031750623731277500

`A317946(n+1)+2*A001222(n+1)`
-/

namespace A257090.P14031750623731277500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317946 (n + 1) + 2 * A001222 (n + 1)

end

end A257090.P14031750623731277500

namespace A257090

/-- `A317946(n+1)+2*A001222(n+1)` -/
def P14031750623731277500.Spec : Prop :=
  ∀ n, P14031750623731277500.a n = A257090 (n + 1)

end A257090

/-! ## A257090.P17109463859179675382

`A046645(n+1)+A255201(n+1)/2`
-/

namespace A257090.P17109463859179675382
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A046645 (n + 1) : ℚ) + (A255201 (n + 1) : ℚ) / 2

end

end A257090.P17109463859179675382

namespace A257090

/-- `A046645(n+1)+A255201(n+1)/2` -/
def P17109463859179675382.Spec : Prop :=
  ∀ n, P17109463859179675382.a n = (A257090 (n + 1) : ℚ)

end A257090

/-! ## A257090.P11948657339703384431

`2*A046645(n+1)-A317946(n+1)`
-/

namespace A257090.P11948657339703384431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A046645 (n + 1) - A317946 (n + 1)

end

end A257090.P11948657339703384431

namespace A257090

/-- `2*A046645(n+1)-A317946(n+1)` -/
def P11948657339703384431.Spec : Prop :=
  ∀ n, P11948657339703384431.a n = A257090 (n + 1)

end A257090

/-! ## A257090.P7678242550344492228

`A001222(n+1)+A001222(A046644(n+1))`
-/

namespace A257090.P7678242550344492228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1) + A001222 (A046644 (n + 1)).toNat

end

end A257090.P7678242550344492228

namespace A257090

/-- `A001222(n+1)+A001222(A046644(n+1))` -/
def P7678242550344492228.Spec : Prop :=
  ∀ n, P7678242550344492228.a n = A257090 (n + 1)

end A257090

/-! ## A257090.P6360826771131124369

`A048675(A293442(n+1))+A046645(n+1)`
-/

namespace A257090.P6360826771131124369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048675 (A293442 (n + 1)).toNat + A046645 (n + 1)

end

end A257090.P6360826771131124369

namespace A257090

/-- `A048675(A293442(n+1))+A046645(n+1)` -/
def P6360826771131124369.Spec : Prop :=
  ∀ n, P6360826771131124369.a n = A257090 (n + 1)

end A257090

/-! ## A257090.P13194806674163219031

`A001222(A317934(n+1))+2*A001222(n+1)`
-/

namespace A257090.P13194806674163219031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A317934 (n + 1)).toNat + 2 * A001222 (n + 1)

end

end A257090.P13194806674163219031

namespace A257090

/-- `A001222(A317934(n+1))+2*A001222(n+1)` -/
def P13194806674163219031.Spec : Prop :=
  ∀ n, P13194806674163219031.a n = A257090 (n + 1)

end A257090

/-! ## A257090.P12834795525232833022

`2*A046645(n+1)-A046645(A000188(n+1))`
-/

namespace A257090.P12834795525232833022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A046645 (n + 1) - A046645 (A000188 (n + 1)).toNat

end

end A257090.P12834795525232833022

namespace A257090

/-- `2*A046645(n+1)-A046645(A000188(n+1))` -/
def P12834795525232833022.Spec : Prop :=
  ∀ n, P12834795525232833022.a n = A257090 (n + 1)

end A257090

/-! ## A257090.P14955724796184445392

`val(A256691(n+1), A006530(A299150(3*n+4)))`
-/

namespace A257090.P14955724796184445392
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A256691 (n + 1)).toNat (A006530 (A299150 (3 * n + 4)).toNat).toNat

end

end A257090.P14955724796184445392

namespace A257090

/-- `val(A256691(n+1), A006530(A299150(3*n+4)))` -/
def P14955724796184445392.Spec : Prop :=
  ∀ n, (P14955724796184445392.a n : ℤ) = A257090 (n + 1)

end A257090

/-! ## A257090.P2149666282961856834

`A056239(∏{e}[n+1, A000040(#)])+A046645(n+1)`
-/

namespace A257090.P2149666282961856834
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (∏ p ∈ Nat.primeFactors (f1 n), A000040 (Nat.factorization (f1 n) p)).toNat + A046645 (n + 1)

end

end A257090.P2149666282961856834

namespace A257090

/-- `A056239(∏{e}[n+1, A000040(#)])+A046645(n+1)` -/
def P2149666282961856834.Spec : Prop :=
  ∀ n, P2149666282961856834.a n = A257090 (n + 1)

end A257090

/-! ## A257090.P1277518974828925909

`A056239(∏{e}[n+1, A040990(#)])+A046645(n+1)`
-/

namespace A257090.P1277518974828925909
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (∏ p ∈ Nat.primeFactors (f1 n), A040990 (Nat.factorization (f1 n) p)).toNat + A046645 (n + 1)

end

end A257090.P1277518974828925909

namespace A257090

/-- `A056239(∏{e}[n+1, A040990(#)])+A046645(n+1)` -/
def P1277518974828925909.Spec : Prop :=
  ∀ n, P1277518974828925909.a n = A257090 (n + 1)

end A257090

/-! ## A257090.P445518931018845453

`A056239(∏{e}[n+1, A058853(#)])+A046645(n+1)`
-/

namespace A257090.P445518931018845453
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (∏ p ∈ Nat.primeFactors (f1 n), A058853 (Nat.factorization (f1 n) p)).toNat + A046645 (n + 1)

end

end A257090.P445518931018845453

namespace A257090

/-- `A056239(∏{e}[n+1, A058853(#)])+A046645(n+1)` -/
def P445518931018845453.Spec : Prop :=
  ∀ n, P445518931018845453.a n = A257090 (n + 1)

end A257090

/-! ## A257090.P14943439440090124351

`A056239(∏{e}[n+1, A219697(#)])+A046645(n+1)`
-/

namespace A257090.P14943439440090124351
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (∏ p ∈ Nat.primeFactors (f1 n), A219697 (Nat.factorization (f1 n) p)).toNat + A046645 (n + 1)

end

end A257090.P14943439440090124351

namespace A257090

/-- `A056239(∏{e}[n+1, A219697(#)])+A046645(n+1)` -/
def P14943439440090124351.Spec : Prop :=
  ∀ n, P14943439440090124351.a n = A257090 (n + 1)

end A257090

/-!
# A257091: a(n) = log_5 (A256693(n)).

The programs for A257091, the canonical program `A257091.P5742211835036790405` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A257091 has offset 1).

The definition of A257091 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A257091.P5742211835036790405

`val(∏{e}[n+1, (5*#)!], 5)`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A257091

/-- `val(∏{e}[n+1, (5*#)!], 5)` -/
def P5742211835036790405.Spec : Prop :=
  ∀ n, (P5742211835036790405.a n : ℤ) = A257091 (n + 1)

theorem P5742211835036790405.correct : P5742211835036790405.Spec := by
  intro n
  simp only [A257091, Nat.add_sub_cancel]

end A257091

/-! ## A257091.P16480585361625819520

`∑{e}[n+1, floor(12*#/10)]`
-/

namespace A257091.P16480585361625819520
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), ⌊12 * ((Nat.factorization (f1 n) p : ℚ) / 10)⌋

end

end A257091.P16480585361625819520

namespace A257091

/-- `∑{e}[n+1, floor(12*#/10)]` -/
def P16480585361625819520.Spec : Prop :=
  ∀ n, P16480585361625819520.a n = A257091 (n + 1)

end A257091

/-! ## A257091.P16072085578738096698

`val(A256693(n+1), 5)`
-/

namespace A257091.P16072085578738096698
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A256693 (n + 1)).toNat 5

end

end A257091.P16072085578738096698

namespace A257091

/-- `val(A256693(n+1), 5)` -/
def P16072085578738096698.Spec : Prop :=
  ∀ n, (P16072085578738096698.a n : ℤ) = A257091 (n + 1)

end A257091

/-! ## A257091.P8971976172994863463

`∑{e}[n+1, #]+∑{e}[n+1, A002266(#)]`
-/

namespace A257091.P8971976172994863463
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p : ℕ) : ℤ) + ∑ p ∈ Nat.primeFactors (f2 n), A002266 (Nat.factorization (f2 n) p)

end

end A257091.P8971976172994863463

namespace A257091

/-- `∑{e}[n+1, #]+∑{e}[n+1, A002266(#)]` -/
def P8971976172994863463.Spec : Prop :=
  ∀ n, P8971976172994863463.a n = A257091 (n + 1)

end A257091

/-! ## A257091.P4446524964754563812

`∑{e}[n+1, #]+∑{e}[n+1, A027868(#)]`
-/

namespace A257091.P4446524964754563812
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p : ℕ) : ℤ) + ∑ p ∈ Nat.primeFactors (f2 n), A027868 (Nat.factorization (f2 n) p)

end

end A257091.P4446524964754563812

namespace A257091

/-- `∑{e}[n+1, #]+∑{e}[n+1, A027868(#)]` -/
def P4446524964754563812.Spec : Prop :=
  ∀ n, P4446524964754563812.a n = A257091 (n + 1)

end A257091

/-! ## A257091.P17349125992866806985

`A001222(n+1)+1-A189023(n+1)²`
-/

namespace A257091.P17349125992866806985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1) + (1 - A189023 (n + 1) ^ 2)

end

end A257091.P17349125992866806985

namespace A257091

/-- `A001222(n+1)+1-A189023(n+1)²` -/
def P17349125992866806985.Spec : Prop :=
  ∀ n, P17349125992866806985.a n = A257091 (n + 1)

end A257091

/-! ## A257091.P6653707098656815320

`A001222(or(A318312(n+1), A318316(n+1)))`
-/

namespace A257091.P6653707098656815320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (Int.lor (A318312 (n + 1)) (A318316 (n + 1))).toNat

end

end A257091.P6653707098656815320

namespace A257091

/-- `A001222(or(A318312(n+1), A318316(n+1)))` -/
def P6653707098656815320.Spec : Prop :=
  ∀ n, P6653707098656815320.a n = A257091 (n + 1)

end A257091

/-! ## A257091.P5842749456161693742

`A001222(A256693(n+1))`
-/

namespace A257091.P5842749456161693742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A256693 (n + 1)).toNat

end

end A257091.P5842749456161693742

namespace A257091

/-- `A001222(A256693(n+1))` -/
def P5842749456161693742.Spec : Prop :=
  ∀ n, P5842749456161693742.a n = A257091 (n + 1)

end A257091

/-! ## A257091.P14197088096312099512

`∑{d}[A256693(n+1), A001221(#)]`
-/

namespace A257091.P14197088096312099512
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256693 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A001221 d

end

end A257091.P14197088096312099512

namespace A257091

/-- `∑{d}[A256693(n+1), A001221(#)]` -/
def P14197088096312099512.Spec : Prop :=
  ∀ n, P14197088096312099512.a n = A257091 (n + 1)

end A257091

/-! ## A257091.P16449307969803281158

`A076649(A124859(n+1))`
-/

namespace A257091.P16449307969803281158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076649 (A124859 (n + 1)).toNat

end

end A257091.P16449307969803281158

namespace A257091

/-- `A076649(A124859(n+1))` -/
def P16449307969803281158.Spec : Prop :=
  ∀ n, P16449307969803281158.a n = A257091 (n + 1)

end A257091

/-!
# A257092: Square array read by antidiagonals: Nimsum function for "Take-or-Break" Nim where a legal move is defined as: 1) Remove a nonzero number of counters from any pile up to the size of the selected pile OR 2) Split any pile of size greater than one into two nonzero piles (removing no counters from the board).

The programs for A257092, there is no canonical definition to state claims against.
-/

/-! ## A257092.P13532427568598187457

`A341458(n+1)-Δ[Δ[A141214(n+1)]]`
-/

namespace A257092.P13532427568598187457
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141214 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341458 (n + 1) - (f1 (n + 1) - f1 n)

end

end A257092.P13532427568598187457

/-! ## A257092.P7048854255449663189

`A341458(n+1)-A342005(A000720(A252219(n+1)))`
-/

namespace A257092.P7048854255449663189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341458 (n + 1) - A342005 (A000720 (A252219 (n + 1)).toNat).toNat

end

end A257092.P7048854255449663189

/-! ## A257092.P5814668566132622226

`A341458(n+1)-A304118(3*n+2)`
-/

namespace A257092.P5814668566132622226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341458 (n + 1) - A304118 (3 * n + 2)

end

end A257092.P5814668566132622226

/-! ## A257092.P8057247961091030672

`A341458(n+1)-(A335462(3*n+1)+1)`
-/

namespace A257092.P8057247961091030672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341458 (n + 1) - (A335462 (3 * n + 1) + 1)

end

end A257092.P8057247961091030672

/-! ## A257092.P3780040811177482485

`A341458(n+1)-A057427(A246343(n))`
-/

namespace A257092.P3780040811177482485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341458 (n + 1) - A057427 (A246343 n).toNat

end

end A257092.P3780040811177482485

/-!
# A257093: a(n) = n*(n+1)*(13*n+2)/6.

The programs for A257093, the canonical program `A257093.P1387521674162143413` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A257093 has offset 0).

The definition of A257093 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(n+1)*(13*n+2)/6` (program `A257093.P11393470610484723559`, by `A257093.P11393470610484723559.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A257093.P12593251960287258587

`ogf((5x+8x^2)/(1-4x+6x^2-4x^3+x^4))`
-/

namespace A257093.P12593251960287258587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 5, 8] [1, -4, 6, -4, 1] n

end

end A257093.P12593251960287258587

namespace A257093

/-- `ogf((5x+8x^2)/(1-4x+6x^2-4x^3+x^4))` -/
def P12593251960287258587.Spec : Prop :=
  ∀ n, P12593251960287258587.a n = A257093 n

end A257093

/-! ## A257093.P11393470610484723559

`n*(n+1)*(13*n+2)/6`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A257093.P11393470610484723559
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n * (n + 1) * (13 * n + 2) : ℚ) / 6

end

end A257093.P11393470610484723559

namespace A257093

/-- `n*(n+1)*(13*n+2)/6` -/
def P11393470610484723559.Spec : Prop :=
  ∀ n, P11393470610484723559.a n = (A257093 n : ℚ)

theorem P11393470610484723559.correct : P11393470610484723559.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 =>
      simp [A257093, Nat.add_sub_cancel, A257093.P11393470610484723559.a, A257093.P1387521674162143413.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 4 =>
      have h1 := ih (m + 3) (by omega)
      have h2 := ih (m + 2) (by omega)
      have h3 := ih (m + 1) (by omega)
      have h4 := ih m (by omega)
      simp only [A257093, Nat.add_sub_cancel, A257093.P11393470610484723559.a, A257093.P1387521674162143413.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 4 - 1 = m + 3 by omega, show m + 4 - 2 = m + 2 by omega, show m + 4 - 3 = m + 1 by omega, show m + 4 - 4 = m by omega, show m + 3 < m + 4 by omega, show m + 2 < m + 4 by omega, show m + 1 < m + 4 by omega, show m < m + 4 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 ⊢
      rw [← h1, ← h2, ← h3, ← h4]
      first | ring1 | ring_nf | (field_simp; (first | ring1 | ring_nf)) | omega | (push_cast; ring_nf) | nlinarith

end A257093

/-! ## A257093.P1387521674162143413

`4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` with `a(0)=0, a(1)=5, a(2)=28, a(3)=82`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A257093

/-- `4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` -/
def P1387521674162143413.Spec : Prop :=
  ∀ n, P1387521674162143413.a n = A257093 n

theorem P1387521674162143413.correct : P1387521674162143413.Spec := by
  intro n
  simp only [A257093]

end A257093

/-! ## A257093.P531462893652434263

`∑{#}[n-1, (n-#)*(5*n-2*#)]`
-/

namespace A257093.P531462893652434263
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1).toNat, ((n : ℤ) - (k : ℤ)) * ((5 * n : ℤ) - (2 * k : ℤ))

end

end A257093.P531462893652434263

namespace A257093

/-- `∑{#}[n-1, (n-#)*(5*n-2*#)]` -/
def P531462893652434263.Spec : Prop :=
  ∀ n, P531462893652434263.a n = A257093 n

end A257093

/-! ## A257093.P12552374411657163824

`∑[∑[a(n-1)+13]]` with `a(0)=0, a(1)=5`
-/

namespace A257093.P12552374411657163824
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 5] fun n f2 =>
  f2 (n - 1) + 13

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A257093.P12552374411657163824

namespace A257093

/-- `∑[∑[a(n-1)+13]]` -/
def P12552374411657163824.Spec : Prop :=
  ∀ n, (P12552374411657163824.a n : ℤ) = A257093 n

end A257093

/-! ## A257093.P6490670651841048382

`∑[A186030(n)]`
-/

namespace A257093.P6490670651841048382
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186030 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A257093.P6490670651841048382

namespace A257093

/-- `∑[A186030(n)]` -/
def P6490670651841048382.Spec : Prop :=
  ∀ n, P6490670651841048382.a n = A257093 n

end A257093

/-! ## A257093.P2326242803574992915

`∑[A022270(n)-n]`
-/

namespace A257093.P2326242803574992915
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022270 n - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A257093.P2326242803574992915

namespace A257093

/-- `∑[A022270(n)-n]` -/
def P2326242803574992915.Spec : Prop :=
  ∀ n, P2326242803574992915.a n = A257093 n

end A257093

/-! ## A257093.P8572517066111371114

`A132112(n)+∑[n²]`
-/

namespace A257093.P8572517066111371114
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132112 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A257093.P8572517066111371114

namespace A257093

/-- `A132112(n)+∑[n²]` -/
def P8572517066111371114.Spec : Prop :=
  ∀ n, P8572517066111371114.a n = A257093 n

end A257093

/-! ## A257093.P15168449793118378564

`A181617(n+1)+∑[∑[n]]`
-/

namespace A257093.P15168449793118378564
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181617 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A257093.P15168449793118378564

namespace A257093

/-- `A181617(n+1)+∑[∑[n]]` -/
def P15168449793118378564.Spec : Prop :=
  ∀ n, P15168449793118378564.a n = A257093 n

end A257093

/-! ## A257093.P4649680960956676804

`A002492(n)+A002413(n)`
-/

namespace A257093.P4649680960956676804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002492 n + A002413 n

end

end A257093.P4649680960956676804

namespace A257093

/-- `A002492(n)+A002413(n)` -/
def P4649680960956676804.Spec : Prop :=
  ∀ n, P4649680960956676804.a n = A257093 n

end A257093

/-! ## A257093.P15327905396073773390

`A048395(n)+A005581(n)`
-/

namespace A257093.P15327905396073773390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048395 n + A005581 n

end

end A257093.P15327905396073773390

namespace A257093

/-- `A048395(n)+A005581(n)` -/
def P15327905396073773390.Spec : Prop :=
  ∀ n, P15327905396073773390.a n = A257093 n

end A257093

/-! ## A257093.P14181987462096329995

`A162148(n)+A007585(n)`
-/

namespace A257093.P14181987462096329995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162148 n + A007585 n

end

end A257093.P14181987462096329995

namespace A257093

/-- `A162148(n)+A007585(n)` -/
def P14181987462096329995.Spec : Prop :=
  ∀ n, P14181987462096329995.a n = A257093 n

end A257093

/-! ## A257093.P11109079671647044885

`A174814(n)+A002411(n)`
-/

namespace A257093.P11109079671647044885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174814 n + A002411 n

end

end A257093.P11109079671647044885

namespace A257093

/-- `A174814(n)+A002411(n)` -/
def P11109079671647044885.Spec : Prop :=
  ∀ n, P11109079671647044885.a n = A257093 n

end A257093

/-! ## A257093.P7615458934320247151

`A147875(n)+A062025(n)`
-/

namespace A257093.P7615458934320247151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147875 n + A062025 n

end

end A257093.P7615458934320247151

namespace A257093

/-- `A147875(n)+A062025(n)` -/
def P7615458934320247151.Spec : Prop :=
  ∀ n, P7615458934320247151.a n = A257093 n

end A257093

/-! ## A257093.P5182415203269526597

`A210440(n)+A007586(n)`
-/

namespace A257093.P5182415203269526597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210440 n + A007586 n

end

end A257093.P5182415203269526597

namespace A257093

/-- `A210440(n)+A007586(n)` -/
def P5182415203269526597.Spec : Prop :=
  ∀ n, P5182415203269526597.a n = A257093 n

end A257093

/-! ## A257093.P14294092385343036984

`A177890(n)+A046092(n)`
-/

namespace A257093.P14294092385343036984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177890 n + A046092 n

end

end A257093.P14294092385343036984

namespace A257093

/-- `A177890(n)+A046092(n)` -/
def P14294092385343036984.Spec : Prop :=
  ∀ n, P14294092385343036984.a n = A257093 n

end A257093

/-! ## A257093.P2901627706423912669

`A255211(n)+A011379(n)`
-/

namespace A257093.P2901627706423912669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255211 n + A011379 n

end

end A257093.P2901627706423912669

namespace A257093

/-- `A255211(n)+A011379(n)` -/
def P2901627706423912669.Spec : Prop :=
  ∀ n, P2901627706423912669.a n = A257093 n

end A257093

/-! ## A257093.P7054720038353966204

`A215646(n)+A101986(n)`
-/

namespace A257093.P7054720038353966204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215646 n + A101986 n

end

end A257093.P7054720038353966204

namespace A257093

/-- `A215646(n)+A101986(n)` -/
def P7054720038353966204.Spec : Prop :=
  ∀ n, P7054720038353966204.a n = A257093 n

end A257093

/-! ## A257093.P16788268958213029915

`A268684(n)+A162147(n)`
-/

namespace A257093.P16788268958213029915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268684 n + A162147 n

end

end A257093.P16788268958213029915

namespace A257093

/-- `A268684(n)+A162147(n)` -/
def P16788268958213029915.Spec : Prop :=
  ∀ n, P16788268958213029915.a n = A257093 n

end A257093

/-! ## A257093.P14651374243404875735

`A027903(n)-A162147(n)`
-/

namespace A257093.P14651374243404875735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027903 n - A162147 n

end

end A257093.P14651374243404875735

namespace A257093

/-- `A027903(n)-A162147(n)` -/
def P14651374243404875735.Spec : Prop :=
  ∀ n, P14651374243404875735.a n = A257093 n

end A257093

/-!
# A257098: From square root of the inverse of Riemann zeta function: form Dirichlet series Sum b(n)/n^x whose square is 1/zeta; sequence gives numerator of b(n).

The programs for A257098, there is no canonical definition to state claims against.
-/

/-! ## A257098.P3325102901465141899

`A318657(A003961(n+1))`
-/

namespace A257098.P3325102901465141899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318657 (A003961 (n + 1)).toNat

end

end A257098.P3325102901465141899

/-! ## A257098.P1601024687448204410

`A318657(A253885(n)+1)`
-/

namespace A257098.P1601024687448204410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318657 (A253885 n + 1).toNat

end

end A257098.P1601024687448204410

/-! ## A257098.P8584156227269433102

`A318657(A332818(n+1))`
-/

namespace A257098.P8584156227269433102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318657 (A332818 (n + 1)).toNat

end

end A257098.P8584156227269433102

/-! ## A257098.P14739305091312278584

`A318657(A359600(n+1))`
-/

namespace A257098.P14739305091312278584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318657 (A359600 (n + 1)).toNat

end

end A257098.P14739305091312278584

/-! ## A257098.P181398601973217223

`A318657(A064988(n+1))`
-/

namespace A257098.P181398601973217223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318657 (A064988 (n + 1)).toNat

end

end A257098.P181398601973217223

/-! ## A257098.P930427260427186434

`A318657(A348746(n+1))`
-/

namespace A257098.P930427260427186434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318657 (A348746 (n + 1)).toNat

end

end A257098.P930427260427186434

/-! ## A257098.P12960694430525427205

`A318657(A297002(n+1))`
-/

namespace A257098.P12960694430525427205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318657 (A297002 (n + 1)).toNat

end

end A257098.P12960694430525427205

/-! ## A257098.P15331118693593577462

`A318657(A389092(n+1))`
-/

namespace A257098.P15331118693593577462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318657 (A389092 (n + 1)).toNat

end

end A257098.P15331118693593577462

/-! ## A257098.P13224659035816826504

`A318657(A354091(n+1))`
-/

namespace A257098.P13224659035816826504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318657 (A354091 (n + 1)).toNat

end

end A257098.P13224659035816826504

/-! ## A257098.P6309849076491629923

`A318657(A354202(n+1))`
-/

namespace A257098.P6309849076491629923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318657 (A354202 (n + 1)).toNat

end

end A257098.P6309849076491629923

/-! ## A257098.P5670888276295894210

`A318657(A357852(n+1))`
-/

namespace A257098.P5670888276295894210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318657 (A357852 (n + 1)).toNat

end

end A257098.P5670888276295894210

/-!
# A257099: From third root of the inverse of Riemann zeta function: form Dirichlet series Sum b(n)/n^x whose cube is 1/zeta; sequence gives numerator of b(n).

The programs for A257099, there is no canonical definition to state claims against.
-/

/-! ## A257099.P4608443313612408524

`∏{e}[(n+1)^5, 3-A000010(#)]`
-/

namespace A257099.P4608443313612408524
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), (3 - A000010 (Nat.factorization (f1 n) p))

end

end A257099.P4608443313612408524

/-! ## A257099.P9273034784014984949

`∏{p}[n+1, -1%#]-A316197(ceil(xor(n, n+1)/4))`
-/

namespace A257099.P9273034784014984949
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), Int.tmod (-1) (p : ℤ) - A316197 ⌈(Nat.xor n (n + 1) : ℚ) / 4⌉.toNat

end

end A257099.P9273034784014984949

/-! ## A257099.P5362409617972965434

`A206076(A124859(n+1))`
-/

namespace A257099.P5362409617972965434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206076 (A124859 (n + 1)).toNat

end

end A257099.P5362409617972965434

/-! ## A257099.P1226987014541085212

`A257098(A204093(n+1))`
-/

namespace A257099.P1226987014541085212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257098 (A204093 (n + 1)).toNat

end

end A257099.P1226987014541085212

/-! ## A257099.P2135582892691207503

`A395188(A354359(n+1)²)`
-/

namespace A257099.P2135582892691207503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395188 (A354359 (n + 1) ^ 2).toNat

end

end A257099.P2135582892691207503

