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
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C039
import Seq.B000.C040
import Seq.B000.C044
import Seq.B000.C047
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C011
import Seq.B001.C012
import Seq.B001.C014
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
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B008.C000
import Seq.B009.C000
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
import SequenceMachineLib.Triangle

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A112200: McKay-Thompson series of class 60a for the Monster group.

The programs for A112200, there is no canonical definition to state claims against.
-/

/-! ## A112200.P508465012722754905

`A033999(n)*A112221(n)`
-/

namespace A112200.P508465012722754905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A112221 n

end

end A112200.P508465012722754905

/-! ## A112200.P9421331374359809753

`(A004442(n)-n)*A112221(n)`
-/

namespace A112200.P9421331374359809753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A004442 n - (n : ℤ)) * A112221 n

end

end A112200.P9421331374359809753

/-! ## A112200.P7808202239656013090

`A009531(2*n+1)*A112221(n)`
-/

namespace A112200.P7808202239656013090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009531 (2 * n + 1) * A112221 n

end

end A112200.P7808202239656013090

/-! ## A112200.P9532019975576249044

`A112221(n)*A112299(2*n+1)`
-/

namespace A112200.P9532019975576249044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112221 n * A112299 (2 * n + 1)

end

end A112200.P9532019975576249044

/-! ## A112200.P17568751428853088155

`A010892(A008486(n))*A112221(n)`
-/

namespace A112200.P17568751428853088155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010892 (A008486 n).toNat * A112221 n

end

end A112200.P17568751428853088155

/-! ## A112200.P16585495277116781906

`A008683(A323503(n))*A112221(n)`
-/

namespace A112200.P16585495277116781906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A323503 n).toNat * A112221 n

end

end A112200.P16585495277116781906

/-! ## A112200.P4956677884621679837

`A081729(A049452(n))*A112221(n)`
-/

namespace A112200.P4956677884621679837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081729 (A049452 n).toNat * A112221 n

end

end A112200.P4956677884621679837

/-!
# A112201: McKay-Thompson series of class 60c for the Monster group.

The programs for A112201, there is no canonical definition to state claims against.
-/

/-! ## A112201.P12660124899231863218

`A049347(n)*A112203(n)`
-/

namespace A112201.P12660124899231863218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049347 n * A112203 n

end

end A112201.P12660124899231863218

/-! ## A112201.P384332941502359587

`A112203(n)*A257075(n)`
-/

namespace A112201.P384332941502359587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112203 n * A257075 n

end

end A112201.P384332941502359587

/-! ## A112201.P15640325420221502252

`A112203(n)*A343785(n+1)`
-/

namespace A112201.P15640325420221502252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112203 n * A343785 (n + 1)

end

end A112201.P15640325420221502252

/-! ## A112201.P15163379739055538342

`Δ[A133310(n)]*A112203(n)`
-/

namespace A112201.P15163379739055538342
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133310 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A112203 n

end

end A112201.P15163379739055538342

/-! ## A112201.P13701597409885654471

`A010892(2*n+1)*A112203(n)`
-/

namespace A112201.P13701597409885654471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010892 (2 * n + 1) * A112203 n

end

end A112201.P13701597409885654471

/-!
# A112202: McKay-Thompson series of class 60d for the Monster group.

The programs for A112202, there is no canonical definition to state claims against.
-/

/-! ## A112202.P8672489452677003141

`A016420(A273943(A130575(n))²)`
-/

namespace A112202.P8672489452677003141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016420 (A273943 (A130575 n).toNat ^ 2).toNat

end

end A112202.P8672489452677003141

/-! ## A112202.P12962814123120608462

`A087003(A345778(∑[A267872(n)]))`
-/

namespace A112202.P12962814123120608462
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267872 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087003 (A345778 (∑ j ∈ Finset.range (n + 1), f1 j).toNat).toNat

end

end A112202.P12962814123120608462

/-! ## A112202.P17822097516386858476

`A304438(A289175(n+1)+A008279(3*n+2))`
-/

namespace A112202.P17822097516386858476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304438 (A289175 (n + 1) + A008279 (3 * n + 2)).toNat

end

end A112202.P17822097516386858476

/-! ## A112202.P2766116408882694276

`A163804(A163785(n+1)-A163807(2*n+3))`
-/

namespace A112202.P2766116408882694276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163804 (A163785 (n + 1) - A163807 (2 * n + 3)).toNat

end

end A112202.P2766116408882694276

/-! ## A112202.P5709237401066153092

`A010815(A283165(n))*A062157(A118888(n+1))`
-/

namespace A112202.P5709237401066153092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010815 (A283165 n).toNat * A062157 (A118888 (n + 1)).toNat

end

end A112202.P5709237401066153092

/-!
# A112203: McKay-Thompson series of class 60e for the Monster group.

The programs for A112203, there is no canonical definition to state claims against.
-/

/-! ## A112203.P6114659791995705390

`A049347(n)*A112201(n)`
-/

namespace A112203.P6114659791995705390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049347 n * A112201 n

end

end A112203.P6114659791995705390

/-! ## A112203.P10193706950516461504

`A112201(n)*A257075(n)`
-/

namespace A112203.P10193706950516461504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112201 n * A257075 n

end

end A112203.P10193706950516461504

/-! ## A112203.P789370912802530472

`Δ[A062756(n)]*A112201(n)`
-/

namespace A112203.P789370912802530472
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062756 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A112201 n

end

end A112203.P789370912802530472

/-! ## A112203.P5364070918681335713

`A112201(n)*A343785(n+1)`
-/

namespace A112203.P5364070918681335713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112201 n * A343785 (n + 1)

end

end A112203.P5364070918681335713

/-! ## A112203.P5845211931547356893

`Δ[A059129(n)]*A112201(n)`
-/

namespace A112203.P5845211931547356893
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059129 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A112201 n

end

end A112203.P5845211931547356893

/-! ## A112203.P16962189109514245611

`A112201(n)*A157128(2*n)`
-/

namespace A112203.P16962189109514245611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112201 n * A157128 (2 * n)

end

end A112203.P16962189109514245611

/-! ## A112203.P17834272496670173655

`A010892(2*n+1)*A112201(n)`
-/

namespace A112203.P17834272496670173655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010892 (2 * n + 1) * A112201 n

end

end A112203.P17834272496670173655

/-!
# A112205: McKay-Thompson series of class 72a for the Monster group.

The programs for A112205, there is no canonical definition to state claims against.
-/

/-! ## A112205.P5017187064680639020

`abs(A112176(n))`
-/

namespace A112205.P5017187064680639020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A112176 n|

end

end A112205.P5017187064680639020

/-! ## A112205.P574715169622371682

`A033999(n)*A112176(n)`
-/

namespace A112205.P574715169622371682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A112176 n

end

end A112205.P574715169622371682

/-! ## A112205.P3607737909370431553

`A058487(n)/A057079(n)`
-/

namespace A112205.P3607737909370431553
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A058487 n : ℚ) / (A057079 n : ℚ)

end

end A112205.P3607737909370431553

/-! ## A112205.P5327605674750252999

`A062243(n)/A131713(n)`
-/

namespace A112205.P5327605674750252999
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A062243 n : ℚ) / (A131713 n : ℚ)

end

end A112205.P5327605674750252999

/-! ## A112205.P13173466409110789202

`gcd(A000038(n), A112176(n))`
-/

namespace A112205.P13173466409110789202
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A112176 n)

end

end A112205.P13173466409110789202

/-! ## A112205.P7364518941822807921

`lcm(A020985(n), A112176(n))`
-/

namespace A112205.P7364518941822807921
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 n) (A112176 n)

end

end A112205.P7364518941822807921

/-! ## A112205.P10069874756175686257

`abs(A062243(n)/A057079(n))`
-/

namespace A112205.P10069874756175686257
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A062243 n : ℚ) / (A057079 n : ℚ)|

end

end A112205.P10069874756175686257

/-! ## A112205.P11226771069127441095

`A112176(1-A109613(n)+n)*A112176(n)`
-/

namespace A112205.P11226771069127441095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112176 (1 - A109613 n + (n : ℤ)).toNat * A112176 n

end

end A112205.P11226771069127441095

/-! ## A112205.P9911139917307002447

`A112176(Δ[A004526(n)])*A112176(n)`
-/

namespace A112205.P9911139917307002447
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112176 (f1 (n + 1) - f1 n).toNat * A112176 n

end

end A112205.P9911139917307002447

/-! ## A112205.P8585470990322882489

`A112176(n)/A145705(Δ[A004526(n)])`
-/

namespace A112205.P8585470990322882489
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A112176 n : ℚ) / (A145705 (f1 (n + 1) - f1 n).toNat : ℚ)

end

end A112205.P8585470990322882489

/-! ## A112205.P5124472456744970923

`A112176(n)/A112176(Δ[A004526(n)]²)`
-/

namespace A112205.P5124472456744970923
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A112176 n : ℚ) / (A112176 ((f1 (n + 1) - f1 n) ^ 2).toNat : ℚ)

end

end A112205.P5124472456744970923

/-! ## A112205.P1031271330366746903

`∑{d}[A112176(n), A000010(#)]`
-/

namespace A112205.P1031271330366746903
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112176 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A112205.P1031271330366746903

/-!
# A112206: Coefficients of replicable function number "72b".

The programs for A112206, there is no canonical definition to state claims against.
-/

/-! ## A112206.P16743328381486681453

`(-1)^n*A112175(n)`
-/

namespace A112206.P16743328381486681453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A112175 n

end

end A112206.P16743328381486681453

/-! ## A112206.P9523901671396737449

`abs(A112175(n))`
-/

namespace A112206.P9523901671396737449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A112175 n|

end

end A112206.P9523901671396737449

/-! ## A112206.P13531028997461444649

`gcd(A000038(n), A112175(n))`
-/

namespace A112206.P13531028997461444649
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A112175 n)

end

end A112206.P13531028997461444649

/-! ## A112206.P7799960806198405150

`lcm(A020985(n), A112175(n))`
-/

namespace A112206.P7799960806198405150
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 n) (A112175 n)

end

end A112206.P7799960806198405150

/-! ## A112206.P13108440802042897984

`A328795(2*n)`
-/

namespace A112206.P13108440802042897984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328795 (2 * n)

end

end A112206.P13108440802042897984

/-! ## A112206.P18269801092702491027

`A328797(2*n)`
-/

namespace A112206.P18269801092702491027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328797 (2 * n)

end

end A112206.P18269801092702491027

/-! ## A112206.P3055009661326418035

`abs(A112177(3*n))`
-/

namespace A112206.P3055009661326418035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A112177 (3 * n)|

end

end A112206.P3055009661326418035

/-! ## A112206.P6875492611933763263

`A112177(3*n)/A033999(n)`
-/

namespace A112206.P6875492611933763263
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A112177 (3 * n) : ℚ) / (A033999 n : ℚ)

end

end A112206.P6875492611933763263

/-! ## A112206.P13522654793030234023

`∑{d}[A112177(3*n), A000010(#)]`
-/

namespace A112206.P13522654793030234023
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112177 (3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A112206.P13522654793030234023

/-!
# A112207: McKay-Thompson series of class 72c for the Monster group.

The programs for A112207, there is no canonical definition to state claims against.
-/

/-! ## A112207.P11437839000119636571

`A033999(n)*A112208(n)`
-/

namespace A112207.P11437839000119636571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A112208 n

end

end A112207.P11437839000119636571

/-! ## A112207.P13666354998292827955

`A049347(n)*A112208(n)`
-/

namespace A112207.P13666354998292827955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049347 n * A112208 n

end

end A112207.P13666354998292827955

/-! ## A112207.P16133107000110551119

`A101675(n)*A112208(n)`
-/

namespace A112207.P16133107000110551119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101675 n * A112208 n

end

end A112207.P16133107000110551119

/-! ## A112207.P3121353004557702686

`A112208(n)*A115360(n)`
-/

namespace A112207.P3121353004557702686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112208 n * A115360 n

end

end A112207.P3121353004557702686

/-! ## A112207.P11847162329881124743

`A112208(n)*A130778(n)`
-/

namespace A112207.P11847162329881124743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112208 n * A130778 n

end

end A112207.P11847162329881124743

/-! ## A112207.P3469186214941889337

`A112208(n)*A134668(n)`
-/

namespace A112207.P3469186214941889337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112208 n * A134668 n

end

end A112207.P3469186214941889337

/-! ## A112207.P3980955723541105405

`A112208(n)*A135694(n)`
-/

namespace A112207.P3980955723541105405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112208 n * A135694 n

end

end A112207.P3980955723541105405

/-! ## A112207.P14081490561306211583

`A112208(n)*A257075(n)`
-/

namespace A112207.P14081490561306211583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112208 n * A257075 n

end

end A112207.P14081490561306211583

/-! ## A112207.P4098340427478251525

`A112208(n)*A343785(n+1)`
-/

namespace A112207.P4098340427478251525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112208 n * A343785 (n + 1)

end

end A112207.P4098340427478251525

/-! ## A112207.P3130222187427962814

`A071182(n+2)*A112208(n)`
-/

namespace A112207.P3130222187427962814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071182 (n + 2) * A112208 n

end

end A112207.P3130222187427962814

/-! ## A112207.P425621697283968728

`(2-A073575(n+1))*A112208(n)`
-/

namespace A112207.P425621697283968728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A073575 (n + 1)) * A112208 n

end

end A112207.P425621697283968728

/-! ## A112207.P5952071085187504986

`A008683(A073575(n+1))*A112208(n)`
-/

namespace A112207.P5952071085187504986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A073575 (n + 1)).toNat * A112208 n

end

end A112207.P5952071085187504986

/-!
# A112208: McKay-Thompson series of class 72d for the Monster group.

The programs for A112208, there is no canonical definition to state claims against.
-/

/-! ## A112208.P4300036139527806009

`A033999(n)*A112207(n)`
-/

namespace A112208.P4300036139527806009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A112207 n

end

end A112208.P4300036139527806009

/-! ## A112208.P7082246664664894469

`A049347(n)*A112207(n)`
-/

namespace A112208.P7082246664664894469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049347 n * A112207 n

end

end A112208.P7082246664664894469

/-! ## A112208.P6923251769995017321

`A101675(n)*A112207(n)`
-/

namespace A112208.P6923251769995017321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101675 n * A112207 n

end

end A112208.P6923251769995017321

/-! ## A112208.P3428606715435085426

`A112207(n)*A115360(n)`
-/

namespace A112208.P3428606715435085426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112207 n * A115360 n

end

end A112208.P3428606715435085426

/-! ## A112208.P9107804172016546374

`A112207(n)*A130778(n)`
-/

namespace A112208.P9107804172016546374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112207 n * A130778 n

end

end A112208.P9107804172016546374

/-! ## A112208.P9513417931245019951

`A112207(n)*A134668(n)`
-/

namespace A112208.P9513417931245019951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112207 n * A134668 n

end

end A112208.P9513417931245019951

/-! ## A112208.P15599144653365350548

`A112207(n)*A135694(n)`
-/

namespace A112208.P15599144653365350548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112207 n * A135694 n

end

end A112208.P15599144653365350548

/-! ## A112208.P2619318789650321823

`A112207(n)*A257075(n)`
-/

namespace A112208.P2619318789650321823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112207 n * A257075 n

end

end A112208.P2619318789650321823

/-! ## A112208.P6304743775865963228

`A112207(n)*A343785(n+1)`
-/

namespace A112208.P6304743775865963228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112207 n * A343785 (n + 1)

end

end A112208.P6304743775865963228

/-! ## A112208.P10072528065087622416

`A071182(n+2)*A112207(n)`
-/

namespace A112208.P10072528065087622416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071182 (n + 2) * A112207 n

end

end A112208.P10072528065087622416

/-! ## A112208.P3659769280732358489

`(A061800(n)-n)*A112207(n)`
-/

namespace A112208.P3659769280732358489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A061800 n - (n : ℤ)) * A112207 n

end

end A112208.P3659769280732358489

/-! ## A112208.P3781573113051131377

`Δ[A289813(n)]*A112207(n)`
-/

namespace A112208.P3781573113051131377
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289813 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A112207 n

end

end A112208.P3781573113051131377

/-! ## A112208.P4780036178519223750

`(A289813(n+1)-A289813(n))*A112207(n)`
-/

namespace A112208.P4780036178519223750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A289813 (n + 1) - A289813 n) * A112207 n

end

end A112208.P4780036178519223750

/-!
# A112209: McKay-Thompson series of class 80a for the Monster group.

The programs for A112209, there is no canonical definition to state claims against.
-/

/-! ## A112209.P1190592026113973604

`abs(A112182(n))`
-/

namespace A112209.P1190592026113973604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A112182 n|

end

end A112209.P1190592026113973604

/-! ## A112209.P11797723659227098834

`A033999(n)*A112182(n)`
-/

namespace A112209.P11797723659227098834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A112182 n

end

end A112209.P11797723659227098834

/-! ## A112209.P7189463926084573645

`gcd(A000038(n), A112182(n))`
-/

namespace A112209.P7189463926084573645
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A112182 n)

end

end A112209.P7189463926084573645

/-! ## A112209.P10552779043413527536

`lcm(A020985(n), A112182(n))`
-/

namespace A112209.P10552779043413527536
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 n) (A112182 n)

end

end A112209.P10552779043413527536

/-! ## A112209.P4130225888172421718

`A112182(Δ[A004526(n)])*A112182(n)`
-/

namespace A112209.P4130225888172421718
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112182 (f1 (n + 1) - f1 n).toNat * A112182 n

end

end A112209.P4130225888172421718

/-! ## A112209.P13442100625257879596

`A112182(n)/A112182(Δ[A004526(n)]²)`
-/

namespace A112209.P13442100625257879596
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A112182 n : ℚ) / (A112182 ((f1 (n + 1) - f1 n) ^ 2).toNat : ℚ)

end

end A112209.P13442100625257879596

/-! ## A112209.P8113515770048864461

`abs(A112181(2*n))`
-/

namespace A112209.P8113515770048864461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A112181 (2 * n)|

end

end A112209.P8113515770048864461

/-! ## A112209.P6435390754077561572

`A033999(n)*A112181(2*n)`
-/

namespace A112209.P6435390754077561572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A112181 (2 * n)

end

end A112209.P6435390754077561572

/-! ## A112209.P2435053377093198206

`A009001(2*n)*A112181(2*n)`
-/

namespace A112209.P2435053377093198206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009001 (2 * n) * A112181 (2 * n)

end

end A112209.P2435053377093198206

/-! ## A112209.P5981549197180976664

`A055975(2*n+1)*A112181(2*n)`
-/

namespace A112209.P5981549197180976664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055975 (2 * n + 1) * A112181 (2 * n)

end

end A112209.P5981549197180976664

/-! ## A112209.P5839492513415215753

`A020985(A088442(n))*A112181(2*n)`
-/

namespace A112209.P5839492513415215753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020985 (A088442 n).toNat * A112181 (2 * n)

end

end A112209.P5839492513415215753

/-!
# A112210: McKay-Thompson series of class 82a for the Monster group.

The programs for A112210, there is no canonical definition to state claims against.
-/

/-! ## A112210.P3566046038495947200

`A127321(A114901(n)+A000607(n))`
-/

namespace A112210.P3566046038495947200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127321 (A114901 n + A000607 n).toNat

end

end A112210.P3566046038495947200

/-! ## A112210.P2221726617092931181

`A127321(A114901(n)+A003106(n))`
-/

namespace A112210.P2221726617092931181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127321 (A114901 n + A003106 n).toNat

end

end A112210.P2221726617092931181

/-! ## A112210.P1271104158279540448

`A127321(A114901(n)+A004526(n))`
-/

namespace A112210.P1271104158279540448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127321 (A114901 n + A004526 n).toNat

end

end A112210.P1271104158279540448

/-! ## A112210.P5906717112962899516

`A127321(A114901(n)+A007706(n))`
-/

namespace A112210.P5906717112962899516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127321 (A114901 n + A007706 n).toNat

end

end A112210.P5906717112962899516

/-! ## A112210.P13889928151455977120

`A127321(A114901(n)+A008611(n))`
-/

namespace A112210.P13889928151455977120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127321 (A114901 n + A008611 n).toNat

end

end A112210.P13889928151455977120

/-!
# A112211: McKay-Thompson series of class 84B for the Monster group.

The programs for A112211, there is no canonical definition to state claims against.
-/

/-! ## A112211.P6211753093545150752

`(-(floor(A316888(2*(n+1))/A154616(n+1))%2))^n`
-/

namespace A112211.P6211753093545150752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-Int.tmod ⌊(A316888 (2 * (n + 1)) : ℚ) / (A154616 (n + 1) : ℚ)⌋ 2) ^ n

end

end A112211.P6211753093545150752

/-! ## A112211.P12983746203460036810

`A341996(2*(n+2))-A141727(A188211(n+3))`
-/

namespace A112211.P12983746203460036810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341996 (2 * (n + 2)) - A141727 (A188211 (n + 3)).toNat

end

end A112211.P12983746203460036810

/-! ## A112211.P17692559333395968022

`A011654(A367745(n+1))`
-/

namespace A112211.P17692559333395968022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011654 (A367745 (n + 1)).toNat

end

end A112211.P17692559333395968022

/-! ## A112211.P11447344521386821650

`A390614(A209981(n)-A316347(n))`
-/

namespace A112211.P11447344521386821650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390614 (A209981 n - A316347 n).toNat

end

end A112211.P11447344521386821650

/-!
# A112212: McKay-Thompson series of class 84C for the Monster group.

The programs for A112212, there is no canonical definition to state claims against.
-/

/-! ## A112212.P10168312627040867430

`(-1)^n*A102314(n)`
-/

namespace A112212.P10168312627040867430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A102314 n

end

end A112212.P10168312627040867430

/-! ## A112212.P720389098462997684

`abs(A102314(n))`
-/

namespace A112212.P720389098462997684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A102314 n|

end

end A112212.P720389098462997684

/-! ## A112212.P7889798044086152786

`gcd(A000038(n), A102314(n))`
-/

namespace A112212.P7889798044086152786
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A102314 n)

end

end A112212.P7889798044086152786

/-! ## A112212.P716981963558326306

`lcm(A020985(n), A102314(n))`
-/

namespace A112212.P716981963558326306
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 n) (A102314 n)

end

end A112212.P716981963558326306

/-!
# A112213: McKay-Thompson series of class 88A for the Monster group.

The programs for A112213, there is no canonical definition to state claims against.
-/

/-! ## A112213.P8418164315105043686

`abs(A112184(n))`
-/

namespace A112213.P8418164315105043686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A112184 n|

end

end A112213.P8418164315105043686

/-! ## A112213.P17222175694746357150

`A033999(n)*A112184(n)`
-/

namespace A112213.P17222175694746357150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A112184 n

end

end A112213.P17222175694746357150

/-! ## A112213.P16099838307182299914

`gcd(A000038(n), A112184(n))`
-/

namespace A112213.P16099838307182299914
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A112184 n)

end

end A112213.P16099838307182299914

/-! ## A112213.P1915964149042691905

`lcm(A020985(n), A112184(n))`
-/

namespace A112213.P1915964149042691905
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 n) (A112184 n)

end

end A112213.P1915964149042691905

/-! ## A112213.P9649997311368715581

`sqrt(A112184(n)*A112184(n%(n+1)))`
-/

namespace A112213.P9649997311368715581
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A112184 n * A112184 (n % (n + 1)) : ℝ)

end

end A112213.P9649997311368715581

/-! ## A112213.P2813371582567155251

`∑{d}[A112184(n), A000010(#)]`
-/

namespace A112213.P2813371582567155251
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112184 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A112213.P2813371582567155251

/-!
# A112214: McKay-Thompson series of class 90a for the Monster group.

The programs for A112214, there is no canonical definition to state claims against.
-/

/-! ## A112214.P12164330717679212832

`and(1, (1-n)%3)-A326822(A007956(n+1))`
-/

namespace A112214.P12164330717679212832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (Int.tmod (1 - (n : ℤ)) 3) - A326822 (A007956 (n + 1)).toNat

end

end A112214.P12164330717679212832

/-! ## A112214.P10717122540760791011

`A121373(A218354(n+1))^A226787(n+1)`
-/

namespace A112214.P10717122540760791011
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A121373 (A218354 (n + 1)).toNat : ℚ) ^ (A226787 (n + 1) : ℤ)

end

end A112214.P10717122540760791011

/-!
# A112215: McKay-Thompson series of class 90b for the Monster group.

The programs for A112215, there is no canonical definition to state claims against.
-/

/-! ## A112215.P10376304488674430847

`A117444(A058539(n))`
-/

namespace A112215.P10376304488674430847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117444 (A058539 n).toNat

end

end A112215.P10376304488674430847

/-!
# A112217: McKay-Thompson series of class 93A for the Monster group.

The programs for A112217, there is no canonical definition to state claims against.
-/

/-! ## A112217.P9405200186774799277

`A108611(A082146(n)+4)`
-/

namespace A112217.P9405200186774799277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108611 (A082146 n + 4).toNat

end

end A112217.P9405200186774799277

/-! ## A112217.P11900943430263378315

`A003056(A003056(2*A306663(n)))`
-/

namespace A112217.P11900943430263378315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A003056 (2 * A306663 n).toNat).toNat

end

end A112217.P11900943430263378315

/-! ## A112217.P9674813560305482192

`A172263(ceil(sqrt(A114901(n))))`
-/

namespace A112217.P9674813560305482192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172263 ⌈Real.sqrt (A114901 n : ℝ)⌉.toNat

end

end A112217.P9674813560305482192

/-! ## A112217.P925410374168657710

`Δ[A003059(A122130(2*(n+1)))]`
-/

namespace A112217.P925410374168657710
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003059 (A122130 (2 * (n + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A112217.P925410374168657710

/-! ## A112217.P5254898025598235129

`Δ[A000196(A063197(A103258(n)))]`
-/

namespace A112217.P5254898025598235129
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A063197 (A103258 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A112217.P5254898025598235129

/-!
# A112218: McKay-Thompson series of class 102a for the Monster group.

The programs for A112218, there is no canonical definition to state claims against.
-/

/-! ## A112218.P149442725876269861

`A333755(A328901(n))+A324748(n)`
-/

namespace A112218.P149442725876269861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333755 (A328901 n).toNat + A324748 n

end

end A112218.P149442725876269861

/-! ## A112218.P4422110107703548108

`A035462(lt[A001221(n+1), A374748(3*n)])`
-/

namespace A112218.P4422110107703548108
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374748 (3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035462 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A112218.P4422110107703548108

/-! ## A112218.P10035220859689530872

`A093997(eq[4, A235863(n+1)])`
-/

namespace A112218.P10035220859689530872
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235863 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093997 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A112218.P10035220859689530872

/-! ## A112218.P4827157441154710352

`A324748(n%A113392(2*(n+2)))`
-/

namespace A112218.P4827157441154710352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324748 (Int.tmod (n : ℤ) (A113392 (2 * (n + 2)))).toNat

end

end A112218.P4827157441154710352

/-! ## A112218.P7297336429433031106

`A324748(n)+A010054(A061419(n+5))`
-/

namespace A112218.P7297336429433031106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324748 n + A010054 (A061419 (n + 5)).toNat

end

end A112218.P7297336429433031106

/-!
# A112219: McKay-Thompson series of class 104A for the Monster group.

The programs for A112219, there is no canonical definition to state claims against.
-/

/-! ## A112219.P2671850334263896695

`A025799(n)-A066247(A207643(n))`
-/

namespace A112219.P2671850334263896695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025799 n - A066247 (A207643 n).toNat

end

end A112219.P2671850334263896695

/-! ## A112219.P7917890049690284465

`A139351(∑[A072500(A143007(n))])`
-/

namespace A112219.P7917890049690284465
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072500 (A143007 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139351 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A112219.P7917890049690284465

/-! ## A112219.P4252138287962930692

`A024156(n+1)+A005171(record[A318993(n+1)])`
-/

namespace A112219.P4252138287962930692
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318993 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024156 (n + 1) + A005171 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A112219.P4252138287962930692

/-! ## A112219.P12109025488892033552

`A102669(A123108(n)+A065956(n))`
-/

namespace A112219.P12109025488892033552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102669 (A123108 n + A065956 n).toNat

end

end A112219.P12109025488892033552

/-! ## A112219.P3314728823107398084

`A024156(n+1)+A000035(A324736(n+2))`
-/

namespace A112219.P3314728823107398084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024156 (n + 1) + A000035 (A324736 (n + 2)).toNat

end

end A112219.P3314728823107398084

/-!
# A112220: McKay-Thompson series of class 117a for the Monster group.

The programs for A112220, there is no canonical definition to state claims against.
-/

/-! ## A112220.P2015034067930555963

`A351007(A008611(n+2)%A304707(3*n+1))`
-/

namespace A112220.P2015034067930555963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351007 (Int.tmod (A008611 (n + 2)) (A304707 (3 * n + 1))).toNat

end

end A112220.P2015034067930555963

/-! ## A112220.P12113645574417790208

`A025819(A089422(n)-A064317(n))`
-/

namespace A112220.P12113645574417790208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025819 (A089422 n - A064317 n).toNat

end

end A112220.P12113645574417790208

/-! ## A112220.P4009960482024498620

`A008680(A115207(n+1)%A089422(n))`
-/

namespace A112220.P4009960482024498620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008680 (Int.tmod (A115207 (n + 1)) (A089422 n)).toNat

end

end A112220.P4009960482024498620

/-! ## A112220.P14979244919961126721

`A110591(A212804(n+1))-A008612(n+1)`
-/

namespace A112220.P14979244919961126721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110591 (A212804 (n + 1)).toNat - A008612 (n + 1)

end

end A112220.P14979244919961126721

/-! ## A112220.P1140198785196772774

`A086597(A346470(n+1))`
-/

namespace A112220.P1140198785196772774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086597 (A346470 (n + 1)).toNat

end

end A112220.P1140198785196772774

/-!
# A112221: McKay-Thompson series of class 120a for the Monster group.

The programs for A112221, there is no canonical definition to state claims against.
-/

/-! ## A112221.P1793142413505865988

`abs(A112200(n))`
-/

namespace A112221.P1793142413505865988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A112200 n|

end

end A112221.P1793142413505865988

/-! ## A112221.P4115016176509829477

`A033999(n)*A112200(n)`
-/

namespace A112221.P4115016176509829477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A112200 n

end

end A112221.P4115016176509829477

/-! ## A112221.P7096022453254631977

`gcd(A000038(n), A112200(n))`
-/

namespace A112221.P7096022453254631977
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A112200 n)

end

end A112221.P7096022453254631977

/-! ## A112221.P4092975161440751529

`lcm(A020985(n), A112200(n))`
-/

namespace A112221.P4092975161440751529
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 n) (A112200 n)

end

end A112221.P4092975161440751529

/-! ## A112221.P16834875539525770642

`gcd(-A112200(n), A112200(gcd(n, n+1)))`
-/

namespace A112221.P16834875539525770642
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (-A112200 n) (A112200 (Nat.gcd n (n + 1)))

end

end A112221.P16834875539525770642

/-! ## A112221.P11873666396400599124

`∑{d}[A112200(n), A000010(#)]`
-/

namespace A112221.P11873666396400599124
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112200 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A112221.P11873666396400599124

/-! ## A112221.P10253858599130379399

`A000196(A112200(n)²)`
-/

namespace A112221.P10253858599130379399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A112200 n ^ 2).toNat

end

end A112221.P10253858599130379399

/-!
# A112222: Coefficients of replicable function number "126a".

The programs for A112222, there is no canonical definition to state claims against.
-/

/-! ## A112222.P9524951626359953672

`A058537(n)%A137282(A092180(2*(n+1)))`
-/

namespace A112222.P9524951626359953672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A058537 n) (A137282 (A092180 (2 * (n + 1))).toNat)

end

end A112222.P9524951626359953672

/-! ## A112222.P16646050605971737554

`A058537(n)%A137282(A089528(n+1))`
-/

namespace A112222.P16646050605971737554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A058537 n) (A137282 (A089528 (n + 1)).toNat)

end

end A112222.P16646050605971737554

/-! ## A112222.P17786739246447052294

`A008618(eq[A028961(n), A341778(n+7)])`
-/

namespace A112222.P17786739246447052294
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028961 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341778 (n + 7)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008618 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A112222.P17786739246447052294

/-! ## A112222.P15507520318016744262

`A103221(n)-A011558(A297185(n))`
-/

namespace A112222.P15507520318016744262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103221 n - A011558 (A297185 n).toNat

end

end A112222.P15507520318016744262

/-! ## A112222.P195367376925775807

`A103221(n)-A295309(A209284(n+1))`
-/

namespace A112222.P195367376925775807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103221 n - A295309 (A209284 (n + 1)).toNat

end

end A112222.P195367376925775807

/-!
# A112223: McKay-Thompson series of class 132a for the Monster group.

The programs for A112223, there is no canonical definition to state claims against.
-/

/-! ## A112223.P4572933261619006048

`Δ[A048766(A182844(n))]`
-/

namespace A112223.P4572933261619006048
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 (A182844 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A112223.P4572933261619006048

/-! ## A112223.P3709425629872216372

`A106799((n+5)*A059300(n))`
-/

namespace A112223.P3709425629872216372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106799 ((n + 5 : ℤ) * A059300 n).toNat

end

end A112223.P3709425629872216372

/-! ## A112223.P4241888370401567309

`Δ[A048766(A028387(A027590(n)))]`
-/

namespace A112223.P4241888370401567309
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 (A028387 (A027590 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A112223.P4241888370401567309

/-! ## A112223.P13447832287812502026

`A005136(xor(A007706(n), A103609(n)))`
-/

namespace A112223.P13447832287812502026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005136 (Int.xor (A007706 n) (A103609 n)).toNat

end

end A112223.P13447832287812502026

/-! ## A112223.P15535344850392306672

`A327144(A308888(n+1))`
-/

namespace A112223.P15535344850392306672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327144 (A308888 (n + 1)).toNat

end

end A112223.P15535344850392306672

/-!
# A112224: McKay-Thompson series of class 140a for the Monster group.

The programs for A112224, there is no canonical definition to state claims against.
-/

/-! ## A112224.P5038464171105474110

`A185314(A198316(n))%A000032(A185215(n))`
-/

namespace A112224.P5038464171105474110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A185314 (A198316 n).toNat) (A000032 (A185215 n).toNat)

end

end A112224.P5038464171105474110

/-! ## A112224.P1478456408540691754

`A001221(3*n+2)-A215480(A377035(n+1))`
-/

namespace A112224.P1478456408540691754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (3 * n + 2) - A215480 (A377035 (n + 1)).toNat

end

end A112224.P1478456408540691754

/-! ## A112224.P4525438900724973746

`A086017(or(A227068(n+1), A293549(n+2)))`
-/

namespace A112224.P4525438900724973746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086017 (Int.lor (A227068 (n + 1)) (A293549 (n + 2))).toNat

end

end A112224.P4525438900724973746

/-! ## A112224.P557717515680578655

`A357137(and(A005349(2*n+5), A025065(n)))`
-/

namespace A112224.P557717515680578655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357137 (Int.land (A005349 (2 * n + 5)) (A025065 n)).toNat

end

end A112224.P557717515680578655

/-!
# A112225: Number of elements of a Weyl group of order 2^{n-1} n! of type D for which a reduced word contains all of the simple reflections.

The programs for A112225, there is no canonical definition to state claims against.
-/

/-! ## A112225.P4872505511013276459

`record[A112226(n+5)]`
-/

namespace A112225.P4872505511013276459
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112226 (n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A112225.P4872505511013276459

/-! ## A112225.P3740545170283279576

`A112226(C(n+3, 2))`
-/

namespace A112225.P3740545170283279576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112226 (Nat.choose (n + 3) 2)

end

end A112225.P3740545170283279576

/-! ## A112225.P4252512574859395232

`record[or(1, Δ[A112226(n)])]`
-/

namespace A112225.P4252512574859395232
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112226 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A112225.P4252512574859395232

/-! ## A112225.P9682621066190514792

`A112226(∑[n+2]+1)`
-/

namespace A112225.P9682621066190514792
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112226 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A112225.P9682621066190514792

/-!
# A112227: A scaled Hermite triangle.

The programs for A112227, the canonical program `A112227.P5365847626436789325` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A112227 has offset 0).

The definition of A112227 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5362 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A112227.P5412114151901663932

`T(n-1,k-1)-2*(col(n)+1)*T(n-1,k+1)` with `a(0)=1`
-/

namespace A112227.P5412114151901663932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  SequenceMachineLib.triUpLeft a n - (2 * (SequenceMachineLib.triCol n + 1) : ℤ) * SequenceMachineLib.triUpRight a n

end

end A112227.P5412114151901663932

namespace A112227

/-- `T(n-1,k-1)-2*(col(n)+1)*T(n-1,k+1)` -/
def P5412114151901663932.Spec : Prop :=
  ∀ n, P5412114151901663932.a n = A112227 n

end A112227

/-! ## A112227.P3290086497157769552

`T(n-1,k-1)+2*(1-row(n))*T(n-2,k)` with `a(0)=1`
-/

namespace A112227.P3290086497157769552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  SequenceMachineLib.triUpLeft a n + 2 * (1 - (SequenceMachineLib.triRow n : ℤ)) * SequenceMachineLib.triUp2 a n

end

end A112227.P3290086497157769552

namespace A112227

/-- `T(n-1,k-1)+2*(1-row(n))*T(n-2,k)` -/
def P3290086497157769552.Spec : Prop :=
  ∀ n, P3290086497157769552.a n = A112227 n

end A112227

/-! ## A112227.P10888525374717389599

`T(n-1,k-1)-2*(row(n)-1)*T(n-2,k)` with `a(0)=1`
-/

namespace A112227.P10888525374717389599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  SequenceMachineLib.triUpLeft a n - 2 * ((SequenceMachineLib.triRow n : ℤ) - 1) * SequenceMachineLib.triUp2 a n

end

end A112227.P10888525374717389599

namespace A112227

/-- `T(n-1,k-1)-2*(row(n)-1)*T(n-2,k)` -/
def P10888525374717389599.Spec : Prop :=
  ∀ n, P10888525374717389599.a n = A112227 n

end A112227

/-! ## A112227.P16147570924203947489

`T(n-1,k-1)-(2-2*(T(n-1,k)-col(n)))*T(n-1,k+1)` with `a(0)=1`
-/

namespace A112227.P16147570924203947489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  SequenceMachineLib.triUpLeft a n - (2 - 2 * (SequenceMachineLib.triUp a n - (SequenceMachineLib.triCol n : ℤ))) * SequenceMachineLib.triUpRight a n

end

end A112227.P16147570924203947489

namespace A112227

/-- `T(n-1,k-1)-(2-2*(T(n-1,k)-col(n)))*T(n-1,k+1)` -/
def P16147570924203947489.Spec : Prop :=
  ∀ n, P16147570924203947489.a n = A112227 n

end A112227

/-! ## A112227.P866767943679714973

`T(n-1,k-1)-(2-2*(T(n,k-1)-col(n)))*T(n-1,k+1)` with `a(0)=1`
-/

namespace A112227.P866767943679714973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  SequenceMachineLib.triUpLeft a n - (2 - 2 * (SequenceMachineLib.triLeft a n - (SequenceMachineLib.triCol n : ℤ))) * SequenceMachineLib.triUpRight a n

end

end A112227.P866767943679714973

namespace A112227

/-- `T(n-1,k-1)-(2-2*(T(n,k-1)-col(n)))*T(n-1,k+1)` -/
def P866767943679714973.Spec : Prop :=
  ∀ n, P866767943679714973.a n = A112227 n

end A112227

/-! ## A112227.P17809815210097444814

`T(n-1,k-1)-(2-2*(T(n-2,k-1)-col(n)))*T(n-1,k+1)` with `a(0)=1`
-/

namespace A112227.P17809815210097444814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  SequenceMachineLib.triUpLeft a n - (2 - 2 * (SequenceMachineLib.triUp2Left a n - (SequenceMachineLib.triCol n : ℤ))) * SequenceMachineLib.triUpRight a n

end

end A112227.P17809815210097444814

namespace A112227

/-- `T(n-1,k-1)-(2-2*(T(n-2,k-1)-col(n)))*T(n-1,k+1)` -/
def P17809815210097444814.Spec : Prop :=
  ∀ n, P17809815210097444814.a n = A112227 n

end A112227

/-! ## A112227.P14361012587722235689

`A067147(n)*A117568(n)`
-/

namespace A112227.P14361012587722235689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067147 n * A117568 n

end

end A112227.P14361012587722235689

namespace A112227

/-- `A067147(n)*A117568(n)` -/
def P14361012587722235689.Spec : Prop :=
  ∀ n, P14361012587722235689.a n = A112227 n

end A112227

/-! ## A112227.P284283553395198339

`A099174(n)*A116949(n)`
-/

namespace A112227.P284283553395198339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099174 n * A116949 n

end

end A112227.P284283553395198339

namespace A112227

/-- `A099174(n)*A116949(n)` -/
def P284283553395198339.Spec : Prop :=
  ∀ n, P284283553395198339.a n = A112227 n

end A112227

/-! ## A112227.P7454752525845180219

`A066325(n)*A156663(n)`
-/

namespace A112227.P7454752525845180219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066325 n * A156663 n

end

end A112227.P7454752525845180219

namespace A112227

/-- `A066325(n)*A156663(n)` -/
def P7454752525845180219.Spec : Prop :=
  ∀ n, P7454752525845180219.a n = A112227 n

end A112227

/-! ## A112227.P18176850474127140355

`A067147(n)*A369736(n)`
-/

namespace A112227.P18176850474127140355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067147 n * A369736 n

end

end A112227.P18176850474127140355

namespace A112227

/-- `A067147(n)*A369736(n)` -/
def P18176850474127140355.Spec : Prop :=
  ∀ n, P18176850474127140355.a n = A112227 n

end A112227

/-! ## A112227.P1602026700883386602

`abs(A066325(n))*A116949(n)`
-/

namespace A112227.P1602026700883386602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A066325 n| * A116949 n

end

end A112227.P1602026700883386602

namespace A112227

/-- `abs(A066325(n))*A116949(n)` -/
def P1602026700883386602.Spec : Prop :=
  ∀ n, P1602026700883386602.a n = A112227 n

end A112227

/-! ## A112227.P12753117508625469860

`sqrt(A130321(n))*A066325(n)`
-/

namespace A112227.P12753117508625469860
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A130321 n : ℝ) * (A066325 n : ℝ)

end

end A112227.P12753117508625469860

namespace A112227

/-- `sqrt(A130321(n))*A066325(n)` -/
def P12753117508625469860.Spec : Prop :=
  ∀ n, P12753117508625469860.a n = (A112227 n : ℝ)

end A112227

/-! ## A112227.P1870528812359998015

`A067147(n)*A130194(n+1)`
-/

namespace A112227.P1870528812359998015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067147 n * A130194 (n + 1)

end

end A112227.P1870528812359998015

namespace A112227

/-- `A067147(n)*A130194(n+1)` -/
def P1870528812359998015.Spec : Prop :=
  ∀ n, P1870528812359998015.a n = A112227 n

end A112227

/-! ## A112227.P5365847626436789325

`A007318(n)*A067994(A025581(n))`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A112227

/-- `A007318(n)*A067994(A025581(n))` -/
def P5365847626436789325.Spec : Prop :=
  ∀ n, P5365847626436789325.a n = A112227 n

theorem P5365847626436789325.correct : P5365847626436789325.Spec := by
  intro n
  simp only [A112227]

end A112227

/-! ## A112227.P6044203074208638368

`A016116(A025581(n))*A066325(n)`
-/

namespace A112227.P6044203074208638368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016116 (A025581 n).toNat * A066325 n

end

end A112227.P6044203074208638368

namespace A112227

/-- `A016116(A025581(n))*A066325(n)` -/
def P6044203074208638368.Spec : Prop :=
  ∀ n, P6044203074208638368.a n = A112227 n

end A112227

/-! ## A112227.P590520481793353937

`A060821(n)/2^(n-C(∑[char[∑[n]]], 2))`
-/

namespace A112227.P590520481793353937
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A060821 n : ℚ) / (2 : ℚ) ^ ((n : ℤ) - (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℤ) : ℤ)

end

end A112227.P590520481793353937

namespace A112227

/-- `A060821(n)/2^(n-C(∑[char[∑[n]]], 2))` -/
def P590520481793353937.Spec : Prop :=
  ∀ n, P590520481793353937.a n = (A112227 n : ℚ)

end A112227

/-! ## A112227.P14430158813094746956

`A060821(n)/A059268(n)`
-/

namespace A112227.P14430158813094746956
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A060821 n : ℚ) / (A059268 n : ℚ)

end

end A112227.P14430158813094746956

namespace A112227

/-- `A060821(n)/A059268(n)` -/
def P14430158813094746956.Spec : Prop :=
  ∀ n, P14430158813094746956.a n = (A112227 n : ℚ)

end A112227

/-!
# A112228: Product of the first n (semiprimes - 1).

The programs for A112228, there is no canonical definition to state claims against.
-/

/-! ## A112228.P6116238689529372454

`∏[eq[2, ∑{e}[n+1, #]]]`
-/

namespace A112228.P6116238689529372454
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f4 n), Nat.factorization (f4 n) p

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j = f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A112228.P6116238689529372454

/-! ## A112228.P5885095874666195547

`a(n-1)*eq[2, ∑{e}[n+1, #]]` with `a(0)=3`
-/

namespace A112228.P5885095874666195547
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n), Nat.factorization (f3 n) p

def a : ℕ → ℕ := SequenceMachineLib.rec [3] fun n a =>
  a (n - 1) * SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A112228.P5885095874666195547

/-! ## A112228.P13771475398344304639

`∏[A186621(n+1)]`
-/

namespace A112228.P13771475398344304639
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186621 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A112228.P13771475398344304639

/-! ## A112228.P3735124289179565208

`∏[Δ[A110208(n)]-1]`
-/

namespace A112228.P3735124289179565208
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110208 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A112228.P3735124289179565208

/-! ## A112228.P12427719793494403200

`∏[A001358(n+1)-1]`
-/

namespace A112228.P12427719793494403200
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A112228.P12427719793494403200

/-! ## A112228.P550221491217940082

`∏[A088707(n+1)-2]`
-/

namespace A112228.P550221491217940082
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088707 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A112228.P550221491217940082

/-! ## A112228.P9170771208154195382

`∏[A176540(n+2)-1]`
-/

namespace A112228.P9170771208154195382
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176540 (n + 2) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A112228.P9170771208154195382

/-! ## A112228.P7668659539172892935

`∏[eq[1, A076277(n+1)]]`
-/

namespace A112228.P7668659539172892935
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076277 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A112228.P7668659539172892935

/-! ## A112228.P10350964397966947981

`∏[eq[2, A001055(n+1)]]`
-/

namespace A112228.P10350964397966947981
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001055 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A112228.P10350964397966947981

/-! ## A112228.P11598707882707829536

`∏[eq[2, A001222(n+1)]]`
-/

namespace A112228.P11598707882707829536
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A112228.P11598707882707829536

/-!
# A112229: Table of the smallest (x,y) pairs such that x*n+1 is prime, y*n+1 is a larger prime, and (x*n+1)*(y*n+1)-2 is also prime.

The programs for A112229, there is no canonical definition to state claims against.
-/

/-! ## A112229.P3007158283100849213

`A006519(A041021(n)+A000217(n+1))`
-/

namespace A112229.P3007158283100849213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006519 (A041021 n + A000217 (n + 1)).toNat

end

end A112229.P3007158283100849213

/-! ## A112229.P911831644423532434

`A053989(A064916(n+4)^A003557(n+4))`
-/

namespace A112229.P911831644423532434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053989 (SequenceMachineLib.roundAway ((A064916 (n + 4) : ℚ) ^ (A003557 (n + 4) : ℤ))).toNat

end

end A112229.P911831644423532434

/-!
# A112230: Sequence of Chen primes of the form (x*n+1)*(y*n+1)-2 in the order generated by A112229.

The programs for A112230, there is no canonical definition to state claims against.
-/

/-! ## A112230.P13989154800024469859

`A386828(A092763(n+2)+A000045(n))`
-/

namespace A112230.P13989154800024469859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386828 (A092763 (n + 2) + A000045 n).toNat

end

end A112230.P13989154800024469859

/-!
# A112231: Repeat each prime in the sequence of natural numbers.

The programs for A112231, there is no canonical definition to state claims against.
-/

/-! ## A112231.P9875811381396707693

`∑[char[comp[p?[comp[n²]]+n]]]`
-/

namespace A112231.P9875811381396707693
noncomputable section

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f5 j ≠ x) n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f4 (SequenceMachineLib.nth (fun j => (f4 j).Prime) n) + n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ x) n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A112231.P9875811381396707693

/-! ## A112231.P848919442219919877

`comp[comp[p?[comp[n²]]+n]+n]-n`
-/

namespace A112231.P848919442219919877
noncomputable section

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f4 j ≠ x) n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => (f3 j).Prime) n) + n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n + n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)

end

end A112231.P848919442219919877

/-! ## A112231.P9066287698733394748

`∑[char[A095117(n)]]`
-/

namespace A112231.P9066287698733394748
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095117 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A112231.P9066287698733394748

/-! ## A112231.P7978949525893959818

`∑[char[A230980(n)+n]]`
-/

namespace A112231.P7978949525893959818
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230980 n + (n : ℤ)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A112231.P7978949525893959818

/-! ## A112231.P493839456799236330

`ceil(A256421(n+1)/2)`
-/

namespace A112231.P493839456799236330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A256421 (n + 1) : ℚ) / 2⌉

end

end A112231.P493839456799236330

/-! ## A112231.P396813213336608281

`∑[char[comp[A095116(n+1)]]]`
-/

namespace A112231.P396813213336608281
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095116 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ (x : ℤ)) n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A112231.P396813213336608281

/-! ## A112231.P6637579894507068117

`∑[char[A064427(n+1)-1]]`
-/

namespace A112231.P6637579894507068117
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064427 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A112231.P6637579894507068117

/-! ## A112231.P17632052029420215725

`n-A033270(a(n-1))` with `a(0)=1, a(1)=2`
-/

namespace A112231.P17632052029420215725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  (n : ℤ) - A033270 (a (n - 1)).toNat

end

end A112231.P17632052029420215725

/-! ## A112231.P16262321806094054517

`∑[char[comp[A000040(n+1)+n]]]`
-/

namespace A112231.P16262321806094054517
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) + (n : ℤ)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ (x : ℤ)) n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A112231.P16262321806094054517

/-! ## A112231.P7408395985811688019

`n+1-A000720(a(n-1))` with `a(0)=1`
-/

namespace A112231.P7408395985811688019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (n + 1 : ℤ) - A000720 (a (n - 1)).toNat

end

end A112231.P7408395985811688019

/-!
# A112232: Repeat each composite number in the sequence of natural numbers.

The programs for A112232, there is no canonical definition to state claims against.
-/

/-! ## A112232.P10366008882730858020

`ceil(comp[2*A327968(n)]/2)`
-/

namespace A112232.P10366008882730858020
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A327968 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℚ) / 2⌉

end

end A112232.P10366008882730858020

/-! ## A112232.P13795625384626855447

`∑[char[A171511(n+1)-1]]`
-/

namespace A112232.P13795625384626855447
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171511 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A112232.P13795625384626855447

/-! ## A112232.P16698484549870047646

`∑[char[comp[A002808(n+1)+n]]]`
-/

namespace A112232.P16698484549870047646
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (n + 1) + (n : ℤ)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ (x : ℤ)) n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A112232.P16698484549870047646

/-! ## A112232.P799202533192715643

`∑[char[comp[A018252(n+2)+n]]]`
-/

namespace A112232.P799202533192715643
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 2) + (n : ℤ)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ (x : ℤ)) n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A112232.P799202533192715643

/-! ## A112232.P4799172396966650567

`n+1-A065855(a(n-1))` with `a(0)=1`
-/

namespace A112232.P4799172396966650567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (n + 1 : ℤ) - A065855 (a (n - 1)).toNat

end

end A112232.P4799172396966650567

/-! ## A112232.P7573724826015380524

`n-A062298(a(n-1))+2` with `a(0)=1`
-/

namespace A112232.P7573724826015380524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (n : ℤ) - A062298 (a (n - 1)).toNat + 2

end

end A112232.P7573724826015380524

/-! ## A112232.P11734336397770927910

`∑[(comp[A076274(n+1)]+1)%2]`
-/

namespace A112232.P11734336397770927910
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076274 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n + 1) % 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A112232.P11734336397770927910

/-! ## A112232.P6949893980853181576

`∑[char[∑[A066247(n+1)+1]]]+1`
-/

namespace A112232.P6949893980853181576
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066247 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A112232.P6949893980853181576

/-! ## A112232.P14296240830383099090

`∑[char[∑[(2%A000005(n+1))!]]]+1`
-/

namespace A112232.P14296240830383099090
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (Int.tmod 2 (A000005 (n + 1))).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A112232.P14296240830383099090

/-! ## A112232.P11671040769839092288

`round(lt[2*n%2, A001222(n+1)]/2)`
-/

namespace A112232.P11671040769839092288
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n % 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n : ℚ) / 2)

end

end A112232.P11671040769839092288

/-!
# A112233: A112231(n) + A112232(n).

The programs for A112233, there is no canonical definition to state claims against.
-/

/-! ## A112233.P12067565552282205381

`A112231(n+1)+A112232(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A112233.P12067565552282205381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112231 (n + 1) + A112232 (n + 1)

end

end A112233.P12067565552282205381

/-! ## A112233.P14108731770323423006

`A112232(n+1)+∑[char[A095117(n)]]`
-/

namespace A112233.P14108731770323423006
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095117 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112232 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A112233.P14108731770323423006

/-! ## A112233.P6771404400722240319

`A112232(n+1)+∑[char[A230980(n)+n]]`
-/

namespace A112233.P6771404400722240319
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230980 n + (n : ℤ)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112232 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A112233.P6771404400722240319

/-! ## A112233.P15882656756468942705

`ceil(A112232(n+1)+A256421(n+1)/2)`
-/

namespace A112233.P15882656756468942705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A112232 (n + 1) : ℚ) + (A256421 (n + 1) : ℚ) / 2⌉

end

end A112233.P15882656756468942705

/-! ## A112233.P14812770749781909342

`A112231(n+1)+∑[char[A171511(n+1)-1]]`
-/

namespace A112233.P14812770749781909342
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171511 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112231 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A112233.P14812770749781909342

/-! ## A112233.P12649236497931662209

`A112231(n+1)+∑[1-char[A002808(n+1)+n]]`
-/

namespace A112233.P12649236497931662209
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (n + 1) + (n : ℤ)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112231 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A112233.P12649236497931662209

/-! ## A112233.P3892648926488422995

`A112231(n+1)+round(lt[2*n%2, A001222(n+1)]/2)`
-/

namespace A112233.P3892648926488422995
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n % 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112231 (n + 1) + SequenceMachineLib.roundAway ((SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n : ℚ) / 2)

end

end A112233.P3892648926488422995

/-! ## A112233.P15989803344737083589

`A112231(n+1)+ceil(comp[2*(A000040(n+1)-1)]/2)+1`
-/

namespace A112233.P15989803344737083589
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A000040 (n + 1) - 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112231 (n + 1) + (⌈(SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℚ) / 2⌉ + 1)

end

end A112233.P15989803344737083589

/-! ## A112233.P7925713246673352051

`A112231(n+1)+ceil((comp[2*(A020639(n+1)-1)]+1)/2)`
-/

namespace A112233.P7925713246673352051
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A020639 (n + 1) - 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112231 (n + 1) + ⌈(SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1 : ℚ) / 2⌉

end

end A112233.P7925713246673352051

/-! ## A112233.P1321794639425491367

`A112232(n+1)+A065033(A256421(n+1))`
-/

namespace A112233.P1321794639425491367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112232 (n + 1) + A065033 (A256421 (n + 1)).toNat

end

end A112233.P1321794639425491367

/-!
# A112234: Numbers not occurring in A112233.

The programs for A112234, there is no canonical definition to state claims against.
-/

/-! ## A112234.P14978801797746021123

`eq[char[A112233(n+1)], A151933(n)]`
-/

namespace A112234.P14978801797746021123
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112233 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151933 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A112234.P14978801797746021123

/-! ## A112234.P8586706506502290769

`eq[char[A112235(n+1)], A151933(n)]`
-/

namespace A112234.P8586706506502290769
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112235 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151933 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A112234.P8586706506502290769

/-!
# A112235: Complement of A112234.

The programs for A112235, there is no canonical definition to state claims against.
-/

/-! ## A112235.P12563538409153086580

`comp[A112234(n+1)-1]+1`
-/

namespace A112235.P12563538409153086580
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112234 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A112235.P12563538409153086580

/-! ## A112235.P1147224148945993121

`record[A112233(floor(n/(n%2+2))+1)]`
-/

namespace A112235.P1147224148945993121
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112233 (⌊(n : ℚ) / ((n % 2 + 2 : ℕ) : ℚ)⌋ + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A112235.P1147224148945993121

/-! ## A112235.P7318609381478394111

`record[A112233(floor(n/(xor(n, n+1)+1))+1)]`
-/

namespace A112235.P7318609381478394111
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112233 (⌊(n : ℚ) / (Nat.xor n (n + 1) + 1 : ℚ)⌋ + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A112235.P7318609381478394111

/-! ## A112235.P6546443620058061365

`record[A112233(A020986(n))]`
-/

namespace A112235.P6546443620058061365
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112233 (A020986 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A112235.P6546443620058061365

/-! ## A112235.P3309973696914741189

`record[A112233(A065648(n))]`
-/

namespace A112235.P3309973696914741189
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112233 (A065648 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A112235.P3309973696914741189

/-! ## A112235.P15547839256222483026

`record[A112233(A109785(n))]`
-/

namespace A112235.P15547839256222483026
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112233 (A109785 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A112235.P15547839256222483026

/-! ## A112235.P1933742532412393637

`record[A112233(A126759(n))]`
-/

namespace A112235.P1933742532412393637
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112233 (A126759 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A112235.P1933742532412393637

/-! ## A112235.P11842536681937544753

`record[A112233(A133310(n))]`
-/

namespace A112235.P11842536681937544753
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112233 (A133310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A112235.P11842536681937544753

/-! ## A112235.P15546501576145026996

`comp[A112234(A112231(n+1))%A109763(2*(n+1))]`
-/

namespace A112235.P15546501576145026996
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A112234 (A112231 (n + 1)).toNat) (A109763 (2 * (n + 1)))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A112235.P15546501576145026996

/-!
# A112237: If a(n-2) is the i-th Fibonacci number then a(n)=Fibonacci(i+a(n-1)); with a(1)=1, a(2)=2 and where we use the following nonstandard indexing for the Fibonacci numbers: f(n)=f(n-1)+f(n-2), f(1)=1, f(2)=2 (cf. A000045).

The programs for A112237, there is no canonical definition to state claims against.
-/

/-! ## A112237.P15958466831912363321

`A000045(a(n-1)+A000045(n)+1)` with `a(0)=1`
-/

namespace A112237.P15958466831912363321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000045 (a (n - 1) + (A000045 n + 1)).toNat

end

end A112237.P15958466831912363321

/-!
# A112240: Expansion of exp(x/(1-x-2x^2)).

The programs for A112240, there is no canonical definition to state claims against.
-/

/-! ## A112240.P3171045171997431583

`or(1, A143097(A166881(n+1)))`
-/

namespace A112240.P3171045171997431583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A143097 (A166881 (n + 1)).toNat)

end

end A112240.P3171045171997431583

/-! ## A112240.P7148467085297515813

`A080895(n)+A004442(A080894(n))`
-/

namespace A112240.P7148467085297515813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080895 n + A004442 (A080894 n).toNat

end

end A112240.P7148467085297515813

/-!
# A112241: Expansion of exp(x/(1-2x-2x^2)).

The programs for A112241, there is no canonical definition to state claims against.
-/

/-! ## A112241.P13142736275075233095

`A139538(a(n-1))` with `a(0)=1, a(1)=1, a(2)=5`
-/

namespace A112241.P13142736275075233095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 5] fun n a =>
  A139538 (a (n - 1)).toNat

end

end A112241.P13142736275075233095

/-!
# A112242: E.g.f. exp( x*(1+x)/(1-x) ).

The programs for A112242, there is no canonical definition to state claims against.
-/

/-! ## A112242.P8680427399757774407

`(2*n-1)*a(n-1)-(n-4)*(n-1)*a(n-2)-(n-2)*(n-1)*a(n-3)` with `a(0)=1, a(1)=1, a(2)=5`
-/

namespace A112242.P8680427399757774407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 5] fun n a =>
  ((2 * n : ℤ) - 1) * a (n - 1) - ((n : ℤ) - 4) * (((n : ℤ) - 1) * a (n - 2)) - ((n : ℤ) - 2) * (((n : ℤ) - 1) * a (n - 3))

end

end A112242.P8680427399757774407

/-! ## A112242.P8042871754725127615

`A175106(A178525(n))`
-/

namespace A112242.P8042871754725127615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175106 (A178525 n).toNat

end

end A112242.P8042871754725127615

/-!
# A112243: Expansion of exp(x*(1+x)/(1-2*x)).

The programs for A112243, there is no canonical definition to state claims against.
-/

/-! ## A112243.P13975759830529926516

`A016777((n-1)*A036775(n))`
-/

namespace A112243.P13975759830529926516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 (((n : ℤ) - 1) * A036775 n).toNat

end

end A112243.P13975759830529926516

/-! ## A112243.P683012219484994873

`A016777(A090223(n)*A141209(n))`
-/

namespace A112243.P683012219484994873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 (A090223 n * A141209 n).toNat

end

end A112243.P683012219484994873

/-!
# A112248: a(n) = n mod floor(log_2(n)).

The programs for A112248, the canonical program `A112248.P7407459642775068327` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A112248 has offset 2).

The definition of A112248 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+2)%floor(log2(n+2))` (program `A112248.P7407459642775068327`, by `A112248.P7407459642775068327.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A112248.P7407459642775068327

`(n+2)%floor(log2(n+2))`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A112248

/-- `(n+2)%floor(log2(n+2))` -/
def P7407459642775068327.Spec : Prop :=
  ∀ n, (P7407459642775068327.a n : ℤ) = A112248 (n + 2)

theorem P7407459642775068327.correct : P7407459642775068327.Spec := by
  intro n
  simp only [A112248, Nat.add_sub_cancel]

end A112248

/-! ## A112248.P2291985141196701582

`-(A001478(n+2)%A000523(n+2))`
-/

namespace A112248.P2291985141196701582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.tmod (A001478 (n + 2)) (A000523 (n + 2))

end

end A112248.P2291985141196701582

namespace A112248

/-- `-(A001478(n+2)%A000523(n+2))` -/
def P2291985141196701582.Spec : Prop :=
  ∀ n, P2291985141196701582.a n = A112248 (n + 2)

end A112248

/-! ## A112248.P17998098332808698494

`A075105(n+2)%A075106(n+2)*A075104(n+2)`
-/

namespace A112248.P17998098332808698494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A075105 (n + 2)) (A075106 (n + 2)) * A075104 (n + 2)

end

end A112248.P17998098332808698494

namespace A112248

/-- `A075105(n+2)%A075106(n+2)*A075104(n+2)` -/
def P17998098332808698494.Spec : Prop :=
  ∀ n, P17998098332808698494.a n = A112248 (n + 2)

end A112248

/-! ## A112248.P3209840673635837005

`-(A001489(n+2)%A000523(n+2))`
-/

namespace A112248.P3209840673635837005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.tmod (A001489 (n + 2)) (A000523 (n + 2))

end

end A112248.P3209840673635837005

namespace A112248

/-- `-(A001489(n+2)%A000523(n+2))` -/
def P3209840673635837005.Spec : Prop :=
  ∀ n, P3209840673635837005.a n = A112248 (n + 2)

end A112248

/-! ## A112248.P4207327254622573314

`A048158(∑[A036987(n+1)+n+1])`
-/

namespace A112248.P4207327254622573314
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036987 (n + 1) + (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048158 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A112248.P4207327254622573314

namespace A112248

/-- `A048158(∑[A036987(n+1)+n+1])` -/
def P4207327254622573314.Spec : Prop :=
  ∀ n, P4207327254622573314.a n = A112248 (n + 2)

end A112248

/-!
# A112249: Numbers m such that m mod floor(log_2(m)) = 0.

The programs for A112249, the canonical program `A112249.P1816405693271131223` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A112249 has offset 1).

The definition of A112249 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 903 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A112249.P13296964503941610054

`eq[1, A075106(n+2)]+2`
-/

namespace A112249.P13296964503941610054
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075106 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A112249.P13296964503941610054

namespace A112249

/-- `eq[1, A075106(n+2)]+2` -/
def P13296964503941610054.Spec : Prop :=
  ∀ n, (P13296964503941610054.a n : ℤ) = A112249 (n + 1)

end A112249

/-! ## A112249.P1816405693271131223

`eq[a(n-1)+1, lcm(n, 1-A070939(n))]` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A112249

/-- `eq[a(n-1)+1, lcm(n, 1-A070939(n))]` -/
def P1816405693271131223.Spec : Prop :=
  ∀ n, (P1816405693271131223.a n : ℤ) = A112249 (n + 1)

theorem P1816405693271131223.correct : P1816405693271131223.Spec := by
  intro n
  simp only [A112249, Nat.add_sub_cancel]

end A112249

/-! ## A112249.P1605947343254522208

`eq[A000523(n+1), A075104(n+1)]+1`
-/

namespace A112249.P1605947343254522208
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000523 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075104 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A112249.P1605947343254522208

namespace A112249

/-- `eq[A000523(n+1), A075104(n+1)]+1` -/
def P1605947343254522208.Spec : Prop :=
  ∀ n, (P1605947343254522208.a n : ℤ) = A112249 (n + 1)

end A112249

/-! ## A112249.P10453802953854545041

`record[A005408(n)/A075106(n+2)-(n-1)]`
-/

namespace A112249.P10453802953854545041
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005408 n : ℚ) / (A075106 (n + 2) : ℚ) - ((n : ℤ) - 1 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A112249.P10453802953854545041

namespace A112249

/-- `record[A005408(n)/A075106(n+2)-(n-1)]` -/
def P10453802953854545041.Spec : Prop :=
  ∀ n, P10453802953854545041.a n = (A112249 (n + 1) : ℚ)

end A112249

/-! ## A112249.P17163095575236577291

`A080513(record[A005408(n)/A075106(n+2)])`
-/

namespace A112249.P17163095575236577291
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005408 n : ℚ) / (A075106 (n + 2) : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080513 (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))).toNat

end

end A112249.P17163095575236577291

namespace A112249

/-- `A080513(record[A005408(n)/A075106(n+2)])` -/
def P17163095575236577291.Spec : Prop :=
  ∀ n, P17163095575236577291.a n = A112249 (n + 1)

end A112249

/-! ## A112249.P8779531896852947777

`record[A080513(n+1)/A075106(A080513(n+1))]`
-/

namespace A112249.P8779531896852947777
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A080513 (n + 1) : ℚ) / (A075106 (A080513 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A112249.P8779531896852947777

namespace A112249

/-- `record[A080513(n+1)/A075106(A080513(n+1))]` -/
def P8779531896852947777.Spec : Prop :=
  ∀ n, P8779531896852947777.a n = (A112249 (n + 1) : ℚ)

end A112249

/-!
# A112250: Numbers m such that m mod floor(log_2(m)) > 0.

The programs for A112250, the canonical program `A112250.P13827447425674520046` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A112250 has offset 1).

The definition of A112250 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9098 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A112250.P13827447425674520046

`A009056(lt[0, (n+2)%floor(log2(n+2))])`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A112250

/-- `A009056(lt[0, (n+2)%floor(log2(n+2))])` -/
def P13827447425674520046.Spec : Prop :=
  ∀ n, P13827447425674520046.a n = A112250 (n + 1)

theorem P13827447425674520046.correct : P13827447425674520046.Spec := by
  intro n
  simp only [A112250, Nat.add_sub_cancel]

end A112250

/-! ## A112250.P4871971911759170350

`lt[1, A075106(n+2)]+2`
-/

namespace A112250.P4871971911759170350
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075106 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 2

end

end A112250.P4871971911759170350

namespace A112250

/-- `lt[1, A075106(n+2)]+2` -/
def P4871971911759170350.Spec : Prop :=
  ∀ n, (P4871971911759170350.a n : ℤ) = A112250 (n + 1)

end A112250

/-! ## A112250.P818925951534600869

`lt[n+1, lcm(n+1, A000523(n+1))]+1`
-/

namespace A112250.P818925951534600869
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n + 1 : ℤ) (A000523 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A112250.P818925951534600869

namespace A112250

/-- `lt[n+1, lcm(n+1, A000523(n+1))]+1` -/
def P818925951534600869.Spec : Prop :=
  ∀ n, (P818925951534600869.a n : ℤ) = A112250 (n + 1)

end A112250

/-! ## A112250.P12659440004791550710

`lt[A075104(n+1), A000523(n+1)]+1`
-/

namespace A112250.P12659440004791550710
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075104 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000523 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A112250.P12659440004791550710

namespace A112250

/-- `lt[A075104(n+1), A000523(n+1)]+1` -/
def P12659440004791550710.Spec : Prop :=
  ∀ n, (P12659440004791550710.a n : ℤ) = A112250 (n + 1)

end A112250

/-! ## A112250.P10836535089307998934

`A020725(lt[A075104(n+1), A000523(n+1)])`
-/

namespace A112250.P10836535089307998934
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075104 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000523 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A112250.P10836535089307998934

namespace A112250

/-- `A020725(lt[A075104(n+1), A000523(n+1)])` -/
def P10836535089307998934.Spec : Prop :=
  ∀ n, P10836535089307998934.a n = A112250 (n + 1)

end A112250

/-! ## A112250.P9724314167973376656

`lt[n, lcm(n, 1-A070939(n))]`
-/

namespace A112250.P9724314167973376656
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n : ℤ) (1 - A070939 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A112250.P9724314167973376656

namespace A112250

/-- `lt[n, lcm(n, 1-A070939(n))]` -/
def P9724314167973376656.Spec : Prop :=
  ∀ n, (P9724314167973376656.a n : ℤ) = A112250 (n + 1)

end A112250

/-!
# A112251: Numbers m such that m mod floor(log_2(m)) = 1.

The programs for A112251, the canonical program `A112251.P16085361699206159827` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A112251 has offset 1).

The definition of A112251 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 975 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A112251.P16085361699206159827

`∩[A112249(n+1)+1, A112250(n+1)]`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A112251

/-- `∩[A112249(n+1)+1, A112250(n+1)]` -/
def P16085361699206159827.Spec : Prop :=
  ∀ n, (P16085361699206159827.a n : ℤ) = A112251 (n + 1)

theorem P16085361699206159827.correct : P16085361699206159827.Spec := by
  intro n
  simp only [A112251, Nat.add_sub_cancel]

end A112251

/-! ## A112251.P13473340458839364855

`A009056(eq[1, (n+2)%floor(log2(n+2))])`
-/

namespace A112251.P13473340458839364855
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 2) % Nat.log 2 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009056 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A112251.P13473340458839364855

namespace A112251

/-- `A009056(eq[1, (n+2)%floor(log2(n+2))])` -/
def P13473340458839364855.Spec : Prop :=
  ∀ n, P13473340458839364855.a n = A112251 (n + 1)

end A112251

/-! ## A112251.P8715751307217876461

`eq[1, n%A070939(A123108(n))]`
-/

namespace A112251.P8715751307217876461
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n : ℤ) (A070939 (A123108 n).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A112251.P8715751307217876461

namespace A112251

/-- `eq[1, n%A070939(A123108(n))]` -/
def P8715751307217876461.Spec : Prop :=
  ∀ n, (P8715751307217876461.a n : ℤ) = A112251 (n + 1)

end A112251

/-! ## A112251.P7728500724398928768

`A009056(eq[1, -(A001489(n+2)%A000523(n+2))])`
-/

namespace A112251.P7728500724398928768
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.tmod (A001489 (n + 2)) (A000523 (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009056 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A112251.P7728500724398928768

namespace A112251

/-- `A009056(eq[1, -(A001489(n+2)%A000523(n+2))])` -/
def P7728500724398928768.Spec : Prop :=
  ∀ n, P7728500724398928768.a n = A112251 (n + 1)

end A112251

/-! ## A112251.P7390245714757633095

`A009056(eq[1, A075105(n+2)%A075106(n+2)*A075104(n+2)])`
-/

namespace A112251.P7390245714757633095
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A075105 (n + 2)) (A075106 (n + 2)) * A075104 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009056 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A112251.P7390245714757633095

namespace A112251

/-- `A009056(eq[1, A075105(n+2)%A075106(n+2)*A075104(n+2)])` -/
def P7390245714757633095.Spec : Prop :=
  ∀ n, P7390245714757633095.a n = A112251 (n + 1)

end A112251

/-!
# A112259: Expansion of x*(1+8*x)/((1-8*x)*(1+11*x+64*x^2)).

The programs for A112259, the canonical program `A112259.P15048791681661884961` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A112259 has offset 1).

The definition of A112259 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 111 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A112259.P15048791681661884961

`A112260(n+1)²*A335840(n+1)`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A112259

/-- `A112260(n+1)²*A335840(n+1)` -/
def P15048791681661884961.Spec : Prop :=
  ∀ n, P15048791681661884961.a n = A112259 (n + 1)

theorem P15048791681661884961.correct : P15048791681661884961.Spec := by
  intro n
  simp only [A112259, Nat.add_sub_cancel]

end A112259

/-! ## A112259.P8552456017238573980

`(A126646(n)+1-A335840(n+1))²*A335840(n+1)`
-/

namespace A112259.P8552456017238573980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A126646 n + (1 - A335840 (n + 1))) ^ 2 * A335840 (n + 1)

end

end A112259.P8552456017238573980

namespace A112259

/-- `(A126646(n)+1-A335840(n+1))²*A335840(n+1)` -/
def P8552456017238573980.Spec : Prop :=
  ∀ n, P8552456017238573980.a n = A112259 (n + 1)

end A112259

/-! ## A112259.P7512844956303408745

`(A048578(n)-A335840(n+1)-1)²*A335840(n+1)`
-/

namespace A112259.P7512844956303408745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A048578 n - A335840 (n + 1) - 1) ^ 2 * A335840 (n + 1)

end

end A112259.P7512844956303408745

namespace A112259

/-- `(A048578(n)-A335840(n+1)-1)²*A335840(n+1)` -/
def P7512844956303408745.Spec : Prop :=
  ∀ n, P7512844956303408745.a n = A112259 (n + 1)

end A112259

/-! ## A112259.P1073839414144181564

`lcm(2^(n+1)-A112260(n+1), (A126646(n)+1-A335840(n+1))²)`
-/

namespace A112259.P1073839414144181564
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((2 ^ (n + 1) : ℤ) - A112260 (n + 1)) ((A126646 n + (1 - A335840 (n + 1))) ^ 2)

end

end A112259.P1073839414144181564

namespace A112259

/-- `lcm(2^(n+1)-A112260(n+1), (A126646(n)+1-A335840(n+1))²)` -/
def P1073839414144181564.Spec : Prop :=
  ∀ n, (P1073839414144181564.a n : ℤ) = A112259 (n + 1)

end A112259

/-! ## A112259.P15252991743061678545

`(A171389(n)-(A335840(n+1)+A198276(n)))²*A335840(n+1)`
-/

namespace A112259.P15252991743061678545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A171389 n - (A335840 (n + 1) + A198276 n)) ^ 2 * A335840 (n + 1)

end

end A112259.P15252991743061678545

namespace A112259

/-- `(A171389(n)-(A335840(n+1)+A198276(n)))²*A335840(n+1)` -/
def P15252991743061678545.Spec : Prop :=
  ∀ n, P15252991743061678545.a n = A112259 (n + 1)

end A112259

/-!
# A112260: Expansion of -x*(8*x^2-4*x+1) / ((2*x-1)*(4*x^2-x+1)).

The programs for A112260, the canonical program `A112260.P12400795572801072832` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A112260 has offset 1).

The definition of A112260 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-4x+8x^2)/(1-3x+6x^2-8x^3))` (program `A112260.P12400795572801072832`, by `A112260.P12400795572801072832.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A112260.P12400795572801072832

`ogf((1-4x+8x^2)/(1-3x+6x^2-8x^3))`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A112260

/-- `ogf((1-4x+8x^2)/(1-3x+6x^2-8x^3))` -/
def P12400795572801072832.Spec : Prop :=
  ∀ n, P12400795572801072832.a n = A112260 (n + 1)

theorem P12400795572801072832.correct : P12400795572801072832.Spec := by
  intro n
  simp only [A112260, Nat.add_sub_cancel]

end A112260

/-! ## A112260.P14321525172641756449

`3*a(n-1)-6*a(n-2)+8*a(n-3)` with `a(0)=1, a(1)=-1, a(2)=-1`
-/

namespace A112260.P14321525172641756449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, -1, -1] fun n a =>
  3 * a (n - 1) - 6 * a (n - 2) + 8 * a (n - 3)

end

end A112260.P14321525172641756449

namespace A112260

/-- `3*a(n-1)-6*a(n-2)+8*a(n-3)` -/
def P14321525172641756449.Spec : Prop :=
  ∀ n, P14321525172641756449.a n = A112260 (n + 1)

end A112260

/-! ## A112260.P2005169144347061766

`Δ[A335840(n+2)/4]`
-/

namespace A112260.P2005169144347061766
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A335840 (n + 2) : ℚ) / 4

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A112260.P2005169144347061766

namespace A112260

/-- `Δ[A335840(n+2)/4]` -/
def P2005169144347061766.Spec : Prop :=
  ∀ n, P2005169144347061766.a n = (A112260 (n + 1) : ℚ)

end A112260

/-! ## A112260.P6567076927559580969

`2^(n+1)-A335840(n+1)`
-/

namespace A112260.P6567076927559580969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ (n + 1) : ℤ) - A335840 (n + 1)

end

end A112260.P6567076927559580969

namespace A112260

/-- `2^(n+1)-A335840(n+1)` -/
def P6567076927559580969.Spec : Prop :=
  ∀ n, P6567076927559580969.a n = A112260 (n + 1)

end A112260

/-! ## A112260.P18301162232120398636

`A126646(n)+1-A335840(n+1)`
-/

namespace A112260.P18301162232120398636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126646 n + (1 - A335840 (n + 1))

end

end A112260.P18301162232120398636

namespace A112260

/-- `A126646(n)+1-A335840(n+1)` -/
def P18301162232120398636.Spec : Prop :=
  ∀ n, P18301162232120398636.a n = A112260 (n + 1)

end A112260

/-! ## A112260.P7164177946461990256

`A048578(n)-A335840(n+1)-1`
-/

namespace A112260.P7164177946461990256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048578 n - A335840 (n + 1) - 1

end

end A112260.P7164177946461990256

namespace A112260

/-- `A048578(n)-A335840(n+1)-1` -/
def P7164177946461990256.Spec : Prop :=
  ∀ n, P7164177946461990256.a n = A112260 (n + 1)

end A112260

/-! ## A112260.P17126678648776214884

`A000079(n)+A000079(n)-A335840(n+1)`
-/

namespace A112260.P17126678648776214884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n + (A000079 n - A335840 (n + 1))

end

end A112260.P17126678648776214884

namespace A112260

/-- `A000079(n)+A000079(n)-A335840(n+1)` -/
def P17126678648776214884.Spec : Prop :=
  ∀ n, P17126678648776214884.a n = A112260 (n + 1)

end A112260

/-! ## A112260.P6741541511556284084

`A112261(n)+a(n-1)` with `a(0)=1`
-/

namespace A112260.P6741541511556284084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A112261 n + a (n - 1)

end

end A112260.P6741541511556284084

namespace A112260

/-- `A112261(n)+a(n-1)` -/
def P6741541511556284084.Spec : Prop :=
  ∀ n, P6741541511556284084.a n = A112260 (n + 1)

end A112260

/-! ## A112260.P4147493166244882798

`A272931(n+1)+A112261(n+2)/2`
-/

namespace A112260.P4147493166244882798
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A272931 (n + 1) : ℚ) + (A112261 (n + 2) : ℚ) / 2

end

end A112260.P4147493166244882798

namespace A112260

/-- `A272931(n+1)+A112261(n+2)/2` -/
def P4147493166244882798.Spec : Prop :=
  ∀ n, P4147493166244882798.a n = (A112260 (n + 1) : ℚ)

end A112260

/-! ## A112260.P6671979269875582649

`A171389(n)-(A335840(n+1)+A198276(n))`
-/

namespace A112260.P6671979269875582649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171389 n - (A335840 (n + 1) + A198276 n)

end

end A112260.P6671979269875582649

namespace A112260

/-- `A171389(n)-(A335840(n+1)+A198276(n))` -/
def P6671979269875582649.Spec : Prop :=
  ∀ n, P6671979269875582649.a n = A112260 (n + 1)

end A112260

/-!
# A112261: a(n) = A112260(n+1) - A112260(n).

The programs for A112261, the canonical program `A112261.P11239402943242375889` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A112261 has offset 1).

The definition of A112261 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A112260(n+2)-A112260(n+1)` (program `A112261.P11239402943242375889`, by `A112261.P11239402943242375889.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A112261.P732976036068685712

`ogf((-2+6x)/(1-3x+6x^2-8x^3))`
-/

namespace A112261.P732976036068685712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [-2, 6] [1, -3, 6, -8] n

end

end A112261.P732976036068685712

namespace A112261

/-- `ogf((-2+6x)/(1-3x+6x^2-8x^3))` -/
def P732976036068685712.Spec : Prop :=
  ∀ n, P732976036068685712.a n = A112261 (n + 1)

end A112261

/-! ## A112261.P13273590614927228348

`3*a(n-1)-6*a(n-2)+8*a(n-3)` with `a(0)=-2, a(1)=0, a(2)=12`
-/

namespace A112261.P13273590614927228348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [-2, 0, 12] fun n a =>
  3 * a (n - 1) - 6 * a (n - 2) + 8 * a (n - 3)

end

end A112261.P13273590614927228348

namespace A112261

/-- `3*a(n-1)-6*a(n-2)+8*a(n-3)` -/
def P13273590614927228348.Spec : Prop :=
  ∀ n, P13273590614927228348.a n = A112261 (n + 1)

end A112261

/-! ## A112261.P11239402943242375889

`A112260(n+2)-A112260(n+1)`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A112261

/-- `A112260(n+2)-A112260(n+1)` -/
def P11239402943242375889.Spec : Prop :=
  ∀ n, P11239402943242375889.a n = A112261 (n + 1)

theorem P11239402943242375889.correct : P11239402943242375889.Spec := by
  intro n
  simp only [A112261, Nat.add_sub_cancel]

end A112261

/-! ## A112261.P6352607353616220065

`Δ[A112260(n+1)]`
-/

namespace A112261.P6352607353616220065
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A112261.P6352607353616220065

namespace A112261

/-- `Δ[A112260(n+1)]` -/
def P6352607353616220065.Spec : Prop :=
  ∀ n, P6352607353616220065.a n = A112261 (n + 1)

theorem P6352607353616220065.correct : P6352607353616220065.Spec := by
  intro n
  simp only [A112261, Nat.add_sub_cancel, A112261.P6352607353616220065.f1, A112261.P6352607353616220065.a, A112261.P11239402943242375889.a, SequenceMachineLib.memo_apply]

end A112261

/-! ## A112261.P837461622083966466

`Δ[A048578(n)-A335840(n+1)]`
-/

namespace A112261.P837461622083966466
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048578 n - A335840 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A112261.P837461622083966466

namespace A112261

/-- `Δ[A048578(n)-A335840(n+1)]` -/
def P837461622083966466.Spec : Prop :=
  ∀ n, P837461622083966466.a n = A112261 (n + 1)

end A112261

/-! ## A112261.P4432371568790419325

`Δ[A126646(n)-A335840(n+1)]`
-/

namespace A112261.P4432371568790419325
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126646 n - A335840 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A112261.P4432371568790419325

namespace A112261

/-- `Δ[A126646(n)-A335840(n+1)]` -/
def P4432371568790419325.Spec : Prop :=
  ∀ n, P4432371568790419325.a n = A112261 (n + 1)

end A112261

/-! ## A112261.P9334151295734866260

`Δ[A000225(n+1)-A335840(n+1)]`
-/

namespace A112261.P9334151295734866260
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 (n + 1) - A335840 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A112261.P9334151295734866260

namespace A112261

/-- `Δ[A000225(n+1)-A335840(n+1)]` -/
def P9334151295734866260.Spec : Prop :=
  ∀ n, P9334151295734866260.a n = A112261 (n + 1)

end A112261

/-!
# A112262: A good sequence of gaps for Shellsort, found by genetic programming.

The programs for A112262, there is no canonical definition to state claims against.
-/

/-! ## A112262.P13516325571884898630

`A360403(A165433(n+1))`
-/

namespace A112262.P13516325571884898630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360403 (A165433 (n + 1)).toNat

end

end A112262.P13516325571884898630

/-! ## A112262.P15768957420817364957

`∑[A244644(A056780(n+1))]`
-/

namespace A112262.P15768957420817364957
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244644 (A056780 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A112262.P15768957420817364957

/-!
# A112263: A good sequence of gaps for Shellsort, found by genetic programming.

The programs for A112263, there is no canonical definition to state claims against.
-/

/-! ## A112263.P14559334130119135152

`∑[A000244(n)%A162779(A018106(n))]`
-/

namespace A112263.P14559334130119135152
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000244 n) (A162779 (A018106 n).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A112263.P14559334130119135152

/-! ## A112263.P1845886922258700780

`A002487(A188333(n+1)+A006857(n))`
-/

namespace A112263.P1845886922258700780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (A188333 (n + 1) + A006857 n).toNat

end

end A112263.P1845886922258700780

/-!
# A112264: Sum of initial digits of prime factors (with multiplicity) of n.

The programs for A112264, there is no canonical definition to state claims against.
-/

/-! ## A112264.P11289801642086176054

`A112265(n+1)-A112265(A000007(n)+n)`
-/

namespace A112264.P11289801642086176054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112265 (n + 1) - A112265 (A000007 n + (n : ℤ)).toNat

end

end A112264.P11289801642086176054

/-! ## A112264.P9060649646786369522

`Δ[A112265(A000007(n)+n)]`
-/

namespace A112264.P9060649646786369522
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112265 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A112264.P9060649646786369522

/-! ## A112264.P1350449259156632977

`Δ[A112265(or(n, A000007(n)))]`
-/

namespace A112264.P1350449259156632977
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112265 (Int.lor (n : ℤ) (A000007 n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A112264.P1350449259156632977

/-! ## A112264.P5615662520954238194

`A112265(2*(n+1))-(A112265(2*n+1)+2)`
-/

namespace A112264.P5615662520954238194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112265 (2 * (n + 1)) - (A112265 (2 * n + 1) + 2)

end

end A112264.P5615662520954238194

/-! ## A112264.P108371098069869966

`Δ[A112265(A123108(2*n))]`
-/

namespace A112264.P108371098069869966
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112265 (A123108 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A112264.P108371098069869966

/-! ## A112264.P1488462851537497508

`A112265(n+1)-A112265(A132736(n)-A000225(n))`
-/

namespace A112264.P1488462851537497508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112265 (n + 1) - A112265 (A132736 n - A000225 n).toNat

end

end A112264.P1488462851537497508

/-! ## A112264.P196178845229375161

`Δ[A112265(A132736(n)-A000225(n))]`
-/

namespace A112264.P196178845229375161
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112265 (A132736 n - A000225 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A112264.P196178845229375161

/-! ## A112264.P10944532954891210336

`Δ[A112265(n^A178334(n))]`
-/

namespace A112264.P10944532954891210336
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112265 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A178334 n : ℤ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A112264.P10944532954891210336

/-!
# A112265: Cumulative sum of sum of initial digits of prime factors (with multiplicity) of n.

The programs for A112265, there is no canonical definition to state claims against.
-/

/-! ## A112265.P1288094355736528923

`∑[A112264(n+1)]`
-/

namespace A112265.P1288094355736528923
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112264 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A112265.P1288094355736528923

/-! ## A112265.P17223763447707306309

`a(n-1)+A112264(n+1)+A000038(n)` with `a(0)=0`
-/

namespace A112265.P17223763447707306309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + (A112264 (n + 1) + A000038 n)

end

end A112265.P17223763447707306309

/-! ## A112265.P15041349568916239372

`a(n-1)+A112264(n+1)%A312507(n)` with `a(0)=0`
-/

namespace A112265.P15041349568916239372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + Int.tmod (A112264 (n + 1)) (A312507 n)

end

end A112265.P15041349568916239372

/-! ## A112265.P3782796874190141856

`a(n-1)+A088956(A000096(n))*A112264(n+1)` with `a(0)=0`
-/

namespace A112265.P3782796874190141856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + A088956 (A000096 n).toNat * A112264 (n + 1)

end

end A112265.P3782796874190141856

/-! ## A112265.P2626770411484904509

`∑[gcd(A001414(n+1), A354042(3*(n+1)))]`
-/

namespace A112265.P2626770411484904509
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A001414 (n + 1)) (A354042 (3 * (n + 1)))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A112265.P2626770411484904509

/-!
# A112266: Primes in A112265.

The programs for A112266, there is no canonical definition to state claims against.
-/

/-! ## A112266.P11585422887613276639

`p?[A112265(n+1)]`
-/

namespace A112266.P11585422887613276639
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112265 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A112266.P11585422887613276639

/-! ## A112266.P8663794607827341075

`p?[∑[A112264(n+1)]]`
-/

namespace A112266.P8663794607827341075
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112264 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A112266.P8663794607827341075

/-! ## A112266.P10337372912880969492

`record[A020639(A112265(n+2))]`
-/

namespace A112266.P10337372912880969492
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A112265 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A112266.P10337372912880969492

/-! ## A112266.P8469266897421985970

`filter[A112265(n+2), A010051(#)]`
-/

namespace A112266.P8469266897421985970
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112265 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A112266.P8469266897421985970

/-! ## A112266.P9363417225382567259

`∩[A000040(n+1), A112265(n+1)]`
-/

namespace A112266.P9363417225382567259
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112265 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A112266.P9363417225382567259

/-! ## A112266.P11720918240744029219

`∩[A008578(n+1), A112265(n+1)]`
-/

namespace A112266.P11720918240744029219
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112265 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A112266.P11720918240744029219

/-! ## A112266.P10437821740887769339

`∩[A045344(n+1), A112265(n+1)]`
-/

namespace A112266.P10437821740887769339
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112265 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A112266.P10437821740887769339

/-! ## A112266.P2674615147108185239

`∩[A046022(n+1), A112265(n+1)]`
-/

namespace A112266.P2674615147108185239
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046022 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112265 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A112266.P2674615147108185239

/-! ## A112266.P9260231967650613453

`∩[A051948(n+1), A112265(n+1)]`
-/

namespace A112266.P9260231967650613453
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051948 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112265 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A112266.P9260231967650613453

/-! ## A112266.P3765690816968569557

`∩[A053813(n+1), A112265(n+1)]`
-/

namespace A112266.P3765690816968569557
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053813 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112265 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A112266.P3765690816968569557

/-! ## A112266.P16181704926514203511

`∩[A062972(n+1), A112265(n+1)]`
-/

namespace A112266.P16181704926514203511
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062972 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112265 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A112266.P16181704926514203511

/-! ## A112266.P8887751133424510759

`∩[A106118(n+1), A112265(n+1)]`
-/

namespace A112266.P8887751133424510759
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106118 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112265 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A112266.P8887751133424510759

/-! ## A112266.P12370918327588321386

`∩[A112265(n+1), A116974(n+1)]`
-/

namespace A112266.P12370918327588321386
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112265 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116974 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A112266.P12370918327588321386

/-! ## A112266.P15723773028217305496

`∩[A112265(n+1), A138837(n+1)]`
-/

namespace A112266.P15723773028217305496
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112265 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138837 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A112266.P15723773028217305496

/-! ## A112266.P15146213734536985408

`∩[A112265(n+1), A175787(n+1)]`
-/

namespace A112266.P15146213734536985408
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112265 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175787 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A112266.P15146213734536985408

/-! ## A112266.P2412113597662587389

`∩[A112265(n+1), A251595(n+1)]`
-/

namespace A112266.P2412113597662587389
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112265 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251595 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A112266.P2412113597662587389

/-! ## A112266.P729665246156245425

`∩[A112265(n+1), A284696(n+1)]`
-/

namespace A112266.P729665246156245425
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112265 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284696 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A112266.P729665246156245425

/-! ## A112266.P12413644657041054592

`∩[A112265(n+1), A326715(n+1)]`
-/

namespace A112266.P12413644657041054592
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112265 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326715 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A112266.P12413644657041054592

/-! ## A112266.P1962357955014760192

`∩[A112265(n+1), A348440(n+1)]`
-/

namespace A112266.P1962357955014760192
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112265 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348440 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A112266.P1962357955014760192

/-! ## A112266.P15549784847804741835

`∩[A112265(n+1), A373789(n+1)]`
-/

namespace A112266.P15549784847804741835
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112265 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373789 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A112266.P15549784847804741835

/-!
# A112270: One third of the sum of the first n primes, when an integer.

The programs for A112270, the canonical program `A112270.P2426147511943281131` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A112270 has offset 1).

The definition of A112270 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A112270.P13605573247178673361

`A249679(n+2)/3`
-/

namespace A112270.P13605573247178673361
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A249679 (n + 2) : ℚ) / 3

end

end A112270.P13605573247178673361

namespace A112270

/-- `A249679(n+2)/3` -/
def P13605573247178673361.Spec : Prop :=
  ∀ n, P13605573247178673361.a n = (A112270 (n + 1) : ℚ)

end A112270

/-! ## A112270.P2426147511943281131

`A007504(A103208(n+1))/3`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A112270

/-- `A007504(A103208(n+1))/3` -/
def P2426147511943281131.Spec : Prop :=
  ∀ n, P2426147511943281131.a n = (A112270 (n + 1) : ℚ)

end A112270

/-! ## A112270.P8195326458409261338

`A007504(eq[9, dr(A007504(n)²)])/3`
-/

namespace A112270.P8195326458409261338
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A007504 n ^ 2)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007504 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n) : ℚ) / 3

end

end A112270.P8195326458409261338

namespace A112270

/-- `A007504(eq[9, dr(A007504(n)²)])/3` -/
def P8195326458409261338.Spec : Prop :=
  ∀ n, P8195326458409261338.a n = (A112270 (n + 1) : ℚ)

end A112270

/-! ## A112270.P7885507717671913356

`A007504(eq[1, A034960(n+1)%6])/3`
-/

namespace A112270.P7885507717671913356
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A034960 (n + 1)) 6

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007504 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n) : ℚ) / 3

end

end A112270.P7885507717671913356

namespace A112270

/-- `A007504(eq[1, A034960(n+1)%6])/3` -/
def P7885507717671913356.Spec : Prop :=
  ∀ n, P7885507717671913356.a n = (A112270 (n + 1) : ℚ)

end A112270

/-! ## A112270.P14031505942277129553

`A007504(eq[1, A014284(n+2)%3]+1)/3`
-/

namespace A112270.P14031505942277129553
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A014284 (n + 2)) 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007504 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1) : ℚ) / 3

end

end A112270.P14031505942277129553

namespace A112270

/-- `A007504(eq[1, A014284(n+2)%3]+1)/3` -/
def P14031505942277129553.Spec : Prop :=
  ∀ n, P14031505942277129553.a n = (A112270 (n + 1) : ℚ)

end A112270

/-! ## A112270.P101595246251419121

`A007504(eq[3, gcd(3, A007504(n+1))]+1)/3`
-/

namespace A112270.P101595246251419121
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 3 (A007504 (n + 1))

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007504 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1) : ℚ) / 3

end

end A112270.P101595246251419121

namespace A112270

/-- `A007504(eq[3, gcd(3, A007504(n+1))]+1)/3` -/
def P101595246251419121.Spec : Prop :=
  ∀ n, P101595246251419121.a n = (A112270 (n + 1) : ℚ)

end A112270

/-!
# A112271: One fifth of the sum of the first n primes, when an integer.

The programs for A112271, the canonical program `A112271.P15116177394105532634` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A112271 has offset 1).

The definition of A112271 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A112271.P15116177394105532634

`A007504(A111319(n+1))/5`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A112271

/-- `A007504(A111319(n+1))/5` -/
def P15116177394105532634.Spec : Prop :=
  ∀ n, P15116177394105532634.a n = (A112271 (n + 1) : ℚ)

end A112271

/-! ## A112271.P2237808887599175870

`A007504(eq[A007504(n)%5, A000007(n)])/5`
-/

namespace A112271.P2237808887599175870
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007504 n) 5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007504 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n) : ℚ) / 5

end

end A112271.P2237808887599175870

namespace A112271

/-- `A007504(eq[A007504(n)%5, A000007(n)])/5` -/
def P2237808887599175870.Spec : Prop :=
  ∀ n, P2237808887599175870.a n = (A112271 (n + 1) : ℚ)

end A112271

/-! ## A112271.P9848182146942156267

`A007504(eq[A262392(n)%5, A158478(n)])/5`
-/

namespace A112271.P9848182146942156267
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A262392 n) 5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158478 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007504 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n) : ℚ) / 5

end

end A112271.P9848182146942156267

namespace A112271

/-- `A007504(eq[A262392(n)%5, A158478(n)])/5` -/
def P9848182146942156267.Spec : Prop :=
  ∀ n, P9848182146942156267.a n = (A112271 (n + 1) : ℚ)

end A112271

/-! ## A112271.P18410833353462110002

`A007504(eq[A014284(n+1)%5, A057427(n)])/5`
-/

namespace A112271.P18410833353462110002
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A014284 (n + 1)) 5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007504 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n) : ℚ) / 5

end

end A112271.P18410833353462110002

namespace A112271

/-- `A007504(eq[A014284(n+1)%5, A057427(n)])/5` -/
def P18410833353462110002.Spec : Prop :=
  ∀ n, P18410833353462110002.a n = (A112271 (n + 1) : ℚ)

end A112271

/-!
# A112272: One seventh of the sum of the first n primes, when an integer.

The programs for A112272, the canonical program `A112272.P10778085801830275971` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A112272 has offset 1).

The definition of A112272 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A112272.P3610109098483634671

`A007504(A111321(n+1))/7`
-/

namespace A112272.P3610109098483634671
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007504 (A111321 (n + 1)).toNat : ℚ) / 7

end

end A112272.P3610109098483634671

namespace A112272

/-- `A007504(A111321(n+1))/7` -/
def P3610109098483634671.Spec : Prop :=
  ∀ n, P3610109098483634671.a n = (A112272 (n + 1) : ℚ)

end A112272

/-! ## A112272.P10778085801830275971

`ceil(A007504(A111321(-xor(n, -1)))/7)`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A112272

/-- `ceil(A007504(A111321(-xor(n, -1)))/7)` -/
def P10778085801830275971.Spec : Prop :=
  ∀ n, P10778085801830275971.a n = A112272 (n + 1)

theorem P10778085801830275971.correct : P10778085801830275971.Spec := by
  intro n
  simp only [A112272, Nat.add_sub_cancel]

end A112272

/-! ## A112272.P14623431231362879066

`7^A008683(A075580(n))*A007504(A111321(n+1))`
-/

namespace A112272.P14623431231362879066
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (7 : ℚ) ^ (A008683 (A075580 n).toNat : ℤ) * (A007504 (A111321 (n + 1)).toNat : ℚ)

end

end A112272.P14623431231362879066

namespace A112272

/-- `7^A008683(A075580(n))*A007504(A111321(n+1))` -/
def P14623431231362879066.Spec : Prop :=
  ∀ n, P14623431231362879066.a n = (A112272 (n + 1) : ℚ)

end A112272

/-! ## A112272.P9098372333288214560

`A193471(A052905(n+5)-1)`
-/

namespace A112272.P9098372333288214560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193471 (A052905 (n + 5) - 1).toNat

end

end A112272.P9098372333288214560

namespace A112272

/-- `A193471(A052905(n+5)-1)` -/
def P9098372333288214560.Spec : Prop :=
  ∀ n, P9098372333288214560.a n = A112272 (n + 1)

end A112272

/-! ## A112272.P11102639899072542204

`A193471(A000217(n+8)-6)`
-/

namespace A112272.P11102639899072542204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193471 (A000217 (n + 8) - 6).toNat

end

end A112272.P11102639899072542204

namespace A112272

/-- `A193471(A000217(n+8)-6)` -/
def P11102639899072542204.Spec : Prop :=
  ∀ n, P11102639899072542204.a n = A112272 (n + 1)

end A112272

/-!
# A112274: Expansion of k(q) = r(q) * r(q^2)^2 in powers of q where r() is the Rogers-Ramanujan continued fraction.

The programs for A112274, there is no canonical definition to state claims against.
-/

/-! ## A112274.P14717861653033261994

`A112803(n+1)`
-/

namespace A112274.P14717861653033261994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112803 (n + 1)

end

end A112274.P14717861653033261994

/-! ## A112274.P12919459645849625990

`-A124242(n+1)`
-/

namespace A112274.P12919459645849625990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A124242 (n + 1)

end

end A112274.P12919459645849625990

/-! ## A112274.P6634504178485384241

`Δ[a(n-1)-A124242(n)]` with `a(0)=1`
-/

namespace A112274.P6634504178485384241
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  f1 (n - 1) - A124242 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A112274.P6634504178485384241

/-! ## A112274.P3526688283986449470

`A000038(n+1)-A124242(n+1)`
-/

namespace A112274.P3526688283986449470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 (n + 1) - A124242 (n + 1)

end

end A112274.P3526688283986449470

/-! ## A112274.P16603130542617391607

`A010054(n+1)*A365799(n+2)-A124242(n+1)`
-/

namespace A112274.P16603130542617391607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 (n + 1) * A365799 (n + 2) - A124242 (n + 1)

end

end A112274.P16603130542617391607

/-! ## A112274.P10593966734799870756

`A010054(n+1)*A365800(n+2)-A124242(n+1)`
-/

namespace A112274.P10593966734799870756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 (n + 1) * A365800 (n + 2) - A124242 (n + 1)

end

end A112274.P10593966734799870756

/-! ## A112274.P9269347931235582535

`A124242(n+1)*A153881(n+2)`
-/

namespace A112274.P9269347931235582535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124242 (n + 1) * A153881 (n + 2)

end

end A112274.P9269347931235582535

/-! ## A112274.P11062079389512971103

`A224877(n+1)*A224877(n)-A124242(n+1)`
-/

namespace A112274.P11062079389512971103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224877 (n + 1) * A224877 n - A124242 (n + 1)

end

end A112274.P11062079389512971103

/-! ## A112274.P15950270065351081711

`A000035(2*n)-A124242(n+1)`
-/

namespace A112274.P15950270065351081711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (2 * n) - A124242 (n + 1)

end

end A112274.P15950270065351081711

/-! ## A112274.P2544587194744958372

`A057077(2*n+1)-(A124242(n+1)+A057077(2*n))`
-/

namespace A112274.P2544587194744958372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057077 (2 * n + 1) - (A124242 (n + 1) + A057077 (2 * n))

end

end A112274.P2544587194744958372

/-! ## A112274.P12947978948195429265

`1-(A124242(n+1)+A001221(A262830(n+1)))`
-/

namespace A112274.P12947978948195429265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (A124242 (n + 1) + A001221 (A262830 (n + 1)).toNat)

end

end A112274.P12947978948195429265

/-!
# A112275: Smallest number greater than n having at least as many divisors as n.

The programs for A112275, there is no canonical definition to state claims against.
-/

/-! ## A112275.P12496138395745958578

`A064317(A348406(A186707(n)))+n+1`
-/

namespace A112275.P12496138395745958578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064317 (A348406 (A186707 n).toNat).toNat + (n + 1 : ℤ)

end

end A112275.P12496138395745958578

/-! ## A112275.P4887135837834495498

`A236920(A319048(n+1))+1+n`
-/

namespace A112275.P4887135837834495498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236920 (A319048 (n + 1)).toNat + 1 + (n : ℤ)

end

end A112275.P4887135837834495498

/-! ## A112275.P1627617746216260181

`A000041(A086152(∑[2^n]))+n`
-/

namespace A112275.P1627617746216260181
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (A086152 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat + (n : ℤ)

end

end A112275.P1627617746216260181

/-!
# A112276: Smallest number greater than n having no more divisors than n; a(1) = 1.

The programs for A112276, there is no canonical definition to state claims against.
-/

/-! ## A112276.P12375267187853863349

`A082048(n+1)-A262693(A226405(n))`
-/

namespace A112276.P12375267187853863349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082048 (n + 1) - A262693 (A226405 n).toNat

end

end A112276.P12375267187853863349

/-! ## A112276.P4636880452052506352

`A126762(n+1)-A262693(A226405(n))`
-/

namespace A112276.P4636880452052506352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126762 (n + 1) - A262693 (A226405 n).toNat

end

end A112276.P4636880452052506352

/-! ## A112276.P1053320930335633499

`A082048(n+1)-A055641(A005064(n+1))`
-/

namespace A112276.P1053320930335633499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082048 (n + 1) - A055641 (A005064 (n + 1)).toNat

end

end A112276.P1053320930335633499

/-! ## A112276.P12515321616326777215

`A126762(n+1)-A055641(A005064(n+1))`
-/

namespace A112276.P12515321616326777215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126762 (n + 1) - A055641 (A005064 (n + 1)).toNat

end

end A112276.P12515321616326777215

/-! ## A112276.P16165074371537702510

`A082048(n+1)+A010815(A031162(n+1))`
-/

namespace A112276.P16165074371537702510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082048 (n + 1) + A010815 (A031162 (n + 1)).toNat

end

end A112276.P16165074371537702510

/-!
# A112277: Numbers m such that A112276(m) is composite.

The programs for A112277, there is no canonical definition to state claims against.
-/

/-! ## A112277.P18322554534831354741

`lt[A034968(n), A175126(A112276(n+1))]+1`
-/

namespace A112277.P18322554534831354741
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034968 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175126 (A112276 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A112277.P18322554534831354741

/-! ## A112277.P14681590484296938371

`lt[A135282(n+1), A175126(A112276(n+1))]+1`
-/

namespace A112277.P14681590484296938371
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135282 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175126 (A112276 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A112277.P14681590484296938371

/-! ## A112277.P4463975203376491475

`lt[A284726(n+1), A175126(A112276(n+1))]+1`
-/

namespace A112277.P4463975203376491475
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284726 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175126 (A112276 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A112277.P4463975203376491475

/-! ## A112277.P268627409561494181

`lt[A080339(A112276(n+1)), 1]+1`
-/

namespace A112277.P268627409561494181
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080339 (A112276 (n + 1)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A112277.P268627409561494181

/-! ## A112277.P11201138066949052955

`lt[A326031(n+4), A175126(A112276(n+1))]+1`
-/

namespace A112277.P11201138066949052955
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326031 (n + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175126 (A112276 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A112277.P11201138066949052955

/-!
# A112278: a(0) = 1, a(1) = 2; thereafter a(n) = prime(mod(a(n-1),100))+1.

The programs for A112278, the canonical program `A112278.P15176499767231755779` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A112278 has offset 0).

The definition of A112278 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000040(a(n-1)%100)+1` (program `A112278.P15176499767231755779`, by `A112278.P15176499767231755779.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A112278.P15176499767231755779

`A000040(a(n-1)%100)+1` with `a(0)=1, a(1)=2`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A112278

/-- `A000040(a(n-1)%100)+1` -/
def P15176499767231755779.Spec : Prop :=
  ∀ n, P15176499767231755779.a n = A112278 n

theorem P15176499767231755779.correct : P15176499767231755779.Spec := by
  intro n
  simp only [A112278]

end A112278

/-!
# A112279: a(1)=1; a(n)=prime(mod(a(n-1),100)).

The programs for A112279, the canonical program `A112279.P14374793740830411021` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A112279 has offset 1).

The definition of A112279 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000040(a(n-1)%100)` (program `A112279.P14374793740830411021`, by `A112279.P14374793740830411021.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A112279.P1123412851235963005

`ogf((1+2x+3x^2+5x^3+11x^4+30x^5+125x^6+100x^7)/(1-x^5))`
-/

namespace A112279.P1123412851235963005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 2, 3, 5, 11, 30, 125, 100] [1, 0, 0, 0, 0, -1] n

end

end A112279.P1123412851235963005

namespace A112279

/-- `ogf((1+2x+3x^2+5x^3+11x^4+30x^5+125x^6+100x^7)/(1-x^5))` -/
def P1123412851235963005.Spec : Prop :=
  ∀ n, P1123412851235963005.a n = A112279 (n + 1)

end A112279

/-! ## A112279.P14374793740830411021

`A000040(a(n-1)%100)` with `a(0)=1`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A112279

/-- `A000040(a(n-1)%100)` -/
def P14374793740830411021.Spec : Prop :=
  ∀ n, P14374793740830411021.a n = A112279 (n + 1)

theorem P14374793740830411021.correct : P14374793740830411021.Spec := by
  intro n
  simp only [A112279, Nat.add_sub_cancel]

end A112279

/-!
# A112280: Coefficients, read modulo 9, of the cube of q-series (q;q)_oo.

The programs for A112280, the canonical program `A112280.P11519997637088277000` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A112280 has offset 0).

The definition of A112280 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1001 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A112280.P11519997637088277000

`A111983(n)%9`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A112280

/-- `A111983(n)%9` -/
def P11519997637088277000.Spec : Prop :=
  ∀ n, P11519997637088277000.a n = A112280 n

theorem P11519997637088277000.correct : P11519997637088277000.Spec := by
  intro n
  simp only [A112280]

end A112280

/-! ## A112280.P6924749579499261870

`(A202394(n)%9+9)%9`
-/

namespace A112280.P6924749579499261870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.tmod (A202394 n) 9 + 9) 9

end

end A112280.P6924749579499261870

namespace A112280

/-- `(A202394(n)%9+9)%9` -/
def P6924749579499261870.Spec : Prop :=
  ∀ n, P6924749579499261870.a n = A112280 n

end A112280

/-! ## A112280.P5181562462050407503

`(A038279(n)*A198954(n))%9`
-/

namespace A112280.P5181562462050407503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A038279 n * A198954 n) 9

end

end A112280.P5181562462050407503

namespace A112280

/-- `(A038279(n)*A198954(n))%9` -/
def P5181562462050407503.Spec : Prop :=
  ∀ n, P5181562462050407503.a n = A112280 n

end A112280

/-! ## A112280.P484710809153976237

`lcm(A010816(n), A038279(n))%9`
-/

namespace A112280.P484710809153976237
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A010816 n) (A038279 n) % 9

end

end A112280.P484710809153976237

namespace A112280

/-- `lcm(A010816(n), A038279(n))%9` -/
def P484710809153976237.Spec : Prop :=
  ∀ n, (P484710809153976237.a n : ℤ) = A112280 n

end A112280

/-! ## A112280.P4651366070224110188

`(A010816(n)-A013973(n+1))%9`
-/

namespace A112280.P4651366070224110188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A010816 n - A013973 (n + 1)) 9

end

end A112280.P4651366070224110188

namespace A112280

/-- `(A010816(n)-A013973(n+1))%9` -/
def P4651366070224110188.Spec : Prop :=
  ∀ n, P4651366070224110188.a n = A112280 n

end A112280

/-! ## A112280.P7404141017241606240

`(A183819(n+1)*A198954(n))%9`
-/

namespace A112280.P7404141017241606240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A183819 (n + 1) * A198954 n) 9

end

end A112280.P7404141017241606240

namespace A112280

/-- `(A183819(n+1)*A198954(n))%9` -/
def P7404141017241606240.Spec : Prop :=
  ∀ n, P7404141017241606240.a n = A112280 n

end A112280

/-! ## A112280.P2785213353215577540

`A370335(n)%9`
-/

namespace A112280.P2785213353215577540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A370335 n) 9

end

end A112280.P2785213353215577540

namespace A112280

/-- `A370335(n)%9` -/
def P2785213353215577540.Spec : Prop :=
  ∀ n, P2785213353215577540.a n = A112280 n

end A112280

/-! ## A112280.P6443512161672836192

`A326605(2*n)%9`
-/

namespace A112280.P6443512161672836192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A326605 (2 * n)) 9

end

end A112280.P6443512161672836192

namespace A112280

/-- `A326605(2*n)%9` -/
def P6443512161672836192.Spec : Prop :=
  ∀ n, P6443512161672836192.a n = A112280 n

end A112280

/-!
# A112281: The cube-root of the g.f. of A112280, which is congruent modulo 9 to the cube of q-series (q;q)_oo.

The programs for A112281, there is no canonical definition to state claims against.
-/

/-! ## A112281.P1409720231163326125

`A111984(n)/record[A199571(n)]`
-/

namespace A112281.P1409720231163326125
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199571 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A111984 n : ℚ) / (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ)

end

end A112281.P1409720231163326125

/-! ## A112281.P2269121989798113049

`A111984(A004911(n+1))/A000302(n)`
-/

namespace A112281.P2269121989798113049
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A111984 (A004911 (n + 1)).toNat : ℚ) / (A000302 n : ℚ)

end

end A112281.P2269121989798113049

/-!
# A112282: a(n) = (-1)^n*(2*n+1) (mod 9).

The programs for A112282, the canonical program `A112282.P8851289284645925935` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A112282 has offset 0).

The definition of A112282 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A112282.P8851289284645925935

`9-dr(a(n-2)+2*a(n-1))` with `a(0)=1, a(1)=6`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A112282

/-- `9-dr(a(n-2)+2*a(n-1))` -/
def P8851289284645925935.Spec : Prop :=
  ∀ n, P8851289284645925935.a n = A112282 n

theorem P8851289284645925935.correct : P8851289284645925935.Spec := by
  intro n
  simp only [A112282]

end A112282

/-!
# A112283: Consider the array T(n, m) where the n-th row is the sequence of integer coefficients of A(x), where 1<=a(n)<=n, such that A(x)^(1/n) consists entirely of integer coefficients and where m is the (m+1)-th coefficient. This sequence is the first occurrence of 1 after the first column.

The programs for A112283, there is no canonical definition to state claims against.
-/

/-! ## A112283.P1393743200818640972

`(n+1)*A112284(n+1)`
-/

namespace A112283.P1393743200818640972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A112284 (n + 1)

end

end A112283.P1393743200818640972

/-! ## A112283.P3650694833653797031

`abs(xor(n, -1)*A112284(A008611(3*n)))`
-/

namespace A112283.P3650694833653797031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.xor (n : ℤ) (-1) * A112284 (A008611 (3 * n)).toNat|

end

end A112283.P3650694833653797031

/-! ## A112283.P13523884436864727207

`A112284(A077168(n))*A291769(n)`
-/

namespace A112283.P13523884436864727207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112284 (A077168 n).toNat * A291769 n

end

end A112283.P13523884436864727207

/-! ## A112283.P10708526447916011011

`A112284(A077168(n))*A348553(n)`
-/

namespace A112283.P10708526447916011011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112284 (A077168 n).toNat * A348553 n

end

end A112283.P10708526447916011011

/-!
# A112284: A112283/n.

The programs for A112284, there is no canonical definition to state claims against.
-/

/-! ## A112284.P6075742877433868780

`A112283(n+1)/(n+1)`
-/

namespace A112284.P6075742877433868780
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A112283 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A112284.P6075742877433868780

/-! ## A112284.P10850034420045111617

`A008574(A112283(n+1))%A004767(n)`
-/

namespace A112284.P10850034420045111617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008574 (A112283 (n + 1)).toNat) (A004767 n)

end

end A112284.P10850034420045111617

/-! ## A112284.P12700779913647911305

`A008486(A112283(n+1))%A016789(n)`
-/

namespace A112284.P12700779913647911305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008486 (A112283 (n + 1)).toNat) (A016789 n)

end

end A112284.P12700779913647911305

/-!
# A112288: Numerator of sum{k=1 to n} 1/s(n,k), where s(n,k) is an unsigned Stirling number of the first kind.

The programs for A112288, there is no canonical definition to state claims against.
-/

/-! ## A112288.P15208633060873143716

`A000069(A118038(n)^A006206(n+1))`
-/

namespace A112288.P15208633060873143716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000069 (SequenceMachineLib.roundAway ((A118038 n : ℚ) ^ (A006206 (n + 1) : ℤ))).toNat

end

end A112288.P15208633060873143716

/-!
# A112289: Denominator of sum{k=1 to n} 1/s(n,k), where s(n,k) is an unsigned Stirling number of the first kind.

The programs for A112289, there is no canonical definition to state claims against.
-/

/-! ## A112289.P668061398502651177

`A354479(A264975(n+1))`
-/

namespace A112289.P668061398502651177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354479 (A264975 (n + 1)).toNat

end

end A112289.P668061398502651177

/-! ## A112289.P3488986407129633298

`A354479(C(A364548(n+1), n))`
-/

namespace A112289.P3488986407129633298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354479 (Nat.choose (A364548 (n + 1)).toNat n)

end

end A112289.P3488986407129633298

/-!
# A112290: Numerator of sum{k=1 to n} 1/S(n,k), where S(n,k) is a Stirling number of the second kind.

The programs for A112290, there is no canonical definition to state claims against.
-/

/-! ## A112290.P7694384739085648928

`A352017(A042043(n))`
-/

namespace A112290.P7694384739085648928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352017 (A042043 n).toNat

end

end A112290.P7694384739085648928

/-!
# A112291: 

The programs for A112291, there is no canonical definition to state claims against.
-/

/-! ## A112291.P832817163357767623

`A380177(a(n-1))` with `a(0)=1, a(1)=1, a(2)=3`
-/

namespace A112291.P832817163357767623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 3] fun n a =>
  A380177 (a (n - 1)).toNat

end

end A112291.P832817163357767623

/-!
# A112292: An invertible triangle of ratios of double factorials.

The programs for A112292, there is no canonical definition to state claims against.
-/

/-! ## A112292.P5233977894729573705

`A126063(n)/2^(n-C(∑[char[∑[n]]], 2))`
-/

namespace A112292.P5233977894729573705
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A126063 n : ℚ) / (2 : ℚ) ^ ((n : ℤ) - (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℤ) : ℤ)

end

end A112292.P5233977894729573705

/-! ## A112292.P17712993315999170312

`A048854(n)/A038207(n)`
-/

namespace A112292.P17712993315999170312
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048854 n : ℚ) / (A038207 n : ℚ)

end

end A112292.P17712993315999170312

/-! ## A112292.P2639800875145149118

`A176230(n)/A007318(n)`
-/

namespace A112292.P2639800875145149118
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A176230 n : ℚ) / (A007318 n : ℚ)

end

end A112292.P2639800875145149118

/-! ## A112292.P10992605440723423624

`A126063(n)/A059268(n)`
-/

namespace A112292.P10992605440723423624
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A126063 n : ℚ) / (A059268 n : ℚ)

end

end A112292.P10992605440723423624

/-! ## A112292.P4786748782693631530

`A176231(n)/A130595(n)`
-/

namespace A112292.P4786748782693631530
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A176231 n : ℚ) / (A130595 n : ℚ)

end

end A112292.P4786748782693631530

/-! ## A112292.P6882427345091239440

`gcd(A000246(n), A126063(n))`
-/

namespace A112292.P6882427345091239440
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000246 n) (A126063 n)

end

end A112292.P6882427345091239440

/-! ## A112292.P5926417366501276809

`abs(A048854(n)/A065109(n))`
-/

namespace A112292.P5926417366501276809
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A048854 n : ℚ) / (A065109 n : ℚ)|

end

end A112292.P5926417366501276809

/-! ## A112292.P10067188093918215774

`A176230(n)/sqrt(A008459(n))`
-/

namespace A112292.P10067188093918215774
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A176230 n : ℝ) / Real.sqrt (A008459 n : ℝ)

end

end A112292.P10067188093918215774

/-! ## A112292.P9084959682834566048

`A176230(n)/Δ[A102363(n)]`
-/

namespace A112292.P9084959682834566048
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102363 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A176230 n : ℚ) / (f1 (n + 1) - f1 n : ℚ)

end

end A112292.P9084959682834566048

/-! ## A112292.P11615102779464402215

`gcd(2*A126063(n), A055634(n))`
-/

namespace A112292.P11615102779464402215
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (2 * A126063 n) (A055634 n)

end

end A112292.P11615102779464402215

/-!
# A112293: Row sums of number triangle A112292.

The programs for A112293, there is no canonical definition to state claims against.
-/

/-! ## A112293.P10653540343548311560

`1+(2*n-1)*a(n-1)` with `a(0)=1`
-/

namespace A112293.P10653540343548311560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  1 + ((2 * n : ℤ) - 1) * a (n - 1)

end

end A112293.P10653540343548311560

/-! ## A112293.P12339036094198357655

`(A047905(2*n+1)+1)/2`
-/

namespace A112293.P12339036094198357655
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A047905 (2 * n + 1) + 1 : ℚ) / 2

end

end A112293.P12339036094198357655

/-! ## A112293.P12594043017624340434

`a(n-1)*A004273(n)+1` with `a(0)=1`
-/

namespace A112293.P12594043017624340434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * A004273 n + 1

end

end A112293.P12594043017624340434

/-! ## A112293.P11878237782348928621

`a(n-1)*A060747(n)+1` with `a(0)=1`
-/

namespace A112293.P11878237782348928621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * A060747 n + 1

end

end A112293.P11878237782348928621

/-! ## A112293.P8982620045576021004

`1-a(n-1)*A165747(n)` with `a(0)=1`
-/

namespace A112293.P8982620045576021004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  1 - a (n - 1) * A165747 n

end

end A112293.P8982620045576021004

/-! ## A112293.P11029936628813196817

`a(n-1)*record[A006257(n)]+1` with `a(0)=1`
-/

namespace A112293.P11029936628813196817
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006257 n

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 1

end

end A112293.P11029936628813196817

/-! ## A112293.P7190666776684843430

`A286286(n)+A001147(n)`
-/

namespace A112293.P7190666776684843430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286286 n + A001147 n

end

end A112293.P7190666776684843430

/-!
# A112294: Diagonal sums of number triangle A112292.

The programs for A112294, there is no canonical definition to state claims against.
-/

/-! ## A112294.P15940421012625579063

`A059851(or(1, A317276(n)))`
-/

namespace A112294.P15940421012625579063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059851 (Int.lor 1 (A317276 n)).toNat

end

end A112294.P15940421012625579063

/-! ## A112294.P16711705751619804980

`A224901(or(1, A277565(n+1)))`
-/

namespace A112294.P16711705751619804980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224901 (Int.lor 1 (A277565 (n + 1))).toNat

end

end A112294.P16711705751619804980

/-!
# A112295: Inverse of a double factorial related triangle.

The programs for A112295, the canonical program `A112295.P3156740729499457564` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A112295 has offset 0).

The definition of A112295 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1326 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A112295.P10380963696331858780

`T(n-1,k-1)+(T(n-2,k-1)+T(n-1,k))*(T(n-1,k+1)-1)` with `a(0)=1`
-/

namespace A112295.P10380963696331858780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  SequenceMachineLib.triUpLeft a n + (SequenceMachineLib.triUp2Left a n + SequenceMachineLib.triUp a n) * (SequenceMachineLib.triUpRight a n - 1)

end

end A112295.P10380963696331858780

namespace A112295

/-- `T(n-1,k-1)+(T(n-2,k-1)+T(n-1,k))*(T(n-1,k+1)-1)` -/
def P10380963696331858780.Spec : Prop :=
  ∀ n, P10380963696331858780.a n = A112295 n

end A112295

/-! ## A112295.P17819960612638781039

`T(n-1,k-1)+(T(n-2,k-1)+T(n-1,k))*(T(n-2,k)-1)` with `a(0)=1`
-/

namespace A112295.P17819960612638781039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  SequenceMachineLib.triUpLeft a n + (SequenceMachineLib.triUp2Left a n + SequenceMachineLib.triUp a n) * (SequenceMachineLib.triUp2 a n - 1)

end

end A112295.P17819960612638781039

namespace A112295

/-- `T(n-1,k-1)+(T(n-2,k-1)+T(n-1,k))*(T(n-2,k)-1)` -/
def P17819960612638781039.Spec : Prop :=
  ∀ n, P17819960612638781039.a n = A112295 n

end A112295

/-! ## A112295.P15200223302913850340

`T(n-1,k-1)+(T(n-2,k-1)+T(n-1,k))*(row(n)-(col(n)+2))` with `a(0)=1`
-/

namespace A112295.P15200223302913850340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  SequenceMachineLib.triUpLeft a n + (SequenceMachineLib.triUp2Left a n + SequenceMachineLib.triUp a n) * ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n + 2 : ℤ))

end

end A112295.P15200223302913850340

namespace A112295

/-- `T(n-1,k-1)+(T(n-2,k-1)+T(n-1,k))*(row(n)-(col(n)+2))` -/
def P15200223302913850340.Spec : Prop :=
  ∀ n, P15200223302913850340.a n = A112295 n

end A112295

/-! ## A112295.P4629373956403303417

`A097141(A185911(n+2))`
-/

namespace A112295.P4629373956403303417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097141 (A185911 (n + 2)).toNat

end

end A112295.P4629373956403303417

namespace A112295

/-- `A097141(A185911(n+2))` -/
def P4629373956403303417.Spec : Prop :=
  ∀ n, P4629373956403303417.a n = A112295 n

end A112295

/-! ## A112295.P5836761073228335329

`A132440(n)+A112334(n)`
-/

namespace A112295.P5836761073228335329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132440 n + A112334 n

end

end A112295.P5836761073228335329

namespace A112295

/-- `A132440(n)+A112334(n)` -/
def P5836761073228335329.Spec : Prop :=
  ∀ n, P5836761073228335329.a n = A112295 n

end A112295

/-! ## A112295.P14377796232380404858

`A132013(n)-A218234(n)`
-/

namespace A112295.P14377796232380404858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132013 n - A218234 n

end

end A112295.P14377796232380404858

namespace A112295

/-- `A132013(n)-A218234(n)` -/
def P14377796232380404858.Spec : Prop :=
  ∀ n, P14377796232380404858.a n = A112295 n

end A112295

/-! ## A112295.P10299445207997563790

`A055905(n)*A097806(n)`
-/

namespace A112295.P10299445207997563790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055905 n * A097806 n

end

end A112295.P10299445207997563790

namespace A112295

/-- `A055905(n)*A097806(n)` -/
def P10299445207997563790.Spec : Prop :=
  ∀ n, P10299445207997563790.a n = A112295 n

end A112295

/-! ## A112295.P12779719478409097621

`A008288(n)*A167374(n)`
-/

namespace A112295.P12779719478409097621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008288 n * A167374 n

end

end A112295.P12779719478409097621

namespace A112295

/-- `A008288(n)*A167374(n)` -/
def P12779719478409097621.Spec : Prop :=
  ∀ n, P12779719478409097621.a n = A112295 n

end A112295

/-! ## A112295.P14905317703166190425

`A091698(n)*A097806(n)`
-/

namespace A112295.P14905317703166190425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091698 n * A097806 n

end

end A112295.P14905317703166190425

namespace A112295

/-- `A091698(n)*A097806(n)` -/
def P14905317703166190425.Spec : Prop :=
  ∀ n, P14905317703166190425.a n = A112295 n

end A112295

/-! ## A112295.P1748286568011346547

`A026615(n)*A167374(n)`
-/

namespace A112295.P1748286568011346547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026615 n * A167374 n

end

end A112295.P1748286568011346547

namespace A112295

/-- `A026615(n)*A167374(n)` -/
def P1748286568011346547.Spec : Prop :=
  ∀ n, P1748286568011346547.a n = A112295 n

end A112295

/-! ## A112295.P5194908255643634469

`A097806(n)*A103136(n)`
-/

namespace A112295.P5194908255643634469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097806 n * A103136 n

end

end A112295.P5194908255643634469

namespace A112295

/-- `A097806(n)*A103136(n)` -/
def P5194908255643634469.Spec : Prop :=
  ∀ n, P5194908255643634469.a n = A112295 n

end A112295

/-! ## A112295.P6219809777248822850

`A039599(n)*A167374(n)`
-/

namespace A112295.P6219809777248822850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039599 n * A167374 n

end

end A112295.P6219809777248822850

namespace A112295

/-- `A039599(n)*A167374(n)` -/
def P6219809777248822850.Spec : Prop :=
  ∀ n, P6219809777248822850.a n = A112295 n

end A112295

/-! ## A112295.P6878637284229335849

`A097806(n)*A110292(n)`
-/

namespace A112295.P6878637284229335849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097806 n * A110292 n

end

end A112295.P6878637284229335849

namespace A112295

/-- `A097806(n)*A110292(n)` -/
def P6878637284229335849.Spec : Prop :=
  ∀ n, P6878637284229335849.a n = A112295 n

end A112295

/-! ## A112295.P17136060681481851598

`A097806(n)*A122917(n)`
-/

namespace A112295.P17136060681481851598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097806 n * A122917 n

end

end A112295.P17136060681481851598

namespace A112295

/-- `A097806(n)*A122917(n)` -/
def P17136060681481851598.Spec : Prop :=
  ∀ n, P17136060681481851598.a n = A112295 n

end A112295

/-! ## A112295.P16527948916160416541

`A055898(n)*A167374(n)`
-/

namespace A112295.P16527948916160416541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055898 n * A167374 n

end

end A112295.P16527948916160416541

namespace A112295

/-- `A055898(n)*A167374(n)` -/
def P16527948916160416541.Spec : Prop :=
  ∀ n, P16527948916160416541.a n = A112295 n

end A112295

/-! ## A112295.P14979862823213569096

`A097806(n)*A129818(n)`
-/

namespace A112295.P14979862823213569096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097806 n * A129818 n

end

end A112295.P14979862823213569096

namespace A112295

/-- `A097806(n)*A129818(n)` -/
def P14979862823213569096.Spec : Prop :=
  ∀ n, P14979862823213569096.a n = A112295 n

end A112295

/-! ## A112295.P9487239496704130224

`A060543(n)*A167374(n)`
-/

namespace A112295.P9487239496704130224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060543 n * A167374 n

end

end A112295.P9487239496704130224

namespace A112295

/-- `A060543(n)*A167374(n)` -/
def P9487239496704130224.Spec : Prop :=
  ∀ n, P9487239496704130224.a n = A112295 n

end A112295

/-! ## A112295.P3514973632979719809

`A063967(n)*A167374(n)`
-/

namespace A112295.P3514973632979719809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063967 n * A167374 n

end

end A112295.P3514973632979719809

namespace A112295

/-- `A063967(n)*A167374(n)` -/
def P3514973632979719809.Spec : Prop :=
  ∀ n, P3514973632979719809.a n = A112295 n

end A112295

/-! ## A112295.P9210415284136740699

`A067402(n)*A167374(n)`
-/

namespace A112295.P9210415284136740699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067402 n * A167374 n

end

end A112295.P9210415284136740699

namespace A112295

/-- `A067402(n)*A167374(n)` -/
def P9210415284136740699.Spec : Prop :=
  ∀ n, P9210415284136740699.a n = A112295 n

end A112295

/-! ## A112295.P3156740729499457564

`A085478(n)*A167374(n)`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A112295

/-- `A085478(n)*A167374(n)` -/
def P3156740729499457564.Spec : Prop :=
  ∀ n, P3156740729499457564.a n = A112295 n

theorem P3156740729499457564.correct : P3156740729499457564.Spec := by
  intro n
  simp only [A112295]

end A112295

/-!
# A112296: Smret suoiverp eht fo mus fo esrever.

The programs for A112296, there is no canonical definition to state claims against.
-/

/-! ## A112296.P3201692164602629046

`abs(Δ[A033651(abs(1-n))])`
-/

namespace A112296.P3201692164602629046
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033651 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A112296.P3201692164602629046

/-! ## A112296.P13680818935669450005

`Δ[A004086(a(n-1))+a(n-1)]` with `a(0)=0, a(1)=9`
-/

namespace A112296.P13680818935669450005
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 9] fun n f1 =>
  A004086 (f1 (n - 1)).toNat + f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A112296.P13680818935669450005

/-! ## A112296.P9634891923672084429

`A004086(A033651(log2(ceil(2^(n-1)))))`
-/

namespace A112296.P9634891923672084429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (A033651 (SequenceMachineLib.roundAway (Real.logb 2 (⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉ : ℝ))).toNat).toNat

end

end A112296.P9634891923672084429

/-!
# A112298: Expansion of (a(q) - 3*a(q^2) + 2*a(q^4)) / 6 in powers of q where a() is a cubic AGM theta function.

The programs for A112298, the canonical program `A112298.P13991926760380096719` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A112298 has offset 1).

The definition of A112298 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A112298.P8710783961543171676

`(-1)^n*A244375(n+1)`
-/

namespace A112298.P8710783961543171676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A244375 (n + 1)

end

end A112298.P8710783961543171676

namespace A112298

/-- `(-1)^n*A244375(n+1)` -/
def P8710783961543171676.Spec : Prop :=
  ∀ n, P8710783961543171676.a n = A112298 (n + 1)

end A112298

/-! ## A112298.P13991926760380096719

`A010684(n)*A093829(n+1)`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A112298

/-- `A010684(n)*A093829(n+1)` -/
def P13991926760380096719.Spec : Prop :=
  ∀ n, P13991926760380096719.a n = A112298 (n + 1)

theorem P13991926760380096719.correct : P13991926760380096719.Spec := by
  intro n
  simp only [A112298, Nat.add_sub_cancel]

end A112298

/-! ## A112298.P2080384369702776388

`A244375(n+1)/A033999(n)`
-/

namespace A112298.P2080384369702776388
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A244375 (n + 1) : ℚ) / (A033999 n : ℚ)

end

end A112298.P2080384369702776388

namespace A112298

/-- `A244375(n+1)/A033999(n)` -/
def P2080384369702776388.Spec : Prop :=
  ∀ n, P2080384369702776388.a n = (A112298 (n + 1) : ℚ)

end A112298

/-! ## A112298.P316531581870296201

`Δ[A042948(n)]*A093829(n+1)`
-/

namespace A112298.P316531581870296201
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042948 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A093829 (n + 1)

end

end A112298.P316531581870296201

namespace A112298

/-- `Δ[A042948(n)]*A093829(n+1)` -/
def P316531581870296201.Spec : Prop :=
  ∀ n, P316531581870296201.a n = A112298 (n + 1)

end A112298

/-! ## A112298.P14213188514525482015

`(2-A033999(n))*A093829(n+1)`
-/

namespace A112298.P14213188514525482015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A033999 n) * A093829 (n + 1)

end

end A112298.P14213188514525482015

namespace A112298

/-- `(2-A033999(n))*A093829(n+1)` -/
def P14213188514525482015.Spec : Prop :=
  ∀ n, P14213188514525482015.a n = A112298 (n + 1)

end A112298

/-! ## A112298.P14531507906015256061

`A010873(Δ[n²])*A093829(n+1)`
-/

namespace A112298.P14531507906015256061
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010873 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat * A093829 (n + 1)

end

end A112298.P14531507906015256061

namespace A112298

/-- `A010873(Δ[n²])*A093829(n+1)` -/
def P14531507906015256061.Spec : Prop :=
  ∀ n, P14531507906015256061.a n = A112298 (n + 1)

end A112298

/-! ## A112298.P18223844441788551883

`A115979(2*(n+1))+A096936(n+1)`
-/

namespace A112298.P18223844441788551883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115979 (2 * (n + 1)) + A096936 (n + 1)

end

end A112298.P18223844441788551883

namespace A112298

/-- `A115979(2*(n+1))+A096936(n+1)` -/
def P18223844441788551883.Spec : Prop :=
  ∀ n, P18223844441788551883.a n = A112298 (n + 1)

end A112298

/-! ## A112298.P15732462928444946635

`A096936(n+1)-A096936(2*(n+1))`
-/

namespace A112298.P15732462928444946635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096936 (n + 1) - A096936 (2 * (n + 1))

end

end A112298.P15732462928444946635

namespace A112298

/-- `A096936(n+1)-A096936(2*(n+1))` -/
def P15732462928444946635.Spec : Prop :=
  ∀ n, P15732462928444946635.a n = A112298 (n + 1)

end A112298

/-! ## A112298.P3958604057470084537

`2*A093829(n+1)-A113447(n+1)`
-/

namespace A112298.P3958604057470084537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A093829 (n + 1) - A113447 (n + 1)

end

end A112298.P3958604057470084537

namespace A112298

/-- `2*A093829(n+1)-A113447(n+1)` -/
def P3958604057470084537.Spec : Prop :=
  ∀ n, P3958604057470084537.a n = A112298 (n + 1)

end A112298

/-! ## A112298.P6383192430307840130

`2*A123484(n+1)-A136748(n+1)`
-/

namespace A112298.P6383192430307840130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A123484 (n + 1) - A136748 (n + 1)

end

end A112298.P6383192430307840130

namespace A112298

/-- `2*A123484(n+1)-A136748(n+1)` -/
def P6383192430307840130.Spec : Prop :=
  ∀ n, P6383192430307840130.a n = A112298 (n + 1)

end A112298

/-! ## A112298.P3042616903437920663

`∑{d}[n+1, A123484(#)*A154269((n+1)/#)]`
-/

namespace A112298.P3042616903437920663
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A123484 d * A154269 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A112298.P3042616903437920663

namespace A112298

/-- `∑{d}[n+1, A123484(#)*A154269((n+1)/#)]` -/
def P3042616903437920663.Spec : Prop :=
  ∀ n, P3042616903437920663.a n = A112298 (n + 1)

end A112298

/-! ## A112298.P10009402177613371385

`∑{d}[n+1, A033999(#-1)*A112300((n+1)/#)]`
-/

namespace A112298.P10009402177613371385
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A033999 (d - 1) * A112300 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A112298.P10009402177613371385

namespace A112298

/-- `∑{d}[n+1, A033999(#-1)*A112300((n+1)/#)]` -/
def P10009402177613371385.Spec : Prop :=
  ∀ n, P10009402177613371385.a n = A112298 (n + 1)

end A112298

/-! ## A112298.P3709694061556818692

`∑{d}[n+1, A049347(#-1)*A230074((n+1)/#)]`
-/

namespace A112298.P3709694061556818692
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A049347 (d - 1) * A230074 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A112298.P3709694061556818692

namespace A112298

/-- `∑{d}[n+1, A049347(#-1)*A230074((n+1)/#)]` -/
def P3709694061556818692.Spec : Prop :=
  ∀ n, P3709694061556818692.a n = A112298 (n + 1)

end A112298

/-! ## A112298.P13634364959855647955

`(2-A093829(A006047(n)))*A093829(n+1)`
-/

namespace A112298.P13634364959855647955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A093829 (A006047 n).toNat) * A093829 (n + 1)

end

end A112298.P13634364959855647955

namespace A112298

/-- `(2-A093829(A006047(n)))*A093829(n+1)` -/
def P13634364959855647955.Spec : Prop :=
  ∀ n, P13634364959855647955.a n = A112298 (n + 1)

end A112298

/-! ## A112298.P13890862893638087469

`2*A093829(n+1)-A093829(A060789(n+1))`
-/

namespace A112298.P13890862893638087469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A093829 (n + 1) - A093829 (A060789 (n + 1)).toNat

end

end A112298.P13890862893638087469

namespace A112298

/-- `2*A093829(n+1)-A093829(A060789(n+1))` -/
def P13890862893638087469.Spec : Prop :=
  ∀ n, P13890862893638087469.a n = A112298 (n + 1)

end A112298

/-! ## A112298.P7212509854398067933

`A115978(n+1)-A132973(n+1)`
-/

namespace A112298.P7212509854398067933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115978 (n + 1) - A132973 (n + 1)

end

end A112298.P7212509854398067933

namespace A112298

/-- `A115978(n+1)-A132973(n+1)` -/
def P7212509854398067933.Spec : Prop :=
  ∀ n, P7212509854398067933.a n = A112298 (n + 1)

end A112298

/-! ## A112298.P12736087895436521924

`(A004016(n+1)-A253623(n+1))/2`
-/

namespace A112298.P12736087895436521924
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004016 (n + 1) - A253623 (n + 1) : ℚ) / 2

end

end A112298.P12736087895436521924

namespace A112298

/-- `(A004016(n+1)-A253623(n+1))/2` -/
def P12736087895436521924.Spec : Prop :=
  ∀ n, P12736087895436521924.a n = (A112298 (n + 1) : ℚ)

end A112298

/-! ## A112298.P15481231179779452483

`A033716(n+1)-gcd(A033716(n+1), A107760(n+1))`
-/

namespace A112298.P15481231179779452483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033716 (n + 1) - (Int.gcd (A033716 (n + 1)) (A107760 (n + 1)) : ℤ)

end

end A112298.P15481231179779452483

namespace A112298

/-- `A033716(n+1)-gcd(A033716(n+1), A107760(n+1))` -/
def P15481231179779452483.Spec : Prop :=
  ∀ n, P15481231179779452483.a n = A112298 (n + 1)

end A112298

/-! ## A112298.P15556654092491176553

`2*A093829(n+1)-A093829(A080512(n+1))`
-/

namespace A112298.P15556654092491176553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A093829 (n + 1) - A093829 (A080512 (n + 1)).toNat

end

end A112298.P15556654092491176553

namespace A112298

/-- `2*A093829(n+1)-A093829(A080512(n+1))` -/
def P15556654092491176553.Spec : Prop :=
  ∀ n, P15556654092491176553.a n = A112298 (n + 1)

end A112298

/-! ## A112298.P10481545610548130670

`A136748(A022998(n+1))`
-/

namespace A112298.P10481545610548130670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136748 (A022998 (n + 1)).toNat

end

end A112298.P10481545610548130670

namespace A112298

/-- `A136748(A022998(n+1))` -/
def P10481545610548130670.Spec : Prop :=
  ∀ n, P10481545610548130670.a n = A112298 (n + 1)

end A112298

/-!
# A112299: Expansion of x * (1 - x) * (1 - x^2) * (1 - x^3) / (1 - x^8) in powers of x.

The programs for A112299, the canonical program `A112299.P8167584973111171693` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A112299 has offset 1).

The definition of A112299 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-x-x^2+x^4+x^5-x^6)/(1-x^8))` (program `A112299.P8167584973111171693`, by `A112299.P8167584973111171693.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A112299.P17052074359865686217

`ogf((1-x-x^3+x^4)/(1+x^2+x^4+x^6))`
-/

namespace A112299.P17052074359865686217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -1, 0, -1, 1] [1, 0, 1, 0, 1, 0, 1] n

end

end A112299.P17052074359865686217

namespace A112299

/-- `ogf((1-x-x^3+x^4)/(1+x^2+x^4+x^6))` -/
def P17052074359865686217.Spec : Prop :=
  ∀ n, P17052074359865686217.a n = A112299 (n + 1)

end A112299

/-! ## A112299.P8167584973111171693

`ogf((1-x-x^2+x^4+x^5-x^6)/(1-x^8))`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A112299

/-- `ogf((1-x-x^2+x^4+x^5-x^6)/(1-x^8))` -/
def P8167584973111171693.Spec : Prop :=
  ∀ n, P8167584973111171693.a n = A112299 (n + 1)

theorem P8167584973111171693.correct : P8167584973111171693.Spec := by
  intro n
  simp only [A112299, Nat.add_sub_cancel]

end A112299

