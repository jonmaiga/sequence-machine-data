import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C005
import Seq.B000.C007
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C025
import Seq.B000.C033
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C006
import Seq.B002.C000
import Seq.B002.C002
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C002
import Seq.B006.C000
import Seq.B008.C000
import Seq.B010.C000
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

/-!
# A016401: 403rd cyclotomic polynomial.

The programs for A016401, there is no canonical definition to state claims against.
-/

/-! ## A016401.P9936619113714484975

`or(A014022(A051867(n)), A014040(n))`
-/

namespace A016401.P9936619113714484975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A014022 (A051867 n).toNat) (A014040 n)

end

end A016401.P9936619113714484975

/-! ## A016401.P12951597812416630151

`Δ[val(∑[A050965(n+1)], 19)]`
-/

namespace A016401.P12951597812416630151
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050965 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (∑ j ∈ Finset.range (n + 1), f2 j).toNat 19

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A016401.P12951597812416630151

/-! ## A016401.P3239426332867435692

`Δ[A131789(A179454(n)+A057163(n))]`
-/

namespace A016401.P3239426332867435692
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131789 (A179454 n + A057163 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A016401.P3239426332867435692

/-! ## A016401.P13945310683269515454

`Δ[A025456(∑[A162537(n+1)])]`
-/

namespace A016401.P13945310683269515454
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162537 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025456 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A016401.P13945310683269515454

/-! ## A016401.P2096190456032593124

`A014074(A128227(2*(n+1))+A005901(n))`
-/

namespace A016401.P2096190456032593124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014074 (A128227 (2 * (n + 1)) + A005901 n).toNat

end

end A016401.P2096190456032593124

/-!
# A016402: 406th cyclotomic polynomial.

The programs for A016402, there is no canonical definition to state claims against.
-/

/-! ## A016402.P10035080940412594485

`(-1)^n*A016355(n)`
-/

namespace A016402.P10035080940412594485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A016355 n

end

end A016402.P10035080940412594485

/-! ## A016402.P3149242823558072909

`A016355(n)*A033999(n)`
-/

namespace A016402.P3149242823558072909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016355 n * A033999 n

end

end A016402.P3149242823558072909

/-! ## A016402.P15867400002751547491

`round(A016355(n)/A280193(n))`
-/

namespace A016402.P15867400002751547491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A016355 n : ℚ) / (A280193 n : ℚ))

end

end A016402.P15867400002751547491

/-! ## A016402.P1348689766519136163

`round(A016355(n)/A280560(n))`
-/

namespace A016402.P1348689766519136163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A016355 n : ℚ) / (A280560 n : ℚ))

end

end A016402.P1348689766519136163

/-! ## A016402.P4946674651966628666

`A016355(n)/A033999(n+2)`
-/

namespace A016402.P4946674651966628666
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016355 n : ℚ) / (A033999 (n + 2) : ℚ)

end

end A016402.P4946674651966628666

/-! ## A016402.P6557281443862471876

`A016355(n)*A056594(2*n)`
-/

namespace A016402.P6557281443862471876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016355 n * A056594 (2 * n)

end

end A016402.P6557281443862471876

/-! ## A016402.P9673835517354705392

`A016355(n)/A009001(2*n)`
-/

namespace A016402.P9673835517354705392
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016355 n : ℚ) / (A009001 (2 * n) : ℚ)

end

end A016402.P9673835517354705392

/-! ## A016402.P11543300164711982516

`A016355(n)/A016355(and(1, -n))`
-/

namespace A016402.P11543300164711982516
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016355 n : ℚ) / (A016355 (Int.land 1 (-(n : ℤ))).toNat : ℚ)

end

end A016402.P11543300164711982516

/-! ## A016402.P10479409489671199448

`-A016355(n)/(-1)^A020639(n+1)`
-/

namespace A016402.P10479409489671199448
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  -((A016355 n : ℚ) / (-1 : ℚ) ^ (A020639 (n + 1) : ℤ))

end

end A016402.P10479409489671199448

/-! ## A016402.P2839952362531044909

`A016355(n)^(A000010(n+5)²+1)/(-1)^n`
-/

namespace A016402.P2839952362531044909
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016355 n : ℚ) ^ (A000010 (n + 5) ^ 2 + 1 : ℤ) / ((-1) ^ n : ℚ)

end

end A016402.P2839952362531044909

/-! ## A016402.P4641956574299715662

`A016355(n)/A056594(A005843(n))`
-/

namespace A016402.P4641956574299715662
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016355 n : ℚ) / (A056594 (A005843 n).toNat : ℚ)

end

end A016402.P4641956574299715662

/-! ## A016402.P8285500432899916122

`A016355(n)/A016355(Δ[A004526(n)])`
-/

namespace A016402.P8285500432899916122
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016355 n : ℚ) / (A016355 (f1 (n + 1) - f1 n).toNat : ℚ)

end

end A016402.P8285500432899916122

/-! ## A016402.P12222471148763406347

`A056594(A005843(n)+1-A016355(n))`
-/

namespace A016402.P12222471148763406347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056594 (A005843 n + (1 - A016355 n)).toNat

end

end A016402.P12222471148763406347

/-! ## A016402.P15034564954381033107

`A056594(1-(A016355(n)-A005843(n)))`
-/

namespace A016402.P15034564954381033107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056594 (1 - (A016355 n - A005843 n)).toNat

end

end A016402.P15034564954381033107

/-!
# A016403: 407th cyclotomic polynomial.

The programs for A016403, there is no canonical definition to state claims against.
-/

/-! ## A016403.P18193642078284763600

`Δ[A104819(n+1)^-A110726(n)]`
-/

namespace A016403.P18193642078284763600
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A104819 (n + 1) : ℚ) ^ (-A110726 (n + 10) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A016403.P18193642078284763600

/-! ## A016403.P15799993833256980120

`A016413(n)-A016396(A026703(n+1))`
-/

namespace A016403.P15799993833256980120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016413 n - A016396 (A026703 (n + 1)).toNat

end

end A016403.P15799993833256980120

/-! ## A016403.P16388720995236108601

`A016418(n)-A016396(A026703(n+1))`
-/

namespace A016403.P16388720995236108601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016418 n - A016396 (A026703 (n + 1)).toNat

end

end A016403.P16388720995236108601

/-! ## A016403.P4368163508139377945

`Δ[A185245(n)^A110726(n)]`
-/

namespace A016403.P4368163508139377945
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A185245 n : ℚ) ^ (A110726 (n + 10) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A016403.P4368163508139377945

/-! ## A016403.P14199338349958772583

`Δ[A185245(n)^A110727(n)]`
-/

namespace A016403.P14199338349958772583
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A185245 n : ℚ) ^ (A110727 (n + 10) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A016403.P14199338349958772583

/-!
# A016404: 413th cyclotomic polynomial.

The programs for A016404, there is no canonical definition to state claims against.
-/

/-! ## A016404.P14161359993101054484

`A016428(n+14)^p?[A000982(n+4)-8]`
-/

namespace A016404.P14161359993101054484
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000982 (n + 4) - 8

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016428 (n + 14) : ℚ) ^ (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℤ)

end

end A016404.P14161359993101054484

/-! ## A016404.P4850417818082009167

`A016428(n+14)^A209297(A052905(n))`
-/

namespace A016404.P4850417818082009167
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016428 (n + 14) : ℚ) ^ (A209297 (A052905 n).toNat : ℤ)

end

end A016404.P4850417818082009167

/-! ## A016404.P6398411136744368523

`A016428(n+14)^A005408(A050030(n+1))`
-/

namespace A016404.P6398411136744368523
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016428 (n + 14) : ℚ) ^ (A005408 (A050030 (n + 1)).toNat : ℤ)

end

end A016404.P6398411136744368523

/-! ## A016404.P13399768943181430571

`A016428(n+14)^A005408(A050042(n+1))`
-/

namespace A016404.P13399768943181430571
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016428 (n + 14) : ℚ) ^ (A005408 (A050042 (n + 1)).toNat : ℤ)

end

end A016404.P13399768943181430571

/-! ## A016404.P9593852887891678536

`A016428(n+14)^A238554(A004976(n+1))`
-/

namespace A016404.P9593852887891678536
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016428 (n + 14) : ℚ) ^ (A238554 (A004976 (n + 1)).toNat : ℤ)

end

end A016404.P9593852887891678536

/-! ## A016404.P3897664719122314378

`A016428(n+14)^A000290(A079317(n))`
-/

namespace A016404.P3897664719122314378
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016428 (n + 14) : ℚ) ^ (A000290 (A079317 n).toNat : ℤ)

end

end A016404.P3897664719122314378

/-! ## A016404.P7157552905561730982

`A016428(n+14)^A000290(A023163(n+2))`
-/

namespace A016404.P7157552905561730982
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016428 (n + 14) : ℚ) ^ (A000290 (A023163 (n + 2)).toNat : ℤ)

end

end A016404.P7157552905561730982

/-! ## A016404.P13332686448428430895

`A016428(n+14)^A005408(A032438(n))`
-/

namespace A016404.P13332686448428430895
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016428 (n + 14) : ℚ) ^ (A005408 (A032438 n).toNat : ℤ)

end

end A016404.P13332686448428430895

/-! ## A016404.P11257207467099576892

`A016428(n+14)^A005408(A077043(n))`
-/

namespace A016404.P11257207467099576892
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016428 (n + 14) : ℚ) ^ (A005408 (A077043 n).toNat : ℤ)

end

end A016404.P11257207467099576892

/-! ## A016404.P8724319859021165959

`A016428(n+14)^A005408(A084684(n))`
-/

namespace A016404.P8724319859021165959
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016428 (n + 14) : ℚ) ^ (A005408 (A084684 n).toNat : ℤ)

end

end A016404.P8724319859021165959

/-! ## A016404.P9939648843117055627

`A016428(n+14)^A212311(A212306(n+1))`
-/

namespace A016404.P9939648843117055627
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016428 (n + 14) : ℚ) ^ (A212311 (A212306 (n + 1)).toNat : ℤ)

end

end A016404.P9939648843117055627

/-! ## A016404.P10509447267832262475

`A001511(A339972(n))*A016428(n+14)`
-/

namespace A016404.P10509447267832262475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (A339972 n).toNat * A016428 (n + 14)

end

end A016404.P10509447267832262475

/-! ## A016404.P11037206168380530925

`A016428(n+14)^A326053(2*A152749(n)+1)`
-/

namespace A016404.P11037206168380530925
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016428 (n + 14) : ℚ) ^ (A326053 (2 * A152749 n + 1).toNat : ℤ)

end

end A016404.P11037206168380530925

/-! ## A016404.P12071874083465645711

`A016428(n+14)^A005408(A050046(n+1))`
-/

namespace A016404.P12071874083465645711
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016428 (n + 14) : ℚ) ^ (A005408 (A050046 (n + 1)).toNat : ℤ)

end

end A016404.P12071874083465645711

/-! ## A016404.P8518339978271679232

`A016428(n+14)^A235119(lt[A014963(n+1), n])`
-/

namespace A016404.P8518339978271679232
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016428 (n + 14) : ℚ) ^ (A235119 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n) : ℤ)

end

end A016404.P8518339978271679232

/-!
# A016405: 418th cyclotomic polynomial.

The programs for A016405, there is no canonical definition to state claims against.
-/

/-! ## A016405.P770379145370852983

`(-1)^n*A016356(n)`
-/

namespace A016405.P770379145370852983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A016356 n

end

end A016405.P770379145370852983

/-! ## A016405.P5727302723840793364

`A016356(n)*A033999(n)`
-/

namespace A016405.P5727302723840793364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016356 n * A033999 n

end

end A016405.P5727302723840793364

/-! ## A016405.P3427159699675584859

`round(A016356(n)/A280560(n))`
-/

namespace A016405.P3427159699675584859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A016356 n : ℚ) / (A280560 n : ℚ))

end

end A016405.P3427159699675584859

/-! ## A016405.P7932858399768070345

`A016356(n)*A062157(n+1)`
-/

namespace A016405.P7932858399768070345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016356 n * A062157 (n + 1)

end

end A016405.P7932858399768070345

/-! ## A016405.P15592210718587239155

`A016356(n)/A033999(n+2)`
-/

namespace A016405.P15592210718587239155
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016356 n : ℚ) / (A033999 (n + 2) : ℚ)

end

end A016405.P15592210718587239155

/-! ## A016405.P4916445521332579047

`A016356(n)*A056594(2*n)`
-/

namespace A016405.P4916445521332579047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016356 n * A056594 (2 * n)

end

end A016405.P4916445521332579047

/-! ## A016405.P9661586318869664680

`A056594(Δ[n²]-A016356(n))`
-/

namespace A016405.P9661586318869664680
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056594 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - A016356 n).toNat

end

end A016405.P9661586318869664680

/-! ## A016405.P9862085862395631407

`-A016356(n)/(-1)^A020639(n+1)`
-/

namespace A016405.P9862085862395631407
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  -((A016356 n : ℚ) / (-1 : ℚ) ^ (A020639 (n + 1) : ℤ))

end

end A016405.P9862085862395631407

/-!
# A016406: 420th cyclotomic polynomial.

The programs for A016406, there is no canonical definition to state claims against.
-/

/-! ## A016406.P17856800221927172764

`log2(gcd(2, n))*A016357(A004525(n))`
-/

namespace A016406.P17856800221927172764
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (Nat.gcd 2 n : ℝ) * (A016357 (A004525 n).toNat : ℝ)

end

end A016406.P17856800221927172764

/-! ## A016406.P1103826794829933993

`char[2*n]*A016357(A004526(n))`
-/

namespace A016406.P1103826794829933993
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) * A016357 (A004526 n).toNat

end

end A016406.P1103826794829933993

/-! ## A016406.P9070356321168462085

`(n+1)%2*A016357(A002265(2*n))`
-/

namespace A016406.P9070356321168462085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((n + 1) % 2 : ℕ) : ℤ) * A016357 (A002265 (2 * n)).toNat

end

end A016406.P9070356321168462085

/-! ## A016406.P9912902996249448211

`A016357(n-lcm(2, n)/2)-A000035(n)`
-/

namespace A016406.P9912902996249448211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016357 (SequenceMachineLib.roundAway ((n : ℚ) - (Nat.lcm 2 n : ℚ) / 2)).toNat - A000035 n

end

end A016406.P9912902996249448211

/-! ## A016406.P13101950964995427719

`A009001(n)*A016380(A006368(n))`
-/

namespace A016406.P13101950964995427719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009001 n * A016380 (A006368 n).toNat

end

end A016406.P13101950964995427719

/-! ## A016406.P4085919538982335629

`A016357(A025480(n))*A059841(n)`
-/

namespace A016406.P4085919538982335629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016357 (A025480 n).toNat * A059841 n

end

end A016406.P4085919538982335629

/-! ## A016406.P10350424555820392794

`A016357(A004525(n))%A010127(n)`
-/

namespace A016406.P10350424555820392794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A016357 (A004525 n).toNat) (A010127 n)

end

end A016406.P10350424555820392794

/-! ## A016406.P9863336119193072627

`A016357(A004526(n))%A010127(n)`
-/

namespace A016406.P9863336119193072627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A016357 (A004526 n).toNat) (A010127 n)

end

end A016406.P9863336119193072627

/-! ## A016406.P3615793775288370817

`A016357(A025480(n))%A010127(n)`
-/

namespace A016406.P3615793775288370817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A016357 (A025480 n).toNat) (A010127 n)

end

end A016406.P3615793775288370817

/-!
# A016407: 427th cyclotomic polynomial.

The programs for A016407, there is no canonical definition to state claims against.
-/

/-! ## A016407.P3394125501819260089

`A178798(A092921(n+6))+A014016(n)`
-/

namespace A016407.P3394125501819260089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178798 (A092921 (n + 6)).toNat + A014016 n

end

end A016407.P3394125501819260089

/-!
# A016409: 434th cyclotomic polynomial.

The programs for A016409, there is no canonical definition to state claims against.
-/

/-! ## A016409.P7601899145515251970

`(-1)^n*A016358(n)`
-/

namespace A016409.P7601899145515251970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A016358 n

end

end A016409.P7601899145515251970

/-! ## A016409.P17156846203386602054

`A016358(n)*A033999(n)`
-/

namespace A016409.P17156846203386602054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016358 n * A033999 n

end

end A016409.P17156846203386602054

/-! ## A016409.P13877381651758016324

`round(A016358(n)/A280193(n))`
-/

namespace A016409.P13877381651758016324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A016358 n : ℚ) / (A280193 n : ℚ))

end

end A016409.P13877381651758016324

/-! ## A016409.P193171108046973901

`round(A016358(n)/A280560(n))`
-/

namespace A016409.P193171108046973901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A016358 n : ℚ) / (A280560 n : ℚ))

end

end A016409.P193171108046973901

/-! ## A016409.P2777944926859958710

`A016358(n)/A033999(n+2)`
-/

namespace A016409.P2777944926859958710
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016358 n : ℚ) / (A033999 (n + 2) : ℚ)

end

end A016409.P2777944926859958710

/-! ## A016409.P12086942305796703402

`A016358(n)/A009001(2*n)`
-/

namespace A016409.P12086942305796703402
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016358 n : ℚ) / (A009001 (2 * n) : ℚ)

end

end A016409.P12086942305796703402

/-! ## A016409.P7619287426035517622

`A016358(n)*A081729(3*n)`
-/

namespace A016409.P7619287426035517622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016358 n * A081729 (3 * n)

end

end A016409.P7619287426035517622

/-! ## A016409.P18381838429321324667

`A016358(n)/(A004442(n)-n)`
-/

namespace A016409.P18381838429321324667
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016358 n : ℚ) / (A004442 n - (n : ℤ) : ℚ)

end

end A016409.P18381838429321324667

/-! ## A016409.P7724567444846135712

`round(A016358(n)/Δ[A052938(n)])`
-/

namespace A016409.P7724567444846135712
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052938 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A016358 n : ℚ) / (f1 (n + 1) - f1 n : ℚ))

end

end A016409.P7724567444846135712

/-! ## A016409.P5580157525992237109

`-A016358(n)/(-1)^A020639(n+1)`
-/

namespace A016409.P5580157525992237109
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  -((A016358 n : ℚ) / (-1 : ℚ) ^ (A020639 (n + 1) : ℤ))

end

end A016409.P5580157525992237109

/-!
# A016410: 435th cyclotomic polynomial.

The programs for A016410, there is no canonical definition to state claims against.
-/

/-! ## A016410.P2640131985573185563

`A014034(A173152(n))+A014024(n)`
-/

namespace A016410.P2640131985573185563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014034 (A173152 n).toNat + A014024 n

end

end A016410.P2640131985573185563

/-! ## A016410.P5281120149000837996

`A016416(n)+A014034(A173152(n))`
-/

namespace A016410.P5281120149000837996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016416 n + A014034 (A173152 n).toNat

end

end A016410.P5281120149000837996

/-! ## A016410.P18263035257199477389

`A014025(A060539(n+1))+A014024(n)`
-/

namespace A016410.P18263035257199477389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014025 (A060539 (n + 1)).toNat + A014024 n

end

end A016410.P18263035257199477389

/-! ## A016410.P8000853370711951911

`A016416(n)+A014025(A060539(n+1))`
-/

namespace A016410.P8000853370711951911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016416 n + A014025 (A060539 (n + 1)).toNat

end

end A016410.P8000853370711951911

/-!
# A016411: 437th cyclotomic polynomial.

The programs for A016411, there is no canonical definition to state claims against.
-/

/-! ## A016411.P12754029774496778340

`Δ[val(A087158(n+8), 10)]`
-/

namespace A016411.P12754029774496778340
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A087158 (n + 8)).toNat 10

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A016411.P12754029774496778340

/-! ## A016411.P11747231057327219098

`Δ[A010051(∑[A069024(n+2)])]`
-/

namespace A016411.P11747231057327219098
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069024 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A016411.P11747231057327219098

/-! ## A016411.P17465552126763885140

`Δ[A079619(A079602(n+5)²)]`
-/

namespace A016411.P17465552126763885140
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079619 (A079602 (n + 5) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A016411.P17465552126763885140

/-! ## A016411.P5876311882538101308

`Δ[A010051(A002769(n+2)+1)]`
-/

namespace A016411.P5876311882538101308
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (A002769 (n + 2) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A016411.P5876311882538101308

/-! ## A016411.P5534795622020884271

`Δ[A014541(A329230(n+1)²)]`
-/

namespace A016411.P5534795622020884271
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014541 (A329230 (n + 1) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A016411.P5534795622020884271

/-!
# A016412: 442nd cyclotomic polynomial.

The programs for A016412, there is no canonical definition to state claims against.
-/

/-! ## A016412.P6486303347639583716

`(-1)^n*A016360(n)`
-/

namespace A016412.P6486303347639583716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A016360 n

end

end A016412.P6486303347639583716

/-! ## A016412.P9203614355673176494

`A016360(n)*A033999(n)`
-/

namespace A016412.P9203614355673176494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016360 n * A033999 n

end

end A016412.P9203614355673176494

/-! ## A016412.P17493068157866060167

`round(A016360(n)/A280560(n))`
-/

namespace A016412.P17493068157866060167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A016360 n : ℚ) / (A280560 n : ℚ))

end

end A016412.P17493068157866060167

/-! ## A016412.P7923071441437878430

`A016360(n)/A033999(n+2)`
-/

namespace A016412.P7923071441437878430
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016360 n : ℚ) / (A033999 (n + 2) : ℚ)

end

end A016412.P7923071441437878430

/-! ## A016412.P8776499168216495782

`A016360(n)*A057077(2*n)`
-/

namespace A016412.P8776499168216495782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016360 n * A057077 (2 * n)

end

end A016412.P8776499168216495782

/-! ## A016412.P10107462061453724193

`A016360(n)/(A004442(n)-n)`
-/

namespace A016412.P10107462061453724193
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016360 n : ℚ) / (A004442 n - (n : ℤ) : ℚ)

end

end A016412.P10107462061453724193

/-! ## A016412.P7701642793071973801

`-A016360(n)/(-1)^A020639(n+1)`
-/

namespace A016412.P7701642793071973801
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  -((A016360 n : ℚ) / (-1 : ℚ) ^ (A020639 (n + 1) : ℤ))

end

end A016412.P7701642793071973801

/-! ## A016412.P17035988253090614171

`A010892(A016789(n)-A016360(n))`
-/

namespace A016412.P17035988253090614171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010892 (A016789 n - A016360 n).toNat

end

end A016412.P17035988253090614171

/-! ## A016412.P13980996216836648347

`A016360(n)/A009531(A005408(n))`
-/

namespace A016412.P13980996216836648347
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016360 n : ℚ) / (A009531 (A005408 n).toNat : ℚ)

end

end A016412.P13980996216836648347

/-! ## A016412.P16941935512406846471

`A016360(n)*A219977(n²)`
-/

namespace A016412.P16941935512406846471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016360 n * A219977 (n ^ 2)

end

end A016412.P16941935512406846471

/-!
# A016413: 451st cyclotomic polynomial.

The programs for A016413, there is no canonical definition to state claims against.
-/

/-! ## A016413.P11824589628403241995

`Δ[A035214(A101440(abs(1-n)))]`
-/

namespace A016413.P11824589628403241995
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035214 (A101440 |1 - (n : ℤ)|.toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A016413.P11824589628403241995

/-! ## A016413.P18158752351798349554

`A014020(lt[A279778(n), A089529(n+1)])`
-/

namespace A016413.P18158752351798349554
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279778 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089529 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014020 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A016413.P18158752351798349554

/-! ## A016413.P14211721464200695140

`A014020(lt[A008292(3*n+5), A287233(2*(n+1))])`
-/

namespace A016413.P14211721464200695140
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008292 (3 * n + 5)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287233 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014020 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A016413.P14211721464200695140

/-!
# A016415: 462nd cyclotomic polynomial.

The programs for A016415, there is no canonical definition to state claims against.
-/

/-! ## A016415.P14957858549368222584

`(-1)^n*A016362(n)`
-/

namespace A016415.P14957858549368222584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A016362 n

end

end A016415.P14957858549368222584

/-! ## A016415.P17207746566343334609

`A016362(n)*A033999(n)`
-/

namespace A016415.P17207746566343334609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016362 n * A033999 n

end

end A016415.P17207746566343334609

/-! ## A016415.P10560901459110983318

`round(A016362(n)/A164117(n))`
-/

namespace A016415.P10560901459110983318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A016362 n : ℚ) / (A164117 n : ℚ))

end

end A016415.P10560901459110983318

/-! ## A016415.P2297242211216175814

`round(A016362(n)/A280193(n))`
-/

namespace A016415.P2297242211216175814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A016362 n : ℚ) / (A280193 n : ℚ))

end

end A016415.P2297242211216175814

/-! ## A016415.P12061896359612978897

`round(A016362(n)/A280560(n))`
-/

namespace A016415.P12061896359612978897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A016362 n : ℚ) / (A280560 n : ℚ))

end

end A016415.P12061896359612978897

/-! ## A016415.P9405536891838170275

`A016362(n)*A056594(2*n)`
-/

namespace A016415.P9405536891838170275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016362 n * A056594 (2 * n)

end

end A016415.P9405536891838170275

/-! ## A016415.P2035549092450524228

`A016362(n)/A033999(n+4)`
-/

namespace A016415.P2035549092450524228
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016362 n : ℚ) / (A033999 (n + 4) : ℚ)

end

end A016415.P2035549092450524228

/-! ## A016415.P16450564225270110870

`A016362(n)*A034947(2*n+1)`
-/

namespace A016415.P16450564225270110870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016362 n * A034947 (2 * n + 1)

end

end A016415.P16450564225270110870

/-! ## A016415.P8582138644924490084

`A016362(n)*A209615(2*n+1)`
-/

namespace A016415.P8582138644924490084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016362 n * A209615 (2 * n + 1)

end

end A016415.P8582138644924490084

/-! ## A016415.P4352515908331305315

`-A016362(n)/(-1)^A020639(n+1)`
-/

namespace A016415.P4352515908331305315
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  -((A016362 n : ℚ) / (-1 : ℚ) ^ (A020639 (n + 1) : ℤ))

end

end A016415.P4352515908331305315

/-! ## A016415.P4808290386343363811

`A056594(A005408(n)-A016362(n))`
-/

namespace A016415.P4808290386343363811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056594 (A005408 n - A016362 n).toNat

end

end A016415.P4808290386343363811

/-! ## A016415.P3552947925384345923

`A056594(A016362(n)+A005408(n+1))`
-/

namespace A016415.P3552947925384345923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056594 (A016362 n + A005408 (n + 1)).toNat

end

end A016415.P3552947925384345923

/-! ## A016415.P2751719694584317454

`A016362(n)*A076479(A001511(n+1))`
-/

namespace A016415.P2751719694584317454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016362 n * A076479 (A001511 (n + 1)).toNat

end

end A016415.P2751719694584317454

/-! ## A016415.P12346246066102254188

`A016362(n)/A008683(2-A009001(2*n))`
-/

namespace A016415.P12346246066102254188
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016362 n : ℚ) / (A008683 (2 - A009001 (2 * n)).toNat : ℚ)

end

end A016415.P12346246066102254188

/-!
# A016416: 465th cyclotomic polynomial.

The programs for A016416, there is no canonical definition to state claims against.
-/

/-! ## A016416.P15472257142191377066

`Δ[A141213(n)]*A014024(n)`
-/

namespace A016416.P15472257142191377066
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141213 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A014024 n

end

end A016416.P15472257142191377066

/-! ## A016416.P1909464589639668098

`A014024(n)-A335520(A264762(n+1))`
-/

namespace A016416.P1909464589639668098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014024 n - A335520 (A264762 (n + 1)).toNat

end

end A016416.P1909464589639668098

/-! ## A016416.P7898505870704291098

`A014024(n)-A326292(n*A326292(n))`
-/

namespace A016416.P7898505870704291098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014024 n - A326292 ((n : ℤ) * A326292 n).toNat

end

end A016416.P7898505870704291098

/-! ## A016416.P17575686762023346347

`A014024(n)-A326292(n)^A000079(n)`
-/

namespace A016416.P17575686762023346347
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014024 n : ℚ) - (A326292 n : ℚ) ^ (A000079 n : ℤ)

end

end A016416.P17575686762023346347

/-! ## A016416.P1812961425119286218

`A014024(n)-A326292(n)^A027688(n)`
-/

namespace A016416.P1812961425119286218
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014024 n : ℚ) - (A326292 n : ℚ) ^ (A027688 n : ℤ)

end

end A016416.P1812961425119286218

/-!
# A016417: 469th cyclotomic polynomial.

The programs for A016417, there is no canonical definition to state claims against.
-/

/-! ## A016417.P10732321492420743924

`A178798(A092921(a(n-1)+n))+A014016(n)` with `a(0)=1`
-/

namespace A016417.P10732321492420743924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A178798 (A092921 (a (n - 1) + (n : ℤ)).toNat).toNat + A014016 n

end

end A016417.P10732321492420743924

/-! ## A016417.P584666399286285398

`A178798(A092921(n))+A014016(n)`
-/

namespace A016417.P584666399286285398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178798 (A092921 n).toNat + A014016 n

end

end A016417.P584666399286285398

/-! ## A016417.P12839144267528510896

`A014028(A276435(n+1))+A014016(n)`
-/

namespace A016417.P12839144267528510896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014028 (A276435 (n + 1)).toNat + A014016 n

end

end A016417.P12839144267528510896

/-!
# A016418: 473rd cyclotomic polynomial.

The programs for A016418, there is no canonical definition to state claims against.
-/

/-! ## A016418.P6487753043545583717

`Δ[C(A151949(2*(n+1)), A110726(n)/11)]`
-/

namespace A016418.P6487753043545583717
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A151949 (2 * (n + 1))).toNat (SequenceMachineLib.roundAway ((A110726 (n + 10) : ℚ) / 11)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A016418.P6487753043545583717

/-! ## A016418.P1816449607383352774

`Δ[C(A062051(3*n), A110726(n))]`
-/

namespace A016418.P1816449607383352774
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A062051 (3 * n)).toNat (A110726 (n + 10)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A016418.P1816449607383352774

/-!
# A016419: 476th cyclotomic polynomial.

The programs for A016419, there is no canonical definition to state claims against.
-/

/-! ## A016419.P14315978473803919764

`A016363(floor(n/2))%gcd(2, n)`
-/

namespace A016419.P14315978473803919764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A016363 ⌊(n : ℚ) / 2⌋.toNat) (Nat.gcd 2 n : ℤ)

end

end A016419.P14315978473803919764

/-! ## A016419.P248737238954745333

`A016363(gcd(2*n, A001281(n)))`
-/

namespace A016419.P248737238954745333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016363 (Int.gcd (2 * n : ℤ) (A001281 n))

end

end A016419.P248737238954745333

/-! ## A016419.P7215131402447660250

`A011654(floor(n/2))*A056594(n)`
-/

namespace A016419.P7215131402447660250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011654 ⌊(n : ℚ) / 2⌋.toNat * A056594 n

end

end A016419.P7215131402447660250

/-! ## A016419.P7649681900108629406

`A016363(floor(n/2))*A059841(n)`
-/

namespace A016419.P7649681900108629406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016363 ⌊(n : ℚ) / 2⌋.toNat * A059841 n

end

end A016419.P7649681900108629406

/-! ## A016419.P858567210805184806

`∑[A016363(floor(n/2))*A033999(n)]`
-/

namespace A016419.P858567210805184806
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016363 ⌊(n : ℚ) / 2⌋.toNat * A033999 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A016419.P858567210805184806

/-! ## A016419.P4935888709930064020

`A016363(A080513(n)-A057979(n))`
-/

namespace A016419.P4935888709930064020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016363 (A080513 n - A057979 n).toNat

end

end A016419.P4935888709930064020

/-! ## A016419.P4205902284536858569

`A016363(A004525(n))%A040005(n)`
-/

namespace A016419.P4205902284536858569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A016363 (A004525 n).toNat) (A040005 n)

end

end A016419.P4205902284536858569

/-! ## A016419.P1958812029896428325

`A016363(A004526(n))%A040005(n)`
-/

namespace A016419.P1958812029896428325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A016363 (A004526 n).toNat) (A040005 n)

end

end A016419.P1958812029896428325

/-! ## A016419.P9921058051657606799

`A016363(A141310(n)%A052938(n))`
-/

namespace A016419.P9921058051657606799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016363 (Int.tmod (A141310 n) (A052938 n)).toNat

end

end A016419.P9921058051657606799

/-! ## A016419.P6304482600883336909

`A016363(gcd(A001281(n), A002378(n)))`
-/

namespace A016419.P6304482600883336909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016363 (Int.gcd (A001281 n) (A002378 n))

end

end A016419.P6304482600883336909

/-! ## A016419.P6591849929386574785

`A016363(gcd(A005843(n), A006370(n)))`
-/

namespace A016419.P6591849929386574785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016363 (Int.gcd (A005843 n) (A006370 n))

end

end A016419.P6591849929386574785

/-! ## A016419.P15470742619051411069

`A016363(gcd(A008574(n), A029578(n)))`
-/

namespace A016419.P15470742619051411069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016363 (Int.gcd (A008574 n) (A029578 n))

end

end A016419.P15470742619051411069

/-! ## A016419.P1307168401465962257

`A016363(A065190(n+1)-A029578(n))`
-/

namespace A016419.P1307168401465962257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016363 (A065190 (n + 1) - A029578 n).toNat

end

end A016419.P1307168401465962257

/-! ## A016419.P15619852269649827445

`A016363(∑[A059841(n+1)])%A040005(n)`
-/

namespace A016419.P15619852269649827445
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A016363 (∑ j ∈ Finset.range (n + 1), f1 j).toNat) (A040005 n)

end

end A016419.P15619852269649827445

/-!
# A016420: 481st cyclotomic polynomial.

The programs for A016420, there is no canonical definition to state claims against.
-/

/-! ## A016420.P1033153755382597331

`Δ[A122291(n)%A175077(A003964(n+1))]`
-/

namespace A016420.P1033153755382597331
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A122291 n) (A175077 (A003964 (n + 1)).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A016420.P1033153755382597331

/-! ## A016420.P6751020653441107520

`A014022(n)^A034932(A146987(n))`
-/

namespace A016420.P6751020653441107520
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014022 n : ℚ) ^ (A034932 (A146987 n).toNat : ℤ)

end

end A016420.P6751020653441107520

/-!
# A016422: 493rd cyclotomic polynomial.

The programs for A016422, there is no canonical definition to state claims against.
-/

/-! ## A016422.P8253340379041899810

`A014026(A167458(n+1))+A014026(n)`
-/

namespace A016422.P8253340379041899810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014026 (A167458 (n + 1)).toNat + A014026 n

end

end A016422.P8253340379041899810

/-! ## A016422.P10552155737295439622

`or(A014026(n)^A164074(n+1), A014038(n))`
-/

namespace A016422.P10552155737295439622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (SequenceMachineLib.roundAway ((A014026 n : ℚ) ^ (A164074 (n + 1) : ℤ))) (A014038 n)

end

end A016422.P10552155737295439622

/-! ## A016422.P7723115868032886073

`Δ[A003849(A003849(2*(n+2))*A080856(n+1))]`
-/

namespace A016422.P7723115868032886073
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003849 (A003849 (2 * (n + 2)) * A080856 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A016422.P7723115868032886073

/-! ## A016422.P6580056093933543508

`or(A014026(A051871(n)), A014038(n))`
-/

namespace A016422.P6580056093933543508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A014026 (A051871 n).toNat) (A014038 n)

end

end A016422.P6580056093933543508

/-!
# A016423: 494th cyclotomic polynomial.

The programs for A016423, there is no canonical definition to state claims against.
-/

/-! ## A016423.P2287820757563810597

`(-1)^n*A016364(n)`
-/

namespace A016423.P2287820757563810597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A016364 n

end

end A016423.P2287820757563810597

/-! ## A016423.P16345670315180153421

`A016364(n)*A033999(n)`
-/

namespace A016423.P16345670315180153421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016364 n * A033999 n

end

end A016423.P16345670315180153421

/-! ## A016423.P15973666861531793047

`round(A016364(n)/A280193(n))`
-/

namespace A016423.P15973666861531793047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A016364 n : ℚ) / (A280193 n : ℚ))

end

end A016423.P15973666861531793047

/-! ## A016423.P2667264854624056409

`A016364(n)*A056594(2*n)`
-/

namespace A016423.P2667264854624056409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016364 n * A056594 (2 * n)

end

end A016423.P2667264854624056409

/-! ## A016423.P12529315186001788522

`A016364(n)/A033999(xor(1, n)+1)`
-/

namespace A016423.P12529315186001788522
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016364 n : ℚ) / (A033999 (Nat.xor 1 n + 1) : ℚ)

end

end A016423.P12529315186001788522

/-! ## A016423.P14463964776909573129

`A056594(A005408(n)-A016364(n))`
-/

namespace A016423.P14463964776909573129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056594 (A005408 n - A016364 n).toNat

end

end A016423.P14463964776909573129

/-! ## A016423.P13121872854923708402

`-A056594(A016364(n)+A005408(n))`
-/

namespace A016423.P13121872854923708402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A056594 (A016364 n + A005408 n).toNat

end

end A016423.P13121872854923708402

/-! ## A016423.P12226180534584714378

`A056594(A016364(n)+A005408(n+1))`
-/

namespace A016423.P12226180534584714378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056594 (A016364 n + A005408 (n + 1)).toNat

end

end A016423.P12226180534584714378

/-!
# A016424: 495th cyclotomic polynomial.

The programs for A016424, there is no canonical definition to state claims against.
-/

/-! ## A016424.P17262361952633509816

`A014054(n)+A014049(A141214(n))`
-/

namespace A016424.P17262361952633509816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014054 n + A014049 (A141214 n).toNat

end

end A016424.P17262361952633509816

/-! ## A016424.P995029750561498361

`A240328(A127218(n+4))+A014054(n)`
-/

namespace A016424.P995029750561498361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240328 (A127218 (n + 4)).toNat + A014054 n

end

end A016424.P995029750561498361

/-! ## A016424.P58608591038762320

`A014054(n)-A014084(A027187(n+3))`
-/

namespace A016424.P58608591038762320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014054 n - A014084 (A027187 (n + 3)).toNat

end

end A016424.P58608591038762320

/-!
# A016425: 497th cyclotomic polynomial.

The programs for A016425, there is no canonical definition to state claims against.
-/

/-! ## A016425.P6991299068286867765

`Δ[A344120((n+1)*A344120(n+3))]`
-/

namespace A016425.P6991299068286867765
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344120 ((n + 1 : ℤ) * A344120 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A016425.P6991299068286867765

/-! ## A016425.P6477325664107781293

`Δ[and(A344120(n+1), A344120(n+3))]`
-/

namespace A016425.P6477325664107781293
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A344120 (n + 1)) (A344120 (n + 3))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A016425.P6477325664107781293

/-! ## A016425.P18390153397665781968

`A014016(n)%A320487(A057353(n)+3)`
-/

namespace A016425.P18390153397665781968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A014016 n) (A320487 (A057353 n + 3).toNat)

end

end A016425.P18390153397665781968

/-!
# A016426: 506th cyclotomic polynomial.

The programs for A016426, there is no canonical definition to state claims against.
-/

/-! ## A016426.P16622794886255025758

`(-1)^n*A016365(n)`
-/

namespace A016426.P16622794886255025758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A016365 n

end

end A016426.P16622794886255025758

/-! ## A016426.P15455874528832814484

`A016365(n)*A033999(n)`
-/

namespace A016426.P15455874528832814484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016365 n * A033999 n

end

end A016426.P15455874528832814484

/-! ## A016426.P10156335166397004996

`round(A016365(n)/A164117(n))`
-/

namespace A016426.P10156335166397004996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A016365 n : ℚ) / (A164117 n : ℚ))

end

end A016426.P10156335166397004996

/-! ## A016426.P13597645826168808379

`round(A016365(n)/A280193(n))`
-/

namespace A016426.P13597645826168808379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A016365 n : ℚ) / (A280193 n : ℚ))

end

end A016426.P13597645826168808379

/-! ## A016426.P6363793857701832313

`A016365(n)*A062157(n+1)`
-/

namespace A016426.P6363793857701832313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016365 n * A062157 (n + 1)

end

end A016426.P6363793857701832313

/-! ## A016426.P11868966433440688832

`A016365(n)/A033999(n+2)`
-/

namespace A016426.P11868966433440688832
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016365 n : ℚ) / (A033999 (n + 2) : ℚ)

end

end A016426.P11868966433440688832

/-! ## A016426.P18038983616717414404

`A016365(n)*A056594(2*n)`
-/

namespace A016426.P18038983616717414404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016365 n * A056594 (2 * n)

end

end A016426.P18038983616717414404

/-! ## A016426.P18344315836769390766

`A016365(n)/A062157(n+3)`
-/

namespace A016426.P18344315836769390766
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016365 n : ℚ) / (A062157 (n + 3) : ℚ)

end

end A016426.P18344315836769390766

/-! ## A016426.P6868914587575651838

`A016365(n)/(A004442(n)-n)`
-/

namespace A016426.P6868914587575651838
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016365 n : ℚ) / (A004442 n - (n : ℤ) : ℚ)

end

end A016426.P6868914587575651838

/-! ## A016426.P2890051743481839665

`-A016365(n)/(-1)^A020639(n+1)`
-/

namespace A016426.P2890051743481839665
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  -((A016365 n : ℚ) / (-1 : ℚ) ^ (A020639 (n + 1) : ℤ))

end

end A016426.P2890051743481839665

/-! ## A016426.P16854380145598089080

`A056594(A005408(n)-A016365(n))`
-/

namespace A016426.P16854380145598089080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056594 (A005408 n - A016365 n).toNat

end

end A016426.P16854380145598089080

/-! ## A016426.P9346842009168932430

`A056594(A016365(n)+A005408(n+1))`
-/

namespace A016426.P9346842009168932430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056594 (A016365 n + A005408 (n + 1)).toNat

end

end A016426.P9346842009168932430

/-! ## A016426.P11065820645613061689

`A016365(n)*A076756(∑[n])`
-/

namespace A016426.P11065820645613061689
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016365 n * A076756 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A016426.P11065820645613061689

/-!
# A016427: 510th cyclotomic polynomial.

The programs for A016427, there is no canonical definition to state claims against.
-/

/-! ## A016427.P6001784651759505373

`(-1)^n*A016366(n)`
-/

namespace A016427.P6001784651759505373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A016366 n

end

end A016427.P6001784651759505373

/-! ## A016427.P11351741200492556044

`A016366(char[1]+n)/(-1)^n`
-/

namespace A016427.P11351741200492556044
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016366 ((if ∃ j, f1 j = n then 1 else 0) + n) : ℚ) / ((-1) ^ n : ℚ)

end

end A016427.P11351741200492556044

/-! ## A016427.P14094206194766784161

`A016366(n)*A033999(n)`
-/

namespace A016427.P14094206194766784161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016366 n * A033999 n

end

end A016427.P14094206194766784161

/-! ## A016427.P2635882185284396915

`A016366(n)*A056594(2*n)`
-/

namespace A016427.P2635882185284396915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016366 n * A056594 (2 * n)

end

end A016427.P2635882185284396915

/-! ## A016427.P858430682803664776

`A016366(n)*A034947(Δ[n²])`
-/

namespace A016427.P858430682803664776
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016366 n * A034947 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A016427.P858430682803664776

/-! ## A016427.P17770628328120729381

`or(A000007(n), A016366(n))/A033999(n)`
-/

namespace A016427.P17770628328120729381
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lor (A000007 n) (A016366 n) : ℚ) / (A033999 n : ℚ)

end

end A016427.P17770628328120729381

/-!
# A016428: 511th cyclotomic polynomial.

The programs for A016428, there is no canonical definition to state claims against.
-/

/-! ## A016428.P6383050218366641891

`A195376(A330772(n+1))+A014016(n)`
-/

namespace A016428.P6383050218366641891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195376 (A330772 (n + 1)).toNat + A014016 n

end

end A016428.P6383050218366641891

/-!
# A016429: 1785th cyclotomic polynomial.

The programs for A016429, there is no canonical definition to state claims against.
-/

/-! ## A016429.P814865988509275517

`A014114(n)+A014064(A014088(2*n+5))`
-/

namespace A016429.P814865988509275517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014114 n + A014064 (A014088 (2 * n + 5)).toNat

end

end A016429.P814865988509275517

/-! ## A016429.P10291191283267946220

`A014114(n)*A043283(A243083(n))`
-/

namespace A016429.P10291191283267946220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014114 n * A043283 (A243083 n).toNat

end

end A016429.P10291191283267946220

/-! ## A016429.P4002644632151759832

`A014123(A014153(n+2))+A014114(n)`
-/

namespace A016429.P4002644632151759832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014123 (A014153 (n + 2)).toNat + A014114 n

end

end A016429.P4002644632151759832

/-! ## A016429.P3697210372223274616

`A014114(n)-A014149(A029494(n+1))`
-/

namespace A016429.P3697210372223274616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014114 n - A014149 (A029494 (n + 1)).toNat

end

end A016429.P3697210372223274616

/-! ## A016429.P13119913371962436208

`A014135(A058794(n+2))+A014114(n)`
-/

namespace A016429.P13119913371962436208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014135 (A058794 (n + 2)).toNat + A014114 n

end

end A016429.P13119913371962436208

/-!
# A016430: Coordination sequence T1 for Zeolite Code OSI.

The programs for A016430, there is no canonical definition to state claims against.
-/

/-! ## A016430.P14673781812492739310

`∑[∑[A317713(A028817(n+1))]]`
-/

namespace A016430.P14673781812492739310
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317713 (A028817 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A016430.P14673781812492739310

/-! ## A016430.P914827540244616990

`A038412(n)+A016389(A077229(n))`
-/

namespace A016430.P914827540244616990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038412 n + A016389 (A077229 n).toNat

end

end A016430.P914827540244616990

/-! ## A016430.P7409435196910060644

`A217096(A003946(n))+A038412(n)`
-/

namespace A016430.P7409435196910060644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217096 (A003946 n).toNat + A038412 n

end

end A016430.P7409435196910060644

/-! ## A016430.P1037850681294474589

`A056239(A374621(n))+A005893(n)`
-/

namespace A016430.P1037850681294474589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (A374621 n).toNat + A005893 n

end

end A016430.P1037850681294474589

/-! ## A016430.P3534142408781591335

`or(A038412(n), A307597(A004254(n)))`
-/

namespace A016430.P3534142408781591335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A038412 n) (A307597 (A004254 n).toNat)

end

end A016430.P3534142408781591335

/-!
# A016431: Coordination sequence T2 for Zeolite Code OSI.

The programs for A016431, there is no canonical definition to state claims against.
-/

/-! ## A016431.P17222547988931970808

`A378248(3*n+2)+A007814(A355351(n))`
-/

namespace A016431.P17222547988931970808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378248 (3 * n + 2) + A007814 (A355351 n).toNat

end

end A016431.P17222547988931970808

/-!
# A016432: Coordination sequence T3 for Zeolite Code OSI.

The programs for A016432, there is no canonical definition to state claims against.
-/

/-! ## A016432.P18164384965041894816

`A001844(n)-A031324(A256495(n+1))`
-/

namespace A016432.P18164384965041894816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001844 n - A031324 (A256495 (n + 1)).toNat

end

end A016432.P18164384965041894816

/-!
# A016433: Coordination sequence T1 for Zeolite Code TER.

The programs for A016433, there is no canonical definition to state claims against.
-/

/-! ## A016433.P5459313733610942007

`A325131(∑[A307563(n+1)])`
-/

namespace A016433.P5459313733610942007
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307563 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325131 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A016433.P5459313733610942007

/-! ## A016433.P4376360633914813340

`A301206(n)-A016386(A016430(n))`
-/

namespace A016433.P4376360633914813340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301206 n - A016386 (A016430 n).toNat

end

end A016433.P4376360633914813340

/-! ## A016433.P16989646081474243773

`A050603(A153786(3*(n+1)))+A000566(n)`
-/

namespace A016433.P16989646081474243773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050603 (A153786 (3 * (n + 1))).toNat + A000566 n

end

end A016433.P16989646081474243773

/-!
# A016438: Coordination sequence T6 for Zeolite Code TER.

The programs for A016438, there is no canonical definition to state claims against.
-/

/-! ## A016438.P1970957535119111304

`∑[∑[A318556(A246497(n+1))]]`
-/

namespace A016438.P1970957535119111304
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318556 (A246497 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A016438.P1970957535119111304

/-! ## A016438.P12831619824878490964

`∑[∑[A327490(A327516(2*(n+2)))]]`
-/

namespace A016438.P12831619824878490964
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327490 (A327516 (2 * (n + 2))).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A016438.P12831619824878490964

/-! ## A016438.P14540355620057773249

`A105790(A225596(n)+A105774(n+1))`
-/

namespace A016438.P14540355620057773249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105790 (A225596 n + A105774 (n + 1)).toNat

end

end A016438.P14540355620057773249

/-!
# A016439: Coordination sequence T7 for Zeolite Code TER.

The programs for A016439, there is no canonical definition to state claims against.
-/

/-! ## A016439.P2856523943875758857

`A301108(n)+A001221(A088127(n))`
-/

namespace A016439.P2856523943875758857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301108 n + A001221 (A088127 n).toNat

end

end A016439.P2856523943875758857

/-!
# A016496: Continued fraction for log(68).

The programs for A016496, there is no canonical definition to state claims against.
-/

/-! ## A016496.P15742339418019572022

`A072878(abs(or(n+1, 1-a(n-1))))` with `a(0)=4, a(1)=4, a(2)=1`
-/

namespace A016496.P15742339418019572022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4, 4, 1] fun n a =>
  A072878 |Int.lor (n + 1 : ℤ) (1 - a (n - 1))|.toNat

end

end A016496.P15742339418019572022

/-! ## A016496.P16019049345727473300

`A112798(A243288(n+5)+A151171(n))`
-/

namespace A016496.P16019049345727473300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112798 (A243288 (n + 5) + A151171 n).toNat

end

end A016496.P16019049345727473300

