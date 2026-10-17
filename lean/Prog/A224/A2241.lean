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
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C031
import Seq.B001.C000
import Seq.B001.C002
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B002.C000
import Seq.B002.C002
import Seq.B002.C003
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
import Seq.B009.C000
import Seq.B010.C000
import Seq.B013.C000
import Seq.Opaque.C000
import Seq.Opaque.C001
import Seq.Opaque.C002
import Seq.Opaque.C003
import Seq.Opaque.C004
import Seq.Opaque.C005
import Seq.Opaque.C006
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
import Seq.Opaque.C021
import Seq.Opaque.C022
import Seq.Opaque.C023
import Seq.Opaque.C024
import Seq.Opaque.C026

/-!
# A224100: Denominators of poly-Cauchy numbers c_n^(5).

The programs for A224100, there is no canonical definition to state claims against.
-/

/-! ## A224100.P882335113282792412

`A224096(n)²/A290318(∑[n])`
-/

namespace A224100.P882335113282792412
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A224096 n ^ 2 : ℚ) / (A290318 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ)

end

end A224100.P882335113282792412

/-! ## A224100.P3301638596515958772

`A224096(n)/A290318(A000217(n))*A224096(n)`
-/

namespace A224100.P3301638596515958772
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A224096 n : ℚ) / (A290318 (A000217 n).toNat : ℚ) * (A224096 n : ℚ)

end

end A224100.P3301638596515958772

/-! ## A224100.P4944733293608159532

`A224096(n)²/A290318(A000217(n))%A188378(n)`
-/

namespace A224100.P4944733293608159532
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A224096 n ^ 2 : ℚ) / (Int.tmod (A290318 (A000217 n).toNat) (A188378 n) : ℚ)

end

end A224100.P4944733293608159532

/-! ## A224100.P4537340288721402222

`A224096(n)²/(A290318(A000217(n))+A070140(n+1))`
-/

namespace A224100.P4537340288721402222
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A224096 n ^ 2 : ℚ) / (A290318 (A000217 n).toNat + A070140 (n + 1) : ℚ)

end

end A224100.P4537340288721402222

/-! ## A224100.P11271227104076379373

`A224096(n)²/A290318(A000217(n))^A319689(n+1)`
-/

namespace A224100.P11271227104076379373
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A224096 n ^ 2 : ℚ) / (A290318 (A000217 n).toNat : ℚ) ^ (A319689 (n + 1) : ℤ)

end

end A224100.P11271227104076379373

/-!
# A224103: Denominators of poly-Cauchy numbers of the second kind hat c_n^(3).

The programs for A224103, there is no canonical definition to state claims against.
-/

/-! ## A224103.P11895231387115269653

`lcm(A224096(n), A233511(A025543(n)))`
-/

namespace A224103.P11895231387115269653
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A224096 n) (A233511 (A025543 n).toNat)

end

end A224103.P11895231387115269653

/-! ## A224103.P11500849200616666473

`A224096(A004905(n+1))*A336850(n+1)`
-/

namespace A224103.P11500849200616666473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224096 (A004905 (n + 1)).toNat * A336850 (n + 1)

end

end A224103.P11500849200616666473

/-! ## A224103.P3530535808089924381

`A224098(n)/A003418(A004905(n+1)+1)`
-/

namespace A224103.P3530535808089924381
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A224098 n : ℚ) / (A003418 (A004905 (n + 1) + 1).toNat : ℚ)

end

end A224103.P3530535808089924381

/-! ## A224103.P3532226456001655747

`A009194(2*n+5)*A224096(A004905(n+1))`
-/

namespace A224103.P3532226456001655747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009194 (2 * n + 5) * A224096 (A004905 (n + 1)).toNat

end

end A224103.P3532226456001655747

/-! ## A224103.P3112076259842263201

`A219247(n)²/A290318(∑[n])*A336850(n+1)`
-/

namespace A224103.P3112076259842263201
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A219247 n ^ 2 : ℚ) / (A290318 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ) * (A336850 (n + 1) : ℚ)

end

end A224103.P3112076259842263201

/-!
# A224105: Denominators of poly-Cauchy numbers of the second kind hat c_n^(4).

The programs for A224105, there is no canonical definition to state claims against.
-/

/-! ## A224105.P10292532422941538734

`A224096(n)²/(A002790(n)*A003418(A032555(n+1)))`
-/

namespace A224105.P10292532422941538734
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A224096 n ^ 2 : ℚ) / (A002790 n * A003418 (A032555 (n + 1)).toNat : ℚ)

end

end A224105.P10292532422941538734

/-! ## A224105.P14259245414765395008

`(A006233(n)*A007407(A032555(n+1)))²/A224094(n)`
-/

namespace A224105.P14259245414765395008
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A006233 n * A007407 (A032555 (n + 1)).toNat) ^ 2 : ℚ) / (A224094 n : ℚ)

end

end A224105.P14259245414765395008

/-! ## A224105.P8365316118366490992

`(A006233(n)*A007407(A276142(n+1)))²/A224094(n)`
-/

namespace A224105.P8365316118366490992
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A006233 n * A007407 (A276142 (n + 1)).toNat) ^ 2 : ℚ) / (A224094 n : ℚ)

end

end A224105.P8365316118366490992

/-! ## A224105.P15004206849643323987

`(A109935(A032555(n+1))*A219247(n))²/A224094(n)`
-/

namespace A224105.P15004206849643323987
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A109935 (A032555 (n + 1)).toNat * A219247 n) ^ 2 : ℚ) / (A224094 n : ℚ)

end

end A224105.P15004206849643323987

/-! ## A224105.P16198593937026287634

`A003418(A032555(n+1))*A224103(n)/A028234((n+1)²)`
-/

namespace A224105.P16198593937026287634
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003418 (A032555 (n + 1)).toNat * A224103 n : ℚ) / (A028234 ((n + 1) ^ 2) : ℚ)

end

end A224105.P16198593937026287634

/-!
# A224107: Denominators of poly-Cauchy numbers of the second kind hat c_n^(5).

The programs for A224107, there is no canonical definition to state claims against.
-/

/-! ## A224107.P2435872569662263649

`A224100(n)*A300649(A300649(2*n+3))`
-/

namespace A224107.P2435872569662263649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224100 n * A300649 (A300649 (2 * n + 3)).toNat

end

end A224107.P2435872569662263649

/-! ## A224107.P14913087013472045604

`A224103(n)²/(A000189(A126646(n))*A006233(n))`
-/

namespace A224107.P14913087013472045604
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A224103 n ^ 2 : ℚ) / (A000189 (A126646 n).toNat * A006233 n : ℚ)

end

end A224107.P14913087013472045604

/-! ## A224107.P12869106110147536297

`A003418(A004905(n+2))*A224098(n)`
-/

namespace A224107.P12869106110147536297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003418 (A004905 (n + 2)).toNat * A224098 n

end

end A224107.P12869106110147536297

/-! ## A224107.P8787090370364274676

`A000290(A109935(n+1))*A002790(n)*A109935(n+1)²`
-/

namespace A224107.P8787090370364274676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (A109935 (n + 1)).toNat * A002790 n * A109935 (n + 1) ^ 2

end

end A224107.P8787090370364274676

/-! ## A224107.P12924833963625811188

`A003418(A032555(n+1))*A224098(n)`
-/

namespace A224107.P12924833963625811188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003418 (A032555 (n + 1)).toNat * A224098 n

end

end A224107.P12924833963625811188

/-!
# A224111: Number of nX3 0..3 arrays with row sums and column sums unimodal.

The programs for A224111, there is no canonical definition to state claims against.
-/

/-! ## A224111.P135764285438148722

`A224113(∑[n+2]+4)`
-/

namespace A224111.P135764285438148722
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224113 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A224111.P135764285438148722

/-! ## A224111.P17439147190689598827

`A224113(A167614(n+1))+A056965(n)`
-/

namespace A224111.P17439147190689598827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224113 (A167614 (n + 1)).toNat + A056965 n

end

end A224111.P17439147190689598827

/-! ## A224111.P8937491168604181902

`A224113(A167614(n+1))+A105519(n)`
-/

namespace A224111.P8937491168604181902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224113 (A167614 (n + 1)).toNat + A105519 n

end

end A224111.P8937491168604181902

/-! ## A224111.P1818523247988880786

`lcm(A033999(n), A224113(A167614(n+1)))`
-/

namespace A224111.P1818523247988880786
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A224113 (A167614 (n + 1)).toNat)

end

end A224111.P1818523247988880786

/-! ## A224111.P2584342999769890659

`A224113(A167614(n+1))%A209791(n+1)`
-/

namespace A224111.P2584342999769890659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A224113 (A167614 (n + 1)).toNat) (A209791 (n + 1))

end

end A224111.P2584342999769890659

/-!
# A224112: Number of nX4 0..3 arrays with row sums and column sums unimodal.

The programs for A224112, there is no canonical definition to state claims against.
-/

/-! ## A224112.P5086163656425057593

`A224113(A141214(n)+7)`
-/

namespace A224112.P5086163656425057593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224113 (A141214 n + 7).toNat

end

end A224112.P5086163656425057593

/-! ## A224112.P2225483219582964778

`A224113(A052905(n)+9)`
-/

namespace A224112.P2225483219582964778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224113 (A052905 n + 9).toNat

end

end A224112.P2225483219582964778

/-! ## A224112.P17519138944919296249

`A224113(A055999(n)+10)`
-/

namespace A224112.P17519138944919296249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224113 (A055999 n + 10).toNat

end

end A224112.P17519138944919296249

/-! ## A224112.P5959167217403938490

`A224113(eq[5, A066657(n)])`
-/

namespace A224112.P5959167217403938490
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224113 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A224112.P5959167217403938490

/-!
# A224114: T(n,k) = Number of idempotent n X n 0..k matrices of rank 2.

The programs for A224114, there is no canonical definition to state claims against.
-/

/-! ## A224114.P12674535233940318603

`A330101(A101030(n+1))`
-/

namespace A224114.P12674535233940318603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330101 (A101030 (n + 1)).toNat

end

end A224114.P12674535233940318603

/-! ## A224114.P1614494013817603397

`A244644(A271075(n+1))`
-/

namespace A224114.P1614494013817603397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244644 (A271075 (n + 1)).toNat

end

end A224114.P1614494013817603397

/-! ## A224114.P14754935361704836995

`A229744(A396800(n+1))`
-/

namespace A224114.P14754935361704836995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229744 (A396800 (n + 1)).toNat

end

end A224114.P14754935361704836995

/-! ## A224114.P7340399410555925086

`A166301(3*A361839(n))`
-/

namespace A224114.P7340399410555925086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166301 (3 * A361839 n).toNat

end

end A224114.P7340399410555925086

/-! ## A224114.P7801446602422760301

`A243178(2^A079520(n))`
-/

namespace A224114.P7801446602422760301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243178 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A079520 n : ℤ))).toNat

end

end A224114.P7801446602422760301

/-!
# A224115: Number of idempotent 4X4 0..n matrices of rank 2.

The programs for A224115, there is no canonical definition to state claims against.
-/

/-! ## A224115.P13174757968451327335

`A224118(A141214(n)+7)`
-/

namespace A224115.P13174757968451327335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224118 (A141214 n + 7).toNat

end

end A224115.P13174757968451327335

/-! ## A224115.P4276822937661472457

`A224118(A052905(n)+9)`
-/

namespace A224115.P4276822937661472457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224118 (A052905 n + 9).toNat

end

end A224115.P4276822937661472457

/-! ## A224115.P17406936768583102692

`A224118(A055999(n)+10)`
-/

namespace A224115.P17406936768583102692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224118 (A055999 n + 10).toNat

end

end A224115.P17406936768583102692

/-!
# A224116: Number of idempotent 5X5 0..n matrices of rank 2.

The programs for A224116, there is no canonical definition to state claims against.
-/

/-! ## A224116.P4725261837711141478

`A224114(A155212(n)+13)`
-/

namespace A224116.P4725261837711141478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224114 (A155212 n + 13).toNat

end

end A224116.P4725261837711141478

/-!
# A224117: Number of idempotent n X n 0..1 matrices of rank n-2.

The programs for A224117, there is no canonical definition to state claims against.
-/

/-! ## A224117.P2888120516972481291

`A224118(∑[n+1])`
-/

namespace A224117.P2888120516972481291
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224118 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A224117.P2888120516972481291

/-! ## A224117.P5395157359745824344

`record[A224118(∑[A057979(n)])]`
-/

namespace A224117.P5395157359745824344
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224118 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A224117.P5395157359745824344

/-! ## A224117.P17936273722407799676

`record[A224118(Δ[A160790(n)])]`
-/

namespace A224117.P17936273722407799676
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160790 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224118 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A224117.P17936273722407799676

/-! ## A224117.P3917504367083139096

`record[A224118(record[A102547(n)])]`
-/

namespace A224117.P3917504367083139096
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102547 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224118 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A224117.P3917504367083139096

/-! ## A224117.P5450541222012012842

`record[A224118(record[A278929(n)])]`
-/

namespace A224117.P5450541222012012842
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278929 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224118 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A224117.P5450541222012012842

/-!
# A224118: T(n,k)=Number of idempotent n X n 0..k matrices of rank n-2.

The programs for A224118, there is no canonical definition to state claims against.
-/

/-! ## A224118.P10830158143568778468

`A010434(A271339(n+1)+1)`
-/

namespace A224118.P10830158143568778468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010434 (A271339 (n + 1) + 1).toNat

end

end A224118.P10830158143568778468

/-! ## A224118.P9633991156387302926

`A133134(A271075(n+1)+1)`
-/

namespace A224118.P9633991156387302926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133134 (A271075 (n + 1) + 1).toNat

end

end A224118.P9633991156387302926

/-! ## A224118.P14166226796758879118

`69%A330229(A268956(n+1))`
-/

namespace A224118.P14166226796758879118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod 69 (A330229 (A268956 (n + 1)).toNat)

end

end A224118.P14166226796758879118

/-! ## A224118.P9085891610387479446

`A071542(A079520(n)^A059268(n))`
-/

namespace A224118.P9085891610387479446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071542 (SequenceMachineLib.roundAway ((A079520 n : ℚ) ^ (A059268 n : ℤ))).toNat

end

end A224118.P9085891610387479446

/-! ## A224118.P14635145882957688488

`A071542(A213191(n)^A059268(n))`
-/

namespace A224118.P14635145882957688488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071542 (SequenceMachineLib.roundAway ((A213191 n : ℚ) ^ (A059268 n : ℤ))).toNat

end

end A224118.P14635145882957688488

/-!
# A224119: Number of idempotent 5X5 0..n matrices of rank 3.

The programs for A224119, there is no canonical definition to state claims against.
-/

/-! ## A224119.P10232890902534437920

`A224118((n²+9*n+4)/2+13)`
-/

namespace A224119.P10232890902534437920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224118 (SequenceMachineLib.roundAway ((n ^ 2 + 9 * n + 4 : ℚ) / 2 + 13)).toNat

end

end A224119.P10232890902534437920

/-!
# A224120: Number of idempotent 6 X 6 0..n matrices of rank 4.

The programs for A224120, there is no canonical definition to state claims against.
-/

/-! ## A224120.P7684708780566916979

`A224118(A167499(n+4)+1)`
-/

namespace A224120.P7684708780566916979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224118 (A167499 (n + 4) + 1).toNat

end

end A224120.P7684708780566916979

/-!
# A224121: Number of nX3 0..3 arrays with row sums nondecreasing and column sums unimodal.

The programs for A224121, there is no canonical definition to state claims against.
-/

/-! ## A224121.P17747141343718264813

`A224123(∑[n+3]+1)`
-/

namespace A224121.P17747141343718264813
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224123 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A224121.P17747141343718264813

/-!
# A224122: Number of nX4 0..3 arrays with row sums nondecreasing and column sums unimodal.

The programs for A224122, there is no canonical definition to state claims against.
-/

/-! ## A224122.P7943564997156947746

`A224123(∑[n+4]+3)`
-/

namespace A224122.P7943564997156947746
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224123 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A224122.P7943564997156947746

/-! ## A224122.P784552923884759034

`A224123(A052905(n+1)+2)+A035930(n)`
-/

namespace A224122.P784552923884759034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224123 (A052905 (n + 1) + 2).toNat + A035930 n

end

end A224122.P784552923884759034

/-!
# A224123: T(n,k) is the number of n X k 0..3 arrays with row sums nondecreasing and column sums unimodal.

The programs for A224123, there is no canonical definition to state claims against.
-/

/-! ## A224123.P2130057259908085112

`A224173(n+1)+A023936(A023143(n+1))`
-/

namespace A224123.P2130057259908085112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224173 (n + 1) + A023936 (A023143 (n + 1)).toNat

end

end A224123.P2130057259908085112

/-!
# A224124: Number of 2Xn 0..3 arrays with row sums nondecreasing and column sums unimodal.

The programs for A224124, there is no canonical definition to state claims against.
-/

/-! ## A224124.P6314793231926955891

`A224123(∑[n+1]+2)`
-/

namespace A224124.P6314793231926955891
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224123 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A224124.P6314793231926955891

/-! ## A224124.P8811019758373696932

`1/A224123(A133263(n+1))^(-1)`
-/

namespace A224124.P8811019758373696932
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 / (A224123 (A133263 (n + 1)).toNat : ℚ) ^ (-1 : ℤ)

end

end A224124.P8811019758373696932

/-!
# A224125: Number of 3Xn 0..3 arrays with row sums nondecreasing and column sums unimodal.

The programs for A224125, there is no canonical definition to state claims against.
-/

/-! ## A224125.P13957691953058209202

`A224123(∑[n+2]+4)`
-/

namespace A224125.P13957691953058209202
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224123 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A224125.P13957691953058209202

/-! ## A224125.P16501939232866363103

`A224123(A167614(n+1))+A025468(n)`
-/

namespace A224125.P16501939232866363103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224123 (A167614 (n + 1)).toNat + A025468 n

end

end A224125.P16501939232866363103

/-! ## A224125.P6075210269322621326

`A224123(A167614(n+1))+A025469(n)`
-/

namespace A224125.P6075210269322621326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224123 (A167614 (n + 1)).toNat + A025469 n

end

end A224125.P6075210269322621326

/-! ## A224125.P422913290479957751

`A224123(A167614(n+1))+A178779(n)`
-/

namespace A224125.P422913290479957751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224123 (A167614 (n + 1)).toNat + A178779 n

end

end A224125.P422913290479957751

/-!
# A224126: Number of 4Xn 0..3 arrays with row sums nondecreasing and column sums unimodal.

The programs for A224126, there is no canonical definition to state claims against.
-/

/-! ## A224126.P13773274945576448266

`A224123(∑[n+3]+7)`
-/

namespace A224126.P13773274945576448266
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224123 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A224126.P13773274945576448266

/-! ## A224126.P5896464553013079068

`A224123(A052905(n)+9)+A174615(n)`
-/

namespace A224126.P5896464553013079068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224123 (A052905 n + 9).toNat + A174615 n

end

end A224126.P5896464553013079068

/-! ## A224126.P10622584819886114829

`char[A328116(n+1)]*A224123(A052905(n)+9)`
-/

namespace A224126.P10622584819886114829
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328116 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A224123 (A052905 n + 9).toNat

end

end A224126.P10622584819886114829

/-!
# A224127: Number of n X n 0..1 arrays with rows nondecreasing and antidiagonals unimodal.

The programs for A224127, there is no canonical definition to state claims against.
-/

/-! ## A224127.P14543668726143267614

`A224133(∑[4*n]+1)`
-/

namespace A224127.P14543668726143267614
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224133 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A224127.P14543668726143267614

/-! ## A224127.P3621285969341367296

`record[A003982(n)*A224133(n+1)]`
-/

namespace A224127.P3621285969341367296
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A224133 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A224127.P3621285969341367296

/-! ## A224127.P1468131461100690649

`record[gcd(A114327(n), A224133(n+1))]`
-/

namespace A224127.P1468131461100690649
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A114327 n) (A224133 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A224127.P1468131461100690649

/-! ## A224127.P13517997502176767664

`char[A000052(n+1)]*A224133(A001844(n))`
-/

namespace A224127.P13517997502176767664
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000052 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A224133 (A001844 n).toNat

end

end A224127.P13517997502176767664

/-! ## A224127.P14566181035893780735

`A000045(A014963(2*(n+1)))*A224133(A001844(n))`
-/

namespace A224127.P14566181035893780735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A014963 (2 * (n + 1))).toNat * A224133 (A001844 n).toNat

end

end A224127.P14566181035893780735

/-!
# A224128: Number of n X 3 0..1 arrays with rows nondecreasing and antidiagonals unimodal.

The programs for A224128, the canonical program `A224128.P16560443898464896810` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A224128 has offset 1).

The definition of A224128 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 179 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A224128.P16560443898464896810

`4*a(n-1)-2*a(n-2)+2*a(n-3)` with `a(0)=4, a(1)=16, a(2)=58`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A224128

/-- `4*a(n-1)-2*a(n-2)+2*a(n-3)` -/
def P16560443898464896810.Spec : Prop :=
  ∀ n, P16560443898464896810.a n = A224128 (n + 1)

theorem P16560443898464896810.correct : P16560443898464896810.Spec := by
  intro n
  simp only [A224128, Nat.add_sub_cancel]

end A224128

/-! ## A224128.P10735129161470820270

`A224133(∑[n+3]+1)`
-/

namespace A224128.P10735129161470820270
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224133 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A224128.P10735129161470820270

namespace A224128

/-- `A224133(∑[n+3]+1)` -/
def P10735129161470820270.Spec : Prop :=
  ∀ n, P10735129161470820270.a n = A224128 (n + 1)

end A224128

/-! ## A224128.P1626884375266119723

`A224133(A034856(n+2))%A255656(n+1)`
-/

namespace A224128.P1626884375266119723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A224133 (A034856 (n + 2)).toNat) (A255656 (n + 1))

end

end A224128.P1626884375266119723

namespace A224128

/-- `A224133(A034856(n+2))%A255656(n+1)` -/
def P1626884375266119723.Spec : Prop :=
  ∀ n, P1626884375266119723.a n = A224128 (n + 1)

end A224128

/-! ## A224128.P8339330766207872429

`A224133(A034856(n+2))+A166352(A319797(n))`
-/

namespace A224128.P8339330766207872429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224133 (A034856 (n + 2)).toNat + A166352 (A319797 n).toNat

end

end A224128.P8339330766207872429

namespace A224128

/-- `A224133(A034856(n+2))+A166352(A319797(n))` -/
def P8339330766207872429.Spec : Prop :=
  ∀ n, P8339330766207872429.a n = A224128 (n + 1)

end A224128

/-!
# A224129: Number of n X 4 0..1 arrays with rows nondecreasing and antidiagonals unimodal.

The programs for A224129, the canonical program `A224129.P11267183911522357134` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A224129 has offset 1).

The definition of A224129 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A224129.P11267183911522357134

`5*a(n-1)-5*a(n-2)+2*a(n-3)+4*a(n-4)` with `a(0)=5, a(1)=25, a(2)=106, a(3)=419`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A224129

/-- `5*a(n-1)-5*a(n-2)+2*a(n-3)+4*a(n-4)` -/
def P11267183911522357134.Spec : Prop :=
  ∀ n, P11267183911522357134.a n = A224129 (n + 1)

theorem P11267183911522357134.correct : P11267183911522357134.Spec := by
  intro n
  simp only [A224129, Nat.add_sub_cancel]

end A224129

/-! ## A224129.P15802725925230972513

`A224133(A055998(n+2))`
-/

namespace A224129.P15802725925230972513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224133 (A055998 (n + 2)).toNat

end

end A224129.P15802725925230972513

namespace A224129

/-- `A224133(A055998(n+2))` -/
def P15802725925230972513.Spec : Prop :=
  ∀ n, P15802725925230972513.a n = A224129 (n + 1)

end A224129

/-! ## A224129.P8230683087240472274

`A224133(A155212(n)+5)`
-/

namespace A224129.P8230683087240472274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224133 (A155212 n + 5).toNat

end

end A224129.P8230683087240472274

namespace A224129

/-- `A224133(A155212(n)+5)` -/
def P8230683087240472274.Spec : Prop :=
  ∀ n, P8230683087240472274.a n = A224129 (n + 1)

end A224129

/-! ## A224129.P9350665160318255144

`A224133(A056000(n)+7)`
-/

namespace A224129.P9350665160318255144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224133 (A056000 n + 7).toNat

end

end A224129.P9350665160318255144

namespace A224129

/-- `A224133(A056000(n)+7)` -/
def P9350665160318255144.Spec : Prop :=
  ∀ n, P9350665160318255144.a n = A224129 (n + 1)

end A224129

/-! ## A224129.P301282716338840308

`A224133(Δ[A034857(n+1)])`
-/

namespace A224129.P301282716338840308
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034857 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224133 (f1 (n + 1) - f1 n).toNat

end

end A224129.P301282716338840308

namespace A224129

/-- `A224133(Δ[A034857(n+1)])` -/
def P301282716338840308.Spec : Prop :=
  ∀ n, P301282716338840308.a n = A224129 (n + 1)

end A224129

/-!
# A224130: Number of n X 5 0..1 arrays with rows nondecreasing and antidiagonals unimodal.

The programs for A224130, there is no canonical definition to state claims against.
-/

/-! ## A224130.P8054761519698237053

`A224133(A046691(n+3))`
-/

namespace A224130.P8054761519698237053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224133 (A046691 (n + 3)).toNat

end

end A224130.P8054761519698237053

/-! ## A224130.P4013482848891782222

`A224133(Δ[A023545(n+1)])`
-/

namespace A224130.P4013482848891782222
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224133 (f1 (n + 1) - f1 n).toNat

end

end A224130.P4013482848891782222

/-! ## A224130.P18256349591090360082

`A224133(A000124(n+5)-5)`
-/

namespace A224130.P18256349591090360082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224133 (A000124 (n + 5) - 5).toNat

end

end A224130.P18256349591090360082

/-! ## A224130.P3961610606316126746

`A224133(Δ[A034857(n+2)]-1)`
-/

namespace A224130.P3961610606316126746
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034857 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224133 (f1 (n + 1) - f1 n - 1).toNat

end

end A224130.P3961610606316126746

/-! ## A224130.P10003429673396355911

`A224133(A000217(n+4)+n+1)`
-/

namespace A224130.P10003429673396355911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224133 (A000217 (n + 4) + (n + 1 : ℤ)).toNat

end

end A224130.P10003429673396355911

/-!
# A224131: Number of n X 6 0..1 arrays with rows nondecreasing and antidiagonals unimodal.

The programs for A224131, there is no canonical definition to state claims against.
-/

/-! ## A224131.P8547995653040871331

`A224133(A052905(n+3))`
-/

namespace A224131.P8547995653040871331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224133 (A052905 (n + 3)).toNat

end

end A224131.P8547995653040871331

/-! ## A224131.P4384376347632659012

`A224133(A155212(n+2)+3)`
-/

namespace A224131.P4384376347632659012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224133 (A155212 (n + 2) + 3).toNat

end

end A224131.P4384376347632659012

/-! ## A224131.P1008374970314413392

`A224133(A000124(n+6)-6)`
-/

namespace A224131.P1008374970314413392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224133 (A000124 (n + 6) - 6).toNat

end

end A224131.P1008374970314413392

/-! ## A224131.P11953136174218207840

`A224133(Δ[Δ[A006504(n+1)]])`
-/

namespace A224131.P11953136174218207840
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006504 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224133 (f1 (n + 1) - f1 n).toNat

end

end A224131.P11953136174218207840

/-! ## A224131.P11074889276078079765

`A224133(Δ[A023545(n+2)]-1)`
-/

namespace A224131.P11074889276078079765
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224133 (f1 (n + 1) - f1 n - 1).toNat

end

end A224131.P11074889276078079765

/-!
# A224132: Number of n X 7 0..1 arrays with rows nondecreasing and antidiagonals unimodal.

The programs for A224132, there is no canonical definition to state claims against.
-/

/-! ## A224132.P13478361932966059595

`A224133(A055999(n+4))`
-/

namespace A224132.P13478361932966059595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224133 (A055999 (n + 4)).toNat

end

end A224132.P13478361932966059595

/-! ## A224132.P16934691997095019977

`A224133(Δ[A026054(n+4)])`
-/

namespace A224132.P16934691997095019977
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026054 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224133 (f1 (n + 1) - f1 n).toNat

end

end A224132.P16934691997095019977

/-! ## A224132.P10100420771252170388

`A224133(A000096(n+6)-5)`
-/

namespace A224132.P10100420771252170388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224133 (A000096 (n + 6) - 5).toNat

end

end A224132.P10100420771252170388

/-! ## A224132.P4481902528663820009

`A224133(A000217(n+7)-6)`
-/

namespace A224132.P4481902528663820009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224133 (A000217 (n + 7) - 6).toNat

end

end A224132.P4481902528663820009

/-! ## A224132.P10772727814721905373

`A224133(A000124(n+7)-7)`
-/

namespace A224132.P10772727814721905373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224133 (A000124 (n + 7) - 7).toNat

end

end A224132.P10772727814721905373

/-!
# A224133: T(n,k)=Number of nXk 0..1 arrays with rows nondecreasing and antidiagonals unimodal.

The programs for A224133, there is no canonical definition to state claims against.
-/

/-! ## A224133.P9369452855312910311

`A223949(n+1)+A184946(A099927(n))`
-/

namespace A224133.P9369452855312910311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223949 (n + 1) + A184946 (A099927 n).toNat

end

end A224133.P9369452855312910311

/-! ## A224133.P14112361333158283345

`A250361(n+1)-A173068(A059922(n))`
-/

namespace A224133.P14112361333158283345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250361 (n + 1) - A173068 (A059922 n).toNat

end

end A224133.P14112361333158283345

/-! ## A224133.P13901762855858858737

`A250361(n+1)-A166352(A174546(n))`
-/

namespace A224133.P13901762855858858737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250361 (n + 1) - A166352 (A174546 n).toNat

end

end A224133.P13901762855858858737

/-! ## A224133.P2185794059679176419

`A223949(n+1)-A088194(A294950(n))`
-/

namespace A224133.P2185794059679176419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223949 (n + 1) - A088194 (A294950 n).toNat

end

end A224133.P2185794059679176419

/-! ## A224133.P797706462259503505

`A369054(A059024(n+5))+A223949(n+1)`
-/

namespace A224133.P797706462259503505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369054 (A059024 (n + 5)).toNat + A223949 (n + 1)

end

end A224133.P797706462259503505

/-!
# A224134: Number of 3 X n 0..1 arrays with rows nondecreasing and antidiagonals unimodal.

The programs for A224134, the canonical program `A224134.P1472643126715603102` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A224134 has offset 1).

The definition of A224134 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A224134.P1472643126715603102

`4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` with `a(0)=8, a(1)=27, a(2)=58, a(3)=106, a(4)=175`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A224134

/-- `4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` -/
def P1472643126715603102.Spec : Prop :=
  ∀ n, P1472643126715603102.a n = A224134 (n + 1)

theorem P1472643126715603102.correct : P1472643126715603102.Spec := by
  intro n
  simp only [A224134, Nat.add_sub_cancel]

end A224134

/-! ## A224134.P16376043489473438166

`A267370(n)+A224039(n+1)`
-/

namespace A224134.P16376043489473438166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267370 n + A224039 (n + 1)

end

end A224134.P16376043489473438166

namespace A224134

/-- `A267370(n)+A224039(n+1)` -/
def P16376043489473438166.Spec : Prop :=
  ∀ n, P16376043489473438166.a n = A224134 (n + 1)

end A224134

/-! ## A224134.P11473182626309444857

`A224039(n+1)+∑[A140091(n)]`
-/

namespace A224134.P11473182626309444857
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140091 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224039 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A224134.P11473182626309444857

namespace A224134

/-- `A224039(n+1)+∑[A140091(n)]` -/
def P11473182626309444857.Spec : Prop :=
  ∀ n, P11473182626309444857.a n = A224134 (n + 1)

end A224134

/-! ## A224134.P16571605010870006195

`∑[A017365(n)+A000217(A004275(n))]`
-/

namespace A224134.P16571605010870006195
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017365 n + A000217 (A004275 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A224134.P16571605010870006195

namespace A224134

/-- `∑[A017365(n)+A000217(A004275(n))]` -/
def P16571605010870006195.Spec : Prop :=
  ∀ n, P16571605010870006195.a n = A224134 (n + 1)

end A224134

/-! ## A224134.P3026278978039700203

`∑[A033816(n+1)+char[1]]+n`
-/

namespace A224134.P3026278978039700203
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033816 (n + 1) + ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A224134.P3026278978039700203

namespace A224134

/-- `∑[A033816(n+1)+char[1]]+n` -/
def P3026278978039700203.Spec : Prop :=
  ∀ n, P3026278978039700203.a n = A224134 (n + 1)

end A224134

/-! ## A224134.P15466124661723141037

`∑[A033816(n+1)]+(n+1)%A008486(n)`
-/

namespace A224134.P15466124661723141037
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033816 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + Int.tmod (n + 1 : ℤ) (A008486 n)

end

end A224134.P15466124661723141037

namespace A224134

/-- `∑[A033816(n+1)]+(n+1)%A008486(n)` -/
def P15466124661723141037.Spec : Prop :=
  ∀ n, P15466124661723141037.a n = A224134 (n + 1)

end A224134

/-! ## A224134.P13685586366697367899

`∑[A017353(n)+A000124(A004275(n))]`
-/

namespace A224134.P13685586366697367899
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017353 n + A000124 (A004275 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A224134.P13685586366697367899

namespace A224134

/-- `∑[A017353(n)+A000124(A004275(n))]` -/
def P13685586366697367899.Spec : Prop :=
  ∀ n, P13685586366697367899.a n = A224134 (n + 1)

end A224134

/-! ## A224134.P4716636652966370600

`ceil(∑[A167614(2*(n+1))]-acot(2*n))`
-/

namespace A224134.P4716636652966370600
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167614 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℝ) - SequenceMachineLib.acot (2 * n : ℝ)⌉

end

end A224134.P4716636652966370600

namespace A224134

/-- `ceil(∑[A167614(2*(n+1))]-acot(2*n))` -/
def P4716636652966370600.Spec : Prop :=
  ∀ n, P4716636652966370600.a n = A224134 (n + 1)

end A224134

/-! ## A224134.P8435937525839372548

`∑[A167614(2*(n+1))]-A000007(n)`
-/

namespace A224134.P8435937525839372548
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167614 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A000007 n

end

end A224134.P8435937525839372548

namespace A224134

/-- `∑[A167614(2*(n+1))]-A000007(n)` -/
def P8435937525839372548.Spec : Prop :=
  ∀ n, P8435937525839372548.a n = A224134 (n + 1)

end A224134

/-! ## A224134.P15862565229629433437

`A253145(2*n)+∑[A167487(2*n)]`
-/

namespace A224134.P15862565229629433437
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167487 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253145 (2 * n) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A224134.P15862565229629433437

namespace A224134

/-- `A253145(2*n)+∑[A167487(2*n)]` -/
def P15862565229629433437.Spec : Prop :=
  ∀ n, P15862565229629433437.a n = A224134 (n + 1)

end A224134

/-! ## A224134.P539147004558004117

`xor(∑[A167614(2*n+2)], A000007(n))`
-/

namespace A224134.P539147004558004117
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167614 (2 * n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (∑ j ∈ Finset.range (n + 1), f1 j) (A000007 n)

end

end A224134.P539147004558004117

namespace A224134

/-- `xor(∑[A167614(2*n+2)], A000007(n))` -/
def P539147004558004117.Spec : Prop :=
  ∀ n, P539147004558004117.a n = A224134 (n + 1)

end A224134

/-! ## A224134.P2630453932339315585

`∑[A167614(2*(n+1))]-A036987(2*n)`
-/

namespace A224134.P2630453932339315585
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167614 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A036987 (2 * n)

end

end A224134.P2630453932339315585

namespace A224134

/-- `∑[A167614(2*(n+1))]-A036987(2*n)` -/
def P2630453932339315585.Spec : Prop :=
  ∀ n, P2630453932339315585.a n = A224134 (n + 1)

end A224134

/-! ## A224134.P1315044667920005301

`∑[A166136(A103517(n))]-A008486(n)`
-/

namespace A224134.P1315044667920005301
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166136 (A103517 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A008486 n

end

end A224134.P1315044667920005301

namespace A224134

/-- `∑[A166136(A103517(n))]-A008486(n)` -/
def P1315044667920005301.Spec : Prop :=
  ∀ n, P1315044667920005301.a n = A224134 (n + 1)

end A224134

/-! ## A224134.P2195361647339970291

`∑[A167499(A103517(n))]-A004273(n)`
-/

namespace A224134.P2195361647339970291
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167499 (A103517 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A004273 n

end

end A224134.P2195361647339970291

namespace A224134

/-- `∑[A167499(A103517(n))]-A004273(n)` -/
def P2195361647339970291.Spec : Prop :=
  ∀ n, P2195361647339970291.a n = A224134 (n + 1)

end A224134

/-! ## A224134.P5907435046688785633

`A103517(n)+∑[A000124(A144396(n+1))]`
-/

namespace A224134.P5907435046688785633
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 (A144396 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103517 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A224134.P5907435046688785633

namespace A224134

/-- `A103517(n)+∑[A000124(A144396(n+1))]` -/
def P5907435046688785633.Spec : Prop :=
  ∀ n, P5907435046688785633.a n = A224134 (n + 1)

end A224134

/-!
# A224135: Number of 4 X n 0..1 arrays with rows nondecreasing and antidiagonals unimodal.

The programs for A224135, there is no canonical definition to state claims against.
-/

/-! ## A224135.P8654346574418604406

`A224133(A145018(n+4))`
-/

namespace A224135.P8654346574418604406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224133 (A145018 (n + 4)).toNat

end

end A224135.P8654346574418604406

/-! ## A224135.P13911982950165555008

`A224133(A052905(n)+9)`
-/

namespace A224135.P13911982950165555008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224133 (A052905 n + 9).toNat

end

end A224135.P13911982950165555008

/-! ## A224135.P1458236745393637948

`A224133(A055999(n)+10)`
-/

namespace A224135.P1458236745393637948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224133 (A055999 n + 10).toNat

end

end A224135.P1458236745393637948

/-! ## A224135.P5645377372623363755

`A224133(A167614(n+2)+1)`
-/

namespace A224135.P5645377372623363755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224133 (A167614 (n + 2) + 1).toNat

end

end A224135.P5645377372623363755

/-! ## A224135.P16109812222891001138

`A224133(A166136(n+2)-2)`
-/

namespace A224135.P16109812222891001138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224133 (A166136 (n + 2) - 2).toNat

end

end A224135.P16109812222891001138

/-!
# A224136: Number of 5 X n 0..1 arrays with rows nondecreasing and antidiagonals unimodal.

The programs for A224136, there is no canonical definition to state claims against.
-/

/-! ## A224136.P16856651457528565628

`A224133(A167499(n+3))`
-/

namespace A224136.P16856651457528565628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224133 (A167499 (n + 3)).toNat

end

end A224136.P16856651457528565628

/-! ## A224136.P15940967886121848951

`A224133(A155212(n)+13)`
-/

namespace A224136.P15940967886121848951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224133 (A155212 n + 13).toNat

end

end A224136.P15940967886121848951

/-! ## A224136.P17999925439213986633

`A224133(A000124(n+4)+4)`
-/

namespace A224136.P17999925439213986633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224133 (A000124 (n + 4) + 4).toNat

end

end A224136.P17999925439213986633

/-! ## A224136.P11802700059666998197

`A224133(A000217(n+4)+5)`
-/

namespace A224136.P11802700059666998197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224133 (A000217 (n + 4) + 5).toNat

end

end A224136.P11802700059666998197

/-! ## A224136.P7140170394532470856

`A224133(A052905(n+1)+10)`
-/

namespace A224136.P7140170394532470856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224133 (A052905 (n + 1) + 10).toNat

end

end A224136.P7140170394532470856

/-!
# A224137: Number of 6 X n 0..1 arrays with rows nondecreasing and antidiagonals unimodal.

The programs for A224137, there is no canonical definition to state claims against.
-/

/-! ## A224137.P11351517404118344411

`A224133(A166136(n+4))`
-/

namespace A224137.P11351517404118344411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224133 (A166136 (n + 4)).toNat

end

end A224137.P11351517404118344411

/-! ## A224137.P10932692829220896971

`A224133(A000124(n+5)+5)`
-/

namespace A224137.P10932692829220896971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224133 (A000124 (n + 5) + 5).toNat

end

end A224137.P10932692829220896971

/-! ## A224137.P1024756857115156530

`A224133(A000096(n+4)+7)`
-/

namespace A224137.P1024756857115156530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224133 (A000096 (n + 4) + 7).toNat

end

end A224137.P1024756857115156530

/-! ## A224137.P7536339503818652860

`A224133(A000217(n+5)+6)`
-/

namespace A224137.P7536339503818652860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224133 (A000217 (n + 5) + 6).toNat

end

end A224137.P7536339503818652860

/-! ## A224137.P12722383129759194020

`A000041(C(2, n+2))*A224133(A055999(n+2)+12)`
-/

namespace A224137.P12722383129759194020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (Nat.choose 2 (n + 2)) * A224133 (A055999 (n + 2) + 12).toNat

end

end A224137.P12722383129759194020

/-!
# A224138: Number of 7 X n 0..1 arrays with rows nondecreasing and antidiagonals unimodal.

The programs for A224138, there is no canonical definition to state claims against.
-/

/-! ## A224138.P4013243480364144729

`A224133(A167487(n+5))`
-/

namespace A224138.P4013243480364144729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224133 (A167487 (n + 5)).toNat

end

end A224138.P4013243480364144729

/-! ## A224138.P12516154832634671080

`A224133(A056119(n)+28)`
-/

namespace A224138.P12516154832634671080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224133 (A056119 n + 28).toNat

end

end A224138.P12516154832634671080

/-! ## A224138.P504934915856933731

`A224133(A000124(n+6)+6)`
-/

namespace A224138.P504934915856933731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224133 (A000124 (n + 6) + 6).toNat

end

end A224138.P504934915856933731

/-! ## A224138.P905546558764238386

`A224133(A000096(n+5)+8)`
-/

namespace A224138.P905546558764238386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224133 (A000096 (n + 5) + 8).toNat

end

end A224138.P905546558764238386

/-! ## A224138.P14313029363023266774

`A224133(A000217(n+6)+7)`
-/

namespace A224138.P14313029363023266774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224133 (A000217 (n + 6) + 7).toNat

end

end A224138.P14313029363023266774

/-!
# A224139: Double 1's in binary representations of 2*n-1, converting to decimal and dividing by maximal possible power of 3.

The programs for A224139, the canonical program `A224139.P389130663444024273` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A224139 has offset 1).

The definition of A224139 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 111 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A224139.P389130663444024273

`A038502(A048678(Δ[n²]))`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A224139

/-- `A038502(A048678(Δ[n²]))` -/
def P389130663444024273.Spec : Prop :=
  ∀ n, P389130663444024273.a n = A224139 (n + 1)

theorem P389130663444024273.correct : P389130663444024273.Spec := by
  intro n
  simp only [A224139, Nat.add_sub_cancel]

end A224139

/-! ## A224139.P18075455266987037037

`A038502(A124108(2*n)+1)`
-/

namespace A224139.P18075455266987037037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038502 (A124108 (2 * n) + 1).toNat

end

end A224139.P18075455266987037037

namespace A224139

/-- `A038502(A124108(2*n)+1)` -/
def P18075455266987037037.Spec : Prop :=
  ∀ n, P18075455266987037037.a n = A224139 (n + 1)

end A224139

/-! ## A224139.P12325018652148256938

`A038502(or(1, A124108(2*n)))`
-/

namespace A224139.P12325018652148256938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038502 (Int.lor 1 (A124108 (2 * n))).toNat

end

end A224139.P12325018652148256938

namespace A224139

/-- `A038502(or(1, A124108(2*n)))` -/
def P12325018652148256938.Spec : Prop :=
  ∀ n, P12325018652148256938.a n = A224139 (n + 1)

end A224139

/-! ## A224139.P5623794653558650386

`A038502(xor(1, A124108(2*n)))`
-/

namespace A224139.P5623794653558650386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038502 (Int.xor 1 (A124108 (2 * n))).toNat

end

end A224139.P5623794653558650386

namespace A224139

/-- `A038502(xor(1, A124108(2*n)))` -/
def P5623794653558650386.Spec : Prop :=
  ∀ n, P5623794653558650386.a n = A224139 (n + 1)

end A224139

/-! ## A224139.P4731263611063279367

`A038502(A005408(A124108(n)))`
-/

namespace A224139.P4731263611063279367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038502 (A005408 (A124108 n).toNat).toNat

end

end A224139.P4731263611063279367

namespace A224139

/-- `A038502(A005408(A124108(n)))` -/
def P4731263611063279367.Spec : Prop :=
  ∀ n, P4731263611063279367.a n = A224139 (n + 1)

end A224139

/-! ## A224139.P16763064082763309322

`A038502(A109613(A124108(2*n)))`
-/

namespace A224139.P16763064082763309322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038502 (A109613 (A124108 (2 * n)).toNat).toNat

end

end A224139.P16763064082763309322

namespace A224139

/-- `A038502(A109613(A124108(2*n)))` -/
def P16763064082763309322.Spec : Prop :=
  ∀ n, P16763064082763309322.a n = A224139 (n + 1)

end A224139

/-!
# A224140: Number of n X n 0..1 arrays with rows and antidiagonals unimodal and columns nondecreasing.

The programs for A224140, there is no canonical definition to state claims against.
-/

/-! ## A224140.P10142649592188178485

`A224146((n+1)²+n²)`
-/

namespace A224140.P10142649592188178485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224146 ((n + 1) ^ 2 + n ^ 2)

end

end A224140.P10142649592188178485

/-! ## A224140.P1090665540134761561

`lcm((-1)^n, A224146(A001844(n)))`
-/

namespace A224140.P1090665540134761561
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((-1) ^ n) (A224146 (A001844 n).toNat)

end

end A224140.P1090665540134761561

/-! ## A224140.P1302485206826331617

`record[gcd(A114327(n), A224146(n+1))]`
-/

namespace A224140.P1302485206826331617
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A114327 n) (A224146 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A224140.P1302485206826331617

/-! ## A224140.P7759591278677621615

`A224146(A001844(n))+n*A000007(n)`
-/

namespace A224140.P7759591278677621615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224146 (A001844 n).toNat + (n : ℤ) * A000007 n

end

end A224140.P7759591278677621615

/-! ## A224140.P16830560737343980240

`A033999(2*n)*A224146(∑[A008574(n)])`
-/

namespace A224140.P16830560737343980240
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (2 * n) * A224146 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A224140.P16830560737343980240

/-!
# A224141: Number of n X 3 0..1 arrays with rows and antidiagonals unimodal and columns nondecreasing.

The programs for A224141, the canonical program `A224141.P11936406545894778637` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A224141 has offset 1).

The definition of A224141 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A224141.P11936406545894778637

`4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` with `a(0)=7, a(1)=22, a(2)=49, a(3)=92`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A224141

/-- `4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` -/
def P11936406545894778637.Spec : Prop :=
  ∀ n, P11936406545894778637.a n = A224141 (n + 1)

theorem P11936406545894778637.correct : P11936406545894778637.Spec := by
  intro n
  simp only [A224141, Nat.add_sub_cancel]

end A224141

/-! ## A224141.P8263785458111441561

`∑[∑[4*(n+1)]+3]`
-/

namespace A224141.P8263785458111441561
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A224141.P8263785458111441561

namespace A224141

/-- `∑[∑[4*(n+1)]+3]` -/
def P8263785458111441561.Spec : Prop :=
  ∀ n, (P8263785458111441561.a n : ℤ) = A224141 (n + 1)

end A224141

/-! ## A224141.P18160176452946184609

`-∑[floor(2/Δ[acot(n+1)])]`
-/

namespace A224141.P18160176452946184609
noncomputable section

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.acot (n + 1 : ℝ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊2 / (f2 (n + 1) - f2 n)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(∑ j ∈ Finset.range (n + 1), f1 j)

end

end A224141.P18160176452946184609

namespace A224141

/-- `-∑[floor(2/Δ[acot(n+1)])]` -/
def P18160176452946184609.Spec : Prop :=
  ∀ n, P18160176452946184609.a n = A224141 (n + 1)

end A224141

/-! ## A224141.P12613338944413657847

`floor(∑[∑[a(n-1)+4]])` with `a(0)=7, a(1)=8`

`floor` is left out, it is the identity on integers.
-/

namespace A224141.P12613338944413657847
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [7, 8] fun n f2 =>
  f2 (n - 1) + 4

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A224141.P12613338944413657847

namespace A224141

/-- `floor(∑[∑[a(n-1)+4]])` -/
def P12613338944413657847.Spec : Prop :=
  ∀ n, (P12613338944413657847.a n : ℤ) = A224141 (n + 1)

end A224141

/-! ## A224141.P11431804198080178386

`floor(∑[2/Δ[atan(n+1)]+1])`
-/

namespace A224141.P11431804198080178386
noncomputable section

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.arctan (n + 1 : ℝ)

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  2 / (f2 (n + 1) - f2 n) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋

end

end A224141.P11431804198080178386

namespace A224141

/-- `floor(∑[2/Δ[atan(n+1)]+1])` -/
def P11431804198080178386.Spec : Prop :=
  ∀ n, P11431804198080178386.a n = A224141 (n + 1)

end A224141

/-! ## A224141.P3827610660960407654

`floor(∑[1-2/Δ[acot(n+1)]])`
-/

namespace A224141.P3827610660960407654
noncomputable section

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.acot (n + 1 : ℝ)

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  1 - 2 / (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋

end

end A224141.P3827610660960407654

namespace A224141

/-- `floor(∑[1-2/Δ[acot(n+1)]])` -/
def P3827610660960407654.Spec : Prop :=
  ∀ n, P3827610660960407654.a n = A224141 (n + 1)

end A224141

/-! ## A224141.P12851628739612575817

`floor(∑[3-∑[a(n-1)-4]])` with `a(0)=-4`

`floor` is left out, it is the identity on integers.
-/

namespace A224141.P12851628739612575817
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [-4] fun n f2 =>
  f2 (n - 1) - 4

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A224141.P12851628739612575817

namespace A224141

/-- `floor(∑[3-∑[a(n-1)-4]])` -/
def P12851628739612575817.Spec : Prop :=
  ∀ n, P12851628739612575817.a n = A224141 (n + 1)

end A224141

/-! ## A224141.P7581868492993386076

`∑[∑[a(n-1)+4]]+n+1` with `a(0)=6, a(1)=8`
-/

namespace A224141.P7581868492993386076
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [6, 8] fun n f2 =>
  f2 (n - 1) + 4

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n + 1)

end

end A224141.P7581868492993386076

namespace A224141

/-- `∑[∑[a(n-1)+4]]+n+1` -/
def P7581868492993386076.Spec : Prop :=
  ∀ n, (P7581868492993386076.a n : ℤ) = A224141 (n + 1)

end A224141

/-! ## A224141.P2616242905559201507

`∑[lcm(2, (n+1)²+n+2)]+n+1`
-/

namespace A224141.P2616242905559201507
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 2 ((n + 1) ^ 2 + (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n + 1)

end

end A224141.P2616242905559201507

namespace A224141

/-- `∑[lcm(2, (n+1)²+n+2)]+n+1` -/
def P2616242905559201507.Spec : Prop :=
  ∀ n, (P2616242905559201507.a n : ℤ) = A224141 (n + 1)

end A224141

/-! ## A224141.P1734448438583938899

`∑[∑[A004767(n)]]+∑[n+4]`
-/

namespace A224141.P1734448438583938899
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004767 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + ((∑ j ∈ Finset.range (n + 1), f3 j : ℕ) : ℤ)

end

end A224141.P1734448438583938899

namespace A224141

/-- `∑[∑[A004767(n)]]+∑[n+4]` -/
def P1734448438583938899.Spec : Prop :=
  ∀ n, P1734448438583938899.a n = A224141 (n + 1)

end A224141

/-! ## A224141.P7620887499974243306

`A143941(n+1)+4*(n+1)`
-/

namespace A224141.P7620887499974243306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143941 (n + 1) + (4 * (n + 1) : ℤ)

end

end A224141.P7620887499974243306

namespace A224141

/-- `A143941(n+1)+4*(n+1)` -/
def P7620887499974243306.Spec : Prop :=
  ∀ n, P7620887499974243306.a n = A224141 (n + 1)

end A224141

/-! ## A224141.P6086949956468868367

`A151675(n+1)-∑[(n+1)²]`
-/

namespace A224141.P6086949956468868367
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151675 (n + 1) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A224141.P6086949956468868367

namespace A224141

/-- `A151675(n+1)-∑[(n+1)²]` -/
def P6086949956468868367.Spec : Prop :=
  ∀ n, P6086949956468868367.a n = A224141 (n + 1)

end A224141

/-! ## A224141.P4956613179171185155

`∑[A046092(n+1)+2]+n+1`
-/

namespace A224141.P4956613179171185155
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046092 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ) + 1

end

end A224141.P4956613179171185155

namespace A224141

/-- `∑[A046092(n+1)+2]+n+1` -/
def P4956613179171185155.Spec : Prop :=
  ∀ n, P4956613179171185155.a n = A224141 (n + 1)

end A224141

/-! ## A224141.P430418071364620490

`4*A000292(n+1)+3*n+3`
-/

namespace A224141.P430418071364620490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A000292 (n + 1) + (3 * n : ℤ) + 3

end

end A224141.P430418071364620490

namespace A224141

/-- `4*A000292(n+1)+3*n+3` -/
def P430418071364620490.Spec : Prop :=
  ∀ n, P430418071364620490.a n = A224141 (n + 1)

end A224141

/-! ## A224141.P6320769688153299182

`A096957(n)+A064808(n)`
-/

namespace A224141.P6320769688153299182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096957 n + A064808 n

end

end A224141.P6320769688153299182

namespace A224141

/-- `A096957(n)+A064808(n)` -/
def P6320769688153299182.Spec : Prop :=
  ∀ n, P6320769688153299182.a n = A224141 (n + 1)

end A224141

/-! ## A224141.P16754166385262335951

`A158842(n)+A087863(n)`
-/

namespace A224141.P16754166385262335951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158842 n + A087863 n

end

end A224141.P16754166385262335951

namespace A224141

/-- `A158842(n)+A087863(n)` -/
def P16754166385262335951.Spec : Prop :=
  ∀ n, P16754166385262335951.a n = A224141 (n + 1)

end A224141

/-! ## A224141.P8583410916174076769

`A101853(n+1)+A006000(n)`
-/

namespace A224141.P8583410916174076769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101853 (n + 1) + A006000 n

end

end A224141.P8583410916174076769

namespace A224141

/-- `A101853(n+1)+A006000(n)` -/
def P8583410916174076769.Spec : Prop :=
  ∀ n, P8583410916174076769.a n = A224141 (n + 1)

end A224141

/-! ## A224141.P1244165771072720328

`A131423(n+1)+A104675(n)`
-/

namespace A224141.P1244165771072720328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131423 (n + 1) + A104675 n

end

end A224141.P1244165771072720328

namespace A224141

/-- `A131423(n+1)+A104675(n)` -/
def P1244165771072720328.Spec : Prop :=
  ∀ n, P1244165771072720328.a n = A224141 (n + 1)

end A224141

/-! ## A224141.P6346250127321172662

`A223833(n+1)+A161680(n)`
-/

namespace A224141.P6346250127321172662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223833 (n + 1) + A161680 n

end

end A224141.P6346250127321172662

namespace A224141

/-- `A223833(n+1)+A161680(n)` -/
def P6346250127321172662.Spec : Prop :=
  ∀ n, P6346250127321172662.a n = A224141 (n + 1)

end A224141

/-! ## A224141.P17349412579024556511

`A005564(n+3)+A000125(n)`
-/

namespace A224141.P17349412579024556511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005564 (n + 3) + A000125 n

end

end A224141.P17349412579024556511

namespace A224141

/-- `A005564(n+3)+A000125(n)` -/
def P17349412579024556511.Spec : Prop :=
  ∀ n, P17349412579024556511.a n = A224141 (n + 1)

end A224141

/-!
# A224142: Number of n X 4 0..1 arrays with rows and antidiagonals unimodal and columns nondecreasing.

The programs for A224142, the canonical program `A224142.P5570728876535868379` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A224142 has offset 1).

The definition of A224142 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A224142.P5570728876535868379

`5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` with `a(0)=11, a(1)=46, a(2)=124, a(3)=272, a(4)=526, a(5)=930`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A224142

/-- `5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` -/
def P5570728876535868379.Spec : Prop :=
  ∀ n, P5570728876535868379.a n = A224142 (n + 1)

theorem P5570728876535868379.correct : P5570728876535868379.Spec := by
  intro n
  simp only [A224142, Nat.add_sub_cancel]

end A224142

/-! ## A224142.P17700029864866860751

`A224146(∑[n+4]+3)`
-/

namespace A224142.P17700029864866860751
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224146 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A224142.P17700029864866860751

namespace A224142

/-- `A224146(∑[n+4]+3)` -/
def P17700029864866860751.Spec : Prop :=
  ∀ n, P17700029864866860751.a n = A224142 (n + 1)

end A224142

/-! ## A224142.P15182735723178197085

`A105812(2*n+3)*A224146(A027379(n+2))`
-/

namespace A224142.P15182735723178197085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105812 (2 * n + 3) * A224146 (A027379 (n + 2)).toNat

end

end A224142.P15182735723178197085

namespace A224142

/-- `A105812(2*n+3)*A224146(A027379(n+2))` -/
def P15182735723178197085.Spec : Prop :=
  ∀ n, P15182735723178197085.a n = A224142 (n + 1)

end A224142

/-!
# A224143: Number of n X 5 0..1 arrays with rows and antidiagonals unimodal and columns nondecreasing.

The programs for A224143, there is no canonical definition to state claims against.
-/

/-! ## A224143.P5321407899975742139

`A224146(∑[n+5]+6)`
-/

namespace A224143.P5321407899975742139
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224146 (∑ j ∈ Finset.range (n + 1), f1 j + 6)

end

end A224143.P5321407899975742139

/-! ## A224143.P1601178685235315540

`xor(1, xor(1, A224146(A046691(n+3))))`
-/

namespace A224143.P1601178685235315540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (Int.xor 1 (A224146 (A046691 (n + 3)).toNat))

end

end A224143.P1601178685235315540

/-! ## A224143.P15484431308961632524

`A224146(Δ[A023545(n+1)])+char[38]`
-/

namespace A224143.P15484431308961632524
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  38

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224146 (f1 (n + 1) - f1 n).toNat + ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

end

end A224143.P15484431308961632524

/-! ## A224143.P10317903729956080644

`A007318(C(2, n))*A224146(A046691(n+3))`
-/

namespace A224143.P10317903729956080644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A224146 (A046691 (n + 3)).toNat

end

end A224143.P10317903729956080644

/-! ## A224143.P11453790961322659753

`(A000041(n)%2)!*A224146(A046691(n+3))`
-/

namespace A224143.P11453790961322659753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (Int.tmod (A000041 n) 2).toNat : ℤ) * A224146 (A046691 (n + 3)).toNat

end

end A224143.P11453790961322659753

/-!
# A224144: Number of n X 6 0..1 arrays with rows and antidiagonals unimodal and columns nondecreasing.

The programs for A224144, there is no canonical definition to state claims against.
-/

/-! ## A224144.P13958974991002989994

`A224146(∑[n+6]+10)`
-/

namespace A224144.P13958974991002989994
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224146 (∑ j ∈ Finset.range (n + 1), f1 j + 10)

end

end A224144.P13958974991002989994

/-!
# A224145: Number of n X 7 0..1 arrays with rows and antidiagonals unimodal and columns nondecreasing.

The programs for A224145, there is no canonical definition to state claims against.
-/

/-! ## A224145.P13581257960171186301

`A224146(A055999(n+4))`
-/

namespace A224145.P13581257960171186301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224146 (A055999 (n + 4)).toNat

end

end A224145.P13581257960171186301

/-! ## A224145.P5265335735061124858

`A224146(eq[6, A193592(n)])`
-/

namespace A224145.P5265335735061124858
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224146 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A224145.P5265335735061124858

/-! ## A224145.P4884445937597993489

`A224146(Δ[A023551(n+2)])`
-/

namespace A224145.P4884445937597993489
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224146 (f1 (n + 1) - f1 n).toNat

end

end A224145.P4884445937597993489

/-! ## A224145.P9447033612616025411

`A224146(A155212(n+3)+2)`
-/

namespace A224145.P9447033612616025411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224146 (A155212 (n + 3) + 2).toNat

end

end A224145.P9447033612616025411

/-! ## A224145.P6844440198792469633

`A224146(A052905(n+4)-1)`
-/

namespace A224145.P6844440198792469633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224146 (A052905 (n + 4) - 1).toNat

end

end A224145.P6844440198792469633

/-!
# A224146: T(n,k) = Number of n X k 0..1 arrays with rows and antidiagonals unimodal and columns nondecreasing.

The programs for A224146, there is no canonical definition to state claims against.
-/

/-! ## A224146.P11524599621564961581

`A225010(n+1)-A102683(C(n, 6))`
-/

namespace A224146.P11524599621564961581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225010 (n + 1) - A102683 (Nat.choose n 6)

end

end A224146.P11524599621564961581

/-! ## A224146.P3806521988057665710

`A223838(n+1)+A014707(A022171(n))`
-/

namespace A224146.P3806521988057665710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223838 (n + 1) + A014707 (A022171 n).toNat

end

end A224146.P3806521988057665710

/-! ## A224146.P10386793575705868650

`A223838(n+1)+A016346(A022166(n))`
-/

namespace A224146.P10386793575705868650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223838 (n + 1) + A016346 (A022166 n).toNat

end

end A224146.P10386793575705868650

/-! ## A224146.P2467125328161517056

`A225010(n+1)+A016389(A022166(n))`
-/

namespace A224146.P2467125328161517056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225010 (n + 1) + A016389 (A022166 n).toNat

end

end A224146.P2467125328161517056

/-! ## A224146.P12143000645925090254

`A225010(n+1)+A016389(A027336(n))`
-/

namespace A224146.P12143000645925090254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225010 (n + 1) + A016389 (A027336 n).toNat

end

end A224146.P12143000645925090254

/-!
# A224147: Number of 3 X n 0..1 arrays with rows and antidiagonals unimodal and columns nondecreasing.

The programs for A224147, the canonical program `A224147.P4198500791502906969` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A224147 has offset 1).

The definition of A224147 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A224147.P4198500791502906969

`∑[∑[∑[∑[∑[n]+2]+n]+1]]+1`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A224147

/-- `∑[∑[∑[∑[∑[n]+2]+n]+1]]+1` -/
def P4198500791502906969.Spec : Prop :=
  ∀ n, (P4198500791502906969.a n : ℤ) = A224147 (n + 1)

theorem P4198500791502906969.correct : P4198500791502906969.Spec := by
  intro n
  simp only [A224147, Nat.add_sub_cancel]

end A224147

/-! ## A224147.P181972367269284574

`abs(A223659(n+1)-A000389(n+3))`
-/

namespace A224147.P181972367269284574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A223659 (n + 1) - A000389 (n + 3)|

end

end A224147.P181972367269284574

namespace A224147

/-- `abs(A223659(n+1)-A000389(n+3))` -/
def P181972367269284574.Spec : Prop :=
  ∀ n, P181972367269284574.a n = A224147 (n + 1)

end A224147

/-! ## A224147.P14004756979675300270

`A224146(∑[n+2]+4)`
-/

namespace A224147.P14004756979675300270
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224146 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A224147.P14004756979675300270

namespace A224147

/-- `A224146(∑[n+2]+4)` -/
def P14004756979675300270.Spec : Prop :=
  ∀ n, P14004756979675300270.a n = A224147 (n + 1)

end A224147

/-! ## A224147.P14090697019258784458

`A224146(A167614(n+1))%A078819(n)`
-/

namespace A224147.P14090697019258784458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A224146 (A167614 (n + 1)).toNat) (A078819 n)

end

end A224147.P14090697019258784458

namespace A224147

/-- `A224146(A167614(n+1))%A078819(n)` -/
def P14090697019258784458.Spec : Prop :=
  ∀ n, P14090697019258784458.a n = A224147 (n + 1)

end A224147

/-! ## A224147.P2367947933587334364

`A167964(n+1)*A224146(A167614(n+1))`
-/

namespace A224147.P2367947933587334364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167964 (n + 1) * A224146 (A167614 (n + 1)).toNat

end

end A224147.P2367947933587334364

namespace A224147

/-- `A167964(n+1)*A224146(A167614(n+1))` -/
def P2367947933587334364.Spec : Prop :=
  ∀ n, P2367947933587334364.a n = A224147 (n + 1)

end A224147

/-!
# A224148: Number of 4 X n 0..1 arrays with rows and antidiagonals unimodal and columns nondecreasing.

The programs for A224148, there is no canonical definition to state claims against.
-/

/-! ## A224148.P17876486797999918013

`A224146(∑[n+3]+7)`
-/

namespace A224148.P17876486797999918013
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224146 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A224148.P17876486797999918013

/-! ## A224148.P8321060981544779547

`lcm((-1)^n, A224146(Δ[A005586(n)]+5))`
-/

namespace A224148.P8321060981544779547
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005586 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((-1) ^ n) (A224146 (f1 (n + 1) - f1 n + 5).toNat)

end

end A224148.P8321060981544779547

/-! ## A224148.P2091137749521869957

`A224146(A167614(n+2)+1)+n%-1`
-/

namespace A224148.P2091137749521869957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224146 (A167614 (n + 2) + 1).toNat + Int.tmod (n : ℤ) (-1)

end

end A224148.P2091137749521869957

/-! ## A224148.P17112730599664782506

`A007318(C(2, n))*A224146(A052905(n)+9)`
-/

namespace A224148.P17112730599664782506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A224146 (A052905 n + 9).toNat

end

end A224148.P17112730599664782506

/-! ## A224148.P15984178214081726812

`A014963(42*(n+1))*A224146(A052905(n)+9)`
-/

namespace A224148.P15984178214081726812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (42 * (n + 1)) * A224146 (A052905 n + 9).toNat

end

end A224148.P15984178214081726812

/-!
# A224149: Number of 5 X n 0..1 arrays with rows and antidiagonals unimodal and columns nondecreasing.

The programs for A224149, there is no canonical definition to state claims against.
-/

/-! ## A224149.P1246437063495067679

`A224146(A167499(n+3))`
-/

namespace A224149.P1246437063495067679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224146 (A167499 (n + 3)).toNat

end

end A224149.P1246437063495067679

/-! ## A224149.P10510506162585529935

`A224146(A155212(n)+13)`
-/

namespace A224149.P10510506162585529935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224146 (A155212 n + 13).toNat

end

end A224149.P10510506162585529935

/-! ## A224149.P6348961262393072285

`A224146(A056000(n)+15)`
-/

namespace A224149.P6348961262393072285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224146 (A056000 n + 15).toNat

end

end A224149.P6348961262393072285

/-! ## A224149.P11025727729176016966

`A224146(A167614(n+3)+2)`
-/

namespace A224149.P11025727729176016966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224146 (A167614 (n + 3) + 2).toNat

end

end A224149.P11025727729176016966

/-! ## A224149.P10784319098133314026

`A224146(A000124(n+4)+4)`
-/

namespace A224149.P10784319098133314026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224146 (A000124 (n + 4) + 4).toNat

end

end A224149.P10784319098133314026

/-!
# A224150: Number of 6 X n 0..1 arrays with rows and antidiagonals unimodal and columns nondecreasing.

The programs for A224150, there is no canonical definition to state claims against.
-/

/-! ## A224150.P5654674400766238064

`A224146(A166136(n+4))`
-/

namespace A224150.P5654674400766238064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224146 (A166136 (n + 4)).toNat

end

end A224150.P5654674400766238064

/-! ## A224150.P315136067253285403

`A224146(∑[A020710(n)]+16)`
-/

namespace A224150.P315136067253285403
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020710 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224146 (∑ j ∈ Finset.range (n + 1), f1 j + 16).toNat

end

end A224150.P315136067253285403

/-! ## A224150.P2515550215860253549

`A224146(A167499(n+4)+1)`
-/

namespace A224150.P2515550215860253549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224146 (A167499 (n + 4) + 1).toNat

end

end A224150.P2515550215860253549

/-! ## A224150.P18093668006459415716

`A224146(A167614(n+4)+3)`
-/

namespace A224150.P18093668006459415716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224146 (A167614 (n + 4) + 3).toNat

end

end A224150.P18093668006459415716

/-! ## A224150.P10996357850331725258

`A224146(A000124(n+5)+5)`
-/

namespace A224150.P10996357850331725258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224146 (A000124 (n + 5) + 5).toNat

end

end A224150.P10996357850331725258

/-!
# A224151: Number of 7Xn 0..1 arrays with rows and antidiagonals unimodal and columns nondecreasing.

The programs for A224151, there is no canonical definition to state claims against.
-/

/-! ## A224151.P14223481825364995214

`A224146(A056119(n)+28)`
-/

namespace A224151.P14223481825364995214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224146 (A056119 n + 28).toNat

end

end A224151.P14223481825364995214

/-! ## A224151.P3891524579632591299

`A224146(A167499(n+5)+2)`
-/

namespace A224151.P3891524579632591299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224146 (A167499 (n + 5) + 2).toNat

end

end A224151.P3891524579632591299

/-! ## A224151.P10550684787380438794

`A224146(A133263(n+6)+5)`
-/

namespace A224151.P10550684787380438794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224146 (A133263 (n + 6) + 5).toNat

end

end A224151.P10550684787380438794

/-! ## A224151.P9474274561970765496

`A224146(A000124(n+6)+6)`
-/

namespace A224151.P9474274561970765496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224146 (A000124 (n + 6) + 6).toNat

end

end A224151.P9474274561970765496

/-! ## A224151.P2074708587454826517

`A224146(A000217(n+6)+7)`
-/

namespace A224151.P2074708587454826517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224146 (A000217 (n + 6) + 7).toNat

end

end A224151.P2074708587454826517

/-!
# A224152: Number of n X n 0..1 arrays with diagonals and rows unimodal and antidiagonals nondecreasing.

The programs for A224152, there is no canonical definition to state claims against.
-/

/-! ## A224152.P13372481453644446826

`A224158((n+1)²+n²)`
-/

namespace A224152.P13372481453644446826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224158 ((n + 1) ^ 2 + n ^ 2)

end

end A224152.P13372481453644446826

/-! ## A224152.P16823578796217956993

`record[A224158(Δ[A235355(n)])]`
-/

namespace A224152.P16823578796217956993
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235355 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224158 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A224152.P16823578796217956993

/-! ## A224152.P3895825398297854607

`record[A224158(A250028((n+2)²))]`
-/

namespace A224152.P3895825398297854607
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224158 (A250028 ((n + 2) ^ 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A224152.P3895825398297854607

/-! ## A224152.P16328343243954242286

`A224158(A001844(n))+A000007(n+1)`
-/

namespace A224152.P16328343243954242286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224158 (A001844 n).toNat + A000007 (n + 1)

end

end A224152.P16328343243954242286

/-! ## A224152.P18136838853611066622

`or(A010054(n+4), A224158(A001844(n)))`
-/

namespace A224152.P18136838853611066622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A010054 (n + 4)) (A224158 (A001844 n).toNat)

end

end A224152.P18136838853611066622

/-!
# A224153: Number of n X 3 0..1 arrays with diagonals and rows unimodal and antidiagonals nondecreasing.

The programs for A224153, there is no canonical definition to state claims against.
-/

/-! ## A224153.P14480447363847515411

`A224158(∑[n+3]+1)`
-/

namespace A224153.P14480447363847515411
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224158 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A224153.P14480447363847515411

/-! ## A224153.P6553586102816881316

`or(char[2], A224158(A034856(n+2)))`
-/

namespace A224153.P6553586102816881316
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A224158 (A034856 (n + 2)).toNat)

end

end A224153.P6553586102816881316

/-! ## A224153.P12078342863536269063

`A224158(A034856(n+2))%A224155(n+1)`
-/

namespace A224153.P12078342863536269063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A224158 (A034856 (n + 2)).toNat) (A224155 (n + 1))

end

end A224153.P12078342863536269063

/-! ## A224153.P2897554822850637933

`A224158(A034856(n+2))+val(A006530(n+1), 4)`
-/

namespace A224153.P2897554822850637933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224158 (A034856 (n + 2)).toNat + (SequenceMachineLib.valuation (A006530 (n + 1)).toNat 4 : ℤ)

end

end A224153.P2897554822850637933

/-! ## A224153.P14651916153603564052

`A224158(A034856(n+2))-A064834(A064834(n))`
-/

namespace A224153.P14651916153603564052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224158 (A034856 (n + 2)).toNat - A064834 (A064834 n).toNat

end

end A224153.P14651916153603564052

/-!
# A224154: Number of nX4 0..1 arrays with diagonals and rows unimodal and antidiagonals nondecreasing.

The programs for A224154, there is no canonical definition to state claims against.
-/

/-! ## A224154.P16625962545350828434

`A224158(A027379(n+2))`
-/

namespace A224154.P16625962545350828434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224158 (A027379 (n + 2)).toNat

end

end A224154.P16625962545350828434

/-! ## A224154.P1934263386135822128

`A224158(A055998(n+2))`
-/

namespace A224154.P1934263386135822128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224158 (A055998 (n + 2)).toNat

end

end A224154.P1934263386135822128

/-! ## A224154.P2649826222899407442

`A224158(A052905(n+1)+2)`
-/

namespace A224154.P2649826222899407442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224158 (A052905 (n + 1) + 2).toNat

end

end A224154.P2649826222899407442

/-! ## A224154.P17603772757672060264

`A224158(A000124(n+4)-4)`
-/

namespace A224154.P17603772757672060264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224158 (A000124 (n + 4) - 4).toNat

end

end A224154.P17603772757672060264

/-!
# A224155: Number of nX5 0..1 arrays with diagonals and rows unimodal and antidiagonals nondecreasing.

The programs for A224155, there is no canonical definition to state claims against.
-/

/-! ## A224155.P16292856744438477507

`A224158(∑[n+5]+6)`
-/

namespace A224155.P16292856744438477507
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224158 (∑ j ∈ Finset.range (n + 1), f1 j + 6)

end

end A224155.P16292856744438477507

/-! ## A224155.P7258776050226502864

`xor(1, xor(1, A224158(A046691(n+3))))`
-/

namespace A224155.P7258776050226502864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (Int.xor 1 (A224158 (A046691 (n + 3)).toNat))

end

end A224155.P7258776050226502864

/-! ## A224155.P15141685641397078592

`A224158(Δ[A023545(n+1)])+A000038(n+1)`
-/

namespace A224155.P15141685641397078592
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224158 (f1 (n + 1) - f1 n).toNat + A000038 (n + 1)

end

end A224155.P15141685641397078592

/-! ## A224155.P15038875277100624195

`A000108(C(2, n+2))*A224158(A046691(n+3))`
-/

namespace A224155.P15038875277100624195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (Nat.choose 2 (n + 2)) * A224158 (A046691 (n + 3)).toNat

end

end A224155.P15038875277100624195

/-! ## A224155.P11329465031080627703

`A000108(floor(1/(n+1)))*A224158(A046691(n+3))`
-/

namespace A224155.P11329465031080627703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 ⌊1 / (n + 1 : ℚ)⌋.toNat * A224158 (A046691 (n + 3)).toNat

end

end A224155.P11329465031080627703

/-!
# A224156: Number of nX6 0..1 arrays with diagonals and rows unimodal and antidiagonals nondecreasing.

The programs for A224156, there is no canonical definition to state claims against.
-/

/-! ## A224156.P4066297565505327722

`A224158(∑[n+6]+10)`
-/

namespace A224156.P4066297565505327722
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224158 (∑ j ∈ Finset.range (n + 1), f1 j + 10)

end

end A224156.P4066297565505327722

/-! ## A224156.P18207986400426122559

`sin(acos(0))*A224158(A052905(n+3))`
-/

namespace A224156.P18207986400426122559
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sin (Real.arccos (0 : ℝ)) * (A224158 (A052905 (n + 3)).toNat : ℝ)

end

end A224156.P18207986400426122559

/-! ## A224156.P17594809753455537857

`A224158(A052905(n+3))%A326284(n+3)`
-/

namespace A224156.P17594809753455537857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A224158 (A052905 (n + 3)).toNat) (A326284 (n + 3))

end

end A224156.P17594809753455537857

/-! ## A224156.P3717130583345094777

`A224158(A056115(n+1)+10)%A233736(n+2)`
-/

namespace A224156.P3717130583345094777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A224158 (A056115 (n + 1) + 10).toNat) (A233736 (n + 2))

end

end A224156.P3717130583345094777

/-!
# A224157: Number of nX7 0..1 arrays with diagonals and rows unimodal and antidiagonals nondecreasing.

The programs for A224157, there is no canonical definition to state claims against.
-/

/-! ## A224157.P14179524998667145775

`A224158(∑[n+7]+15)`
-/

namespace A224157.P14179524998667145775
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 7

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224158 (∑ j ∈ Finset.range (n + 1), f1 j + 15)

end

end A224157.P14179524998667145775

/-! ## A224157.P10255092527546075659

`abs(A033999(n)*A224158(A000124(n+7)-7))`
-/

namespace A224157.P10255092527546075659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A033999 n * A224158 (A000124 (n + 7) - 7).toNat|

end

end A224157.P10255092527546075659

/-! ## A224157.P12353012212529198368

`or(A000038(n)², A224158(A000124(n+7)-7))`
-/

namespace A224157.P12353012212529198368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000038 n ^ 2) (A224158 (A000124 (n + 7) - 7).toNat)

end

end A224157.P12353012212529198368

/-! ## A224157.P7550723341360398980

`A000108(C(2, n+2))*A224158(A046691(n+5)-2)`
-/

namespace A224157.P7550723341360398980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (Nat.choose 2 (n + 2)) * A224158 (A046691 (n + 5) - 2).toNat

end

end A224157.P7550723341360398980

/-! ## A224157.P8059610347259180699

`(A000040(n+1)%2)!*A224158(A046691(n+5)-2)`
-/

namespace A224157.P8059610347259180699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (Int.tmod (A000040 (n + 1)) 2).toNat : ℤ) * A224158 (A046691 (n + 5) - 2).toNat

end

end A224157.P8059610347259180699

/-!
# A224158: T(n,k)=Number of nXk 0..1 arrays with diagonals and rows unimodal and antidiagonals nondecreasing.

The programs for A224158, there is no canonical definition to state claims against.
-/

/-! ## A224158.P17337693790016567607

`A224409(n+1)-A185245(A046682(n))`
-/

namespace A224158.P17337693790016567607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224409 (n + 1) - A185245 (A046682 n).toNat

end

end A224158.P17337693790016567607

/-! ## A224158.P13881638863724587905

`A224409(A084193(∑[n]))`
-/

namespace A224158.P13881638863724587905
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224409 (A084193 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A224158.P13881638863724587905

/-! ## A224158.P11766380419872569263

`A085736(A224409(n+1))`
-/

namespace A224158.P11766380419872569263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085736 (A224409 (n + 1)).toNat

end

end A224158.P11766380419872569263

/-! ## A224158.P6717999917766970297

`A000194(A224409(n+1)²)`
-/

namespace A224158.P6717999917766970297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (A224409 (n + 1) ^ 2).toNat

end

end A224158.P6717999917766970297

/-! ## A224158.P4948888001619610237

`A209301(A224409(n+1)²)`
-/

namespace A224158.P4948888001619610237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209301 (A224409 (n + 1) ^ 2).toNat

end

end A224158.P4948888001619610237

/-!
# A224159: Number of 3 X n 0..1 arrays with diagonals and rows unimodal and antidiagonals nondecreasing.

The programs for A224159, there is no canonical definition to state claims against.
-/

/-! ## A224159.P15677057588870038051

`A224158(∑[n+2]+4)`
-/

namespace A224159.P15677057588870038051
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224158 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A224159.P15677057588870038051

/-! ## A224159.P7934869647233273345

`record[A224158(A167614(C(comp[∑[n]]-n, 2)-n))]`
-/

namespace A224159.P7934869647233273345
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224158 (A167614 (Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 - n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A224159.P7934869647233273345

/-! ## A224159.P1838809775356774903

`A224158(A167614(n+1))%A017443(n)`
-/

namespace A224159.P1838809775356774903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A224158 (A167614 (n + 1)).toNat) (A017443 n)

end

end A224159.P1838809775356774903

/-! ## A224159.P8911308197238863359

`lcm(A087960(n), A224158(A167614(n+1)))`
-/

namespace A224159.P8911308197238863359
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A087960 n) (A224158 (A167614 (n + 1)).toNat)

end

end A224159.P8911308197238863359

/-! ## A224159.P2502332046954723878

`A064284(n+1)*A224158(A167614(n+1))`
-/

namespace A224159.P2502332046954723878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064284 (n + 1) * A224158 (A167614 (n + 1)).toNat

end

end A224159.P2502332046954723878

/-!
# A224160: Number of 4 X n 0..1 arrays with diagonals and rows unimodal and antidiagonals nondecreasing.

The programs for A224160, there is no canonical definition to state claims against.
-/

/-! ## A224160.P13952828159030981130

`A224158(A055999(n)+10)`
-/

namespace A224160.P13952828159030981130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224158 (A055999 n + 10).toNat

end

end A224160.P13952828159030981130

/-! ## A224160.P69658948321368266

`A224158(A167614(n+2)+1)`
-/

namespace A224160.P69658948321368266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224158 (A167614 (n + 2) + 1).toNat

end

end A224160.P69658948321368266

/-! ## A224160.P3779214884184775973

`A224158(A000124(n+3)+3)`
-/

namespace A224160.P3779214884184775973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224158 (A000124 (n + 3) + 3).toNat

end

end A224160.P3779214884184775973

/-! ## A224160.P12112483043804488231

`A224158(A000217(n+3)+4)`
-/

namespace A224160.P12112483043804488231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224158 (A000217 (n + 3) + 4).toNat

end

end A224160.P12112483043804488231

/-! ## A224160.P15833257074962678544

`A224158(Δ[Δ[A223764(n+1)]]+2)`
-/

namespace A224160.P15833257074962678544
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223764 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224158 (f1 (n + 1) - f1 n + 2).toNat

end

end A224160.P15833257074962678544

/-!
# A224161: Number of 5Xn 0..1 arrays with diagonals and rows unimodal and antidiagonals nondecreasing.

The programs for A224161, there is no canonical definition to state claims against.
-/

/-! ## A224161.P1503035839798352875

`A224158(A167499(n+3))`
-/

namespace A224161.P1503035839798352875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224158 (A167499 (n + 3)).toNat

end

end A224161.P1503035839798352875

/-! ## A224161.P10109859243084491507

`A224158(A056000(n)+15)`
-/

namespace A224161.P10109859243084491507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224158 (A056000 n + 15).toNat

end

end A224161.P10109859243084491507

/-! ## A224161.P6711834457005162161

`A224158(A000124(n+4)+4)`
-/

namespace A224161.P6711834457005162161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224158 (A000124 (n + 4) + 4).toNat

end

end A224161.P6711834457005162161

/-! ## A224161.P12433433551288664118

`A224158(A000217(n+4)+5)`
-/

namespace A224161.P12433433551288664118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224158 (A000217 (n + 4) + 5).toNat

end

end A224161.P12433433551288664118

/-! ## A224161.P1501771275953488684

`A224158(Δ[Δ[A223764(n+2)+n²]]+1)`
-/

namespace A224161.P1501771275953488684
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223764 (n + 2) + (n ^ 2 : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224158 (f1 (n + 1) - f1 n + 1).toNat

end

end A224161.P1501771275953488684

/-!
# A224162: Number of 6Xn 0..1 arrays with diagonals and rows unimodal and antidiagonals nondecreasing.

The programs for A224162, there is no canonical definition to state claims against.
-/

/-! ## A224162.P4913835554393835725

`A224158(A000124(n+5)+5)`
-/

namespace A224162.P4913835554393835725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224158 (A000124 (n + 5) + 5).toNat

end

end A224162.P4913835554393835725

/-! ## A224162.P14447922061337070900

`A224158(A000217(n+5)+6)`
-/

namespace A224162.P14447922061337070900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224158 (A000217 (n + 5) + 6).toNat

end

end A224162.P14447922061337070900

/-! ## A224162.P4790507514026537667

`A224158(A161680(n+6)+6)`
-/

namespace A224162.P4790507514026537667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224158 (A161680 (n + 6) + 6).toNat

end

end A224162.P4790507514026537667

/-! ## A224162.P2802491607647133102

`A224158(A046691(n+3)+10)`
-/

namespace A224162.P2802491607647133102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224158 (A046691 (n + 3) + 10).toNat

end

end A224162.P2802491607647133102

/-! ## A224162.P273893682078432166

`A224158(A133263(n+6)-(n+2))`
-/

namespace A224162.P273893682078432166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224158 (A133263 (n + 6) - (n + 2 : ℤ)).toNat

end

end A224162.P273893682078432166

/-!
# A224163: Number of 7Xn 0..1 arrays with diagonals and rows unimodal and antidiagonals nondecreasing.

The programs for A224163, there is no canonical definition to state claims against.
-/

/-! ## A224163.P6737695414937696890

`A224158(A167499(n+5)+2)`
-/

namespace A224163.P6737695414937696890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224158 (A167499 (n + 5) + 2).toNat

end

end A224163.P6737695414937696890

/-! ## A224163.P208243941668928093

`A224158(A000124(n+6)+6)`
-/

namespace A224163.P208243941668928093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224158 (A000124 (n + 6) + 6).toNat

end

end A224163.P208243941668928093

/-! ## A224163.P3580644321562379246

`A224158(A000217(n+6)+7)`
-/

namespace A224163.P3580644321562379246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224158 (A000217 (n + 6) + 7).toNat

end

end A224163.P3580644321562379246

/-! ## A224163.P10274617470124323236

`A224158(A161680(n+7)+7)`
-/

namespace A224163.P10274617470124323236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224158 (A161680 (n + 7) + 7).toNat

end

end A224163.P10274617470124323236

/-! ## A224163.P16752754378715499023

`A224158(A046691(n+1)+A016789(n+8))`
-/

namespace A224163.P16752754378715499023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224158 (A046691 (n + 1) + A016789 (n + 8)).toNat

end

end A224163.P16752754378715499023

/-!
# A224164: Prime numbers with m^2 digits that, if arranged in an m X m matrix, form m-digit reversible primes in each row and column and along the main diagonal.

The programs for A224164, there is no canonical definition to state claims against.
-/

/-! ## A224164.P1483176895044639098

`A224398(n+1)%A224400(A046320(n+1))`
-/

namespace A224164.P1483176895044639098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A224398 (n + 1)) (A224400 (A046320 (n + 1)).toNat)

end

end A224164.P1483176895044639098

/-! ## A224164.P17337764195205856945

`p?[A224398(n+1)]`
-/

namespace A224164.P17337764195205856945
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224398 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A224164.P17337764195205856945

/-!
# A224165: Number of cycles the reduced complex Collatz function using 3 + (2n-1)i takes to hit 1 + i, or 0 if this never happens.

The programs for A224165, there is no canonical definition to state claims against.
-/

/-! ## A224165.P9383581587886972407

`A224067(4*n+2)`
-/

namespace A224165.P9383581587886972407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224067 (4 * n + 2)

end

end A224165.P9383581587886972407

/-! ## A224165.P17613639126372319118

`A224067(n+1)+floor(acot(n)²)²`
-/

namespace A224165.P17613639126372319118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224067 (n + 1) + ⌊SequenceMachineLib.acot (n : ℝ) ^ 2⌋ ^ 2

end

end A224165.P17613639126372319118

/-! ## A224165.P15027208065491103398

`A224067(A016825(n))%36`
-/

namespace A224165.P15027208065491103398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A224067 (A016825 n).toNat) 36

end

end A224165.P15027208065491103398

/-! ## A224165.P10647350908956344867

`or(A020761(n), A224067(n+1))`
-/

namespace A224165.P10647350908956344867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A020761 n) (A224067 (n + 1))

end

end A224165.P10647350908956344867

/-! ## A224165.P5345209592243933745

`A224067(n+1)+A000038(n)²`
-/

namespace A224165.P5345209592243933745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224067 (n + 1) + A000038 n ^ 2

end

end A224165.P5345209592243933745

/-! ## A224165.P16883876254188146585

`or(A073423(n)², A224067(n+1))`
-/

namespace A224165.P16883876254188146585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A073423 n ^ 2) (A224067 (n + 1))

end

end A224165.P16883876254188146585

/-! ## A224165.P16271182774755177179

`lcm(dr(A040020(n)), A224067(n+1))`
-/

namespace A224165.P16271182774755177179
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (SequenceMachineLib.digitalRoot (A040020 n) : ℤ) (A224067 (n + 1))

end

end A224165.P16271182774755177179

/-! ## A224165.P1610661759982176053

`A224067(n+1)+A045991(C(2, n+1))`
-/

namespace A224165.P1610661759982176053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224067 (n + 1) + A045991 (Nat.choose 2 (n + 1))

end

end A224165.P1610661759982176053

/-! ## A224165.P11183232692404676105

`∑{d}[A224067(A016825(n)), A000010(#)]`
-/

namespace A224165.P11183232692404676105
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224067 (A016825 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A224165.P11183232692404676105

/-! ## A224165.P2492698396428327573

`A224067(n+1)+A002278(A151878(n))`
-/

namespace A224165.P2492698396428327573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224067 (n + 1) + A002278 (A151878 n).toNat

end

end A224165.P2492698396428327573

/-!
# A224166: Number of halving and tripling steps to reach the last number of the cycle in the Collatz (3x+1) problem for the negative integers (the initial term is counted).

The programs for A224166, there is no canonical definition to state claims against.
-/

/-! ## A224166.P3793432472251958630

`A224183(n+1)+1`
-/

namespace A224166.P3793432472251958630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224183 (n + 1) + 1

end

end A224166.P3793432472251958630

/-! ## A224166.P1760255496083161840

`A020725(A224183(n+1))`
-/

namespace A224166.P1760255496083161840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A224183 (n + 1)).toNat

end

end A224166.P1760255496083161840

/-! ## A224166.P13902529386817151953

`A346369(n+1)+A224254(n+1)`
-/

namespace A224166.P13902529386817151953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346369 (n + 1) + A224254 (n + 1)

end

end A224166.P13902529386817151953

/-! ## A224166.P11089213421032976717

`A008611(3*A224183(-xor(n, -1)))`
-/

namespace A224166.P11089213421032976717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (3 * A224183 (-Int.xor (n : ℤ) (-1)).toNat).toNat

end

end A224166.P11089213421032976717

/-! ## A224166.P17620224800470749311

`A082354(A056957(n+1))+A346369(n+1)+1`
-/

namespace A224166.P17620224800470749311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082354 (A056957 (n + 1)).toNat + (A346369 (n + 1) + 1)

end

end A224166.P17620224800470749311

/-!
# A224167: Number of n X n 0..3 arrays with rows, diagonals and antidiagonals unimodal and columns nondecreasing.

The programs for A224167, there is no canonical definition to state claims against.
-/

/-! ## A224167.P2335345262477697860

`A224173(∑[4*n]+1)`
-/

namespace A224167.P2335345262477697860
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224173 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A224167.P2335345262477697860

/-! ## A224167.P14568883655614200872

`∑{digits}[n, A224173(A001844(#))]`
-/

namespace A224167.P14568883655614200872
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A224173 (A001844 x).toNat).sum

end

end A224167.P14568883655614200872

/-! ## A224167.P11547596546280067547

`A224173(A001844(n))+char[10]`
-/

namespace A224167.P11547596546280067547
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224173 (A001844 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A224167.P11547596546280067547

/-! ## A224167.P1059317909131588827

`record[A003982(n)*A224173(n+1)]`
-/

namespace A224167.P1059317909131588827
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A224173 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A224167.P1059317909131588827

/-! ## A224167.P7865180958478694114

`record[A214505(n)*A224173(n+1)]`
-/

namespace A224167.P7865180958478694114
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214505 n * A224173 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A224167.P7865180958478694114

/-!
# A224168: Number of n X 3 0..3 arrays with rows, diagonals and antidiagonals unimodal and columns nondecreasing.

The programs for A224168, there is no canonical definition to state claims against.
-/

/-! ## A224168.P13873584465579533800

`A224173(∑[n+3]+1)`
-/

namespace A224168.P13873584465579533800
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224173 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A224168.P13873584465579533800

/-! ## A224168.P6405039535133290248

`A224173(A052905(n)+3)+char[16]`
-/

namespace A224168.P6405039535133290248
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224173 (A052905 n + 3).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A224168.P6405039535133290248

/-! ## A224168.P7495997548423156109

`or(A000038(n), A224173(A055999(n)+4))`
-/

namespace A224168.P7495997548423156109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000038 n) (A224173 (A055999 n + 4).toNat)

end

end A224168.P7495997548423156109

/-! ## A224168.P13620380355846235644

`A178334(n+4)*A224173(A034856(n+2))`
-/

namespace A224168.P13620380355846235644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178334 (n + 4) * A224173 (A034856 (n + 2)).toNat

end

end A224168.P13620380355846235644

/-! ## A224168.P13179178208376236837

`A014963(6*(n+1))*A224173(A052905(n)+3)`
-/

namespace A224168.P13179178208376236837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (6 * (n + 1)) * A224173 (A052905 n + 3).toNat

end

end A224168.P13179178208376236837

/-!
# A224169: Number of n X 4 0..3 arrays with rows, diagonals and antidiagonals unimodal and columns nondecreasing.

The programs for A224169, there is no canonical definition to state claims against.
-/

/-! ## A224169.P10349870141938930721

`A224173(∑[n+4]+3)`
-/

namespace A224169.P10349870141938930721
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224173 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A224169.P10349870141938930721

/-! ## A224169.P7778561259316394450

`record[A224173(A141214(abs(1-n)))]`
-/

namespace A224169.P7778561259316394450
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224173 (A141214 |1 - (n : ℤ)|.toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A224169.P7778561259316394450

/-! ## A224169.P2521874898760416765

`A224173(A167614(n+3)-6)+char[15]`
-/

namespace A224169.P2521874898760416765
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  15

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224173 (A167614 (n + 3) - 6).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A224169.P2521874898760416765

/-! ## A224169.P6704726933684295147

`A007318(C(2, n))²*A224173(A167614(n+3)-6)`
-/

namespace A224169.P6704726933684295147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) ^ 2 * A224173 (A167614 (n + 3) - 6).toNat

end

end A224169.P6704726933684295147

/-! ## A224169.P6670391955191338904

`ceil(1/A000041(n))*A224173(A167614(n+3)-6)`
-/

namespace A224169.P6670391955191338904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈1 / (A000041 n : ℚ)⌉ * A224173 (A167614 (n + 3) - 6).toNat

end

end A224169.P6670391955191338904

/-!
# A224170: Number of n X 5 0..3 arrays with rows, diagonals and antidiagonals unimodal and columns nondecreasing.

The programs for A224170, there is no canonical definition to state claims against.
-/

/-! ## A224170.P15372091003850495914

`A224173(Δ[A264443(n)])`
-/

namespace A224170.P15372091003850495914
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224173 (f1 (n + 1) - f1 n).toNat

end

end A224170.P15372091003850495914

/-! ## A224170.P14826411932651183031

`A224173(A046691(n+3))`
-/

namespace A224170.P14826411932651183031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224173 (A046691 (n + 3)).toNat

end

end A224170.P14826411932651183031

/-! ## A224170.P1717382651453452758

`A224173(A056115(n)+11)`
-/

namespace A224170.P1717382651453452758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224173 (A056115 n + 11).toNat

end

end A224170.P1717382651453452758

/-! ## A224170.P14922979962728340591

`A224173(eq[2, A092921(n)])`
-/

namespace A224170.P14922979962728340591
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092921 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224173 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A224170.P14922979962728340591

/-! ## A224170.P4811554693325929586

`A224173(eq[3, A152157(n)])`
-/

namespace A224170.P4811554693325929586
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152157 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224173 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A224170.P4811554693325929586

/-!
# A224171: Number of n X 6 0..3 arrays with rows, diagonals and antidiagonals unimodal and columns nondecreasing.

The programs for A224171, there is no canonical definition to state claims against.
-/

/-! ## A224171.P3704968241237436747

`A224173(∑[n+6]+10)`
-/

namespace A224171.P3704968241237436747
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224173 (∑ j ∈ Finset.range (n + 1), f1 j + 10)

end

end A224171.P3704968241237436747

/-!
# A224172: Number of n X 7 0..3 arrays with rows, diagonals and antidiagonals unimodal and columns nondecreasing.

The programs for A224172, there is no canonical definition to state claims against.
-/

/-! ## A224172.P13702517975014451766

`A224173(∑[n+7]+15)`
-/

namespace A224172.P13702517975014451766
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 7

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224173 (∑ j ∈ Finset.range (n + 1), f1 j + 15)

end

end A224172.P13702517975014451766

/-! ## A224172.P12986193046516161212

`A224173(A055999(n+4))+A184946(n)`
-/

namespace A224172.P12986193046516161212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224173 (A055999 (n + 4)).toNat + A184946 n

end

end A224172.P12986193046516161212

/-! ## A224172.P8200571659135684505

`A224173(A055999(n+4))%A223758(n+3)`
-/

namespace A224172.P8200571659135684505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A224173 (A055999 (n + 4)).toNat) (A223758 (n + 3))

end

end A224172.P8200571659135684505

/-! ## A224172.P362750561336792935

`A326016(n+1)+A224173(A000096(n+6)-5)`
-/

namespace A224172.P362750561336792935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326016 (n + 1) + A224173 (A000096 (n + 6) - 5).toNat

end

end A224172.P362750561336792935

/-! ## A224172.P13470072550469066682

`A224173(A000096(n+6)-5)^A010686(2*(n+2))`
-/

namespace A224172.P13470072550469066682
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A224173 (A000096 (n + 6) - 5).toNat : ℚ) ^ (A010686 (2 * (n + 2)) : ℤ)

end

end A224172.P13470072550469066682

/-!
# A224173: T(n,k) = number of n X k 0..3 arrays with rows, diagonals and antidiagonals unimodal and columns nondecreasing.

The programs for A224173, there is no canonical definition to state claims against.
-/

/-! ## A224173.P2206054290230441200

`A004277(A223864(n+1))-A223987(n+1)`
-/

namespace A224173.P2206054290230441200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A223864 (n + 1)).toNat - A223987 (n + 1)

end

end A224173.P2206054290230441200

/-!
# A224174: Number of 3 X n 0..3 arrays with rows, diagonals and antidiagonals unimodal and columns nondecreasing.

The programs for A224174, there is no canonical definition to state claims against.
-/

/-! ## A224174.P11533922142264425590

`A224173(∑[n+2]+4)`
-/

namespace A224174.P11533922142264425590
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224173 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A224174.P11533922142264425590

/-! ## A224174.P14766367368227929033

`A224173(A167614(n+1))+char[17]`
-/

namespace A224174.P14766367368227929033
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  17

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224173 (A167614 (n + 1)).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A224174.P14766367368227929033

/-! ## A224174.P4328301268404242587

`A224173(A000096(n+1)+4)+char[19]`
-/

namespace A224174.P4328301268404242587
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  19

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224173 (A000096 (n + 1) + 4).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A224174.P4328301268404242587

/-! ## A224174.P12299970649669217607

`A224173(A167614(n+1))%A017454(n)`
-/

namespace A224174.P12299970649669217607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A224173 (A167614 (n + 1)).toNat) (A017454 n)

end

end A224174.P12299970649669217607

/-! ## A224174.P2963208321937391382

`gcd(A025438(n), A224173(A167614(n+1)))`
-/

namespace A224174.P2963208321937391382
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A025438 n) (A224173 (A167614 (n + 1)).toNat)

end

end A224174.P2963208321937391382

/-!
# A224175: Number of 4 X n 0..3 arrays with rows, diagonals and antidiagonals unimodal and columns nondecreasing.

The programs for A224175, there is no canonical definition to state claims against.
-/

/-! ## A224175.P12565164477517741092

`A224173(∑[n+3]+7)`
-/

namespace A224175.P12565164477517741092
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224173 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A224175.P12565164477517741092

/-! ## A224175.P9216395811335172575

`A224173(A052905(n)+9)+char[16]`
-/

namespace A224175.P9216395811335172575
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224173 (A052905 n + 9).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A224175.P9216395811335172575

/-! ## A224175.P9278806767087907161

`A224173(A055999(n)+10)+(2*n)%2`
-/

namespace A224175.P9278806767087907161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224173 (A055999 n + 10).toNat + ((2 * n % 2 : ℕ) : ℤ)

end

end A224175.P9278806767087907161

/-! ## A224175.P6921552734724336813

`A007318(C(2, n))*A224173(A052905(n)+9)`
-/

namespace A224175.P6921552734724336813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A224173 (A052905 n + 9).toNat

end

end A224175.P6921552734724336813

/-! ## A224175.P12793290369446908075

`(A000041(n)%2)!*A224173(A052905(n)+9)`
-/

namespace A224175.P12793290369446908075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (Int.tmod (A000041 n) 2).toNat : ℤ) * A224173 (A052905 n + 9).toNat

end

end A224175.P12793290369446908075

/-!
# A224176: Number of 5 X n 0..3 arrays with rows, diagonals and antidiagonals unimodal and columns nondecreasing.

The programs for A224176, there is no canonical definition to state claims against.
-/

/-! ## A224176.P14135602820103979924

`A224173(C(n+6, 2)-n)`
-/

namespace A224176.P14135602820103979924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224173 (Nat.choose (n + 6) 2 - n)

end

end A224176.P14135602820103979924

/-! ## A224176.P4108821181776231652

`A224173(∑[round(1/acot(n))+4]+10)`
-/

namespace A224176.P4108821181776231652
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (1 / SequenceMachineLib.acot (n : ℝ)) + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224173 (∑ j ∈ Finset.range (n + 1), f1 j + 10).toNat

end

end A224176.P4108821181776231652

/-! ## A224176.P5280289799867786633

`A224173(A167499(n+3))`
-/

namespace A224176.P5280289799867786633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224173 (A167499 (n + 3)).toNat

end

end A224176.P5280289799867786633

/-! ## A224176.P13581727791897818900

`A224173(A155212(n)+13)`
-/

namespace A224176.P13581727791897818900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224173 (A155212 n + 13).toNat

end

end A224176.P13581727791897818900

/-! ## A224176.P3139034863011893136

`A224173(A056000(n)+15)`
-/

namespace A224176.P3139034863011893136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224173 (A056000 n + 15).toNat

end

end A224176.P3139034863011893136

/-!
# A224177: Number of 6 X n 0..3 arrays with rows, diagonals and antidiagonals unimodal and columns nondecreasing.

The programs for A224177, there is no canonical definition to state claims against.
-/

/-! ## A224177.P14699039977131322932

`A224173(A056115(n)+21)`
-/

namespace A224177.P14699039977131322932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224173 (A056115 n + 21).toNat

end

end A224177.P14699039977131322932

/-! ## A224177.P5671155673982598054

`A224173(A167499(n+4)+1)`
-/

namespace A224177.P5671155673982598054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224173 (A167499 (n + 4) + 1).toNat

end

end A224177.P5671155673982598054

/-! ## A224177.P14630386821247971983

`A224173(A167614(n+4)+3)`
-/

namespace A224177.P14630386821247971983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224173 (A167614 (n + 4) + 3).toNat

end

end A224177.P14630386821247971983

/-! ## A224177.P16733154173529624926

`A224173(A000096(n+4)+7)`
-/

namespace A224177.P16733154173529624926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224173 (A000096 (n + 4) + 7).toNat

end

end A224177.P16733154173529624926

/-! ## A224177.P18218215701078076823

`A224173(A052905(n+2)+11)`
-/

namespace A224177.P18218215701078076823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224173 (A052905 (n + 2) + 11).toNat

end

end A224177.P18218215701078076823

/-!
# A224178: Number of 7 X n 0..3 arrays with rows, diagonals and antidiagonals unimodal and columns nondecreasing.

The programs for A224178, there is no canonical definition to state claims against.
-/

/-! ## A224178.P7551718001340884566

`A224173(A302537(n)+27)`
-/

namespace A224178.P7551718001340884566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224173 (A302537 n + 27).toNat

end

end A224178.P7551718001340884566

/-! ## A224178.P16234521022659181999

`A224173(A056119(n)+28)`
-/

namespace A224178.P16234521022659181999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224173 (A056119 n + 28).toNat

end

end A224178.P16234521022659181999

/-! ## A224178.P10838195013805147300

`A224173(eq[11, A066657(n)])`
-/

namespace A224178.P10838195013805147300
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224173 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A224178.P10838195013805147300

/-! ## A224178.P9955877450683779215

`A224173(A167499(n+5)+2)`
-/

namespace A224178.P9955877450683779215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224173 (A167499 (n + 5) + 2).toNat

end

end A224178.P9955877450683779215

/-! ## A224178.P15348551714399935389

`A224173(A000124(n+6)+6)`
-/

namespace A224178.P15348551714399935389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224173 (A000124 (n + 6) + 6).toNat

end

end A224178.P15348551714399935389

/-!
# A224179: Number of permutations of length n containing exactly 1 occurrence of 1243.

The programs for A224179, there is no canonical definition to state claims against.
-/

/-! ## A224179.P13502579781751560900

`A004868(n+1)!-A219230(n)`
-/

namespace A224179.P13502579781751560900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A004868 (n + 1)).toNat : ℤ) - A219230 n

end

end A224179.P13502579781751560900

/-! ## A224179.P14780239744307985316

`A057356(A000260(n)-A000245(n))`
-/

namespace A224179.P14780239744307985316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057356 (A000260 n - A000245 n).toNat

end

end A224179.P14780239744307985316

/-!
# A224180: Number of permutations of length n containing exactly 1 occurrence of 12354.

The programs for A224180, there is no canonical definition to state claims against.
-/

/-! ## A224180.P12161444132695763964

`A144461(A275679(n))`
-/

namespace A224180.P12161444132695763964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144461 (A275679 n).toNat

end

end A224180.P12161444132695763964

/-! ## A224180.P9341951310408640955

`A333601(A089407(n))`
-/

namespace A224180.P9341951310408640955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333601 (A089407 n).toNat

end

end A224180.P9341951310408640955

/-! ## A224180.P8343303400776351358

`A362609(A156909(n))`
-/

namespace A224180.P8343303400776351358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362609 (A156909 n).toNat

end

end A224180.P8343303400776351358

/-!
# A224181: Number of permutations of length n containing exactly 2 occurrences of 1243.

The programs for A224181, there is no canonical definition to state claims against.
-/

/-! ## A224181.P9084561655119407870

`A103840(A150188(n+1))`
-/

namespace A224181.P9084561655119407870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103840 (A150188 (n + 1)).toNat

end

end A224181.P9084561655119407870

/-! ## A224181.P11754432553503895062

`A002266(A355746(n²+1))`
-/

namespace A224181.P11754432553503895062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002266 (A355746 (n ^ 2 + 1)).toNat

end

end A224181.P11754432553503895062

/-! ## A224181.P12744595646918009842

`A057354(A092652(n+1)+A064989(n+1))`
-/

namespace A224181.P12744595646918009842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057354 (A092652 (n + 1) + A064989 (n + 1)).toNat

end

end A224181.P12744595646918009842

/-!
# A224182: Number of permutations of length n containing exactly 1 occurrence of 2341.

The programs for A224182, there is no canonical definition to state claims against.
-/

/-! ## A224182.P8282429737937462247

`∑[∑[A059995(A193037(n))]]`
-/

namespace A224182.P8282429737937462247
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059995 (A193037 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A224182.P8282429737937462247

/-! ## A224182.P10680232942733640658

`∑[A151733(∑[A191522(n)])]`
-/

namespace A224182.P10680232942733640658
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191522 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151733 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A224182.P10680232942733640658

/-! ## A224182.P12431819296141749686

`n!-A003056(∑[A000262(n)])`
-/

namespace A224182.P12431819296141749686
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) - A003056 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A224182.P12431819296141749686

/-!
# A224183: Number of halving and tripling steps to reach the last number of the cycle in the Collatz (3x+1) problem for the negative integers (the initial term is not counted).

The programs for A224183, there is no canonical definition to state claims against.
-/

/-! ## A224183.P12667003848200568996

`A224254(n+1)+A346369(n+1)-1`
-/

namespace A224183.P12667003848200568996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224254 (n + 1) + (A346369 (n + 1) - 1)

end

end A224183.P12667003848200568996

/-! ## A224183.P2756708751094475200

`A346369(n+1)+A082354(A056957(n+1))`
-/

namespace A224183.P2756708751094475200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346369 (n + 1) + A082354 (A056957 (n + 1)).toNat

end

end A224183.P2756708751094475200

/-! ## A224183.P17969018316564081113

`A002837(A346369(n+1)+A224254(n+1))`
-/

namespace A224183.P17969018316564081113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002837 (A346369 (n + 1) + A224254 (n + 1)).toNat

end

end A224183.P17969018316564081113

/-! ## A224183.P17473531091000633339

`A023443(A346369(n+1)+A224254(n+1))`
-/

namespace A224183.P17473531091000633339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A346369 (n + 1) + A224254 (n + 1)).toNat

end

end A224183.P17473531091000633339

/-! ## A224183.P13706614854242128226

`A033619(A346369(n+1)+A224254(n+1))`
-/

namespace A224183.P13706614854242128226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033619 (A346369 (n + 1) + A224254 (n + 1)).toNat

end

end A224183.P13706614854242128226

/-! ## A224183.P11618702724186201735

`A224166(n+1)-1`
-/

namespace A224183.P11618702724186201735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224166 (n + 1) - 1

end

end A224183.P11618702724186201735

/-! ## A224183.P10964625086432913563

`A002837(A224166(n+1))`
-/

namespace A224183.P10964625086432913563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002837 (A224166 (n + 1)).toNat

end

end A224183.P10964625086432913563

/-!
# A224184: Number of n X n 0..2 arrays with rows unimodal and columns nondecreasing.

The programs for A224184, there is no canonical definition to state claims against.
-/

/-! ## A224184.P7164540286463676598

`A224190((n+1)²+n²)`
-/

namespace A224184.P7164540286463676598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224190 ((n + 1) ^ 2 + n ^ 2)

end

end A224184.P7164540286463676598

/-! ## A224184.P9556090670449457892

`record[root(A224190(n+1), A331886(n))]`
-/

namespace A224184.P9556090670449457892
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A224190 (n + 1) : ℝ) ^ (1 / (A331886 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A224184.P9556090670449457892

/-! ## A224184.P15134533148885843735

`A224190(A001844(n))+A185284(n)`
-/

namespace A224184.P15134533148885843735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224190 (A001844 n).toNat + A185284 n

end

end A224184.P15134533148885843735

/-! ## A224184.P5705336235494420339

`A224190(A001844(n))*A304042(n)`
-/

namespace A224184.P5705336235494420339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224190 (A001844 n).toNat * A304042 n

end

end A224184.P5705336235494420339

/-! ## A224184.P3953921561507618355

`lcm(A020985(n), A224190(A001844(n)))`
-/

namespace A224184.P3953921561507618355
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 n) (A224190 (A001844 n).toNat)

end

end A224184.P3953921561507618355

/-!
# A224185: Number of n X 3 0..2 arrays with rows unimodal and columns nondecreasing.

The programs for A224185, there is no canonical definition to state claims against.
-/

/-! ## A224185.P8076683433003668844

`A224190(∑[n+3]+1)`
-/

namespace A224185.P8076683433003668844
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224190 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A224185.P8076683433003668844

/-! ## A224185.P15469553533196190657

`and(log2(1/2), A224190(A034856(n+2)))`
-/

namespace A224185.P15469553533196190657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (SequenceMachineLib.roundAway (Real.logb 2 ((1 : ℚ) / 2 : ℝ))) (A224190 (A034856 (n + 2)).toNat)

end

end A224185.P15469553533196190657

/-! ## A224185.P15869392162110649511

`lcm(A060789(n+2), A224190(A052905(n)+3))`
-/

namespace A224185.P15869392162110649511
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A060789 (n + 2)) (A224190 (A052905 n + 3).toNat)

end

end A224185.P15869392162110649511

/-! ## A224185.P4846485635116289739

`A224190(A034856(n+2))%A027941(n+6)`
-/

namespace A224185.P4846485635116289739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A224190 (A034856 (n + 2)).toNat) (A027941 (n + 6))

end

end A224185.P4846485635116289739

/-! ## A224185.P13552955611657509025

`A001222(A114442(n))*A224190(A034856(n+2))`
-/

namespace A224185.P13552955611657509025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A114442 n).toNat * A224190 (A034856 (n + 2)).toNat

end

end A224185.P13552955611657509025

/-!
# A224186: Number of n X 4 0..2 arrays with rows unimodal and columns nondecreasing.

The programs for A224186, there is no canonical definition to state claims against.
-/

/-! ## A224186.P165056421026082964

`A224190(A027379(n+2))`
-/

namespace A224186.P165056421026082964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224190 (A027379 (n + 2)).toNat

end

end A224186.P165056421026082964

/-! ## A224186.P11740303801093063037

`A224190(A055998(n+2))`
-/

namespace A224186.P11740303801093063037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224190 (A055998 (n + 2)).toNat

end

end A224186.P11740303801093063037

/-! ## A224186.P2627443520579559709

`A224190(A056000(n)+7)`
-/

namespace A224186.P2627443520579559709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224190 (A056000 n + 7).toNat

end

end A224186.P2627443520579559709

/-! ## A224186.P4061027904274151108

`A224190(Δ[A006416(n+2)])`
-/

namespace A224186.P4061027904274151108
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006416 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224190 (f1 (n + 1) - f1 n).toNat

end

end A224186.P4061027904274151108

/-! ## A224186.P6220391334985567953

`A224190(A052905(n+1)+2)`
-/

namespace A224186.P6220391334985567953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224190 (A052905 (n + 1) + 2).toNat

end

end A224186.P6220391334985567953

/-!
# A224187: Number of nX5 0..2 arrays with rows unimodal and columns nondecreasing.

The programs for A224187, there is no canonical definition to state claims against.
-/

/-! ## A224187.P15309148628159995520

`A224190(A046691(n+3))`
-/

namespace A224187.P15309148628159995520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224190 (A046691 (n + 3)).toNat

end

end A224187.P15309148628159995520

/-! ## A224187.P6424367899173865356

`A224190(A056115(n)+11)`
-/

namespace A224187.P6424367899173865356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224190 (A056115 n + 11).toNat

end

end A224187.P6424367899173865356

/-! ## A224187.P7267496133676592371

`A224190(Δ[A023545(n+1)])`
-/

namespace A224187.P7267496133676592371
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224190 (f1 (n + 1) - f1 n).toNat

end

end A224187.P7267496133676592371

/-! ## A224187.P12825011787348541419

`A224190(A052905(n+2)+1)`
-/

namespace A224187.P12825011787348541419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224190 (A052905 (n + 2) + 1).toNat

end

end A224187.P12825011787348541419

/-! ## A224187.P17702634370622963188

`A224190(A000096(n+4)-3)`
-/

namespace A224187.P17702634370622963188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224190 (A000096 (n + 4) - 3).toNat

end

end A224187.P17702634370622963188

/-!
# A224188: Number of n X 6 0..2 arrays with rows unimodal and columns nondecreasing.

The programs for A224188, there is no canonical definition to state claims against.
-/

/-! ## A224188.P14323572994535316038

`A224190(A052905(n+3))`
-/

namespace A224188.P14323572994535316038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224190 (A052905 (n + 3)).toNat

end

end A224188.P14323572994535316038

/-! ## A224188.P11830316435379295635

`A224190(A056119(n)+16)`
-/

namespace A224188.P11830316435379295635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224190 (A056119 n + 16).toNat

end

end A224188.P11830316435379295635

/-! ## A224188.P8111373311652514778

`A224190(A027379(n+4)-2)`
-/

namespace A224188.P8111373311652514778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224190 (A027379 (n + 4) - 2).toNat

end

end A224188.P8111373311652514778

/-! ## A224188.P10032648177556826025

`A224190(A000096(n+5)-4)`
-/

namespace A224188.P10032648177556826025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224190 (A000096 (n + 5) - 4).toNat

end

end A224188.P10032648177556826025

/-! ## A224188.P1554719442951073516

`A224190(Δ[A023545(n+2)]-1)`
-/

namespace A224188.P1554719442951073516
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224190 (f1 (n + 1) - f1 n - 1).toNat

end

end A224188.P1554719442951073516

/-!
# A224189: Number of nX7 0..2 arrays with rows unimodal and columns nondecreasing.

The programs for A224189, there is no canonical definition to state claims against.
-/

/-! ## A224189.P16308616518063070926

`A224190(Δ[A026054(n+4)])`
-/

namespace A224189.P16308616518063070926
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026054 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224190 (f1 (n + 1) - f1 n).toNat

end

end A224189.P16308616518063070926

/-! ## A224189.P10778987147801515139

`A224190(A052905(n+4)-1)`
-/

namespace A224189.P10778987147801515139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224190 (A052905 (n + 4) - 1).toNat

end

end A224189.P10778987147801515139

/-! ## A224189.P12903197304231700221

`A224190(A000096(n+6)-5)`
-/

namespace A224189.P12903197304231700221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224190 (A000096 (n + 6) - 5).toNat

end

end A224189.P12903197304231700221

/-! ## A224189.P1965009672417260050

`A224190(A000124(n+7)-7)`
-/

namespace A224189.P1965009672417260050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224190 (A000124 (n + 7) - 7).toNat

end

end A224189.P1965009672417260050

/-! ## A224189.P6003832830118610421

`A224190(A000217(n+6)+n+1)`
-/

namespace A224189.P6003832830118610421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224190 (A000217 (n + 6) + (n + 1 : ℤ)).toNat

end

end A224189.P6003832830118610421

/-!
# A224190: T(n,k) = Number of n X k 0..2 arrays with rows unimodal and columns nondecreasing.

The programs for A224190, there is no canonical definition to state claims against.
-/

/-! ## A224190.P4657827281538034350

`A004277(A223918(n+1))-A224262(n+1)`
-/

namespace A224190.P4657827281538034350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A223918 (n + 1)).toNat - A224262 (n + 1)

end

end A224190.P4657827281538034350

/-! ## A224190.P6267752349236333902

`A224262(n+1)+A160086(A152654(n)²)`
-/

namespace A224190.P6267752349236333902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224262 (n + 1) + A160086 (A152654 n ^ 2).toNat

end

end A224190.P6267752349236333902

/-! ## A224190.P1987787398114843977

`A326814(A234921(n+1))+A223918(n+1)`
-/

namespace A224190.P1987787398114843977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326814 (A234921 (n + 1)).toNat + A223918 (n + 1)

end

end A224190.P1987787398114843977

/-! ## A224190.P9195483050455821671

`A224262(A187829(n+1))+A160086(A160086(3*n))`
-/

namespace A224190.P9195483050455821671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224262 (A187829 (n + 1)).toNat + A160086 (A160086 (3 * n)).toNat

end

end A224190.P9195483050455821671

/-!
# A224191: Number of 4Xn 0..2 arrays with rows unimodal and columns nondecreasing.

The programs for A224191, there is no canonical definition to state claims against.
-/

/-! ## A224191.P5251759611672938372

`A224190(A052905(n)+9)`
-/

namespace A224191.P5251759611672938372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224190 (A052905 n + 9).toNat

end

end A224191.P5251759611672938372

/-! ## A224191.P14840011625020585386

`A224190(A055999(n)+10)`
-/

namespace A224191.P14840011625020585386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224190 (A055999 n + 10).toNat

end

end A224191.P14840011625020585386

/-! ## A224191.P6321641581809305753

`A224190(A167614(n+2)+1)`
-/

namespace A224191.P6321641581809305753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224190 (A167614 (n + 2) + 1).toNat

end

end A224191.P6321641581809305753

/-! ## A224191.P3564990608130414879

`A224190(A167499(n+2)-1)`
-/

namespace A224191.P3564990608130414879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224190 (A167499 (n + 2) - 1).toNat

end

end A224191.P3564990608130414879

/-! ## A224191.P318546099912193624

`A224190(A000124(n+3)+3)`
-/

namespace A224191.P318546099912193624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224190 (A000124 (n + 3) + 3).toNat

end

end A224191.P318546099912193624

/-!
# A224192: Number of 5Xn 0..2 arrays with rows unimodal and columns nondecreasing.

The programs for A224192, there is no canonical definition to state claims against.
-/

/-! ## A224192.P5732112294232390567

`A224190(A167499(n+3))`
-/

namespace A224192.P5732112294232390567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224190 (A167499 (n + 3)).toNat

end

end A224192.P5732112294232390567

/-! ## A224192.P10425862920972339157

`A224190(A056000(n)+15)`
-/

namespace A224192.P10425862920972339157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224190 (A056000 n + 15).toNat

end

end A224192.P10425862920972339157

/-! ## A224192.P7332590383199088233

`A224190(A000096(n+3)+6)`
-/

namespace A224192.P7332590383199088233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224190 (A000096 (n + 3) + 6).toNat

end

end A224192.P7332590383199088233

/-! ## A224192.P12486908027438049202

`A224190(A055998(n+2)+8)`
-/

namespace A224192.P12486908027438049202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224190 (A055998 (n + 2) + 8).toNat

end

end A224192.P12486908027438049202

/-! ## A224192.P11584299991620139725

`A224190(A133263(n+5)-(n+2))`
-/

namespace A224192.P11584299991620139725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224190 (A133263 (n + 5) - (n + 2 : ℤ)).toNat

end

end A224192.P11584299991620139725

/-!
# A224193: Number of 6Xn 0..2 arrays with rows unimodal and columns nondecreasing.

The programs for A224193, there is no canonical definition to state claims against.
-/

/-! ## A224193.P18038146040901978270

`A224190(A167499(n+4)+1)`
-/

namespace A224193.P18038146040901978270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224190 (A167499 (n + 4) + 1).toNat

end

end A224193.P18038146040901978270

/-! ## A224193.P5457198634611561406

`A224190(A000124(n+5)+5)`
-/

namespace A224193.P5457198634611561406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224190 (A000124 (n + 5) + 5).toNat

end

end A224193.P5457198634611561406

/-! ## A224193.P5580315148706234538

`A224190(A000096(n+4)+7)`
-/

namespace A224193.P5580315148706234538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224190 (A000096 (n + 4) + 7).toNat

end

end A224193.P5580315148706234538

/-! ## A224193.P16058869554198321841

`A224190(A000217(n+5)+6)`
-/

namespace A224193.P16058869554198321841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224190 (A000217 (n + 5) + 6).toNat

end

end A224193.P16058869554198321841

/-! ## A224193.P5098176792391585235

`A224190(A046691(n+8)-A008587(n+6))`
-/

namespace A224193.P5098176792391585235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224190 (A046691 (n + 8) - A008587 (n + 6)).toNat

end

end A224193.P5098176792391585235

/-!
# A224194: Number of 7Xn 0..2 arrays with rows unimodal and columns nondecreasing.

The programs for A224194, there is no canonical definition to state claims against.
-/

/-! ## A224194.P15032483779224220182

`A224190(A167499(n+5)+2)`
-/

namespace A224194.P15032483779224220182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224190 (A167499 (n + 5) + 2).toNat

end

end A224194.P15032483779224220182

/-! ## A224194.P1494026520003638461

`A224190(A000124(n+6)+6)`
-/

namespace A224194.P1494026520003638461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224190 (A000124 (n + 6) + 6).toNat

end

end A224194.P1494026520003638461

/-! ## A224194.P6608674482426560997

`A224190(A000096(n+5)+8)`
-/

namespace A224194.P6608674482426560997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224190 (A000096 (n + 5) + 8).toNat

end

end A224194.P6608674482426560997

/-! ## A224194.P9008716347336397901

`A224190(A000217(n+6)+7)`
-/

namespace A224194.P9008716347336397901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224190 (A000217 (n + 6) + 7).toNat

end

end A224194.P9008716347336397901

/-! ## A224194.P17953632183241512228

`A224190(A167614(n+6)+A001478(n+3))`
-/

namespace A224194.P17953632183241512228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224190 (A167614 (n + 6) + A001478 (n + 3)).toNat

end

end A224194.P17953632183241512228

/-!
# A224195: Ordered sequence of numbers of form (2^n - 1)*2^m + 1 where n >= 1, m >= 1.

The programs for A224195, the canonical program `A224195.P2968674169476824705` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A224195 has offset 1).

The definition of A224195 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A224195.P2968674169476824705

`A081118(n+1)+2`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A224195

/-- `A081118(n+1)+2` -/
def P2968674169476824705.Spec : Prop :=
  ∀ n, P2968674169476824705.a n = A224195 (n + 1)

theorem P2968674169476824705.correct : P2968674169476824705.Spec := by
  intro n
  simp only [A224195, Nat.add_sub_cancel]

end A224195

/-! ## A224195.P297800995446080265

`A043569(n+1)+1`
-/

namespace A224195.P297800995446080265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043569 (n + 1) + 1

end

end A224195.P297800995446080265

namespace A224195

/-- `A043569(n+1)+1` -/
def P297800995446080265.Spec : Prop :=
  ∀ n, P297800995446080265.a n = A224195 (n + 1)

end A224195

/-! ## A224195.P6445287520294258121

`2*A089633(n)+3`
-/

namespace A224195.P6445287520294258121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A089633 n + 3

end

end A224195.P6445287520294258121

namespace A224195

/-- `2*A089633(n)+3` -/
def P6445287520294258121.Spec : Prop :=
  ∀ n, P6445287520294258121.a n = A224195 (n + 1)

end A224195

/-! ## A224195.P342028584529774711

`ceil(A224380(n+1)/4)`
-/

namespace A224195.P342028584529774711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A224380 (n + 1) : ℚ) / 4⌉

end

end A224195.P342028584529774711

namespace A224195

/-- `ceil(A224380(n+1)/4)` -/
def P342028584529774711.Spec : Prop :=
  ∀ n, P342028584529774711.a n = A224195 (n + 1)

end A224195

/-! ## A224195.P16035654578594229775

`or(1, A030130(n+1)+2)`
-/

namespace A224195.P16035654578594229775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A030130 (n + 1) + 2)

end

end A224195.P16035654578594229775

namespace A224195

/-- `or(1, A030130(n+1)+2)` -/
def P16035654578594229775.Spec : Prop :=
  ∀ n, P16035654578594229775.a n = A224195 (n + 1)

end A224195

/-! ## A224195.P455928506898282622

`or(1, A207063(n+1)+2)`
-/

namespace A224195.P455928506898282622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A207063 (n + 1) + 2)

end

end A224195.P455928506898282622

namespace A224195

/-- `or(1, A207063(n+1)+2)` -/
def P455928506898282622.Spec : Prop :=
  ∀ n, P455928506898282622.a n = A224195 (n + 1)

end A224195

/-! ## A224195.P6747872181522776757

`∑[2*A057728(n+1)]+1`
-/

namespace A224195.P6747872181522776757
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A057728 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A224195.P6747872181522776757

namespace A224195

/-- `∑[2*A057728(n+1)]+1` -/
def P6747872181522776757.Spec : Prop :=
  ∀ n, P6747872181522776757.a n = A224195 (n + 1)

end A224195

/-! ## A224195.P5147941644648844187

`A098354(n+1)-A130330(n)`
-/

namespace A224195.P5147941644648844187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098354 (n + 1) - A130330 n

end

end A224195.P5147941644648844187

namespace A224195

/-- `A098354(n+1)-A130330(n)` -/
def P5147941644648844187.Spec : Prop :=
  ∀ n, P5147941644648844187.a n = A224195 (n + 1)

end A224195

/-! ## A224195.P7973879425016535682

`2*A140513(n)-A130330(n)`
-/

namespace A224195.P7973879425016535682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A140513 n - A130330 n

end

end A224195.P7973879425016535682

namespace A224195

/-- `2*A140513(n)-A130330(n)` -/
def P7973879425016535682.Spec : Prop :=
  ∀ n, P7973879425016535682.a n = A224195 (n + 1)

end A224195

/-! ## A224195.P15660061367948345338

`A030130(n+1)+A035214(n)+1`
-/

namespace A224195.P15660061367948345338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030130 (n + 1) + (A035214 n + 1)

end

end A224195.P15660061367948345338

namespace A224195

/-- `A030130(n+1)+A035214(n)+1` -/
def P15660061367948345338.Spec : Prop :=
  ∀ n, P15660061367948345338.a n = A224195 (n + 1)

end A224195

/-! ## A224195.P2873660052747902830

`A030130(n+1)+A010054(n)+2`
-/

namespace A224195.P2873660052747902830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030130 (n + 1) + (A010054 n + 2)

end

end A224195.P2873660052747902830

namespace A224195

/-- `A030130(n+1)+A010054(n)+2` -/
def P2873660052747902830.Spec : Prop :=
  ∀ n, P2873660052747902830.a n = A224195 (n + 1)

end A224195

/-! ## A224195.P1076318322073916725

`A175332(n+1)+1-A130321(n)`
-/

namespace A224195.P1076318322073916725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175332 (n + 1) + (1 - A130321 n)

end

end A224195.P1076318322073916725

namespace A224195

/-- `A175332(n+1)+1-A130321(n)` -/
def P1076318322073916725.Spec : Prop :=
  ∀ n, P1076318322073916725.a n = A224195 (n + 1)

end A224195

/-! ## A224195.P17810572692246100413

`2*A023758(n+2)+1`
-/

namespace A224195.P17810572692246100413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A023758 (n + 2) + 1

end

end A224195.P17810572692246100413

namespace A224195

/-- `2*A023758(n+2)+1` -/
def P17810572692246100413.Spec : Prop :=
  ∀ n, P17810572692246100413.a n = A224195 (n + 1)

end A224195

/-! ## A224195.P11113016136454612215

`A089633(A007401(n+1))+2`
-/

namespace A224195.P11113016136454612215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089633 (A007401 (n + 1)).toNat + 2

end

end A224195.P11113016136454612215

namespace A224195

/-- `A089633(A007401(n+1))+2` -/
def P11113016136454612215.Spec : Prop :=
  ∀ n, P11113016136454612215.a n = A224195 (n + 1)

end A224195

/-! ## A224195.P1744826596701161647

`A089633(A014132(n+1)-1)+2`
-/

namespace A224195.P1744826596701161647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089633 (A014132 (n + 1) - 1).toNat + 2

end

end A224195.P1744826596701161647

namespace A224195

/-- `A089633(A014132(n+1)-1)+2` -/
def P1744826596701161647.Spec : Prop :=
  ∀ n, P1744826596701161647.a n = A224195 (n + 1)

end A224195

/-! ## A224195.P2030874609596225947

`A023758(A080036(n+1))+1`
-/

namespace A224195.P2030874609596225947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023758 (A080036 (n + 1)).toNat + 1

end

end A224195.P2030874609596225947

namespace A224195

/-- `A023758(A080036(n+1))+1` -/
def P2030874609596225947.Spec : Prop :=
  ∀ n, P2030874609596225947.a n = A224195 (n + 1)

end A224195

/-! ## A224195.P7151098628997736793

`A164874(n+1)+2-A130321(n)`
-/

namespace A224195.P7151098628997736793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164874 (n + 1) + (2 - A130321 n)

end

end A224195.P7151098628997736793

namespace A224195

/-- `A164874(n+1)+2-A130321(n)` -/
def P7151098628997736793.Spec : Prop :=
  ∀ n, P7151098628997736793.a n = A224195 (n + 1)

end A224195

/-! ## A224195.P16648074202538860272

`ceil(A224701(n+1)/8)`
-/

namespace A224195.P16648074202538860272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A224701 (n + 1) : ℚ) / 8⌉

end

end A224195.P16648074202538860272

namespace A224195

/-- `ceil(A224701(n+1)/8)` -/
def P16648074202538860272.Spec : Prop :=
  ∀ n, P16648074202538860272.a n = A224195 (n + 1)

end A224195

/-! ## A224195.P3890745463639921234

`or(1, A206853(n+1)+2)`
-/

namespace A224195.P3890745463639921234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A206853 (n + 1) + 2)

end

end A224195.P3890745463639921234

namespace A224195

/-- `or(1, A206853(n+1)+2)` -/
def P3890745463639921234.Spec : Prop :=
  ∀ n, P3890745463639921234.a n = A224195 (n + 1)

end A224195

/-! ## A224195.P18107787964851554629

`A006257(A175332(n+1))`
-/

namespace A224195.P18107787964851554629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006257 (A175332 (n + 1)).toNat

end

end A224195.P18107787964851554629

namespace A224195

/-- `A006257(A175332(n+1))` -/
def P18107787964851554629.Spec : Prop :=
  ∀ n, P18107787964851554629.a n = A224195 (n + 1)

end A224195

/-!
# A224198: Number of n X n 0..3 arrays with rows unimodal and antidiagonals nondecreasing.

The programs for A224198, there is no canonical definition to state claims against.
-/

/-! ## A224198.P6917975686323898030

`A224204(∑[4*n]+1)`
-/

namespace A224198.P6917975686323898030
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224204 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A224198.P6917975686323898030

/-! ## A224198.P15251002217371304798

`record[gcd(A003987(n), A224204(n+1))]`
-/

namespace A224198.P15251002217371304798
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A003987 n) (A224204 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A224198.P15251002217371304798

/-! ## A224198.P10851778394352369553

`A224204(A001844(n))+A025469(n)`
-/

namespace A224198.P10851778394352369553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224204 (A001844 n).toNat + A025469 n

end

end A224198.P10851778394352369553

/-! ## A224198.P4201940807263594955

`lcm(A020985(n), A224204(A001844(n)))`
-/

namespace A224198.P4201940807263594955
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 n) (A224204 (A001844 n).toNat)

end

end A224198.P4201940807263594955

/-! ## A224198.P5802492662348833468

`A097807(n)²*A224204(A001844(n))`
-/

namespace A224198.P5802492662348833468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097807 n ^ 2 * A224204 (A001844 n).toNat

end

end A224198.P5802492662348833468

/-!
# A224199: Number of nX3 0..3 arrays with rows unimodal and antidiagonals nondecreasing.

The programs for A224199, there is no canonical definition to state claims against.
-/

/-! ## A224199.P3050383427317017539

`A224204(∑[n+3]+1)`
-/

namespace A224199.P3050383427317017539
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224204 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A224199.P3050383427317017539

/-! ## A224199.P5995397383304617022

`lcm(2, A224204(A034856(n+2)))`
-/

namespace A224199.P5995397383304617022
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A224204 (A034856 (n + 2)).toNat)

end

end A224199.P5995397383304617022

/-! ## A224199.P17520345839672310299

`A178334(n+1)*A224204(A034856(n+2))`
-/

namespace A224199.P17520345839672310299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178334 (n + 1) * A224204 (A034856 (n + 2)).toNat

end

end A224199.P17520345839672310299

/-! ## A224199.P2164868836096438637

`A224204(A034856(n+2))+A142150(2*n+1)`
-/

namespace A224199.P2164868836096438637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224204 (A034856 (n + 2)).toNat + A142150 (2 * n + 1)

end

end A224199.P2164868836096438637

/-! ## A224199.P15765722658831148973

`A181801(2*n+1)*A224204(A034856(n+2))`
-/

namespace A224199.P15765722658831148973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181801 (2 * n + 1) * A224204 (A034856 (n + 2)).toNat

end

end A224199.P15765722658831148973

