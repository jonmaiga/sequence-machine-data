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
import Seq.B000.C022
import Seq.B000.C024
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C031
import Seq.B000.C036
import Seq.B000.C038
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C005
import Seq.B001.C007
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
import Seq.B003.C004
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
# A372400: Position of 30^n among 5-smooth numbers A051037.

The programs for A372400, there is no canonical definition to state claims against.
-/

/-! ## A372400.P12677265678513445140

`∑[(4*n)²+2]-1-A001221(A105045(2*n+1))`
-/

namespace A372400.P12677265678513445140
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (4 * n) ^ 2 + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1 - A001221 (A105045 (2 * n + 1)).toNat

end

end A372400.P12677265678513445140

/-! ## A372400.P8288739226833267519

`A063496(n+1)-A358479(A068882(n+3))`
-/

namespace A372400.P8288739226833267519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063496 (n + 1) - A358479 (A068882 (n + 3)).toNat

end

end A372400.P8288739226833267519

/-!
# A372403: Number of k < 2^n that are neither squarefree nor prime powers.

The programs for A372403, there is no canonical definition to state claims against.
-/

/-! ## A372403.P14348010576717618109

`2^(n+4)-A036386(n+4)-A143658(n+4)`
-/

namespace A372403.P14348010576717618109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ (n + 4) : ℤ) - A036386 (n + 4) - A143658 (n + 4)

end

end A372403.P14348010576717618109

/-! ## A372403.P5206295912781714889

`A379771(A171494(n+1))`
-/

namespace A372403.P5206295912781714889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379771 (A171494 (n + 1)).toNat

end

end A372403.P5206295912781714889

/-! ## A372403.P13331881699223224954

`A379771(2*A171494(n))`
-/

namespace A372403.P13331881699223224954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379771 (2 * A171494 n).toNat

end

end A372403.P13331881699223224954

/-!
# A372404: Powerful numbers that are neither prime powers nor cubefree.

The programs for A372404, there is no canonical definition to state claims against.
-/

/-! ## A372404.P12928548298773602114

`∪[A052486(n+1), A391416(n+1)]`
-/

namespace A372404.P12928548298773602114
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052486 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391416 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A372404.P12928548298773602114

/-! ## A372404.P13705551580717983664

`∪[A359280(n+1), A372695(n+1)]`
-/

namespace A372404.P13705551580717983664
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359280 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372695 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A372404.P13705551580717983664

/-! ## A372404.P13463922817505233668

`∪[A359280(n+1), A376936(n+1)]`
-/

namespace A372404.P13463922817505233668
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359280 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376936 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A372404.P13463922817505233668

/-! ## A372404.P16866052046856426

`∪[A359280(n+1), A387255(n+1)]`
-/

namespace A372404.P16866052046856426
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359280 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387255 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A372404.P16866052046856426

/-! ## A372404.P18283419052639955788

`∪[A359280(n+1), A388304(n+1)]`
-/

namespace A372404.P18283419052639955788
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359280 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A388304 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A372404.P18283419052639955788

/-! ## A372404.P14513755510658308543

`∪[A359280(n+1), A391416(n+1)]`
-/

namespace A372404.P14513755510658308543
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359280 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391416 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A372404.P14513755510658308543

/-! ## A372404.P8400123162437116555

`∪[A372695(n+1), A389558(n+1)]`
-/

namespace A372404.P8400123162437116555
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372695 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389558 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A372404.P8400123162437116555

/-! ## A372404.P1852236720260437976

`∪[A376936(n+1), A389558(n+1)]`
-/

namespace A372404.P1852236720260437976
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376936 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389558 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A372404.P1852236720260437976

/-! ## A372404.P16071882565168968775

`∪[A376936(n+1), A391491(n+1)]`
-/

namespace A372404.P16071882565168968775
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376936 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391491 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A372404.P16071882565168968775

/-! ## A372404.P12579222336451129796

`∩[A286708(n+1), A320966(n+1)]`
-/

namespace A372404.P12579222336451129796
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286708 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320966 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A372404.P12579222336451129796

/-! ## A372404.P2826353173483320588

`∩[A001694(n+1), A389528(n+1)]`
-/

namespace A372404.P2826353173483320588
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001694 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389528 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A372404.P2826353173483320588

/-! ## A372404.P16022284516066863219

`∩[A286708(n+1), A389528(n+1)]`
-/

namespace A372404.P16022284516066863219
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286708 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389528 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A372404.P16022284516066863219

/-! ## A372404.P15136618623827145569

`∩[A320966(n+1), A389528(n+1)]`
-/

namespace A372404.P15136618623827145569
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320966 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389528 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A372404.P15136618623827145569

/-! ## A372404.P17450533775903356762

`∩[A059172(n+1), A286708(n+1)]`
-/

namespace A372404.P17450533775903356762
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059172 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286708 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A372404.P17450533775903356762

/-! ## A372404.P15610575389084085805

`∩[A320966(n+1), A370266(n+1)]`
-/

namespace A372404.P15610575389084085805
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320966 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370266 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A372404.P15610575389084085805

/-! ## A372404.P6626472874359223010

`∩[A036785(n+1), A320966(n+1)]`
-/

namespace A372404.P6626472874359223010
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036785 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320966 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A372404.P6626472874359223010

/-! ## A372404.P5788350094744775175

`filter[A286708(n+1), A380439(#)]`
-/

namespace A372404.P5788350094744775175
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286708 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A380439 (f1 j).toNat = 1) n)

end

end A372404.P5788350094744775175

/-! ## A372404.P8579408345071532677

`filter[A320966(n+1), A355447(#)]`
-/

namespace A372404.P8579408345071532677
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320966 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355447 (f1 j).toNat = 1) n)

end

end A372404.P8579408345071532677

/-! ## A372404.P14728015199712422957

`filter[A320966(n+1), A379958(#)]`
-/

namespace A372404.P14728015199712422957
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320966 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A379958 (f1 j).toNat = 1) n)

end

end A372404.P14728015199712422957

/-! ## A372404.P3331363707543690326

`∩[A320966(n+1), A375397(n+1)]`
-/

namespace A372404.P3331363707543690326
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320966 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375397 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A372404.P3331363707543690326

/-!
# A372405: Exponentially powerful numbers whose prime factorization exponents are all powerful numbers > 1.

The programs for A372405, there is no canonical definition to state claims against.
-/

/-! ## A372405.P16166147710125216854

`∏{e}[A000244(n), A277562(#)]`
-/

namespace A372405.P16166147710125216854
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000244 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A277562 (Nat.factorization (f1 n).natAbs p)

end

end A372405.P16166147710125216854

/-! ## A372405.P1884748289196880506

`filter[A389500(n+1), A216280(#)]`
-/

namespace A372405.P1884748289196880506
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389500 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A216280 (f1 j).toNat = 1) n)

end

end A372405.P1884748289196880506

/-!
# A372406: a(n) is the size of the largest set of positive integers S from 1..prime(n)-1 such that for any subset R of S, Sum {R} + prime(n) is prime.

The programs for A372406, there is no canonical definition to state claims against.
-/

/-! ## A372406.P2426571879453232952

`A055642(n*A085790(n+3)-A337485(n))`
-/

namespace A372406.P2426571879453232952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 ((n : ℤ) * A085790 (n + 3) - A337485 n).toNat

end

end A372406.P2426571879453232952

/-! ## A372406.P7906380679264947539

`A055642(n*A085790(n+3))`
-/

namespace A372406.P7906380679264947539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 ((n : ℤ) * A085790 (n + 3)).toNat

end

end A372406.P7906380679264947539

/-! ## A372406.P262973330992899542

`A081604(n-A128113(3*n+1))`
-/

namespace A372406.P262973330992899542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081604 ((n : ℤ) - A128113 (3 * n + 1)).toNat

end

end A372406.P262973330992899542

/-! ## A372406.P1933988020098084617

`A043568(A191211(3*n+1)+A174905(n+1))`
-/

namespace A372406.P1933988020098084617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043568 (A191211 (3 * n + 1) + A174905 (n + 1)).toNat

end

end A372406.P1933988020098084617

/-! ## A372406.P7383343132039101241

`A038605(A156262(2*(n+1))+A156256(3*(n+1)))`
-/

namespace A372406.P7383343132039101241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038605 (A156262 (2 * (n + 1)) + A156256 (3 * (n + 1))).toNat

end

end A372406.P7383343132039101241

/-!
# A372410: Coefficient of x^n in the expansion of ( (1-x+x^2) / (1-x)^3 )^n.

The programs for A372410, there is no canonical definition to state claims against.
-/

/-! ## A372410.P15311049567435734732

`A124279(A139274(n))`
-/

namespace A372410.P15311049567435734732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124279 (A139274 n).toNat

end

end A372410.P15311049567435734732

/-! ## A372410.P14643616408723645290

`A005185(A278396(n)+A010815(n))`
-/

namespace A372410.P14643616408723645290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005185 (A278396 n + A010815 n).toNat

end

end A372410.P14643616408723645290

/-!
# A372411: Coefficient of x^n in the expansion of ( (1-x+x^2)^2 / (1-x)^3 )^n.

The programs for A372411, there is no canonical definition to state claims against.
-/

/-! ## A372411.P8697887311293985347

`A116407(∑[4*n])`
-/

namespace A372411.P8697887311293985347
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116407 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A372411.P8697887311293985347

/-! ## A372411.P5526979865657255594

`A008624(A292838(n)+A028310(n))`
-/

namespace A372411.P5526979865657255594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008624 (A292838 n + A028310 n).toNat

end

end A372411.P5526979865657255594

/-!
# A372412: Coefficient of x^n in the expansion of ( (1-x+x^2) / (1-x) )^(3*n).

The programs for A372412, there is no canonical definition to state claims against.
-/

/-! ## A372412.P13042709431291116350

`A097230(A139274(n))`
-/

namespace A372412.P13042709431291116350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097230 (A139274 n).toNat

end

end A372412.P13042709431291116350

/-! ## A372412.P4252519546342363677

`A097230((3*n)²-A002378(n))`
-/

namespace A372412.P4252519546342363677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097230 (((3 * n) ^ 2 : ℤ) - A002378 n).toNat

end

end A372412.P4252519546342363677

/-!
# A372414: Coefficient of x^n in the expansion of ( (1-x+x^3) / (1-x)^2 )^n.

The programs for A372414, there is no canonical definition to state claims against.
-/

/-! ## A372414.P1227890234028016989

`A296045(n)-A185264(A000032(n))`
-/

namespace A372414.P1227890234028016989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296045 n - A185264 (A000032 n).toNat

end

end A372414.P1227890234028016989

/-! ## A372414.P14191064072965517687

`xor(A296045(n), A359896(A075851(n)))`
-/

namespace A372414.P14191064072965517687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A296045 n) (A359896 (A075851 n).toNat)

end

end A372414.P14191064072965517687

/-! ## A372414.P3928066366964783041

`A296045(n)-A326221(A085298(n+1))`
-/

namespace A372414.P3928066366964783041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296045 n - A326221 (A085298 (n + 1)).toNat

end

end A372414.P3928066366964783041

/-!
# A372415: Coefficient of x^n in the expansion of ( (1-x+x^3) / (1-x)^3 )^n.

The programs for A372415, there is no canonical definition to state claims against.
-/

/-! ## A372415.P14662425091452509540

`A325829(A372476(n))`
-/

namespace A372415.P14662425091452509540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325829 (A372476 n).toNat

end

end A372415.P14662425091452509540

/-! ## A372415.P10995439926265932695

`A004526(2*A372476(n))`
-/

namespace A372415.P10995439926265932695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (2 * A372476 n).toNat

end

end A372415.P10995439926265932695

/-!
# A372417: Coefficient of x^n in the expansion of ( (1-x+x^3)^2 / (1-x)^3 )^n.

The programs for A372417, there is no canonical definition to state claims against.
-/

/-! ## A372417.P18345904574505713399

`A008618(A016269(n)-A006452(n))`
-/

namespace A372417.P18345904574505713399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008618 (A016269 n - A006452 n).toNat

end

end A372417.P18345904574505713399

/-! ## A372417.P7443258904967312970

`A165125(A002457(n)-A000217(n))`
-/

namespace A372417.P7443258904967312970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165125 (A002457 n - A000217 n).toNat

end

end A372417.P7443258904967312970

/-!
# A372418: Expansion of (1/x) * Series_Reversion( x * (1-x)^2 / (1-x+x^3)^2 ).

The programs for A372418, there is no canonical definition to state claims against.
-/

/-! ## A372418.P9829975432025916986

`A309589(A369011(n))`
-/

namespace A372418.P9829975432025916986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309589 (A369011 n).toNat

end

end A372418.P9829975432025916986

/-!
# A372419: Products of prime triples (p, p+4, p+6) where p = A022005(n).

The programs for A372419, there is no canonical definition to state claims against.
-/

/-! ## A372419.P6278401384826633004

`A022005(n+1)*A073649(n+1)*A098413(n+1)`
-/

namespace A372419.P6278401384826633004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022005 (n + 1) * A073649 (n + 1) * A098413 (n + 1)

end

end A372419.P6278401384826633004

/-! ## A372419.P14216145073504231973

`∩[A195118(n+1), A375008(n+1)]`
-/

namespace A372419.P14216145073504231973
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195118 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375008 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A372419.P14216145073504231973

/-!
# A372420: Expansion of (1 + x) / ((1 - 2*x)*sqrt(1 - 4*x)).

The programs for A372420, the canonical program `A372420.P2955460865026778528` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A372420 has offset 0).

The definition of A372420 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A028270, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A372420.P2955460865026778528

`2*a(n-1)+A028270(n)` with `a(0)=1`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A372420

/-- `2*a(n-1)+A028270(n)` -/
def P2955460865026778528.Spec : Prop :=
  ∀ n, P2955460865026778528.a n = A372420 n

theorem P2955460865026778528.correct : P2955460865026778528.Spec := by
  intro n
  simp only [A372420]

end A372420

/-! ## A372420.P10860498311730400138

`4*A000984(n)-3*A029759(n)`
-/

namespace A372420.P10860498311730400138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A000984 n - 3 * A029759 n

end

end A372420.P10860498311730400138

namespace A372420

/-- `4*A000984(n)-3*A029759(n)` -/
def P10860498311730400138.Spec : Prop :=
  ∀ n, P10860498311730400138.a n = A372420 n

end A372420

/-! ## A372420.P16298559982260555211

`(5*A188622(n)-2*A126966(n))/3`
-/

namespace A372420.P16298559982260555211
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (5 * A188622 n - 2 * A126966 n : ℚ) / 3

end

end A372420.P16298559982260555211

namespace A372420

/-- `(5*A188622(n)-2*A126966(n))/3` -/
def P16298559982260555211.Spec : Prop :=
  ∀ n, P16298559982260555211.a n = (A372420 n : ℚ)

end A372420

/-! ## A372420.P13205343205099029807

`2*a(n-1)+C(2*n, n)+C(2*n-2, n-1)` with `a(0)=1`
-/

namespace A372420.P13205343205099029807
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  2 * a (n - 1) + Nat.choose (2 * n) n + Nat.choose ((2 * n : ℤ) - 2).toNat ((n : ℤ) - 1).toNat

end

end A372420.P13205343205099029807

namespace A372420

/-- `2*a(n-1)+C(2*n, n)+C(2*n-2, n-1)` -/
def P13205343205099029807.Spec : Prop :=
  ∀ n, (P13205343205099029807.a n : ℤ) = A372420 n

end A372420

/-! ## A372420.P15708804393075650452

`2*A188622(n)-A029759(n)`
-/

namespace A372420.P15708804393075650452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A188622 n - A029759 n

end

end A372420.P15708804393075650452

namespace A372420

/-- `2*A188622(n)-A029759(n)` -/
def P15708804393075650452.Spec : Prop :=
  ∀ n, P15708804393075650452.a n = A372420 n

end A372420

/-! ## A372420.P16286461268584441393

`2*A082590(n)-A188622(n)`
-/

namespace A372420.P16286461268584441393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A082590 n - A188622 n

end

end A372420.P16286461268584441393

namespace A372420

/-- `2*A082590(n)-A188622(n)` -/
def P16286461268584441393.Spec : Prop :=
  ∀ n, P16286461268584441393.a n = A372420 n

end A372420

/-! ## A372420.P4742854883072832958

`(A372239(n)+A082590(n))/2`
-/

namespace A372420.P4742854883072832958
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A372239 n + A082590 n : ℚ) / 2

end

end A372420.P4742854883072832958

namespace A372420

/-- `(A372239(n)+A082590(n))/2` -/
def P4742854883072832958.Spec : Prop :=
  ∀ n, P4742854883072832958.a n = (A372420 n : ℚ)

end A372420

/-! ## A372420.P17197203874482339790

`(A372611(n)+A188622(n))/2`
-/

namespace A372420.P17197203874482339790
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A372611 n + A188622 n : ℚ) / 2

end

end A372420.P17197203874482339790

namespace A372420

/-- `(A372611(n)+A188622(n))/2` -/
def P17197203874482339790.Spec : Prop :=
  ∀ n, P17197203874482339790.a n = (A372420 n : ℚ)

end A372420

/-! ## A372420.P6780315267322655282

`2*A372239(n)-A372611(n)`
-/

namespace A372420.P6780315267322655282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A372239 n - A372611 n

end

end A372420.P6780315267322655282

namespace A372420

/-- `2*A372239(n)-A372611(n)` -/
def P6780315267322655282.Spec : Prop :=
  ∀ n, P6780315267322655282.a n = A372420 n

end A372420

/-! ## A372420.P16800381495271955967

`A029759(n)+A082590(n)-A126966(n)`
-/

namespace A372420.P16800381495271955967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029759 n + (A082590 n - A126966 n)

end

end A372420.P16800381495271955967

namespace A372420

/-- `A029759(n)+A082590(n)-A126966(n)` -/
def P16800381495271955967.Spec : Prop :=
  ∀ n, P16800381495271955967.a n = A372420 n

end A372420

/-! ## A372420.P15743392828178046631

`A082590(n)+A188622(n)-A000984(n)`
-/

namespace A372420.P15743392828178046631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082590 n + (A188622 n - A000984 n)

end

end A372420.P15743392828178046631

namespace A372420

/-- `A082590(n)+A188622(n)-A000984(n)` -/
def P15743392828178046631.Spec : Prop :=
  ∀ n, P15743392828178046631.a n = A372420 n

end A372420

/-! ## A372420.P2034242951950016756

`A000984(n)+A188622(n)-A126966(n)`
-/

namespace A372420.P2034242951950016756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000984 n + (A188622 n - A126966 n)

end

end A372420.P2034242951950016756

namespace A372420

/-- `A000984(n)+A188622(n)-A126966(n)` -/
def P2034242951950016756.Spec : Prop :=
  ∀ n, P2034242951950016756.a n = A372420 n

end A372420

/-! ## A372420.P11549829129420485729

`A029759(n)+A372239(n)-A000984(n)`
-/

namespace A372420.P11549829129420485729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029759 n + (A372239 n - A000984 n)

end

end A372420.P11549829129420485729

namespace A372420

/-- `A029759(n)+A372239(n)-A000984(n)` -/
def P11549829129420485729.Spec : Prop :=
  ∀ n, P11549829129420485729.a n = A372420 n

end A372420

/-! ## A372420.P14003168522622947563

`A000984(n)+A372611(n)-A082590(n)`
-/

namespace A372420.P14003168522622947563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000984 n + (A372611 n - A082590 n)

end

end A372420.P14003168522622947563

namespace A372420

/-- `A000984(n)+A372611(n)-A082590(n)` -/
def P14003168522622947563.Spec : Prop :=
  ∀ n, P14003168522622947563.a n = A372420 n

end A372420

/-! ## A372420.P8932222300127728515

`A126966(n)+A372611(n)-A000984(n)`
-/

namespace A372420.P8932222300127728515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126966 n + (A372611 n - A000984 n)

end

end A372420.P8932222300127728515

namespace A372420

/-- `A126966(n)+A372611(n)-A000984(n)` -/
def P8932222300127728515.Spec : Prop :=
  ∀ n, P8932222300127728515.a n = A372420 n

end A372420

/-! ## A372420.P10969844308007275247

`A126966(n)+A372239(n)-A029759(n)`
-/

namespace A372420.P10969844308007275247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126966 n + (A372239 n - A029759 n)

end

end A372420.P10969844308007275247

namespace A372420

/-- `A126966(n)+A372239(n)-A029759(n)` -/
def P10969844308007275247.Spec : Prop :=
  ∀ n, P10969844308007275247.a n = A372420 n

end A372420

/-! ## A372420.P4086775835964838814

`A188622(n)+A372239(n)-A082590(n)`
-/

namespace A372420.P4086775835964838814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188622 n + (A372239 n - A082590 n)

end

end A372420.P4086775835964838814

namespace A372420

/-- `A188622(n)+A372239(n)-A082590(n)` -/
def P4086775835964838814.Spec : Prop :=
  ∀ n, P4086775835964838814.a n = A372420 n

end A372420

/-! ## A372420.P16805393308897581400

`A082590(n)+A372611(n)-A372239(n)`
-/

namespace A372420.P16805393308897581400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082590 n + (A372611 n - A372239 n)

end

end A372420.P16805393308897581400

namespace A372420

/-- `A082590(n)+A372611(n)-A372239(n)` -/
def P16805393308897581400.Spec : Prop :=
  ∀ n, P16805393308897581400.a n = A372420 n

end A372420

/-!
# A372421: Number of steps required to kill the hydra in a version of the hydra game (see comments) where, at each step, the rightmost head is chopped off and new heads grow to the left.

The programs for A372421, the canonical program `A372421.P10170577374281833840` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A372421 has offset 0).

The definition of A372421 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A372421.P151230186669011896

`a(n-1)*(a(n-1)+1)/2+n` with `a(0)=0, a(1)=1`
-/

namespace A372421.P151230186669011896
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (n - 1) * (a (n - 1) + 1) / 2 + (n : ℚ)

end

end A372421.P151230186669011896

namespace A372421

/-- `a(n-1)*(a(n-1)+1)/2+n` -/
def P151230186669011896.Spec : Prop :=
  ∀ n, P151230186669011896.a n = (A372421 n : ℚ)

end A372421

/-! ## A372421.P10170577374281833840

`A000217(a(n-1))+n` with `a(0)=0`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A372421

/-- `A000217(a(n-1))+n` -/
def P10170577374281833840.Spec : Prop :=
  ∀ n, P10170577374281833840.a n = A372421 n

theorem P10170577374281833840.correct : P10170577374281833840.Spec := by
  intro n
  simp only [A372421]

end A372421

/-! ## A372421.P16133544068132018344

`C(a(n-1)+1, 2)+n` with `a(0)=0`
-/

namespace A372421.P16133544068132018344
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  Nat.choose (a (n - 1) + 1) 2 + n

end

end A372421.P16133544068132018344

namespace A372421

/-- `C(a(n-1)+1, 2)+n` -/
def P16133544068132018344.Spec : Prop :=
  ∀ n, (P16133544068132018344.a n : ℤ) = A372421 n

end A372421

/-! ## A372421.P13685304620985339282

`(a(n-1)+a(n-1)²)/2+n` with `a(0)=0`
-/

namespace A372421.P13685304620985339282
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0] fun n a =>
  (a (n - 1) + a (n - 1) ^ 2) / 2 + (n : ℚ)

end

end A372421.P13685304620985339282

namespace A372421

/-- `(a(n-1)+a(n-1)²)/2+n` -/
def P13685304620985339282.Spec : Prop :=
  ∀ n, P13685304620985339282.a n = (A372421 n : ℚ)

end A372421

/-! ## A372421.P12524193054111332539

`a(n-1)²-(C(a(n-1), 2)-n)` with `a(0)=0`
-/

namespace A372421.P12524193054111332539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) ^ 2 - ((Nat.choose (a (n - 1)).toNat 2 : ℤ) - (n : ℤ))

end

end A372421.P12524193054111332539

namespace A372421

/-- `a(n-1)²-(C(a(n-1), 2)-n)` -/
def P12524193054111332539.Spec : Prop :=
  ∀ n, P12524193054111332539.a n = A372421 n

end A372421

/-!
# A372422: a(n) is the numerator of the expected depth of the tree representing the process of eliminating from n people a random group by tossing coins, and repeating this process recursively until a single loser is determined.

The programs for A372422, there is no canonical definition to state claims against.
-/

/-! ## A372422.P9839577510016714434

`A364959(a(n-1))` with `a(0)=0, a(1)=2, a(2)=7, a(3)=8`
-/

namespace A372422.P9839577510016714434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 2, 7, 8] fun n a =>
  A364959 (a (n - 1)).toNat

end

end A372422.P9839577510016714434

/-!
# A372425: a(n) are the denominators corresponding to A372424(n).

The programs for A372425, there is no canonical definition to state claims against.
-/

/-! ## A372425.P2043004502148729097

`A134678(or(n, a(n-1)))` with `a(0)=1`
-/

namespace A372425.P2043004502148729097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A134678 (Int.lor (n : ℤ) (a (n - 1))).toNat

end

end A372425.P2043004502148729097

/-!
# A372427: Numbers whose binary indices and prime indices have the same sum.

The programs for A372427, the canonical program `A372427.P14110798045514319618` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A372427 has offset 1).

The definition of A372427 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 109 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A372427.P28600593912978628

`eq[0, A372428(n+1)]+1`
-/

namespace A372427.P28600593912978628
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372428 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A372427.P28600593912978628

namespace A372427

/-- `eq[0, A372428(n+1)]+1` -/
def P28600593912978628.Spec : Prop :=
  ∀ n, (P28600593912978628.a n : ℤ) = A372427 (n + 1)

end A372427

/-! ## A372427.P14110798045514319618

`eq[A029931(n+1), A056239(n+1)]+1`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A372427

/-- `eq[A029931(n+1), A056239(n+1)]+1` -/
def P14110798045514319618.Spec : Prop :=
  ∀ n, (P14110798045514319618.a n : ℤ) = A372427 (n + 1)

theorem P14110798045514319618.correct : P14110798045514319618.Spec := by
  intro n
  simp only [A372427, Nat.add_sub_cancel]

end A372427

/-!
# A372428: Sum of binary indices of n minus sum of prime indices of n.

The programs for A372428, the canonical program `A372428.P2818152399425757244` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A372428 has offset 1).

The definition of A372428 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A029931, A056239, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A372428.P2818152399425757244

`A029931(n+1)-A056239(n+1)`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A372428

/-- `A029931(n+1)-A056239(n+1)` -/
def P2818152399425757244.Spec : Prop :=
  ∀ n, P2818152399425757244.a n = A372428 (n + 1)

theorem P2818152399425757244.correct : P2818152399425757244.Spec := by
  intro n
  simp only [A372428, Nat.add_sub_cancel]

end A372428

/-! ## A372428.P1533356829844569234

`∑[A087810(n+1)]-A056239(n+1)`
-/

namespace A372428.P1533356829844569234
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087810 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A056239 (n + 1)

end

end A372428.P1533356829844569234

namespace A372428

/-- `∑[A087810(n+1)]-A056239(n+1)` -/
def P1533356829844569234.Spec : Prop :=
  ∀ n, P1533356829844569234.a n = A372428 (n + 1)

end A372428

/-! ## A372428.P16772229014081857174

`∑[A087810(n+1)]-(A316436(2*(n+1))-1)`
-/

namespace A372428.P16772229014081857174
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087810 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (A316436 (2 * (n + 1)) - 1)

end

end A372428.P16772229014081857174

namespace A372428

/-- `∑[A087810(n+1)]-(A316436(2*(n+1))-1)` -/
def P16772229014081857174.Spec : Prop :=
  ∀ n, P16772229014081857174.a n = A372428 (n + 1)

end A372428

/-! ## A372428.P886200733011214189

`A359042(A059893(n+1))-A056239(n+1)`
-/

namespace A372428.P886200733011214189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359042 (A059893 (n + 1)).toNat - A056239 (n + 1)

end

end A372428.P886200733011214189

namespace A372428

/-- `A359042(A059893(n+1))-A056239(n+1)` -/
def P886200733011214189.Spec : Prop :=
  ∀ n, P886200733011214189.a n = A372428 (n + 1)

end A372428

/-! ## A372428.P13753448386751929110

`A073642(2*n+3)-A056239(n+1)`
-/

namespace A372428.P13753448386751929110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073642 (2 * n + 3) - A056239 (n + 1)

end

end A372428.P13753448386751929110

namespace A372428

/-- `A073642(2*n+3)-A056239(n+1)` -/
def P13753448386751929110.Spec : Prop :=
  ∀ n, P13753448386751929110.a n = A372428 (n + 1)

end A372428

/-! ## A372428.P764269821760442488

`A055941(A048678(2*(n+1)))-A056239(n+1)`
-/

namespace A372428.P764269821760442488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055941 (A048678 (2 * (n + 1))).toNat - A056239 (n + 1)

end

end A372428.P764269821760442488

namespace A372428

/-- `A055941(A048678(2*(n+1)))-A056239(n+1)` -/
def P764269821760442488.Spec : Prop :=
  ∀ n, P764269821760442488.a n = A372428 (n + 1)

end A372428

/-! ## A372428.P13336803677839958300

`A056239(A019565(n+1))-A056239(n+1)`
-/

namespace A372428.P13336803677839958300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (A019565 (n + 1)).toNat - A056239 (n + 1)

end

end A372428.P13336803677839958300

namespace A372428

/-- `A056239(A019565(n+1))-A056239(n+1)` -/
def P13336803677839958300.Spec : Prop :=
  ∀ n, P13336803677839958300.a n = A372428 (n + 1)

end A372428

/-! ## A372428.P7680607425425432125

`A056239(A057335(n+1))-A056239(n+1)`
-/

namespace A372428.P7680607425425432125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (A057335 (n + 1)).toNat - A056239 (n + 1)

end

end A372428.P7680607425425432125

namespace A372428

/-- `A056239(A057335(n+1))-A056239(n+1)` -/
def P7680607425425432125.Spec : Prop :=
  ∀ n, P7680607425425432125.a n = A372428 (n + 1)

end A372428

/-!
# A372429: Sum of binary indices of prime(n). Sum of positions of ones in the reversed binary expansion of prime(n).

The programs for A372429, the canonical program `A372429.P17746023410303381127` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A372429 has offset 1).

The definition of A372429 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1028 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A372429.P2891483980674476118

`A029931(A000040(n+1))`
-/

namespace A372429.P2891483980674476118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029931 (A000040 (n + 1)).toNat

end

end A372429.P2891483980674476118

namespace A372429

/-- `A029931(A000040(n+1))` -/
def P2891483980674476118.Spec : Prop :=
  ∀ n, P2891483980674476118.a n = A372429 (n + 1)

end A372429

/-! ## A372429.P2799574868549388301

`A029931(A008578(n+2))`
-/

namespace A372429.P2799574868549388301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029931 (A008578 (n + 2)).toNat

end

end A372429.P2799574868549388301

namespace A372429

/-- `A029931(A008578(n+2))` -/
def P2799574868549388301.Spec : Prop :=
  ∀ n, P2799574868549388301.a n = A372429 (n + 1)

end A372429

/-! ## A372429.P506769270516752372

`A029931(A182986(n+2))`
-/

namespace A372429.P506769270516752372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029931 (A182986 (n + 2)).toNat

end

end A372429.P506769270516752372

namespace A372429

/-- `A029931(A182986(n+2))` -/
def P506769270516752372.Spec : Prop :=
  ∀ n, P506769270516752372.a n = A372429 (n + 1)

end A372429

/-! ## A372429.P9504074912736211346

`A029931(eq[1, A003415(n)])`
-/

namespace A372429.P9504074912736211346
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029931 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A372429.P9504074912736211346

namespace A372429

/-- `A029931(eq[1, A003415(n)])` -/
def P9504074912736211346.Spec : Prop :=
  ∀ n, P9504074912736211346.a n = A372429 (n + 1)

end A372429

/-! ## A372429.P17277920417123969855

`A029931(A007504(n+1)-A007504(n))`
-/

namespace A372429.P17277920417123969855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029931 (A007504 (n + 1) - A007504 n).toNat

end

end A372429.P17277920417123969855

namespace A372429

/-- `A029931(A007504(n+1)-A007504(n))` -/
def P17277920417123969855.Spec : Prop :=
  ∀ n, P17277920417123969855.a n = A372429 (n + 1)

end A372429

/-! ## A372429.P17746023410303381127

`A227192(A338524(n+1))`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A372429

/-- `A227192(A338524(n+1))` -/
def P17746023410303381127.Spec : Prop :=
  ∀ n, P17746023410303381127.a n = A372429 (n + 1)

theorem P17746023410303381127.correct : P17746023410303381127.Spec := by
  intro n
  simp only [A372429, Nat.add_sub_cancel]

end A372429

/-! ## A372429.P606175206091956846

`A073642(A072055(n+1))`
-/

namespace A372429.P606175206091956846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073642 (A072055 (n + 1)).toNat

end

end A372429.P606175206091956846

namespace A372429

/-- `A073642(A072055(n+1))` -/
def P606175206091956846.Spec : Prop :=
  ∀ n, P606175206091956846.a n = A372429 (n + 1)

end A372429

/-! ## A372429.P9403815447005212295

`A073642(A100484(n+1))`
-/

namespace A372429.P9403815447005212295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073642 (A100484 (n + 1)).toNat

end

end A372429.P9403815447005212295

namespace A372429

/-- `A073642(A100484(n+1))` -/
def P9403815447005212295.Spec : Prop :=
  ∀ n, P9403815447005212295.a n = A372429 (n + 1)

end A372429

/-! ## A372429.P12673987581826870976

`A073642(A001747(n+2))`
-/

namespace A372429.P12673987581826870976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073642 (A001747 (n + 2)).toNat

end

end A372429.P12673987581826870976

namespace A372429

/-- `A073642(A001747(n+2))` -/
def P12673987581826870976.Spec : Prop :=
  ∀ n, P12673987581826870976.a n = A372429 (n + 1)

end A372429

/-! ## A372429.P6856337889038579074

`A073642(record[2*A162753(n)])`
-/

namespace A372429.P6856337889038579074
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A162753 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073642 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A372429.P6856337889038579074

namespace A372429

/-- `A073642(record[2*A162753(n)])` -/
def P6856337889038579074.Spec : Prop :=
  ∀ n, P6856337889038579074.a n = A372429 (n + 1)

end A372429

/-! ## A372429.P11447894896430479411

`A073642(2*A000040(n+1))`
-/

namespace A372429.P11447894896430479411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073642 (2 * A000040 (n + 1)).toNat

end

end A372429.P11447894896430479411

namespace A372429

/-- `A073642(2*A000040(n+1))` -/
def P11447894896430479411.Spec : Prop :=
  ∀ n, P11447894896430479411.a n = A372429 (n + 1)

end A372429

/-! ## A372429.P4942835114530644090

`A073642(A000040(n+1)+A000040(n+1))`
-/

namespace A372429.P4942835114530644090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073642 (A000040 (n + 1) + A000040 (n + 1)).toNat

end

end A372429.P4942835114530644090

namespace A372429

/-- `A073642(A000040(n+1)+A000040(n+1))` -/
def P4942835114530644090.Spec : Prop :=
  ∀ n, P4942835114530644090.a n = A372429 (n + 1)

end A372429

/-!
# A372431: Positive integers k such that the prime indices of k are disjoint from the binary indices of k.

The programs for A372431, there is no canonical definition to state claims against.
-/

/-! ## A372431.P14781567540453313129

`lt[n*A351558(n), n]`
-/

namespace A372431.P14781567540453313129
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A351558 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A372431.P14781567540453313129

/-! ## A372431.P12758017234358584530

`eq[1, A351556(n+1)]+1`
-/

namespace A372431.P12758017234358584530
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351556 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A372431.P12758017234358584530

/-! ## A372431.P3071751231716382941

`lt[A351558(n+1), 1]+1`
-/

namespace A372431.P3071751231716382941
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351558 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A372431.P3071751231716382941

/-! ## A372431.P18421004772707367884

`comp[A372432(n+1)-1]+1`
-/

namespace A372431.P18421004772707367884
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372432 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A372431.P18421004772707367884

/-! ## A372431.P14980495426853134499

`eq[A000007(n), A351558(n)]`
-/

namespace A372431.P14980495426853134499
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351558 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A372431.P14980495426853134499

/-! ## A372431.P17035385039143184339

`eq[A000038(n), A351558(n)]`
-/

namespace A372431.P17035385039143184339
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351558 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A372431.P17035385039143184339

/-! ## A372431.P11210283138656560384

`eq[A054977(n), A351556(n)]`
-/

namespace A372431.P11210283138656560384
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351556 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A372431.P11210283138656560384

/-! ## A372431.P11664234571746438873

`eq[A057427(n), A351556(n)]`
-/

namespace A372431.P11664234571746438873
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351556 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A372431.P11664234571746438873

/-! ## A372431.P13218438648273267709

`eq[A158388(n), A351556(n)]`
-/

namespace A372431.P13218438648273267709
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158388 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351556 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A372431.P13218438648273267709

/-! ## A372431.P18207998347602072548

`eq[A178334(n), A351556(n)]`
-/

namespace A372431.P18207998347602072548
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178334 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351556 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A372431.P18207998347602072548

/-!
# A372432: Positive integers k such that the prime indices of k are not disjoint from the binary indices of k.

The programs for A372432, there is no canonical definition to state claims against.
-/

/-! ## A372432.P532775069842041567

`lt[0, A351558(n)]`
-/

namespace A372432.P532775069842041567
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351558 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A372432.P532775069842041567

/-! ## A372432.P9191694633009106769

`lt[1, A351556(n)]`
-/

namespace A372432.P9191694633009106769
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351556 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A372432.P9191694633009106769

/-! ## A372432.P4547522668757136881

`lt[1, gcd(n, A019565(n))]`
-/

namespace A372432.P4547522668757136881
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A019565 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A372432.P4547522668757136881

/-! ## A372432.P12367493339646034936

`lt[1, gcd(n^4, A334110(n))]`
-/

namespace A372432.P12367493339646034936
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n ^ 4 : ℤ) (A334110 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A372432.P12367493339646034936

/-! ## A372432.P17374342355406997790

`eq[1, A267084(A351556(n)²)]`
-/

namespace A372432.P17374342355406997790
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267084 (A351556 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A372432.P17374342355406997790

/-! ## A372432.P3422958552601428121

`eq[A000038(n)², A000038(A351558(n))]`
-/

namespace A372432.P3422958552601428121
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 (A351558 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A372432.P3422958552601428121

/-!
# A372433: Binary weight (number of ones in binary expansion) of the n-th squarefree number.

The programs for A372433, the canonical program `A372433.P16694252056645757235` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A372433 has offset 1).

The definition of A372433 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005117, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A372433.P16694252056645757235

`A000120(A005117(n+1))`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A372433

/-- `A000120(A005117(n+1))` -/
def P16694252056645757235.Spec : Prop :=
  ∀ n, P16694252056645757235.a n = A372433 (n + 1)

theorem P16694252056645757235.correct : P16694252056645757235.Spec := by
  intro n
  simp only [A372433, Nat.add_sub_cancel]

end A372433

/-! ## A372433.P5119558398631033777

`A372475(n+1)-A372472(n+1)`
-/

namespace A372433.P5119558398631033777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372475 (n + 1) - A372472 (n + 1)

end

end A372433.P5119558398631033777

namespace A372433

/-- `A372475(n+1)-A372472(n+1)` -/
def P5119558398631033777.Spec : Prop :=
  ∀ n, P5119558398631033777.a n = A372433 (n + 1)

end A372433

/-! ## A372433.P11061002508868888319

`A000120(record[A015052(n+1)])`
-/

namespace A372433.P11061002508868888319
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015052 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A372433.P11061002508868888319

namespace A372433

/-- `A000120(record[A015052(n+1)])` -/
def P11061002508868888319.Spec : Prop :=
  ∀ n, P11061002508868888319.a n = A372433 (n + 1)

end A372433

/-! ## A372433.P11327397539912015097

`A000120(A133466(n+1)/2)`
-/

namespace A372433.P11327397539912015097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (SequenceMachineLib.roundAway ((A133466 (n + 1) : ℚ) / 2)).toNat

end

end A372433.P11327397539912015097

namespace A372433

/-- `A000120(A133466(n+1)/2)` -/
def P11327397539912015097.Spec : Prop :=
  ∀ n, P11327397539912015097.a n = A372433 (n + 1)

end A372433

/-! ## A372433.P3153753046747099477

`A000120(A133466(n+1))`
-/

namespace A372433.P3153753046747099477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A133466 (n + 1)).toNat

end

end A372433.P3153753046747099477

namespace A372433

/-- `A000120(A133466(n+1))` -/
def P3153753046747099477.Spec : Prop :=
  ∀ n, P3153753046747099477.a n = A372433 (n + 1)

end A372433

/-! ## A372433.P5061719143999496145

`A325121(A302491(n+1))`
-/

namespace A372433.P5061719143999496145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325121 (A302491 (n + 1)).toNat

end

end A372433.P5061719143999496145

namespace A372433

/-- `A325121(A302491(n+1))` -/
def P5061719143999496145.Spec : Prop :=
  ∀ n, P5061719143999496145.a n = A372433 (n + 1)

end A372433

/-!
# A372436: Numbers whose binary indices and prime indices have the same maximum.

The programs for A372436, there is no canonical definition to state claims against.
-/

/-! ## A372436.P15347504831500709735

`lt[A372442(n+2)², 1]+2`
-/

namespace A372436.P15347504831500709735
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372442 (n + 2) ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 2

end

end A372436.P15347504831500709735

/-! ## A372436.P12593623426269282806

`eq[A061395(C(2, n²)+n), A070939(n)]`
-/

namespace A372436.P12593623426269282806
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (Nat.choose 2 (n ^ 2) + n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A372436.P12593623426269282806

/-! ## A372436.P11958685775594303459

`eq[A000523(2*n+3), A061395(n+1)]+1`
-/

namespace A372436.P11958685775594303459
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000523 (2 * n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A372436.P11958685775594303459

/-! ## A372436.P4944820001114576070

`eq[A061395(A028310(n)), A070939(n)]`
-/

namespace A372436.P4944820001114576070
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (A028310 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A372436.P4944820001114576070

/-! ## A372436.P4555289830206958382

`eq[A065770(A109395(n+1)), A070939(n+1)]+1`
-/

namespace A372436.P4555289830206958382
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065770 (A109395 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A372436.P4555289830206958382

/-!
# A372437: (Least binary index of n) minus (least prime index of n).

The programs for A372437, there is no canonical definition to state claims against.
-/

/-! ## A372437.P319362007131086371

`A001511(n+2)-A055396(n+2)`
-/

namespace A372437.P319362007131086371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (n + 2) - A055396 (n + 2)

end

end A372437.P319362007131086371

/-! ## A372437.P10658345393934983907

`A089309(2*n+3)-A055396(n+2)`
-/

namespace A372437.P10658345393934983907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089309 (2 * n + 3) - A055396 (n + 2)

end

end A372437.P10658345393934983907

/-! ## A372437.P13964564066179627599

`A007814(2*(n+2))-A055396(n+2)`
-/

namespace A372437.P13964564066179627599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (2 * (n + 2)) - A055396 (n + 2)

end

end A372437.P13964564066179627599

/-! ## A372437.P15257177375016753279

`A007814(2*(n+2))-A000720(A020639(n+2))`
-/

namespace A372437.P15257177375016753279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (2 * (n + 2)) - A000720 (A020639 (n + 2)).toNat

end

end A372437.P15257177375016753279

/-! ## A372437.P13542070886911839128

`A055396(A019565(n+2))-A055396(n+2)`
-/

namespace A372437.P13542070886911839128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (A019565 (n + 2)).toNat - A055396 (n + 2)

end

end A372437.P13542070886911839128

/-!
# A372438: Least binary index equals greatest prime index.

The programs for A372438, there is no canonical definition to state claims against.
-/

/-! ## A372438.P10494118056594447653

`eq[A001511(n+1), A061395(n+1)]+1`
-/

namespace A372438.P10494118056594447653
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A372438.P10494118056594447653

/-! ## A372438.P1856019009262857191

`eq[A061395(n+1), A067029(2*(n+1))]+1`
-/

namespace A372438.P1856019009262857191
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067029 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A372438.P1856019009262857191

/-! ## A372438.P5871896576342093987

`A020725(eq[A001511(n+1), A061395(n+1)])`
-/

namespace A372438.P5871896576342093987
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A372438.P5871896576342093987

/-! ## A372438.P9586583346777058484

`A065475(eq[A001511(n+1), A061395(n+1)])`
-/

namespace A372438.P9586583346777058484
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A372438.P9586583346777058484

/-! ## A372438.P7547922106611257540

`A164020(eq[A001511(n+1), A061395(n+1)])`
-/

namespace A372438.P7547922106611257540
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164020 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A372438.P7547922106611257540

/-!
# A372439: Numbers k such that the least binary index of k plus the least prime index of k is odd.

The programs for A372439, there is no canonical definition to state claims against.
-/

/-! ## A372439.P16534477634763238487

`comp[A372440(n+1)-2]+2`
-/

namespace A372439.P16534477634763238487
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372440 (n + 1) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 2

end

end A372439.P16534477634763238487

/-! ## A372439.P6373821942889637376

`∪[A036554(n+1), A340933(n+1)]`
-/

namespace A372439.P6373821942889637376
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036554 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340933 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A372439.P6373821942889637376

/-!
# A372440: Numbers k such that the least binary index of k plus the least prime index of k is even.

The programs for A372440, there is no canonical definition to state claims against.
-/

/-! ## A372440.P14898849104487217397

`filter[A340932(n+1), A035263(#)]`
-/

namespace A372440.P14898849104487217397
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340932 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A035263 (f1 j).toNat = 1) n)

end

end A372440.P14898849104487217397

/-! ## A372440.P15116945187758925246

`∩[A003159(n+1), A340932(n+1)]`
-/

namespace A372440.P15116945187758925246
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003159 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340932 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A372440.P15116945187758925246

/-!
# A372441: Number of binary indices (binary weight) of n minus number of prime indices (bigomega) of n.

The programs for A372441, the canonical program `A372441.P9103232244176697069` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A372441 has offset 1).

The definition of A372441 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001222, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A372441.P9103232244176697069

`A000120(n+1)-A001222(n+1)`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A372441

/-- `A000120(n+1)-A001222(n+1)` -/
def P9103232244176697069.Spec : Prop :=
  ∀ n, P9103232244176697069.a n = A372441 (n + 1)

theorem P9103232244176697069.correct : P9103232244176697069.Spec := by
  intro n
  simp only [A372441, Nat.add_sub_cancel]

end A372441

/-! ## A372441.P13129353259668526238

`A000120(n+1)-(A336123(n+1)+A336121(n+1))`
-/

namespace A372441.P13129353259668526238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (n + 1) - (A336123 (n + 1) + A336121 (n + 1))

end

end A372441.P13129353259668526238

namespace A372441

/-- `A000120(n+1)-(A336123(n+1)+A336121(n+1))` -/
def P13129353259668526238.Spec : Prop :=
  ∀ n, P13129353259668526238.a n = A372441 (n + 1)

end A372441

/-! ## A372441.P504555958500926320

`A000120(n+1)-(A372503(n+1)+A349258(n+1))`
-/

namespace A372441.P504555958500926320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (n + 1) - (A372503 (n + 1) + A349258 (n + 1))

end

end A372441.P504555958500926320

namespace A372441

/-- `A000120(n+1)-(A372503(n+1)+A349258(n+1))` -/
def P504555958500926320.Spec : Prop :=
  ∀ n, P504555958500926320.a n = A372441 (n + 1)

end A372441

/-! ## A372441.P11205508076751470315

`A063787(n+2)-A001222(2*(n+1))`
-/

namespace A372441.P11205508076751470315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063787 (n + 2) - A001222 (2 * (n + 1))

end

end A372441.P11205508076751470315

namespace A372441

/-- `A063787(n+2)-A001222(2*(n+1))` -/
def P11205508076751470315.Spec : Prop :=
  ∀ n, P11205508076751470315.a n = A372441 (n + 1)

end A372441

/-! ## A372441.P7465419211184494662

`A070939(n+1)-(A080791(n+1)+A001222(n+1))`
-/

namespace A372441.P7465419211184494662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 (n + 1) - (A080791 (n + 1) + A001222 (n + 1))

end

end A372441.P7465419211184494662

namespace A372441

/-- `A070939(n+1)-(A080791(n+1)+A001222(n+1))` -/
def P7465419211184494662.Spec : Prop :=
  ∀ n, P7465419211184494662.a n = A372441 (n + 1)

end A372441

/-! ## A372441.P2598310479864906976

`A001222(A278222(n+1))-A001222(n+1)`
-/

namespace A372441.P2598310479864906976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A278222 (n + 1)).toNat - A001222 (n + 1)

end

end A372441.P2598310479864906976

namespace A372441

/-- `A001222(A278222(n+1))-A001222(n+1)` -/
def P2598310479864906976.Spec : Prop :=
  ∀ n, P2598310479864906976.a n = A372441 (n + 1)

end A372441

/-! ## A372441.P3934956740215171793

`A000120(n+1)-A252736(2*(n+1))`
-/

namespace A372441.P3934956740215171793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (n + 1) - A252736 (2 * (n + 1))

end

end A372441.P3934956740215171793

namespace A372441

/-- `A000120(n+1)-A252736(2*(n+1))` -/
def P3934956740215171793.Spec : Prop :=
  ∀ n, P3934956740215171793.a n = A372441 (n + 1)

end A372441

/-! ## A372441.P4495701743109746036

`A000120(n+1)-A297167(A046523(2*(n+1)))`
-/

namespace A372441.P4495701743109746036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (n + 1) - A297167 (A046523 (2 * (n + 1))).toNat

end

end A372441.P4495701743109746036

namespace A372441

/-- `A000120(n+1)-A297167(A046523(2*(n+1)))` -/
def P4495701743109746036.Spec : Prop :=
  ∀ n, P4495701743109746036.a n = A372441 (n + 1)

end A372441

/-! ## A372441.P5428801555824714233

`A001222(Δ[A288570(n)])-A001222(n+1)`
-/

namespace A372441.P5428801555824714233
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288570 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (f1 (n + 1) - f1 n).toNat - A001222 (n + 1)

end

end A372441.P5428801555824714233

namespace A372441

/-- `A001222(Δ[A288570(n)])-A001222(n+1)` -/
def P5428801555824714233.Spec : Prop :=
  ∀ n, P5428801555824714233.a n = A372441 (n + 1)

end A372441

/-! ## A372441.P11942041114119116984

`A001222(A019565(n+1))-A001222(n+1)`
-/

namespace A372441.P11942041114119116984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A019565 (n + 1)).toNat - A001222 (n + 1)

end

end A372441.P11942041114119116984

namespace A372441

/-- `A001222(A019565(n+1))-A001222(n+1)` -/
def P11942041114119116984.Spec : Prop :=
  ∀ n, P11942041114119116984.a n = A372441 (n + 1)

end A372441

/-!
# A372442: (Greatest binary index of n) minus (greatest prime index of n).

The programs for A372442, the canonical program `A372442.P7915193120500991903` is in `Seq.B006.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A372442 has offset 2).

The definition of A372442 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A061395, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A372442.P7915193120500991903

`A070939(n+2)-A061395(n+2)`

The canonical program, it is in `Seq.B006.C002`.
-/

namespace A372442

/-- `A070939(n+2)-A061395(n+2)` -/
def P7915193120500991903.Spec : Prop :=
  ∀ n, P7915193120500991903.a n = A372442 (n + 2)

theorem P7915193120500991903.correct : P7915193120500991903.Spec := by
  intro n
  simp only [A372442, Nat.add_sub_cancel]

end A372442

/-! ## A372442.P9540284151788832355

`A000523(n+2)+A001222(n+2)-A252464(n+2)`
-/

namespace A372442.P9540284151788832355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000523 (n + 2) + (A001222 (n + 2) - A252464 (n + 2))

end

end A372442.P9540284151788832355

namespace A372442

/-- `A000523(n+2)+A001222(n+2)-A252464(n+2)` -/
def P9540284151788832355.Spec : Prop :=
  ∀ n, P9540284151788832355.a n = A372442 (n + 2)

end A372442

/-! ## A372442.P7054062907325492339

`A029837(n+3)-A061395(n+2)`
-/

namespace A372442.P7054062907325492339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029837 (n + 3) - A061395 (n + 2)

end

end A372442.P7054062907325492339

namespace A372442

/-- `A029837(n+3)-A061395(n+2)` -/
def P7054062907325492339.Spec : Prop :=
  ∀ n, P7054062907325492339.a n = A372442 (n + 2)

end A372442

/-! ## A372442.P17975774545736939055

`A000523(2*n+5)-A061395(n+2)`
-/

namespace A372442.P17975774545736939055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000523 (2 * n + 5) - A061395 (n + 2)

end

end A372442.P17975774545736939055

namespace A372442

/-- `A000523(2*n+5)-A061395(n+2)` -/
def P17975774545736939055.Spec : Prop :=
  ∀ n, P17975774545736939055.a n = A372442 (n + 2)

end A372442

/-! ## A372442.P12853192927517398430

`A000523(2*n+5)-(A243055(2*(n+2))+1)`
-/

namespace A372442.P12853192927517398430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000523 (2 * n + 5) - (A243055 (2 * (n + 2)) + 1)

end

end A372442.P12853192927517398430

namespace A372442

/-- `A000523(2*n+5)-(A243055(2*(n+2))+1)` -/
def P12853192927517398430.Spec : Prop :=
  ∀ n, P12853192927517398430.a n = A372442 (n + 2)

end A372442

/-! ## A372442.P7422803206516520724

`A061395(A019565(n+2))-A061395(n+2)`
-/

namespace A372442.P7422803206516520724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (A019565 (n + 2)).toNat - A061395 (n + 2)

end

end A372442.P7422803206516520724

namespace A372442

/-- `A061395(A019565(n+2))-A061395(n+2)` -/
def P7422803206516520724.Spec : Prop :=
  ∀ n, P7422803206516520724.a n = A372442 (n + 2)

end A372442

/-!
# A372443: The n-th iterate of 27 with Reduced Collatz-function R, which gives the odd part of 3n+1.

The programs for A372443, there is no canonical definition to state claims against.
-/

/-! ## A372443.P355858994333714880

`A131507(C(A028395(n), 2))`
-/

namespace A372443.P355858994333714880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131507 (Nat.choose (A028395 n).toNat 2)

end

end A372443.P355858994333714880

/-! ## A372443.P5537826321479710453

`A070864(A028395(n)²)`
-/

namespace A372443.P5537826321479710453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070864 (A028395 n ^ 2).toNat

end

end A372443.P5537826321479710453

/-! ## A372443.P3045515539578269115

`A138099(A028395(n)²)`
-/

namespace A372443.P3045515539578269115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138099 (A028395 n ^ 2).toNat

end

end A372443.P3045515539578269115

/-! ## A372443.P833524105506410112

`A256598(A327374(n+5)-1)`
-/

namespace A372443.P833524105506410112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256598 (A327374 (n + 5) - 1).toNat

end

end A372443.P833524105506410112

/-! ## A372443.P7106727749345054851

`A138099(A028395(n)*A028395(n))`
-/

namespace A372443.P7106727749345054851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138099 (A028395 n * A028395 n).toNat

end

end A372443.P7106727749345054851

/-!
# A372444: The n-th iterate of 27 with A371094.

The programs for A372444, there is no canonical definition to state claims against.
-/

/-! ## A372444.P5768897070999478306

`record[A372560(n+1)]`
-/

namespace A372444.P5768897070999478306
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372560 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A372444.P5768897070999478306

/-!
# A372445: a(n) = A371092(A372443(n)).

The programs for A372445, there is no canonical definition to state claims against.
-/

/-! ## A372445.P5428321018835489791

`A371092(A372443(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A372445.P5428321018835489791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371092 (A372443 n).toNat

end

end A372445.P5428321018835489791

/-! ## A372445.P8884907225608105099

`ceil(A372443(n+1)/6)`
-/

namespace A372445.P8884907225608105099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A372443 (n + 1) : ℚ) / 6⌉

end

end A372445.P8884907225608105099

/-! ## A372445.P2456486996214413232

`A097992(A372443(n+1))`
-/

namespace A372445.P2456486996214413232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097992 (A372443 (n + 1)).toNat

end

end A372445.P2456486996214413232

/-! ## A372445.P14769912578809967151

`A008615(A372443(n+1)+1)`
-/

namespace A372445.P14769912578809967151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (A372443 (n + 1) + 1).toNat

end

end A372445.P14769912578809967151

/-! ## A372445.P4352891145002611350

`A103221(A372443(n+1)-1)`
-/

namespace A372445.P4352891145002611350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103221 (A372443 (n + 1) - 1).toNat

end

end A372445.P4352891145002611350

/-! ## A372445.P8901003700792257924

`A103221(xor(1, A372443(n+1)))`
-/

namespace A372445.P8901003700792257924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103221 (Int.xor 1 (A372443 (n + 1))).toNat

end

end A372445.P8901003700792257924

/-!
# A372446: a(n) = A372358(A372443(n)).

The programs for A372446, there is no canonical definition to state claims against.
-/

/-! ## A372446.P10658016682151805430

`A372358(A372443(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A372446.P10658016682151805430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372358 (A372443 n).toNat

end

end A372446.P10658016682151805430

/-!
# A372447: a(n) = A000523(A372443(n)); One less than the binary length of the n-th iterate of 27 with Reduced Collatz-function R.

The programs for A372447, there is no canonical definition to state claims against.
-/

/-! ## A372447.P2127084944650818303

`A000523(A372443(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A372447.P2127084944650818303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000523 (A372443 n).toNat

end

end A372447.P2127084944650818303

/-! ## A372447.P12625295838714703379

`A029837(A372443(n)+1)-1`
-/

namespace A372447.P12625295838714703379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029837 (A372443 n + 1).toNat - 1

end

end A372447.P12625295838714703379

/-! ## A372447.P5282338235159567537

`A070939(A372443(n)-1)-1`
-/

namespace A372447.P5282338235159567537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 (A372443 n - 1).toNat - 1

end

end A372447.P5282338235159567537

/-! ## A372447.P10699107385146256546

`A029837((A372443(n)+1)/2)`
-/

namespace A372447.P10699107385146256546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029837 (SequenceMachineLib.roundAway ((A372443 n + 1 : ℚ) / 2)).toNat

end

end A372447.P10699107385146256546

/-! ## A372447.P9290693188290194107

`A372362(n)+A372449(n)-A372448(n)`
-/

namespace A372447.P9290693188290194107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372362 n + (A372449 n - A372448 n)

end

end A372447.P9290693188290194107

/-!
# A372448: a(n) is the 2-adic valuation of 1 + 3*{the n-th iterate of 27 with A371094}.

The programs for A372448, there is no canonical definition to state claims against.
-/

/-! ## A372448.P7817687662679876254

`2*a(n-1)+A371093(A372443(n))` with `a(0)=1`
-/

namespace A372448.P7817687662679876254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * a (n - 1) + A371093 (A372443 n).toNat

end

end A372448.P7817687662679876254

/-! ## A372448.P790435196499488455

`A372362(n)+A372449(n)-A372447(n)`
-/

namespace A372448.P790435196499488455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372362 n + (A372449 n - A372447 n)

end

end A372448.P790435196499488455

/-! ## A372448.P5144506859810437432

`A194640(A000225(n+2))-1`
-/

namespace A372448.P5144506859810437432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194640 (A000225 (n + 2)).toNat - 1

end

end A372448.P5144506859810437432

/-!
# A372449: a(n) = A000523(A372444(n)); One less than the length of binary expansion of the n-th iterate of 27 with A371094.

The programs for A372449, there is no canonical definition to state claims against.
-/

/-! ## A372449.P3055596943118114146

`A372447(n)+A372448(n)-A372362(n)`
-/

namespace A372449.P3055596943118114146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372447 n + (A372448 n - A372362 n)

end

end A372449.P3055596943118114146

/-! ## A372449.P10610662288032885625

`A304867(n)+A172471(A000984(n+2))`
-/

namespace A372449.P10610662288032885625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304867 n + A172471 (A000984 (n + 2)).toNat

end

end A372449.P10610662288032885625

/-! ## A372449.P4976747321112288214

`A008930(n+4)+A000120(A033917(n))`
-/

namespace A372449.P4976747321112288214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008930 (n + 4) + A000120 (A033917 n).toNat

end

end A372449.P4976747321112288214

/-!
# A372451: a(n) = A372449(1+n) - A372449(n).

The programs for A372451, there is no canonical definition to state claims against.
-/

/-! ## A372451.P1461296155390139768

`A372449(1+n)-A372449(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A372451.P1461296155390139768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372449 (1 + n) - A372449 n

end

end A372451.P1461296155390139768

/-! ## A372451.P8077420742924117069

`Δ[A372449(n)]`
-/

namespace A372451.P8077420742924117069
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372449 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A372451.P8077420742924117069

/-! ## A372451.P5464204281661379004

`Δ[A372447(n)+A372448(n)-A372362(n)]`
-/

namespace A372451.P5464204281661379004
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372447 n + (A372448 n - A372362 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A372451.P5464204281661379004

/-! ## A372451.P7672246420943948768

`A372448(n)+A000002(A001787(n+3))`
-/

namespace A372451.P7672246420943948768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372448 n + A000002 (A001787 (n + 3)).toNat

end

end A372451.P7672246420943948768

/-!
# A372452: Number of terms of A086893 in the interval [A372444(n), A372444(1+n)].

The programs for A372452, there is no canonical definition to state claims against.
-/

/-! ## A372452.P9150208293405741427

`A017981(3*n+4)-A019590(A255860(2*n))`
-/

namespace A372452.P9150208293405741427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017981 (3 * n + 4) - A019590 (A255860 (2 * n)).toNat

end

end A372452.P9150208293405741427

/-!
# A372453: a(n) = A372443(n) - A086893(1+A372447(n)).

The programs for A372453, there is no canonical definition to state claims against.
-/

/-! ## A372453.P1121584833581095992

`A372443(n)-A086893(1+A372447(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A372453.P1121584833581095992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372443 n - A086893 (1 + A372447 n).toNat

end

end A372453.P1121584833581095992

/-! ## A372453.P7760129910226106412

`A372443(n)-A086893(1+A000523(A372443(n)))`
-/

namespace A372453.P7760129910226106412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372443 n - A086893 (1 + A000523 (A372443 n).toNat).toNat

end

end A372453.P7760129910226106412

/-! ## A372453.P10249622781918846352

`A372446(n)-A004514(A372446(n))`
-/

namespace A372453.P10249622781918846352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372446 n - A004514 (A372446 n).toNat

end

end A372453.P10249622781918846352

/-!
# A372454: a(n) = A372444(n) - A086893(1+A372449(n)).

The programs for A372454, there is no canonical definition to state claims against.
-/

/-! ## A372454.P9482085385995364001

`A372444(n)-A086893(1+A372449(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A372454.P9482085385995364001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372444 n - A086893 (1 + A372449 n).toNat

end

end A372454.P9482085385995364001

/-!
# A372456: a(n) = 1 if abs(tan(n)) > 1, 0 otherwise.

The programs for A372456, the canonical program `A372456.P12260804191006505000` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A372456 has offset 1).

The definition of A372456 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A372456.P12260804191006505000

`round(sin(n+1)²)`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A372456

/-- `round(sin(n+1)²)` -/
def P12260804191006505000.Spec : Prop :=
  ∀ n, P12260804191006505000.a n = A372456 (n + 1)

theorem P12260804191006505000.correct : P12260804191006505000.Spec := by
  intro n
  simp only [A372456, Nat.add_sub_cancel]

end A372456

/-!
# A372458: Coefficient of x^n in the expansion of 1 / ( (1-x) * (1-x-x^2)^2 )^n.

The programs for A372458, there is no canonical definition to state claims against.
-/

/-! ## A372458.P6494934456701811751

`A009195(A290853(n))+A002002(n)`
-/

namespace A372458.P6494934456701811751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009195 (A290853 n).toNat + A002002 n

end

end A372458.P6494934456701811751

/-!
# A372459: Coefficient of x^n in the expansion of 1 / ( (1-x) * (1-x-x^3)^2 )^n.

The programs for A372459, there is no canonical definition to state claims against.
-/

/-! ## A372459.P13043862328562648608

`A065306(A063017(n))-A000332(n)`
-/

namespace A372459.P13043862328562648608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065306 (A063017 n).toNat - A000332 n

end

end A372459.P13043862328562648608

/-!
# A372460: Coefficient of x^n in the expansion of 1 / ( (1-x) * (1-x-x^2) )^(2*n).

The programs for A372460, there is no canonical definition to state claims against.
-/

/-! ## A372460.P5015150924270711061

`A008330(A325570(n+1)+A005258(n))`
-/

namespace A372460.P5015150924270711061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008330 (A325570 (n + 1) + A005258 n).toNat

end

end A372460.P5015150924270711061

/-!
# A372461: Coefficient of x^n in the expansion of 1 / ( (1-x) * (1-x-x^3) )^(2*n).

The programs for A372461, there is no canonical definition to state claims against.
-/

/-! ## A372461.P7541486039740523730

`A379022(n)-A185255(A055999(n))`
-/

namespace A372461.P7541486039740523730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379022 n - A185255 (A055999 n).toNat

end

end A372461.P7541486039740523730

/-! ## A372461.P12130138158746301420

`A379022(n)-A157361(A000108(n+4))`
-/

namespace A372461.P12130138158746301420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379022 n - A157361 (A000108 (n + 4)).toNat

end

end A372461.P12130138158746301420

/-!
# A372462: Coefficient of x^n in the expansion of 1 / ( (1-x) * (1-x+x^2)^2 )^n.

The programs for A372462, there is no canonical definition to state claims against.
-/

/-! ## A372462.P2557281235616337678

`A088462(A079500(3*n+2)-n)`
-/

namespace A372462.P2557281235616337678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088462 (A079500 (3 * n + 2) - (n : ℤ)).toNat

end

end A372462.P2557281235616337678

/-!
# A372463: Coefficient of x^n in the expansion of 1 / ( (1-x) * (1-x+x^3)^2 )^n.

The programs for A372463, there is no canonical definition to state claims against.
-/

/-! ## A372463.P16262564774332874549

`ceil(A089213(2*n+1)/2)`
-/

namespace A372463.P16262564774332874549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A089213 (2 * n + 1) : ℚ) / 2⌉

end

end A372463.P16262564774332874549

/-!
# A372465: Coefficient of x^n in the expansion of 1 / ( (1-x) * (1-x+x^3) )^(2*n).

The programs for A372465, there is no canonical definition to state claims against.
-/

/-! ## A372465.P12148423933709834982

`A168595(n)-A120043(A000108(n))`
-/

namespace A372465.P12148423933709834982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168595 n - A120043 (A000108 n).toNat

end

end A372465.P12148423933709834982

/-!
# A372466: The maximal exponent in the prime factorization of the numbers whose number of divisors is a power of 2 (A036537).

The programs for A372466, the canonical program `A372466.P16049166336239421302` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A372466 has offset 1).

The definition of A372466 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A036537, A051903, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A372466.P2858289348081862832

`2^A372467(n+1)-1`
-/

namespace A372466.P2858289348081862832
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A372467 (n + 1) : ℤ) - 1

end

end A372466.P2858289348081862832

namespace A372466

/-- `2^A372467(n+1)-1` -/
def P2858289348081862832.Spec : Prop :=
  ∀ n, P2858289348081862832.a n = (A372466 (n + 1) : ℚ)

end A372466

/-! ## A372466.P16049166336239421302

`A051903(A036537(n+1))`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A372466

/-- `A051903(A036537(n+1))` -/
def P16049166336239421302.Spec : Prop :=
  ∀ n, P16049166336239421302.a n = A372466 (n + 1)

theorem P16049166336239421302.correct : P16049166336239421302.Spec := by
  intro n
  simp only [A372466, Nat.add_sub_cancel]

end A372466

/-! ## A372466.P2259906061288751981

`A051903(eq[1, A359473(n+1)]+1)`
-/

namespace A372466.P2259906061288751981
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359473 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A372466.P2259906061288751981

namespace A372466

/-- `A051903(eq[1, A359473(n+1)]+1)` -/
def P2259906061288751981.Spec : Prop :=
  ∀ n, P2259906061288751981.a n = A372466 (n + 1)

end A372466

/-! ## A372466.P10749133475837105531

`filter[A368711(n+1), A011750(#)]`
-/

namespace A372466.P10749133475837105531
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368711 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A011750 (f1 j).toNat = 1) n)

end

end A372466.P10749133475837105531

namespace A372466

/-- `filter[A368711(n+1), A011750(#)]` -/
def P10749133475837105531.Spec : Prop :=
  ∀ n, P10749133475837105531.a n = A372466 (n + 1)

end A372466

/-! ## A372466.P18028658063360047674

`filter[A368711(n+1), A036987(#)]`
-/

namespace A372466.P18028658063360047674
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368711 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A036987 (f1 j).toNat = 1) n)

end

end A372466.P18028658063360047674

namespace A372466

/-- `filter[A368711(n+1), A036987(#)]` -/
def P18028658063360047674.Spec : Prop :=
  ∀ n, P18028658063360047674.a n = A372466 (n + 1)

end A372466

/-! ## A372466.P11898132144053904584

`filter[A368711(n+1), A041004(#)]`
-/

namespace A372466.P11898132144053904584
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368711 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A041004 (f1 j).toNat = 1) n)

end

end A372466.P11898132144053904584

namespace A372466

/-- `filter[A368711(n+1), A041004(#)]` -/
def P11898132144053904584.Spec : Prop :=
  ∀ n, P11898132144053904584.a n = A372466 (n + 1)

end A372466

/-! ## A372466.P397728605291551237

`A372604(A036537(n+1)+char[1])`
-/

namespace A372466.P397728605291551237
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372604 (A036537 (n + 1) + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)).toNat

end

end A372466.P397728605291551237

namespace A372466

/-- `A372604(A036537(n+1)+char[1])` -/
def P397728605291551237.Spec : Prop :=
  ∀ n, P397728605291551237.a n = A372466 (n + 1)

end A372466

/-! ## A372466.P17674492560759348044

`A267116(A036537(2*n+1-n))`
-/

namespace A372466.P17674492560759348044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267116 (A036537 (2 * n + 1 - n)).toNat

end

end A372466.P17674492560759348044

namespace A372466

/-- `A267116(A036537(2*n+1-n))` -/
def P17674492560759348044.Spec : Prop :=
  ∀ n, P17674492560759348044.a n = A372466 (n + 1)

end A372466

/-! ## A372466.P4026036831987980439

`A067132(eq[1, A359473(n+1)]+1)-1`
-/

namespace A372466.P4026036831987980439
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359473 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067132 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1) - 1

end

end A372466.P4026036831987980439

namespace A372466

/-- `A067132(eq[1, A359473(n+1)]+1)-1` -/
def P4026036831987980439.Spec : Prop :=
  ∀ n, P4026036831987980439.a n = A372466 (n + 1)

end A372466

/-! ## A372466.P5156249458949895063

`A000688(A036537(n+1))%A333667(n+2)`
-/

namespace A372466.P5156249458949895063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000688 (A036537 (n + 1)).toNat) (A333667 (n + 2))

end

end A372466.P5156249458949895063

namespace A372466

/-- `A000688(A036537(n+1))%A333667(n+2)` -/
def P5156249458949895063.Spec : Prop :=
  ∀ n, P5156249458949895063.a n = A372466 (n + 1)

end A372466

/-!
# A372467: a(n) = log_2(A372466(n) + 1).

The programs for A372467, the canonical program `A372467.P9198545942954414521` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A372467 has offset 1).

The definition of A372467 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A372466, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A372467.P9198545942954414521

`log2(A372466(n+1)+1)`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A372467

/-- `log2(A372466(n+1)+1)` -/
def P9198545942954414521.Spec : Prop :=
  ∀ n, P9198545942954414521.a n = (A372467 (n + 1) : ℝ)

end A372467

/-! ## A372467.P12088133085154284704

`log2(A051903(A036537(n+1))+1)`
-/

namespace A372467.P12088133085154284704
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A051903 (A036537 (n + 1)).toNat + 1 : ℝ)

end

end A372467.P12088133085154284704

namespace A372467

/-- `log2(A051903(A036537(n+1))+1)` -/
def P12088133085154284704.Spec : Prop :=
  ∀ n, P12088133085154284704.a n = (A372467 (n + 1) : ℝ)

end A372467

/-! ## A372467.P12946323670576863454

`ceil(sqrt(A372466(n+1)))`
-/

namespace A372467.P12946323670576863454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A372466 (n + 1) : ℝ)⌉

end

end A372467.P12946323670576863454

namespace A372467

/-- `ceil(sqrt(A372466(n+1)))` -/
def P12946323670576863454.Spec : Prop :=
  ∀ n, P12946323670576863454.a n = A372467 (n + 1)

end A372467

/-! ## A372467.P12528383491509174913

`A331591(A036537(n+1))`
-/

namespace A372467.P12528383491509174913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331591 (A036537 (n + 1)).toNat

end

end A372467.P12528383491509174913

namespace A372467

/-- `A331591(A036537(n+1))` -/
def P12528383491509174913.Spec : Prop :=
  ∀ n, P12528383491509174913.a n = A372467 (n + 1)

end A372467

/-! ## A372467.P7440900487225114285

`A029837(A372466(n+1)+A289508(2*(n+2)))`
-/

namespace A372467.P7440900487225114285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029837 (A372466 (n + 1) + A289508 (2 * (n + 2))).toNat

end

end A372467.P7440900487225114285

namespace A372467

/-- `A029837(A372466(n+1)+A289508(2*(n+2)))` -/
def P7440900487225114285.Spec : Prop :=
  ∀ n, P7440900487225114285.a n = A372467 (n + 1)

end A372467

/-! ## A372467.P7453992420665971417

`A003056(A289508(2*(n+2))*A372466(n+1))`
-/

namespace A372467.P7453992420665971417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A289508 (2 * (n + 2)) * A372466 (n + 1)).toNat

end

end A372467.P7453992420665971417

namespace A372467

/-- `A003056(A289508(2*(n+2))*A372466(n+1))` -/
def P7453992420665971417.Spec : Prop :=
  ∀ n, P7453992420665971417.a n = A372467 (n + 1)

end A372467

/-! ## A372467.P11507123721136108084

`A122203(A372466(n+1)+A104117(2*n+5))`
-/

namespace A372467.P11507123721136108084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122203 (A372466 (n + 1) + A104117 (2 * n + 5)).toNat

end

end A372467.P11507123721136108084

namespace A372467

/-- `A122203(A372466(n+1)+A104117(2*n+5))` -/
def P11507123721136108084.Spec : Prop :=
  ∀ n, P11507123721136108084.a n = A372467 (n + 1)

end A372467

/-! ## A372467.P2813223280272641175

`A124766(A372466(n+1)^A254044(n+1))`
-/

namespace A372467.P2813223280272641175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124766 (SequenceMachineLib.roundAway ((A372466 (n + 1) : ℚ) ^ (A254044 (n + 1) : ℤ))).toNat

end

end A372467.P2813223280272641175

namespace A372467

/-- `A124766(A372466(n+1)^A254044(n+1))` -/
def P2813223280272641175.Spec : Prop :=
  ∀ n, P2813223280272641175.a n = A372467 (n + 1)

end A372467

/-! ## A372467.P15653320992231036553

`A124766(A372466(n+1)^A286364(3*n+1))`
-/

namespace A372467.P15653320992231036553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124766 (SequenceMachineLib.roundAway ((A372466 (n + 1) : ℚ) ^ (A286364 (3 * n + 1) : ℤ))).toNat

end

end A372467.P15653320992231036553

namespace A372467

/-- `A124766(A372466(n+1)^A286364(3*n+1))` -/
def P15653320992231036553.Spec : Prop :=
  ∀ n, P15653320992231036553.a n = A372467 (n + 1)

end A372467

/-! ## A372467.P10892291283750996284

`A046951(A036537(n+1))%A298195(3*n+1)`
-/

namespace A372467.P10892291283750996284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A046951 (A036537 (n + 1)).toNat) (A298195 (3 * n + 1))

end

end A372467.P10892291283750996284

namespace A372467

/-- `A046951(A036537(n+1))%A298195(3*n+1)` -/
def P10892291283750996284.Spec : Prop :=
  ∀ n, P10892291283750996284.a n = A372467 (n + 1)

end A372467

/-!
# A372468: The number of divisors of the numbers whose number of divisors is a power of 2 (A036537).

The programs for A372468, the canonical program `A372468.P1330154070991715833` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A372468 has offset 1).

The definition of A372468 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, A036537, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A372468.P5920524036280238726

`2^A372469(n+1)`
-/

namespace A372468.P5920524036280238726
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A372469 (n + 1) : ℤ)

end

end A372468.P5920524036280238726

namespace A372468

/-- `2^A372469(n+1)` -/
def P5920524036280238726.Spec : Prop :=
  ∀ n, P5920524036280238726.a n = (A372468 (n + 1) : ℚ)

end A372468

/-! ## A372468.P1330154070991715833

`A000005(A036537(n+1))`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A372468

/-- `A000005(A036537(n+1))` -/
def P1330154070991715833.Spec : Prop :=
  ∀ n, P1330154070991715833.a n = A372468 (n + 1)

theorem P1330154070991715833.correct : P1330154070991715833.Spec := by
  intro n
  simp only [A372468, Nat.add_sub_cancel]

end A372468

/-! ## A372468.P6450285876399632341

`filter[A366438(n+1), A010055(#)]`
-/

namespace A372468.P6450285876399632341
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366438 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010055 (f1 j).toNat = 1) n)

end

end A372468.P6450285876399632341

namespace A372468

/-- `filter[A366438(n+1), A010055(#)]` -/
def P6450285876399632341.Spec : Prop :=
  ∀ n, P6450285876399632341.a n = A372468 (n + 1)

end A372468

/-! ## A372468.P7990377871201151191

`filter[A366438(n+1), A011751(#)]`
-/

namespace A372468.P7990377871201151191
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366438 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A011751 (f1 j).toNat = 1) n)

end

end A372468.P7990377871201151191

namespace A372468

/-- `filter[A366438(n+1), A011751(#)]` -/
def P7990377871201151191.Spec : Prop :=
  ∀ n, P7990377871201151191.a n = A372468 (n + 1)

end A372468

/-! ## A372468.P4654882851088447133

`filter[A366438(n+1), A076141(#)]`
-/

namespace A372468.P4654882851088447133
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366438 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A076141 (f1 j).toNat = 1) n)

end

end A372468.P4654882851088447133

namespace A372468

/-- `filter[A366438(n+1), A076141(#)]` -/
def P4654882851088447133.Spec : Prop :=
  ∀ n, P4654882851088447133.a n = A372468 (n + 1)

end A372468

/-! ## A372468.P10395135519385484402

`A320111(2*A036537(n+1))`
-/

namespace A372468.P10395135519385484402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320111 (2 * A036537 (n + 1)).toNat

end

end A372468.P10395135519385484402

namespace A372468

/-- `A320111(2*A036537(n+1))` -/
def P10395135519385484402.Spec : Prop :=
  ∀ n, P10395135519385484402.a n = A372468 (n + 1)

end A372468

/-! ## A372468.P14762185288492601292

`filter[A000005(n+1), A209229(#)]`
-/

namespace A372468.P14762185288492601292
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A209229 (f1 j).toNat = 1) n)

end

end A372468.P14762185288492601292

namespace A372468

/-- `filter[A000005(n+1), A209229(#)]` -/
def P14762185288492601292.Spec : Prop :=
  ∀ n, P14762185288492601292.a n = A372468 (n + 1)

end A372468

/-! ## A372468.P18102271023166222846

`A372470(and(-1, A036537(n+1)))`
-/

namespace A372468.P18102271023166222846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372470 (Int.land (-1) (A036537 (n + 1))).toNat

end

end A372468.P18102271023166222846

namespace A372468

/-- `A372470(and(-1, A036537(n+1)))` -/
def P18102271023166222846.Spec : Prop :=
  ∀ n, P18102271023166222846.a n = A372468 (n + 1)

end A372468

/-! ## A372468.P5531835144233812003

`A037445(A036537(2*n+1-n))`
-/

namespace A372468.P5531835144233812003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037445 (A036537 (2 * n + 1 - n)).toNat

end

end A372468.P5531835144233812003

namespace A372468

/-- `A037445(A036537(2*n+1-n))` -/
def P5531835144233812003.Spec : Prop :=
  ∀ n, P5531835144233812003.a n = A372468 (n + 1)

end A372468

/-! ## A372468.P16769069420526053959

`A037445(A036537(n+1)%A006512(n+1))`
-/

namespace A372468.P16769069420526053959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037445 (Int.tmod (A036537 (n + 1)) (A006512 (n + 1))).toNat

end

end A372468.P16769069420526053959

namespace A372468

/-- `A037445(A036537(n+1)%A006512(n+1))` -/
def P16769069420526053959.Spec : Prop :=
  ∀ n, P16769069420526053959.a n = A372468 (n + 1)

end A372468

/-! ## A372468.P16988190313953117831

`A037445(A036537(n+1))%A049492(n+1)`
-/

namespace A372468.P16988190313953117831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A037445 (A036537 (n + 1)).toNat) (A049492 (n + 1))

end

end A372468.P16988190313953117831

namespace A372468

/-- `A037445(A036537(n+1))%A049492(n+1)` -/
def P16988190313953117831.Spec : Prop :=
  ∀ n, P16988190313953117831.a n = A372468 (n + 1)

end A372468

/-! ## A372468.P11839122961306965560

`filter[A183063(n+1), A209229(#)]`
-/

namespace A372468.P11839122961306965560
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183063 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A209229 (f1 j).toNat = 1) n)

end

end A372468.P11839122961306965560

namespace A372468

/-- `filter[A183063(n+1), A209229(#)]` -/
def P11839122961306965560.Spec : Prop :=
  ∀ n, P11839122961306965560.a n = A372468 (n + 1)

end A372468

/-! ## A372468.P12397131790046097034

`filter[A112329(2*(n+1)), A209229(#)]`
-/

namespace A372468.P12397131790046097034
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112329 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A209229 (f1 j).toNat = 1) n)

end

end A372468.P12397131790046097034

namespace A372468

/-- `filter[A112329(2*(n+1)), A209229(#)]` -/
def P12397131790046097034.Spec : Prop :=
  ∀ n, P12397131790046097034.a n = A372468 (n + 1)

end A372468

/-! ## A372468.P11760428633430798360

`filter[A299480(2*(n+1)), A209229(#)]`
-/

namespace A372468.P11760428633430798360
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299480 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A209229 (f1 j).toNat = 1) n)

end

end A372468.P11760428633430798360

namespace A372468

/-- `filter[A299480(2*(n+1)), A209229(#)]` -/
def P11760428633430798360.Spec : Prop :=
  ∀ n, P11760428633430798360.a n = A372468 (n + 1)

end A372468

/-!
# A372469: a(n) = log_2(A372468(n)).

The programs for A372469, the canonical program `A372469.P15367913402660155872` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A372469 has offset 1).

The definition of A372469 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A372468, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A372469.P15367913402660155872

`log2(A372468(n+1))`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A372469

/-- `log2(A372468(n+1))` -/
def P15367913402660155872.Spec : Prop :=
  ∀ n, P15367913402660155872.a n = (A372469 (n + 1) : ℝ)

end A372469

/-! ## A372469.P17293154945311435634

`A064547(A036537(n+1))`
-/

namespace A372469.P17293154945311435634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064547 (A036537 (n + 1)).toNat

end

end A372469.P17293154945311435634

namespace A372469

/-- `A064547(A036537(n+1))` -/
def P17293154945311435634.Spec : Prop :=
  ∀ n, P17293154945311435634.a n = A372469 (n + 1)

end A372469

/-! ## A372469.P17852392571188972473

`A372442(3*A372468(n+1))`
-/

namespace A372469.P17852392571188972473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372442 (3 * A372468 (n + 1)).toNat

end

end A372469.P17852392571188972473

namespace A372469

/-- `A372442(3*A372468(n+1))` -/
def P17852392571188972473.Spec : Prop :=
  ∀ n, P17852392571188972473.a n = A372469 (n + 1)

end A372469

/-! ## A372469.P15819184337457583824

`∑{e}[A036537(n+1), A000120(#)]`
-/

namespace A372469.P15819184337457583824
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036537 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A000120 (Nat.factorization (f1 n).natAbs p)

end

end A372469.P15819184337457583824

namespace A372469

/-- `∑{e}[A036537(n+1), A000120(#)]` -/
def P15819184337457583824.Spec : Prop :=
  ∀ n, P15819184337457583824.a n = A372469 (n + 1)

end A372469

/-! ## A372469.P13490374652792309007

`∑{e}[A036537(n+1), A307300(#)]`
-/

namespace A372469.P13490374652792309007
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036537 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A307300 (Nat.factorization (f1 n).natAbs p)

end

end A372469.P13490374652792309007

namespace A372469

/-- `∑{e}[A036537(n+1), A307300(#)]` -/
def P13490374652792309007.Spec : Prop :=
  ∀ n, P13490374652792309007.a n = A372469 (n + 1)

end A372469

/-! ## A372469.P7060565024977193090

`A007953(∑{e}[A372468(n+1), #])`
-/

namespace A372469.P7060565024977193090
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372468 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p)

end

end A372469.P7060565024977193090

namespace A372469

/-- `A007953(∑{e}[A372468(n+1), #])` -/
def P7060565024977193090.Spec : Prop :=
  ∀ n, P7060565024977193090.a n = A372469 (n + 1)

end A372469

/-! ## A372469.P1341233277483615187

`∑{e}[A036537(n+1), A368147(#)]`
-/

namespace A372469.P1341233277483615187
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036537 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A368147 (Nat.factorization (f1 n).natAbs p)

end

end A372469.P1341233277483615187

namespace A372469

/-- `∑{e}[A036537(n+1), A368147(#)]` -/
def P1341233277483615187.Spec : Prop :=
  ∀ n, P1341233277483615187.a n = A372469 (n + 1)

end A372469

/-! ## A372469.P11924515868659738191

`A109129(and(-1, A372468(n+1)))`
-/

namespace A372469.P11924515868659738191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109129 (Int.land (-1) (A372468 (n + 1))).toNat

end

end A372469.P11924515868659738191

namespace A372469

/-- `A109129(and(-1, A372468(n+1)))` -/
def P11924515868659738191.Spec : Prop :=
  ∀ n, P11924515868659738191.a n = A372469 (n + 1)

end A372469

/-! ## A372469.P1850733955138666255

`A109129(A372468(n+1)²)/2`
-/

namespace A372469.P1850733955138666255
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A109129 (A372468 (n + 1) ^ 2).toNat : ℚ) / 2

end

end A372469.P1850733955138666255

namespace A372469

/-- `A109129(A372468(n+1)²)/2` -/
def P1850733955138666255.Spec : Prop :=
  ∀ n, P1850733955138666255.a n = (A372469 (n + 1) : ℚ)

end A372469

/-! ## A372469.P13681208609635667221

`A295664(A036537(2*n+1-n))`
-/

namespace A372469.P13681208609635667221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295664 (A036537 (2 * n + 1 - n)).toNat

end

end A372469.P13681208609635667221

namespace A372469

/-- `A295664(A036537(2*n+1-n))` -/
def P13681208609635667221.Spec : Prop :=
  ∀ n, P13681208609635667221.a n = A372469 (n + 1)

end A372469

/-! ## A372469.P9755470458737914386

`A032741(A372468(n+1))*A054977(n)`
-/

namespace A372469.P9755470458737914386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 (A372468 (n + 1)).toNat * A054977 n

end

end A372469.P9755470458737914386

namespace A372469

/-- `A032741(A372468(n+1))*A054977(n)` -/
def P9755470458737914386.Spec : Prop :=
  ∀ n, P9755470458737914386.a n = A372469 (n + 1)

end A372469

/-! ## A372469.P12256752849462263636

`A032741(A372468(n+1)/A054977(n+2))`
-/

namespace A372469.P12256752849462263636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 (SequenceMachineLib.roundAway ((A372468 (n + 1) : ℚ) / (A054977 (n + 2) : ℚ))).toNat

end

end A372469.P12256752849462263636

namespace A372469

/-- `A032741(A372468(n+1)/A054977(n+2))` -/
def P12256752849462263636.Spec : Prop :=
  ∀ n, P12256752849462263636.a n = A372469 (n + 1)

end A372469

/-!
# A372470: Multiplicative with a(p^e) = e+1 if e+1 is a power of 2, and 0 otherwise.

The programs for A372470, the canonical program `A372470.P1016400995932517880` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A372470 has offset 1).

The definition of A372470 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, A359473, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A372470.P1016400995932517880

`A359473(n+1)*A000005(n+1)`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A372470

/-- `A359473(n+1)*A000005(n+1)` -/
def P1016400995932517880.Spec : Prop :=
  ∀ n, P1016400995932517880.a n = A372470 (n + 1)

theorem P1016400995932517880.correct : P1016400995932517880.Spec := by
  intro n
  simp only [A372470, Nat.add_sub_cancel]

end A372470

/-! ## A372470.P14944067805291790759

`∏{e}[n+1, A099894(#)]`
-/

namespace A372470.P14944067805291790759
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A099894 (Nat.factorization (f1 n) p)

end

end A372470.P14944067805291790759

namespace A372470

/-- `∏{e}[n+1, A099894(#)]` -/
def P14944067805291790759.Spec : Prop :=
  ∀ n, P14944067805291790759.a n = A372470 (n + 1)

end A372470

/-! ## A372470.P14735228565774854360

`A048298(A000005(n+1))`
-/

namespace A372470.P14735228565774854360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048298 (A000005 (n + 1)).toNat

end

end A372470.P14735228565774854360

namespace A372470

/-- `A048298(A000005(n+1))` -/
def P14735228565774854360.Spec : Prop :=
  ∀ n, P14735228565774854360.a n = A372470 (n + 1)

end A372470

/-! ## A372470.P8525750137257729040

`A099894(A032741(n+1))`
-/

namespace A372470.P8525750137257729040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099894 (A032741 (n + 1)).toNat

end

end A372470.P8525750137257729040

namespace A372470

/-- `A099894(A032741(n+1))` -/
def P8525750137257729040.Spec : Prop :=
  ∀ n, P8525750137257729040.a n = A372470 (n + 1)

end A372470

/-! ## A372470.P6766022746026773397

`A349394(A062011(n+1))`
-/

namespace A372470.P6766022746026773397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349394 (A062011 (n + 1)).toNat

end

end A372470.P6766022746026773397

namespace A372470

/-- `A349394(A062011(n+1))` -/
def P6766022746026773397.Spec : Prop :=
  ∀ n, P6766022746026773397.a n = A372470 (n + 1)

end A372470

/-! ## A372470.P18018058779165793730

`A099894(A000005(n+1)-1)`
-/

namespace A372470.P18018058779165793730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099894 (A000005 (n + 1) - 1).toNat

end

end A372470.P18018058779165793730

namespace A372470

/-- `A099894(A000005(n+1)-1)` -/
def P18018058779165793730.Spec : Prop :=
  ∀ n, P18018058779165793730.a n = A372470 (n + 1)

end A372470

/-! ## A372470.P4713877886441698752

`A346612(2*A000005(n+1)²)`
-/

namespace A372470.P4713877886441698752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346612 (2 * A000005 (n + 1) ^ 2).toNat

end

end A372470.P4713877886441698752

namespace A372470

/-- `A346612(2*A000005(n+1)²)` -/
def P4713877886441698752.Spec : Prop :=
  ∀ n, P4713877886441698752.a n = A372470 (n + 1)

end A372470

/-! ## A372470.P15719413090332691245

`A037445(n+1)*A359473(n+1)`
-/

namespace A372470.P15719413090332691245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037445 (n + 1) * A359473 (n + 1)

end

end A372470.P15719413090332691245

namespace A372470

/-- `A037445(n+1)*A359473(n+1)` -/
def P15719413090332691245.Spec : Prop :=
  ∀ n, P15719413090332691245.a n = A372470 (n + 1)

end A372470

/-! ## A372470.P4671900043882193335

`A074848(n+1)*A359473(n+1)`
-/

namespace A372470.P4671900043882193335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074848 (n + 1) * A359473 (n + 1)

end

end A372470.P4671900043882193335

namespace A372470

/-- `A074848(n+1)*A359473(n+1)` -/
def P4671900043882193335.Spec : Prop :=
  ∀ n, P4671900043882193335.a n = A372470 (n + 1)

end A372470

/-! ## A372470.P18086573771027449717

`A286324(n+1)*A359473(n+1)`
-/

namespace A372470.P18086573771027449717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286324 (n + 1) * A359473 (n + 1)

end

end A372470.P18086573771027449717

namespace A372470

/-- `A286324(n+1)*A359473(n+1)` -/
def P18086573771027449717.Spec : Prop :=
  ∀ n, P18086573771027449717.a n = A372470 (n + 1)

end A372470

/-! ## A372470.P9238811964550905822

`A318307(n+1)*A359473(n+1)`
-/

namespace A372470.P9238811964550905822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318307 (n + 1) * A359473 (n + 1)

end

end A372470.P9238811964550905822

namespace A372470

/-- `A318307(n+1)*A359473(n+1)` -/
def P9238811964550905822.Spec : Prop :=
  ∀ n, P9238811964550905822.a n = A372470 (n + 1)

end A372470

/-! ## A372470.P7029448179083507970

`A331308(n+1)*A359473(n+1)`
-/

namespace A372470.P7029448179083507970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331308 (n + 1) * A359473 (n + 1)

end

end A372470.P7029448179083507970

namespace A372470

/-- `A331308(n+1)*A359473(n+1)` -/
def P7029448179083507970.Spec : Prop :=
  ∀ n, P7029448179083507970.a n = A372470 (n + 1)

end A372470

/-! ## A372470.P12450419589013452460

`A336856(n+1)*A359473(n+1)`
-/

namespace A372470.P12450419589013452460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336856 (n + 1) * A359473 (n + 1)

end

end A372470.P12450419589013452460

namespace A372470

/-- `A336856(n+1)*A359473(n+1)` -/
def P12450419589013452460.Spec : Prop :=
  ∀ n, P12450419589013452460.a n = A372470 (n + 1)

end A372470

/-! ## A372470.P17480022043066695114

`A359473(n+1)*A372381(n+1)`
-/

namespace A372470.P17480022043066695114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359473 (n + 1) * A372381 (n + 1)

end

end A372470.P17480022043066695114

namespace A372470

/-- `A359473(n+1)*A372381(n+1)` -/
def P17480022043066695114.Spec : Prop :=
  ∀ n, P17480022043066695114.a n = A372470 (n + 1)

end A372470

/-! ## A372470.P8486659585276380151

`A253139(n+1)%A062011(n+1)`
-/

namespace A372470.P8486659585276380151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A253139 (n + 1)) (A062011 (n + 1))

end

end A372470.P8486659585276380151

namespace A372470

/-- `A253139(n+1)%A062011(n+1)` -/
def P8486659585276380151.Spec : Prop :=
  ∀ n, P8486659585276380151.a n = A372470 (n + 1)

end A372470

/-! ## A372470.P4949841614142902157

`A317848(n+1)%A062011(n+1)`
-/

namespace A372470.P4949841614142902157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A317848 (n + 1)) (A062011 (n + 1))

end

end A372470.P4949841614142902157

namespace A372470

/-- `A317848(n+1)%A062011(n+1)` -/
def P4949841614142902157.Spec : Prop :=
  ∀ n, P4949841614142902157.a n = A372470 (n + 1)

end A372470

/-! ## A372470.P8834869793400794241

`and(A000005(n+1), A372330(n+1))`
-/

namespace A372470.P8834869793400794241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000005 (n + 1)) (A372330 (n + 1))

end

end A372470.P8834869793400794241

namespace A372470

/-- `and(A000005(n+1), A372330(n+1))` -/
def P8834869793400794241.Spec : Prop :=
  ∀ n, P8834869793400794241.a n = A372470 (n + 1)

end A372470

/-! ## A372470.P15857544064562486646

`and(A037445(n+1), A372330(n+1))`
-/

namespace A372470.P15857544064562486646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A037445 (n + 1)) (A372330 (n + 1))

end

end A372470.P15857544064562486646

namespace A372470

/-- `and(A037445(n+1), A372330(n+1))` -/
def P15857544064562486646.Spec : Prop :=
  ∀ n, P15857544064562486646.a n = A372470 (n + 1)

end A372470

/-! ## A372470.P4603382975074719350

`and(A074848(n+1), A372330(n+1))`
-/

namespace A372470.P4603382975074719350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A074848 (n + 1)) (A372330 (n + 1))

end

end A372470.P4603382975074719350

namespace A372470

/-- `and(A074848(n+1), A372330(n+1))` -/
def P4603382975074719350.Spec : Prop :=
  ∀ n, P4603382975074719350.a n = A372470 (n + 1)

end A372470

/-! ## A372470.P204054105844524812

`A000005(n+1)*A076141(A000005(n+1)²)`
-/

namespace A372470.P204054105844524812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) * A076141 (A000005 (n + 1) ^ 2).toNat

end

end A372470.P204054105844524812

namespace A372470

/-- `A000005(n+1)*A076141(A000005(n+1)²)` -/
def P204054105844524812.Spec : Prop :=
  ∀ n, P204054105844524812.a n = A372470 (n + 1)

end A372470

/-!
# A372471: Irregular triangle read by rows where row n lists the binary indices of the n-th prime number.

The programs for A372471, there is no canonical definition to state claims against.
-/

/-! ## A372471.P17559905822638416810

`A255849(A255834(n))+A255809(n+1)`
-/

namespace A372471.P17559905822638416810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255849 (A255834 n).toNat + A255809 (n + 1)

end

end A372471.P17559905822638416810

/-! ## A372471.P10245682967019645915

`xor(A175070(A094793(n)), A255809(n+1))`
-/

namespace A372471.P10245682967019645915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A175070 (A094793 n).toNat) (A255809 (n + 1))

end

end A372471.P10245682967019645915

/-! ## A372471.P15208840393739222620

`A255809(n+1)+A010054(A319422(n+1))`
-/

namespace A372471.P15208840393739222620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255809 (n + 1) + A010054 (A319422 (n + 1)).toNat

end

end A372471.P15208840393739222620

/-! ## A372471.P3308383705878580283

`A255849(A237527(n+1))+A255809(n+1)`
-/

namespace A372471.P3308383705878580283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255849 (A237527 (n + 1)).toNat + A255809 (n + 1)

end

end A372471.P3308383705878580283

/-! ## A372471.P4200743697457055325

`A255809(n+1)+A010054(A060982(n+4))`
-/

namespace A372471.P4200743697457055325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255809 (n + 1) + A010054 (A060982 (n + 4)).toNat

end

end A372471.P4200743697457055325

/-!
# A372472: Number of zeros in the binary expansion of the n-th squarefree number.

The programs for A372472, the canonical program `A372472.P1229961914939345524` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A372472 has offset 1).

The definition of A372472 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005117, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A372472.P1229961914939345524

`A023416(A005117(n+1))`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A372472

/-- `A023416(A005117(n+1))` -/
def P1229961914939345524.Spec : Prop :=
  ∀ n, P1229961914939345524.a n = A372472 (n + 1)

theorem P1229961914939345524.correct : P1229961914939345524.Spec := by
  intro n
  simp only [A372472, Nat.add_sub_cancel]

end A372472

/-! ## A372472.P1243302419311602942

`A372475(n+1)-A372433(n+1)`
-/

namespace A372472.P1243302419311602942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372475 (n + 1) - A372433 (n + 1)

end

end A372472.P1243302419311602942

namespace A372472

/-- `A372475(n+1)-A372433(n+1)` -/
def P1243302419311602942.Spec : Prop :=
  ∀ n, P1243302419311602942.a n = A372472 (n + 1)

end A372472

/-! ## A372472.P16497696271613399290

`A023416(record[∏{p}[n, #]])`
-/

namespace A372472.P16497696271613399290
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023416 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A372472.P16497696271613399290

namespace A372472

/-- `A023416(record[∏{p}[n, #]])` -/
def P16497696271613399290.Spec : Prop :=
  ∀ n, P16497696271613399290.a n = A372472 (n + 1)

end A372472

/-! ## A372472.P16924516527156320442

`A023416(record[A003967(n+1)])`
-/

namespace A372472.P16924516527156320442
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003967 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023416 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A372472.P16924516527156320442

namespace A372472

/-- `A023416(record[A003967(n+1)])` -/
def P16924516527156320442.Spec : Prop :=
  ∀ n, P16924516527156320442.a n = A372472 (n + 1)

end A372472

/-! ## A372472.P11731917873662618537

`A023416(record[A007913(n+1)])`
-/

namespace A372472.P11731917873662618537
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023416 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A372472.P11731917873662618537

namespace A372472

/-- `A023416(record[A007913(n+1)])` -/
def P11731917873662618537.Spec : Prop :=
  ∀ n, P11731917873662618537.a n = A372472 (n + 1)

end A372472

/-! ## A372472.P17528581712692684770

`A023416(record[A007947(n+1)])`
-/

namespace A372472.P17528581712692684770
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023416 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A372472.P17528581712692684770

namespace A372472

/-- `A023416(record[A007947(n+1)])` -/
def P17528581712692684770.Spec : Prop :=
  ∀ n, P17528581712692684770.a n = A372472 (n + 1)

end A372472

/-! ## A372472.P10692716305336137236

`A023416(record[A019554(n+1)])`
-/

namespace A372472.P10692716305336137236
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019554 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023416 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A372472.P10692716305336137236

namespace A372472

/-- `A023416(record[A019554(n+1)])` -/
def P10692716305336137236.Spec : Prop :=
  ∀ n, P10692716305336137236.a n = A372472 (n + 1)

end A372472

/-! ## A372472.P9036501984386922511

`A023416(record[A055231(n+1)])`
-/

namespace A372472.P9036501984386922511
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055231 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023416 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A372472.P9036501984386922511

namespace A372472

/-- `A023416(record[A055231(n+1)])` -/
def P9036501984386922511.Spec : Prop :=
  ∀ n, P9036501984386922511.a n = A372472 (n + 1)

end A372472

/-! ## A372472.P16861491943148892813

`A080791(∏{p}[A005117(n+1), #])`
-/

namespace A372472.P16861491943148892813
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080791 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A372472.P16861491943148892813

namespace A372472

/-- `A080791(∏{p}[A005117(n+1), #])` -/
def P16861491943148892813.Spec : Prop :=
  ∀ n, P16861491943148892813.a n = A372472 (n + 1)

end A372472

/-! ## A372472.P2967558720110279677

`A080791(A005117(n+1)%A001844(n))`
-/

namespace A372472.P2967558720110279677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080791 (Int.tmod (A005117 (n + 1)) (A001844 n)).toNat

end

end A372472.P2967558720110279677

namespace A372472

/-- `A080791(A005117(n+1)%A001844(n))` -/
def P2967558720110279677.Spec : Prop :=
  ∀ n, P2967558720110279677.a n = A372472 (n + 1)

end A372472

/-!
# A372473: Least k such that the k-th squarefree number has exactly n zeros in its binary expansion.

The programs for A372473, there is no canonical definition to state claims against.
-/

/-! ## A372473.P15538439377917209935

`A372540(n+1)-A103516(A015530(n))`
-/

namespace A372473.P15538439377917209935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372540 (n + 1) - A103516 (A015530 n).toNat

end

end A372473.P15538439377917209935

/-! ## A372473.P18287107870262263657

`A298118(n+4)+A015560(A222032(3*n+1))`
-/

namespace A372473.P18287107870262263657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298118 (n + 4) + A015560 (A222032 (3 * n + 1)).toNat

end

end A372473.P18287107870262263657

/-!
# A372474: Least k such that the k-th prime number has exactly n zeros in its binary expansion.

The programs for A372474, there is no canonical definition to state claims against.
-/

/-! ## A372474.P4655515506690142823

`A000720(A066195(n))`
-/

namespace A372474.P4655515506690142823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A066195 n).toNat

end

end A372474.P4655515506690142823

/-! ## A372474.P16650941988076681872

`A061395(∏{p}[A066195(n), #])`
-/

namespace A372474.P16650941988076681872
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066195 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A372474.P16650941988076681872

/-! ## A372474.P15009138849577632021

`A061395(lcm((-1)^n, A066195(n)))`
-/

namespace A372474.P15009138849577632021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (Int.lcm ((-1) ^ n) (A066195 n))

end

end A372474.P15009138849577632021

/-! ## A372474.P11005082069330124177

`A061395(A047080(n)*A066195(n))`
-/

namespace A372474.P11005082069330124177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (A047080 n * A066195 n).toNat

end

end A372474.P11005082069330124177

/-! ## A372474.P10679245949370214519

`A061395(A066195(n)*A245222(n))`
-/

namespace A372474.P10679245949370214519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (A066195 n * A245222 n).toNat

end

end A372474.P10679245949370214519

/-!
# A372475: Length of binary expansion (or number of bits) of the n-th squarefree number.

The programs for A372475, the canonical program `A372475.P6789191976370700518` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A372475 has offset 1).

The definition of A372475 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A372433, A372472, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A372475.P6789191976370700518

`A372472(n+1)+A372433(n+1)`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A372475

/-- `A372472(n+1)+A372433(n+1)` -/
def P6789191976370700518.Spec : Prop :=
  ∀ n, P6789191976370700518.a n = A372475 (n + 1)

theorem P6789191976370700518.correct : P6789191976370700518.Spec := by
  intro n
  simp only [A372475, Nat.add_sub_cancel]

end A372475

/-! ## A372475.P16615505684793078542

`A070939(A005117(n+1))`
-/

namespace A372475.P16615505684793078542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 (A005117 (n + 1)).toNat

end

end A372475.P16615505684793078542

namespace A372475

/-- `A070939(A005117(n+1))` -/
def P16615505684793078542.Spec : Prop :=
  ∀ n, P16615505684793078542.a n = A372475 (n + 1)

end A372475

/-! ## A372475.P18127123129133669014

`∑[char[A372540(n)-1]]`
-/

namespace A372475.P18127123129133669014
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372540 n - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A372475.P18127123129133669014

namespace A372475

/-- `∑[char[A372540(n)-1]]` -/
def P18127123129133669014.Spec : Prop :=
  ∀ n, (P18127123129133669014.a n : ℤ) = A372475 (n + 1)

end A372475

/-! ## A372475.P14746044993684474078

`∑[char[A013928(A001316(n))]]`
-/

namespace A372475.P14746044993684474078
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013928 (A001316 n).toNat

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A372475.P14746044993684474078

namespace A372475

/-- `∑[char[A013928(A001316(n))]]` -/
def P14746044993684474078.Spec : Prop :=
  ∀ n, (P14746044993684474078.a n : ℤ) = A372475 (n + 1)

end A372475

/-! ## A372475.P5204341988583461766

`A070939(A156899(n+1))`
-/

namespace A372475.P5204341988583461766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 (A156899 (n + 1)).toNat

end

end A372475.P5204341988583461766

namespace A372475

/-- `A070939(A156899(n+1))` -/
def P5204341988583461766.Spec : Prop :=
  ∀ n, P5204341988583461766.a n = A372475 (n + 1)

end A372475

/-! ## A372475.P3661358669896574104

`A070939(record[A007947(n+1)])`
-/

namespace A372475.P3661358669896574104
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A372475.P3661358669896574104

namespace A372475

/-- `A070939(record[A007947(n+1)])` -/
def P3661358669896574104.Spec : Prop :=
  ∀ n, P3661358669896574104.a n = A372475 (n + 1)

end A372475

/-! ## A372475.P12532840945731867960

`A029837(A005117(n+1)+1)`
-/

namespace A372475.P12532840945731867960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029837 (A005117 (n + 1) + 1).toNat

end

end A372475.P12532840945731867960

namespace A372475

/-- `A029837(A005117(n+1)+1)` -/
def P12532840945731867960.Spec : Prop :=
  ∀ n, P12532840945731867960.a n = A372475 (n + 1)

end A372475

/-! ## A372475.P616695401948633592

`A070939(A243349(n+1)+A243290(n+1))`
-/

namespace A372475.P616695401948633592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 (A243349 (n + 1) + A243290 (n + 1)).toNat

end

end A372475.P616695401948633592

namespace A372475

/-- `A070939(A243349(n+1)+A243290(n+1))` -/
def P616695401948633592.Spec : Prop :=
  ∀ n, P616695401948633592.a n = A372475 (n + 1)

end A372475

/-! ## A372475.P15669175967131757978

`floor(log2(record[A015049(n+1)]))`
-/

namespace A372475.P15669175967131757978
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015049 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.log 2 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A372475.P15669175967131757978

namespace A372475

/-- `floor(log2(record[A015049(n+1)]))` -/
def P15669175967131757978.Spec : Prop :=
  ∀ n, (P15669175967131757978.a n : ℤ) = A372475 (n + 1)

end A372475

/-! ## A372475.P16428673028552081126

`A059939(A133466(n+1))`
-/

namespace A372475.P16428673028552081126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059939 (A133466 (n + 1)).toNat

end

end A372475.P16428673028552081126

namespace A372475

/-- `A059939(A133466(n+1))` -/
def P16428673028552081126.Spec : Prop :=
  ∀ n, P16428673028552081126.a n = A372475 (n + 1)

end A372475

/-!
# A372476: Coefficient of x^n in the expansion of 1 / ( (1-x) * (1-x-x^3) )^n.

The programs for A372476, there is no canonical definition to state claims against.
-/

/-! ## A372476.P11528886294670996263

`or(A127788(A259839(n)), A372415(n))`
-/

namespace A372476.P11528886294670996263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A127788 (A259839 n).toNat) (A372415 n)

end

end A372476.P11528886294670996263

/-!
# A372477: Areas of alternating equilateral and non-equilateral triangles that make up a three-leaf tiling over a regular triangular grid.

The programs for A372477, there is no canonical definition to state claims against.
-/

/-! ## A372477.P6849310137627527274

`∑[val(A220084(A339658(3*n+1)), 2)+1]`
-/

namespace A372477.P6849310137627527274
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A220084 (A339658 (3 * n + 1)).toNat).toNat 2 + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A372477.P6849310137627527274

/-! ## A372477.P3948726801029931978

`lt[A104149(A171852(n)), A014137(n)]`
-/

namespace A372477.P3948726801029931978
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104149 (A171852 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014137 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A372477.P3948726801029931978

/-! ## A372477.P2413364871002965264

`lt[A228636(n), A266488(A360926(n))]`
-/

namespace A372477.P2413364871002965264
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228636 (n + 10)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266488 (A360926 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A372477.P2413364871002965264

/-! ## A372477.P11077355448603738536

`lt[A247026(A050140(n+1)), A045672(n)]`
-/

namespace A372477.P11077355448603738536
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247026 (A050140 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045672 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A372477.P11077355448603738536

/-! ## A372477.P3653319561984087704

`lt[A247026(A050140(n+1)), A064987(n+1)]`
-/

namespace A372477.P3653319561984087704
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247026 (A050140 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064987 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A372477.P3653319561984087704

/-!
# A372480: Positions of local maxima of the probability that there will be a survivor in "group Russian roulette" as a function of initial group size.

The programs for A372480, there is no canonical definition to state claims against.
-/

/-! ## A372480.P5193925837597952300

`∑[∑[A188569(A086331(n))]]`
-/

namespace A372480.P5193925837597952300
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188569 (A086331 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A372480.P5193925837597952300

/-!
# A372481: Positions of local minima of the probability that there will be a survivor in "group Russian roulette" as a function of initial group size.

The programs for A372481, there is no canonical definition to state claims against.
-/

/-! ## A372481.P1356783058666301521

`A315729(a(n-1)/2)` with `a(0)=2`
-/

namespace A372481.P1356783058666301521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A315729 (SequenceMachineLib.roundAway ((a (n - 1) : ℚ) / 2)).toNat

end

end A372481.P1356783058666301521

/-! ## A372481.P1523287598815806461

`A349717(A077846(n))`
-/

namespace A372481.P1523287598815806461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349717 (A077846 n).toNat

end

end A372481.P1523287598815806461

/-!
# A372482: a(n) is the numerator of the probability that the procedure described in A372422 successfully ends with the selection of a single person, starting with n persons.

The programs for A372482, there is no canonical definition to state claims against.
-/

/-! ## A372482.P6211643447501424992

`A121274(A041133(n+1))`
-/

namespace A372482.P6211643447501424992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121274 (A041133 (n + 1)).toNat

end

end A372482.P6211643447501424992

/-!
# A372483: a(n) are the denominators corresponding to A372482.

The programs for A372483, there is no canonical definition to state claims against.
-/

/-! ## A372483.P4576099198480908978

`record[A099378(A244324(n+1))]`
-/

namespace A372483.P4576099198480908978
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099378 (A244324 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A372483.P4576099198480908978

/-!
# A372484: Positions of local maxima of the probability that the procedure described in A372422 successfully ends with the selection of a single person.

The programs for A372484, there is no canonical definition to state claims against.
-/

/-! ## A372484.P13156858067003925836

`ogf((1+x+3x^2-3x^3-x^4)/(1-3x+2x^2))`
-/

namespace A372484.P13156858067003925836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1, 3, -3, -1] [1, -3, 2] n

end

end A372484.P13156858067003925836

/-! ## A372484.P3328208543985142002

`A003557(n+1)+2*a(n-1)` with `a(0)=1, a(1)=4, a(2)=13`
-/

namespace A372484.P3328208543985142002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4, 13] fun n a =>
  A003557 (n + 1) + 2 * a (n - 1)

end

end A372484.P3328208543985142002

/-! ## A372484.P5670166840638167331

`A126222(2*n+3)+2*a(n-1)+1` with `a(0)=1`
-/

namespace A372484.P5670166840638167331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A126222 (2 * n + 3) + (2 * a (n - 1) + 1)

end

end A372484.P5670166840638167331

/-!
# A372485: Positions of local minima of the probability that the procedure described in A372422 successfully ends with the selection of a single person.

The programs for A372485, there is no canonical definition to state claims against.
-/

/-! ## A372485.P6343509725627188535

`ogf((2+4x+3x^2+2x^3+x^4+x^5+2x^6)/(1-2x))`
-/

namespace A372485.P6343509725627188535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, 4, 3, 2, 1, 1, 2] [1, -2] n

end

end A372485.P6343509725627188535

/-! ## A372485.P9081498462585246734

`∑[∑[∑[A000975(n)]+2]]+n`
-/

namespace A372485.P9081498462585246734
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000975 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j + 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A372485.P9081498462585246734

/-! ## A372485.P4282210568886398614

`A189362(A125176(n+1))`
-/

namespace A372485.P4282210568886398614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189362 (A125176 (n + 1)).toNat

end

end A372485.P4282210568886398614

/-!
# A372489: Number of defective (binary) heaps on 2n elements from the set {0,1} with exactly n defects.

The programs for A372489, there is no canonical definition to state claims against.
-/

/-! ## A372489.P13347986725728776975

`A216256(A345194(n)+A053616(n))`
-/

namespace A372489.P13347986725728776975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216256 (A345194 n + A053616 n).toNat

end

end A372489.P13347986725728776975

/-! ## A372489.P5595832582448637568

`A063725(A098746(n))+A057151(n+1)`
-/

namespace A372489.P5595832582448637568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063725 (A098746 n).toNat + A057151 (n + 1)

end

end A372489.P5595832582448637568

/-! ## A372489.P5382762237255440431

`A194295(A000142(n))+A194243(n+1)`
-/

namespace A372489.P5382762237255440431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194295 (A000142 n).toNat + A194243 (n + 1)

end

end A372489.P5382762237255440431

/-!
# A372491: Indices k such that A002533(k) is prime.

The programs for A372491, there is no canonical definition to state claims against.
-/

/-! ## A372491.P1788482728156111952

`A365541(n+2)+A000196(A079146(n+1))`
-/

namespace A372491.P1788482728156111952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365541 (n + 2) + A000196 (A079146 (n + 1)).toNat

end

end A372491.P1788482728156111952

/-!
# A372495: Number of inequivalent unate functions of n or fewer variables.

The programs for A372495, there is no canonical definition to state claims against.
-/

/-! ## A372495.P5930811537239286003

`∑[A304996(A001399(n))]`
-/

namespace A372495.P5930811537239286003
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304996 (A001399 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A372495.P5930811537239286003

/-! ## A372495.P10141140777533431705

`∑[A304996(A007662(n))]`
-/

namespace A372495.P10141140777533431705
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304996 (A007662 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A372495.P10141140777533431705

/-!
# A372496: Integers of the form k^2 + 1, where k >= 1, that are the product of two other integers of the form k^2 + 1, where k >= 1.

The programs for A372496, there is no canonical definition to state claims against.
-/

/-! ## A372496.P8867919927560701577

`∩[A135280(n+1), A002522(n)]`
-/

namespace A372496.P8867919927560701577
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135280 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002522 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A372496.P8867919927560701577

/-! ## A372496.P8863505082735383993

`∩[A087279(n+1), A135280(n+1)]`
-/

namespace A372496.P8863505082735383993
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087279 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135280 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A372496.P8863505082735383993

/-! ## A372496.P10675174479809374613

`∩[A134406(n+1), A135280(n+1)]`
-/

namespace A372496.P10675174479809374613
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134406 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135280 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A372496.P10675174479809374613

/-!
# A372497: Positive integers of the form k^2 - 1 that are the product of two other distinct positive integers of the form k^2 - 1.

The programs for A372497, there is no canonical definition to state claims against.
-/

/-! ## A372497.P5466325455688122991

`∩[A063066(n+1), A005563(n)]`
-/

namespace A372497.P5466325455688122991
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063066 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005563 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A372497.P5466325455688122991

/-! ## A372497.P663867147369048532

`∩[A063066(n+1), A033996(n)]`
-/

namespace A372497.P663867147369048532
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063066 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033996 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A372497.P663867147369048532

/-! ## A372497.P11349478831391271394

`∩[A063066(n+1), A082562(n)]`
-/

namespace A372497.P11349478831391271394
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063066 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082562 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A372497.P11349478831391271394

/-! ## A372497.P16969016525172846162

`∩[A063066(n+1), A132411(n)]`
-/

namespace A372497.P16969016525172846162
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063066 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132411 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A372497.P16969016525172846162

/-! ## A372497.P8988050050119629994

`∩[A024206(n+1), A063066(n+1)]`
-/

namespace A372497.P8988050050119629994
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024206 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063066 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A372497.P8988050050119629994

/-! ## A372497.P4711451423807690629

`∩[A045542(n+1), A063066(n+1)]`
-/

namespace A372497.P4711451423807690629
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045542 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063066 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A372497.P4711451423807690629

/-! ## A372497.P1701099378133870084

`∩[A057780(n+1), A063066(n+1)]`
-/

namespace A372497.P1701099378133870084
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057780 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063066 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A372497.P1701099378133870084

/-! ## A372497.P10682593052780190861

`∩[A063066(n+1), A087279(n+1)]`
-/

namespace A372497.P10682593052780190861
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063066 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087279 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A372497.P10682593052780190861

/-! ## A372497.P1685220648534723009

`∩[A063066(n+1), A120413(n+1)]`
-/

namespace A372497.P1685220648534723009
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063066 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120413 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A372497.P1685220648534723009

/-! ## A372497.P8675134055098931446

`∩[A063066(n+1), A155946(n+1)]`
-/

namespace A372497.P8675134055098931446
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063066 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155946 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A372497.P8675134055098931446

