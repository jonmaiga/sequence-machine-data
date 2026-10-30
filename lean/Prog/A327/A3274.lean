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
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C031
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C039
import Seq.B000.C040
import Seq.B000.C041
import Seq.B000.C042
import Seq.B000.C043
import Seq.B000.C044
import Seq.B000.C046
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C009
import Seq.B001.C011
import Seq.B001.C012
import Seq.B001.C013
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C006
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C004
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
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
import Seq.Opaque.C024
import SequenceMachineLib.Triangle

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A327400: Number of factorizations of n that are constant or whose factors are relatively prime.

The programs for A327400, there is no canonical definition to state claims against.
-/

/-! ## A327400.P8065756541159344694

`A281116(n+1)+A089723(n+1)`
-/

namespace A327400.P8065756541159344694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281116 (n + 1) + A089723 (n + 1)

end

end A327400.P8065756541159344694

/-! ## A327400.P3077427317039507427

`A336737(n+1)+char[A152951(n)]`
-/

namespace A327400.P3077427317039507427
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152951 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336737 (n + 1) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A327400.P3077427317039507427

/-! ## A327400.P14426211247903000446

`A336737(n+1)+char[A044194(n+1)]`
-/

namespace A327400.P14426211247903000446
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044194 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336737 (n + 1) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A327400.P14426211247903000446

/-! ## A327400.P7195862975372796027

`A336737(n+1)+char[A111092(n+1)]`
-/

namespace A327400.P7195862975372796027
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111092 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336737 (n + 1) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A327400.P7195862975372796027

/-! ## A327400.P10310666091426536873

`A336737(n+1)+char[A158738(n+1)]`
-/

namespace A327400.P10310666091426536873
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158738 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336737 (n + 1) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A327400.P10310666091426536873

/-! ## A327400.P10641753880105916151

`A336737(n+1)+char[A195270(n+1)]`
-/

namespace A327400.P10641753880105916151
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195270 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336737 (n + 1) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A327400.P10641753880105916151

/-! ## A327400.P1882547770925190648

`round(A281116(n+1)+sqrt(A295920(n+1)))`
-/

namespace A327400.P1882547770925190648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A281116 (n + 1) : ℝ) + Real.sqrt (A295920 (n + 1) : ℝ))

end

end A327400.P1882547770925190648

/-! ## A327400.P10929419097313761837

`A336737(n+1)+char[A040983(4*n+5)]`
-/

namespace A327400.P10929419097313761837
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040983 (4 * n + 5)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336737 (n + 1) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A327400.P10929419097313761837

/-! ## A327400.P9550867440976412045

`A281116(n+1)+A000005(A253641(n+1))`
-/

namespace A327400.P9550867440976412045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281116 (n + 1) + A000005 (A253641 (n + 1)).toNat

end

end A327400.P9550867440976412045

/-! ## A327400.P11875179997367491312

`A281116(n+1)+A000005(A316782(n+1))`
-/

namespace A327400.P11875179997367491312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281116 (n + 1) + A000005 (A316782 (n + 1)).toNat

end

end A327400.P11875179997367491312

/-!
# A327401: Quotient of n over the maximum divisor of n that is 1, prime, or whose prime indices are pairwise coprime.

The programs for A327401, there is no canonical definition to state claims against.
-/

/-! ## A327401.P5401432175809963254

`2*(n+1)/A327512(2*(n+1))`
-/

namespace A327401.P5401432175809963254
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℚ) / (A327512 (2 * (n + 1)) : ℚ)

end

end A327401.P5401432175809963254

/-! ## A327401.P17323643917543357461

`A052126(A327656(n+1))`
-/

namespace A327401.P17323643917543357461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052126 (A327656 (n + 1)).toNat

end

end A327401.P17323643917543357461

/-! ## A327401.P10367966485871176113

`A052126(n+1)/A052126(A327512(n+1))`
-/

namespace A327401.P10367966485871176113
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052126 (n + 1) : ℚ) / (A052126 (A327512 (n + 1)).toNat : ℚ)

end

end A327401.P10367966485871176113

/-! ## A327401.P6221344985806595588

`A327656(2*(n+1))/A006530(A327656(n+1))`
-/

namespace A327401.P6221344985806595588
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A327656 (2 * (n + 1)) : ℚ) / (A006530 (A327656 (n + 1)).toNat : ℚ)

end

end A327401.P6221344985806595588

/-! ## A327401.P10071429283393774545

`A327514(A327529(n+1)*A327537(n+1))`
-/

namespace A327401.P10071429283393774545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327514 (A327529 (n + 1) * A327537 (n + 1)).toNat

end

end A327401.P10071429283393774545

/-! ## A327401.P10723578882433493567

`A327514(lcm(A327529(n+1), A327537(n+1)))`
-/

namespace A327401.P10723578882433493567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327514 (Int.lcm (A327529 (n + 1)) (A327537 (n + 1)))

end

end A327401.P10723578882433493567

/-! ## A327401.P4990264842563144948

`A327076(n+1)/A006530(A327076(n+1))`
-/

namespace A327401.P4990264842563144948
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A327076 (n + 1) : ℚ) / (A006530 (A327076 (n + 1)).toNat : ℚ)

end

end A327401.P4990264842563144948

/-! ## A327401.P18003470080954958703

`A000265(n+1)/A327389(A000265(n+1))`
-/

namespace A327401.P18003470080954958703
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000265 (n + 1) : ℚ) / (A327389 (A000265 (n + 1)).toNat : ℚ)

end

end A327401.P18003470080954958703

/-! ## A327401.P7596574633221329393

`A327514(n+1)/A327535(A327531(n+1))`
-/

namespace A327401.P7596574633221329393
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A327514 (n + 1) : ℚ) / (A327535 (A327531 (n + 1)).toNat : ℚ)

end

end A327401.P7596574633221329393

/-! ## A327401.P5303241929426766204

`(n+1)/A327389(n+1)`
-/

namespace A327401.P5303241929426766204
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A327389 (n + 1) : ℚ)

end

end A327401.P5303241929426766204

/-!
# A327402: Quotient of n over the maximum stable divisor of n.

The programs for A327402, there is no canonical definition to state claims against.
-/

/-! ## A327402.P5366713537115056929

`(n+1)/A327393(n+1)`
-/

namespace A327402.P5366713537115056929
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A327393 (n + 1) : ℚ)

end

end A327402.P5366713537115056929

/-! ## A327402.P215155203590399090

`A219158(A327393(1+n)+∑[n])`
-/

namespace A327402.P215155203590399090
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219158 (A327393 (1 + n) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A327402.P215155203590399090

/-! ## A327402.P17886224382351230035

`A051537(A327393(n+1)+∑[n])`
-/

namespace A327402.P17886224382351230035
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051537 (A327393 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A327402.P17886224382351230035

/-! ## A327402.P15631957589032233860

`A054531(A327393(n+1)+∑[n])`
-/

namespace A327402.P15631957589032233860
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054531 (A327393 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A327402.P15631957589032233860

/-! ## A327402.P14225457680705718113

`A126988(A327393(n+1)+∑[n])`
-/

namespace A327402.P14225457680705718113
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126988 (A327393 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A327402.P14225457680705718113

/-! ## A327402.P12032279907383678904

`A284600(n+1)/A030101(A327395(n+1))`
-/

namespace A327402.P12032279907383678904
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A284600 (n + 1) : ℚ) / (A030101 (A327395 (n + 1)).toNat : ℚ)

end

end A327402.P12032279907383678904

/-!
# A327403: Number of steps to reach a fixed point starting with n and repeatedly taking the quotient by the maximum stable divisor (A327393, A327402).

The programs for A327403, there is no canonical definition to state claims against.
-/

/-! ## A327403.P15586434568421847999

`a(A327402(n+1)-1)+1` with `a(0)=0`
-/

namespace A327403.P15586434568421847999
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a (A327402 (n + 1) - 1).toNat + 1

end

end A327403.P15586434568421847999

/-! ## A327403.P7301711881597825598

`A327390(A327402(n+1))%A327390(n+1)`
-/

namespace A327403.P7301711881597825598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A327390 (A327402 (n + 1)).toNat) (A327390 (n + 1))

end

end A327403.P7301711881597825598

/-! ## A327403.P15836137235519841359

`A001221(n+1)-A327406(A327395(n+1))`
-/

namespace A327403.P15836137235519841359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1) - A327406 (A327395 (n + 1)).toNat

end

end A327403.P15836137235519841359

/-! ## A327403.P12183086388572956722

`A001221((1+n%2)*A327076(n+1))`
-/

namespace A327403.P12183086388572956722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (((1 + n % 2 : ℕ) : ℤ) * A327076 (n + 1)).toNat

end

end A327403.P12183086388572956722

/-! ## A327403.P640843044040986127

`A001221(A006519(n+1)*A327076(n+1))`
-/

namespace A327403.P640843044040986127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A006519 (n + 1) * A327076 (n + 1)).toNat

end

end A327403.P640843044040986127

/-! ## A327403.P4282259904258992739

`A001221(A131718(3*n+1)*A327076(n+1))`
-/

namespace A327403.P4282259904258992739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A131718 (3 * n + 1) * A327076 (n + 1)).toNat

end

end A327403.P4282259904258992739

/-! ## A327403.P10131449151291465151

`A084558(gcd(n+1, ∏{p}[n+1, 1-#])%A128167(n+1))`
-/

namespace A327403.P10131449151291465151
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084558 (Int.tmod (Int.gcd (n + 1 : ℤ) (∏ p ∈ Nat.primeFactors (f1 n), (1 - (p : ℤ))) : ℤ) (A128167 (n + 1))).toNat

end

end A327403.P10131449151291465151

/-! ## A327403.P12977506227165829984

`A400930(n+1)+A010054(A090233(n))`
-/

namespace A327403.P12977506227165829984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A400930 (n + 1) + A010054 (A090233 n).toNat

end

end A327403.P12977506227165829984

/-! ## A327403.P7325056606758841853

`and(A045535(n), A400930(n+1))`
-/

namespace A327403.P7325056606758841853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A045535 n) (A400930 (n + 1))

end

end A327403.P7325056606758841853

/-! ## A327403.P2199313480038003308

`and(A141311(n+1), A400930(n+1))`
-/

namespace A327403.P2199313480038003308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A141311 (n + 1)) (A400930 (n + 1))

end

end A327403.P2199313480038003308

/-!
# A327405: Quotient of n over the maximum divisor of n that is 1 or whose prime indices have a common divisor > 1.

The programs for A327405, there is no canonical definition to state claims against.
-/

/-! ## A327405.P9397703885859167231

`(n+1)/A327656(n+1)`
-/

namespace A327405.P9397703885859167231
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A327656 (n + 1) : ℚ)

end

end A327405.P9397703885859167231

/-! ## A327405.P10154245849086604596

`A219158(A327656(n+1)+A000217(n))`
-/

namespace A327405.P10154245849086604596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219158 (A327656 (n + 1) + A000217 n).toNat

end

end A327405.P10154245849086604596

/-! ## A327405.P11763720135823151658

`A234575(A327656(1+n)+∑[n])`
-/

namespace A327405.P11763720135823151658
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234575 (A327656 (1 + n) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A327405.P11763720135823151658

/-! ## A327405.P5192720516480728402

`A049834(A327656(n+1)+∑[n])`
-/

namespace A327405.P5192720516480728402
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049834 (A327656 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A327405.P5192720516480728402

/-! ## A327405.P8056336920868445357

`A051537(A327656(n+1)+∑[n])`
-/

namespace A327405.P8056336920868445357
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051537 (A327656 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A327405.P8056336920868445357

/-! ## A327405.P6974644238024717269

`A126988(A327656(n+1)+∑[n])`
-/

namespace A327405.P6974644238024717269
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126988 (A327656 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A327405.P6974644238024717269

/-! ## A327405.P3335572940738654713

`A010766(A327656(n+1)+A000217(n))`
-/

namespace A327405.P3335572940738654713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010766 (A327656 (n + 1) + A000217 n).toNat

end

end A327405.P3335572940738654713

/-! ## A327405.P8768762169128171887

`A054531(A327656(n+1)+A000217(n))`
-/

namespace A327405.P8768762169128171887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054531 (A327656 (n + 1) + A000217 n).toNat

end

end A327405.P8768762169128171887

/-! ## A327405.P10113523685423920019

`lcm(Δ[A003188(n)], A327395(n+1))`
-/

namespace A327405.P10113523685423920019
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003188 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (f1 (n + 1) - f1 n) (A327395 (n + 1))

end

end A327405.P10113523685423920019

/-! ## A327405.P14711354254793538416

`A327529(A014963(n+1))*A327395(n+1)`
-/

namespace A327405.P14711354254793538416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327529 (A014963 (n + 1)).toNat * A327395 (n + 1)

end

end A327405.P14711354254793538416

/-!
# A327406: Number of steps to reach a fixed point starting with n and repeatedly taking the quotient by the maximum divisor that is 1 or whose prime indices have a common divisor > 1 (A327405, A327656).

The programs for A327406, there is no canonical definition to state claims against.
-/

/-! ## A327406.P1185561513636901158

`A252736(A327512(2*(n+1)))%Δ[A212107(n)]-val(n+1, 2)`
-/

namespace A327406.P1185561513636901158
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212107 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A252736 (A327512 (2 * (n + 1))).toNat) (f1 (n + 1) - f1 n) - (SequenceMachineLib.valuation (n + 1) 2 : ℤ)

end

end A327406.P1185561513636901158

/-! ## A327406.P7968539364863641695

`p?[A155212(n)+4]%A001221(A327512(2*(n+1)))`
-/

namespace A327406.P7968539364863641695
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155212 n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A001221 (A327512 (2 * (n + 1))).toNat)

end

end A327406.P7968539364863641695

/-! ## A327406.P5209918178025465245

`A284660(n+1)%A001221(A327512(2*(n+1)))`
-/

namespace A327406.P5209918178025465245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A284660 (n + 1)) (A001221 (A327512 (2 * (n + 1))).toNat)

end

end A327406.P5209918178025465245

/-! ## A327406.P794583191809350267

`A008683(A007700(n+1))+A001221(A327512(2*(n+1)))`
-/

namespace A327406.P794583191809350267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A007700 (n + 1)).toNat + A001221 (A327512 (2 * (n + 1))).toNat

end

end A327406.P794583191809350267

/-! ## A327406.P16983311917395460496

`A305079(A276234(n+1))+A025435(A165603(n))`
-/

namespace A327406.P16983311917395460496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305079 (A276234 (n + 1)).toNat + A025435 (A165603 n).toNat

end

end A327406.P16983311917395460496

/-! ## A327406.P17733214394341031329

`A305079(A000265(n+1))%A000027(A065093(n+1))`
-/

namespace A327406.P17733214394341031329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A305079 (A000265 (n + 1)).toNat) (A000027 (A065093 (n + 1)).toNat)

end

end A327406.P17733214394341031329

/-! ## A327406.P7173853839124860350

`A305079(A276234(n+1))%A284145(A000217(n+7))`
-/

namespace A327406.P7173853839124860350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A305079 (A276234 (n + 1)).toNat) (A284145 (A000217 (n + 7)).toNat)

end

end A327406.P7173853839124860350

/-! ## A327406.P11001124367401490764

`A305079(A000265(n+1))%A352203(A016885(n))`
-/

namespace A327406.P11001124367401490764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A305079 (A000265 (n + 1)).toNat) (A352203 (A016885 n).toNat)

end

end A327406.P11001124367401490764

/-! ## A327406.P18344798529879836870

`A056926(A001105(n))*A305079(A000265(n+1))`
-/

namespace A327406.P18344798529879836870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056926 (A001105 n).toNat * A305079 (A000265 (n + 1)).toNat

end

end A327406.P18344798529879836870

/-! ## A327406.P10597444828763318073

`A305079(A000265(n+1)%A265973(n+1))`
-/

namespace A327406.P10597444828763318073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305079 (Int.tmod (A000265 (n + 1)) (A265973 (n + 1))).toNat

end

end A327406.P10597444828763318073

/-! ## A327406.P7162637693126443639

`A305501(A064989(n+1)%A265973(n+1))`
-/

namespace A327406.P7162637693126443639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305501 (Int.tmod (A064989 (n + 1)) (A265973 (n + 1))).toNat

end

end A327406.P7162637693126443639

/-! ## A327406.P18221606245541021720

`A305501(A064989(n+1)^A046951(n+1))`
-/

namespace A327406.P18221606245541021720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305501 (SequenceMachineLib.roundAway ((A064989 (n + 1) : ℚ) ^ (A046951 (n + 1) : ℤ))).toNat

end

end A327406.P18221606245541021720

/-! ## A327406.P1960829454324735168

`A305079(A000265(n+1)^A160338(n+1))`
-/

namespace A327406.P1960829454324735168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305079 (SequenceMachineLib.roundAway ((A000265 (n + 1) : ℚ) ^ (A160338 (n + 1) : ℤ))).toNat

end

end A327406.P1960829454324735168

/-! ## A327406.P18399187392783611073

`A328512(A000265((n+1)²))`
-/

namespace A327406.P18399187392783611073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328512 (A000265 ((n + 1) ^ 2)).toNat

end

end A327406.P18399187392783611073

/-! ## A327406.P16599539153533339550

`A305079(A191871(n+1))`
-/

namespace A327406.P16599539153533339550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305079 (A191871 (n + 1)).toNat

end

end A327406.P16599539153533339550

/-! ## A327406.P113483979364527518

`A305079(A276234(n+1)²)`
-/

namespace A327406.P113483979364527518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305079 (A276234 (n + 1) ^ 2).toNat

end

end A327406.P113483979364527518

/-! ## A327406.P12023817350834279205

`A305501(A064989((n+1)²))`
-/

namespace A327406.P12023817350834279205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305501 (A064989 ((n + 1) ^ 2)).toNat

end

end A327406.P12023817350834279205

/-! ## A327406.P2022642895897215814

`A305079(A204455((n+1)²))`
-/

namespace A327406.P2022642895897215814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305079 (A204455 ((n + 1) ^ 2)).toNat

end

end A327406.P2022642895897215814

/-!
# A327407: Number of steps to reach a fixed point starting with n and repeatedly taking the quotient over the maximum divisor that is 1, prime, or whose prime indices are pairwise coprime. (A327389, A327401).

The programs for A327407, there is no canonical definition to state claims against.
-/

/-! ## A327407.P13701539306091896457

`a(A327401(n+1)-1)+1` with `a(0)=0`
-/

namespace A327407.P13701539306091896457
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a (A327401 (n + 1) - 1).toNat + 1

end

end A327407.P13701539306091896457

/-! ## A327407.P5920705364878121258

`A000005(A327401(n+1))%(n+1)`
-/

namespace A327407.P5920705364878121258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000005 (A327401 (n + 1)).toNat) (n + 1 : ℤ)

end

end A327407.P5920705364878121258

/-! ## A327407.P5192215927982514144

`∑{e}[A327656(n+1)+Δ[A070939(n)], #]`
-/

namespace A327407.P5192215927982514144
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327656 (n + 1) + (f2 (n + 1) - f2 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A327407.P5192215927982514144

/-! ## A327407.P970156901308248431

`∑{e}[A327656(n+1)+char[A052551(n)], #]`
-/

namespace A327407.P970156901308248431
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052551 n

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327656 (n + 1) + ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A327407.P970156901308248431

/-! ## A327407.P13272979163300925372

`A001222(record[2-xor(1, -n)])-A305079(n+1)`
-/

namespace A327407.P13272979163300925372
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - Int.xor 1 (-(n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat - A305079 (n + 1)

end

end A327407.P13272979163300925372

/-! ## A327407.P4472096355855163282

`A305079(∏{e}[n+1, 3*2^#])-A305079(n+1)`
-/

namespace A327407.P4472096355855163282
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305079 (∏ p ∈ Nat.primeFactors (f1 n), 3 * 2 ^ Nat.factorization (f1 n) p) - A305079 (n + 1)

end

end A327407.P4472096355855163282

/-! ## A327407.P5286300427043839433

`A233544(A327401(n+1))+A178334(n)`
-/

namespace A327407.P5286300427043839433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233544 (A327401 (n + 1)).toNat + A178334 n

end

end A327407.P5286300427043839433

/-! ## A327407.P15017961624694821286

`A000005(A327401(n+1))-A000007(n)`
-/

namespace A327407.P15017961624694821286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A327401 (n + 1)).toNat - A000007 n

end

end A327407.P15017961624694821286

/-! ## A327407.P7431638079720164244

`A239614(A327401(n+1))%A004009(n)`
-/

namespace A327407.P7431638079720164244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A239614 (A327401 (n + 1)).toNat) (A004009 n)

end

end A327407.P7431638079720164244

/-! ## A327407.P7896928885885603816

`A001222(n+1)-A235049(A305079(n+1))`
-/

namespace A327407.P7896928885885603816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1) - A235049 (A305079 (n + 1)).toNat

end

end A327407.P7896928885885603816

/-!
# A327408: Smallest integer > 0 so that its remainders modulo the first n primes are less than half their respective moduli.

The programs for A327408, there is no canonical definition to state claims against.
-/

/-! ## A327408.P15118234465507978808

`A006093(A217490(n+1)+A014310(n)+n)`
-/

namespace A327408.P15118234465507978808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (A217490 (n + 1) + (A014310 n + (n : ℤ))).toNat

end

end A327408.P15118234465507978808

/-!
# A327409: Smallest integer > 0 so that its remainders modulo the first n primes are at least half their respective moduli.

The programs for A327409, there is no canonical definition to state claims against.
-/

/-! ## A327409.P5128378801533749671

`A067149(A329317(n+1)+A139251(n))`
-/

namespace A327409.P5128378801533749671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067149 (A329317 (n + 1) + A139251 n).toNat

end

end A327409.P5128378801533749671

/-!
# A327411: a(n) = multinomial(2*n+3; 3, 2, 2, ..., 2) (n times '2').

The programs for A327411, the canonical program `A327411.P12070700994416011664` is in `Seq.B000.C044`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A327411 has offset 0).

The definition of A327411 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A327411.P12070700994416011664

`(2*(n-1)²+9*n+1)*a(n-1)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C044`.
-/

namespace A327411

/-- `(2*(n-1)²+9*n+1)*a(n-1)` -/
def P12070700994416011664.Spec : Prop :=
  ∀ n, P12070700994416011664.a n = A327411 n

theorem P12070700994416011664.correct : P12070700994416011664.Spec := by
  intro n
  simp only [A327411]

end A327411

/-! ## A327411.P15925822834474610351

`∏[C(2*n+3, 2)]/3`
-/

namespace A327411.P15925822834474610351
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 * n + 3) 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / 3

end

end A327411.P15925822834474610351

namespace A327411

/-- `∏[C(2*n+3, 2)]/3` -/
def P15925822834474610351.Spec : Prop :=
  ∀ n, P15925822834474610351.a n = (A327411 n : ℚ)

end A327411

/-! ## A327411.P6778668978965416898

`record[a(n-2)*∑[n]]` with `a(0)=1, a(1)=0, a(2)=1`
-/

namespace A327411.P6778668978965416898
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 1] fun n f1 =>
  f1 (n - 2) * (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A327411.P6778668978965416898

namespace A327411

/-- `record[a(n-2)*∑[n]]` -/
def P6778668978965416898.Spec : Prop :=
  ∀ n, (P6778668978965416898.a n : ℤ) = A327411 n

end A327411

/-! ## A327411.P3898420119019225120

`∏[∑[a(n-1)+4]]/3` with `a(0)=3`
-/

namespace A327411.P3898420119019225120
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [3] fun n f2 =>
  f2 (n - 1) + 4

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / 3

end

end A327411.P3898420119019225120

namespace A327411

/-- `∏[∑[a(n-1)+4]]/3` -/
def P3898420119019225120.Spec : Prop :=
  ∀ n, P3898420119019225120.a n = (A327411 n : ℚ)

end A327411

/-! ## A327411.P4260726822056526836

`∏[(2*n+3)*(n+1)]/3`
-/

namespace A327411.P4260726822056526836
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n + 3) * (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / 3

end

end A327411.P4260726822056526836

namespace A327411

/-- `∏[(2*n+3)*(n+1)]/3` -/
def P4260726822056526836.Spec : Prop :=
  ∀ n, P4260726822056526836.a n = (A327411 n : ℚ)

end A327411

/-!
# A327412: a(n) = multinomial(3*n+2; 2, 3, 3, ..., 3) (n times '3').

The programs for A327412, the canonical program `A327412.P4450087144738277576` is in `Seq.B000.C044`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A327412 has offset 0).

The definition of A327412 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A327412.P4450087144738277576

`(9*(n-1)^3+36*(n-1)²+47*n-27)*a(n-1)/2` with `a(0)=1`

The canonical program, it is in `Seq.B000.C044`.
-/

namespace A327412

/-- `(9*(n-1)^3+36*(n-1)²+47*n-27)*a(n-1)/2` -/
def P4450087144738277576.Spec : Prop :=
  ∀ n, P4450087144738277576.a n = (A327412 n : ℚ)

end A327412

/-! ## A327412.P1165506790488833377

`∏[C(3*(n+1), 3)]/(n+1)`
-/

namespace A327412.P1165506790488833377
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (3 * (n + 1)) 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / (n + 1 : ℚ)

end

end A327412.P1165506790488833377

namespace A327412

/-- `∏[C(3*(n+1), 3)]/(n+1)` -/
def P1165506790488833377.Spec : Prop :=
  ∀ n, P1165506790488833377.a n = (A327412 n : ℚ)

end A327412

/-! ## A327412.P16015936787085995058

`C(3*n+2, 3)*a(n-1)` with `a(0)=1`
-/

namespace A327412.P16015936787085995058
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.choose (3 * n + 2) 3 * a (n - 1)

end

end A327412.P16015936787085995058

namespace A327412

/-- `C(3*n+2, 3)*a(n-1)` -/
def P16015936787085995058.Spec : Prop :=
  ∀ n, (P16015936787085995058.a n : ℤ) = A327412 n

end A327412

/-! ## A327412.P17801184293888754686

`(∑[9*n]+1)*n*a(n-1)` with `a(0)=1`
-/

namespace A327412.P17801184293888754686
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9 * n

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  (∑ j ∈ Finset.range (n + 1), f1 j + 1) * (n * a (n - 1))

end

end A327412.P17801184293888754686

namespace A327412

/-- `(∑[9*n]+1)*n*a(n-1)` -/
def P17801184293888754686.Spec : Prop :=
  ∀ n, (P17801184293888754686.a n : ℤ) = A327412 n

end A327412

/-! ## A327412.P16351203368217586579

`n!*A025035(n+1)`
-/

namespace A327412.P16351203368217586579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * A025035 (n + 1)

end

end A327412.P16351203368217586579

namespace A327412

/-- `n!*A025035(n+1)` -/
def P16351203368217586579.Spec : Prop :=
  ∀ n, P16351203368217586579.a n = A327412 n

end A327412

/-!
# A327413: Minimal prime partition representation of odd integers.

The programs for A327413, there is no canonical definition to state claims against.
-/

/-! ## A327413.P10299115545330623415

`C(2*n+1, ∑{e}[2*n+1, #!!!])`
-/

namespace A327413.P10299115545330623415
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 * n + 1) (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorial (Nat.factorial (Nat.factorial (Nat.factorization (f1 n) p))))

end

end A327413.P10299115545330623415

/-! ## A327413.P13635284951764733036

`C(2*n+1, A001222(2*n+1)!!!)`
-/

namespace A327413.P13635284951764733036
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 * n + 1) (Nat.factorial (Nat.factorial (Nat.factorial (A001222 (2 * n + 1)).toNat)))

end

end A327413.P13635284951764733036

/-! ## A327413.P10589934315626042777

`C(Δ[n²], A063014(A206994(2*n+5)))`
-/

namespace A327413.P10589934315626042777
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat (A063014 (A206994 (2 * n + 5)).toNat).toNat

end

end A327413.P10589934315626042777

/-! ## A327413.P13344941656722280496

`C(record[A261699(n+1)], A001222(2*n+1))`
-/

namespace A327413.P13344941656722280496
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261699 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat (A001222 (2 * n + 1)).toNat

end

end A327413.P13344941656722280496

/-! ## A327413.P1675754480430949816

`C(record[A261699(n+1)], A304465(2*n+1))`
-/

namespace A327413.P1675754480430949816
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261699 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat (A304465 (2 * n + 1)).toNat

end

end A327413.P1675754480430949816

/-!
# A327414: Minimal prime partition representation of even integers.

The programs for A327414, there is no canonical definition to state claims against.
-/

/-! ## A327414.P12821762111645119534

`C(2*n, A136548(comp[2*(char[1]+n)]))`
-/

namespace A327414.P12821762111645119534
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * ((if ∃ j, f2 j = n then 1 else 0) + n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 * n) (A136548 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)).toNat

end

end A327414.P12821762111645119534

/-! ## A327414.P7577544868810556217

`C(2*n, A006530(A007318(2*(n²-n))))`
-/

namespace A327414.P7577544868810556217
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 * n) (A006530 (A007318 (2 * ((n ^ 2 : ℤ) - (n : ℤ))).toNat).toNat).toNat

end

end A327414.P7577544868810556217

/-! ## A327414.P16903436102286573568

`C(2*n, A105560(A199248(n)))`
-/

namespace A327414.P16903436102286573568
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 * n) (A105560 (A199248 n).toNat).toNat

end

end A327414.P16903436102286573568

/-! ## A327414.P18336539972053482809

`C(2*n, A032741(A096237(n+1)))`
-/

namespace A327414.P18336539972053482809
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 * n) (A032741 (A096237 (n + 1)).toNat).toNat

end

end A327414.P18336539972053482809

/-! ## A327414.P7121419594268778588

`C(2*n, A039996(A091650(n+1)))`
-/

namespace A327414.P7121419594268778588
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 * n) (A039996 (A091650 (n + 1)).toNat).toNat

end

end A327414.P7121419594268778588

/-!
# A327416: a(n) = A156289(2*n, n).

The programs for A327416, there is no canonical definition to state claims against.
-/

/-! ## A327416.P10770361206588778120

`A281478(n)/n!`
-/

namespace A327416.P10770361206588778120
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A281478 n : ℚ) / (Nat.factorial n : ℚ)

end

end A327416.P10770361206588778120

/-! ## A327416.P1650392139242696290

`A001147(n)*A298851(n)`
-/

namespace A327416.P1650392139242696290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001147 n * A298851 n

end

end A327416.P1650392139242696290

/-! ## A327416.P1846606777488020329

`A281478(n)/A000142(n)`
-/

namespace A327416.P1846606777488020329
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A281478 n : ℚ) / (A000142 n : ℚ)

end

end A327416.P1846606777488020329

/-! ## A327416.P17814454529896114579

`A281478(n)/A094587(∑[n])`
-/

namespace A327416.P17814454529896114579
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A281478 n : ℚ) / (A094587 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ)

end

end A327416.P17814454529896114579

/-!
# A327417: a(n) = A291451(2*n, n).

The programs for A327417, there is no canonical definition to state claims against.
-/

/-! ## A327417.P12016160035155417332

`A281479(n)/n!`
-/

namespace A327417.P12016160035155417332
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A281479 n : ℚ) / (Nat.factorial n : ℚ)

end

end A327417.P12016160035155417332

/-! ## A327417.P15684539384216749057

`A281479(n)/A000142(n)`
-/

namespace A327417.P15684539384216749057
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A281479 n : ℚ) / (A000142 n : ℚ)

end

end A327417.P15684539384216749057

/-!
# A327418: a(n) = A291452(2*n, n).

The programs for A327418, there is no canonical definition to state claims against.
-/

/-! ## A327418.P2325454226552939978

`A281480(n)/n!`
-/

namespace A327418.P2325454226552939978
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A281480 n : ℚ) / (Nat.factorial n : ℚ)

end

end A327418.P2325454226552939978

/-!
# A327419: Numbers, when duplicates removed and sorted, are A327446, the complement of A327093.

The programs for A327419, there is no canonical definition to state claims against.
-/

/-! ## A327419.P12824250467346285435

`A008684(A037284(n+2)+1)`
-/

namespace A327419.P12824250467346285435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008684 (A037284 (n + 2) + 1).toNat

end

end A327419.P12824250467346285435

/-! ## A327419.P11412640641334059109

`A192066(2*(n+2))-A079260(A339589(n+4))`
-/

namespace A327419.P11412640641334059109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192066 (2 * (n + 2)) - A079260 (A339589 (n + 4)).toNat

end

end A327419.P11412640641334059109

/-! ## A327419.P3105457905264901099

`and(A091570(2*(n+2)), A092693(A213106(n+2)))`
-/

namespace A327419.P3105457905264901099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A091570 (2 * (n + 2))) (A092693 (A213106 (n + 2)).toNat)

end

end A327419.P3105457905264901099

/-! ## A327419.P18321050393022177336

`and(A022005(A105476(n)), A318876(n+2))`
-/

namespace A327419.P18321050393022177336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A022005 (A105476 n).toNat) (A318876 (n + 2))

end

end A327419.P18321050393022177336

/-! ## A327419.P2333289130601724307

`A192066(2*(n+2))-A324677(A324691(n))`
-/

namespace A327419.P2333289130601724307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192066 (2 * (n + 2)) - A324677 (A324691 n).toNat

end

end A327419.P2333289130601724307

/-!
# A327420: Building sums recursively with the divisibility properties of their partial sums.

The programs for A327420, there is no canonical definition to state claims against.
-/

/-! ## A327420.P11444024008932096069

`xor(1, A327119(n+1))`
-/

namespace A327420.P11444024008932096069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A327119 (n + 1))

end

end A327420.P11444024008932096069

/-! ## A327420.P11697592173064572001

`A327119(n+1)+A057428(n)^A327119(n+1)`
-/

namespace A327420.P11697592173064572001
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A327119 (n + 1) : ℚ) + (A057428 n : ℚ) ^ (A327119 (n + 1) : ℤ)

end

end A327420.P11697592173064572001

/-! ## A327420.P14986168904470276451

`A004442(A327119(1+n))`
-/

namespace A327420.P14986168904470276451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (A327119 (1 + n)).toNat

end

end A327420.P14986168904470276451

/-! ## A327420.P13993450951802826795

`A014681(A327119(n+1)+1)-1`
-/

namespace A327420.P13993450951802826795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 (A327119 (n + 1) + 1).toNat - 1

end

end A327420.P13993450951802826795

/-! ## A327420.P15230087357068839494

`A057428(n+1)+A014681(A327119(n+1)+1)`
-/

namespace A327420.P15230087357068839494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (n + 1) + A014681 (A327119 (n + 1) + 1).toNat

end

end A327420.P15230087357068839494

/-! ## A327420.P6031230262042214663

`A327119(n+1)-A033999(A327119(n+1)+1)`
-/

namespace A327420.P6031230262042214663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327119 (n + 1) - A033999 (A327119 (n + 1) + 1).toNat

end

end A327420.P6031230262042214663

/-! ## A327420.P11473367353635405050

`A327119(n+1)+A033999(A327119(n+1)²)`
-/

namespace A327420.P11473367353635405050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327119 (n + 1) + A033999 (A327119 (n + 1) ^ 2).toNat

end

end A327420.P11473367353635405050

/-! ## A327420.P6776708990596161696

`A327119(n+1)+A094267(A327119(n+1)²)`
-/

namespace A327420.P6776708990596161696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327119 (n + 1) + A094267 (A327119 (n + 1) ^ 2).toNat

end

end A327420.P6776708990596161696

/-!
# A327421: In a Kolakoski n-chain, point at which term of penultimate sequence seq(n-1) differs from term of final sequence seq(n) in chain, when terms of seq(i) are run-lengths of seq(i+1) and the chain contains n sequences.

The programs for A327421, there is no canonical definition to state claims against.
-/

/-! ## A327421.P2476948757000754615

`A054352(A289207(n))+ceil(atan(n))-1`
-/

namespace A327421.P2476948757000754615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054352 (A289207 n).toNat + (⌈Real.arctan (n : ℝ)⌉ - 1)

end

end A327421.P2476948757000754615

/-! ## A327421.P14800154888590875568

`A216345(a(n-1))+1` with `a(0)=0, a(1)=1`
-/

namespace A327421.P14800154888590875568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  A216345 (a (n - 1)).toNat + 1

end

end A327421.P14800154888590875568

/-! ## A327421.P10368904407195543922

`A020725(A216345(a(n-1)))` with `a(0)=0, a(1)=1`
-/

namespace A327421.P10368904407195543922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  A020725 (A216345 (a (n - 1)).toNat).toNat

end

end A327421.P10368904407195543922

/-! ## A327421.P42279826293183043

`∑{e}[A003945(n), A054352(#-1)]`
-/

namespace A327421.P42279826293183043
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003945 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A054352 (Nat.factorization (f1 n).natAbs p - 1)

end

end A327421.P42279826293183043

/-!
# A327422: Positive integers k such that tan(k) > 0 (or equivalently, cot(k) > 0).

The programs for A327422, the canonical program `A327422.P14954040092538209699` is in `Seq.B000.C044`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A327422 has offset 1).

The definition of A327422 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A327422.P14954040092538209699

`lt[0, tan(n)]`

The canonical program, it is in `Seq.B000.C044`.
-/

namespace A327422

/-- `lt[0, tan(n)]` -/
def P14954040092538209699.Spec : Prop :=
  ∀ n, (P14954040092538209699.a n : ℤ) = A327422 (n + 1)

theorem P14954040092538209699.correct : P14954040092538209699.Spec := by
  intro n
  simp only [A327422, Nat.add_sub_cancel]

end A327422

/-! ## A327422.P1646547871126280847

`lt[0, sin(2*n)]`
-/

namespace A327422.P1646547871126280847
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sin (2 * n : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A327422.P1646547871126280847

namespace A327422

/-- `lt[0, sin(2*n)]` -/
def P1646547871126280847.Spec : Prop :=
  ∀ n, (P1646547871126280847.a n : ℤ) = A327422 (n + 1)

end A327422

/-! ## A327422.P1147944484210429049

`lt[0, cot(n+1)]+1`
-/

namespace A327422.P1147944484210429049
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.cot (n + 1 : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n + 1

end

end A327422.P1147944484210429049

namespace A327422

/-- `lt[0, cot(n+1)]+1` -/
def P1147944484210429049.Spec : Prop :=
  ∀ n, (P1147944484210429049.a n : ℤ) = A327422 (n + 1)

end A327422

/-! ## A327422.P7812033089119867748

`record[n^ceil(sin(2*n))]`
-/

namespace A327422.P7812033089119867748
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) ^ (⌈Real.sin (2 * n : ℝ)⌉ : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A327422.P7812033089119867748

namespace A327422

/-- `record[n^ceil(sin(2*n))]` -/
def P7812033089119867748.Spec : Prop :=
  ∀ n, P7812033089119867748.a n = (A327422 (n + 1) : ℚ)

end A327422

/-! ## A327422.P7998776629589132681

`comp[lcm(n, floor(sin(2*n)))]`
-/

namespace A327422.P7998776629589132681
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n : ℤ) ⌊Real.sin (2 * n : ℝ)⌋

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A327422.P7998776629589132681

namespace A327422

/-- `comp[lcm(n, floor(sin(2*n)))]` -/
def P7998776629589132681.Spec : Prop :=
  ∀ n, (P7998776629589132681.a n : ℤ) = A327422 (n + 1)

end A327422

/-! ## A327422.P3311773163171893470

`record[C(n, ceil(sin(2*n)))]`
-/

namespace A327422.P3311773163171893470
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n ⌈Real.sin (2 * n : ℝ)⌉.toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A327422.P3311773163171893470

namespace A327422

/-- `record[C(n, ceil(sin(2*n)))]` -/
def P3311773163171893470.Spec : Prop :=
  ∀ n, (P3311773163171893470.a n : ℤ) = A327422 (n + 1)

end A327422

/-! ## A327422.P5778249643830228186

`comp[and(n, floor(sin(2*n)))]`
-/

namespace A327422.P5778249643830228186
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) ⌊Real.sin (2 * n : ℝ)⌋

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A327422.P5778249643830228186

namespace A327422

/-- `comp[and(n, floor(sin(2*n)))]` -/
def P5778249643830228186.Spec : Prop :=
  ∀ n, (P5778249643830228186.a n : ℤ) = A327422 (n + 1)

end A327422

/-! ## A327422.P17170658209784752330

`lt[cos(n+1)/cos(n), cos(1)]`
-/

namespace A327422.P17170658209784752330
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.cos (n + 1 : ℝ) / Real.cos (n : ℝ)

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.cos (1 : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A327422.P17170658209784752330

namespace A327422

/-- `lt[cos(n+1)/cos(n), cos(1)]` -/
def P17170658209784752330.Spec : Prop :=
  ∀ n, (P17170658209784752330.a n : ℤ) = A327422 (n + 1)

end A327422

/-! ## A327422.P2775271934358870979

`lt[cot(round((1-2*n)/2)), 0]`
-/

namespace A327422.P2775271934358870979
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.cot (SequenceMachineLib.roundAway ((1 - (2 * n : ℤ) : ℚ) / 2) : ℝ)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℝ)) n

end

end A327422.P2775271934358870979

namespace A327422

/-- `lt[cot(round((1-2*n)/2)), 0]` -/
def P2775271934358870979.Spec : Prop :=
  ∀ n, (P2775271934358870979.a n : ℤ) = A327422 (n + 1)

end A327422

/-! ## A327422.P8521599551953014475

`∪[A004084(n+1), A062389(n+1)]`
-/

namespace A327422.P8521599551953014475
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004084 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062389 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A327422.P8521599551953014475

namespace A327422

/-- `∪[A004084(n+1), A062389(n+1)]` -/
def P8521599551953014475.Spec : Prop :=
  ∀ n, (P8521599551953014475.a n : ℤ) = A327422 (n + 1)

end A327422

/-! ## A327422.P9396101398304282836

`∪[A062389(n+1), A022844(n)+1]`
-/

namespace A327422.P9396101398304282836
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062389 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022844 n + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A327422.P9396101398304282836

namespace A327422

/-- `∪[A062389(n+1), A022844(n)+1]` -/
def P9396101398304282836.Spec : Prop :=
  ∀ n, (P9396101398304282836.a n : ℤ) = A327422 (n + 1)

end A327422

/-! ## A327422.P5341663490780272686

`∪[A062389(n+1), A246451(n+1)]`
-/

namespace A327422.P5341663490780272686
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062389 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246451 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A327422.P5341663490780272686

namespace A327422

/-- `∪[A062389(n+1), A246451(n+1)]` -/
def P5341663490780272686.Spec : Prop :=
  ∀ n, (P5341663490780272686.a n : ℤ) = A327422 (n + 1)

end A327422

/-! ## A327422.P700636760411284120

`∪[A332480(n+1), A332483(n+1)]`
-/

namespace A327422.P700636760411284120
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332480 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332483 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A327422.P700636760411284120

namespace A327422

/-- `∪[A332480(n+1), A332483(n+1)]` -/
def P700636760411284120.Spec : Prop :=
  ∀ n, (P700636760411284120.a n : ℤ) = A327422 (n + 1)

end A327422

/-! ## A327422.P10492437759944736659

`A026317(n+5)-5`
-/

namespace A327422.P10492437759944736659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026317 (n + 5) - 5

end

end A327422.P10492437759944736659

namespace A327422

/-- `A026317(n+5)-5` -/
def P10492437759944736659.Spec : Prop :=
  ∀ n, P10492437759944736659.a n = A327422 (n + 1)

end A327422

/-! ## A327422.P15892559903552396837

`∪[A140758(2*n+1), A121381(n+1)]`
-/

namespace A327422.P15892559903552396837
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140758 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121381 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A327422.P15892559903552396837

namespace A327422

/-- `∪[A140758(2*n+1), A121381(n+1)]` -/
def P15892559903552396837.Spec : Prop :=
  ∀ n, (P15892559903552396837.a n : ℤ) = A327422 (n + 1)

end A327422

/-! ## A327422.P17621587615306023743

`∪[A140758(2*n+1), A004084(n+2)]`
-/

namespace A327422.P17621587615306023743
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140758 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004084 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A327422.P17621587615306023743

namespace A327422

/-- `∪[A140758(2*n+1), A004084(n+2)]` -/
def P17621587615306023743.Spec : Prop :=
  ∀ n, (P17621587615306023743.a n : ℤ) = A327422 (n + 1)

end A327422

/-! ## A327422.P10915078197066959575

`∩[A054386(n+1), A258048(n)]`
-/

namespace A327422.P10915078197066959575
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054386 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258048 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A327422.P10915078197066959575

namespace A327422

/-- `∩[A054386(n+1), A258048(n)]` -/
def P10915078197066959575.Spec : Prop :=
  ∀ n, (P10915078197066959575.a n : ℤ) = A327422 (n + 1)

end A327422

/-! ## A327422.P11311810917641805367

`∩[A332485(n+1), A332486(n+1)]`
-/

namespace A327422.P11311810917641805367
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332485 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332486 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A327422.P11311810917641805367

namespace A327422

/-- `∩[A332485(n+1), A332486(n+1)]` -/
def P11311810917641805367.Spec : Prop :=
  ∀ n, (P11311810917641805367.a n : ℤ) = A327422 (n + 1)

end A327422

/-! ## A327422.P13251640327494218535

`∩[A054386(n+1), A246443(n+1)]`
-/

namespace A327422.P13251640327494218535
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054386 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246443 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A327422.P13251640327494218535

namespace A327422

/-- `∩[A054386(n+1), A246443(n+1)]` -/
def P13251640327494218535.Spec : Prop :=
  ∀ n, (P13251640327494218535.a n : ℤ) = A327422 (n + 1)

end A327422

/-! ## A327422.P18069451747981394884

`lt[ratio[cos(n)], cos(1)]`
-/

namespace A327422.P18069451747981394884
noncomputable section

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.cos (n : ℝ)

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) / f2 n

def f3 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.cos (1 : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f3 j) n

end

end A327422.P18069451747981394884

namespace A327422

/-- `lt[ratio[cos(n)], cos(1)]` -/
def P18069451747981394884.Spec : Prop :=
  ∀ n, (P18069451747981394884.a n : ℤ) = A327422 (n + 1)

end A327422

/-!
# A327423: Positive integers k such that tan(k) < 0 (or equivalently, cot(k) < 0).

The programs for A327423, there is no canonical definition to state claims against.
-/

/-! ## A327423.P17947608738825912429

`lt[tan(n), 0]`
-/

namespace A327423.P17947608738825912429
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.tan (n : ℝ)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℝ)) n

end

end A327423.P17947608738825912429

/-! ## A327423.P15118679817569690629

`lt[γ, ratio[cos(n)]]`
-/

namespace A327423.P15118679817569690629
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.eulerMascheroniConstant

def f3 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.cos (n : ℝ)

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) / f3 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A327423.P15118679817569690629

/-! ## A327423.P13332347295878825838

`lt[sin(2*n), 0]`
-/

namespace A327423.P13332347295878825838
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sin (2 * n : ℝ)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℝ)) n

end

end A327423.P13332347295878825838

/-! ## A327423.P16330999458843546

`lt[0, cot(n+11)]`
-/

namespace A327423.P16330999458843546
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.cot (n + 11 : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A327423.P16330999458843546

/-! ## A327423.P13213235190075703938

`eq[0, floor(exp(tan(n)))]`
-/

namespace A327423.P13213235190075703938
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.exp (Real.tan (n : ℝ))⌋

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A327423.P13213235190075703938

/-! ## A327423.P38877640504250443

`lt[0, cos(2*(n+4))]`
-/

namespace A327423.P38877640504250443
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.cos (2 * (n + 4) : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A327423.P38877640504250443

/-! ## A327423.P6954940644011131830

`lt[0, sin(n-3+n)]`
-/

namespace A327423.P6954940644011131830
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sin ((n : ℤ) - 3 + (n : ℤ) : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A327423.P6954940644011131830

/-! ## A327423.P10325867522268484096

`eq[0, floor(exp(sin(2*n)))]`
-/

namespace A327423.P10325867522268484096
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.exp (Real.sin (2 * n : ℝ))⌋

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A327423.P10325867522268484096

/-! ## A327423.P16879015366250761457

`lt[Δ[abs(cos(n-2))], 0]`
-/

namespace A327423.P16879015366250761457
noncomputable section

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  |Real.cos ((n : ℤ) - 2 : ℝ)|

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℝ)) n

end

end A327423.P16879015366250761457

/-! ## A327423.P9309332341155530048

`lt[0, Δ[abs(sin(n-2))]]`
-/

namespace A327423.P9309332341155530048
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  |Real.sin ((n : ℤ) - 2 : ℝ)|

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A327423.P9309332341155530048

/-!
# A327424: Number of unlabeled, non-connected or empty antichains of nonempty subsets of {1..n}.

The programs for A327424, there is no canonical definition to state claims against.
-/

/-! ## A327424.P16529022574776827675

`A327808(n)+1`
-/

namespace A327424.P16529022574776827675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327808 n + 1

end

end A327424.P16529022574776827675

/-! ## A327424.P17652462424832752714

`∑[(1-char[1])*A327426(n)]`
-/

namespace A327424.P17652462424832752714
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)) * A327426 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A327424.P17652462424832752714

/-! ## A327424.P339841221544841637

`A003182(n)-∑[A261006(n)]`
-/

namespace A327424.P339841221544841637
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261006 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003182 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A327424.P339841221544841637

/-! ## A327424.P17843432154713968885

`∑[A006602(n)-A261006(n)]`
-/

namespace A327424.P17843432154713968885
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006602 n - A261006 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A327424.P17843432154713968885

/-!
# A327426: Number of non-connected, unlabeled, antichain covers of {1..n} (vertex-connectivity 0).

The programs for A327426, there is no canonical definition to state claims against.
-/

/-! ## A327426.P6384924767102265070

`A261005(round(acot(n)+n))-A261006(n)`
-/

namespace A327426.P6384924767102265070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261005 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat - A261006 n

end

end A327426.P6384924767102265070

/-! ## A327426.P12185076499111144745

`char[n^6]+A261005(n)-A261006(n)`
-/

namespace A327426.P12185076499111144745
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 6

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) + (A261005 n - A261006 n)

end

end A327426.P12185076499111144745

/-! ## A327426.P8298263915560484504

`A327437(n)%A306505(A318122(n))`
-/

namespace A327426.P8298263915560484504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A327437 n) (A306505 (A318122 n).toNat)

end

end A327426.P8298263915560484504

/-! ## A327426.P11506577136745616481

`A006602(A233583(n+1))-A261006(n)`
-/

namespace A327426.P11506577136745616481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006602 (A233583 (n + 1)).toNat - A261006 n

end

end A327426.P11506577136745616481

/-!
# A327427: Record gaps between primes which are palindromic in base 10.

The programs for A327427, there is no canonical definition to state claims against.
-/

/-! ## A327427.P11828693746938122316

`record[A037010(n+1)]`
-/

namespace A327427.P11828693746938122316
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037010 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A327427.P11828693746938122316

/-! ## A327427.P14522113551083103018

`record[Δ[A002385(n+1)]]`
-/

namespace A327427.P14522113551083103018
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002385 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A327427.P14522113551083103018

/-! ## A327427.P8029988034751595970

`record[A037010(n)/a(floor((n-1)/n))]` with `a(0)=1`
-/

namespace A327427.P8029988034751595970
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1] fun n f1 =>
  (A037010 n : ℚ) / f1 ⌊((n : ℤ) - 1 : ℚ) / (n : ℚ)⌋.toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A327427.P8029988034751595970

/-! ## A327427.P3176152272211358886

`record[Δ[A069217(n+1)]]`
-/

namespace A327427.P3176152272211358886
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069217 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A327427.P3176152272211358886

/-! ## A327427.P2240512922128712732

`record[A002385(n+1)-A069217(n+1)]`
-/

namespace A327427.P2240512922128712732
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002385 (n + 1) - A069217 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A327427.P2240512922128712732

/-!
# A327428: Record gaps between palindromic primes (lower end): primes A002385(k) where A002385(k+1) - A002385(k) exceeds A002385(j+1) - A002385(j) for all j < k.

The programs for A327428, there is no canonical definition to state claims against.
-/

/-! ## A327428.P8263001576116003255

`A336116(xor(2, a(n-2))+2)` with `a(0)=2, a(1)=3`
-/

namespace A327428.P8263001576116003255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 3] fun n a =>
  A336116 (Int.xor 2 (a (n - 2)) + 2).toNat

end

end A327428.P8263001576116003255

/-! ## A327428.P11765916543147145507

`A140549(A183458(n+2))`
-/

namespace A327428.P11765916543147145507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140549 (A183458 (n + 2)).toNat

end

end A327428.P11765916543147145507

/-!
# A327429: Record gaps between palindromic primes (upper end) (compare A327428, which gives lower ends of these gaps).

The programs for A327429, there is no canonical definition to state claims against.
-/

/-! ## A327429.P16712730579593098550

`A078790(n+1)+A000122(A000262(n))`
-/

namespace A327429.P16712730579593098550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078790 (n + 1) + A000122 (A000262 n).toNat

end

end A327429.P16712730579593098550

/-! ## A327429.P7461516876769570841

`A078790(n+1)+A000122(A303566(n))`
-/

namespace A327429.P7461516876769570841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078790 (n + 1) + A000122 (A303566 n).toNat

end

end A327429.P7461516876769570841

/-! ## A327429.P12649661712326624697

`A078790(n+1)+A000122(A327437(n))`
-/

namespace A327429.P12649661712326624697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078790 (n + 1) + A000122 (A327437 n).toNat

end

end A327429.P12649661712326624697

/-!
# A327430: Numbers k such that there are exactly 5 numbers j for which binomial(k, floor(k/2)) / binomial(k,j) is an integer, i.e., A080383(k) = 5.

The programs for A327430, there is no canonical definition to state claims against.
-/

/-! ## A327430.P8680882805434796292

`eq[5, A080383(n)]`
-/

namespace A327430.P8680882805434796292
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080383 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A327430.P8680882805434796292

/-!
# A327434: Prime(n)^2 - prime(n-1)*prime(n+1) for n in A046868.

The programs for A327434, the canonical program `A327434.P6965097301390461405` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A327434 has offset 1).

The definition of A327434 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5198 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A327434.P7336163449422360201

`A056221(A333231(n+1))`
-/

namespace A327434.P7336163449422360201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056221 (A333231 (n + 1)).toNat

end

end A327434.P7336163449422360201

namespace A327434

/-- `A056221(A333231(n+1))` -/
def P7336163449422360201.Spec : Prop :=
  ∀ n, P7336163449422360201.a n = A327434 (n + 1)

end A327434

/-! ## A327434.P6965097301390461405

`A056221(A046868(n+1)-1)`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A327434

/-- `A056221(A046868(n+1)-1)` -/
def P6965097301390461405.Spec : Prop :=
  ∀ n, P6965097301390461405.a n = A327434 (n + 1)

theorem P6965097301390461405.correct : P6965097301390461405.Spec := by
  intro n
  simp only [A327434, Nat.add_sub_cancel]

end A327434

/-! ## A327434.P12989923597598164912

`A056140(A046869(n+1))`
-/

namespace A327434.P12989923597598164912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056140 (A046869 (n + 1)).toNat

end

end A327434.P12989923597598164912

namespace A327434

/-- `A056140(A046869(n+1))` -/
def P12989923597598164912.Spec : Prop :=
  ∀ n, P12989923597598164912.a n = A327434 (n + 1)

end A327434

/-! ## A327434.P10089995568392901283

`A056141(or(1, A046869(n+1)))`
-/

namespace A327434.P10089995568392901283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056141 (Int.lor 1 (A046869 (n + 1))).toNat

end

end A327434.P10089995568392901283

namespace A327434

/-- `A056141(or(1, A046869(n+1)))` -/
def P10089995568392901283.Spec : Prop :=
  ∀ n, P10089995568392901283.a n = A327434 (n + 1)

end A327434

/-! ## A327434.P9509663625801174696

`A056141(A000040(A046868(n+1)))`
-/

namespace A327434.P9509663625801174696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056141 (A000040 (A046868 (n + 1)).toNat).toNat

end

end A327434.P9509663625801174696

namespace A327434

/-- `A056141(A000040(A046868(n+1)))` -/
def P9509663625801174696.Spec : Prop :=
  ∀ n, P9509663625801174696.a n = A327434 (n + 1)

end A327434

/-! ## A327434.P4343905022576284533

`A056141(A046869(n+1)+A000038(n+1))`
-/

namespace A327434.P4343905022576284533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056141 (A046869 (n + 1) + A000038 (n + 1)).toNat

end

end A327434.P4343905022576284533

namespace A327434

/-- `A056141(A046869(n+1)+A000038(n+1))` -/
def P4343905022576284533.Spec : Prop :=
  ∀ n, P4343905022576284533.a n = A327434 (n + 1)

end A327434

/-! ## A327434.P6526351288962824547

`A056141(A046869(n+1)%A054735(n+1)²)`
-/

namespace A327434.P6526351288962824547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056141 (Int.tmod (A046869 (n + 1)) (A054735 (n + 1) ^ 2)).toNat

end

end A327434.P6526351288962824547

namespace A327434

/-- `A056141(A046869(n+1)%A054735(n+1)²)` -/
def P6526351288962824547.Spec : Prop :=
  ∀ n, P6526351288962824547.a n = A327434 (n + 1)

end A327434

/-! ## A327434.P10729786975239453266

`A056221(∑[A333253(n+1)])`
-/

namespace A327434.P10729786975239453266
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333253 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056221 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A327434.P10729786975239453266

namespace A327434

/-- `A056221(∑[A333253(n+1)])` -/
def P10729786975239453266.Spec : Prop :=
  ∀ n, P10729786975239453266.a n = A327434 (n + 1)

end A327434

/-!
# A327435: a(n) is the largest (2n+1)-digit palindrome that is the product of two numbers having an equal number of digits.

The programs for A327435, there is no canonical definition to state claims against.
-/

/-! ## A327435.P4032767180275819603

`A308803(2*n+1)`
-/

namespace A327435.P4032767180275819603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308803 (2 * n + 1)

end

end A327435.P4032767180275819603

/-! ## A327435.P3795062567090459739

`record[A308803(A005131(n+1)+1)]`
-/

namespace A327435.P3795062567090459739
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308803 (A005131 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A327435.P3795062567090459739

/-! ## A327435.P18096725004173233614

`record[A308803(A133772(n+1))]`
-/

namespace A327435.P18096725004173233614
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308803 (A133772 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A327435.P18096725004173233614

/-!
# A327437: Number of unlabeled antichains of nonempty subsets of {1..n} that are either non-connected or non-covering (spanning edge-connectivity 0).

The programs for A327437, there is no canonical definition to state claims against.
-/

/-! ## A327437.P10607098893997441925

`A306505(n)-(A261006(n)-C(2, n+2))`
-/

namespace A327437.P10607098893997441925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306505 n - (A261006 n - (Nat.choose 2 (n + 2) : ℤ))

end

end A327437.P10607098893997441925

/-! ## A327437.P16801090533505884344

`A306505(A028310(n))-A261006(n)`
-/

namespace A327437.P16801090533505884344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306505 (A028310 n).toNat - A261006 n

end

end A327437.P16801090533505884344

/-! ## A327437.P17377662497374991422

`A306505(n)-A261006(n)%A306505(n)`
-/

namespace A327437.P17377662497374991422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306505 n - Int.tmod (A261006 n) (A306505 n)

end

end A327437.P17377662497374991422

/-!
# A327440: a(n) = floor(3*n/10).

The programs for A327440, the canonical program `A327440.P14884579948487879085` is in `Seq.B000.C044`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A327440 has offset 0).

The definition of A327440 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(3*n/10)` (program `A327440.P14884579948487879085`, by `A327440.P14884579948487879085.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A327440.P14884579948487879085

`floor(3*n/10)`

The canonical program, it is in `Seq.B000.C044`.
-/

namespace A327440

/-- `floor(3*n/10)` -/
def P14884579948487879085.Spec : Prop :=
  ∀ n, P14884579948487879085.a n = A327440 n

theorem P14884579948487879085.correct : P14884579948487879085.Spec := by
  intro n
  simp only [A327440]

end A327440

/-! ## A327440.P10419975361399652990

`ogf((x^4+x^7+x^10)/(1-x-x^10+x^11))`
-/

namespace A327440.P10419975361399652990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 1] [1, -1, 0, 0, 0, 0, 0, 0, 0, 0, -1, 1] n

end

end A327440.P10419975361399652990

namespace A327440

/-- `ogf((x^4+x^7+x^10)/(1-x-x^10+x^11))` -/
def P10419975361399652990.Spec : Prop :=
  ∀ n, P10419975361399652990.a n = A327440 n

end A327440

/-! ## A327440.P14131280166527101216

`ceil(3/(10*acot(n)))-1`
-/

namespace A327440.P14131280166527101216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈3 / (10 * SequenceMachineLib.acot (n : ℝ))⌉ - 1

end

end A327440.P14131280166527101216

namespace A327440

/-- `ceil(3/(10*acot(n)))-1` -/
def P14131280166527101216.Spec : Prop :=
  ∀ n, P14131280166527101216.a n = A327440 n

end A327440

/-! ## A327440.P1980014059427366249

`n-floor(∑[floor(a(n-2))]/5)` with `a(0)=0, a(1)=7, a(2)=5, a(3)=3, a(4)=3, a(5)=4`

`floor` is left out, it is the identity on integers.
-/

namespace A327440.P1980014059427366249
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 7, 5, 3, 3, 4] fun n f1 =>
  f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ⌊((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / 5⌋

end

end A327440.P1980014059427366249

namespace A327440

/-- `n-floor(∑[floor(a(n-2))]/5)` -/
def P1980014059427366249.Spec : Prop :=
  ∀ n, P1980014059427366249.a n = A327440 n

end A327440

/-! ## A327440.P114354096600606218

`∑[A144597(abs(1-n))]`
-/

namespace A327440.P114354096600606218
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144597 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A327440.P114354096600606218

namespace A327440

/-- `∑[A144597(abs(1-n))]` -/
def P114354096600606218.Spec : Prop :=
  ∀ n, P114354096600606218.a n = A327440 n

end A327440

/-! ## A327440.P14416998312010238824

`∑[char[A047212(2*n+3)]]`
-/

namespace A327440.P14416998312010238824
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047212 (2 * n + 3)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A327440.P14416998312010238824

namespace A327440

/-- `∑[char[A047212(2*n+3)]]` -/
def P14416998312010238824.Spec : Prop :=
  ∀ n, (P14416998312010238824.a n : ℤ) = A327440 n

end A327440

/-! ## A327440.P2464017778813326993

`A057357(n-(a(n-1)+1))` with `a(0)=0`
-/

namespace A327440.P2464017778813326993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A057357 ((n : ℤ) - (a (n - 1) + 1)).toNat

end

end A327440.P2464017778813326993

namespace A327440

/-- `A057357(n-(a(n-1)+1))` -/
def P2464017778813326993.Spec : Prop :=
  ∀ n, P2464017778813326993.a n = A327440 n

end A327440

/-! ## A327440.P6872736235230939628

`A144597(n-1)+a(n-1)` with `a(0)=0`
-/

namespace A327440.P6872736235230939628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A144597 (n - 1) + a (n - 1)

end

end A327440.P6872736235230939628

namespace A327440

/-- `A144597(n-1)+a(n-1)` -/
def P6872736235230939628.Spec : Prop :=
  ∀ n, P6872736235230939628.a n = A327440 n

end A327440

/-! ## A327440.P14762459364481706532

`A057357(n-1-a(n-1))` with `a(0)=0`
-/

namespace A327440.P14762459364481706532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A057357 ((n : ℤ) - 1 - a (n - 1)).toNat

end

end A327440.P14762459364481706532

namespace A327440

/-- `A057357(n-1-a(n-1))` -/
def P14762459364481706532.Spec : Prop :=
  ∀ n, P14762459364481706532.a n = A327440 n

end A327440

/-! ## A327440.P1661807674328278638

`A004526(A057355(n))`
-/

namespace A327440.P1661807674328278638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A057355 n).toNat

end

end A327440.P1661807674328278638

namespace A327440

/-- `A004526(A057355(n))` -/
def P1661807674328278638.Spec : Prop :=
  ∀ n, P1661807674328278638.a n = A327440 n

end A327440

/-! ## A327440.P2285866594634979597

`A004526(A047416(n+1)-n)`
-/

namespace A327440.P2285866594634979597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A047416 (n + 1) - (n : ℤ)).toNat

end

end A327440.P2285866594634979597

namespace A327440

/-- `A004526(A047416(n+1)-n)` -/
def P2285866594634979597.Spec : Prop :=
  ∀ n, P2285866594634979597.a n = A327440 n

end A327440

/-! ## A327440.P16649976567216062037

`A002264(n-A008616(n+1))`
-/

namespace A327440.P16649976567216062037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 ((n : ℤ) - A008616 (n + 1)).toNat

end

end A327440.P16649976567216062037

namespace A327440

/-- `A002264(n-A008616(n+1))` -/
def P16649976567216062037.Spec : Prop :=
  ∀ n, P16649976567216062037.a n = A327440 n

end A327440

/-! ## A327440.P9512509673360317763

`A002264(A110532(n+1)+A002266(n))`
-/

namespace A327440.P9512509673360317763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A110532 (n + 1) + A002266 n).toNat

end

end A327440.P9512509673360317763

namespace A327440

/-- `A002264(A110532(n+1)+A002266(n))` -/
def P9512509673360317763.Spec : Prop :=
  ∀ n, P9512509673360317763.a n = A327440 n

end A327440

/-! ## A327440.P16120034049112765369

`A057360(n-A002266(n+2))`
-/

namespace A327440.P16120034049112765369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057360 ((n : ℤ) - A002266 (n + 2)).toNat

end

end A327440.P16120034049112765369

namespace A327440

/-- `A057360(n-A002266(n+2))` -/
def P16120034049112765369.Spec : Prop :=
  ∀ n, P16120034049112765369.a n = A327440 n

end A327440

/-! ## A327440.P14286467704220784254

`A004526(n-A057354(n+2))`
-/

namespace A327440.P14286467704220784254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 ((n : ℤ) - A057354 (n + 2)).toNat

end

end A327440.P14286467704220784254

namespace A327440

/-- `A004526(n-A057354(n+2))` -/
def P14286467704220784254.Spec : Prop :=
  ∀ n, P14286467704220784254.a n = A327440 n

end A327440

/-! ## A327440.P6493604540914154036

`A001068(A047226(n+1))-A047226(n+1)`
-/

namespace A327440.P6493604540914154036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001068 (A047226 (n + 1)).toNat - A047226 (n + 1)

end

end A327440.P6493604540914154036

namespace A327440

/-- `A001068(A047226(n+1))-A047226(n+1)` -/
def P6493604540914154036.Spec : Prop :=
  ∀ n, P6493604540914154036.a n = A327440 n

end A327440

/-! ## A327440.P2885870393940180921

`A002265(A239492(n))`
-/

namespace A327440.P2885870393940180921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A239492 n).toNat

end

end A327440.P2885870393940180921

namespace A327440

/-- `A002265(A239492(n))` -/
def P2885870393940180921.Spec : Prop :=
  ∀ n, P2885870393940180921.a n = A327440 n

end A327440

/-! ## A327440.P673399905379345924

`A002265(comp[A016969(n)])`
-/

namespace A327440.P673399905379345924
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016969 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A327440.P673399905379345924

namespace A327440

/-- `A002265(comp[A016969(n)])` -/
def P673399905379345924.Spec : Prop :=
  ∀ n, P673399905379345924.a n = A327440 n

end A327440

/-! ## A327440.P12468145743954717649

`A002265(A047226(n+1))`
-/

namespace A327440.P12468145743954717649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A047226 (n + 1)).toNat

end

end A327440.P12468145743954717649

namespace A327440

/-- `A002265(A047226(n+1))` -/
def P12468145743954717649.Spec : Prop :=
  ∀ n, P12468145743954717649.a n = A327440 n

end A327440

/-! ## A327440.P7292471828137347216

`A002265(A047256(n+1))`
-/

namespace A327440.P7292471828137347216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A047256 (n + 1)).toNat

end

end A327440.P7292471828137347216

namespace A327440

/-- `A002265(A047256(n+1))` -/
def P7292471828137347216.Spec : Prop :=
  ∀ n, P7292471828137347216.a n = A327440 n

end A327440

/-!
# A327441: a(n) = max_{p <= n} (p'-p), where p and p' are successive primes.

The programs for A327441, there is no canonical definition to state claims against.
-/

/-! ## A327441.P966541528136673967

`A063095(A000720(n+2))`
-/

namespace A327441.P966541528136673967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063095 (A000720 (n + 2)).toNat

end

end A327441.P966541528136673967

/-! ## A327441.P17141319310989537583

`A166594(n+2)-A000007(n)`
-/

namespace A327441.P17141319310989537583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166594 (n + 2) - A000007 n

end

end A327441.P17141319310989537583

/-! ## A327441.P15788969589037704866

`A005250(∑[char[A002386(n+1)-2]])`
-/

namespace A327441.P15788969589037704866
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002386 (n + 1) - 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005250 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A327441.P15788969589037704866

/-! ## A327441.P15958662817692790130

`A166594(n+2)/A000032(A019431(2*n))`
-/

namespace A327441.P15958662817692790130
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A166594 (n + 2) : ℚ) / (A000032 (A019431 (2 * n)).toNat : ℚ)

end

end A327441.P15958662817692790130

/-! ## A327441.P15007665700704452891

`A063095(A230980(n+2))`
-/

namespace A327441.P15007665700704452891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063095 (A230980 (n + 2)).toNat

end

end A327441.P15007665700704452891

/-! ## A327441.P11578084297419647757

`A166594(n+2)/A014963(A048765(n+2))`
-/

namespace A327441.P11578084297419647757
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A166594 (n + 2) : ℚ) / (A014963 (A048765 (n + 2)).toNat : ℚ)

end

end A327441.P11578084297419647757

/-! ## A327441.P10443401104642727581

`A000010(∑[A078461(A016778(n))])`
-/

namespace A327441.P10443401104642727581
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078461 (A016778 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A327441.P10443401104642727581

/-! ## A327441.P7414982002080710768

`A000523(A346310(A053738(n+1)-n))`
-/

namespace A327441.P7414982002080710768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000523 (A346310 (A053738 (n + 1) - (n : ℤ)).toNat).toNat

end

end A327441.P7414982002080710768

/-! ## A327441.P2394978992328599237

`∏{e}[A132383(n), #]`
-/

namespace A327441.P2394978992328599237
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132383 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A327441.P2394978992328599237

/-! ## A327441.P8872115744411932747

`A005361(A132383(n))`
-/

namespace A327441.P8872115744411932747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005361 (A132383 n).toNat

end

end A327441.P8872115744411932747

/-!
# A327442: a(0) = 0; thereafter a(n) = a(n-1) + phi(n) if phi(n) > a(n-1), otherwise a(n) = a(n-1) - phi(n), where phi is the Euler phi-function A000010.

The programs for A327442, there is no canonical definition to state claims against.
-/

/-! ## A327442.P9173586764674958691

`∑{e}[A000244(n), A068773(#)]`
-/

namespace A327442.P9173586764674958691
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000244 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A068773 (Nat.factorization (f1 n).natAbs p)

end

end A327442.P9173586764674958691

/-!
# A327443: Indices of zeros in A327442.

The programs for A327443, there is no canonical definition to state claims against.
-/

/-! ## A327443.P15144527204027008162

`eq[0, A327442(n)]`
-/

namespace A327443.P15144527204027008162
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327442 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A327443.P15144527204027008162

/-! ## A327443.P2872650694508159705

`record[n-A000009(n)*A327442(n)]`
-/

namespace A327443.P2872650694508159705
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A000009 n * A327442 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A327443.P2872650694508159705

/-! ## A327443.P11898210492549566140

`record[n-A000700(n)*A327442(n)]`
-/

namespace A327443.P11898210492549566140
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A000700 n * A327442 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A327443.P11898210492549566140

/-! ## A327443.P3220129539665425913

`lt[A327442(n), A020639(A000010(n+1))]`
-/

namespace A327443.P3220129539665425913
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327442 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A000010 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A327443.P3220129539665425913

/-! ## A327443.P5210284096406228217

`lt[A327442(n), A020639(A109606(n+1)+1)]`
-/

namespace A327443.P5210284096406228217
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327442 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A109606 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A327443.P5210284096406228217

/-!
# A327445: Terms of A327093, sorted.

The programs for A327445, there is no canonical definition to state claims against.
-/

/-! ## A327445.P16228637273536561279

`lt[0, char[A327093(n+1)]]`
-/

namespace A327445.P16228637273536561279
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327093 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A327445.P16228637273536561279

/-! ## A327445.P10122502448784896212

`comp[A327446(n+1)-1]+1`
-/

namespace A327445.P10122502448784896212
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327446 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A327445.P10122502448784896212

/-! ## A327445.P12700181030824692990

`eq[1, char[A327093(A328399(n))]]`
-/

namespace A327445.P12700181030824692990
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327093 (A328399 n).toNat

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A327445.P12700181030824692990

/-! ## A327445.P4613735797061763941

`comp[A014681(comp[A064494(n+1)])]`
-/

namespace A327445.P4613735797061763941
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064494 (n + 1)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A327445.P4613735797061763941

/-! ## A327445.P16708896579929438853

`comp[A014681(comp[A064590(n+1)])]`
-/

namespace A327445.P16708896579929438853
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064590 (n + 1)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A327445.P16708896579929438853

/-! ## A327445.P10934407068862417764

`comp[A023443(A327446(n+1))]+1`
-/

namespace A327445.P10934407068862417764
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A327446 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A327445.P10934407068862417764

/-! ## A327445.P2248412699403193315

`eq[2, char[A327093(A028310(n))]+1]`
-/

namespace A327445.P2248412699403193315
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327093 (A028310 n).toNat

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f3 j = (n : ℤ) then 1 else 0) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A327445.P2248412699403193315

/-! ## A327445.P16107749697469882790

`comp[A001489(n)+comp[A327093(n+1)]+n]`
-/

namespace A327445.P16107749697469882790
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327093 (n + 1)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001489 n + (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n : ℤ) + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A327445.P16107749697469882790

/-!
# A327446: Numbers missing from A327093.

The programs for A327446, there is no canonical definition to state claims against.
-/

/-! ## A327446.P15705493450826518742

`comp[A327093(n+1)-1]+1`
-/

namespace A327446.P15705493450826518742
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327093 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A327446.P15705493450826518742

/-! ## A327446.P6717656307779470870

`eq[char[A327093(n+1)], A000007(n)]`
-/

namespace A327446.P6717656307779470870
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327093 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A327446.P6717656307779470870

/-! ## A327446.P9033249137180020672

`eq[char[A327093(n+1)], A000038(n)]`
-/

namespace A327446.P9033249137180020672
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327093 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A327446.P9033249137180020672

/-! ## A327446.P4280253197973871854

`eq[A121907(n)%3, char[A327093(n+1)]]`
-/

namespace A327446.P4280253197973871854
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A121907 n) 3

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327093 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℤ)) n

end

end A327446.P4280253197973871854

/-! ## A327446.P18283712128882265058

`eq[A028310(n)-n, char[A327093(n+1)]]`
-/

namespace A327446.P18283712128882265058
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n - (n : ℤ)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327093 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℤ)) n

end

end A327446.P18283712128882265058

/-! ## A327446.P12177316433118355315

`eq[char[A327093(n+1)], A014197(2*n+1)]`
-/

namespace A327446.P12177316433118355315
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327093 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014197 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A327446.P12177316433118355315

/-!
# A327447: a(n) = 4*p(n-1)*p(n+1) - p(n)^2, where p(k) = k-th prime.

The programs for A327447, the canonical program `A327447.P12716650264261087604` is in `Seq.B001.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A327447 has offset 2).

The definition of A327447 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `4*A000040(n+1)*A000040(n+3)-A000040(n+2)²` (program `A327447.P12716650264261087604`, by `A327447.P12716650264261087604.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A327447.P12716650264261087604

`4*A000040(n+1)*A000040(n+3)-A000040(n+2)²`

The canonical program, it is in `Seq.B001.C012`.
-/

namespace A327447

/-- `4*A000040(n+1)*A000040(n+3)-A000040(n+2)²` -/
def P12716650264261087604.Spec : Prop :=
  ∀ n, P12716650264261087604.a n = A327447 (n + 2)

theorem P12716650264261087604.correct : P12716650264261087604.Spec := by
  intro n
  simp only [A327447, Nat.add_sub_cancel]

end A327447

/-! ## A327447.P14918525340719492324

`3*p?[round(8*n/7)]*p?[2*n+5]-A056221(n+1)`
-/

namespace A327447.P14918525340719492324
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (8 * ((n : ℚ) / 7))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) * (f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n) : ℤ) - A056221 (n + 1)

end

end A327447.P14918525340719492324

namespace A327447

/-- `3*p?[round(8*n/7)]*p?[2*n+5]-A056221(n+1)` -/
def P14918525340719492324.Spec : Prop :=
  ∀ n, P14918525340719492324.a n = A327447 (n + 2)

end A327447

/-! ## A327447.P17128236698305158128

`A324795(n+1)+2*A090076(n+1)`
-/

namespace A327447.P17128236698305158128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324795 (n + 1) + 2 * A090076 (n + 1)

end

end A327447.P17128236698305158128

namespace A327447

/-- `A324795(n+1)+2*A090076(n+1)` -/
def P17128236698305158128.Spec : Prop :=
  ∀ n, P17128236698305158128.a n = A327447 (n + 2)

theorem P17128236698305158128.correct : P17128236698305158128.Spec := by
  intro n
  simp only [A327447, Nat.add_sub_cancel, A327447.P17128236698305158128.a, A327447.P12716650264261087604.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A090076, A090076.P13758090141823920472.a, A324795, A324795.P13520528308914604177.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A327447

/-! ## A327447.P7322324150343331293

`3*A090076(n+1)-A056221(n+1)`
-/

namespace A327447.P7322324150343331293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A090076 (n + 1) - A056221 (n + 1)

end

end A327447.P7322324150343331293

namespace A327447

/-- `3*A090076(n+1)-A056221(n+1)` -/
def P7322324150343331293.Spec : Prop :=
  ∀ n, P7322324150343331293.a n = A327447 (n + 2)

theorem P7322324150343331293.correct : P7322324150343331293.Spec := by
  intro n
  simp only [A327447, Nat.add_sub_cancel, A327447.P7322324150343331293.a, A327447.P12716650264261087604.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A056221, A056221.P15833640707976573169.a, A090076, A090076.P13758090141823920472.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A327447

/-! ## A327447.P13861027659389382390

`A001749(n+1)*A065091(n+2)-A001248(n+2)`
-/

namespace A327447.P13861027659389382390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001749 (n + 1) * A065091 (n + 2) - A001248 (n + 2)

end

end A327447.P13861027659389382390

namespace A327447

/-- `A001749(n+1)*A065091(n+2)-A001248(n+2)` -/
def P13861027659389382390.Spec : Prop :=
  ∀ n, P13861027659389382390.a n = A327447 (n + 2)

theorem P13861027659389382390.correct : P13861027659389382390.Spec := by
  intro n
  simp only [A327447, Nat.add_sub_cancel, A327447.P13861027659389382390.a, A327447.P12716650264261087604.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A001248, A001248.P16278241061688229202.a, A001749, A001749.P16106244962881767471.a, A065091, A065091.P6971844946592549357.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A327447

/-!
# A327449: Number of ways the first n primes can be partitioned into three sets with equal sums.

The programs for A327449, there is no canonical definition to state claims against.
-/

/-! ## A327449.P1903948688078196243

`lcm(3, A281477(A026595(n)))`
-/

namespace A327449.P1903948688078196243
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 3 (A281477 (A026595 n).toNat)

end

end A327449.P1903948688078196243

/-! ## A327449.P10514566260374585186

`A053473(A052147(n+1)+A000079(n))`
-/

namespace A327449.P10514566260374585186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053473 (A052147 (n + 1) + A000079 n).toNat

end

end A327449.P10514566260374585186

/-! ## A327449.P3609001712501752454

`A053473(A052548(n)+A000040(n+1))`
-/

namespace A327449.P3609001712501752454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053473 (A052548 n + A000040 (n + 1)).toNat

end

end A327449.P3609001712501752454

/-! ## A327449.P14301893997843818690

`A053473(or(A000051(n), A052147(n+1)))`
-/

namespace A327449.P14301893997843818690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053473 (Int.lor (A000051 n) (A052147 (n + 1))).toNat

end

end A327449.P14301893997843818690

/-! ## A327449.P17511519907708727529

`A053473(A052147(n+1)+A000051(n)-1)`
-/

namespace A327449.P17511519907708727529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053473 (A052147 (n + 1) + (A000051 n - 1)).toNat

end

end A327449.P17511519907708727529

/-!
# A327450: Number of ways the first n squares can be partitioned into three sets with equal sums.

The programs for A327450, there is no canonical definition to state claims against.
-/

/-! ## A327450.P9527219356323175397

`(∑[n]+1)%A196017(n+1)!!`
-/

namespace A327450.P9527219356323175397
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j + 1) % Nat.factorial (Nat.factorial (A196017 (n + 1)).toNat)

end

end A327450.P9527219356323175397

/-! ## A327450.P146545682111232793

`A215962(A304972(n+1))`
-/

namespace A327450.P146545682111232793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215962 (A304972 (n + 1)).toNat

end

end A327450.P146545682111232793

/-! ## A327450.P16777422404243708070

`A326178(C(A093561(n), 15))`
-/

namespace A327450.P16777422404243708070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326178 (Nat.choose (A093561 n).toNat 15)

end

end A327450.P16777422404243708070

/-! ## A327450.P4569853029171283062

`and(649, A014378(A329332(n)))`
-/

namespace A327450.P4569853029171283062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 649 (A014378 (A329332 n).toNat)

end

end A327450.P4569853029171283062

/-! ## A327450.P6630044171629523799

`A244155(C(A074650(n+1), 8))`
-/

namespace A327450.P6630044171629523799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244155 (Nat.choose (A074650 (n + 1)).toNat 8)

end

end A327450.P6630044171629523799

/-!
# A327451: a(1) = 1 and a(2) = 2; thereafter, if a(n) and a(n+1) do not share a digit, then a(n+2) = a(n) + a(n+1), otherwise a(n+2) is the smallest number not yet in the sequence.

The programs for A327451, there is no canonical definition to state claims against.
-/

/-! ## A327451.P3973141866305349880

`A359128(2+n)`
-/

namespace A327451.P3973141866305349880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359128 (2 + n)

end

end A327451.P3973141866305349880

/-!
# A327452: First differences of A327743.

The programs for A327452, there is no canonical definition to state claims against.
-/

/-! ## A327452.P11342077941103459399

`Δ[A327743(n+1)]`
-/

namespace A327452.P11342077941103459399
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327743 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A327452.P11342077941103459399

/-! ## A327452.P14476085808368628740

`Δ[A327844(2*(1+n)²)]`
-/

namespace A327452.P14476085808368628740
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327844 (2 * (1 + n) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A327452.P14476085808368628740

/-! ## A327452.P8283476899411888870

`Δ[A327844(n*2*n+1)]%41`
-/

namespace A327452.P8283476899411888870
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327844 (n * (2 * n) + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) 41

end

end A327452.P8283476899411888870

/-! ## A327452.P12703599508341503675

`-Δ[-A327844(A001105(n+1))]`
-/

namespace A327452.P12703599508341503675
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A327844 (A001105 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(f1 (n + 1) - f1 n)

end

end A327452.P12703599508341503675

/-! ## A327452.P5068713455107424451

`-Δ[-A327844(A052905(n+3))]`
-/

namespace A327452.P5068713455107424451
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A327844 (A052905 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(f1 (n + 1) - f1 n)

end

end A327452.P5068713455107424451

/-! ## A327452.P6510213081341569127

`-Δ[-A327844(A055999(n+4))]`
-/

namespace A327452.P6510213081341569127
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A327844 (A055999 (n + 4)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(f1 (n + 1) - f1 n)

end

end A327452.P6510213081341569127

/-! ## A327452.P15572479656039259210

`-Δ[-A327844(xor(1, A001105(n)))]`
-/

namespace A327452.P15572479656039259210
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A327844 (Int.xor 1 (A001105 n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(f1 (n + 1) - f1 n)

end

end A327452.P15572479656039259210

/-! ## A327452.P1521126385358963057

`A327743(n+2)-A327743(n+1)`
-/

namespace A327452.P1521126385358963057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327743 (n + 2) - A327743 (n + 1)

end

end A327452.P1521126385358963057

/-! ## A327452.P13230368242476385954

`-Δ[-A327844(A000096(n+5)-4)]`
-/

namespace A327452.P13230368242476385954
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A327844 (A000096 (n + 5) - 4).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(f1 (n + 1) - f1 n)

end

end A327452.P13230368242476385954

/-!
# A327453: Lexicographically earliest sequence of distinct positive numbers such that if we add three successive digits the result is divisible by 3.

The programs for A327453, there is no canonical definition to state claims against.
-/

/-! ## A327453.P17451007441190031735

`lt[lcm(floor((n²-n)/11), round(2*n/3)), 3*n]`
-/

namespace A327453.P17451007441190031735
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ⌊((n ^ 2 : ℤ) - (n : ℤ) : ℚ) / 11⌋ (SequenceMachineLib.roundAway (2 * ((n : ℚ) / 3)))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A327453.P17451007441190031735

/-! ## A327453.P12294835492594268325

`record[gcd(xor(1, n), A330027(n))]`
-/

namespace A327453.P12294835492594268325
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (Nat.xor 1 n : ℤ) (A330027 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A327453.P12294835492594268325

/-! ## A327453.P17653937224117356488

`A147432(a(n-1))+n` with `a(0)=1`
-/

namespace A327453.P17653937224117356488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A147432 (a (n - 1)).toNat + (n : ℤ)

end

end A327453.P17653937224117356488

/-!
# A327455: Lexicographically earliest sequence of distinct positive numbers such that if we add five successive digits the result is divisible by 5.

The programs for A327455, there is no canonical definition to state claims against.
-/

/-! ## A327455.P18398308210935765488

`A327735(n+1)-A285007(A039867(n+1))`
-/

namespace A327455.P18398308210935765488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327735 (n + 1) - A285007 (A039867 (n + 1)).toNat

end

end A327455.P18398308210935765488

/-! ## A327455.P14583972920125610206

`A124107(n+1)%62`
-/

namespace A327455.P14583972920125610206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A124107 (n + 1)) 62

end

end A327455.P14583972920125610206

/-! ## A327455.P8479447518184118783

`A282782(n+2)%64`
-/

namespace A327455.P8479447518184118783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A282782 (n + 2)) 64

end

end A327455.P8479447518184118783

/-! ## A327455.P17464533804427412226

`A327735(a(n-1)+1)` with `a(0)=1`
-/

namespace A327455.P17464533804427412226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A327735 (a (n - 1) + 1).toNat

end

end A327455.P17464533804427412226

/-! ## A327455.P17895232897971789333

`A327735(2*a(n-1)-a(n-2))` with `a(0)=1, a(1)=2`
-/

namespace A327455.P17895232897971789333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A327735 (2 * a (n - 1) - a (n - 2)).toNat

end

end A327455.P17895232897971789333

/-!
# A327456: Lexicographically earliest sequence of distinct positive numbers such that if we add six successive digits the result is divisible by 6.

The programs for A327456, there is no canonical definition to state claims against.
-/

/-! ## A327456.P16818285140380379081

`A139605(A065956(n))+n`
-/

namespace A327456.P16818285140380379081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139605 (A065956 n).toNat + (n : ℤ)

end

end A327456.P16818285140380379081

/-! ## A327456.P18044847710847555039

`A144871(A165533(n))+n`
-/

namespace A327456.P18044847710847555039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144871 (A165533 n).toNat + (n : ℤ)

end

end A327456.P18044847710847555039

/-! ## A327456.P15842453667719976006

`A173304(A155955(n))+n`
-/

namespace A327456.P15842453667719976006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173304 (A155955 n).toNat + (n : ℤ)

end

end A327456.P15842453667719976006

/-! ## A327456.P15124336990018308435

`A333340(A287020(n))+n`
-/

namespace A327456.P15124336990018308435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333340 (A287020 n).toNat + (n : ℤ)

end

end A327456.P15124336990018308435

/-! ## A327456.P18223297372645262764

`A321591(A305889(n))+n`
-/

namespace A327456.P18223297372645262764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321591 (A305889 n).toNat + (n : ℤ)

end

end A327456.P18223297372645262764

/-!
# A327457: Inverse binomial transform of A327743.

The programs for A327457, there is no canonical definition to state claims against.
-/

/-! ## A327457.P11580054272111572823

`∑{#}[n, (-1)^(n-#)*C(n, #)*A327743(#+1)]`
-/

namespace A327457.P11580054272111572823
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (-1 : ℚ) ^ ((n : ℤ) - (k : ℤ) : ℤ) * (Nat.choose n k : ℚ) * (A327743 (k + 1) : ℚ)

end

end A327457.P11580054272111572823

/-!
# A327458: First differences of A327460.

The programs for A327458, there is no canonical definition to state claims against.
-/

/-! ## A327458.P7197121344013370527

`Δ[A327460(1+n)]`
-/

namespace A327458.P7197121344013370527
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327460 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A327458.P7197121344013370527

/-! ## A327458.P12872242353819923086

`A327460(n+2)-A327460(n+1)`
-/

namespace A327458.P12872242353819923086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327460 (n + 2) - A327460 (n + 1)

end

end A327458.P12872242353819923086

/-! ## A327458.P4131127096197787783

`A328071(∑[n+2])`
-/

namespace A327458.P4131127096197787783
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328071 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A327458.P4131127096197787783

/-! ## A327458.P10050720894427419660

`Δ[A328071(A000217(n+1))]`
-/

namespace A327458.P10050720894427419660
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328071 (A000217 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A327458.P10050720894427419660

/-! ## A327458.P3782819793867334530

`Δ[A328071(Δ[A000125(n)]+n)]`
-/

namespace A327458.P3782819793867334530
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000125 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328071 (f2 (n + 1) - f2 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A327458.P3782819793867334530

/-! ## A327458.P6378329426326434341

`Δ[A328071(Δ[A004006(n)]+n)]`
-/

namespace A327458.P6378329426326434341
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004006 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328071 (f2 (n + 1) - f2 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A327458.P6378329426326434341

/-!
# A327459: Inverse binomial transform of A327460.

The programs for A327459, there is no canonical definition to state claims against.
-/

/-! ## A327459.P15590032587089364297

`∑{#}[n, (-1)^(n-#)*C(n, #)*A327460(#+1)]`
-/

namespace A327459.P15590032587089364297
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (-1 : ℚ) ^ ((n : ℤ) - (k : ℤ) : ℤ) * (Nat.choose n k : ℚ) * (A327460 (k + 1) : ℚ)

end

end A327459.P15590032587089364297

/-! ## A327459.P16472824539159975204

`A328071(∑[n]+1)`
-/

namespace A327459.P16472824539159975204
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328071 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A327459.P16472824539159975204

/-! ## A327459.P18171905450526668431

`floor(atan(n+7))*A328071(A000124(n))`
-/

namespace A327459.P18171905450526668431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.arctan (n + 7 : ℝ)⌋ * A328071 (A000124 n).toNat

end

end A327459.P18171905450526668431

/-! ## A327459.P8442544308914399843

`A328071(A000124(n))%A042128(n)`
-/

namespace A327459.P8442544308914399843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A328071 (A000124 n).toNat) (A042128 n)

end

end A327459.P8442544308914399843

/-! ## A327459.P12200845672808903101

`or(A000007(n), A328071(A000124(n)))`
-/

namespace A327459.P12200845672808903101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A328071 (A000124 n).toNat)

end

end A327459.P12200845672808903101

/-! ## A327459.P17661817984185622807

`A328071(A000124(n))+A000007(n+1)`
-/

namespace A327459.P17661817984185622807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328071 (A000124 n).toNat + A000007 (n + 1)

end

end A327459.P17661817984185622807

/-! ## A327459.P5859241158480280472

`A057979(2*n)*A328071(A000124(n))`
-/

namespace A327459.P5859241158480280472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 (2 * n) * A328071 (A000124 n).toNat

end

end A327459.P5859241158480280472

/-! ## A327459.P14892481680742486090

`A001222(A088732(n))*A328071(A000124(n))`
-/

namespace A327459.P14892481680742486090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A088732 n).toNat * A328071 (A000124 n).toNat

end

end A327459.P14892481680742486090

/-!
# A327460: Lexicographically earliest infinite sequence of distinct positive integers such that for every k >= 1, all the k(k+1)/2 numbers in the triangle of differences of the first k terms are distinct.

The programs for A327460, there is no canonical definition to state claims against.
-/

/-! ## A327460.P10665007897143848240

`A327458(n)+a(n-1)` with `a(0)=1`
-/

namespace A327460.P10665007897143848240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A327458 n + a (n - 1)

end

end A327460.P10665007897143848240

/-! ## A327460.P15240798399192561252

`∑[A327458(A028310(n))]-1`
-/

namespace A327460.P15240798399192561252
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327458 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A327460.P15240798399192561252

/-! ## A327460.P7930211758884454160

`A033999(2*n+1)+∑[A327458(A028310(n))]`
-/

namespace A327460.P7930211758884454160
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327458 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (2 * n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A327460.P7930211758884454160

/-! ## A327460.P1746298176033974821

`∑[A327458(n+1)]+1-A327458(n+1)`
-/

namespace A327460.P1746298176033974821
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327458 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (1 - A327458 (n + 1))

end

end A327460.P1746298176033974821

/-! ## A327460.P12358412703973980232

`A122434(3*(n+1))+∑[A327458(A028310(n))]`
-/

namespace A327460.P12358412703973980232
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327458 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122434 (3 * (n + 1)) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A327460.P12358412703973980232

/-! ## A327460.P5095894789712749640

`∑{#}[n, C(n, #)*A327459(#)]`
-/

namespace A327460.P5095894789712749640
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (Nat.choose n k : ℤ) * A327459 k

end

end A327460.P5095894789712749640

/-! ## A327460.P7990192084484505544

`A328071(∑[n+1])`
-/

namespace A327460.P7990192084484505544
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328071 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A327460.P7990192084484505544

/-! ## A327460.P5810310207862658922

`abs(A328071(A000217(n+1)))`
-/

namespace A327460.P5810310207862658922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A328071 (A000217 (n + 1)).toNat|

end

end A327460.P5810310207862658922

/-! ## A327460.P6454718686322916638

`A328071(Δ[A004006(n)]+n)%A167499(n)`
-/

namespace A327460.P6454718686322916638
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004006 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A328071 (f1 (n + 1) - f1 n + (n : ℤ)).toNat) (A167499 n)

end

end A327460.P6454718686322916638

/-! ## A327460.P17563702288502906204

`A327762(n+1)+A000096(A025444(n))`
-/

namespace A327460.P17563702288502906204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327762 (n + 1) + A000096 (A025444 n).toNat

end

end A327460.P17563702288502906204

/-!
# A327461: Maximal size of a Binary Decision Diagram (or BDD) of index n.

The programs for A327461, the canonical program `A327461.P12336137143379392535` is in `Seq.B001.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A327461 has offset 1).

The definition of A327461 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A327461.P12336137143379392535

`2^(n+1-A284248(n+1))+2^2^A284248(n+1)-1`

The canonical program, it is in `Seq.B001.C012`.
-/

namespace A327461

/-- `2^(n+1-A284248(n+1))+2^2^A284248(n+1)-1` -/
def P12336137143379392535.Spec : Prop :=
  ∀ n, P12336137143379392535.a n = (A327461 (n + 1) : ℝ)

end A327461

/-! ## A327461.P18376541671648961321

`A059893(A139247(n+1)^A124778(n))`
-/

namespace A327461.P18376541671648961321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059893 (SequenceMachineLib.roundAway ((A139247 (n + 1) : ℚ) ^ (A124778 n : ℤ))).toNat

end

end A327461.P18376541671648961321

namespace A327461

/-- `A059893(A139247(n+1)^A124778(n))` -/
def P18376541671648961321.Spec : Prop :=
  ∀ n, P18376541671648961321.a n = A327461 (n + 1)

end A327461

/-! ## A327461.P14485980635126575449

`A059893(or(A018487(n+1), A139247(n+1)))`
-/

namespace A327461.P14485980635126575449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059893 (Int.lor (A018487 (n + 1)) (A139247 (n + 1))).toNat

end

end A327461.P14485980635126575449

namespace A327461

/-- `A059893(or(A018487(n+1), A139247(n+1)))` -/
def P14485980635126575449.Spec : Prop :=
  ∀ n, P14485980635126575449.a n = A327461 (n + 1)

end A327461

/-! ## A327461.P2441543622087078859

`∑[A302613(n+2)]+1`
-/

namespace A327461.P2441543622087078859
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302613 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A327461.P2441543622087078859

namespace A327461

/-- `∑[A302613(n+2)]+1` -/
def P2441543622087078859.Spec : Prop :=
  ∀ n, P2441543622087078859.a n = A327461 (n + 1)

end A327461

/-! ## A327461.P14717431135956631430

`A165887(A339484(n+2))`
-/

namespace A327461.P14717431135956631430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165887 (A339484 (n + 2)).toNat

end

end A327461.P14717431135956631430

namespace A327461

/-- `A165887(A339484(n+2))` -/
def P14717431135956631430.Spec : Prop :=
  ∀ n, P14717431135956631430.a n = A327461 (n + 1)

end A327461

/-!
# A327462: Number of holes in decimal expansion of n-th prime.

The programs for A327462, the canonical program `A327462.P4524600871860232679` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A327462 has offset 1).

The definition of A327462 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5133 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A327462.P4524600871860232679

`A064692(A000040(n+1))`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A327462

/-- `A064692(A000040(n+1))` -/
def P4524600871860232679.Spec : Prop :=
  ∀ n, P4524600871860232679.a n = A327462 (n + 1)

theorem P4524600871860232679.correct : P4524600871860232679.Spec := by
  intro n
  simp only [A327462, Nat.add_sub_cancel]

end A327462

/-! ## A327462.P5959672752106027948

`A064692(A006005(1+n))`
-/

namespace A327462.P5959672752106027948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064692 (A006005 (1 + n)).toNat

end

end A327462.P5959672752106027948

namespace A327462

/-- `A064692(A006005(1+n))` -/
def P5959672752106027948.Spec : Prop :=
  ∀ n, P5959672752106027948.a n = A327462 (n + 1)

end A327462

/-! ## A327462.P15630662826746070554

`A064692(A161847(n+1))`
-/

namespace A327462.P15630662826746070554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064692 (A161847 (n + 1)).toNat

end

end A327462.P15630662826746070554

namespace A327462

/-- `A064692(A161847(n+1))` -/
def P15630662826746070554.Spec : Prop :=
  ∀ n, P15630662826746070554.a n = A327462 (n + 1)

end A327462

/-! ## A327462.P17493480580240605620

`A064692(A171015(n+1))`
-/

namespace A327462.P17493480580240605620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064692 (A171015 (n + 1)).toNat

end

end A327462.P17493480580240605620

namespace A327462

/-- `A064692(A171015(n+1))` -/
def P17493480580240605620.Spec : Prop :=
  ∀ n, P17493480580240605620.a n = A327462 (n + 1)

end A327462

/-! ## A327462.P2697431726514627405

`A064692(A171018(n+1))`
-/

namespace A327462.P2697431726514627405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064692 (A171018 (n + 1)).toNat

end

end A327462.P2697431726514627405

namespace A327462

/-- `A064692(A171018(n+1))` -/
def P2697431726514627405.Spec : Prop :=
  ∀ n, P2697431726514627405.a n = A327462 (n + 1)

end A327462

/-! ## A327462.P17316429760785367497

`A064692(A171039(n+1))`
-/

namespace A327462.P17316429760785367497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064692 (A171039 (n + 1)).toNat

end

end A327462.P17316429760785367497

namespace A327462

/-- `A064692(A171039(n+1))` -/
def P17316429760785367497.Spec : Prop :=
  ∀ n, P17316429760785367497.a n = A327462 (n + 1)

end A327462

/-! ## A327462.P10062492893506149848

`A064692(A171055(n+1))`
-/

namespace A327462.P10062492893506149848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064692 (A171055 (n + 1)).toNat

end

end A327462.P10062492893506149848

namespace A327462

/-- `A064692(A171055(n+1))` -/
def P10062492893506149848.Spec : Prop :=
  ∀ n, P10062492893506149848.a n = A327462 (n + 1)

end A327462

/-! ## A327462.P10033141467034396682

`A064692(A008578(n+2))`
-/

namespace A327462.P10033141467034396682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064692 (A008578 (n + 2)).toNat

end

end A327462.P10033141467034396682

namespace A327462

/-- `A064692(A008578(n+2))` -/
def P10033141467034396682.Spec : Prop :=
  ∀ n, P10033141467034396682.a n = A327462 (n + 1)

end A327462

/-! ## A327462.P2961448123014826335

`A064692(eq[2, A077462(n)])`
-/

namespace A327462.P2961448123014826335
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077462 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064692 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A327462.P2961448123014826335

namespace A327462

/-- `A064692(eq[2, A077462(n)])` -/
def P2961448123014826335.Spec : Prop :=
  ∀ n, P2961448123014826335.a n = A327462 (n + 1)

end A327462

/-! ## A327462.P6285748105428578857

`A064692(record[A006530(n+2)])`
-/

namespace A327462.P6285748105428578857
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064692 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A327462.P6285748105428578857

namespace A327462

/-- `A064692(record[A006530(n+2)])` -/
def P6285748105428578857.Spec : Prop :=
  ∀ n, P6285748105428578857.a n = A327462 (n + 1)

end A327462

/-! ## A327462.P15489677873376710845

`A064692(record[A020639(n+2)])`
-/

namespace A327462.P15489677873376710845
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064692 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A327462.P15489677873376710845

namespace A327462

/-- `A064692(record[A020639(n+2)])` -/
def P15489677873376710845.Spec : Prop :=
  ∀ n, P15489677873376710845.a n = A327462 (n + 1)

end A327462

/-! ## A327462.P4592654393558708329

`A064692(A040976(n+1)+2)`
-/

namespace A327462.P4592654393558708329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064692 (A040976 (n + 1) + 2).toNat

end

end A327462.P4592654393558708329

namespace A327462

/-- `A064692(A040976(n+1)+2)` -/
def P4592654393558708329.Spec : Prop :=
  ∀ n, P4592654393558708329.a n = A327462 (n + 1)

theorem P4592654393558708329.correct : P4592654393558708329.Spec := by
  intro n
  simp only [A327462, Nat.add_sub_cancel, A327462.P4592654393558708329.a, A327462.P4524600871860232679.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A040976, A040976.P11599754272797435513.a, A064692, A064692.P5168258694329805100.f1, A064692.P5168258694329805100.a, A029352, A029352.P935358604536330210.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A327462

/-! ## A327462.P5034165214515482233

`A064692(record[p?[A007913(n+1)]])`
-/

namespace A327462.P5034165214515482233
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064692 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A327462.P5034165214515482233

namespace A327462

/-- `A064692(record[p?[A007913(n+1)]])` -/
def P5034165214515482233.Spec : Prop :=
  ∀ n, P5034165214515482233.a n = A327462 (n + 1)

end A327462

/-! ## A327462.P10979179958707752136

`A064692(A171032(n+1))`
-/

namespace A327462.P10979179958707752136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064692 (A171032 (n + 1)).toNat

end

end A327462.P10979179958707752136

namespace A327462

/-- `A064692(A171032(n+1))` -/
def P10979179958707752136.Spec : Prop :=
  ∀ n, P10979179958707752136.a n = A327462 (n + 1)

end A327462

/-! ## A327462.P11095365634673243261

`A064692(A171053(n+1))`
-/

namespace A327462.P11095365634673243261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064692 (A171053 (n + 1)).toNat

end

end A327462.P11095365634673243261

namespace A327462

/-- `A064692(A171053(n+1))` -/
def P11095365634673243261.Spec : Prop :=
  ∀ n, P11095365634673243261.a n = A327462 (n + 1)

end A327462

/-! ## A327462.P15565548372132468129

`A064692(A171026(n+1))`
-/

namespace A327462.P15565548372132468129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064692 (A171026 (n + 1)).toNat

end

end A327462.P15565548372132468129

namespace A327462

/-- `A064692(A171026(n+1))` -/
def P15565548372132468129.Spec : Prop :=
  ∀ n, P15565548372132468129.a n = A327462 (n + 1)

end A327462

/-! ## A327462.P1557223248697236488

`A064692(A171037(n+1))`
-/

namespace A327462.P1557223248697236488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064692 (A171037 (n + 1)).toNat

end

end A327462.P1557223248697236488

namespace A327462

/-- `A064692(A171037(n+1))` -/
def P1557223248697236488.Spec : Prop :=
  ∀ n, P1557223248697236488.a n = A327462 (n + 1)

end A327462

/-! ## A327462.P2038164676570237076

`A064692(A171025(n+1))`
-/

namespace A327462.P2038164676570237076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064692 (A171025 (n + 1)).toNat

end

end A327462.P2038164676570237076

namespace A327462

/-- `A064692(A171025(n+1))` -/
def P2038164676570237076.Spec : Prop :=
  ∀ n, P2038164676570237076.a n = A327462 (n + 1)

end A327462

/-! ## A327462.P3836187569550607991

`A064692(A171036(n+1))`
-/

namespace A327462.P3836187569550607991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064692 (A171036 (n + 1)).toNat

end

end A327462.P3836187569550607991

namespace A327462

/-- `A064692(A171036(n+1))` -/
def P3836187569550607991.Spec : Prop :=
  ∀ n, P3836187569550607991.a n = A327462 (n + 1)

end A327462

/-! ## A327462.P13010259161793133783

`A064692(A004087(n+1))`
-/

namespace A327462.P13010259161793133783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064692 (A004087 (n + 1)).toNat

end

end A327462.P13010259161793133783

namespace A327462

/-- `A064692(A004087(n+1))` -/
def P13010259161793133783.Spec : Prop :=
  ∀ n, P13010259161793133783.a n = A327462 (n + 1)

end A327462

/-!
# A327465: First differences of A309095.

The programs for A327465, there is no canonical definition to state claims against.
-/

/-! ## A327465.P13809887461372424224

`Δ[A309095(n+1)]`
-/

namespace A327465.P13809887461372424224
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309095 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A327465.P13809887461372424224

/-! ## A327465.P11980238208912955745

`Δ[record[A309095(A117910(n))]]`
-/

namespace A327465.P11980238208912955745
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309095 (A117910 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A327465.P11980238208912955745

/-! ## A327465.P2103684530503547825

`Δ[record[A309095(A263131(n))]]`
-/

namespace A327465.P2103684530503547825
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309095 (A263131 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A327465.P2103684530503547825

/-! ## A327465.P2543807977253154879

`abs(Δ[A309095(A080513(2*n))])`
-/

namespace A327465.P2543807977253154879
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309095 (A080513 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A327465.P2543807977253154879

/-! ## A327465.P5931798392127383991

`A309095(n+2)-A309095(n+1)`
-/

namespace A327465.P5931798392127383991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309095 (n + 2) - A309095 (n + 1)

end

end A327465.P5931798392127383991

/-! ## A327465.P16209200330103591586

`A001222(ratio[A000079(A309095(n+1))])`
-/

namespace A327465.P16209200330103591586
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A309095 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway ((f1 (n + 1) : ℚ) / (f1 n : ℚ))).toNat

end

end A327465.P16209200330103591586

/-!
# A327466: Number of nonempty subsets of [1..n] which are geometric progressions with rational ratio and are locally maximal.

The programs for A327466, there is no canonical definition to state claims against.
-/

/-! ## A327466.P1365688422399443353

`xor(A345255(A345234(n+1)), A345256(2*n+1))`
-/

namespace A327466.P1365688422399443353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A345255 (A345234 (n + 1)).toNat) (A345256 (2 * n + 1))

end

end A327466.P1365688422399443353

/-!
# A327468: Numbers m that divide 8^m + 7.

The programs for A327468, there is no canonical definition to state claims against.
-/

/-! ## A327468.P2837699244478038530

`A000188(A057080(n))*A035341(n)`
-/

namespace A327468.P2837699244478038530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 (A057080 n).toNat * A035341 n

end

end A327468.P2837699244478038530

/-!
# A327469: Number of nonempty subsets of [1..n] which are geometric progressions of length >= 3 with rational ratio and are locally maximal.

The programs for A327469, there is no canonical definition to state claims against.
-/

/-! ## A327469.P15432341994690972577

`∑[A283002(n+1)%A056622(A338782(n+1))]`
-/

namespace A327469.P15432341994690972577
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A283002 (n + 1)) (A056622 (A338782 (n + 1)).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A327469.P15432341994690972577

/-! ## A327469.P4121693098635887433

`∑[A336643(n+1)-A063062(2*n+1)]`
-/

namespace A327469.P4121693098635887433
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336643 (n + 1) - A063062 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A327469.P4121693098635887433

/-! ## A327469.P13137708552008747001

`∑[A270245(n+1)%A056622(n+1)]`
-/

namespace A327469.P13137708552008747001
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A270245 (n + 1)) (A056622 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A327469.P13137708552008747001

/-! ## A327469.P2601555938662507509

`∑[A119754(n+1)%A056622(n+1)]`
-/

namespace A327469.P2601555938662507509
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A119754 (n + 1)) (A056622 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A327469.P2601555938662507509

/-! ## A327469.P10444295790524760561

`∑[A061479(n)%A056622(n+1)]`
-/

namespace A327469.P10444295790524760561
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A061479 n) (A056622 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A327469.P10444295790524760561

/-!
# A327470: Maximum valency of the central line in a certain smooth 2D-polarized K3-surface in P^{n+1}.

The programs for A327470, there is no canonical definition to state claims against.
-/

/-! ## A327470.P17720769705845578445

`ceil(A124966(n+1)/A387411(n+1))+3`
-/

namespace A327470.P17720769705845578445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A124966 (n + 1) : ℚ) / (A387411 (n + 1) : ℚ)⌉ + 3

end

end A327470.P17720769705845578445

/-!
# A327471: Number of subsets of {1..n} not containing their mean.

The programs for A327471, the canonical program `A327471.P11969612927539878657` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A327471 has offset 0).

The definition of A327471 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A327471.P12116262575004008374

`∑[A327477(n)]+1`
-/

namespace A327471.P12116262575004008374
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327477 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A327471.P12116262575004008374

namespace A327471

/-- `∑[A327477(n)]+1` -/
def P12116262575004008374.Spec : Prop :=
  ∀ n, P12116262575004008374.a n = A327471 n

end A327471

/-! ## A327471.P3104055756342697839

`∑[ceil(2^(n-1)-A000016(n))]+1`
-/

namespace A327471.P3104055756342697839
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) - (A000016 n : ℚ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A327471.P3104055756342697839

namespace A327471

/-- `∑[ceil(2^(n-1)-A000016(n))]+1` -/
def P3104055756342697839.Spec : Prop :=
  ∀ n, P3104055756342697839.a n = A327471 n

end A327471

/-! ## A327471.P11969612927539878657

`A000051(n)-A133670(n)`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A327471

/-- `A000051(n)-A133670(n)` -/
def P11969612927539878657.Spec : Prop :=
  ∀ n, P11969612927539878657.a n = A327471 n

theorem P11969612927539878657.correct : P11969612927539878657.Spec := by
  intro n
  simp only [A327471]

end A327471

/-! ## A327471.P16987395599693211668

`A000051(n)-∑[A000016(n)]`
-/

namespace A327471.P16987395599693211668
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000016 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000051 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A327471.P16987395599693211668

namespace A327471

/-- `A000051(n)-∑[A000016(n)]` -/
def P16987395599693211668.Spec : Prop :=
  ∀ n, P16987395599693211668.a n = A327471 n

end A327471

/-! ## A327471.P3308026416211488144

`∑[A216957(n+1)-A000031(n)]`
-/

namespace A327471.P3308026416211488144
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216957 (n + 1) - A000031 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A327471.P3308026416211488144

namespace A327471

/-- `∑[A216957(n+1)-A000031(n)]` -/
def P3308026416211488144.Spec : Prop :=
  ∀ n, P3308026416211488144.a n = A327471 n

end A327471

/-!
# A327472: Number of integer partitions of n not containing their mean.

The programs for A327472, there is no canonical definition to state claims against.
-/

/-! ## A327472.P6075381802994019211

`A000837(n)-A071625(A236679(3*(n+2)))`
-/

namespace A327472.P6075381802994019211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000837 n - A071625 (A236679 (3 * (n + 2))).toNat

end

end A327472.P6075381802994019211

/-! ## A327472.P758190054370246990

`A000837(n)-A225654(A034856(n+1))`
-/

namespace A327472.P758190054370246990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000837 n - A225654 (A034856 (n + 1)).toNat

end

end A327472.P758190054370246990

/-! ## A327472.P8240320980990755272

`A239235(A214077(n+1))-A077462(A351870(n))`
-/

namespace A327472.P8240320980990755272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239235 (A214077 (n + 1)).toNat - A077462 (A351870 n).toNat

end

end A327472.P8240320980990755272

/-! ## A327472.P5953689111487759024

`A232753(A296122(n)+1)-A077462(A351870(n))`
-/

namespace A327472.P5953689111487759024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232753 (A296122 n + 1).toNat - A077462 (A351870 n).toNat

end

end A327472.P5953689111487759024

/-!
# A327473: Heinz numbers of integer partitions whose mean A326567/A326568 is a part.

The programs for A327473, there is no canonical definition to state claims against.
-/

/-! ## A327473.P1838013232899044102

`comp[A327476(n+1)-1]+1`
-/

namespace A327473.P1838013232899044102
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327476 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A327473.P1838013232899044102

/-! ## A327473.P14208788109299572369

`A326837(n+1)%A002764(n)`
-/

namespace A327473.P14208788109299572369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A326837 (n + 1)) (A002764 n)

end

end A327473.P14208788109299572369

/-! ## A327473.P10132756071138061533

`A326847(n+1)%A002764(n)`
-/

namespace A327473.P10132756071138061533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A326847 (n + 1)) (A002764 n)

end

end A327473.P10132756071138061533

/-! ## A327473.P3458742125292470102

`A326837(C(A174670(n+1), n))`
-/

namespace A327473.P3458742125292470102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326837 (Nat.choose (A174670 (n + 1)).toNat n)

end

end A327473.P3458742125292470102

/-! ## A327473.P10524095014699756494

`A326847(n+1)+A072786(8*n²)`
-/

namespace A327473.P10524095014699756494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326847 (n + 1) + A072786 (8 * n ^ 2)

end

end A327473.P10524095014699756494

/-!
# A327474: Number of distinct means of subsets of {1..n}, where {} has mean 0.

The programs for A327474, the canonical program `A327474.P6382581631706258001` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A327474 has offset 0).

The definition of A327474 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A327474.P6382581631706258001

`2*a(n-1)-a(n-2)+A000010(n-1)` with `a(0)=1, a(1)=2, a(2)=4, a(3)=6`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A327474

/-- `2*a(n-1)-a(n-2)+A000010(n-1)` -/
def P6382581631706258001.Spec : Prop :=
  ∀ n, P6382581631706258001.a n = A327474 n

theorem P6382581631706258001.correct : P6382581631706258001.Spec := by
  intro n
  simp only [A327474]

end A327474

/-! ## A327474.P4290522059966938305

`A135342(n*a(floor(acot(n))))+1` with `a(0)=1`
-/

namespace A327474.P4290522059966938305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A135342 ((n : ℤ) * a ⌊SequenceMachineLib.acot (n : ℝ)⌋.toNat).toNat + 1

end

end A327474.P4290522059966938305

namespace A327474

/-- `A135342(n*a(floor(acot(n))))+1` -/
def P4290522059966938305.Spec : Prop :=
  ∀ n, P4290522059966938305.a n = A327474 n

end A327474

/-! ## A327474.P15308936490570781055

`A002088(n-1)+a(n-1)` with `a(0)=1, a(1)=2, a(2)=4`
-/

namespace A327474.P15308936490570781055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 4] fun n a =>
  A002088 (n - 1) + a (n - 1)

end

end A327474.P15308936490570781055

namespace A327474

/-- `A002088(n-1)+a(n-1)` -/
def P15308936490570781055.Spec : Prop :=
  ∀ n, P15308936490570781055.a n = A327474 n

end A327474

/-! ## A327474.P9271260124666499037

`∑[A000010(n-1)+a(n-1)]` with `a(0)=1, a(1)=1, a(2)=2, a(3)=2`
-/

namespace A327474.P9271260124666499037
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2, 2] fun n f1 =>
  A000010 (n - 1) + f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A327474.P9271260124666499037

namespace A327474

/-- `∑[A000010(n-1)+a(n-1)]` -/
def P9271260124666499037.Spec : Prop :=
  ∀ n, P9271260124666499037.a n = A327474 n

end A327474

/-! ## A327474.P12499062570200190522

`∑[A002088(abs(n+1-round(2*n/(n+1))))]`
-/

namespace A327474.P12499062570200190522
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 |(n + 1 : ℤ) - SequenceMachineLib.roundAway ((2 * n : ℚ) / (n + 1 : ℚ))|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A327474.P12499062570200190522

namespace A327474

/-- `∑[A002088(abs(n+1-round(2*n/(n+1))))]` -/
def P12499062570200190522.Spec : Prop :=
  ∀ n, P12499062570200190522.a n = A327474 n

end A327474

/-! ## A327474.P13223576185407103134

`A135342(n)+a(A000122(3*n+2))` with `a(0)=1`
-/

namespace A327474.P13223576185407103134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A135342 n + a (A000122 (3 * n + 2)).toNat

end

end A327474.P13223576185407103134

namespace A327474

/-- `A135342(n)+a(A000122(3*n+2))` -/
def P13223576185407103134.Spec : Prop :=
  ∀ n, P13223576185407103134.a n = A327474 n

end A327474

/-!
# A327475: Number of subsets of {1..n} whose mean is an integer, where {} has mean 0.

The programs for A327475, the canonical program `A327475.P394140087772944545` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A327475 has offset 0).

The definition of A327475 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 340 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A327475.P14493530912244323721

`∑[2*A000016(n)-1]`
-/

namespace A327475.P14493530912244323721
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000016 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A327475.P14493530912244323721

namespace A327475

/-- `∑[2*A000016(n)-1]` -/
def P14493530912244323721.Spec : Prop :=
  ∀ n, P14493530912244323721.a n = A327475 n

end A327475

/-! ## A327475.P394140087772944545

`2*A133670(n)-(n+1)`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A327475

/-- `2*A133670(n)-(n+1)` -/
def P394140087772944545.Spec : Prop :=
  ∀ n, P394140087772944545.a n = A327475 n

theorem P394140087772944545.correct : P394140087772944545.Spec := by
  intro n
  simp only [A327475]

end A327475

/-! ## A327475.P14067317213719975093

`A082550(n)+a(n-1)` with `a(0)=1`
-/

namespace A327475.P14067317213719975093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A082550 n + a (n - 1)

end

end A327475.P14067317213719975093

namespace A327475

/-- `A082550(n)+a(n-1)` -/
def P14067317213719975093.Spec : Prop :=
  ∀ n, P14067317213719975093.a n = A327475 n

end A327475

/-! ## A327475.P17192568955396668065

`∑[A082550(row(A133263(n)))]`
-/

namespace A327475.P17192568955396668065
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082550 (SequenceMachineLib.triRow (A133263 n).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A327475.P17192568955396668065

namespace A327475

/-- `∑[A082550(row(A133263(n)))]` -/
def P17192568955396668065.Spec : Prop :=
  ∀ n, P17192568955396668065.a n = A327475 n

end A327475

/-! ## A327475.P8526412648695536717

`∑[A063776(A233583(n+1))-1]`
-/

namespace A327475.P8526412648695536717
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063776 (A233583 (n + 1)).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A327475.P8526412648695536717

namespace A327475

/-- `∑[A063776(A233583(n+1))-1]` -/
def P8526412648695536717.Spec : Prop :=
  ∀ n, P8526412648695536717.a n = A327475 n

end A327475

/-! ## A327475.P15265759078092578295

`A001489(n+1)+∑[2*A000016(n)]`
-/

namespace A327475.P15265759078092578295
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000016 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001489 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A327475.P15265759078092578295

namespace A327475

/-- `A001489(n+1)+∑[2*A000016(n)]` -/
def P15265759078092578295.Spec : Prop :=
  ∀ n, P15265759078092578295.a n = A327475 n

end A327475

/-! ## A327475.P9694278429560563005

`A051293(n+1)+3-A283843(n+1)`
-/

namespace A327475.P9694278429560563005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051293 (n + 1) + (3 - A283843 (n + 1))

end

end A327475.P9694278429560563005

namespace A327475

/-- `A051293(n+1)+3-A283843(n+1)` -/
def P9694278429560563005.Spec : Prop :=
  ∀ n, P9694278429560563005.a n = A327475 n

end A327475

/-! ## A327475.P3709788277013350558

`∑[A082550(n+1)]+1-A082550(n+1)`
-/

namespace A327475.P3709788277013350558
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082550 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (1 - A082550 (n + 1))

end

end A327475.P3709788277013350558

namespace A327475

/-- `∑[A082550(n+1)]+1-A082550(n+1)` -/
def P3709788277013350558.Spec : Prop :=
  ∀ n, P3709788277013350558.a n = A327475 n

end A327475

/-!
# A327476: Heinz numbers of integer partitions whose mean A326567/A326568 is not a part.

The programs for A327476, there is no canonical definition to state claims against.
-/

/-! ## A327476.P6267892404893758209

`comp[A327473(n+1)-1]+1`
-/

namespace A327476.P6267892404893758209
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327473 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A327476.P6267892404893758209

/-! ## A327476.P15306480856906760166

`comp[(n+1)*A345939(n+1)]`
-/

namespace A327476.P15306480856906760166
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A345939 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A327476.P15306480856906760166

/-! ## A327476.P9351765179262154313

`comp[lcm(A131738(n), A345939(n+1))]`
-/

namespace A327476.P9351765179262154313
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A131738 n) (A345939 (n + 1))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A327476.P9351765179262154313

/-! ## A327476.P9277208856290732545

`∪[A132982(n+1), A348551(n+1)]`
-/

namespace A327476.P9277208856290732545
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132982 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348551 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A327476.P9277208856290732545

/-! ## A327476.P3472257862898615909

`comp[A289207(A327473(n+1)+1)]+1`
-/

namespace A327476.P3472257862898615909
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289207 (A327473 (n + 1) + 1).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A327476.P3472257862898615909

/-! ## A327476.P13571012988228058241

`comp[A327473(A112798(n+2))%A289509(n+1)]`
-/

namespace A327476.P13571012988228058241
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A327473 (A112798 (n + 2)).toNat) (A289509 (n + 1))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A327476.P13571012988228058241

/-!
# A327477: Number of subsets of {1..n} containing n whose mean is not an element.

The programs for A327477, the canonical program `A327477.P17478202587199191785` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A327477 has offset 0).

The definition of A327477 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A327477.P6495519514433267931

`ceil(2^(n-1)-A000016(n))`
-/

namespace A327477.P6495519514433267931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) - (A000016 n : ℚ)⌉

end

end A327477.P6495519514433267931

namespace A327477

/-- `ceil(2^(n-1)-A000016(n))` -/
def P6495519514433267931.Spec : Prop :=
  ∀ n, P6495519514433267931.a n = A327477 n

end A327477

/-! ## A327477.P141534744198335625

`A011782(n)-A000016(n)`
-/

namespace A327477.P141534744198335625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n - A000016 n

end

end A327477.P141534744198335625

namespace A327477

/-- `A011782(n)-A000016(n)` -/
def P141534744198335625.Spec : Prop :=
  ∀ n, P141534744198335625.a n = A327477 n

theorem P141534744198335625.correct : P141534744198335625.Spec := by
  intro n
  simp only [A327477, Nat.add_sub_cancel, A327477.P141534744198335625.a, A327477.P17478202587199191785.f1, A327477.P17478202587199191785.a, A000016, A000016.P8500875009608658723.a, A011782, A011782.P7461078519819856082.a, A327471, A327471.P11969612927539878657.a, A000051, A000051.P14067217022188782580.a, A133670, A133670.P186027561368392954.f1, A133670.P186027561368392954.a, A063776, A063776.P17139330215910369702.a, A233583, A233583.P15026547221992958741.a, A053636, A053636.P10200428342403151043.f1, A053636.P10200428342403151043.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A327477

/-! ## A327477.P10455762951992710546

`A166444(n+1)-A000016(n)`
-/

namespace A327477.P10455762951992710546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166444 (n + 1) - A000016 n

end

end A327477.P10455762951992710546

namespace A327477

/-- `A166444(n+1)-A000016(n)` -/
def P10455762951992710546.Spec : Prop :=
  ∀ n, P10455762951992710546.a n = A327477 n

end A327477

/-! ## A327477.P13804195784891323572

`A000032(C(3, n²))^(n-1)-A000016(n)`
-/

namespace A327477.P13804195784891323572
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000032 (Nat.choose 3 (n ^ 2)) : ℚ) ^ ((n : ℤ) - 1 : ℤ) - (A000016 n : ℚ)

end

end A327477.P13804195784891323572

namespace A327477

/-- `A000032(C(3, n²))^(n-1)-A000016(n)` -/
def P13804195784891323572.Spec : Prop :=
  ∀ n, P13804195784891323572.a n = (A327477 n : ℚ)

end A327477

/-! ## A327477.P17478202587199191785

`Δ[A327471(abs(1-n))]`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A327477

/-- `Δ[A327471(abs(1-n))]` -/
def P17478202587199191785.Spec : Prop :=
  ∀ n, P17478202587199191785.a n = A327477 n

theorem P17478202587199191785.correct : P17478202587199191785.Spec := by
  intro n
  simp only [A327477]

end A327477

/-! ## A327477.P13984916999300537682

`ceil(2^(n-1))-A053633(C(n, 2))`
-/

namespace A327477.P13984916999300537682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉ - A053633 (Nat.choose n 2)

end

end A327477.P13984916999300537682

namespace A327477

/-- `ceil(2^(n-1))-A053633(C(n, 2))` -/
def P13984916999300537682.Spec : Prop :=
  ∀ n, P13984916999300537682.a n = A327477 n

end A327477

/-!
# A327478: Numbers whose average binary index is also a binary index.

The programs for A327478, there is no canonical definition to state claims against.
-/

/-! ## A327478.P8780159979925645373

`A062846(A194009(∑[n]))`
-/

namespace A327478.P8780159979925645373
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062846 (A194009 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A327478.P8780159979925645373

/-! ## A327478.P16786043876679952490

`A062846(A062399(n)+2)`
-/

namespace A327478.P16786043876679952490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062846 (A062399 n + 2).toNat

end

end A327478.P16786043876679952490

/-! ## A327478.P13675013800382814327

`A062846(A120126(n)+2)`
-/

namespace A327478.P13675013800382814327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062846 (A120126 n + 2).toNat

end

end A327478.P13675013800382814327

/-! ## A327478.P16289488319213623619

`A062846(A351870(n)+2)`
-/

namespace A327478.P16289488319213623619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062846 (A351870 n + 2).toNat

end

end A327478.P16289488319213623619

/-! ## A327478.P11520245102777047709

`lt[A028239(A283751(n)), n]`
-/

namespace A327478.P11520245102777047709
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028239 (A283751 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A327478.P11520245102777047709

/-!
# A327479: a(n) is the minimum number of squares of unit area that must be removed from an n X n square to obtain a connected figure without holes and of the longest perimeter.

The programs for A327479, the canonical program `A327479.P10069133800161027266` is in `Seq.B000.C044`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A327479 has offset 0).

The definition of A327479 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A327479.P10069133800161027266

`ogf((4x^3-2x^4+4x^5-2x^6+4x^7-6x^8+4x^9-2x^10)/(1-2x+x^2-x^4+2x^5-x^6))`

The canonical program, it is in `Seq.B000.C044`.
-/

namespace A327479

/-- `ogf((4x^3-2x^4+4x^5-2x^6+4x^7-6x^8+4x^9-2x^10)/(1-2x+x^2-x^4+2x^5-x^6))` -/
def P10069133800161027266.Spec : Prop :=
  ∀ n, P10069133800161027266.a n = A327479 n

theorem P10069133800161027266.correct : P10069133800161027266.Spec := by
  intro n
  simp only [A327479]

end A327479

/-! ## A327479.P7701380690640825037

`A000720(n+1)*A091093(A000111(n))`
-/

namespace A327479.P7701380690640825037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (n + 1) * A091093 (A000111 n).toNat

end

end A327479.P7701380690640825037

namespace A327479

/-- `A000720(n+1)*A091093(A000111(n))` -/
def P7701380690640825037.Spec : Prop :=
  ∀ n, P7701380690640825037.a n = A327479 n

end A327479

/-! ## A327479.P17258691784179398460

`A058320(2*n)%A129677(A032039(n))`
-/

namespace A327479.P17258691784179398460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A058320 (2 * n)) (A129677 (A032039 n).toNat)

end

end A327479.P17258691784179398460

namespace A327479

/-- `A058320(2*n)%A129677(A032039(n))` -/
def P17258691784179398460.Spec : Prop :=
  ∀ n, P17258691784179398460.a n = A327479 n

end A327479

/-! ## A327479.P5212063072558352236

`A154257(record[A187941(n)])`
-/

namespace A327479.P5212063072558352236
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187941 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154257 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A327479.P5212063072558352236

namespace A327479

/-- `A154257(record[A187941(n)])` -/
def P5212063072558352236.Spec : Prop :=
  ∀ n, P5212063072558352236.a n = A327479 n

end A327479

/-! ## A327479.P14609540853055585770

`A049619(n)+A001222(A362348(n))`
-/

namespace A327479.P14609540853055585770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049619 n + A001222 (A362348 n).toNat

end

end A327479.P14609540853055585770

namespace A327479

/-- `A049619(n)+A001222(A362348(n))` -/
def P14609540853055585770.Spec : Prop :=
  ∀ n, P14609540853055585770.a n = A327479 n

end A327479

/-!
# A327480: a(n) is the maximum number of squares of unit area that can be removed from an n X n square while still obtaining a connected figure without holes and of the longest perimeter.

The programs for A327480, the canonical program `A327480.P7524239216156666629` is in `Seq.B000.C044`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A327480 has offset 0).

The definition of A327480 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A327480.P7524239216156666629

`ogf((2x^2+2x^4+4x^6-4x^7+4x^8-4x^9+2x^10)/(1-2x+x^2-x^4+2x^5-x^6))`

The canonical program, it is in `Seq.B000.C044`.
-/

namespace A327480

/-- `ogf((2x^2+2x^4+4x^6-4x^7+4x^8-4x^9+2x^10)/(1-2x+x^2-x^4+2x^5-x^6))` -/
def P7524239216156666629.Spec : Prop :=
  ∀ n, P7524239216156666629.a n = A327480 n

theorem P7524239216156666629.correct : P7524239216156666629.Spec := by
  intro n
  simp only [A327480]

end A327480

/-! ## A327480.P1748728879487109411

`A368822(A329482(n+1))`
-/

namespace A327480.P1748728879487109411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368822 (A329482 (n + 1)).toNat

end

end A327480.P1748728879487109411

namespace A327480

/-- `A368822(A329482(n+1))` -/
def P1748728879487109411.Spec : Prop :=
  ∀ n, P1748728879487109411.a n = A327480 n

end A327480

/-! ## A327480.P11877280037674845454

`A036461(∑[record[A342530(n+1)]])`
-/

namespace A327480.P11877280037674845454
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342530 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036461 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A327480.P11877280037674845454

namespace A327480

/-- `A036461(∑[record[A342530(n+1)]])` -/
def P11877280037674845454.Spec : Prop :=
  ∀ n, P11877280037674845454.a n = A327480 n

end A327480

/-! ## A327480.P10783243894959640103

`A368822(A138244(n+2))`
-/

namespace A327480.P10783243894959640103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368822 (A138244 (n + 2)).toNat

end

end A327480.P10783243894959640103

namespace A327480

/-- `A368822(A138244(n+2))` -/
def P10783243894959640103.Spec : Prop :=
  ∀ n, P10783243894959640103.a n = A327480 n

end A327480

/-! ## A327480.P709412054800009898

`A048105(∏[p?[A342323(n)]])`
-/

namespace A327480.P709412054800009898
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342323 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048105 (∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A327480.P709412054800009898

namespace A327480

/-- `A048105(∏[p?[A342323(n)]])` -/
def P709412054800009898.Spec : Prop :=
  ∀ n, P709412054800009898.a n = A327480 n

end A327480

/-!
# A327481: Triangle read by rows where T(n,k) is the number of nonempty subsets of {1..n} with mean k.

The programs for A327481, there is no canonical definition to state claims against.
-/

/-! ## A327481.P16608358685497422652

`or(1, A271168(A347187(n)))`
-/

namespace A327481.P16608358685497422652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A271168 (A347187 n).toNat)

end

end A327481.P16608358685497422652

/-! ## A327481.P1763870288270049186

`A242746(A174546(n))`
-/

namespace A327481.P1763870288270049186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242746 (A174546 n).toNat

end

end A327481.P1763870288270049186

/-! ## A327481.P8844400250722454781

`A102097(9*A174546(n))`
-/

namespace A327481.P8844400250722454781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102097 (9 * A174546 n).toNat

end

end A327481.P8844400250722454781

/-! ## A327481.P7423671605288997550

`A237271(A132787(n+1)²)`
-/

namespace A327481.P7423671605288997550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237271 (A132787 (n + 1) ^ 2).toNat

end

end A327481.P7423671605288997550

/-! ## A327481.P7633650887977310905

`A027897(A323211(n)%A103979(n+3))`
-/

namespace A327481.P7633650887977310905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027897 (Int.tmod (A323211 n) (A103979 (n + 3))).toNat

end

end A327481.P7633650887977310905

/-!
# A327482: Irregular triangle read by rows where T(n,k) is the number of integer partitions of n with mean d = A027750(n, k).

The programs for A327482, there is no canonical definition to state claims against.
-/

/-! ## A327482.P17517701736680460705

`A258708(A056534(n+1)%A316313(2*(n+2)))`
-/

namespace A327482.P17517701736680460705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258708 (Int.tmod (A056534 (n + 1)) (A316313 (2 * (n + 2)))).toNat

end

end A327482.P17517701736680460705

/-! ## A327482.P3440626923502178435

`A258708(C(A056534(n+1), A349497(2*n+1)))`
-/

namespace A327482.P3440626923502178435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258708 (Nat.choose (A056534 (n + 1)).toNat (A349497 (2 * n + 1)).toNat)

end

end A327482.P3440626923502178435

/-!
# A327484: Number of integer partitions of 2^n whose mean is a power of 2.

The programs for A327484, there is no canonical definition to state claims against.
-/

/-! ## A327484.P16870493069881824272

`A067538(2^n)`
-/

namespace A327484.P16870493069881824272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067538 (2 ^ n)

end

end A327484.P16870493069881824272

/-! ## A327484.P12280106704468790920

`record[A067538(ceil(xor(n, n+1)/4))]`
-/

namespace A327484.P12280106704468790920
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067538 ⌈(Nat.xor n (n + 1) : ℚ) / 4⌉.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A327484.P12280106704468790920

/-! ## A327484.P9610411837291546957

`record[root(A067538(n+1), ∑{d}[n+1, #%2])]`
-/

namespace A327484.P9610411837291546957
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A067538 (n + 1) : ℝ) ^ (1 / ((∑ d ∈ Nat.divisors (f2 n), d % 2 : ℕ) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A327484.P9610411837291546957

/-! ## A327484.P10813898861892354487

`record[A067538(A001316(n))]`
-/

namespace A327484.P10813898861892354487
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067538 (A001316 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A327484.P10813898861892354487

/-! ## A327484.P12804453794554589185

`record[A067538(A088975(n))]`
-/

namespace A327484.P12804453794554589185
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067538 (A088975 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A327484.P12804453794554589185

/-!
# A327485: Product of means of integer partitions with Heinz numbers from 2 to n.

The programs for A327485, the canonical program `A327485.P17868699874093598241` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A327485 has offset 2).

The definition of A327485 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A326567, A326568, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A327485.P17868699874093598241

`a(n-1)*A326567(n+2)/A326568(n+2)` with `a(0)=1`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A327485

/-- `a(n-1)*A326567(n+2)/A326568(n+2)` -/
def P17868699874093598241.Spec : Prop :=
  ∀ n, P17868699874093598241.a n = (A327485 (n + 2) : ℚ)

end A327485

/-! ## A327485.P9791639136705776151

`∏[A056239(n+2)/A001222(n+2)]`
-/

namespace A327485.P9791639136705776151
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A056239 (n + 2) : ℚ) / (A001222 (n + 2) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A327485.P9791639136705776151

namespace A327485

/-- `∏[A056239(n+2)/A001222(n+2)]` -/
def P9791639136705776151.Spec : Prop :=
  ∀ n, P9791639136705776151.a n = (A327485 (n + 2) : ℚ)

end A327485

/-! ## A327485.P14335880117822055720

`∏[A056239(n+2)/A086436(n+2)]`
-/

namespace A327485.P14335880117822055720
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A056239 (n + 2) : ℚ) / (A086436 (n + 2) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A327485.P14335880117822055720

namespace A327485

/-- `∏[A056239(n+2)/A086436(n+2)]` -/
def P14335880117822055720.Spec : Prop :=
  ∀ n, P14335880117822055720.a n = (A327485 (n + 2) : ℚ)

end A327485

/-! ## A327485.P2997332922524749408

`∏[A319225(n+2)/A008480(n+2)]`
-/

namespace A327485.P2997332922524749408
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A319225 (n + 2) : ℚ) / (A008480 (n + 2) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A327485.P2997332922524749408

namespace A327485

/-- `∏[A319225(n+2)/A008480(n+2)]` -/
def P2997332922524749408.Spec : Prop :=
  ∀ n, P2997332922524749408.a n = (A327485 (n + 2) : ℚ)

end A327485

/-! ## A327485.P17718972644423988998

`∏[A056239(n+2)]/A327486(n+2)`
-/

namespace A327485.P17718972644423988998
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (n + 2)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (A327486 (n + 2) : ℚ)

end

end A327485.P17718972644423988998

namespace A327485

/-- `∏[A056239(n+2)]/A327486(n+2)` -/
def P17718972644423988998.Spec : Prop :=
  ∀ n, P17718972644423988998.a n = (A327485 (n + 2) : ℚ)

end A327485

/-!
# A327486: Product of Omegas of positive integers from 2 to n.

The programs for A327486, the canonical program `A327486.P4612159014744352901` is in `Seq.B001.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A327486 has offset 1).

The definition of A327486 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A327486.P4612159014744352901

`a(n-1)*A001222(n+1)` with `a(0)=1`

The canonical program, it is in `Seq.B001.C012`.
-/

namespace A327486

/-- `a(n-1)*A001222(n+1)` -/
def P4612159014744352901.Spec : Prop :=
  ∀ n, P4612159014744352901.a n = A327486 (n + 1)

theorem P4612159014744352901.correct : P4612159014744352901.Spec := by
  intro n
  simp only [A327486, Nat.add_sub_cancel]

end A327486

/-! ## A327486.P7782605967673033758

`∏[∑{e}[abs(1-n)+2, #]]`
-/

namespace A327486.P7782605967673033758
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (n : ℤ)| + 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n).natAbs, Nat.factorization (f2 n).natAbs p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A327486.P7782605967673033758

namespace A327486

/-- `∏[∑{e}[abs(1-n)+2, #]]` -/
def P7782605967673033758.Spec : Prop :=
  ∀ n, (P7782605967673033758.a n : ℤ) = A327486 (n + 1)

end A327486

/-! ## A327486.P1481677669962685020

`∏[∏{e}[∏{e}[n+1, 2^#], #]]`
-/

namespace A327486.P1481677669962685020
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f3 n), 2 ^ Nat.factorization (f3 n) p

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A327486.P1481677669962685020

namespace A327486

/-- `∏[∏{e}[∏{e}[n+1, 2^#], #]]` -/
def P1481677669962685020.Spec : Prop :=
  ∀ n, (P1481677669962685020.a n : ℤ) = A327486 (n + 1)

end A327486

/-! ## A327486.P13782373968438084786

`∑{e}[n+1, #]*a(n-1)` with `a(0)=1`
-/

namespace A327486.P13782373968438084786
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p) * a (n - 1)

end

end A327486.P13782373968438084786

namespace A327486

/-- `∑{e}[n+1, #]*a(n-1)` -/
def P13782373968438084786.Spec : Prop :=
  ∀ n, (P13782373968438084786.a n : ℤ) = A327486 (n + 1)

end A327486

/-! ## A327486.P13454092090635697889

`log2(∏{e}[n+1, 2^#])*a(n-1)` with `a(0)=1`
-/

namespace A327486.P13454092090635697889
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℝ := SequenceMachineLib.rec [1] fun n a =>
  Real.logb 2 ((∏ p ∈ Nat.primeFactors (f1 n), 2 ^ Nat.factorization (f1 n) p : ℕ) : ℝ) * a (n - 1)

end

end A327486.P13454092090635697889

namespace A327486

/-- `log2(∏{e}[n+1, 2^#])*a(n-1)` -/
def P13454092090635697889.Spec : Prop :=
  ∀ n, P13454092090635697889.a n = (A327486 (n + 1) : ℝ)

end A327486

/-! ## A327486.P17549609297857935926

`∏[A086436(n+1)]`
-/

namespace A327486.P17549609297857935926
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086436 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A327486.P17549609297857935926

namespace A327486

/-- `∏[A086436(n+1)]` -/
def P17549609297857935926.Spec : Prop :=
  ∀ n, P17549609297857935926.a n = A327486 (n + 1)

end A327486

/-! ## A327486.P317362566653235570

`∏[runs[A082288(n+1)]]`
-/

namespace A327486.P317362566653235570
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082288 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => j = 0 ∨ f2 j ≠ f2 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f2 j ≠ f2 (j - 1)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A327486.P317362566653235570

namespace A327486

/-- `∏[runs[A082288(n+1)]]` -/
def P317362566653235570.Spec : Prop :=
  ∀ n, (P317362566653235570.a n : ℤ) = A327486 (n + 1)

end A327486

/-! ## A327486.P10265090805799843059

`∏[A001222(n+2)]/A001222(n+2)`
-/

namespace A327486.P10265090805799843059
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 2)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (A001222 (n + 2) : ℚ)

end

end A327486.P10265090805799843059

namespace A327486

/-- `∏[A001222(n+2)]/A001222(n+2)` -/
def P10265090805799843059.Spec : Prop :=
  ∀ n, P10265090805799843059.a n = (A327486 (n + 1) : ℚ)

end A327486

/-! ## A327486.P7786080633133699342

`a(n-1)*A347395((n+1)²)` with `a(0)=1`
-/

namespace A327486.P7786080633133699342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * A347395 ((n + 1) ^ 2)

end

end A327486.P7786080633133699342

namespace A327486

/-- `a(n-1)*A347395((n+1)²)` -/
def P7786080633133699342.Spec : Prop :=
  ∀ n, P7786080633133699342.a n = A327486 (n + 1)

end A327486

/-! ## A327486.P162498282902904357

`a(n-1)*A360616((n+1)²)` with `a(0)=1`
-/

namespace A327486.P162498282902904357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * A360616 ((n + 1) ^ 2)

end

end A327486.P162498282902904357

namespace A327486

/-- `a(n-1)*A360616((n+1)²)` -/
def P162498282902904357.Spec : Prop :=
  ∀ n, P162498282902904357.a n = A327486 (n + 1)

end A327486

/-! ## A327486.P16243710278555968726

`a(n-1)*A362412((n+1)²)` with `a(0)=1`
-/

namespace A327486.P16243710278555968726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * A362412 ((n + 1) ^ 2)

end

end A327486.P16243710278555968726

namespace A327486

/-- `a(n-1)*A362412((n+1)²)` -/
def P16243710278555968726.Spec : Prop :=
  ∀ n, P16243710278555968726.a n = A327486 (n + 1)

end A327486

/-! ## A327486.P4616526661727496874

`a(n-1)*A401239((n+1)²)` with `a(0)=1`
-/

namespace A327486.P4616526661727496874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * A401239 ((n + 1) ^ 2)

end

end A327486.P4616526661727496874

namespace A327486

/-- `a(n-1)*A401239((n+1)²)` -/
def P4616526661727496874.Spec : Prop :=
  ∀ n, P4616526661727496874.a n = A327486 (n + 1)

end A327486

/-!
# A327488: T(n, k) = 1 + NAND(k - 1, n - k), where NAND is the Sheffer stroke operating bitwise on the inputs, triangle read by rows, T(n, k) for n >= 1, 1 <= k <= n.

The programs for A327488, there is no canonical definition to state claims against.
-/

/-! ## A327488.P9216376708959492363

`A327489(n+1)+A003987(n)`
-/

namespace A327488.P9216376708959492363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327489 (n + 1) + A003987 n

end

end A327488.P9216376708959492363

/-! ## A327488.P14196733263004001173

`A280172(n+1)+A327489(n+1)-1`
-/

namespace A327488.P14196733263004001173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280172 (n + 1) + (A327489 (n + 1) - 1)

end

end A327488.P14196733263004001173

/-! ## A327488.P5346625254223260561

`A062383(A003984(n))-A004198(n)`
-/

namespace A327488.P5346625254223260561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062383 (A003984 n).toNat - A004198 n

end

end A327488.P5346625254223260561

/-! ## A327488.P8689898935955092666

`A062383(A003986(n))-A004198(n)`
-/

namespace A327488.P8689898935955092666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062383 (A003986 n).toNat - A004198 n

end

end A327488.P8689898935955092666

/-! ## A327488.P10897443004849403708

`A062383(A087061(n))-A004198(n)`
-/

namespace A327488.P10897443004849403708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062383 (A087061 n).toNat - A004198 n

end

end A327488.P10897443004849403708

/-! ## A327488.P15150584853639032826

`A062383(A341839(n))-A004198(n)`
-/

namespace A327488.P15150584853639032826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062383 (A341839 n).toNat - A004198 n

end

end A327488.P15150584853639032826

/-! ## A327488.P6974130421697613266

`A062383(A344835(n))-A004198(n)`
-/

namespace A327488.P6974130421697613266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062383 (A344835 n).toNat - A004198 n

end

end A327488.P6974130421697613266

/-! ## A327488.P10082026869818539209

`A062383(A344838(n))-A004198(n)`
-/

namespace A327488.P10082026869818539209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062383 (A344838 n).toNat - A004198 n

end

end A327488.P10082026869818539209

/-! ## A327488.P8088182471542752986

`A080079(A327490(n+1)+A003986(n))`
-/

namespace A327488.P8088182471542752986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080079 (A327490 (n + 1) + A003986 n).toNat

end

end A327488.P8088182471542752986

/-! ## A327488.P5910917102501775895

`A004760(A003986(n)+2)-A003056(n)`
-/

namespace A327488.P5910917102501775895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004760 (A003986 n + 2).toNat - A003056 n

end

end A327488.P5910917102501775895

/-!
# A327489: T(n, k) = 1 + NOR(k - 1, n - k), where NOR is the Peirce arrow operating bitwise on the inputs, triangle read by rows, T(n, k) for n >= 1, 1 <= k <= n.

The programs for A327489, there is no canonical definition to state claims against.
-/

/-! ## A327489.P404582288563536261

`A292370(A054238(n))+1`
-/

namespace A327489.P404582288563536261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292370 (A054238 n).toNat + 1

end

end A327489.P404582288563536261

/-! ## A327489.P13550188207280958115

`A327488(n+1)-A003987(n)`
-/

namespace A327489.P13550188207280958115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327488 (n + 1) - A003987 n

end

end A327489.P13550188207280958115

/-! ## A327489.P14295729362871146225

`A327490(n+1)-A004198(n)`
-/

namespace A327489.P14295729362871146225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327490 (n + 1) - A004198 n

end

end A327489.P14295729362871146225

/-! ## A327489.P444384847129140919

`A080079(or(C(2, n), A003986(n)))`
-/

namespace A327489.P444384847129140919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080079 (Int.lor (Nat.choose 2 n : ℤ) (A003986 n)).toNat

end

end A327489.P444384847129140919

/-! ## A327489.P9674465493963909623

`A080079(A003986(n)+C(2, n²))`
-/

namespace A327489.P9674465493963909623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080079 (A003986 n + (Nat.choose 2 (n ^ 2) : ℤ)).toNat

end

end A327489.P9674465493963909623

/-! ## A327489.P13741462291603055879

`A006068(A038554(A003986(n)))+1`
-/

namespace A327489.P13741462291603055879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006068 (A038554 (A003986 n).toNat).toNat + 1

end

end A327489.P13741462291603055879

/-! ## A327489.P6750309509449828455

`A062383(A003984(n))-A003986(n)`
-/

namespace A327489.P6750309509449828455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062383 (A003984 n).toNat - A003986 n

end

end A327489.P6750309509449828455

/-! ## A327489.P3903403961404892788

`A035327(A003986(n))+A003415(A020639(n+1))`
-/

namespace A327489.P3903403961404892788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035327 (A003986 n).toNat + A003415 (A020639 (n + 1)).toNat

end

end A327489.P3903403961404892788

/-!
# A327490: T(n, k) = 1 + IFF(k - 1, n - k), where IFF is Boolean equality evaluated bitwise on the inputs, triangle read by rows, T(n, k) for n >= 1, 1 <= k <= n.

The programs for A327490, there is no canonical definition to state claims against.
-/

/-! ## A327490.P12335080217853165516

`A327489(n+1)+A004198(n)`
-/

namespace A327490.P12335080217853165516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327489 (n + 1) + A004198 n

end

end A327490.P12335080217853165516

/-! ## A327490.P1871424781168978890

`A062383(A003984(n))-A003987(n)`
-/

namespace A327490.P1871424781168978890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062383 (A003984 n).toNat - A003987 n

end

end A327490.P1871424781168978890

/-! ## A327490.P10747715739335816891

`A062383(A003986(n))-A003987(n)`
-/

namespace A327490.P10747715739335816891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062383 (A003986 n).toNat - A003987 n

end

end A327490.P10747715739335816891

/-! ## A327490.P9038111808917152955

`A062383(A087061(n))-A003987(n)`
-/

namespace A327490.P9038111808917152955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062383 (A087061 n).toNat - A003987 n

end

end A327490.P9038111808917152955

/-! ## A327490.P3419584375307322279

`A062383(A341839(n))-A003987(n)`
-/

namespace A327490.P3419584375307322279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062383 (A341839 n).toNat - A003987 n

end

end A327490.P3419584375307322279

/-! ## A327490.P11859842000542097474

`A062383(A344835(n))-A003987(n)`
-/

namespace A327490.P11859842000542097474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062383 (A344835 n).toNat - A003987 n

end

end A327490.P11859842000542097474

/-! ## A327490.P14841310723269628830

`A062383(A344838(n))-A003987(n)`
-/

namespace A327490.P14841310723269628830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062383 (A344838 n).toNat - A003987 n

end

end A327490.P14841310723269628830

/-! ## A327490.P9052671984612696447

`A002024(n+1)-A006257(A003986(n))`
-/

namespace A327490.P9052671984612696447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (n + 1) - A006257 (A003986 n).toNat

end

end A327490.P9052671984612696447

/-! ## A327490.P10452285346729153914

`A053644(A204022(n+1))-A003987(n)`
-/

namespace A327490.P10452285346729153914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053644 (A204022 (n + 1)).toNat - A003987 n

end

end A327490.P10452285346729153914

/-! ## A327490.P11605364863047819281

`A062383(A003986(n))-A049581(A286099(n))`
-/

namespace A327490.P11605364863047819281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062383 (A003986 n).toNat - A049581 (A286099 n).toNat

end

end A327490.P11605364863047819281

/-!
# A327491: a(0) = 0. If 4 divides n then a(n) = valuation(n, 2) else a(n) = (n mod 2) + 1.

The programs for A327491, the canonical program `A327491.P9424752022941594162` is in `Seq.B000.C044`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A327491 has offset 0).

The definition of A327491 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A327491.P9424752022941594162

`a(n%2)+val(n, 2)` with `a(0)=0, a(1)=2`

The canonical program, it is in `Seq.B000.C044`.
-/

namespace A327491

/-- `a(n%2)+val(n, 2)` -/
def P9424752022941594162.Spec : Prop :=
  ∀ n, (P9424752022941594162.a n : ℤ) = A327491 n

theorem P9424752022941594162.correct : P9424752022941594162.Spec := by
  intro n
  simp only [A327491]

end A327491

/-! ## A327491.P2123161174541519179

`a(and(1, n))+val(n, 2)` with `a(0)=0, a(1)=2`
-/

namespace A327491.P2123161174541519179
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 2] fun n a =>
  a (Nat.land 1 n) + SequenceMachineLib.valuation n 2

end

end A327491.P2123161174541519179

namespace A327491

/-- `a(and(1, n))+val(n, 2)` -/
def P2123161174541519179.Spec : Prop :=
  ∀ n, (P2123161174541519179.a n : ℤ) = A327491 n

theorem P2123161174541519179.correct : P2123161174541519179.Spec := by
  intro n
  simp only [A327491, Nat.add_sub_cancel, A327491.P2123161174541519179.a, A327491.P9424752022941594162.a, SequenceMachineLib.memo_apply]
  try simp

end A327491

/-! ## A327491.P6397335198797386210

`∏{e}[xor(n, -n), #]-(-1)^n`
-/

namespace A327491.P6397335198797386210
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (-(n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p : ℕ) : ℤ) - (-1) ^ n

end

end A327491.P6397335198797386210

namespace A327491

/-- `∏{e}[xor(n, -n), #]-(-1)^n` -/
def P6397335198797386210.Spec : Prop :=
  ∀ n, P6397335198797386210.a n = A327491 n

end A327491

/-! ## A327491.P1263330484719418703

`∑{e}[and(n, -n), #]+Δ[or(1, n)]`
-/

namespace A327491.P1263330484719418703
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (-(n : ℤ))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p : ℕ) : ℤ) + ((f2 (n + 1) : ℤ) - (f2 n : ℤ))

end

end A327491.P1263330484719418703

namespace A327491

/-- `∑{e}[and(n, -n), #]+Δ[or(1, n)]` -/
def P1263330484719418703.Spec : Prop :=
  ∀ n, P1263330484719418703.a n = A327491 n

end A327491

/-! ## A327491.P2334200538933400546

`∑{e}[or(n, -n), #]+Δ[or(1, n)]`
-/

namespace A327491.P2334200538933400546
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n : ℤ) (-(n : ℤ))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p : ℕ) : ℤ) + ((f2 (n + 1) : ℤ) - (f2 n : ℤ))

end

end A327491.P2334200538933400546

namespace A327491

/-- `∑{e}[or(n, -n), #]+Δ[or(1, n)]` -/
def P2334200538933400546.Spec : Prop :=
  ∀ n, P2334200538933400546.a n = A327491 n

end A327491

/-! ## A327491.P6084521925016376712

`val(∑[∑[comp[2*(n+2)]+1]], 2)`
-/

namespace A327491.P6084521925016376712
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 2)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ x) n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (∑ j ∈ Finset.range (n + 1), f1 j) 2

end

end A327491.P6084521925016376712

namespace A327491

/-- `val(∑[∑[comp[2*(n+2)]+1]], 2)` -/
def P6084521925016376712.Spec : Prop :=
  ∀ n, (P6084521925016376712.a n : ℤ) = A327491 n

end A327491

/-! ## A327491.P1281272089164324608

`∑{e}[and(n, -n), #]+(2*n)%4`
-/

namespace A327491.P1281272089164324608
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (-(n : ℤ))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p + 2 * n % 4

end

end A327491.P1281272089164324608

namespace A327491

/-- `∑{e}[and(n, -n), #]+(2*n)%4` -/
def P1281272089164324608.Spec : Prop :=
  ∀ n, (P1281272089164324608.a n : ℤ) = A327491 n

end A327491

/-! ## A327491.P16731829652638010261

`∑{e}[and(n, -n), #]+1-(-1)^n`
-/

namespace A327491.P16731829652638010261
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (-(n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p : ℕ) : ℤ) + (1 - (-1) ^ n)

end

end A327491.P16731829652638010261

namespace A327491

/-- `∑{e}[and(n, -n), #]+1-(-1)^n` -/
def P16731829652638010261.Spec : Prop :=
  ∀ n, P16731829652638010261.a n = A327491 n

end A327491

/-! ## A327491.P10994885745246136117

`1-((-1)^n-∑{e}[and(n, -n), #])`
-/

namespace A327491.P10994885745246136117
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (-(n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((-1) ^ n - ((∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p : ℕ) : ℤ))

end

end A327491.P10994885745246136117

namespace A327491

/-- `1-((-1)^n-∑{e}[and(n, -n), #])` -/
def P10994885745246136117.Spec : Prop :=
  ∀ n, P10994885745246136117.a n = A327491 n

end A327491

/-! ## A327491.P9572530227924912764

`∑{e}[or(n, -n), #]+1-(-1)^n`
-/

namespace A327491.P9572530227924912764
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n : ℤ) (-(n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p : ℕ) : ℤ) + (1 - (-1) ^ n)

end

end A327491.P9572530227924912764

namespace A327491

/-- `∑{e}[or(n, -n), #]+1-(-1)^n` -/
def P9572530227924912764.Spec : Prop :=
  ∀ n, P9572530227924912764.a n = A327491 n

end A327491

/-! ## A327491.P4058266351965610085

`val(A008383(n)², 2)/2`
-/

namespace A327491.P4058266351965610085
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.valuation (A008383 n ^ 2).toNat 2 : ℚ) / 2

end

end A327491.P4058266351965610085

namespace A327491

/-- `val(A008383(n)², 2)/2` -/
def P4058266351965610085.Spec : Prop :=
  ∀ n, P4058266351965610085.a n = (A327491 n : ℚ)

end A327491

/-! ## A327491.P11237075444002052643

`val(A079908(n)², 2)/2`
-/

namespace A327491.P11237075444002052643
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.valuation (A079908 n ^ 2).toNat 2 : ℚ) / 2

end

end A327491.P11237075444002052643

namespace A327491

/-- `val(A079908(n)², 2)/2` -/
def P11237075444002052643.Spec : Prop :=
  ∀ n, P11237075444002052643.a n = (A327491 n : ℚ)

end A327491

/-! ## A327491.P5814265989548800098

`val(A140226(n)², 2)/2`
-/

namespace A327491.P5814265989548800098
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.valuation (A140226 n ^ 2).toNat 2 : ℚ) / 2

end

end A327491.P5814265989548800098

namespace A327491

/-- `val(A140226(n)², 2)/2` -/
def P5814265989548800098.Spec : Prop :=
  ∀ n, P5814265989548800098.a n = (A327491 n : ℚ)

end A327491

/-! ## A327491.P412380584672445163

`A014681(n)-A093049(n)`
-/

namespace A327491.P412380584672445163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 n - A093049 n

end

end A327491.P412380584672445163

namespace A327491

/-- `A014681(n)-A093049(n)` -/
def P412380584672445163.Spec : Prop :=
  ∀ n, P412380584672445163.a n = A327491 n

end A327491

/-! ## A327491.P7533095344553793148

`A089263(A298040(n))`
-/

namespace A327491.P7533095344553793148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089263 (A298040 n).toNat

end

end A327491.P7533095344553793148

namespace A327491

/-- `A089263(A298040(n))` -/
def P7533095344553793148.Spec : Prop :=
  ∀ n, P7533095344553793148.a n = A327491 n

end A327491

/-! ## A327491.P15745933162476951960

`A050606(A266724(n))`
-/

namespace A327491.P15745933162476951960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050606 (A266724 n).toNat

end

end A327491.P15745933162476951960

namespace A327491

/-- `A050606(A266724(n))` -/
def P15745933162476951960.Spec : Prop :=
  ∀ n, P15745933162476951960.a n = A327491 n

end A327491

/-! ## A327491.P16165341671664898623

`A050606(A267354(n))`
-/

namespace A327491.P16165341671664898623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050606 (A267354 n).toNat

end

end A327491.P16165341671664898623

namespace A327491

/-- `A050606(A267354(n))` -/
def P16165341671664898623.Spec : Prop :=
  ∀ n, P16165341671664898623.a n = A327491 n

end A327491

/-! ## A327491.P13679608445449924625

`2*and(1, n)-A088705(2*n)`
-/

namespace A327491.P13679608445449924625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * Nat.land 1 n : ℤ) - A088705 (2 * n)

end

end A327491.P13679608445449924625

namespace A327491

/-- `2*and(1, n)-A088705(2*n)` -/
def P13679608445449924625.Spec : Prop :=
  ∀ n, P13679608445449924625.a n = A327491 n

end A327491

/-! ## A327491.P15119429280804667820

`abs(A136480(2*n)-A167817(n))`
-/

namespace A327491.P15119429280804667820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A136480 (2 * n) - A167817 n|

end

end A327491.P15119429280804667820

namespace A327491

/-- `abs(A136480(2*n)-A167817(n))` -/
def P15119429280804667820.Spec : Prop :=
  ∀ n, P15119429280804667820.a n = A327491 n

end A327491

/-! ## A327491.P17363649801352184179

`A136480(2*n)-A009001(2*n)`
-/

namespace A327491.P17363649801352184179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136480 (2 * n) - A009001 (2 * n)

end

end A327491.P17363649801352184179

namespace A327491

/-- `A136480(2*n)-A009001(2*n)` -/
def P17363649801352184179.Spec : Prop :=
  ∀ n, P17363649801352184179.a n = A327491 n

end A327491

/-!
# A327492: Partial sums of A327491.

The programs for A327492, the canonical program `A327492.P12587166799631753364` is in `Seq.B001.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A327492 has offset 0).

The definition of A327492 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A327492.P12587166799631753364

`A005187(n)+n%2`

The canonical program, it is in `Seq.B001.C012`.
-/

namespace A327492

/-- `A005187(n)+n%2` -/
def P12587166799631753364.Spec : Prop :=
  ∀ n, P12587166799631753364.a n = A327492 n

theorem P12587166799631753364.correct : P12587166799631753364.Spec := by
  intro n
  simp only [A327492]

end A327492

/-! ## A327492.P12475115617559679071

`∑[a(n%2)+val(n, 2)]` with `a(0)=0, a(1)=2`
-/

namespace A327492.P12475115617559679071
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 2] fun n f1 =>
  f1 (n % 2) + SequenceMachineLib.valuation n 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A327492.P12475115617559679071

namespace A327492

/-- `∑[a(n%2)+val(n, 2)]` -/
def P12475115617559679071.Spec : Prop :=
  ∀ n, (P12475115617559679071.a n : ℤ) = A327492 n

end A327492

/-! ## A327492.P6993631938661843203

`∑[∑{e}[xor(n, -n), #]]+and(1, n)`
-/

namespace A327492.P6993631938661843203
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (-(n : ℤ))

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n).natAbs, Nat.factorization (f2 n).natAbs p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + Nat.land 1 n

end

end A327492.P6993631938661843203

namespace A327492

/-- `∑[∑{e}[xor(n, -n), #]]+and(1, n)` -/
def P6993631938661843203.Spec : Prop :=
  ∀ n, (P6993631938661843203.a n : ℤ) = A327492 n

end A327492

/-! ## A327492.P12921691872304591036

`∑[∏{e}[xor(n, -n), #]-(-1)^n]`
-/

namespace A327492.P12921691872304591036
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (-(n : ℤ))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f2 n).natAbs, Nat.factorization (f2 n).natAbs p : ℕ) : ℤ) - (-1) ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A327492.P12921691872304591036

namespace A327492

/-- `∑[∏{e}[xor(n, -n), #]-(-1)^n]` -/
def P12921691872304591036.Spec : Prop :=
  ∀ n, P12921691872304591036.a n = A327492 n

end A327492

/-! ## A327492.P6539534704421395160

`∑[∏{e}[xor(n, -n), #]]-char[2*n]`
-/

namespace A327492.P6539534704421395160
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (-(n : ℤ))

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n).natAbs, Nat.factorization (f2 n).natAbs p

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - ((if ∃ j, f3 j = n then 1 else 0 : ℕ) : ℤ)

end

end A327492.P6539534704421395160

namespace A327492

/-- `∑[∏{e}[xor(n, -n), #]]-char[2*n]` -/
def P6539534704421395160.Spec : Prop :=
  ∀ n, P6539534704421395160.a n = A327492 n

end A327492

/-! ## A327492.P12135771225803593292

`∑[∑{e}[and(n, -n), #]+1-(-1)^n]`
-/

namespace A327492.P12135771225803593292
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (-(n : ℤ))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ p ∈ Nat.primeFactors (f2 n).natAbs, Nat.factorization (f2 n).natAbs p : ℕ) : ℤ) + (1 - (-1) ^ n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A327492.P12135771225803593292

namespace A327492

/-- `∑[∑{e}[and(n, -n), #]+1-(-1)^n]` -/
def P12135771225803593292.Spec : Prop :=
  ∀ n, P12135771225803593292.a n = A327492 n

end A327492

/-! ## A327492.P3524269543076287431

`∑[or(1-(-1)^n, ∑{e}[and(n, -n), #])]`
-/

namespace A327492.P3524269543076287431
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (-(n : ℤ))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (1 - (-1) ^ n) ((∑ p ∈ Nat.primeFactors (f2 n).natAbs, Nat.factorization (f2 n).natAbs p : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A327492.P3524269543076287431

namespace A327492

/-- `∑[or(1-(-1)^n, ∑{e}[and(n, -n), #])]` -/
def P3524269543076287431.Spec : Prop :=
  ∀ n, P3524269543076287431.a n = A327492 n

end A327492

/-! ## A327492.P16861512387476625685

`char[2*n+1]+∑[∑{e}[xor(n, -n), #]]`
-/

namespace A327492.P16861512387476625685
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (-(n : ℤ))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n).natAbs, Nat.factorization (f3 n).natAbs p

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f1 j = n then 1 else 0) + ∑ j ∈ Finset.range (n + 1), f2 j

end

end A327492.P16861512387476625685

namespace A327492

/-- `char[2*n+1]+∑[∑{e}[xor(n, -n), #]]` -/
def P16861512387476625685.Spec : Prop :=
  ∀ n, (P16861512387476625685.a n : ℤ) = A327492 n

end A327492

/-! ## A327492.P10861798013669547479

`∑[val(abs(1-4*n)+1, 2)]-or(1, n)`
-/

namespace A327492.P10861798013669547479
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (|1 - (4 * n : ℤ)| + 1).toNat 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (Nat.lor 1 n : ℤ)

end

end A327492.P10861798013669547479

namespace A327492

/-- `∑[val(abs(1-4*n)+1, 2)]-or(1, n)` -/
def P10861798013669547479.Spec : Prop :=
  ∀ n, P10861798013669547479.a n = A327492 n

end A327492

/-! ## A327492.P4941329487218753658

`∑[A327491(n)]`
-/

namespace A327492.P4941329487218753658
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327491 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A327492.P4941329487218753658

namespace A327492

/-- `∑[A327491(n)]` -/
def P4941329487218753658.Spec : Prop :=
  ∀ n, P4941329487218753658.a n = A327492 n

end A327492

/-! ## A327492.P164486764809597074

`∑[val(A008383(n), 2)]`
-/

namespace A327492.P164486764809597074
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A008383 n).toNat 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A327492.P164486764809597074

namespace A327492

/-- `∑[val(A008383(n), 2)]` -/
def P164486764809597074.Spec : Prop :=
  ∀ n, (P164486764809597074.a n : ℤ) = A327492 n

end A327492

/-! ## A327492.P6394964671216015516

`∑[val(A079908(n), 2)]`
-/

namespace A327492.P6394964671216015516
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A079908 n).toNat 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A327492.P6394964671216015516

namespace A327492

/-- `∑[val(A079908(n), 2)]` -/
def P6394964671216015516.Spec : Prop :=
  ∀ n, (P6394964671216015516.a n : ℤ) = A327492 n

end A327492

/-! ## A327492.P10923630317488454550

`2*n-log2(A060632(n))`
-/

namespace A327492.P10923630317488454550
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (2 * n : ℝ) - Real.logb 2 (A060632 n : ℝ)

end

end A327492.P10923630317488454550

namespace A327492

/-- `2*n-log2(A060632(n))` -/
def P10923630317488454550.Spec : Prop :=
  ∀ n, P10923630317488454550.a n = (A327492 n : ℝ)

end A327492

/-! ## A327492.P8342112137947005898

`A101925(n)-char[2*n]`
-/

namespace A327492.P8342112137947005898
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101925 n - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A327492.P8342112137947005898

namespace A327492

/-- `A101925(n)-char[2*n]` -/
def P8342112137947005898.Spec : Prop :=
  ∀ n, P8342112137947005898.a n = A327492 n

end A327492

/-! ## A327492.P5998343098993102662

`∑[A089080(n+1)]-or(1, n)`
-/

namespace A327492.P5998343098993102662
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089080 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (Nat.lor 1 n : ℤ)

end

end A327492.P5998343098993102662

namespace A327492

/-- `∑[A089080(n+1)]-or(1, n)` -/
def P5998343098993102662.Spec : Prop :=
  ∀ n, P5998343098993102662.a n = A327492 n

end A327492

/-! ## A327492.P1926212986486534428

`char[2*n+1]+2*n-A000120(n)`
-/

namespace A327492.P1926212986486534428
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) + ((2 * n : ℤ) - A000120 n)

end

end A327492.P1926212986486534428

namespace A327492

/-- `char[2*n+1]+2*n-A000120(n)` -/
def P1926212986486534428.Spec : Prop :=
  ∀ n, P1926212986486534428.a n = A327492 n

end A327492

/-! ## A327492.P2260333540653087755

`A005187(n)+A000035(n)`
-/

namespace A327492.P2260333540653087755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005187 n + A000035 n

end

end A327492.P2260333540653087755

namespace A327492

/-- `A005187(n)+A000035(n)` -/
def P2260333540653087755.Spec : Prop :=
  ∀ n, P2260333540653087755.a n = A327492 n

end A327492

/-! ## A327492.P13625621309255904481

`A014601(n)-A000120(n)`
-/

namespace A327492.P13625621309255904481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014601 n - A000120 n

end

end A327492.P13625621309255904481

namespace A327492

/-- `A014601(n)-A000120(n)` -/
def P13625621309255904481.Spec : Prop :=
  ∀ n, P13625621309255904481.a n = A327492 n

theorem P13625621309255904481.correct : P13625621309255904481.Spec := by
  intro n
  simp only [A327492, Nat.add_sub_cancel, A327492.P13625621309255904481.a, A327492.P12587166799631753364.a, A000120, A000120.P2816527436160941581.a, A005187, A005187.P3874015513960485494.a, A014601, A014601.P15167012504094999713.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A327492

/-! ## A327492.P18275900882140553114

`A004134(n)-A052928(n)`
-/

namespace A327492.P18275900882140553114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004134 n - A052928 n

end

end A327492.P18275900882140553114

namespace A327492

/-- `A004134(n)-A052928(n)` -/
def P18275900882140553114.Spec : Prop :=
  ∀ n, P18275900882140553114.a n = A327492 n

end A327492

/-! ## A327492.P8636688572110860211

`A120738(n)-A042948(n)`
-/

namespace A327492.P8636688572110860211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120738 n - A042948 n

end

end A327492.P8636688572110860211

namespace A327492

/-- `A120738(n)-A042948(n)` -/
def P8636688572110860211.Spec : Prop :=
  ∀ n, P8636688572110860211.a n = A327492 n

theorem P8636688572110860211.correct : P8636688572110860211.Spec := by
  intro n
  simp only [A327492, Nat.add_sub_cancel, A327492.P8636688572110860211.a, A327492.P12587166799631753364.a, A005187, A005187.P3874015513960485494.a, A042948, A042948.P9013836715611112494.a, A120738, A120738.P9838444930846786751.a, A000120, A000120.P2816527436160941581.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A327492

/-!
# A327493: a(n) = 2^A327492(n).

The programs for A327493, the canonical program `A327493.P9586062698418527337` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A327493 has offset 0).

The definition of A327493 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A327493.P9586062698418527337

`2^A327492(n)`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A327493

/-- `2^A327492(n)` -/
def P9586062698418527337.Spec : Prop :=
  ∀ n, P9586062698418527337.a n = (A327493 n : ℚ)

end A327493

/-! ## A327493.P6947293379405825865

`4*and(n, 1-n)*a(n-2)` with `a(0)=1, a(1)=4`
-/

namespace A327493.P6947293379405825865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4] fun n a =>
  4 * (Int.land (n : ℤ) (1 - (n : ℤ)) * a (n - 2))

end

end A327493.P6947293379405825865

namespace A327493

/-- `4*and(n, 1-n)*a(n-2)` -/
def P6947293379405825865.Spec : Prop :=
  ∀ n, P6947293379405825865.a n = A327493 n

end A327493

/-! ## A327493.P402668195889539470

`(n%2+1)*∏[gcd(2*n, 2^n)]`
-/

namespace A327493.P402668195889539470
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd (2 * n) (2 ^ n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n % 2 + 1) * (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A327493.P402668195889539470

namespace A327493

/-- `(n%2+1)*∏[gcd(2*n, 2^n)]` -/
def P402668195889539470.Spec : Prop :=
  ∀ n, (P402668195889539470.a n : ℤ) = A327493 n

end A327493

/-! ## A327493.P11829177611217723236

`2^∑[A327491(n)]`
-/

namespace A327493.P11829177611217723236
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327491 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (∑ j ∈ Finset.range (n + 1), f1 j : ℤ)

end

end A327493.P11829177611217723236

namespace A327493

/-- `2^∑[A327491(n)]` -/
def P11829177611217723236.Spec : Prop :=
  ∀ n, P11829177611217723236.a n = (A327493 n : ℚ)

end A327493

/-! ## A327493.P12430940345904992370

`A101926(n)/gcd(2, n)`
-/

namespace A327493.P12430940345904992370
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A101926 n : ℚ) / (Nat.gcd 2 n : ℚ)

end

end A327493.P12430940345904992370

namespace A327493

/-- `A101926(n)/gcd(2, n)` -/
def P12430940345904992370.Spec : Prop :=
  ∀ n, P12430940345904992370.a n = (A327493 n : ℚ)

end A327493

/-! ## A327493.P3196788315231760978

`(n%2+1)*A046161(n)`
-/

namespace A327493.P3196788315231760978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n % 2 + 1 : ℕ) : ℤ) * A046161 n

end

end A327493.P3196788315231760978

namespace A327493

/-- `(n%2+1)*A046161(n)` -/
def P3196788315231760978.Spec : Prop :=
  ∀ n, P3196788315231760978.a n = A327493 n

end A327493

/-! ## A327493.P10102577699829095827

`record[and(2, n)!*A004732(n)]`
-/

namespace A327493.P10102577699829095827
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (Nat.land 2 n) : ℤ) * A004732 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A327493.P10102577699829095827

namespace A327493

/-- `record[and(2, n)!*A004732(n)]` -/
def P10102577699829095827.Spec : Prop :=
  ∀ n, P10102577699829095827.a n = A327493 n

end A327493

/-! ## A327493.P12156274925697644856

`A000079(A327492(n))`
-/

namespace A327493.P12156274925697644856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A327492 n).toNat

end

end A327493.P12156274925697644856

namespace A327493

/-- `A000079(A327492(n))` -/
def P12156274925697644856.Spec : Prop :=
  ∀ n, P12156274925697644856.a n = A327493 n

end A327493

/-! ## A327493.P256811280642850040

`A240988(A042963(n+1))`
-/

namespace A327493.P256811280642850040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240988 (A042963 (n + 1)).toNat

end

end A327493.P256811280642850040

namespace A327493

/-- `A240988(A042963(n+1))` -/
def P256811280642850040.Spec : Prop :=
  ∀ n, P256811280642850040.a n = A327493 n

end A327493

/-! ## A327493.P4891877194359534935

`A000034(n)*A046161(n)`
-/

namespace A327493.P4891877194359534935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 n * A046161 n

end

end A327493.P4891877194359534935

namespace A327493

/-- `A000034(n)*A046161(n)` -/
def P4891877194359534935.Spec : Prop :=
  ∀ n, P4891877194359534935.a n = A327493 n

end A327493

/-! ## A327493.P6772740537905991460

`A056450(n)*A060818(n)`
-/

namespace A327493.P6772740537905991460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056450 n * A060818 n

end

end A327493.P6772740537905991460

namespace A327493

/-- `A056450(n)*A060818(n)` -/
def P6772740537905991460.Spec : Prop :=
  ∀ n, P6772740537905991460.a n = A327493 n

end A327493

/-! ## A327493.P2359978540142170813

`gcd(A101926(n), A120777(n))`
-/

namespace A327493.P2359978540142170813
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A101926 n) (A120777 n)

end

end A327493.P2359978540142170813

namespace A327493

/-- `gcd(A101926(n), A120777(n))` -/
def P2359978540142170813.Spec : Prop :=
  ∀ n, (P2359978540142170813.a n : ℤ) = A327493 n

end A327493

/-! ## A327493.P12481908530019177827

`A120777(n)/A160467(n+1)`
-/

namespace A327493.P12481908530019177827
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A120777 n : ℚ) / (A160467 (n + 1) : ℚ)

end

end A327493.P12481908530019177827

namespace A327493

/-- `A120777(n)/A160467(n+1)` -/
def P12481908530019177827.Spec : Prop :=
  ∀ n, P12481908530019177827.a n = (A327493 n : ℚ)

end A327493

/-! ## A327493.P3124465258272742699

`(2-A059841(n))*A046161(n)`
-/

namespace A327493.P3124465258272742699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A059841 n) * A046161 n

end

end A327493.P3124465258272742699

namespace A327493

/-- `(2-A059841(n))*A046161(n)` -/
def P3124465258272742699.Spec : Prop :=
  ∀ n, P3124465258272742699.a n = A327493 n

end A327493

/-! ## A327493.P9748869610425199226

`A000034(n)*A004730(2*n)`
-/

namespace A327493.P9748869610425199226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 n * A004730 (2 * n)

end

end A327493.P9748869610425199226

namespace A327493

/-- `A000034(n)*A004730(2*n)` -/
def P9748869610425199226.Spec : Prop :=
  ∀ n, P9748869610425199226.a n = A327493 n

end A327493

/-! ## A327493.P1419476431890468710

`A046161(n)*A176895(2*n)`
-/

namespace A327493.P1419476431890468710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046161 n * A176895 (2 * n)

end

end A327493.P1419476431890468710

namespace A327493

/-- `A046161(n)*A176895(2*n)` -/
def P1419476431890468710.Spec : Prop :=
  ∀ n, P1419476431890468710.a n = A327493 n

end A327493

/-! ## A327493.P1842929401205328525

`A000079(A005187(n)+and(1, n))`
-/

namespace A327493.P1842929401205328525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A005187 n + (Nat.land 1 n : ℤ)).toNat

end

end A327493.P1842929401205328525

namespace A327493

/-- `A000079(A005187(n)+and(1, n))` -/
def P1842929401205328525.Spec : Prop :=
  ∀ n, P1842929401205328525.a n = A327493 n

end A327493

/-! ## A327493.P448021605506314912

`A084623(n+1)*A240988(n+1)`
-/

namespace A327493.P448021605506314912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084623 (n + 1) * A240988 (n + 1)

end

end A327493.P448021605506314912

namespace A327493

/-- `A084623(n+1)*A240988(n+1)` -/
def P448021605506314912.Spec : Prop :=
  ∀ n, P448021605506314912.a n = A327493 n

end A327493

/-! ## A327493.P7625756522610298368

`A000034(n)*A004731(2*n+1)`
-/

namespace A327493.P7625756522610298368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 n * A004731 (2 * n + 1)

end

end A327493.P7625756522610298368

namespace A327493

/-- `A000034(n)*A004731(2*n+1)` -/
def P7625756522610298368.Spec : Prop :=
  ∀ n, P7625756522610298368.a n = A327493 n

end A327493

/-! ## A327493.P17749747287158810474

`(A000035(n)+1)*A004730(2*n)`
-/

namespace A327493.P17749747287158810474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000035 n + 1) * A004730 (2 * n)

end

end A327493.P17749747287158810474

namespace A327493

/-- `(A000035(n)+1)*A004730(2*n)` -/
def P17749747287158810474.Spec : Prop :=
  ∀ n, P17749747287158810474.a n = A327493 n

end A327493

/-!
# A327494: a(n) = numerator(r(n)) where r(n) = Sum_{j=0..n} j!/(2^j*floor(j/2)!)^2.

The programs for A327494, the canonical program `A327494.P5378013798325398775` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A327494 has offset 0).

The definition of A327494 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 168 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A327494.P5378013798325398775

`∑{#}[n, A163590(#)*2^(A327492(n)-A327492(#))]`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A327494

/-- `∑{#}[n, A163590(#)*2^(A327492(n)-A327492(#))]` -/
def P5378013798325398775.Spec : Prop :=
  ∀ n, P5378013798325398775.a n = (A327494 n : ℚ)

end A327494

/-! ## A327494.P14990205397812814111

`A034887(or(A000045(3*(n+1)), A100245(2*(n+1))))`
-/

namespace A327494.P14990205397812814111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034887 (Int.lor (A000045 (3 * (n + 1))) (A100245 (2 * (n + 1)))).toNat

end

end A327494.P14990205397812814111

namespace A327494

/-- `A034887(or(A000045(3*(n+1)), A100245(2*(n+1))))` -/
def P14990205397812814111.Spec : Prop :=
  ∀ n, P14990205397812814111.a n = A327494 n

end A327494

/-!
# A327495: a(n) = numerator( Sum_{j=0..n} (j!/(2^j*floor(j/2)!)^2)^2 ).

The programs for A327495, the canonical program `A327495.P7618984627077687304` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A327495 has offset 0).

The definition of A327495 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A327495.P7618984627077687304

`∑{#}[n, (A163590(#)*2^(A327492(n)-A327492(#)))²]`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A327495

/-- `∑{#}[n, (A163590(#)*2^(A327492(n)-A327492(#)))²]` -/
def P7618984627077687304.Spec : Prop :=
  ∀ n, P7618984627077687304.a n = (A327495 n : ℚ)

end A327495

/-!
# A327496: a(n) = a(n - 1) * 4^r where r = valuation(n, 2) if 4 divides n else r = (n mod 2) + 1; a(0) = 1. The denominators of A327495.

The programs for A327496, the canonical program `A327496.P5933299371666514087` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A327496 has offset 0).

The definition of A327496 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A327496.P5933299371666514087

`4^A327492(n)`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A327496

/-- `4^A327492(n)` -/
def P5933299371666514087.Spec : Prop :=
  ∀ n, P5933299371666514087.a n = (A327496 n : ℚ)

end A327496

/-! ## A327496.P7788321777647477476

`A327493(n)²`
-/

namespace A327496.P7788321777647477476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327493 n ^ 2

end

end A327496.P7788321777647477476

namespace A327496

/-- `A327493(n)²` -/
def P7788321777647477476.Spec : Prop :=
  ∀ n, P7788321777647477476.a n = A327496 n

end A327496

/-! ## A327496.P11321395254363863786

`4^∑[A327491(n)]`
-/

namespace A327496.P11321395254363863786
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327491 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 : ℚ) ^ (∑ j ∈ Finset.range (n + 1), f1 j : ℤ)

end

end A327496.P11321395254363863786

namespace A327496

/-- `4^∑[A327491(n)]` -/
def P11321395254363863786.Spec : Prop :=
  ∀ n, P11321395254363863786.a n = (A327496 n : ℚ)

end A327496

/-! ## A327496.P13859480480901434229

`(A101926(n)/gcd(2, n))²`
-/

namespace A327496.P13859480480901434229
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A101926 n : ℚ) / (Nat.gcd 2 n : ℚ)) ^ 2

end

end A327496.P13859480480901434229

namespace A327496

/-- `(A101926(n)/gcd(2, n))²` -/
def P13859480480901434229.Spec : Prop :=
  ∀ n, P13859480480901434229.a n = (A327496 n : ℚ)

end A327496

/-! ## A327496.P6763753365786590334

`((1+n%2)*A046161(n))²`
-/

namespace A327496.P6763753365786590334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((1 + n % 2 : ℕ) : ℤ) * A046161 n) ^ 2

end

end A327496.P6763753365786590334

namespace A327496

/-- `((1+n%2)*A046161(n))²` -/
def P6763753365786590334.Spec : Prop :=
  ∀ n, P6763753365786590334.a n = A327496 n

end A327496

/-! ## A327496.P14845775186829217863

`A000302(A327492(n))`
-/

namespace A327496.P14845775186829217863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000302 (A327492 n).toNat

end

end A327496.P14845775186829217863

namespace A327496

/-- `A000302(A327492(n))` -/
def P14845775186829217863.Spec : Prop :=
  ∀ n, P14845775186829217863.a n = A327496 n

end A327496

/-! ## A327496.P16952874400702997781

`A000079(2*A327492(n))`
-/

namespace A327496.P16952874400702997781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (2 * A327492 n).toNat

end

end A327496.P16952874400702997781

namespace A327496

/-- `A000079(2*A327492(n))` -/
def P16952874400702997781.Spec : Prop :=
  ∀ n, P16952874400702997781.a n = A327496 n

end A327496

/-! ## A327496.P13105137172147209582

`(A000034(n)*A046161(n))²`
-/

namespace A327496.P13105137172147209582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000034 n * A046161 n) ^ 2

end

end A327496.P13105137172147209582

namespace A327496

/-- `(A000034(n)*A046161(n))²` -/
def P13105137172147209582.Spec : Prop :=
  ∀ n, P13105137172147209582.a n = A327496 n

end A327496

/-! ## A327496.P17549090393089230242

`(A056450(n)*A060818(n))²`
-/

namespace A327496.P17549090393089230242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A056450 n * A060818 n) ^ 2

end

end A327496.P17549090393089230242

namespace A327496

/-- `(A056450(n)*A060818(n))²` -/
def P17549090393089230242.Spec : Prop :=
  ∀ n, P17549090393089230242.a n = A327496 n

end A327496

/-! ## A327496.P12296060997458657856

`gcd(A101926(n), A120777(n))²`
-/

namespace A327496.P12296060997458657856
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A101926 n) (A120777 n) ^ 2

end

end A327496.P12296060997458657856

namespace A327496

/-- `gcd(A101926(n), A120777(n))²` -/
def P12296060997458657856.Spec : Prop :=
  ∀ n, (P12296060997458657856.a n : ℤ) = A327496 n

end A327496

/-!
# A327497: a(n) = Numerator([x^n] (4*sinh(sqrt(x)/2)^2*cosh(sqrt(x)))/x).

The programs for A327497, there is no canonical definition to state claims against.
-/

/-! ## A327497.P9216059881786655429

`A002678(2*(n+1))`
-/

namespace A327497.P9216059881786655429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002678 (2 * (n + 1))

end

end A327497.P9216059881786655429

/-! ## A327497.P6297976349491354396

`or(1, A002678(A004277(n+1)))`
-/

namespace A327497.P6297976349491354396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A002678 (A004277 (n + 1)).toNat)

end

end A327497.P6297976349491354396

/-! ## A327497.P14874814577756870274

`or(1, A002678(A317108(n+1)))`
-/

namespace A327497.P14874814577756870274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A002678 (A317108 (n + 1)).toNat)

end

end A327497.P14874814577756870274

/-! ## A327497.P15773711653115100850

`or(1, A002678(A317440(n+1)))`
-/

namespace A327497.P15773711653115100850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A002678 (A317440 (n + 1)).toNat)

end

end A327497.P15773711653115100850

/-! ## A327497.P7469539714019561635

`or(1, A002678(A144396(n+1)-1))`
-/

namespace A327497.P7469539714019561635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A002678 (A144396 (n + 1) - 1).toNat)

end

end A327497.P7469539714019561635

/-!
# A327498: Maximum divisor of n whose prime multiplicities are distinct (A130091).

The programs for A327498, there is no canonical definition to state claims against.
-/

/-! ## A327498.P15070665461675497559

`(n+1)/A327499(n+1)`
-/

namespace A327498.P15070665461675497559
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A327499 (n + 1) : ℚ)

end

end A327498.P15070665461675497559

/-! ## A327498.P2559885631222540150

`floor((Δ[n²]-n)/A327499(Δ[n²]-n))`
-/

namespace A327498.P2559885631222540150
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ) : ℚ) / (A327499 ((f2 (n + 1) : ℤ) - (f2 n : ℤ) - (n : ℤ)).toNat : ℚ)⌋

end

end A327498.P2559885631222540150

/-! ## A327498.P7922413141282229188

`(n+1)/∏{p}[A353693(A295417(n+1)), #]`
-/

namespace A327498.P7922413141282229188
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353693 (A295417 (n + 1)).toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n).natAbs, p : ℕ) : ℚ)

end

end A327498.P7922413141282229188

/-! ## A327498.P696875922073918013

`A051537(A327499(n+1)+∑[n])`
-/

namespace A327498.P696875922073918013
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051537 (A327499 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A327498.P696875922073918013

/-! ## A327498.P15552364068022783731

`A054531(A327499(n+1)+∑[n])`
-/

namespace A327498.P15552364068022783731
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054531 (A327499 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A327498.P15552364068022783731

/-! ## A327498.P1111406559035298240

`A126988(A327499(n+1)+∑[n])`
-/

namespace A327498.P1111406559035298240
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126988 (A327499 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A327498.P1111406559035298240

/-! ## A327498.P2542250378509862700

`A049834(A327499(n+1)+A000217(n))`
-/

namespace A327498.P2542250378509862700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049834 (A327499 (n + 1) + A000217 n).toNat

end

end A327498.P2542250378509862700

/-! ## A327498.P11477328455562746977

`A267177(A327499(n+1)+n²)`
-/

namespace A327498.P11477328455562746977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267177 (A327499 (n + 1) + (n ^ 2 : ℤ)).toNat

end

end A327498.P11477328455562746977

/-!
# A327499: Quotient of n over the maximum divisor of n whose prime multiplicities are distinct.

The programs for A327499, there is no canonical definition to state claims against.
-/

/-! ## A327499.P5221814212622775460

`(n+1)/A327498(n+1)`
-/

namespace A327499.P5221814212622775460
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A327498 (n + 1) : ℚ)

end

end A327499.P5221814212622775460

/-! ## A327499.P845089476722652471

`(n+1)*A327498(n+1)^A008683(A007918(n))`
-/

namespace A327499.P845089476722652471
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) * (A327498 (n + 1) : ℚ) ^ (A008683 (A007918 n).toNat : ℤ)

end

end A327499.P845089476722652471

/-! ## A327499.P13832157813177419629

`A007913(A037449(n+1)*A327498(n+1))`
-/

namespace A327499.P13832157813177419629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (A037449 (n + 1) * A327498 (n + 1)).toNat

end

end A327499.P13832157813177419629

/-! ## A327499.P70389440868355471

`A007913(A007913(n+1)*(A000188(n+1)+1)²*A327498(n+1))`
-/

namespace A327499.P70389440868355471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (A007913 (n + 1) * (A000188 (n + 1) + 1) ^ 2 * A327498 (n + 1)).toNat

end

end A327499.P70389440868355471

/-! ## A327499.P4153960205625722134

`∏{p}[A353693(A295417(1+n)), #]`
-/

namespace A327499.P4153960205625722134
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353693 (A295417 (1 + n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A327499.P4153960205625722134

/-! ## A327499.P6184886999580360397

`gcd(A007947(n+1), A353693(A295417(n+1)))`
-/

namespace A327499.P6184886999580360397
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A007947 (n + 1)) (A353693 (A295417 (n + 1)).toNat)

end

end A327499.P6184886999580360397

/-! ## A327499.P12866673455141085596

`A353693(lcm(A295417(n+1), A353693(n+1)))`
-/

namespace A327499.P12866673455141085596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353693 (Int.lcm (A295417 (n + 1)) (A353693 (n + 1)))

end

end A327499.P12866673455141085596

/-! ## A327499.P6430243271907530423

`A055231(A007913(n+1)*A327498(n+1))`
-/

namespace A327499.P6430243271907530423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055231 (A007913 (n + 1) * A327498 (n + 1)).toNat

end

end A327499.P6430243271907530423

/-! ## A327499.P16561689952695607530

`A055231(A055231(n+1)*A327498(n+1))`
-/

namespace A327499.P16561689952695607530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055231 (A055231 (n + 1) * A327498 (n + 1)).toNat

end

end A327499.P16561689952695607530

/-! ## A327499.P4297958208986079300

`A234575(A327498(n+1)+∑[n])`
-/

namespace A327499.P4297958208986079300
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234575 (A327498 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A327499.P4297958208986079300

/-! ## A327499.P5596439245457962022

`A049834(A327498(n+1)+∑[n])`
-/

namespace A327499.P5596439245457962022
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049834 (A327498 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A327499.P5596439245457962022

/-! ## A327499.P14760963375105382959

`A051537(A327498(n+1)+∑[n])`
-/

namespace A327499.P14760963375105382959
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051537 (A327498 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A327499.P14760963375105382959

/-! ## A327499.P3567809528009284676

`A054531(A327498(n+1)+∑[n])`
-/

namespace A327499.P3567809528009284676
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054531 (A327498 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A327499.P3567809528009284676

/-! ## A327499.P8675095282973369735

`A126988(A327498(n+1)+∑[n])`
-/

namespace A327499.P8675095282973369735
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126988 (A327498 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A327499.P8675095282973369735

/-! ## A327499.P675699821730176400

`A277227(A327498(n+1)+A000124(n))`
-/

namespace A327499.P675699821730176400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277227 (A327498 (n + 1) + A000124 n).toNat

end

end A327499.P675699821730176400

/-! ## A327499.P17541710502854585979

`gcd(n+1, A353693((n+1)²))`
-/

namespace A327499.P17541710502854585979
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A353693 ((n + 1) ^ 2))

end

end A327499.P17541710502854585979

/-! ## A327499.P5101197419061400043

`A254503(A353693((n+1)²))`
-/

namespace A327499.P5101197419061400043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254503 (A353693 ((n + 1) ^ 2)).toNat

end

end A327499.P5101197419061400043

