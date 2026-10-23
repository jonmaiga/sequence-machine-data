import SequenceMachineLib
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
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C036
import Seq.B000.C037
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C003
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
import Seq.B009.C000
import Seq.B010.C000
import Seq.B012.C000
import Seq.B013.C000
import Seq.Opaque.C000
import Seq.Opaque.C001
import Seq.Opaque.C002
import Seq.Opaque.C003
import Seq.Opaque.C004
import Seq.Opaque.C005
import Seq.Opaque.C006
import Seq.Opaque.C007
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
# A279000: Numbers of the form (11*h+j)*11^k-1 for h,k in N and j in {1,3,4,5,9}.

The programs for A279000, there is no canonical definition to state claims against.
-/

/-! ## A279000.P17091722137012334979

`comp[eq[1, val(A001160(n+1), 11)]]`
-/

namespace A279000.P17091722137012334979
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A001160 (n + 1)).toNat 11

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j = f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A279000.P17091722137012334979

/-! ## A279000.P7529726640795291820

`eq[1, val(A001160(2*(n+1)), 11)%2]`
-/

namespace A279000.P7529726640795291820
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A001160 (2 * (n + 1))).toNat 11 % 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A279000.P7529726640795291820

/-! ## A279000.P12416652014366687603

`eq[0, A023532(val(A001160(n+1), 11))]`
-/

namespace A279000.P12416652014366687603
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023532 (SequenceMachineLib.valuation (A001160 (n + 1)).toNat 11)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A279000.P12416652014366687603

/-! ## A279000.P796953998940173753

`eq[0, A025581(val(A001160(n+1), 11))]`
-/

namespace A279000.P796953998940173753
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 (SequenceMachineLib.valuation (A001160 (n + 1)).toNat 11)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A279000.P796953998940173753

/-! ## A279000.P7992682202493147351

`eq[0, A167166(val(A001160(n+1), 11))]`
-/

namespace A279000.P7992682202493147351
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167166 (SequenceMachineLib.valuation (A001160 (n + 1)).toNat 11)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A279000.P7992682202493147351

/-! ## A279000.P15172795061409647298

`eq[1, A008742(val(A001160(n+1), 11))]`
-/

namespace A279000.P15172795061409647298
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008742 (SequenceMachineLib.valuation (A001160 (n + 1)).toNat 11)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A279000.P15172795061409647298

/-! ## A279000.P13448719141323862908

`eq[1, A026729(val(A001160(n+1), 11))]`
-/

namespace A279000.P13448719141323862908
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026729 (SequenceMachineLib.valuation (A001160 (n + 1)).toNat 11)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A279000.P13448719141323862908

/-! ## A279000.P4397784873153803728

`eq[1, A001222(val(A001160(n+1), 11)+3)]`
-/

namespace A279000.P4397784873153803728
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.valuation (A001160 (n + 1)).toNat 11 + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A279000.P4397784873153803728

/-! ## A279000.P10789133254096362486

`eq[2, A020639(val(A001160(n+1), 11)+2)]`
-/

namespace A279000.P10789133254096362486
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (SequenceMachineLib.valuation (A001160 (n + 1)).toNat 11 + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A279000.P10789133254096362486

/-! ## A279000.P12628250424126767455

`lt[A020639(val(A001160(n+1), 11)+6), 4]`
-/

namespace A279000.P12628250424126767455
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (SequenceMachineLib.valuation (A001160 (n + 1)).toNat 11 + 6)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A279000.P12628250424126767455

/-!
# A279001: Numbers of the form (11*h+j)*11^k-1 for h,k in N and j in {2,6,7,8,10}.

The programs for A279001, there is no canonical definition to state claims against.
-/

/-! ## A279001.P14145089719995306152

`comp[A279000(n+1)]`
-/

namespace A279001.P14145089719995306152
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279000 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A279001.P14145089719995306152

/-! ## A279001.P3673584673436826249

`eq[1, val(A001160(n+1), 11)]`
-/

namespace A279001.P3673584673436826249
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A001160 (n + 1)).toNat 11

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A279001.P3673584673436826249

/-! ## A279001.P16209580733992426438

`lt[0, A023532(val(A001160(n+1), 11))]`
-/

namespace A279001.P16209580733992426438
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023532 (SequenceMachineLib.valuation (A001160 (n + 1)).toNat 11)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A279001.P16209580733992426438

/-! ## A279001.P5465176552414051434

`lt[0, A025581(val(A001160(n+1), 11))]`
-/

namespace A279001.P5465176552414051434
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 (SequenceMachineLib.valuation (A001160 (n + 1)).toNat 11)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A279001.P5465176552414051434

/-! ## A279001.P1425264633955949970

`lt[A126930(val(A001160(n+1), 11)), 0]`
-/

namespace A279001.P1425264633955949970
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126930 (SequenceMachineLib.valuation (A001160 (n + 1)).toNat 11)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A279001.P1425264633955949970

/-! ## A279001.P9147720930485543955

`lt[1, A092392(val(A001160(n+1), 11))]`
-/

namespace A279001.P9147720930485543955
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092392 (SequenceMachineLib.valuation (A001160 (n + 1)).toNat 11)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A279001.P9147720930485543955

/-! ## A279001.P7404424371999648952

`lt[A126869(val(A001160(n+1), 11)), 1]`
-/

namespace A279001.P7404424371999648952
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126869 (SequenceMachineLib.valuation (A001160 (n + 1)).toNat 11)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A279001.P7404424371999648952

/-! ## A279001.P11944877258034550285

`lt[A237996(val(A001160(n+1), 11)), 1]`
-/

namespace A279001.P11944877258034550285
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237996 (SequenceMachineLib.valuation (A001160 (n + 1)).toNat 11)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A279001.P11944877258034550285

/-! ## A279001.P6695267442042014726

`lt[1, A084179(val(A001160(n+1), 11)+2)]`
-/

namespace A279001.P6695267442042014726
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084179 (SequenceMachineLib.valuation (A001160 (n + 1)).toNat 11 + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A279001.P6695267442042014726

/-! ## A279001.P2561143226582615573

`lt[2, A194875(val(A001160(n+1), 11)+1)]`
-/

namespace A279001.P2561143226582615573
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194875 (SequenceMachineLib.valuation (A001160 (n + 1)).toNat 11 + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A279001.P2561143226582615573

/-!
# A279002: The number AE_n of vertex permutations of rank n.

The programs for A279002, there is no canonical definition to state claims against.
-/

/-! ## A279002.P16729279821837786332

`A255062(A116601(n))+A150471(n)`
-/

namespace A279002.P16729279821837786332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255062 (A116601 n).toNat + A150471 n

end

end A279002.P16729279821837786332

/-! ## A279002.P9923853584399716396

`A123108(A151464(n+1)+A151412(n))`
-/

namespace A279002.P9923853584399716396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (A151464 (n + 1) + A151412 n).toNat

end

end A279002.P9923853584399716396

/-!
# A279004: Irregular triangle read by rows: generalized Catalan triangle C_3(n,k).

The programs for A279004, there is no canonical definition to state claims against.
-/

/-! ## A279004.P11959534734093470099

`A009766(n+3)-A130020(n+2)`
-/

namespace A279004.P11959534734093470099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009766 (n + 3) - A130020 (n + 2)

end

end A279004.P11959534734093470099

/-! ## A279004.P14894255796038746322

`A009766(n+3)-A059365(A061579(n+2))`
-/

namespace A279004.P14894255796038746322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009766 (n + 3) - A059365 (A061579 (n + 2)).toNat

end

end A279004.P14894255796038746322

/-! ## A279004.P7139976903972113989

`A130020(A007401(n+4))-A130020(n+2)`
-/

namespace A279004.P7139976903972113989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130020 (A007401 (n + 4)).toNat - A130020 (n + 2)

end

end A279004.P7139976903972113989

/-! ## A279004.P11342149430127732336

`A033184(A038722(n+4))-A059365(A038722(n+4))`
-/

namespace A279004.P11342149430127732336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033184 (A038722 (n + 4)).toNat - A059365 (A038722 (n + 4)).toNat

end

end A279004.P11342149430127732336

/-!
# A279006: Alternating Jacobsthal triangle read by rows (second version).

The programs for A279006, there is no canonical definition to state claims against.
-/

/-! ## A279006.P4196714888808861909

`A220074(∑[char[comp[∑[n]]]])`
-/

namespace A279006.P4196714888808861909
noncomputable section

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ x) n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220074 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A279006.P4196714888808861909

/-! ## A279006.P16871005168226051453

`∑[A220074(n)-char[∑[n+1]]]`
-/

namespace A279006.P16871005168226051453
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220074 n - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A279006.P16871005168226051453

/-! ## A279006.P11115490058594887250

`and(-1, A220074(A083920(n)))`
-/

namespace A279006.P11115490058594887250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A220074 (A083920 n).toNat)

end

end A279006.P11115490058594887250

/-! ## A279006.P4449190601662943153

`∑[A220074(n)]-A003056(n)`
-/

namespace A279006.P4449190601662943153
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220074 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A003056 n

end

end A279006.P4449190601662943153

/-! ## A279006.P16439999256462197153

`A173398(n+1)-A173402(n+1)`
-/

namespace A279006.P16439999256462197153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173398 (n + 1) - A173402 (n + 1)

end

end A279006.P16439999256462197153

/-! ## A279006.P2982621975310980929

`2*A173398(n+1)-A007318(n)`
-/

namespace A279006.P2982621975310980929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A173398 (n + 1) - A007318 n

end

end A279006.P2982621975310980929

/-! ## A279006.P5600911782790243825

`A007318(n)-2*A173402(n+1)`
-/

namespace A279006.P5600911782790243825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n - 2 * A173402 (n + 1)

end

end A279006.P5600911782790243825

/-! ## A279006.P11169631184831348640

`A112468(∑[2*n]%comp[∑[n]])`
-/

namespace A279006.P11169631184831348640
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112468 ((∑ j ∈ Finset.range (n + 1), f1 j) % SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

end

end A279006.P11169631184831348640

/-! ## A279006.P15816371602061186622

`A112468(∑[char[∑[n]]]²-n-1)`
-/

namespace A279006.P15816371602061186622
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112468 ((((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℤ) - (n : ℤ) - 1).toNat

end

end A279006.P15816371602061186622

/-! ## A279006.P3809233683261540278

`and(-1, A112468(A061579(n)))`
-/

namespace A279006.P3809233683261540278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A112468 (A061579 n).toNat)

end

end A279006.P3809233683261540278

/-! ## A279006.P9824181235177778128

`A113310(A099375(n)+1+n)`
-/

namespace A279006.P9824181235177778128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113310 (A099375 n + 1 + (n : ℤ)).toNat

end

end A279006.P9824181235177778128

/-! ## A279006.P14233060394190087418

`A007318(n)-A005843(A173402(n+1))`
-/

namespace A279006.P14233060394190087418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n - A005843 (A173402 (n + 1)).toNat

end

end A279006.P14233060394190087418

/-!
# A279007: Values tilde(B_s(2)) of q-analogs of Fibonacci numbers.

The programs for A279007, the canonical program `A279007.P212811534287601643` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A279007 has offset 0).

The definition of A279007 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A279007.P212811534287601643

`5*a(n-2)+2*a(n-3)` with `a(0)=0, a(1)=2, a(2)=1`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A279007

/-- `5*a(n-2)+2*a(n-3)` -/
def P212811534287601643.Spec : Prop :=
  ∀ n, (P212811534287601643.a n : ℤ) = A279007 n

theorem P212811534287601643.correct : P212811534287601643.Spec := by
  intro n
  simp only [A279007]

end A279007

/-! ## A279007.P15419559105531178383

`A000129(n-1)+4*a(n-2)` with `a(0)=0, a(1)=2`
-/

namespace A279007.P15419559105531178383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 2] fun n a =>
  A000129 (n - 1) + 4 * a (n - 2)

end

end A279007.P15419559105531178383

namespace A279007

/-- `A000129(n-1)+4*a(n-2)` -/
def P15419559105531178383.Spec : Prop :=
  ∀ n, P15419559105531178383.a n = A279007 n

end A279007

/-! ## A279007.P1504890961520863681

`ogf((2x+x^2)/(1-5x^2-2x^3))`
-/

namespace A279007.P1504890961520863681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 2, 1] [1, 0, -5, -2] n

end

end A279007.P1504890961520863681

namespace A279007

/-- `ogf((2x+x^2)/(1-5x^2-2x^3))` -/
def P1504890961520863681.Spec : Prop :=
  ∀ n, P1504890961520863681.a n = A279007 n

end A279007

/-! ## A279007.P8078860428445701027

`A135138(n+1)+A000129(n)-A135138(n)`
-/

namespace A279007.P8078860428445701027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135138 (n + 1) + (A000129 n - A135138 n)

end

end A279007.P8078860428445701027

namespace A279007

/-- `A135138(n+1)+A000129(n)-A135138(n)` -/
def P8078860428445701027.Spec : Prop :=
  ∀ n, P8078860428445701027.a n = A279007 n

end A279007

/-! ## A279007.P4135730311881334526

`A048654(n)+A135139(n)-A135139(n+1)`
-/

namespace A279007.P4135730311881334526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048654 n + (A135139 n - A135139 (n + 1))

end

end A279007.P4135730311881334526

namespace A279007

/-- `A048654(n)+A135139(n)-A135139(n+1)` -/
def P4135730311881334526.Spec : Prop :=
  ∀ n, P4135730311881334526.a n = A279007 n

end A279007

/-!
# A279011: Numbers k such that phi(6k) is either phi(6k-2) or phi(6k+2), where phi is Euler's totient function A000010.

The programs for A279011, there is no canonical definition to state claims against.
-/

/-! ## A279011.P5935898380053820242

`∪[A279183(n+1), A279184(n+1)]`
-/

namespace A279011.P5935898380053820242
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279183 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279184 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A279011.P5935898380053820242

/-!
# A279012: Expansion of Product_{k>=1} 1/(1 - x^(k*(5*k-3)/2)).

The programs for A279012, there is no canonical definition to state claims against.
-/

/-! ## A279012.P15801723788508861717

`A025769(A090702(n+2))`
-/

namespace A279012.P15801723788508861717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025769 (A090702 (n + 2)).toNat

end

end A279012.P15801723788508861717

/-! ## A279012.P10364853008305292045

`A133880(A053577(n+1)%A101246(n+1))`
-/

namespace A279012.P10364853008305292045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133880 (Int.tmod (A053577 (n + 1)) (A101246 (n + 1))).toNat

end

end A279012.P10364853008305292045

/-! ## A279012.P15376006314051086481

`A062153(A125950(2*n+1)+A081611(n+4))`
-/

namespace A279012.P15376006314051086481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062153 (A125950 (2 * n + 1) + A081611 (n + 4)).toNat

end

end A279012.P15376006314051086481

/-! ## A279012.P17307572157710547597

`A280951(round(n/sqrt(2))%A345913(2*(n+2)))`
-/

namespace A279012.P17307572157710547597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280951 (Int.tmod (SequenceMachineLib.roundAway ((n : ℝ) / Real.sqrt (2 : ℝ))) (A345913 (2 * (n + 2)))).toNat

end

end A279012.P17307572157710547597

/-!
# A279013: a(n) = Sum_{k=0..n} binomial(2*k,k)/(k+1)*binomial(2*n-1,n-k).

The programs for A279013, there is no canonical definition to state claims against.
-/

/-! ## A279013.P463759719868860157

`(A153294(n)+A007856(n+1))/2`
-/

namespace A279013.P463759719868860157
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A153294 n + A007856 (n + 1) : ℚ) / 2

end

end A279013.P463759719868860157

/-! ## A279013.P16946406868244490762

`A014682(A153294(n)+A007856(n+1))`
-/

namespace A279013.P16946406868244490762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A153294 n + A007856 (n + 1)).toNat

end

end A279013.P16946406868244490762

/-! ## A279013.P11480887415999244608

`A001281(A153294(n)+A007856(n+1))`
-/

namespace A279013.P11480887415999244608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A153294 n + A007856 (n + 1)).toNat

end

end A279013.P11480887415999244608

/-!
# A279014: a(n) = Sum_{k=0..n} fibonacci(k+1)*binomial(2*n-1,n-k).

The programs for A279014, the canonical program `A279014.P8513409595306119484` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A279014 has offset 0).

The definition of A279014 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 161 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A279014.P4345479967677397182

`A088218(n)+A054441(n)`
-/

namespace A279014.P4345479967677397182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088218 n + A054441 n

end

end A279014.P4345479967677397182

namespace A279014

/-- `A088218(n)+A054441(n)` -/
def P4345479967677397182.Spec : Prop :=
  ∀ n, P4345479967677397182.a n = A279014 n

end A279014

/-! ## A279014.P8513409595306119484

`A054441(n)+A001405(A004273(n))`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A279014

/-- `A054441(n)+A001405(A004273(n))` -/
def P8513409595306119484.Spec : Prop :=
  ∀ n, P8513409595306119484.a n = A279014 n

theorem P8513409595306119484.correct : P8513409595306119484.Spec := by
  intro n
  simp only [A279014]

end A279014

/-! ## A279014.P4488149748428356226

`(A165201(n)+A108080(n))/2`
-/

namespace A279014.P4488149748428356226
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A165201 n + A108080 n : ℚ) / 2

end

end A279014.P4488149748428356226

namespace A279014

/-- `(A165201(n)+A108080(n))/2` -/
def P4488149748428356226.Spec : Prop :=
  ∀ n, P4488149748428356226.a n = (A279014 n : ℚ)

end A279014

/-! ## A279014.P8946349452238495905

`A193923(∑[4*n])`
-/

namespace A279014.P8946349452238495905
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193923 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A279014.P8946349452238495905

namespace A279014

/-- `A193923(∑[4*n])` -/
def P8946349452238495905.Spec : Prop :=
  ∀ n, P8946349452238495905.a n = A279014 n

end A279014

/-! ## A279014.P6229402602350763837

`A193924(∑[4*n])`
-/

namespace A279014.P6229402602350763837
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193924 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A279014.P6229402602350763837

namespace A279014

/-- `A193924(∑[4*n])` -/
def P6229402602350763837.Spec : Prop :=
  ∀ n, P6229402602350763837.a n = A279014 n

end A279014

/-! ## A279014.P5130264218059025448

`A125171(A004277(n²)-1)`
-/

namespace A279014.P5130264218059025448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125171 (A004277 (n ^ 2) - 1).toNat

end

end A279014.P5130264218059025448

namespace A279014

/-- `A125171(A004277(n²)-1)` -/
def P5130264218059025448.Spec : Prop :=
  ∀ n, P5130264218059025448.a n = A279014 n

end A279014

/-! ## A279014.P8599374207277124886

`A125171(A061579(2*n²))`
-/

namespace A279014.P8599374207277124886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125171 (A061579 (2 * n ^ 2)).toNat

end

end A279014.P8599374207277124886

namespace A279014

/-- `A125171(A061579(2*n²))` -/
def P8599374207277124886.Spec : Prop :=
  ∀ n, P8599374207277124886.a n = A279014 n

end A279014

/-! ## A279014.P17137705524414652979

`record[gcd(A193923(n), A193924(n))]`
-/

namespace A279014.P17137705524414652979
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A193923 n) (A193924 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A279014.P17137705524414652979

namespace A279014

/-- `record[gcd(A193923(n), A193924(n))]` -/
def P17137705524414652979.Spec : Prop :=
  ∀ n, (P17137705524414652979.a n : ℤ) = A279014 n

end A279014

/-!
# A279017: a(n) = unreduced numerator in Sum_{k=1..n}(1/k^k).

The programs for A279017, there is no canonical definition to state claims against.
-/

/-! ## A279017.P1653036034998023217

`n^n*a(n-1)+A002109(n-1)` with `a(0)=0`
-/

namespace A279017.P1653036034998023217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (n ^ n : ℤ) * a (n - 1) + A002109 (n - 1)

end

end A279017.P1653036034998023217

/-! ## A279017.P9588471720414887528

`record[A023531(n+1)*A348014(n)]`
-/

namespace A279017.P9588471720414887528
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023531 (n + 1) * A348014 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A279017.P9588471720414887528

/-! ## A279017.P565189901517925066

`∏[A000312(n)]*A061463(n)/A061464(n)`
-/

namespace A279017.P565189901517925066
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000312 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((∏ j ∈ Finset.range (n + 1), f1 j) * A061463 n : ℤ) : ℚ) / (A061464 n : ℚ)

end

end A279017.P565189901517925066

/-!
# A279018: Number of 2 X 2 matrices having entries in {-n,...,0,..,n} and permanent=trace with no entry repeated.

The programs for A279018, there is no canonical definition to state claims against.
-/

/-! ## A279018.P11328022358254740890

`2*n*A211675(n!)`
-/

namespace A279018.P11328022358254740890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) * A211675 (Nat.factorial n)

end

end A279018.P11328022358254740890

/-! ## A279018.P8893284107114476522

`2*n*A102364(∏[abs(1-2*n)])`
-/

namespace A279018.P8893284107114476522
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (2 * n : ℤ)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) * A102364 (∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A279018.P8893284107114476522

/-! ## A279018.P13972741705086103867

`(lt[A000010(n+3), 5]+n-2)*2*n`
-/

namespace A279018.P13972741705086103867
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 3)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n : ℤ) + ((n : ℤ) - 2)) * (2 * n : ℤ)

end

end A279018.P13972741705086103867

/-!
# A279019: Least possible number of diagonals of simple convex polyhedron with n faces.

The programs for A279019, the canonical program `A279019.P2025257353750752592` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A279019 has offset 4).

The definition of A279019 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A279019.P2025257353750752592

`n*(n-1)`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A279019

/-- `n*(n-1)` -/
def P2025257353750752592.Spec : Prop :=
  ∀ n, P2025257353750752592.a n = A279019 (n + 4)

theorem P2025257353750752592.correct : P2025257353750752592.Spec := by
  intro n
  simp only [A279019, Nat.add_sub_cancel]

end A279019

/-!
# A279020: a(n) = unreduced numerator in Sum_{k=1..n} (-1)^(k-1)/k^k.

The programs for A279020, there is no canonical definition to state claims against.
-/

/-! ## A279020.P9248439666291359588

`n^n*a(n-1)+(-1)^(n-1)*A002109(n-1)` with `a(0)=0`
-/

namespace A279020.P9248439666291359588
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0] fun n a =>
  (n ^ n : ℚ) * a (n - 1) + (-1 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * (A002109 (n - 1) : ℚ)

end

end A279020.P9248439666291359588

/-!
# A279021: Triangle read by rows, giving the arithmetic progressions of prime-indexed primes in A278735.

The programs for A279021, there is no canonical definition to state claims against.
-/

/-! ## A279021.P10285941093092860845

`A000040(∑[a(n-1)^n])` with `a(0)=2, a(1)=0, a(2)=1, a(3)=0, a(4)=2, a(5)=2`
-/

namespace A279021.P10285941093092860845
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 0, 1, 0, 2, 2] fun n f1 =>
  f1 (n - 1) ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A279021.P10285941093092860845

/-! ## A279021.P17576109128472225613

`p?[A237717(n)+A080053(n+1)]`
-/

namespace A279021.P17576109128472225613
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237717 n + A080053 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A279021.P17576109128472225613

/-! ## A279021.P1237637998327594088

`p?[or(A088817(n+1), A210792(n+1))]`
-/

namespace A279021.P1237637998327594088
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A088817 (n + 1)) (A210792 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A279021.P1237637998327594088

/-!
# A279022: Greatest possible number of diagonals of a polyhedron having n edges.

The programs for A279022, there is no canonical definition to state claims against.
-/

/-! ## A279022.P10205142698963321615

`∑[A080036(n)]-A003056(A226253(n))`
-/

namespace A279022.P10205142698963321615
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080036 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A003056 (A226253 n).toNat

end

end A279022.P10205142698963321615

/-! ## A279022.P11830809304366337219

`A029057(2*n+1)-A034188(A075208(n+1))`
-/

namespace A279022.P11830809304366337219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029057 (2 * n + 1) - A034188 (A075208 (n + 1)).toNat

end

end A279022.P11830809304366337219

/-! ## A279022.P6293919930630867806

`∑[ceil(n/3)]-A001221(A002426(n))`
-/

namespace A279022.P6293919930630867806
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℚ) / 3⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A001221 (A002426 n).toNat

end

end A279022.P6293919930630867806

/-! ## A279022.P7975529783186834669

`A378266(n+2)+A353557(A328142(2*(n+2)))`
-/

namespace A279022.P7975529783186834669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378266 (n + 2) + A353557 (A328142 (2 * (n + 2))).toNat

end

end A279022.P7975529783186834669

/-! ## A279022.P7266754257083335230

`A034296(n+2)-A040443(A128284(3*n+1))`
-/

namespace A279022.P7266754257083335230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034296 (n + 2) - A040443 (A128284 (3 * n + 1)).toNat

end

end A279022.P7266754257083335230

/-!
# A279024: Number of extradivisors of n (m < n is an extradivisor of n if for some positive k < n, m | n | k^(n+1) + m and n | (n-k)^(n+1) + m).

The programs for A279024, there is no canonical definition to state claims against.
-/

/-! ## A279024.P2766626329240526948

`(A008619(n)%A329048(n))%A107067(A095081(n+1))`
-/

namespace A279024.P2766626329240526948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.tmod (A008619 n) (A329048 n)) (A107067 (A095081 (n + 1)).toNat)

end

end A279024.P2766626329240526948

/-! ## A279024.P14284077103495129843

`A000035((A008619(n)%A329048(n))^3)`
-/

namespace A279024.P14284077103495129843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (Int.tmod (A008619 n) (A329048 n) ^ 3).toNat

end

end A279024.P14284077103495129843

/-! ## A279024.P2412063804604006451

`A000035(A135301(n+1)%A187829(n+1))`
-/

namespace A279024.P2412063804604006451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (Int.tmod (A135301 (n + 1)) (A187829 (n + 1))).toNat

end

end A279024.P2412063804604006451

/-! ## A279024.P11851997145546455872

`A193759(gcd(A161680(n), A321237(n+1)))`
-/

namespace A279024.P11851997145546455872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193759 (Int.gcd (A161680 n) (A321237 (n + 1)))

end

end A279024.P11851997145546455872

/-! ## A279024.P16260667415476133851

`A053867(A271150(n))`
-/

namespace A279024.P16260667415476133851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053867 (A271150 n).toNat

end

end A279024.P16260667415476133851

/-!
# A279026: Size of blocks of 1's in the second column of Catalan numbers written in binary and left-aligned.

The programs for A279026, there is no canonical definition to state claims against.
-/

/-! ## A279026.P922993390081041431

`A000071(n+1)+A006530(A010551(n))`
-/

namespace A279026.P922993390081041431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000071 (n + 1) + A006530 (A010551 n).toNat

end

end A279026.P922993390081041431

/-! ## A279026.P11425369625937045145

`A000071(n+1)+A006530(∏[A065033(n)])`
-/

namespace A279026.P11425369625937045145
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000071 (n + 1) + A006530 (∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A279026.P11425369625937045145

/-! ## A279026.P3457426726911840481

`A000071(n+1)+A006530(∏[A131411(n+1)])`
-/

namespace A279026.P3457426726911840481
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131411 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000071 (n + 1) + A006530 (∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A279026.P3457426726911840481

/-! ## A279026.P15436835694686873196

`A000071(n+1)+A006530(A189102(n+1))`
-/

namespace A279026.P15436835694686873196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000071 (n + 1) + A006530 (A189102 (n + 1)).toNat

end

end A279026.P15436835694686873196

/-! ## A279026.P12542357513863799527

`A318362(A059867(n+1))+A000071(n+1)`
-/

namespace A279026.P12542357513863799527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318362 (A059867 (n + 1)).toNat + A000071 (n + 1)

end

end A279026.P12542357513863799527

/-!
# A279027: a(n) = number of primes of the form 4k + 3 such that 2n - 4k - 3 is prime.

The programs for A279027, there is no canonical definition to state claims against.
-/

/-! ## A279027.P11069698678541447125

`A002372(n+1)-A280667(n+1)`
-/

namespace A279027.P11069698678541447125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002372 (n + 1) - A280667 (n + 1)

end

end A279027.P11069698678541447125

/-! ## A279027.P209877144313002957

`A035026(n+1)-(A280667(n+1)+A063524(n))`
-/

namespace A279027.P209877144313002957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035026 (n + 1) - (A280667 (n + 1) + A063524 n)

end

end A279027.P209877144313002957

/-! ## A279027.P6266408118308549866

`A035026(A140139(n+1)-n)-A280667(n+1)`
-/

namespace A279027.P6266408118308549866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035026 (A140139 (n + 1) - (n : ℤ)).toNat - A280667 (n + 1)

end

end A279027.P6266408118308549866

/-! ## A279027.P18390107097046644567

`A035026(A134323(n+1)²+n)-A280667(n+1)`
-/

namespace A279027.P18390107097046644567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035026 (A134323 (n + 1) ^ 2 + (n : ℤ)).toNat - A280667 (n + 1)

end

end A279027.P18390107097046644567

/-! ## A279027.P11438874891245187042

`A002372(n+1)-(A061357(n+1)-A286044(A258721(n)-2))`
-/

namespace A279027.P11438874891245187042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002372 (n + 1) - (A061357 (n + 1) - A286044 (A258721 n - 2).toNat)

end

end A279027.P11438874891245187042

/-!
# A279028: Binary representation of the x-axis, from the left edge to the origin, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 129", based on the 5-celled von Neumann neighborhood.

The programs for A279028, the canonical program `A279028.P3494808504256830670` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A279028 has offset 0).

The definition of A279028 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A279028.P9032791465963888494

`101*a(n-2)-100*a(n-4)` with `a(0)=1, a(1)=0, a(2)=101, a(3)=0`
-/

namespace A279028.P9032791465963888494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 101, 0] fun n a =>
  101 * a (n - 2) - 100 * a (n - 4)

end

end A279028.P9032791465963888494

namespace A279028

/-- `101*a(n-2)-100*a(n-4)` -/
def P9032791465963888494.Spec : Prop :=
  ∀ n, P9032791465963888494.a n = A279028 n

end A279028

/-! ## A279028.P4219272476931054045

`A282088(n+2)`
-/

namespace A279028.P4219272476931054045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282088 (n + 2)

end

end A279028.P4219272476931054045

namespace A279028

/-- `A282088(n+2)` -/
def P4219272476931054045.Spec : Prop :=
  ∀ n, P4219272476931054045.a n = A279028 n

end A279028

/-! ## A279028.P11941569808088807829

`log2(gcd(2, n))*A266508(n)`
-/

namespace A279028.P11941569808088807829
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (Nat.gcd 2 n : ℝ) * (A266508 n : ℝ)

end

end A279028.P11941569808088807829

namespace A279028

/-- `log2(gcd(2, n))*A266508(n)` -/
def P11941569808088807829.Spec : Prop :=
  ∀ n, P11941569808088807829.a n = (A279028 n : ℝ)

end A279028

/-! ## A279028.P9802467291926476679

`char[2*n]*A279053(n)`
-/

namespace A279028.P9802467291926476679
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) * A279053 n

end

end A279028.P9802467291926476679

namespace A279028

/-- `char[2*n]*A279053(n)` -/
def P9802467291926476679.Spec : Prop :=
  ∀ n, P9802467291926476679.a n = A279028 n

end A279028

/-! ## A279028.P16237451908615097386

`char[2*n]*A283641(n)`
-/

namespace A279028.P16237451908615097386
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) * A283641 n

end

end A279028.P16237451908615097386

namespace A279028

/-- `char[2*n]*A283641(n)` -/
def P16237451908615097386.Spec : Prop :=
  ∀ n, P16237451908615097386.a n = A279028 n

end A279028

/-! ## A279028.P11162785249284878910

`xor(char[2*(n+1)], A282142(n))`
-/

namespace A279028.P11162785249284878910
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A282142 n)

end

end A279028.P11162785249284878910

namespace A279028

/-- `xor(char[2*(n+1)], A282142(n))` -/
def P11162785249284878910.Spec : Prop :=
  ∀ n, P11162785249284878910.a n = A279028 n

end A279028

/-! ## A279028.P15099726389666829720

`(A109613(n)-n)*∑[10^n*char[2*n]]`
-/

namespace A279028.P15099726389666829720
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10 ^ n * (if ∃ j, f2 j = n then 1 else 0)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A109613 n - (n : ℤ)) * ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A279028.P15099726389666829720

namespace A279028

/-- `(A109613(n)-n)*∑[10^n*char[2*n]]` -/
def P15099726389666829720.Spec : Prop :=
  ∀ n, P15099726389666829720.a n = A279028 n

end A279028

/-! ## A279028.P3494808504256830670

`lcm(A056594(n), A266508(n))`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A279028

/-- `lcm(A056594(n), A266508(n))` -/
def P3494808504256830670.Spec : Prop :=
  ∀ n, (P3494808504256830670.a n : ℤ) = A279028 n

theorem P3494808504256830670.correct : P3494808504256830670.Spec := by
  intro n
  simp only [A279028]

end A279028

/-! ## A279028.P319488756844637426

`A056830(xor(n, A093178(n)))`
-/

namespace A279028.P319488756844637426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056830 (Int.xor (n : ℤ) (A093178 n)).toNat

end

end A279028.P319488756844637426

namespace A279028

/-- `A056830(xor(n, A093178(n)))` -/
def P319488756844637426.Spec : Prop :=
  ∀ n, P319488756844637426.a n = A279028 n

end A279028

/-! ## A279028.P14085127109358155031

`A056830(Δ[A001057(n)²])`
-/

namespace A279028.P14085127109358155031
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056830 (f1 (n + 1) - f1 n).toNat

end

end A279028.P14085127109358155031

namespace A279028

/-- `A056830(Δ[A001057(n)²])` -/
def P14085127109358155031.Spec : Prop :=
  ∀ n, P14085127109358155031.a n = A279028 n

end A279028

/-! ## A279028.P5761027561757287335

`A056830(Δ[A110654(n)²])`
-/

namespace A279028.P5761027561757287335
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056830 (f1 (n + 1) - f1 n).toNat

end

end A279028.P5761027561757287335

namespace A279028

/-- `A056830(Δ[A110654(n)²])` -/
def P5761027561757287335.Spec : Prop :=
  ∀ n, P5761027561757287335.a n = A279028 n

end A279028

/-! ## A279028.P7369636519795165508

`A056594(n²)*A266508(n)`
-/

namespace A279028.P7369636519795165508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056594 (n ^ 2) * A266508 n

end

end A279028.P7369636519795165508

namespace A279028

/-- `A056594(n²)*A266508(n)` -/
def P7369636519795165508.Spec : Prop :=
  ∀ n, P7369636519795165508.a n = A279028 n

end A279028

/-! ## A279028.P10955205017444651372

`A056830((n+1)*A059841(n))`
-/

namespace A279028.P10955205017444651372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056830 ((n + 1 : ℤ) * A059841 n).toNat

end

end A279028.P10955205017444651372

namespace A279028

/-- `A056830((n+1)*A059841(n))` -/
def P10955205017444651372.Spec : Prop :=
  ∀ n, P10955205017444651372.a n = A279028 n

end A279028

/-! ## A279028.P3678999252906276773

`A282797(n)-A282797(or(1, n))`
-/

namespace A279028.P3678999252906276773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282797 n - A282797 (Nat.lor 1 n)

end

end A279028.P3678999252906276773

namespace A279028

/-- `A282797(n)-A282797(or(1, n))` -/
def P3678999252906276773.Spec : Prop :=
  ∀ n, P3678999252906276773.a n = A279028 n

end A279028

/-! ## A279028.P11558302604434290351

`A266508(n)%A266508(or(1, n))`
-/

namespace A279028.P11558302604434290351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A266508 n) (A266508 (Nat.lor 1 n))

end

end A279028.P11558302604434290351

namespace A279028

/-- `A266508(n)%A266508(or(1, n))` -/
def P11558302604434290351.Spec : Prop :=
  ∀ n, P11558302604434290351.a n = A279028 n

end A279028

/-! ## A279028.P2992126508339472520

`A283641(n)%A283641(or(1, n))`
-/

namespace A279028.P2992126508339472520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A283641 n) (A283641 (Nat.lor 1 n))

end

end A279028.P2992126508339472520

namespace A279028

/-- `A283641(n)%A283641(or(1, n))` -/
def P2992126508339472520.Spec : Prop :=
  ∀ n, P2992126508339472520.a n = A279028 n

end A279028

/-! ## A279028.P15131909849026976178

`A056594(n²)*A056830(n+1)`
-/

namespace A279028.P15131909849026976178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056594 (n ^ 2) * A056830 (n + 1)

end

end A279028.P15131909849026976178

namespace A279028

/-- `A056594(n²)*A056830(n+1)` -/
def P15131909849026976178.Spec : Prop :=
  ∀ n, P15131909849026976178.a n = A279028 n

end A279028

/-! ## A279028.P1496472875561968677

`Δ[A110654(n)]*A056830(n+1)`
-/

namespace A279028.P1496472875561968677
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A056830 (n + 1)

end

end A279028.P1496472875561968677

namespace A279028

/-- `Δ[A110654(n)]*A056830(n+1)` -/
def P1496472875561968677.Spec : Prop :=
  ∀ n, P1496472875561968677.a n = A279028 n

end A279028

/-! ## A279028.P6400650840502965280

`A056830((n+1)*A000035(n+1))`
-/

namespace A279028.P6400650840502965280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056830 ((n + 1 : ℤ) * A000035 (n + 1)).toNat

end

end A279028.P6400650840502965280

namespace A279028

/-- `A056830((n+1)*A000035(n+1))` -/
def P6400650840502965280.Spec : Prop :=
  ∀ n, P6400650840502965280.a n = A279028 n

end A279028

/-! ## A279028.P18196863156529680481

`(2-A000034(n))*A056830(n+1)`
-/

namespace A279028.P18196863156529680481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A000034 n) * A056830 (n + 1)

end

end A279028.P18196863156529680481

namespace A279028

/-- `(2-A000034(n))*A056830(n+1)` -/
def P18196863156529680481.Spec : Prop :=
  ∀ n, P18196863156529680481.a n = A279028 n

end A279028

/-!
# A279029: Numbers k with the property that the smallest and the largest Dyck path of the symmetric representation of sigma(k) do not share line segments.

The programs for A279029, there is no canonical definition to state claims against.
-/

/-! ## A279029.P7301338280023885579

`∪[A174973(n+1), A262259(n+1)]`
-/

namespace A279029.P7301338280023885579
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174973 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262259 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A279029.P7301338280023885579

/-! ## A279029.P4806171196737779162

`filter[A196149(n+1), A379968(#)]`
-/

namespace A279029.P4806171196737779162
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196149 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A379968 (f1 j).toNat = 1) n)

end

end A279029.P4806171196737779162

/-! ## A279029.P10446654617319437293

`eq[1, A379968(n+1)]+1`
-/

namespace A279029.P10446654617319437293
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379968 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A279029.P10446654617319437293

/-! ## A279029.P10733524940489051332

`filter[A363227(n+1), A379968(#)]`
-/

namespace A279029.P10733524940489051332
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363227 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A379968 (f1 j).toNat = 1) n)

end

end A279029.P10733524940489051332

/-! ## A279029.P7462155906177425324

`filter[A175495(n+1), A379968(#)]`
-/

namespace A279029.P7462155906177425324
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175495 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A379968 (f1 j).toNat = 1) n)

end

end A279029.P7462155906177425324

/-! ## A279029.P7973058864041495119

`filter[A094229(n+1), A379968(#)]`
-/

namespace A279029.P7973058864041495119
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094229 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A379968 (f1 j).toNat = 1) n)

end

end A279029.P7973058864041495119

/-! ## A279029.P6376440932208185171

`filter[A265999(n+1), A379968(#)]`
-/

namespace A279029.P6376440932208185171
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265999 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A379968 (f1 j).toNat = 1) n)

end

end A279029.P6376440932208185171

/-! ## A279029.P2383635105900011741

`filter[A004279(n), A379968(#)]`
-/

namespace A279029.P2383635105900011741
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004279 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A379968 (f1 j).toNat = 1) n)

end

end A279029.P2383635105900011741

/-! ## A279029.P11134392441671417790

`filter[A004271(n+1), A379968(#)]`
-/

namespace A279029.P11134392441671417790
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004271 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A379968 (f1 j).toNat = 1) n)

end

end A279029.P11134392441671417790

/-! ## A279029.P9182883341979116776

`filter[A004272(n+1), A379968(#)]`
-/

namespace A279029.P9182883341979116776
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004272 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A379968 (f1 j).toNat = 1) n)

end

end A279029.P9182883341979116776

/-! ## A279029.P915988880485750947

`filter[A004278(n+1), A379968(#)]`
-/

namespace A279029.P915988880485750947
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004278 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A379968 (f1 j).toNat = 1) n)

end

end A279029.P915988880485750947

/-! ## A279029.P3687409324646005961

`filter[A257282(n+2), A379968(#)]`
-/

namespace A279029.P3687409324646005961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257282 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A379968 (f1 j).toNat = 1) n)

end

end A279029.P3687409324646005961

/-! ## A279029.P13295403569105070048

`filter[A225850(n+1), A379968(#)]`
-/

namespace A279029.P13295403569105070048
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225850 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A379968 (f1 j).toNat = 1) n)

end

end A279029.P13295403569105070048

/-! ## A279029.P12893630583222730978

`filter[A246352(n+1), A379968(#)]`
-/

namespace A279029.P12893630583222730978
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246352 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A379968 (f1 j).toNat = 1) n)

end

end A279029.P12893630583222730978

/-! ## A279029.P5460522677605720632

`filter[A278373(n+2), A379968(#)]`
-/

namespace A279029.P5460522677605720632
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278373 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A379968 (f1 j).toNat = 1) n)

end

end A279029.P5460522677605720632

/-! ## A279029.P10689349943110740457

`filter[A030173(n+1), A379968(#)]`
-/

namespace A279029.P10689349943110740457
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030173 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A379968 (f1 j).toNat = 1) n)

end

end A279029.P10689349943110740457

/-! ## A279029.P13858525049057793854

`filter[A285126(n+1), A379968(#)]`
-/

namespace A279029.P13858525049057793854
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285126 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A379968 (f1 j).toNat = 1) n)

end

end A279029.P13858525049057793854

/-! ## A279029.P8004488054181877436

`filter[A276347(n+1), A379968(#)]`
-/

namespace A279029.P8004488054181877436
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276347 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A379968 (f1 j).toNat = 1) n)

end

end A279029.P8004488054181877436

/-! ## A279029.P10399792778947538907

`filter[A319371(n+1), A379968(#)]`
-/

namespace A279029.P10399792778947538907
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319371 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A379968 (f1 j).toNat = 1) n)

end

end A279029.P10399792778947538907

/-! ## A279029.P6646544663494079985

`filter[A047420(n+2), A379968(#)]`
-/

namespace A279029.P6646544663494079985
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047420 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A379968 (f1 j).toNat = 1) n)

end

end A279029.P6646544663494079985

/-!
# A279030: Decimal representation of the x-axis, from the left edge to the origin, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 129", based on the 5-celled von Neumann neighborhood.

The programs for A279030, the canonical program `A279030.P5339452238955472153` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A279030 has offset 0).

The definition of A279030 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A279030.P5339452238955472153

`ogf(1/(1-5x^2+4x^4))`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A279030

/-- `ogf(1/(1-5x^2+4x^4))` -/
def P5339452238955472153.Spec : Prop :=
  ∀ n, P5339452238955472153.a n = A279030 n

theorem P5339452238955472153.correct : P5339452238955472153.Spec := by
  intro n
  simp only [A279030]

end A279030

/-! ## A279030.P12653962671113675453

`floor(gcd(2, n)^(n+2)/3)`
-/

namespace A279030.P12653962671113675453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.gcd 2 n ^ (n + 2) : ℚ) / 3⌋

end

end A279030.P12653962671113675453

namespace A279030

/-- `floor(gcd(2, n)^(n+2)/3)` -/
def P12653962671113675453.Spec : Prop :=
  ∀ n, P12653962671113675453.a n = A279030 n

end A279030

/-! ## A279030.P12144499097248280304

`∑[or(-a(n-1), 2^n)]` with `a(0)=1`
-/

namespace A279030.P12144499097248280304
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  Int.lor (-f1 (n - 1)) (2 ^ n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A279030.P12144499097248280304

namespace A279030

/-- `∑[or(-a(n-1), 2^n)]` -/
def P12144499097248280304.Spec : Prop :=
  ∀ n, P12144499097248280304.a n = A279030 n

end A279030

/-! ## A279030.P11040731654884579650

`floor(∑[4*a(n-2)]/3)` with `a(0)=4, a(1)=-4`
-/

namespace A279030.P11040731654884579650
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [4, -4] fun n f1 =>
  4 * f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 3⌋

end

end A279030.P11040731654884579650

namespace A279030

/-- `floor(∑[4*a(n-2)]/3)` -/
def P11040731654884579650.Spec : Prop :=
  ∀ n, P11040731654884579650.a n = A279030 n

end A279030

/-! ## A279030.P4151685958828816460

`a(n%2)+4*a(n-2)` with `a(0)=1, a(1)=0`
-/

namespace A279030.P4151685958828816460
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 0] fun n a =>
  a (n % 2) + 4 * a (n - 2)

end

end A279030.P4151685958828816460

namespace A279030

/-- `a(n%2)+4*a(n-2)` -/
def P4151685958828816460.Spec : Prop :=
  ∀ n, (P4151685958828816460.a n : ℤ) = A279030 n

end A279030

/-! ## A279030.P10238754295561536962

`or(4*a(n-2), a(n-2))` with `a(0)=1, a(1)=0`
-/

namespace A279030.P10238754295561536962
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 0] fun n a =>
  Nat.lor (4 * a (n - 2)) (a (n - 2))

end

end A279030.P10238754295561536962

namespace A279030

/-- `or(4*a(n-2), a(n-2))` -/
def P10238754295561536962.Spec : Prop :=
  ∀ n, (P10238754295561536962.a n : ℤ) = A279030 n

end A279030

/-! ## A279030.P9439516086774975829

`or(lcm(4, a(n-2)), a(n-2))` with `a(0)=1, a(1)=0`
-/

namespace A279030.P9439516086774975829
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 0] fun n a =>
  Nat.lor (Nat.lcm 4 (a (n - 2))) (a (n - 2))

end

end A279030.P9439516086774975829

namespace A279030

/-- `or(lcm(4, a(n-2)), a(n-2))` -/
def P9439516086774975829.Spec : Prop :=
  ∀ n, (P9439516086774975829.a n : ℤ) = A279030 n

end A279030

/-! ## A279030.P16438895535792667559

`4*a(n-2)-(1-n)%2` with `a(0)=1, a(1)=0`
-/

namespace A279030.P16438895535792667559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  4 * a (n - 2) - Int.tmod (1 - (n : ℤ)) 2

end

end A279030.P16438895535792667559

namespace A279030

/-- `4*a(n-2)-(1-n)%2` -/
def P16438895535792667559.Spec : Prop :=
  ∀ n, P16438895535792667559.a n = A279030 n

end A279030

/-! ## A279030.P9926853954129990358

`∑[4*a(n-2)]-a(n-1)` with `a(0)=1, a(1)=0`
-/

namespace A279030.P9926853954129990358
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 0] fun n f1 =>
  4 * f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - a (n - 1)

end

end A279030.P9926853954129990358

namespace A279030

/-- `∑[4*a(n-2)]-a(n-1)` -/
def P9926853954129990358.Spec : Prop :=
  ∀ n, P9926853954129990358.a n = A279030 n

end A279030

/-! ## A279030.P1190324888890534370

`floor(a(n-2)+2^(n-a(n-1)))` with `a(0)=1, a(1)=0`
-/

namespace A279030.P1190324888890534370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  ⌊(a (n - 2) : ℚ) + (2 : ℚ) ^ ((n : ℤ) - a (n - 1) : ℤ)⌋

end

end A279030.P1190324888890534370

namespace A279030

/-- `floor(a(n-2)+2^(n-a(n-1)))` -/
def P1190324888890534370.Spec : Prop :=
  ∀ n, P1190324888890534370.a n = A279030 n

end A279030

/-! ## A279030.P7514577041909863535

`5*a(n-2)-4*a(n-4)` with `a(0)=1, a(1)=0, a(2)=5, a(3)=0`
-/

namespace A279030.P7514577041909863535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 5, 0] fun n a =>
  5 * a (n - 2) - 4 * a (n - 4)

end

end A279030.P7514577041909863535

namespace A279030

/-- `5*a(n-2)-4*a(n-4)` -/
def P7514577041909863535.Spec : Prop :=
  ∀ n, P7514577041909863535.a n = A279030 n

end A279030

/-! ## A279030.P5625730034238396616

`A282577(n+2)`
-/

namespace A279030.P5625730034238396616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282577 (n + 2)

end

end A279030.P5625730034238396616

namespace A279030

/-- `A282577(n+2)` -/
def P5625730034238396616.Spec : Prop :=
  ∀ n, P5625730034238396616.a n = A279030 n

end A279030

/-! ## A279030.P9888916026177087627

`A277936(n+1)/3`
-/

namespace A279030.P9888916026177087627
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A277936 (n + 1) : ℚ) / 3

end

end A279030.P9888916026177087627

namespace A279030

/-- `A277936(n+1)/3` -/
def P9888916026177087627.Spec : Prop :=
  ∀ n, P9888916026177087627.a n = (A279030 n : ℚ)

end A279030

/-! ## A279030.P4505345460431780113

`(A166752(n+2)-1)/2`
-/

namespace A279030.P4505345460431780113
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A166752 (n + 2) - 1 : ℚ) / 2

end

end A279030.P4505345460431780113

namespace A279030

/-- `(A166752(n+2)-1)/2` -/
def P4505345460431780113.Spec : Prop :=
  ∀ n, P4505345460431780113.a n = (A279030 n : ℚ)

end A279030

/-! ## A279030.P10729703363560389184

`(A224783(n+2)-1)/3`
-/

namespace A279030.P10729703363560389184
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A224783 (n + 2) - 1 : ℚ) / 3

end

end A279030.P10729703363560389184

namespace A279030

/-- `(A224783(n+2)-1)/3` -/
def P10729703363560389184.Spec : Prop :=
  ∀ n, P10729703363560389184.a n = (A279030 n : ℚ)

end A279030

/-! ## A279030.P5035035746348460838

`(A059222(n+3)-1)/3`
-/

namespace A279030.P5035035746348460838
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A059222 (n + 3) - 1 : ℚ) / 3

end

end A279030.P5035035746348460838

namespace A279030

/-- `(A059222(n+3)-1)/3` -/
def P5035035746348460838.Spec : Prop :=
  ∀ n, P5035035746348460838.a n = (A279030 n : ℚ)

end A279030

/-! ## A279030.P17914979331865665555

`A052992(n)-a(n-1)` with `a(0)=1`
-/

namespace A279030.P17914979331865665555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A052992 n - a (n - 1)

end

end A279030.P17914979331865665555

namespace A279030

/-- `A052992(n)-a(n-1)` -/
def P17914979331865665555.Spec : Prop :=
  ∀ n, P17914979331865665555.a n = A279030 n

end A279030

/-! ## A279030.P16818342956410212331

`A002450(A027656(n))`
-/

namespace A279030.P16818342956410212331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002450 (A027656 n).toNat

end

end A279030.P16818342956410212331

namespace A279030

/-- `A002450(A027656(n))` -/
def P16818342956410212331.Spec : Prop :=
  ∀ n, P16818342956410212331.a n = A279030 n

end A279030

/-! ## A279030.P1544943773382055656

`A000975(A193356(n+1))`
-/

namespace A279030.P1544943773382055656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000975 (A193356 (n + 1)).toNat

end

end A279030.P1544943773382055656

namespace A279030

/-- `A000975(A193356(n+1))` -/
def P1544943773382055656.Spec : Prop :=
  ∀ n, P1544943773382055656.a n = A279030 n

end A279030

/-! ## A279030.P4716032371503403351

`A001045(2*A027656(n))`
-/

namespace A279030.P4716032371503403351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001045 (2 * A027656 n).toNat

end

end A279030.P4716032371503403351

namespace A279030

/-- `A001045(2*A027656(n))` -/
def P4716032371503403351.Spec : Prop :=
  ∀ n, P4716032371503403351.a n = A279030 n

end A279030

/-!
# A279031: Expansion of Product_{k>0} 1/(1 + x^k)^(k*3).

The programs for A279031, there is no canonical definition to state claims against.
-/

/-! ## A279031.P14952862038972675167

`A279928(∑[n+4]+2)`
-/

namespace A279031.P14952862038972675167
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279928 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A279031.P14952862038972675167

/-! ## A279031.P10630982907075105883

`A279928(eq[4, A004736(n+1)])+A000007(n+1)`
-/

namespace A279031.P10630982907075105883
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279928 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n) + A000007 (n + 1)

end

end A279031.P10630982907075105883

/-! ## A279031.P9099559470791779787

`A279928(eq[4, A004736(n+1)])+A000035(2*n)`
-/

namespace A279031.P9099559470791779787
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279928 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n) + A000035 (2 * n)

end

end A279031.P9099559470791779787

/-! ## A279031.P3563155834330753890

`A279928(eq[4, A004736(n+1)])/A125169(n)%2`
-/

namespace A279031.P3563155834330753890
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A279928 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n) : ℚ) / (Int.tmod (A125169 n) 2 : ℚ)

end

end A279031.P3563155834330753890

/-! ## A279031.P17981253580894994954

`A009001(2*n)²*A279928(eq[4, A004736(n+1)])`
-/

namespace A279031.P17981253580894994954
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009001 (2 * n) ^ 2 * A279928 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A279031.P17981253580894994954

/-! ## A279031.P2649954966460662701

`A014963(10*(n+1))*A279928(eq[4, A004736(n+1)])`
-/

namespace A279031.P2649954966460662701
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (10 * (n + 1)) * A279928 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A279031.P2649954966460662701

/-! ## A279031.P13215555387736665753

`A279928(eq[4, A004736(n+1)])/A001222(4-(-1)^n)`
-/

namespace A279031.P13215555387736665753
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A279928 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n) : ℚ) / (A001222 (4 - (-1) ^ n).toNat : ℚ)

end

end A279031.P13215555387736665753

/-! ## A279031.P2180749271900619136

`(-1)^A004458(2*n+1)*A279928(eq[4, A004736(n+1)])`
-/

namespace A279031.P2180749271900619136
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-1 : ℚ) ^ (A004458 (2 * n + 1) : ℤ) * (A279928 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n) : ℚ)

end

end A279031.P2180749271900619136

/-! ## A279031.P5938757612257603298

`(-1)^A247654((n+1)²)*A279928(eq[4, A004736(n+1)])`
-/

namespace A279031.P5938757612257603298
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-1 : ℚ) ^ (A247654 ((n + 1) ^ 2) : ℤ) * (A279928 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n) : ℚ)

end

end A279031.P5938757612257603298

/-!
# A279032: a(n) is the greatest integer such that binomial(a(n),n)*2^(1 - binomial(n,2)) < 1.

The programs for A279032, there is no canonical definition to state claims against.
-/

/-! ## A279032.P1831182138090943148

`A073188(floor((12^n+n)^(1/3))-1)`
-/

namespace A279032.P1831182138090943148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073188 (⌊(12 ^ n + n : ℝ) ^ ((1 : ℚ) / 3 : ℝ)⌋ - 1).toNat

end

end A279032.P1831182138090943148

/-! ## A279032.P4353481957770741722

`A003056(A240840(3*(n+1))-A353861(2*(n+1)))`
-/

namespace A279032.P4353481957770741722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A240840 (3 * (n + 1)) - A353861 (2 * (n + 1))).toNat

end

end A279032.P4353481957770741722

/-! ## A279032.P4859585471074757298

`A350174(A048482(n))`
-/

namespace A279032.P4859585471074757298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350174 (A048482 n).toNat

end

end A279032.P4859585471074757298

/-! ## A279032.P5697314443700849533

`A350174(A001815(n+1))`
-/

namespace A279032.P5697314443700849533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350174 (A001815 (n + 1)).toNat

end

end A279032.P5697314443700849533

/-! ## A279032.P13352087012445612531

`A350174(A003013(n+1))`
-/

namespace A279032.P13352087012445612531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350174 (A003013 (n + 1)).toNat

end

end A279032.P13352087012445612531

/-!
# A279034: The sum of the necessary diagonal movements from each square unit of an n X n+1 rectangle to reach any of the corners of the rectangle.

The programs for A279034, there is no canonical definition to state claims against.
-/

/-! ## A279034.P14857279059969464515

`A282470(n)+A225355(A170880(n))`
-/

namespace A279034.P14857279059969464515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282470 n + A225355 (A170880 n).toNat

end

end A279034.P14857279059969464515

/-! ## A279034.P4873518124522530942

`and(A211620(n), A313030(A017962(n)))`
-/

namespace A279034.P4873518124522530942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A211620 n) (A313030 (A017962 n).toNat)

end

end A279034.P4873518124522530942

/-!
# A279038: Triangle of multinomial coefficients read by rows (ordered by decreasing size of the greatest part).

The programs for A279038, there is no canonical definition to state claims against.
-/

/-! ## A279038.P7776001862565526151

`A124795(A129129(n))`
-/

namespace A279038.P7776001862565526151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124795 (A129129 n).toNat

end

end A279038.P7776001862565526151

/-! ## A279038.P6677372405826859452

`A036042(n)!/A341105(n)`
-/

namespace A279038.P6677372405826859452
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A036042 n).toNat : ℚ) / (A341105 n : ℚ)

end

end A279038.P6677372405826859452

/-! ## A279038.P9370869790127851908

`A036042(n)!/(A003963(A129129(n))*A333144(n))`
-/

namespace A279038.P9370869790127851908
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A036042 n).toNat : ℚ) / (A003963 (A129129 n).toNat * A333144 n : ℚ)

end

end A279038.P9370869790127851908

/-! ## A279038.P228800382430923864

`A124795(∏{e}[A063008(n), A030291(#)])`
-/

namespace A279038.P228800382430923864
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063008 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124795 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, A030291 (Nat.factorization (f1 n).natAbs p)).toNat

end

end A279038.P228800382430923864

/-! ## A279038.P15011827749088457216

`A178801(n)/A341105(n)`
-/

namespace A279038.P15011827749088457216
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A178801 n : ℚ) / (A341105 n : ℚ)

end

end A279038.P15011827749088457216

/-! ## A279038.P11317010767507003606

`A178801(n)/(A003963(A129129(n))*A333144(n))`
-/

namespace A279038.P11317010767507003606
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A178801 n : ℚ) / (A003963 (A129129 n).toNat * A333144 n : ℚ)

end

end A279038.P11317010767507003606

/-!
# A279040: Even numbers 2k such that the smallest prime p satisfying p+q=2k (q prime) is greater than or equal to sqrt(k).

The programs for A279040, there is no canonical definition to state claims against.
-/

/-! ## A279040.P17738857180974107673

`record[A035026(A225634(n)+A054683(n+5))]`
-/

namespace A279040.P17738857180974107673
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035026 (A225634 n + A054683 (n + 5)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A279040.P17738857180974107673

/-! ## A279040.P16770429639428493374

`lt[A335503(A195161(3*n+1)), ∑[n*(-1)^n]]`
-/

namespace A279040.P16770429639428493374
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335503 (A195161 (3 * n + 1)).toNat

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (-1) ^ n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A279040.P16770429639428493374

/-! ## A279040.P17319786041026611158

`2*lt[A114280(3*n), n]`
-/

namespace A279040.P17319786041026611158
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114280 (3 * n)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A279040.P17319786041026611158

/-! ## A279040.P774851351580409262

`A004277(lt[A114280(3*n), n])`
-/

namespace A279040.P774851351580409262
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114280 (3 * n)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A279040.P774851351580409262

/-! ## A279040.P11806977146540028499

`∑[A234398(A310329(n+4))]+2`
-/

namespace A279040.P11806977146540028499
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234398 (A310329 (n + 4)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2

end

end A279040.P11806977146540028499

/-!
# A279041: Expansion of Product_{k>=1} 1/(1 - x^(k*(3*k-2))).

The programs for A279041, there is no canonical definition to state claims against.
-/

/-! ## A279041.P9033339854580433225

`A280951(A171975(n+1))%A375057(n+1)`
-/

namespace A279041.P9033339854580433225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A280951 (A171975 (n + 1)).toNat) (A375057 (n + 1))

end

end A279041.P9033339854580433225

/-! ## A279041.P11992966483659237405

`A280951(A171975(n+1)%A196250(n+1))`
-/

namespace A279041.P11992966483659237405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280951 (Int.tmod (A171975 (n + 1)) (A196250 (n + 1))).toNat

end

end A279041.P11992966483659237405

/-! ## A279041.P17630520966498095130

`A001221(A327347(n+1))*A280951(A171975(n+1))`
-/

namespace A279041.P17630520966498095130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A327347 (n + 1)).toNat * A280951 (A171975 (n + 1)).toNat

end

end A279041.P17630520966498095130

/-! ## A279041.P1834000430196401979

`A280951(A171975(n+1))+A010051(A057344(n+1))`
-/

namespace A279041.P1834000430196401979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280951 (A171975 (n + 1)).toNat + A010051 (A057344 (n + 1)).toNat

end

end A279041.P1834000430196401979

/-! ## A279041.P592449111777152006

`A280951(A171975(n+1))+A010051(A028644(n))`
-/

namespace A279041.P592449111777152006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280951 (A171975 (n + 1)).toNat + A010051 (A028644 n).toNat

end

end A279041.P592449111777152006

/-!
# A279043: Numbers k such that 3*k+1 and 4*k+1 are both triangular numbers (A000217).

The programs for A279043, there is no canonical definition to state claims against.
-/

/-! ## A279043.P6795213936911726635

`3*A200998(n+1)`
-/

namespace A279043.P6795213936911726635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A200998 (n + 1)

end

end A279043.P6795213936911726635

/-! ## A279043.P15363211785512170426

`Δ[3*∑[A200998(n)]]`
-/

namespace A279043.P15363211785512170426
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200998 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A279043.P15363211785512170426

/-! ## A279043.P13404912419154439120

`floor(A006060(n+2)/4)`
-/

namespace A279043.P13404912419154439120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A006060 (n + 2) : ℚ) / 4⌋

end

end A279043.P13404912419154439120

/-! ## A279043.P16605966732826201479

`∑[Δ[A006060(n+1)]/4]`
-/

namespace A279043.P16605966732826201479
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006060 (n + 1)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n : ℚ) / 4

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A279043.P16605966732826201479

/-! ## A279043.P4663738779300036487

`6*C(A156712(n+2), 2)/2`
-/

namespace A279043.P4663738779300036487
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (6 * Nat.choose (A156712 (n + 2)).toNat 2 : ℚ) / 2

end

end A279043.P4663738779300036487

/-!
# A279044: Irregular triangular array: T(n,i) = number of partitions of n having crossover part k; see Comments.

The programs for A279044, there is no canonical definition to state claims against.
-/

/-! ## A279044.P6175196702067129251

`A002033(∑{e}[A213925(n+1)-A022812(n), #])`
-/

namespace A279044.P6175196702067129251
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213925 (n + 1) - A022812 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002033 (∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p)

end

end A279044.P6175196702067129251

/-! ## A279044.P16428315559292912297

`A030547(A209240(n))`
-/

namespace A279044.P16428315559292912297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030547 (A209240 n).toNat

end

end A279044.P16428315559292912297

/-! ## A279044.P4182576763047261631

`A072491(A166973(n+2))`
-/

namespace A279044.P4182576763047261631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072491 (A166973 (n + 2)).toNat

end

end A279044.P4182576763047261631

/-! ## A279044.P8685219771420199525

`A308964(A206306(n+1)+1)`
-/

namespace A279044.P8685219771420199525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308964 (A206306 (n + 1) + 1).toNat

end

end A279044.P8685219771420199525

/-! ## A279044.P1849001757983205326

`A001221((2*A263284(n+1))²)`
-/

namespace A279044.P1849001757983205326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 ((2 * A263284 (n + 1)) ^ 2).toNat

end

end A279044.P1849001757983205326

/-!
# A279045: Number of pairs of vertices that share no common neighbor summed over all simple labeled graphs on n nodes.

The programs for A279045, the canonical program `A279045.P7495363207099509798` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A279045 has offset 1).

The definition of A279045 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A279045.P7495363207099509798

`2^C(n+1, 2)*C(n+1, 2)*(1-(1/2)²)^(n-1)`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A279045

/-- `2^C(n+1, 2)*C(n+1, 2)*(1-(1/2)²)^(n-1)` -/
def P7495363207099509798.Spec : Prop :=
  ∀ n, P7495363207099509798.a n = (A279045 (n + 1) : ℚ)

end A279045

/-! ## A279045.P17459525362693852225

`∑[n]*∏[∑[A122391(n)]]`
-/

namespace A279045.P17459525362693852225
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122391 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * (∏ j ∈ Finset.range (n + 1), f2 j)

end

end A279045.P17459525362693852225

namespace A279045

/-- `∑[n]*∏[∑[A122391(n)]]` -/
def P17459525362693852225.Spec : Prop :=
  ∀ n, P17459525362693852225.a n = A279045 (n + 1)

end A279045

/-! ## A279045.P11530407733989442567

`∑[n]*∏[A098011(n+2)]`
-/

namespace A279045.P11530407733989442567
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098011 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * (∏ j ∈ Finset.range (n + 1), f2 j)

end

end A279045.P11530407733989442567

namespace A279045

/-- `∑[n]*∏[A098011(n+2)]` -/
def P11530407733989442567.Spec : Prop :=
  ∀ n, P11530407733989442567.a n = A279045 (n + 1)

end A279045

/-! ## A279045.P4316848222643609739

`(n²+n)*∏[A122391(n+1)]`
-/

namespace A279045.P4316848222643609739
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122391 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 + n : ℤ) * (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A279045.P4316848222643609739

namespace A279045

/-- `(n²+n)*∏[A122391(n+1)]` -/
def P4316848222643609739.Spec : Prop :=
  ∀ n, P4316848222643609739.a n = A279045 (n + 1)

end A279045

/-! ## A279045.P16638363427394272393

`∏[A098011(n+2)]*A000217(n)`
-/

namespace A279045.P16638363427394272393
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098011 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∏ j ∈ Finset.range (n + 1), f1 j) * A000217 n

end

end A279045.P16638363427394272393

namespace A279045

/-- `∏[A098011(n+2)]*A000217(n)` -/
def P16638363427394272393.Spec : Prop :=
  ∀ n, P16638363427394272393.a n = A279045 (n + 1)

end A279045

/-!
# A279046: a(n) = A000178(n) * Sum_{k=0..n} (-1)^k/k!.

The programs for A279046, the canonical program `A279046.P3303134512408684315` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A279046 has offset 0).

The definition of A279046 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A279046.P3303134512408684315

`n!*a(n-1)+(-1)^n*A000178(n-1)` with `a(0)=1, a(1)=0, a(2)=1`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A279046

/-- `n!*a(n-1)+(-1)^n*A000178(n-1)` -/
def P3303134512408684315.Spec : Prop :=
  ∀ n, P3303134512408684315.a n = A279046 n

theorem P3303134512408684315.correct : P3303134512408684315.Spec := by
  intro n
  simp only [A279046]

end A279046

/-! ## A279046.P2808211741368720134

`abs(A260612(A034856(n+1)))`
-/

namespace A279046.P2808211741368720134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A260612 (A034856 (n + 1)).toNat|

end

end A279046.P2808211741368720134

namespace A279046

/-- `abs(A260612(A034856(n+1)))` -/
def P2808211741368720134.Spec : Prop :=
  ∀ n, P2808211741368720134.a n = A279046 n

end A279046

/-! ## A279046.P10861657131988173960

`∏[A098361(A000124(n))]*A000166(n)`
-/

namespace A279046.P10861657131988173960
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098361 (A000124 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∏ j ∈ Finset.range (n + 1), f1 j) * A000166 n

end

end A279046.P10861657131988173960

namespace A279046

/-- `∏[A098361(A000124(n))]*A000166(n)` -/
def P10861657131988173960.Spec : Prop :=
  ∀ n, P10861657131988173960.a n = A279046 n

end A279046

/-! ## A279046.P3845100831497604817

`gcd(A185284(n), A260612(A034856(n+1)))`
-/

namespace A279046.P3845100831497604817
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A185284 n) (A260612 (A034856 (n + 1)).toNat)

end

end A279046.P3845100831497604817

namespace A279046

/-- `gcd(A185284(n), A260612(A034856(n+1)))` -/
def P3845100831497604817.Spec : Prop :=
  ∀ n, (P3845100831497604817.a n : ℤ) = A279046 n

end A279046

/-!
# A279048: a(n) = 0 whenever n is a practical number (A005153) otherwise least powers of 2 that when multiplied by n becomes practical.

The programs for A279048, there is no canonical definition to state claims against.
-/

/-! ## A279048.P5822294491339217600

`A198277(A000010(n+1))%A061775(A210445(n+1))`
-/

namespace A279048.P5822294491339217600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A198277 (A000010 (n + 1)).toNat) (A061775 (A210445 (n + 1)).toNat)

end

end A279048.P5822294491339217600

/-! ## A279048.P6097001492947775351

`A198277(A006530(n+1))%A061775(A210445(n+1))`
-/

namespace A279048.P6097001492947775351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A198277 (A006530 (n + 1)).toNat) (A061775 (A210445 (n + 1)).toNat)

end

end A279048.P6097001492947775351

/-! ## A279048.P5169781191986461139

`A198277(A055035(n+1))%A061775(A210445(n+1))`
-/

namespace A279048.P5169781191986461139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A198277 (A055035 (n + 1)).toNat) (A061775 (A210445 (n + 1)).toNat)

end

end A279048.P5169781191986461139

/-! ## A279048.P13552547622967075492

`A198277(A173557(n+1))%A061775(A210445(n+1))`
-/

namespace A279048.P13552547622967075492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A198277 (A173557 (n + 1)).toNat) (A061775 (A210445 (n + 1)).toNat)

end

end A279048.P13552547622967075492

/-! ## A279048.P932907506812601755

`A198277(A055573(n+1))%A061775(A210445(n+1))`
-/

namespace A279048.P932907506812601755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A198277 (A055573 (n + 1)).toNat) (A061775 (A210445 (n + 1)).toNat)

end

end A279048.P932907506812601755

/-! ## A279048.P13888553664997516559

`A198277(A231190(n+1))%A061775(A210445(n+1))`
-/

namespace A279048.P13888553664997516559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A198277 (A231190 (n + 1)).toNat) (A061775 (A210445 (n + 1)).toNat)

end

end A279048.P13888553664997516559

/-! ## A279048.P14571970766469102915

`A198277(A000196(n)²)%A061775(A210445(n+1))`
-/

namespace A279048.P14571970766469102915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A198277 (A000196 n ^ 2).toNat) (A061775 (A210445 (n + 1)).toNat)

end

end A279048.P14571970766469102915

/-! ## A279048.P4700408389773763990

`A198277(A056943(n)+1)%A061775(A210445(n+1))`
-/

namespace A279048.P4700408389773763990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A198277 (A056943 n + 1).toNat) (A061775 (A210445 (n + 1)).toNat)

end

end A279048.P4700408389773763990

/-! ## A279048.P1099085817291492176

`A198277(abs(1-n))%A061775(A210445(n+1))`
-/

namespace A279048.P1099085817291492176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A198277 |1 - (n : ℤ)|.toNat) (A061775 (A210445 (n + 1)).toNat)

end

end A279048.P1099085817291492176

/-! ## A279048.P14743480702174469160

`A253630(2*A210445(n+1))`
-/

namespace A279048.P14743480702174469160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253630 (2 * A210445 (n + 1)).toNat

end

end A279048.P14743480702174469160

/-!
# A279051: Sum of odd nonprime divisors of n.

The programs for A279051, the canonical program `A279051.P13470628447190644571` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A279051 has offset 1).

The definition of A279051 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A279051.P11806465257204248127

`A023890(A000265(n+1))`
-/

namespace A279051.P11806465257204248127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023890 (A000265 (n + 1)).toNat

end

end A279051.P11806465257204248127

namespace A279051

/-- `A023890(A000265(n+1))` -/
def P11806465257204248127.Spec : Prop :=
  ∀ n, P11806465257204248127.a n = A279051 (n + 1)

end A279051

/-! ## A279051.P13556689929880271221

`A023890(A153733(n)+1)`
-/

namespace A279051.P13556689929880271221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023890 (A153733 n + 1).toNat

end

end A279051.P13556689929880271221

namespace A279051

/-- `A023890(A153733(n)+1)` -/
def P13556689929880271221.Spec : Prop :=
  ∀ n, P13556689929880271221.a n = A279051 (n + 1)

end A279051

/-! ## A279051.P2175487705700512180

`A023890(A171435(n+1))`
-/

namespace A279051.P2175487705700512180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023890 (A171435 (n + 1)).toNat

end

end A279051.P2175487705700512180

namespace A279051

/-- `A023890(A171435(n+1))` -/
def P2175487705700512180.Spec : Prop :=
  ∀ n, P2175487705700512180.a n = A279051 (n + 1)

end A279051

/-! ## A279051.P13470628447190644571

`A300893(A153733(n)+1)`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A279051

/-- `A300893(A153733(n)+1)` -/
def P13470628447190644571.Spec : Prop :=
  ∀ n, P13470628447190644571.a n = A279051 (n + 1)

theorem P13470628447190644571.correct : P13470628447190644571.Spec := by
  intro n
  simp only [A279051, Nat.add_sub_cancel]

end A279051

/-! ## A279051.P13358432518683390779

`A300893(or(1, A153733(n)))`
-/

namespace A279051.P13358432518683390779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300893 (Int.lor 1 (A153733 n)).toNat

end

end A279051.P13358432518683390779

namespace A279051

/-- `A300893(or(1, A153733(n)))` -/
def P13358432518683390779.Spec : Prop :=
  ∀ n, P13358432518683390779.a n = A279051 (n + 1)

end A279051

/-! ## A279051.P9701562896065918309

`A023890(A322250(n+1)+1)`
-/

namespace A279051.P9701562896065918309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023890 (A322250 (n + 1) + 1).toNat

end

end A279051.P9701562896065918309

namespace A279051

/-- `A023890(A322250(n+1)+1)` -/
def P9701562896065918309.Spec : Prop :=
  ∀ n, P9701562896065918309.a n = A279051 (n + 1)

end A279051

/-! ## A279051.P10287968062533378222

`∑{d}[A000265(n+1), A191558(#)]`
-/

namespace A279051.P10287968062533378222
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A191558 d

end

end A279051.P10287968062533378222

namespace A279051

/-- `∑{d}[A000265(n+1), A191558(#)]` -/
def P10287968062533378222.Spec : Prop :=
  ∀ n, P10287968062533378222.a n = A279051 (n + 1)

end A279051

/-! ## A279051.P15193266961218287723

`A000593(n+1)-A005069(n+1)`
-/

namespace A279051.P15193266961218287723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000593 (n + 1) - A005069 (n + 1)

end

end A279051.P15193266961218287723

namespace A279051

/-- `A000593(n+1)-A005069(n+1)` -/
def P15193266961218287723.Spec : Prop :=
  ∀ n, P15193266961218287723.a n = A279051 (n + 1)

end A279051

/-! ## A279051.P2457133044661260494

`A000593(n+1)+2-A008472(2*(n+1))`
-/

namespace A279051.P2457133044661260494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000593 (n + 1) + (2 - A008472 (2 * (n + 1)))

end

end A279051.P2457133044661260494

namespace A279051

/-- `A000593(n+1)+2-A008472(2*(n+1))` -/
def P2457133044661260494.Spec : Prop :=
  ∀ n, P2457133044661260494.a n = A279051 (n + 1)

end A279051

/-! ## A279051.P1481360108234782705

`A000593(n+1)-A008472(A000265(n+1))`
-/

namespace A279051.P1481360108234782705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000593 (n + 1) - A008472 (A000265 (n + 1)).toNat

end

end A279051.P1481360108234782705

namespace A279051

/-- `A000593(n+1)-A008472(A000265(n+1))` -/
def P1481360108234782705.Spec : Prop :=
  ∀ n, P1481360108234782705.a n = A279051 (n + 1)

end A279051

/-!
# A279053: Binary representation of the x-axis, from the left edge to the origin, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 131", based on the 5-celled von Neumann neighborhood.

The programs for A279053, the canonical program `A279053.P6062044546069630766` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A279053 has offset 0).

The definition of A279053 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A279053.P7623572845062193350

`∑[10^n*log2(gcd(2, n))]`
-/

namespace A279053.P7623572845062193350
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (10 ^ n : ℝ) * Real.logb 2 (Nat.gcd 2 n : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A279053.P7623572845062193350

namespace A279053

/-- `∑[10^n*log2(gcd(2, n))]` -/
def P7623572845062193350.Spec : Prop :=
  ∀ n, P7623572845062193350.a n = (A279053 n : ℝ)

end A279053

/-! ## A279053.P2611660107043086746

`∑[10^n*char[2*n]]`
-/

namespace A279053.P2611660107043086746
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10 ^ n * (if ∃ j, f2 j = n then 1 else 0)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A279053.P2611660107043086746

namespace A279053

/-- `∑[10^n*char[2*n]]` -/
def P2611660107043086746.Spec : Prop :=
  ∀ n, (P2611660107043086746.a n : ℤ) = A279053 n

end A279053

/-! ## A279053.P6062044546069630766

`abs(∑[∑[-a(n-1)]^n])` with `a(0)=10`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A279053

/-- `abs(∑[∑[-a(n-1)]^n])` -/
def P6062044546069630766.Spec : Prop :=
  ∀ n, P6062044546069630766.a n = A279053 n

theorem P6062044546069630766.correct : P6062044546069630766.Spec := by
  intro n
  simp only [A279053]

end A279053

/-! ## A279053.P14052112799029473326

`2*50*a(n-2)+1` with `a(0)=1, a(1)=1`
-/

namespace A279053.P14052112799029473326
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n a =>
  2 * (50 * a (n - 2)) + 1

end

end A279053.P14052112799029473326

namespace A279053

/-- `2*50*a(n-2)+1` -/
def P14052112799029473326.Spec : Prop :=
  ∀ n, (P14052112799029473326.a n : ℤ) = A279053 n

end A279053

/-! ## A279053.P8132515782868591844

`∑[10^n]-10*a(n-1)` with `a(0)=1`
-/

namespace A279053.P8132515782868591844
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10 ^ n

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 10 * a (n - 1)

end

end A279053.P8132515782868591844

namespace A279053

/-- `∑[10^n]-10*a(n-1)` -/
def P8132515782868591844.Spec : Prop :=
  ∀ n, P8132515782868591844.a n = A279053 n

end A279053

/-! ## A279053.P2928581371278719465

`and(-2, 10^n)-(10*a(n-1)-floor(10^n/9))` with `a(0)=1`
-/

namespace A279053.P2928581371278719465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.land (-2) (10 ^ n : ℤ) - (10 * a (n - 1) - ⌊(10 ^ n : ℚ) / 9⌋)

end

end A279053.P2928581371278719465

namespace A279053

/-- `and(-2, 10^n)-(10*a(n-1)-floor(10^n/9))` -/
def P2928581371278719465.Spec : Prop :=
  ∀ n, P2928581371278719465.a n = A279053 n

end A279053

/-! ## A279053.P13829429002577871194

`A056830(or(1, n))`
-/

namespace A279053.P13829429002577871194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056830 (Nat.lor 1 n)

end

end A279053.P13829429002577871194

namespace A279053

/-- `A056830(or(1, n))` -/
def P13829429002577871194.Spec : Prop :=
  ∀ n, P13829429002577871194.a n = A279053 n

end A279053

/-! ## A279053.P4397616076473402493

`A094027(or(1, n))`
-/

namespace A279053.P4397616076473402493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094027 (Nat.lor 1 n)

end

end A279053.P4397616076473402493

namespace A279053

/-- `A094027(or(1, n))` -/
def P4397616076473402493.Spec : Prop :=
  ∀ n, P4397616076473402493.a n = A279053 n

end A279053

/-! ## A279053.P5518127210608127162

`A147759(or(1, n))`
-/

namespace A279053.P5518127210608127162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147759 (Nat.lor 1 n)

end

end A279053.P5518127210608127162

namespace A279053

/-- `A147759(or(1, n))` -/
def P5518127210608127162.Spec : Prop :=
  ∀ n, P5518127210608127162.a n = A279053 n

end A279053

/-! ## A279053.P15896342008790295468

`A094028(floor(n/2))`
-/

namespace A279053.P15896342008790295468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094028 ⌊(n : ℚ) / 2⌋.toNat

end

end A279053.P15896342008790295468

namespace A279053

/-- `A094028(floor(n/2))` -/
def P15896342008790295468.Spec : Prop :=
  ∀ n, P15896342008790295468.a n = A279053 n

end A279053

/-! ## A279053.P472807981007178412

`A282796(or(1, n))+1`
-/

namespace A279053.P472807981007178412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282796 (Nat.lor 1 n) + 1

end

end A279053.P472807981007178412

namespace A279053

/-- `A282796(or(1, n))+1` -/
def P472807981007178412.Spec : Prop :=
  ∀ n, P472807981007178412.a n = A279053 n

end A279053

/-! ## A279053.P14267853179276688613

`A266508(or(1, n)-1)`
-/

namespace A279053.P14267853179276688613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266508 (Nat.lor 1 n - 1)

end

end A279053.P14267853179276688613

namespace A279053

/-- `A266508(or(1, n)-1)` -/
def P14267853179276688613.Spec : Prop :=
  ∀ n, P14267853179276688613.a n = A279053 n

end A279053

/-! ## A279053.P378206159543240024

`A283641(or(1, n)-1)`
-/

namespace A279053.P378206159543240024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283641 (Nat.lor 1 n - 1)

end

end A279053.P378206159543240024

namespace A279053

/-- `A283641(or(1, n)-1)` -/
def P378206159543240024.Spec : Prop :=
  ∀ n, P378206159543240024.a n = A279053 n

end A279053

/-! ## A279053.P7713004873730176918

`or(1, A284235(or(1, n)))`
-/

namespace A279053.P7713004873730176918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A284235 (Nat.lor 1 n))

end

end A279053.P7713004873730176918

namespace A279053

/-- `or(1, A284235(or(1, n)))` -/
def P7713004873730176918.Spec : Prop :=
  ∀ n, P7713004873730176918.a n = A279053 n

end A279053

/-! ## A279053.P14125399598715853645

`A266508(xor(1, or(1, n)))`
-/

namespace A279053.P14125399598715853645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266508 (Nat.xor 1 (Nat.lor 1 n))

end

end A279053.P14125399598715853645

namespace A279053

/-- `A266508(xor(1, or(1, n)))` -/
def P14125399598715853645.Spec : Prop :=
  ∀ n, P14125399598715853645.a n = A279053 n

end A279053

/-! ## A279053.P12429136034985921556

`A283641(xor(1, or(1, n)))`
-/

namespace A279053.P12429136034985921556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283641 (Nat.xor 1 (Nat.lor 1 n))

end

end A279053.P12429136034985921556

namespace A279053

/-- `A283641(xor(1, or(1, n)))` -/
def P12429136034985921556.Spec : Prop :=
  ∀ n, P12429136034985921556.a n = A279053 n

end A279053

/-! ## A279053.P8145364128562983848

`A279028(n-and(1, n))`
-/

namespace A279053.P8145364128562983848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279028 (n - Nat.land 1 n)

end

end A279053.P8145364128562983848

namespace A279053

/-- `A279028(n-and(1, n))` -/
def P8145364128562983848.Spec : Prop :=
  ∀ n, P8145364128562983848.a n = A279053 n

end A279053

/-! ## A279053.P2897643204499661561

`abs(Δ[A282088(n+1)])`
-/

namespace A279053.P2897643204499661561
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282088 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A279053.P2897643204499661561

namespace A279053

/-- `abs(Δ[A282088(n+1)])` -/
def P2897643204499661561.Spec : Prop :=
  ∀ n, P2897643204499661561.a n = A279053 n

end A279053

/-! ## A279053.P14224930145145938078

`A056830(A109613(n))`
-/

namespace A279053.P14224930145145938078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056830 (A109613 n).toNat

end

end A279053.P14224930145145938078

namespace A279053

/-- `A056830(A109613(n))` -/
def P14224930145145938078.Spec : Prop :=
  ∀ n, P14224930145145938078.a n = A279053 n

end A279053

/-! ## A279053.P12270109565687656235

`A266508(A052928(n))`
-/

namespace A279053.P12270109565687656235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266508 (A052928 n).toNat

end

end A279053.P12270109565687656235

namespace A279053

/-- `A266508(A052928(n))` -/
def P12270109565687656235.Spec : Prop :=
  ∀ n, P12270109565687656235.a n = A279053 n

end A279053

/-!
# A279054: Largest integer m for which binomial(m,n-1) > binomial(m-1,n).

The programs for A279054, the canonical program `A279054.P104048885449979253` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A279054 has offset 1).

The definition of A279054 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A279054.P104048885449979253

`ceil((3*(n+1)-3+sqrt(5*(n+1)²-2*(n+1)+1))/2)`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A279054

/-- `ceil((3*(n+1)-3+sqrt(5*(n+1)²-2*(n+1)+1))/2)` -/
def P104048885449979253.Spec : Prop :=
  ∀ n, P104048885449979253.a n = A279054 (n + 1)

theorem P104048885449979253.correct : P104048885449979253.Spec := by
  intro n
  simp only [A279054, Nat.add_sub_cancel]

end A279054

/-! ## A279054.P14839410525152240936

`A247426(n+1)-1`
-/

namespace A279054.P14839410525152240936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247426 (n + 1) - 1

end

end A279054.P14839410525152240936

namespace A279054

/-- `A247426(n+1)-1` -/
def P14839410525152240936.Spec : Prop :=
  ∀ n, P14839410525152240936.a n = A279054 (n + 1)

end A279054

/-! ## A279054.P12171456518979882319

`round(sqrt((n+1)*A001950(n+1))+n)`
-/

namespace A279054.P12171456518979882319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt ((n + 1 : ℤ) * A001950 (n + 1) : ℝ) + (n : ℝ))

end

end A279054.P12171456518979882319

namespace A279054

/-- `round(sqrt((n+1)*A001950(n+1))+n)` -/
def P12171456518979882319.Spec : Prop :=
  ∀ n, P12171456518979882319.a n = A279054 (n + 1)

end A279054

/-! ## A279054.P2270466065428285620

`A005206(A054770(n+1))+n-A005206(n)`
-/

namespace A279054.P2270466065428285620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005206 (A054770 (n + 1)).toNat + ((n : ℤ) - A005206 n)

end

end A279054.P2270466065428285620

namespace A279054

/-- `A005206(A054770(n+1))+n-A005206(n)` -/
def P2270466065428285620.Spec : Prop :=
  ∀ n, P2270466065428285620.a n = A279054 (n + 1)

end A279054

/-! ## A279054.P16188096697526438871

`A003622(A003231(n+1))-(A134860(n+1)+1)`
-/

namespace A279054.P16188096697526438871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003622 (A003231 (n + 1)).toNat - (A134860 (n + 1) + 1)

end

end A279054.P16188096697526438871

namespace A279054

/-- `A003622(A003231(n+1))-(A134860(n+1)+1)` -/
def P16188096697526438871.Spec : Prop :=
  ∀ n, P16188096697526438871.a n = A279054 (n + 1)

end A279054

/-! ## A279054.P14917787818685231094

`A060144(n+1)+A005206(A001950(n+1)+n)`
-/

namespace A279054.P14917787818685231094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060144 (n + 1) + A005206 (A001950 (n + 1) + (n : ℤ)).toNat

end

end A279054.P14917787818685231094

namespace A279054

/-- `A060144(n+1)+A005206(A001950(n+1)+n)` -/
def P14917787818685231094.Spec : Prop :=
  ∀ n, P14917787818685231094.a n = A279054 (n + 1)

end A279054

/-! ## A279054.P4165781224393113192

`A003622(A003231(n+1))-(A285683(n+1)+3*n)`
-/

namespace A279054.P4165781224393113192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003622 (A003231 (n + 1)).toNat - (A285683 (n + 1) + (3 * n : ℤ))

end

end A279054.P4165781224393113192

namespace A279054

/-- `A003622(A003231(n+1))-(A285683(n+1)+3*n)` -/
def P4165781224393113192.Spec : Prop :=
  ∀ n, P4165781224393113192.a n = A279054 (n + 1)

end A279054

/-! ## A279054.P6204830770875599231

`A003622(A003231(n+1))-(A285679(n+2)+3*n)`
-/

namespace A279054.P6204830770875599231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003622 (A003231 (n + 1)).toNat - (A285679 (n + 2) + (3 * n : ℤ))

end

end A279054.P6204830770875599231

namespace A279054

/-- `A003622(A003231(n+1))-(A285679(n+2)+3*n)` -/
def P6204830770875599231.Spec : Prop :=
  ∀ n, P6204830770875599231.a n = A279054 (n + 1)

end A279054

/-! ## A279054.P13078693041969906629

`A003622(A003231(n+1))-(A003622(A003622(n+1))+4)`
-/

namespace A279054.P13078693041969906629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003622 (A003231 (n + 1)).toNat - (A003622 (A003622 (n + 1)).toNat + 4)

end

end A279054.P13078693041969906629

namespace A279054

/-- `A003622(A003231(n+1))-(A003622(A003622(n+1))+4)` -/
def P13078693041969906629.Spec : Prop :=
  ∀ n, P13078693041969906629.a n = A279054 (n + 1)

end A279054

/-! ## A279054.P9255994762421513317

`A003622(A003231(n+1))-A188261(2*(n+1))`
-/

namespace A279054.P9255994762421513317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003622 (A003231 (n + 1)).toNat - A188261 (2 * (n + 1))

end

end A279054.P9255994762421513317

namespace A279054

/-- `A003622(A003231(n+1))-A188261(2*(n+1))` -/
def P9255994762421513317.Spec : Prop :=
  ∀ n, P9255994762421513317.a n = A279054 (n + 1)

end A279054

/-! ## A279054.P11231639739668087183

`A003622(A003231(n+1))%A188261(2*n+2)`
-/

namespace A279054.P11231639739668087183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A003622 (A003231 (n + 1)).toNat) (A188261 (2 * n + 2))

end

end A279054.P11231639739668087183

namespace A279054

/-- `A003622(A003231(n+1))%A188261(2*n+2)` -/
def P11231639739668087183.Spec : Prop :=
  ∀ n, P11231639739668087183.a n = A279054 (n + 1)

end A279054

/-! ## A279054.P6848945981727832279

`A242094(A003256(n+1)+1)-2`
-/

namespace A279054.P6848945981727832279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242094 (A003256 (n + 1) + 1).toNat - 2

end

end A279054.P6848945981727832279

namespace A279054

/-- `A242094(A003256(n+1)+1)-2` -/
def P6848945981727832279.Spec : Prop :=
  ∀ n, P6848945981727832279.a n = A279054 (n + 1)

end A279054

/-! ## A279054.P6080509418263693456

`A003258(A001950(n+1))-(A000201(n+1)+1)`
-/

namespace A279054.P6080509418263693456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003258 (A001950 (n + 1)).toNat - (A000201 (n + 1) + 1)

end

end A279054.P6080509418263693456

namespace A279054

/-- `A003258(A001950(n+1))-(A000201(n+1)+1)` -/
def P6080509418263693456.Spec : Prop :=
  ∀ n, P6080509418263693456.a n = A279054 (n + 1)

end A279054

/-! ## A279054.P7175540638414803123

`A003258(A003258(n+1)+n)-A003258(n+1)`
-/

namespace A279054.P7175540638414803123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003258 (A003258 (n + 1) + (n : ℤ)).toNat - A003258 (n + 1)

end

end A279054.P7175540638414803123

namespace A279054

/-- `A003258(A003258(n+1)+n)-A003258(n+1)` -/
def P7175540638414803123.Spec : Prop :=
  ∀ n, P7175540638414803123.a n = A279054 (n + 1)

end A279054

/-! ## A279054.P7677829939942573172

`A003622(A003231(n+1))-A001950(A001950(n+1))`
-/

namespace A279054.P7677829939942573172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003622 (A003231 (n + 1)).toNat - A001950 (A001950 (n + 1)).toNat

end

end A279054.P7677829939942573172

namespace A279054

/-- `A003622(A003231(n+1))-A001950(A001950(n+1))` -/
def P7677829939942573172.Spec : Prop :=
  ∀ n, P7677829939942573172.a n = A279054 (n + 1)

end A279054

/-! ## A279054.P9705910254725475590

`A023443(A247426(n+1))`
-/

namespace A279054.P9705910254725475590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A247426 (n + 1)).toNat

end

end A279054.P9705910254725475590

namespace A279054

/-- `A023443(A247426(n+1))` -/
def P9705910254725475590.Spec : Prop :=
  ∀ n, P9705910254725475590.a n = A279054 (n + 1)

end A279054

/-! ## A279054.P14075858524339147214

`A057843(A003231(n+1))-A035337(n)`
-/

namespace A279054.P14075858524339147214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057843 (A003231 (n + 1)).toNat - A035337 n

end

end A279054.P14075858524339147214

namespace A279054

/-- `A057843(A003231(n+1))-A035337(n)` -/
def P14075858524339147214.Spec : Prop :=
  ∀ n, P14075858524339147214.a n = A279054 (n + 1)

end A279054

/-! ## A279054.P15778257914408332716

`A060144(n+1)+A060143(A001950(n+1)+n+1)`
-/

namespace A279054.P15778257914408332716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060144 (n + 1) + A060143 (A001950 (n + 1) + (n + 1 : ℤ)).toNat

end

end A279054.P15778257914408332716

namespace A279054

/-- `A060144(n+1)+A060143(A001950(n+1)+n+1)` -/
def P15778257914408332716.Spec : Prop :=
  ∀ n, P15778257914408332716.a n = A279054 (n + 1)

end A279054

/-! ## A279054.P8699415769710985174

`n-(A003623(n+1)-A000201(A054770(n+1)+1))`
-/

namespace A279054.P8699415769710985174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (A003623 (n + 1) - A000201 (A054770 (n + 1) + 1).toNat)

end

end A279054.P8699415769710985174

namespace A279054

/-- `n-(A003623(n+1)-A000201(A054770(n+1)+1))` -/
def P8699415769710985174.Spec : Prop :=
  ∀ n, P8699415769710985174.a n = A279054 (n + 1)

end A279054

/-!
# A279055: Self-convolution of squares of factorial numbers (A001044).

The programs for A279055, there is no canonical definition to state claims against.
-/

/-! ## A279055.P4107387773141901406

`A001044(n)*A100516(n)/A100517(n)`
-/

namespace A279055.P4107387773141901406
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001044 n * A100516 n : ℚ) / (A100517 n : ℚ)

end

end A279055.P4107387773141901406

/-!
# A279057: Binary representation of the x-axis, from the left edge to the origin, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 219", based on the 5-celled von Neumann neighborhood.

The programs for A279057, there is no canonical definition to state claims against.
-/

/-! ## A279057.P14196536323975322823

`A007088(A279957(n))`
-/

namespace A279057.P14196536323975322823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A279957 n).toNat

end

end A279057.P14196536323975322823

/-! ## A279057.P3935410343813883640

`A185544(2*A279957(n))`
-/

namespace A279057.P3935410343813883640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A279957 n).toNat

end

end A279057.P3935410343813883640

/-! ## A279057.P17356305837333228467

`A279250(A171717(n))`
-/

namespace A279057.P17356305837333228467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279250 (A171717 n).toNat

end

end A279057.P17356305837333228467

/-! ## A279057.P7038229973563859327

`A279250(A004881(n+1))`
-/

namespace A279057.P7038229973563859327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279250 (A004881 (n + 1)).toNat

end

end A279057.P7038229973563859327

/-! ## A279057.P4208270815261424521

`A279250(A004892(n+1))`
-/

namespace A279057.P4208270815261424521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279250 (A004892 (n + 1)).toNat

end

end A279057.P4208270815261424521

/-!
# A279060: Number of divisors of n of the form 6*k + 1.

The programs for A279060, the canonical program `A279060.P16013489652105091246` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A279060 has offset 0).

The definition of A279060 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A279060.P16013489652105091246

`∑{d}[n, and(#², #%3)]`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A279060

/-- `∑{d}[n, and(#², #%3)]` -/
def P16013489652105091246.Spec : Prop :=
  ∀ n, (P16013489652105091246.a n : ℤ) = A279060 n

theorem P16013489652105091246.correct : P16013489652105091246.Spec := by
  intro n
  simp only [A279060]

end A279060

/-! ## A279060.P9363350649569213345

`∑{d}[n, A079979(#-1)]`
-/

namespace A279060.P9363350649569213345
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A079979 (d - 1)

end

end A279060.P9363350649569213345

namespace A279060

/-- `∑{d}[n, A079979(#-1)]` -/
def P9363350649569213345.Spec : Prop :=
  ∀ n, P9363350649569213345.a n = A279060 n

end A279060

/-! ## A279060.P10707843542629301327

`∑{d}[n, val(A020639(#+2), 3)]`
-/

namespace A279060.P10707843542629301327
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), SequenceMachineLib.valuation (A020639 (d + 2)).toNat 3

end

end A279060.P10707843542629301327

namespace A279060

/-- `∑{d}[n, val(A020639(#+2), 3)]` -/
def P10707843542629301327.Spec : Prop :=
  ∀ n, (P10707843542629301327.a n : ℤ) = A279060 n

end A279060

/-! ## A279060.P770790614188507057

`A320001(comp[2*(n+1)]+1)`
-/

namespace A279060.P770790614188507057
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320001 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1)

end

end A279060.P770790614188507057

namespace A279060

/-- `A320001(comp[2*(n+1)]+1)` -/
def P770790614188507057.Spec : Prop :=
  ∀ n, P770790614188507057.a n = A279060 n

end A279060

/-! ## A279060.P15494876170060555041

`dr(A320001(A004277(n)))`
-/

namespace A279060.P15494876170060555041
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A320001 (A004277 n).toNat)

end

end A279060.P15494876170060555041

namespace A279060

/-- `dr(A320001(A004277(n)))` -/
def P15494876170060555041.Spec : Prop :=
  ∀ n, (P15494876170060555041.a n : ℤ) = A279060 n

end A279060

/-! ## A279060.P5151291740962983160

`A320001(A008486(n))%(n+1)`
-/

namespace A279060.P5151291740962983160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A320001 (A008486 n).toNat) (n + 1 : ℤ)

end

end A279060.P5151291740962983160

namespace A279060

/-- `A320001(A008486(n))%(n+1)` -/
def P5151291740962983160.Spec : Prop :=
  ∀ n, P5151291740962983160.a n = A279060 n

end A279060

/-!
# A279061: Number of divisors of n of the form 7*k + 1.

The programs for A279061, the canonical program `A279061.P5329778650763394169` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A279061 has offset 0).

The definition of A279061 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A279061.P5329778650763394169

`∑{d}[n, A082784(#-1)]`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A279061

/-- `∑{d}[n, A082784(#-1)]` -/
def P5329778650763394169.Spec : Prop :=
  ∀ n, P5329778650763394169.a n = A279061 n

theorem P5329778650763394169.correct : P5329778650763394169.Spec := by
  intro n
  simp only [A279061]

end A279061

/-! ## A279061.P2731618221618477061

`∑{d}[n, 1-A109720(#-1)]`
-/

namespace A279061.P2731618221618477061
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (1 - A109720 (d - 1))

end

end A279061.P2731618221618477061

namespace A279061

/-- `∑{d}[n, 1-A109720(#-1)]` -/
def P2731618221618477061.Spec : Prop :=
  ∀ n, P2731618221618477061.a n = A279061 n

end A279061

/-! ## A279061.P9569400544403089541

`∑{d}[n, (A111396(#)%7)%2]`
-/

namespace A279061.P9569400544403089541
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), Int.tmod (Int.tmod (A111396 d) 7) 2

end

end A279061.P9569400544403089541

namespace A279061

/-- `∑{d}[n, (A111396(#)%7)%2]` -/
def P9569400544403089541.Spec : Prop :=
  ∀ n, P9569400544403089541.a n = A279061 n

end A279061

/-! ## A279061.P11627713341230206633

`∑{d}[n, A210679(A053674(#))]`
-/

namespace A279061.P11627713341230206633
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A210679 (A053674 d).toNat

end

end A279061.P11627713341230206633

namespace A279061

/-- `∑{d}[n, A210679(A053674(#))]` -/
def P11627713341230206633.Spec : Prop :=
  ∀ n, P11627713341230206633.a n = A279061 n

end A279061

/-! ## A279061.P13945273717682134754

`∑{d}[n, A304438(A053674(#)²-1)]`
-/

namespace A279061.P13945273717682134754
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A304438 (A053674 d ^ 2 - 1).toNat

end

end A279061.P13945273717682134754

namespace A279061

/-- `∑{d}[n, A304438(A053674(#)²-1)]` -/
def P13945273717682134754.Spec : Prop :=
  ∀ n, P13945273717682134754.a n = A279061 n

end A279061

/-! ## A279061.P6684339430011134911

`∑{d}[n, A144601(2*(#+1))]`
-/

namespace A279061.P6684339430011134911
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A144601 (2 * (d + 1))

end

end A279061.P6684339430011134911

namespace A279061

/-- `∑{d}[n, A144601(2*(#+1))]` -/
def P6684339430011134911.Spec : Prop :=
  ∀ n, P6684339430011134911.a n = A279061 n

end A279061

/-!
# A279062: Initial terms of the arithmetic progressions in A278735.

The programs for A279062, there is no canonical definition to state claims against.
-/

/-! ## A279062.P14382203096617573102

`A279021(∑[n]+1)`
-/

namespace A279062.P14382203096617573102
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279021 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A279062.P14382203096617573102

/-! ## A279062.P844016967762987136

`or(1, A279021(A000124(n)))`
-/

namespace A279062.P844016967762987136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A279021 (A000124 n).toNat)

end

end A279062.P844016967762987136

/-! ## A279062.P7617167279149116528

`A278735(n+1)-n*A274825(n+1)`
-/

namespace A279062.P7617167279149116528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278735 (n + 1) - (n : ℤ) * A274825 (n + 1)

end

end A279062.P7617167279149116528

/-!
# A279063: Number of 2 X 2 matrices having entries in {0,1,...,n} and determinant in the closed interval [-n,n] with no entry repeated.

The programs for A279063, there is no canonical definition to state claims against.
-/

/-! ## A279063.P8075121036327860950

`and(A212521(n), A212523(A007070(n)))`
-/

namespace A279063.P8075121036327860950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A212521 n) (A212523 (A007070 n).toNat)

end

end A279063.P8075121036327860950

/-! ## A279063.P8914768490871150480

`and(A000118(A082639(n+1)), A047520(n))`
-/

namespace A279063.P8914768490871150480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000118 (A082639 (n + 1)).toNat) (A047520 n)

end

end A279063.P8914768490871150480

/-!
# A279064: Numbers n such that the sum of numbers less than n that do not divide n is even.

The programs for A279064, the canonical program `A279064.P15784993445143598710` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A279064 has offset 1).

The definition of A279064 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A279064.P3389743531572806152

`lt[1, gcd(2, A024816(n+1))]+1`
-/

namespace A279064.P3389743531572806152
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (A024816 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A279064.P3389743531572806152

namespace A279064

/-- `lt[1, gcd(2, A024816(n+1))]+1` -/
def P3389743531572806152.Spec : Prop :=
  ∀ n, (P3389743531572806152.a n : ℤ) = A279064 (n + 1)

end A279064

/-! ## A279064.P8066292886486692635

`eq[0, and(2, A133692(n)+1+n)]`
-/

namespace A279064.P8066292886486692635
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 2 (A133692 n + 1 + (n : ℤ))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A279064.P8066292886486692635

namespace A279064

/-- `eq[0, and(2, A133692(n)+1+n)]` -/
def P8066292886486692635.Spec : Prop :=
  ∀ n, (P8066292886486692635.a n : ℤ) = A279064 (n + 1)

end A279064

/-! ## A279064.P17940913510963966004

`eq[0, and(2, A210030(n)+1+n)]`
-/

namespace A279064.P17940913510963966004
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 2 (A210030 n + 1 + (n : ℤ))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A279064.P17940913510963966004

namespace A279064

/-- `eq[0, and(2, A210030(n)+1+n)]` -/
def P17940913510963966004.Spec : Prop :=
  ∀ n, (P17940913510963966004.a n : ℤ) = A279064 (n + 1)

end A279064

/-! ## A279064.P9179648085196233286

`eq[and(2, n+1), and(3, A033715(n))]`
-/

namespace A279064.P9179648085196233286
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 2 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 3 (A033715 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A279064.P9179648085196233286

namespace A279064

/-- `eq[and(2, n+1), and(3, A033715(n))]` -/
def P9179648085196233286.Spec : Prop :=
  ∀ n, (P9179648085196233286.a n : ℤ) = A279064 (n + 1)

end A279064

/-! ## A279064.P9940860913105933606

`eq[1, A084101(A033715(n)+n)]`
-/

namespace A279064.P9940860913105933606
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084101 (A033715 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A279064.P9940860913105933606

namespace A279064

/-- `eq[1, A084101(A033715(n)+n)]` -/
def P9940860913105933606.Spec : Prop :=
  ∀ n, (P9940860913105933606.a n : ℤ) = A279064 (n + 1)

end A279064

/-! ## A279064.P8585846680775954557

`eq[A084101(A033715(n)), A084101(n)]`
-/

namespace A279064.P8585846680775954557
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084101 (A033715 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084101 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A279064.P8585846680775954557

namespace A279064

/-- `eq[A084101(A033715(n)), A084101(n)]` -/
def P8585846680775954557.Spec : Prop :=
  ∀ n, (P8585846680775954557.a n : ℤ) = A279064 (n + 1)

end A279064

/-! ## A279064.P15784993445143598710

`eq[A010052(2*n)+A010052(n), A050605(n+1)]`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A279064

/-- `eq[A010052(2*n)+A010052(n), A050605(n+1)]` -/
def P15784993445143598710.Spec : Prop :=
  ∀ n, (P15784993445143598710.a n : ℤ) = A279064 (n + 1)

theorem P15784993445143598710.correct : P15784993445143598710.Spec := by
  intro n
  simp only [A279064, Nat.add_sub_cancel]

end A279064

/-!
# A279065: Fermi-Dirac primeth recurrence: a(0)=1; thereafter a(n+1) = a(n)-th number of the form p^(2^k) where p is prime and k>=0.

The programs for A279065, there is no canonical definition to state claims against.
-/

/-! ## A279065.P18009372385945950703

`A050376(a(n-1))` with `a(0)=1`
-/

namespace A279065.P18009372385945950703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A050376 (a (n - 1)).toNat

end

end A279065.P18009372385945950703

/-! ## A279065.P12895080211815770642

`sqrt(A082522(a(n-1)))` with `a(0)=1`
-/

namespace A279065.P12895080211815770642
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [1] fun n a =>
  Real.sqrt (A082522 (SequenceMachineLib.roundAway (a (n - 1))).toNat : ℝ)

end

end A279065.P12895080211815770642

/-! ## A279065.P17243203657451390249

`A084400(a(n-1)+1)` with `a(0)=1`
-/

namespace A279065.P17243203657451390249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A084400 (a (n - 1) + 1).toNat

end

end A279065.P17243203657451390249

/-! ## A279065.P4607556198023714406

`A050376(abs(a(A023443(n))))` with `a(0)=1`
-/

namespace A279065.P4607556198023714406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A050376 |a (A023443 n).toNat|.toNat

end

end A279065.P4607556198023714406

/-! ## A279065.P14153655922401533717

`A050376(floor(a(A023443(n))))` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A279065.P14153655922401533717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A050376 (a (A023443 n).toNat).toNat

end

end A279065.P14153655922401533717

/-!
# A279066: Least prime q such that (q-p)/(r-q), where p

The programs for A279066, there is no canonical definition to state claims against.
-/

/-! ## A279066.P9690128845933985692

`A006530(∑[A261282(n+1)+A030453(2*(n+1))])`
-/

namespace A279066.P9690128845933985692
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261282 (n + 1) + A030453 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A279066.P9690128845933985692

/-!
# A279068: 

The programs for A279068, there is no canonical definition to state claims against.
-/

/-! ## A279068.P10776386611153905139

`A084738(p?[record[∏{p}[n+1, #]]])`
-/

namespace A279068.P10776386611153905139
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f3 n), p

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084738 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A279068.P10776386611153905139

/-! ## A279068.P6747966807451980721

`A084738(A000040(n+1))`
-/

namespace A279068.P6747966807451980721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084738 (A000040 (n + 1)).toNat

end

end A279068.P6747966807451980721

/-! ## A279068.P16242405635732549554

`A084738(record[A006530(n+2)])`
-/

namespace A279068.P16242405635732549554
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084738 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A279068.P16242405635732549554

/-! ## A279068.P18078777940098343903

`A084738(record[A020639(n+2)])`
-/

namespace A279068.P18078777940098343903
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084738 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A279068.P18078777940098343903

/-!
# A279069: Smallest k such that 1 + p + p^2 + p^3 + ... + p^k is prime, where p is the n-th prime.

The programs for A279069, there is no canonical definition to state claims against.
-/

/-! ## A279069.P11834610472395315480

`A065854(n+1)-1`
-/

namespace A279069.P11834610472395315480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065854 (n + 1) - 1

end

end A279069.P11834610472395315480

/-! ## A279069.P6379982194308974732

`ceil(cosh(sin(n)))*A065813(n+1)`
-/

namespace A279069.P6379982194308974732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.cosh (Real.sin (n : ℝ))⌉ * A065813 (n + 1)

end

end A279069.P6379982194308974732

/-! ## A279069.P13905363718255984245

`A000010(A065854(n+1))`
-/

namespace A279069.P13905363718255984245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A065854 (n + 1)).toNat

end

end A279069.P13905363718255984245

/-! ## A279069.P17008326878914432706

`A140106(2*A065854(n+1))`
-/

namespace A279069.P17008326878914432706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140106 (2 * A065854 (n + 1)).toNat

end

end A279069.P17008326878914432706

/-! ## A279069.P4318752314824314649

`A173557(2*A065854(n+1))`
-/

namespace A279069.P4318752314824314649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173557 (2 * A065854 (n + 1)).toNat

end

end A279069.P4318752314824314649

/-! ## A279069.P6601110696260247403

`A047994(lcm(2, A065854(n+1)))`
-/

namespace A279069.P6601110696260247403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047994 (Int.lcm 2 (A065854 (n + 1)))

end

end A279069.P6601110696260247403

/-! ## A279069.P8813840840820298917

`A036452(n+1)*A065813(n+1)`
-/

namespace A279069.P8813840840820298917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036452 (n + 1) * A065813 (n + 1)

end

end A279069.P8813840840820298917

/-! ## A279069.P1952012096280973274

`A036453(n+1)*A065813(n+1)`
-/

namespace A279069.P1952012096280973274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036453 (n + 1) * A065813 (n + 1)

end

end A279069.P1952012096280973274

/-! ## A279069.P11928405306256347576

`xor(1, A065854(n+1)%A005891(n))`
-/

namespace A279069.P11928405306256347576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (Int.tmod (A065854 (n + 1)) (A005891 n))

end

end A279069.P11928405306256347576

/-!
# A279071: Numbers k such that Fibonacci(k) == +-1 (mod k).

The programs for A279071, the canonical program `A279071.P17899804211645114015` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A279071 has offset 1).

The definition of A279071 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A279071.P17899804211645114015

`∪[A023162(n+1), A023173(n+1)]`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A279071

/-- `∪[A023162(n+1), A023173(n+1)]` -/
def P17899804211645114015.Spec : Prop :=
  ∀ n, (P17899804211645114015.a n : ℤ) = A279071 (n + 1)

theorem P17899804211645114015.correct : P17899804211645114015.Spec := by
  intro n
  simp only [A279071, Nat.add_sub_cancel]

end A279071

/-! ## A279071.P3004160220156198

`eq[1, A182167(C(n, n²)+n)]`
-/

namespace A279071.P3004160220156198
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182167 (Nat.choose n (n ^ 2) + n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A279071.P3004160220156198

namespace A279071

/-- `eq[1, A182167(C(n, n²)+n)]` -/
def P3004160220156198.Spec : Prop :=
  ∀ n, (P3004160220156198.a n : ℤ) = A279071 (n + 1)

end A279071

/-! ## A279071.P4191561616063146827

`eq[1, A182167(n-floor(atan(n))+1)]`
-/

namespace A279071.P4191561616063146827
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182167 ((n : ℤ) - ⌊Real.arctan (n : ℝ)⌋ + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A279071.P4191561616063146827

namespace A279071

/-- `eq[1, A182167(n-floor(atan(n))+1)]` -/
def P4191561616063146827.Spec : Prop :=
  ∀ n, (P4191561616063146827.a n : ℤ) = A279071 (n + 1)

end A279071

/-! ## A279071.P11333005033349304832

`eq[1, A182167(round(sqrt(n²+1))+1)]+1`
-/

namespace A279071.P11333005033349304832
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182167 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ)) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A279071.P11333005033349304832

namespace A279071

/-- `eq[1, A182167(round(sqrt(n²+1))+1)]+1` -/
def P11333005033349304832.Spec : Prop :=
  ∀ n, (P11333005033349304832.a n : ℤ) = A279071 (n + 1)

end A279071

/-! ## A279071.P2130763711381168470

`record[A270313(n+1)/A028310(A182167(n+1))]`
-/

namespace A279071.P2130763711381168470
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A270313 (n + 1) : ℚ) / (A028310 (A182167 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A279071.P2130763711381168470

namespace A279071

/-- `record[A270313(n+1)/A028310(A182167(n+1))]` -/
def P2130763711381168470.Spec : Prop :=
  ∀ n, P2130763711381168470.a n = (A279071 (n + 1) : ℚ)

end A279071

/-! ## A279071.P11913057801569440638

`record[gcd(A080513(n), A226649(n))]`
-/

namespace A279071.P11913057801569440638
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A080513 n) (A226649 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A279071.P11913057801569440638

namespace A279071

/-- `record[gcd(A080513(n), A226649(n))]` -/
def P11913057801569440638.Spec : Prop :=
  ∀ n, (P11913057801569440638.a n : ℤ) = A279071 (n + 1)

end A279071

/-! ## A279071.P6044451868366799687

`record[A270313(n+1)/A243866(A331188(n+1))]`
-/

namespace A279071.P6044451868366799687
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A270313 (n + 1) : ℚ) / (A243866 (A331188 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A279071.P6044451868366799687

namespace A279071

/-- `record[A270313(n+1)/A243866(A331188(n+1))]` -/
def P6044451868366799687.Spec : Prop :=
  ∀ n, P6044451868366799687.a n = (A279071 (n + 1) : ℚ)

end A279071

/-!
# A279074: Smallest positive number whose residues modulo the first n primes are all different but whose residues modulo the first n+1 primes are not all different.

The programs for A279074, there is no canonical definition to state claims against.
-/

/-! ## A279074.P7229933411258034954

`A279073(A024647(n+1))`
-/

namespace A279074.P7229933411258034954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279073 (A024647 (n + 1)).toNat

end

end A279074.P7229933411258034954

/-! ## A279074.P17183990326951399097

`A279073(A024648(n+1))`
-/

namespace A279074.P17183990326951399097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279073 (A024648 (n + 1)).toNat

end

end A279074.P17183990326951399097

/-! ## A279074.P3492683178836606633

`A279073(A024649(n+1))`
-/

namespace A279074.P3492683178836606633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279073 (A024649 (n + 1)).toNat

end

end A279074.P3492683178836606633

/-!
# A279075: Maximum starting value of X such that repeated replacement of X with X-ceiling(X/5) requires n steps to reach 0.

The programs for A279075, the canonical program `A279075.P4942370413098120412` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A279075 has offset 0).

The definition of A279075 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A279075.P4942370413098120412

`floor(a(n-1)*5/4)+1` with `a(0)=0`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A279075

/-- `floor(a(n-1)*5/4)+1` -/
def P4942370413098120412.Spec : Prop :=
  ∀ n, P4942370413098120412.a n = A279075 n

theorem P4942370413098120412.correct : P4942370413098120412.Spec := by
  intro n
  simp only [A279075]

end A279075

/-! ## A279075.P8431565027639596008

`floor(a(n-1)/4+a(n-1)+1)` with `a(0)=0`
-/

namespace A279075.P8431565027639596008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  ⌊(a (n - 1) : ℚ) / 4 + (a (n - 1) + 1 : ℚ)⌋

end

end A279075.P8431565027639596008

namespace A279075

/-- `floor(a(n-1)/4+a(n-1)+1)` -/
def P8431565027639596008.Spec : Prop :=
  ∀ n, P8431565027639596008.a n = A279075 n

end A279075

/-! ## A279075.P7050666950150212743

`1-floor((3-a(n-1))/4-a(n-1))` with `a(0)=0`
-/

namespace A279075.P7050666950150212743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  1 - ⌊(3 - a (n - 1) : ℚ) / 4 - (a (n - 1) : ℚ)⌋

end

end A279075.P7050666950150212743

namespace A279075

/-- `1-floor((3-a(n-1))/4-a(n-1))` -/
def P7050666950150212743.Spec : Prop :=
  ∀ n, P7050666950150212743.a n = A279075 n

end A279075

/-! ## A279075.P14681649529922415113

`A182305(n)-4`
-/

namespace A279075.P14681649529922415113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182305 n - 4

end

end A279075.P14681649529922415113

namespace A279075

/-- `A182305(n)-4` -/
def P14681649529922415113.Spec : Prop :=
  ∀ n, P14681649529922415113.a n = A279075 n

end A279075

/-! ## A279075.P16650302119031248281

`∑[A120160(n+1)]-1`
-/

namespace A279075.P16650302119031248281
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120160 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A279075.P16650302119031248281

namespace A279075

/-- `∑[A120160(n+1)]-1` -/
def P16650302119031248281.Spec : Prop :=
  ∀ n, P16650302119031248281.a n = A279075 n

end A279075

/-! ## A279075.P6879716391906696114

`ceil((5*a(n-1)+1)/4)` with `a(0)=0`
-/

namespace A279075.P6879716391906696114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  ⌈(5 * a (n - 1) + 1 : ℚ) / 4⌉

end

end A279075.P6879716391906696114

namespace A279075

/-- `ceil((5*a(n-1)+1)/4)` -/
def P6879716391906696114.Spec : Prop :=
  ∀ n, P6879716391906696114.a n = A279075 n

end A279075

/-! ## A279075.P11685641961280756053

`floor(lcm(5, a(n-1))/4)+1` with `a(0)=0`
-/

namespace A279075.P11685641961280756053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  ⌊(Int.lcm 5 (a (n - 1)) : ℚ) / 4⌋ + 1

end

end A279075.P11685641961280756053

namespace A279075

/-- `floor(lcm(5, a(n-1))/4)+1` -/
def P11685641961280756053.Spec : Prop :=
  ∀ n, P11685641961280756053.a n = A279075 n

end A279075

/-! ## A279075.P14468965221633837764

`(or(3, 5*a(n-1))+1)/4` with `a(0)=0`
-/

namespace A279075.P14468965221633837764
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0] fun n a =>
  (Int.lor 3 (SequenceMachineLib.roundAway (5 * a (n - 1))) + 1 : ℚ) / 4

end

end A279075.P14468965221633837764

namespace A279075

/-- `(or(3, 5*a(n-1))+1)/4` -/
def P14468965221633837764.Spec : Prop :=
  ∀ n, P14468965221633837764.a n = (A279075 n : ℚ)

end A279075

/-! ## A279075.P8155970281182964005

`A191708(A000124(n))-1`
-/

namespace A279075.P8155970281182964005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191708 (A000124 n).toNat - 1

end

end A279075.P8155970281182964005

namespace A279075

/-- `A191708(A000124(n))-1` -/
def P8155970281182964005.Spec : Prop :=
  ∀ n, P8155970281182964005.a n = A279075 n

end A279075

/-! ## A279075.P16350015384649420030

`A191708(A000217(n)+1)-1`
-/

namespace A279075.P16350015384649420030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191708 (A000217 n + 1).toNat - 1

end

end A279075.P16350015384649420030

namespace A279075

/-- `A191708(A000217(n)+1)-1` -/
def P16350015384649420030.Spec : Prop :=
  ∀ n, P16350015384649420030.a n = A279075 n

end A279075

/-!
# A279076: Maximum starting value of X such that repeated replacement of X with X-ceiling(X/6) requires n steps to reach 0.

The programs for A279076, the canonical program `A279076.P4345169272669884264` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A279076 has offset 0).

The definition of A279076 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A279076.P4345169272669884264

`floor(a(n-1)*6/5)+1` with `a(0)=0`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A279076

/-- `floor(a(n-1)*6/5)+1` -/
def P4345169272669884264.Spec : Prop :=
  ∀ n, P4345169272669884264.a n = A279076 n

theorem P4345169272669884264.correct : P4345169272669884264.Spec := by
  intro n
  simp only [A279076]

end A279076

/-! ## A279076.P13731853809320492183

`floor(a(n-1)/5+a(n-1)+1)` with `a(0)=0`
-/

namespace A279076.P13731853809320492183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  ⌊(a (n - 1) : ℚ) / 5 + (a (n - 1) + 1 : ℚ)⌋

end

end A279076.P13731853809320492183

namespace A279076

/-- `floor(a(n-1)/5+a(n-1)+1)` -/
def P13731853809320492183.Spec : Prop :=
  ∀ n, P13731853809320492183.a n = A279076 n

end A279076

/-! ## A279076.P10158018175811929724

`A182306(n)-5`
-/

namespace A279076.P10158018175811929724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182306 n - 5

end

end A279076.P10158018175811929724

namespace A279076

/-- `A182306(n)-5` -/
def P10158018175811929724.Spec : Prop :=
  ∀ n, P10158018175811929724.a n = A279076 n

end A279076

/-! ## A279076.P1195607747814815871

`∑[A120170(n+1)]-1`
-/

namespace A279076.P1195607747814815871
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120170 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A279076.P1195607747814815871

namespace A279076

/-- `∑[A120170(n+1)]-1` -/
def P1195607747814815871.Spec : Prop :=
  ∀ n, P1195607747814815871.a n = A279076 n

end A279076

/-! ## A279076.P642619289424843259

`∑[Δ[round(6/5*a(n-1))]%A120164(n+1)]` with `a(0)=21, a(1)=3`
-/

namespace A279076.P642619289424843259
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [21, 3] fun n f2 =>
  SequenceMachineLib.roundAway ((6 : ℚ) / 5 * (f2 (n - 1) : ℚ))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f2 (n + 1) - f2 n) (A120164 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A279076.P642619289424843259

namespace A279076

/-- `∑[Δ[round(6/5*a(n-1))]%A120164(n+1)]` -/
def P642619289424843259.Spec : Prop :=
  ∀ n, P642619289424843259.a n = A279076 n

end A279076

/-! ## A279076.P18050839146566767366

`∑[A255591(A245399(n+1))]-1`
-/

namespace A279076.P18050839146566767366
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255591 (A245399 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A279076.P18050839146566767366

namespace A279076

/-- `∑[A255591(A245399(n+1))]-1` -/
def P18050839146566767366.Spec : Prop :=
  ∀ n, P18050839146566767366.a n = A279076 n

end A279076

/-!
# A279077: Maximum starting value of X such that repeated replacement of X with X-ceiling(X/7) requires n steps to reach 0.

The programs for A279077, the canonical program `A279077.P7135480062348934607` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A279077 has offset 0).

The definition of A279077 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A279077.P7135480062348934607

`floor(a(n-1)*7/6)+1` with `a(0)=0`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A279077

/-- `floor(a(n-1)*7/6)+1` -/
def P7135480062348934607.Spec : Prop :=
  ∀ n, P7135480062348934607.a n = A279077 n

theorem P7135480062348934607.correct : P7135480062348934607.Spec := by
  intro n
  simp only [A279077]

end A279077

/-! ## A279077.P5195785241873678478

`floor(a(n-1)/6+a(n-1)+1)` with `a(0)=0`
-/

namespace A279077.P5195785241873678478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  ⌊(a (n - 1) : ℚ) / 6 + (a (n - 1) + 1 : ℚ)⌋

end

end A279077.P5195785241873678478

namespace A279077

/-- `floor(a(n-1)/6+a(n-1)+1)` -/
def P5195785241873678478.Spec : Prop :=
  ∀ n, P5195785241873678478.a n = A279077 n

end A279077

/-! ## A279077.P8899951564501671341

`A182307(n)-6`
-/

namespace A279077.P8899951564501671341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182307 n - 6

end

end A279077.P8899951564501671341

namespace A279077

/-- `A182307(n)-6` -/
def P8899951564501671341.Spec : Prop :=
  ∀ n, P8899951564501671341.a n = A279077 n

end A279077

/-! ## A279077.P16813904409941530512

`∑[A120178(n+1)]-1`
-/

namespace A279077.P16813904409941530512
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120178 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A279077.P16813904409941530512

namespace A279077

/-- `∑[A120178(n+1)]-1` -/
def P16813904409941530512.Spec : Prop :=
  ∀ n, P16813904409941530512.a n = A279077 n

end A279077

/-! ## A279077.P16212946193037804350

`∑[xor(A000007(n), A120178(n+1))]`
-/

namespace A279077.P16212946193037804350
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000007 n) (A120178 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A279077.P16212946193037804350

namespace A279077

/-- `∑[xor(A000007(n), A120178(n+1))]` -/
def P16212946193037804350.Spec : Prop :=
  ∀ n, P16212946193037804350.a n = A279077 n

end A279077

/-! ## A279077.P13449582179848174575

`∑[∑{e}[A020639(n+1), #*A120178(n+1)]]`
-/

namespace A279077.P13449582179848174575
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n).natAbs, (Nat.factorization (f2 n).natAbs p : ℤ) * A120178 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A279077.P13449582179848174575

namespace A279077

/-- `∑[∑{e}[A020639(n+1), #*A120178(n+1)]]` -/
def P13449582179848174575.Spec : Prop :=
  ∀ n, P13449582179848174575.a n = A279077 n

end A279077

/-! ## A279077.P16604170420199283113

`∑[A120178(n+1)%A000029(n)]`
-/

namespace A279077.P16604170420199283113
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A120178 (n + 1)) (A000029 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A279077.P16604170420199283113

namespace A279077

/-- `∑[A120178(n+1)%A000029(n)]` -/
def P16604170420199283113.Spec : Prop :=
  ∀ n, P16604170420199283113.a n = A279077 n

end A279077

/-! ## A279077.P7558808265190007646

`∑[A245402(n+1)/7]-1`
-/

namespace A279077.P7558808265190007646
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A245402 (n + 1) : ℚ) / 7

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A279077.P7558808265190007646

namespace A279077

/-- `∑[A245402(n+1)/7]-1` -/
def P7558808265190007646.Spec : Prop :=
  ∀ n, P7558808265190007646.a n = (A279077 n : ℚ)

end A279077

/-! ## A279077.P2983660066268138711

`A047303(a(n-1))+2` with `a(0)=0, a(1)=1`
-/

namespace A279077.P2983660066268138711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  A047303 (a (n - 1)).toNat + 2

end

end A279077.P2983660066268138711

namespace A279077

/-- `A047303(a(n-1))+2` -/
def P2983660066268138711.Spec : Prop :=
  ∀ n, P2983660066268138711.a n = A279077 n

end A279077

/-! ## A279077.P17269459848628698264

`A047368(a(n-1)+1)+1` with `a(0)=0`
-/

namespace A279077.P17269459848628698264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A047368 (a (n - 1) + 1).toNat + 1

end

end A279077.P17269459848628698264

namespace A279077

/-- `A047368(a(n-1)+1)+1` -/
def P17269459848628698264.Spec : Prop :=
  ∀ n, P17269459848628698264.a n = A279077 n

end A279077

/-!
# A279078: Maximum starting value of X such that repeated replacement of X with X-ceiling(X/8) requires n steps to reach 0.

The programs for A279078, the canonical program `A279078.P4182379268137909237` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A279078 has offset 0).

The definition of A279078 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A279078.P4182379268137909237

`floor(a(n-1)*8/7)+1` with `a(0)=0`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A279078

/-- `floor(a(n-1)*8/7)+1` -/
def P4182379268137909237.Spec : Prop :=
  ∀ n, P4182379268137909237.a n = A279078 n

theorem P4182379268137909237.correct : P4182379268137909237.Spec := by
  intro n
  simp only [A279078]

end A279078

/-! ## A279078.P8877665227950930010

`floor(a(n-1)/7+a(n-1)+1)` with `a(0)=0`
-/

namespace A279078.P8877665227950930010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  ⌊(a (n - 1) : ℚ) / 7 + (a (n - 1) + 1 : ℚ)⌋

end

end A279078.P8877665227950930010

namespace A279078

/-- `floor(a(n-1)/7+a(n-1)+1)` -/
def P8877665227950930010.Spec : Prop :=
  ∀ n, P8877665227950930010.a n = A279078 n

end A279078

/-! ## A279078.P11551441994473184606

`A182308(n)-7`
-/

namespace A279078.P11551441994473184606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182308 n - 7

end

end A279078.P11551441994473184606

namespace A279078

/-- `A182308(n)-7` -/
def P11551441994473184606.Spec : Prop :=
  ∀ n, P11551441994473184606.a n = A279078 n

end A279078

/-! ## A279078.P7184972845150730884

`∑[A120186(n+1)]-1`
-/

namespace A279078.P7184972845150730884
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120186 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A279078.P7184972845150730884

namespace A279078

/-- `∑[A120186(n+1)]-1` -/
def P7184972845150730884.Spec : Prop :=
  ∀ n, P7184972845150730884.a n = A279078 n

end A279078

/-! ## A279078.P17983341608206164368

`∑[A120186(n+1)%A246077(n+1)]`
-/

namespace A279078.P17983341608206164368
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A120186 (n + 1)) (A246077 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A279078.P17983341608206164368

namespace A279078

/-- `∑[A120186(n+1)%A246077(n+1)]` -/
def P17983341608206164368.Spec : Prop :=
  ∀ n, P17983341608206164368.a n = A279078 n

end A279078

/-! ## A279078.P16629058515857506552

`A023449(A182308(n))`
-/

namespace A279078.P16629058515857506552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023449 (A182308 n).toNat

end

end A279078.P16629058515857506552

namespace A279078

/-- `A023449(A182308(n))` -/
def P16629058515857506552.Spec : Prop :=
  ∀ n, P16629058515857506552.a n = A279078 n

end A279078

/-!
# A279079: Maximum starting value of X such that repeated replacement of X with X-ceiling(X/9) requires n steps to reach 0.

The programs for A279079, the canonical program `A279079.P11224243107196119271` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A279079 has offset 0).

The definition of A279079 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A279079.P11224243107196119271

`floor(a(n-1)*9/8)+1` with `a(0)=0`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A279079

/-- `floor(a(n-1)*9/8)+1` -/
def P11224243107196119271.Spec : Prop :=
  ∀ n, P11224243107196119271.a n = A279079 n

theorem P11224243107196119271.correct : P11224243107196119271.Spec := by
  intro n
  simp only [A279079]

end A279079

/-! ## A279079.P3865873117876971349

`floor(a(n-1)/8+a(n-1)+1)` with `a(0)=0`
-/

namespace A279079.P3865873117876971349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  ⌊(a (n - 1) : ℚ) / 8 + (a (n - 1) + 1 : ℚ)⌋

end

end A279079.P3865873117876971349

namespace A279079

/-- `floor(a(n-1)/8+a(n-1)+1)` -/
def P3865873117876971349.Spec : Prop :=
  ∀ n, P3865873117876971349.a n = A279079 n

end A279079

/-! ## A279079.P5185238494175384825

`A182361(n)-8`
-/

namespace A279079.P5185238494175384825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182361 n - 8

end

end A279079.P5185238494175384825

namespace A279079

/-- `A182361(n)-8` -/
def P5185238494175384825.Spec : Prop :=
  ∀ n, P5185238494175384825.a n = A279079 n

end A279079

/-! ## A279079.P12247782878655675100

`∑[A120194(n+1)]-1`
-/

namespace A279079.P12247782878655675100
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120194 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A279079.P12247782878655675100

namespace A279079

/-- `∑[A120194(n+1)]-1` -/
def P12247782878655675100.Spec : Prop :=
  ∀ n, P12247782878655675100.a n = A279079 n

end A279079

/-! ## A279079.P11939833842649456821

`∑[A057427(n)*A120194(n+1)]`
-/

namespace A279079.P11939833842649456821
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A120194 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A279079.P11939833842649456821

namespace A279079

/-- `∑[A057427(n)*A120194(n+1)]` -/
def P11939833842649456821.Spec : Prop :=
  ∀ n, P11939833842649456821.a n = A279079 n

end A279079

/-! ## A279079.P11015327963306206115

`∑[A120194(n+1)%A000079(n)]`
-/

namespace A279079.P11015327963306206115
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A120194 (n + 1)) (A000079 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A279079.P11015327963306206115

namespace A279079

/-- `∑[A120194(n+1)%A000079(n)]` -/
def P11015327963306206115.Spec : Prop :=
  ∀ n, P11015327963306206115.a n = A279079 n

end A279079

/-! ## A279079.P9880246022042788394

`∑[A245400(n+1)/9]-1`
-/

namespace A279079.P9880246022042788394
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A245400 (n + 1) : ℚ) / 9

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A279079.P9880246022042788394

namespace A279079

/-- `∑[A245400(n+1)/9]-1` -/
def P9880246022042788394.Spec : Prop :=
  ∀ n, P9880246022042788394.a n = (A279079 n : ℚ)

end A279079

/-! ## A279079.P12092539783320384479

`A023450(A182361(n))`
-/

namespace A279079.P12092539783320384479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023450 (A182361 n).toNat

end

end A279079.P12092539783320384479

namespace A279079

/-- `A023450(A182361(n))` -/
def P12092539783320384479.Spec : Prop :=
  ∀ n, P12092539783320384479.a n = A279079 n

end A279079

/-!
# A279080: Maximum starting value of X such that repeated replacement of X with X-ceiling(X/10) requires n steps to reach 0.

The programs for A279080, the canonical program `A279080.P15597287413257850765` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A279080 has offset 0).

The definition of A279080 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A279080.P15597287413257850765

`floor(a(n-1)*10/9)+1` with `a(0)=0`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A279080

/-- `floor(a(n-1)*10/9)+1` -/
def P15597287413257850765.Spec : Prop :=
  ∀ n, P15597287413257850765.a n = A279080 n

theorem P15597287413257850765.correct : P15597287413257850765.Spec := by
  intro n
  simp only [A279080]

end A279080

/-! ## A279080.P9329881732265959105

`A182362(n)-9`
-/

namespace A279080.P9329881732265959105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182362 n - 9

end

end A279080.P9329881732265959105

namespace A279080

/-- `A182362(n)-9` -/
def P9329881732265959105.Spec : Prop :=
  ∀ n, P9329881732265959105.a n = A279080 n

end A279080

/-! ## A279080.P4056230989511869574

`∑[A120202(n+1)]-1`
-/

namespace A279080.P4056230989511869574
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120202 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A279080.P4056230989511869574

namespace A279080

/-- `∑[A120202(n+1)]-1` -/
def P4056230989511869574.Spec : Prop :=
  ∀ n, P4056230989511869574.a n = A279080 n

end A279080

/-! ## A279080.P7523512659254174962

`∑[and(1, A000040(n+1))*A120202(n+1)]`
-/

namespace A279080.P7523512659254174962
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A000040 (n + 1)) * A120202 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A279080.P7523512659254174962

namespace A279080

/-- `∑[and(1, A000040(n+1))*A120202(n+1)]` -/
def P7523512659254174962.Spec : Prop :=
  ∀ n, P7523512659254174962.a n = A279080 n

end A279080

/-! ## A279080.P11541475582800811858

`A317591(n+2)-10`
-/

namespace A279080.P11541475582800811858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317591 (n + 2) - 10

end

end A279080.P11541475582800811858

namespace A279080

/-- `A317591(n+2)-10` -/
def P11541475582800811858.Spec : Prop :=
  ∀ n, P11541475582800811858.a n = A279080 n

end A279080

/-! ## A279080.P18446700780954773997

`∑[A120202(n+1)%A000079(n)]`
-/

namespace A279080.P18446700780954773997
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A120202 (n + 1)) (A000079 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A279080.P18446700780954773997

namespace A279080

/-- `∑[A120202(n+1)%A000079(n)]` -/
def P18446700780954773997.Spec : Prop :=
  ∀ n, P18446700780954773997.a n = A279080 n

end A279080

/-! ## A279080.P10754656247719791647

`A067251(a(n-1)+1)` with `a(0)=0`
-/

namespace A279080.P10754656247719791647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A067251 (a (n - 1) + 1).toNat

end

end A279080.P10754656247719791647

namespace A279080

/-- `A067251(a(n-1)+1)` -/
def P10754656247719791647.Spec : Prop :=
  ∀ n, P10754656247719791647.a n = A279080 n

end A279080

/-! ## A279080.P7199758826523405009

`A023451(A182362(n))`
-/

namespace A279080.P7199758826523405009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023451 (A182362 n).toNat

end

end A279080.P7199758826523405009

namespace A279080

/-- `A023451(A182362(n))` -/
def P7199758826523405009.Spec : Prop :=
  ∀ n, P7199758826523405009.a n = A279080 n

end A279080

/-! ## A279080.P17320429970453286476

`A023452(A317591(n+2))`
-/

namespace A279080.P17320429970453286476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023452 (A317591 (n + 2)).toNat

end

end A279080.P17320429970453286476

namespace A279080

/-- `A023452(A317591(n+2))` -/
def P17320429970453286476.Spec : Prop :=
  ∀ n, P17320429970453286476.a n = A279080 n

end A279080

/-!
# A279081: Number of divisors of the n-th tetrahedral number.

The programs for A279081, the canonical program `A279081.P11202189863760932497` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A279081 has offset 1).

The definition of A279081 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A279081.P11202189863760932497

`A000005((n+1)*(n+2)*(n+3)/6)`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A279081

/-- `A000005((n+1)*(n+2)*(n+3)/6)` -/
def P11202189863760932497.Spec : Prop :=
  ∀ n, P11202189863760932497.a n = A279081 (n + 1)

theorem P11202189863760932497.correct : P11202189863760932497.Spec := by
  intro n
  simp only [A279081, Nat.add_sub_cancel]

end A279081

/-! ## A279081.P9149274797408430838

`∏{e}[A278252(n+1), #+1]`
-/

namespace A279081.P9149274797408430838
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278252 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (Nat.factorization (f1 n).natAbs p + 1)

end

end A279081.P9149274797408430838

namespace A279081

/-- `∏{e}[A278252(n+1), #+1]` -/
def P9149274797408430838.Spec : Prop :=
  ∀ n, (P9149274797408430838.a n : ℤ) = A279081 (n + 1)

end A279081

/-! ## A279081.P13425926354724383073

`∑{d}[A278252(n+1), gcd(#, A007519(n+1))]`
-/

namespace A279081.P13425926354724383073
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278252 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, Int.gcd (d : ℤ) (A007519 (n + 1))

end

end A279081.P13425926354724383073

namespace A279081

/-- `∑{d}[A278252(n+1), gcd(#, A007519(n+1))]` -/
def P13425926354724383073.Spec : Prop :=
  ∀ n, (P13425926354724383073.a n : ℤ) = A279081 (n + 1)

end A279081

/-! ## A279081.P13996186583799340703

`∏{e}[C(n+3, 3), #+1]`
-/

namespace A279081.P13996186583799340703
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 3) 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1)

end

end A279081.P13996186583799340703

namespace A279081

/-- `∏{e}[C(n+3, 3), #+1]` -/
def P13996186583799340703.Spec : Prop :=
  ∀ n, (P13996186583799340703.a n : ℤ) = A279081 (n + 1)

end A279081

/-! ## A279081.P3582177608816208360

`∏{e}[∑[∑[n+1]], #+1]`
-/

namespace A279081.P3582177608816208360
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1)

end

end A279081.P3582177608816208360

namespace A279081

/-- `∏{e}[∑[∑[n+1]], #+1]` -/
def P3582177608816208360.Spec : Prop :=
  ∀ n, (P3582177608816208360.a n : ℤ) = A279081 (n + 1)

end A279081

/-! ## A279081.P6677887060357375560

`∑{d}[∑[∑[n+1]], ceil(1/#)]`
-/

namespace A279081.P6677887060357375560
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), ⌈1 / (d : ℚ)⌉

end

end A279081.P6677887060357375560

namespace A279081

/-- `∑{d}[∑[∑[n+1]], ceil(1/#)]` -/
def P6677887060357375560.Spec : Prop :=
  ∀ n, P6677887060357375560.a n = A279081 (n + 1)

end A279081

/-! ## A279081.P14145626599847387757

`-∑{d}[∑[∑[n+1]], or(#, -1)]`
-/

namespace A279081.P14145626599847387757
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(∑ d ∈ Nat.divisors (f1 n), Int.lor (d : ℤ) (-1))

end

end A279081.P14145626599847387757

namespace A279081

/-- `-∑{d}[∑[∑[n+1]], or(#, -1)]` -/
def P14145626599847387757.Spec : Prop :=
  ∀ n, P14145626599847387757.a n = A279081 (n + 1)

end A279081

/-! ## A279081.P12689333238110601044

`A048570(A167614(n+2))`
-/

namespace A279081.P12689333238110601044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048570 (A167614 (n + 2)).toNat

end

end A279081.P12689333238110601044

namespace A279081

/-- `A048570(A167614(n+2))` -/
def P12689333238110601044.Spec : Prop :=
  ∀ n, P12689333238110601044.a n = A279081 (n + 1)

end A279081

/-! ## A279081.P7836495577053926143

`A048570(∑[n+3]+n+3)`
-/

namespace A279081.P7836495577053926143
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048570 (∑ j ∈ Finset.range (n + 1), f1 j + (n + 3))

end

end A279081.P7836495577053926143

namespace A279081

/-- `A048570(∑[n+3]+n+3)` -/
def P7836495577053926143.Spec : Prop :=
  ∀ n, P7836495577053926143.a n = A279081 (n + 1)

end A279081

/-!
# A279083: Numbers k such that there exists at least one tetrahedral number with exactly k divisors.

The programs for A279083, there is no canonical definition to state claims against.
-/

/-! ## A279083.P8503611552341454012

`∑[2*a(∑[n]%2)]` with `a(0)=1, a(1)=2, a(2)=1`
-/

namespace A279083.P8503611552341454012
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 1] fun n f1 =>
  2 * f1 ((∑ j ∈ Finset.range (n + 1), f2 j) % 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A279083.P8503611552341454012

/-! ## A279083.P10057871236664094362

`∑[2*a(gcd(2, ∑[n]))]` with `a(0)=1, a(1)=2, a(2)=1`
-/

namespace A279083.P10057871236664094362
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 1] fun n f1 =>
  2 * f1 (Nat.gcd 2 (∑ j ∈ Finset.range (n + 1), f2 j))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A279083.P10057871236664094362

/-! ## A279083.P9390397539213735693

`∑[2*a(and(1, ∑[n]))]` with `a(0)=1, a(1)=2, a(2)=1`
-/

namespace A279083.P9390397539213735693
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 1] fun n f1 =>
  2 * f1 (Nat.land 1 (∑ j ∈ Finset.range (n + 1), f2 j))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A279083.P9390397539213735693

/-! ## A279083.P9025407509397060012

`∑[6-a(n-2)]` with `a(0)=1, a(1)=2, a(2)=1, a(3)=2, a(4)=2`
-/

namespace A279083.P9025407509397060012
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 1, 2, 2] fun n f1 =>
  6 - f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A279083.P9025407509397060012

/-! ## A279083.P5062031851168346352

`char[1]+lt[2*n, ∑{d}[n+1, #]]+1`
-/

namespace A279083.P5062031851168346352
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f4 n), d

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f1 j = n then 1 else 0) + (SequenceMachineLib.nth (fun j => f2 j < f3 j) n + 1)

end

end A279083.P5062031851168346352

/-!
# A279084: Numbers k such that reverse(T(k)) = T(reverse(k)) where T(k) is the k-th triangular number.

The programs for A279084, there is no canonical definition to state claims against.
-/

/-! ## A279084.P15934133228902556160

`A008510(A000038(n)+n)%A008510(2*(n+1))`
-/

namespace A279084.P15934133228902556160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008510 (A000038 n + (n : ℤ)).toNat) (A008510 (2 * (n + 1)))

end

end A279084.P15934133228902556160

/-! ## A279084.P8550815490009176089

`∩[A027754(n+1), A352148(n+1)]`
-/

namespace A279084.P8550815490009176089
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027754 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352148 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A279084.P8550815490009176089

/-! ## A279084.P7038467394536851578

`A033865(lcm(A007090(n), A297026(n+1)))`
-/

namespace A279084.P7038467394536851578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033865 (Int.lcm (A007090 n) (A297026 (n + 1)))

end

end A279084.P7038467394536851578

/-!
# A279085: Number of distinct residues of triangular numbers mod 10^n.

The programs for A279085, there is no canonical definition to state claims against.
-/

/-! ## A279085.P1861146147953810967

`(floor(∑[5^n/3])+1)*2^n`
-/

namespace A279085.P1861146147953810967
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (5 ^ n : ℚ) / 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (⌊∑ j ∈ Finset.range (n + 1), f1 j⌋ + 1) * (2 ^ n : ℤ)

end

end A279085.P1861146147953810967

/-! ## A279085.P15598312428957707415

`lcm(floor(∑[5^n/3])+1, 2^n)`
-/

namespace A279085.P15598312428957707415
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (5 ^ n : ℚ) / 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (⌊∑ j ∈ Finset.range (n + 1), f1 j⌋ + 1) (2 ^ n : ℤ)

end

end A279085.P15598312428957707415

/-! ## A279085.P14349500924341159902

`10*a(n-1)-A213173(n+2)` with `a(0)=1`
-/

namespace A279085.P14349500924341159902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  10 * a (n - 1) - A213173 (n + 2)

end

end A279085.P14349500924341159902

/-! ## A279085.P12245933622729427550

`10*a(n-1)-4*A213173(n)` with `a(0)=1`
-/

namespace A279085.P12245933622729427550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  10 * a (n - 1) - 4 * A213173 n

end

end A279085.P12245933622729427550

/-! ## A279085.P1052519268720495218

`10*a(n-1)-4^A008619(n)` with `a(0)=1`
-/

namespace A279085.P1052519268720495218
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  10 * a (n - 1) - (4 : ℚ) ^ (A008619 n : ℤ)

end

end A279085.P1052519268720495218

/-!
# A279088: Numbers k for which sigma(k) - 3k exceeds sigma(j) - 3j for all j < k.

The programs for A279088, there is no canonical definition to state claims against.
-/

/-! ## A279088.P7988893520291223030

`record[A004778(Δ[A004838(n+1)])]`
-/

namespace A279088.P7988893520291223030
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004838 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004778 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A279088.P7988893520291223030

/-! ## A279088.P2152744144412079898

`A083212(A250048(n+1))`
-/

namespace A279088.P2152744144412079898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083212 (A250048 (n + 1)).toNat

end

end A279088.P2152744144412079898

/-!
# A279089: Record values of A018799 (Smallest nonnegative integer m such that m! begins with n in base 10).

The programs for A279089, there is no canonical definition to state claims against.
-/

/-! ## A279089.P11318252720877955023

`record[A018799(n+1)]`
-/

namespace A279089.P11318252720877955023
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018799 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A279089.P11318252720877955023

/-! ## A279089.P15584701539974760554

`A018799(A279090(n+1))`
-/

namespace A279089.P15584701539974760554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018799 (A279090 (n + 1)).toNat

end

end A279089.P15584701539974760554

/-! ## A279089.P16894199699571836213

`record[A018799(A028310(n))%A000132(n)]`
-/

namespace A279089.P16894199699571836213
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A018799 (A028310 n).toNat) (A000132 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A279089.P16894199699571836213

/-! ## A279089.P8911780214123890161

`record[A018799(A028310(n))]%A007202(n)`
-/

namespace A279089.P8911780214123890161
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018799 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (A007202 n)

end

end A279089.P8911780214123890161

/-! ## A279089.P10082069386850924402

`record[A018799(A065033(n))%A000132(n)]`
-/

namespace A279089.P10082069386850924402
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A018799 (A065033 n).toNat) (A000132 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A279089.P10082069386850924402

/-!
# A279091: Numbers k for which sigma(k) - 4k exceeds sigma(j) - 4j for all j < k.

The programs for A279091, there is no canonical definition to state claims against.
-/

/-! ## A279091.P9251976238127206251

`A061799(A061759(2*(n+2))^A352517(n))`
-/

namespace A279091.P9251976238127206251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061799 (SequenceMachineLib.roundAway ((A061759 (2 * (n + 2)) : ℚ) ^ (A352517 n : ℤ))).toNat

end

end A279091.P9251976238127206251

/-!
# A279096: Numbers k such that sigma(k^3) is prime.

The programs for A279096, there is no canonical definition to state claims against.
-/

/-! ## A279096.P7303094947717478710

`A036454(A272341(n+1)+1)`
-/

namespace A279096.P7303094947717478710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036454 (A272341 (n + 1) + 1).toNat

end

end A279096.P7303094947717478710

/-! ## A279096.P18013710139208689879

`record[A326764(A269640(n+1))²]`
-/

namespace A279096.P18013710139208689879
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326764 (A269640 (n + 1)).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A279096.P18013710139208689879

/-! ## A279096.P14907323796603238946

`A156251(A354785(n+1)+1)²`
-/

namespace A279096.P14907323796603238946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156251 (A354785 (n + 1) + 1).toNat ^ 2

end

end A279096.P14907323796603238946

/-! ## A279096.P13010891438152260673

`A036454(∑{e}[∏[A233583(n+1)], #])`
-/

namespace A279096.P13010891438152260673
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036454 (∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p)

end

end A279096.P13010891438152260673

/-!
# A279097: Numbers k such that prime(k) divides primorial(j) + 1 for some j.

The programs for A279097, there is no canonical definition to state claims against.
-/

/-! ## A279097.P2004299680076042560

`record[A061395(A113165(n+1))]`
-/

namespace A279097.P2004299680076042560
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (A113165 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A279097.P2004299680076042560

/-! ## A279097.P4998513362192580374

`A000720(p?[A113165(n+1)])`
-/

namespace A279097.P4998513362192580374
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113165 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A279097.P4998513362192580374

/-! ## A279097.P5171263280080678554

`A061395(p?[A113165(n+1)])`
-/

namespace A279097.P5171263280080678554
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113165 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A279097.P5171263280080678554

/-! ## A279097.P1487717455644181771

`A000720(record[A006530(A113165(n+1))])`
-/

namespace A279097.P1487717455644181771
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A113165 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A279097.P1487717455644181771

/-! ## A279097.P2122282522059233637

`A316436(2*p?[A113165(n+1)])-1`
-/

namespace A279097.P2122282522059233637
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113165 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316436 (2 * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat - 1

end

end A279097.P2122282522059233637

/-! ## A279097.P9706531829302595144

`A289508(p?[A113165(n+1)])`
-/

namespace A279097.P9706531829302595144
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113165 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289508 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A279097.P9706531829302595144

/-! ## A279097.P13720354528810111531

`A003963(p?[A113165(n+1)])`
-/

namespace A279097.P13720354528810111531
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113165 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A279097.P13720354528810111531

/-! ## A279097.P15248531154013903096

`A049084(p?[A113165(n+1)])`
-/

namespace A279097.P15248531154013903096
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113165 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049084 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A279097.P15248531154013903096

/-! ## A279097.P10398723675883220702

`A055396(p?[A113165(n+1)])`
-/

namespace A279097.P10398723675883220702
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113165 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A279097.P10398723675883220702

/-! ## A279097.P17509465361146033208

`A064839(p?[A113165(n+1)])`
-/

namespace A279097.P17509465361146033208
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113165 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064839 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A279097.P17509465361146033208

/-! ## A279097.P4237417531295268602

`A225395(p?[A113165(n+1)])`
-/

namespace A279097.P4237417531295268602
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113165 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225395 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A279097.P4237417531295268602

/-! ## A279097.P6542591309121482873

`A230980(p?[A113165(n+1)])`
-/

namespace A279097.P6542591309121482873
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113165 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230980 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A279097.P6542591309121482873

/-! ## A279097.P12835311868061776200

`A335286(p?[A113165(n+1)])`
-/

namespace A279097.P12835311868061776200
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113165 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335286 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A279097.P12835311868061776200

/-! ## A279097.P7191634871584670757

`A036234(p?[A113165(n+1)]-1)`
-/

namespace A279097.P7191634871584670757
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113165 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036234 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 1).toNat

end

end A279097.P7191634871584670757

/-! ## A279097.P3664358113300692088

`A000720(record[A014963(A113165(n+1))])`
-/

namespace A279097.P3664358113300692088
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A113165 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A279097.P3664358113300692088

/-! ## A279097.P5549169537708556908

`A324105(p?[A113165(n+1)])`
-/

namespace A279097.P5549169537708556908
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113165 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324105 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A279097.P5549169537708556908

/-!
# A279098: Numbers k such that prime(k) divides primorial(j) + 1 for exactly one integer j.

The programs for A279098, there is no canonical definition to state claims against.
-/

/-! ## A279098.P3846215649659000051

`∩[A122079(n+1), A279097(n+1)]`
-/

namespace A279098.P3846215649659000051
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122079 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279097 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A279098.P3846215649659000051

/-! ## A279098.P13579627128765420364

`A279097(A185284(Δ[n²])+n+1)`
-/

namespace A279098.P13579627128765420364
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279097 (A185284 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + (n + 1 : ℤ)).toNat

end

end A279098.P13579627128765420364

/-! ## A279098.P18241251037602074596

`A061395(A113165(n+1)*A346076(n))`
-/

namespace A279098.P18241251037602074596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (A113165 (n + 1) * A346076 n).toNat

end

end A279098.P18241251037602074596

/-! ## A279098.P18317186406969993381

`A061395(lcm(A113165(n+1), A346076(n)))`
-/

namespace A279098.P18317186406969993381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (Int.lcm (A113165 (n + 1)) (A346076 n))

end

end A279098.P18317186406969993381

/-!
# A279099: Numbers k such that prime(k) divides primorial(j) + 1 for exactly two integers j.

The programs for A279099, there is no canonical definition to state claims against.
-/

/-! ## A279099.P12076520315615414501

`A000720(A297891(n+1))`
-/

namespace A279099.P12076520315615414501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A297891 (n + 1)).toNat

end

end A279099.P12076520315615414501

/-! ## A279099.P12809806839731212781

`A061395(p?[A297891(n+1)])`
-/

namespace A279099.P12809806839731212781
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297891 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A279099.P12809806839731212781

/-! ## A279099.P5306466310906833902

`A061395(or(1, A297891(n+1)))`
-/

namespace A279099.P5306466310906833902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (Int.lor 1 (A297891 (n + 1))).toNat

end

end A279099.P5306466310906833902

/-! ## A279099.P17470219778577546191

`∑{d}[A297891(n+1), A061395(#)]`
-/

namespace A279099.P17470219778577546191
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297891 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A061395 d

end

end A279099.P17470219778577546191

/-! ## A279099.P16497314225480802052

`A061395(∏{d}[A297891(n+1), #])`
-/

namespace A279099.P16497314225480802052
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297891 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (∏ d ∈ Nat.divisors (f1 n).natAbs, d)

end

end A279099.P16497314225480802052

/-! ## A279099.P581279549462709291

`A061395(∑{p}[A297891(n+1), #])`
-/

namespace A279099.P581279549462709291
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297891 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (∑ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A279099.P581279549462709291

/-! ## A279099.P12632679382963089119

`A061395(∏{p}[A297891(n+1), #])`
-/

namespace A279099.P12632679382963089119
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297891 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A279099.P12632679382963089119

/-! ## A279099.P6348539940057101882

`A061395(A297891(n+1))-A000038(A006005(n+1))`
-/

namespace A279099.P6348539940057101882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (A297891 (n + 1)).toNat - A000038 (A006005 (n + 1)).toNat

end

end A279099.P6348539940057101882

/-! ## A279099.P8013026692820423332

`A061395(A297891(n+1))-A000038(A006093(n+1))`
-/

namespace A279099.P8013026692820423332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (A297891 (n + 1)).toNat - A000038 (A006093 (n + 1)).toNat

end

end A279099.P8013026692820423332

/-! ## A279099.P15741771413601496177

`A061395(A297891(n+1))-A000038(A007445(n+1))`
-/

namespace A279099.P15741771413601496177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (A297891 (n + 1)).toNat - A000038 (A007445 (n + 1)).toNat

end

end A279099.P15741771413601496177

