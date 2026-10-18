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
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C034
import Seq.B000.C035
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C004
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
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
import Seq.B008.C001
import Seq.B009.C000
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
import Seq.Opaque.C025

/-!
# A293300: E.g.f.: Product_{m>0} 1/(1 + x^m).

The programs for A293300, there is no canonical definition to state claims against.
-/

/-! ## A293300.P17822319508050391446

`n!*A081362(n)`
-/

namespace A293300.P17822319508050391446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * A081362 n

end

end A293300.P17822319508050391446

/-! ## A293300.P10653873665586178387

`A293299(∑[n+2]-1)`
-/

namespace A293300.P10653873665586178387
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293299 (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A293300.P10653873665586178387

/-! ## A293300.P8246314686102499760

`n!*A290217(∑[n+2]-1)`
-/

namespace A293300.P8246314686102499760
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * A290217 (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A293300.P8246314686102499760

/-! ## A293300.P5693258247483928358

`A000142(n)*A081362(n)`
-/

namespace A293300.P5693258247483928358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n * A081362 n

end

end A293300.P5693258247483928358

/-! ## A293300.P9410599537892877220

`∏[A028310(n)]*A081362(n)`
-/

namespace A293300.P9410599537892877220
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∏ j ∈ Finset.range (n + 1), f1 j) * A081362 n

end

end A293300.P9410599537892877220

/-! ## A293300.P15169135264126271492

`ratio[A057077(n)]*A000700(n)*n!`
-/

namespace A293300.P15169135264126271492
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057077 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℚ) / (f1 n : ℚ) * (A000700 n : ℚ) * (Nat.factorial n : ℚ)

end

end A293300.P15169135264126271492

/-! ## A293300.P534420967152927672

`A008279(A000096(n))*A081362(n)`
-/

namespace A293300.P534420967152927672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008279 (A000096 n).toNat * A081362 n

end

end A293300.P534420967152927672

/-! ## A293300.P18260362976254784996

`A033999(n)*A293486(A055998(n)+1)`
-/

namespace A293300.P18260362976254784996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A293486 (A055998 n + 1).toNat

end

end A293300.P18260362976254784996

/-! ## A293300.P8873219155199490711

`A000700(n)*A037223(n)*A055634(n)`
-/

namespace A293300.P8873219155199490711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000700 n * A037223 n * A055634 n

end

end A293300.P8873219155199490711

/-! ## A293300.P6251706857859140393

`A000700(n)*A057077(A004277(n))*n!`
-/

namespace A293300.P6251706857859140393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000700 n * A057077 (A004277 n).toNat * (Nat.factorial n : ℤ)

end

end A293300.P6251706857859140393

/-!
# A293301: Square array A(n,k), n >= 0, k >= 0, read by antidiagonals, where column k is the expansion of e.g.f. Product_{i>0} 1/(Sum_{j=0..k} (-1)^j*x^(j*i)/j!).

The programs for A293301, there is no canonical definition to state claims against.
-/

/-! ## A293301.P501890386507081466

`A051903(2^A276921(n))*A193739(A058974(n+1))`
-/

namespace A293301.P501890386507081466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A276921 n : ℤ))).toNat * A193739 (A058974 (n + 1)).toNat

end

end A293301.P501890386507081466

/-! ## A293301.P15334835914949068498

`A193739(A058974(n+1))*A257564(A276921(n)²)`
-/

namespace A293301.P15334835914949068498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193739 (A058974 (n + 1)).toNat * A257564 (A276921 n ^ 2).toNat

end

end A293301.P15334835914949068498

/-! ## A293301.P2675221475445024605

`A193739(A058974(n+1))*A257564(7*A276921(n))`
-/

namespace A293301.P2675221475445024605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193739 (A058974 (n + 1)).toNat * A257564 (7 * A276921 n).toNat

end

end A293301.P2675221475445024605

/-! ## A293301.P13676227813439639232

`A193739(A058974(n+1))*A347689(10*A276921(n))`
-/

namespace A293301.P13676227813439639232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193739 (A058974 (n + 1)).toNat * A347689 (10 * A276921 n).toNat

end

end A293301.P13676227813439639232

/-! ## A293301.P14314499974952040094

`A276921(A001222(2^n))*A129713(A034261(n+1))`
-/

namespace A293301.P14314499974952040094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276921 (A001222 (2 ^ n)).toNat * A129713 (A034261 (n + 1)).toNat

end

end A293301.P14314499974952040094

/-!
# A293302: E.g.f.: Product_{m>0} 1/(1 - x^m + x^(2*m)/2!).

The programs for A293302, there is no canonical definition to state claims against.
-/

/-! ## A293302.P17506723957238690853

`A293301(∑[n+3])`
-/

namespace A293302.P17506723957238690853
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293301 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A293302.P17506723957238690853

/-! ## A293302.P11788638537914526686

`A293301(A027379(n+1))+floor(C(2, n)/3)`
-/

namespace A293302.P11788638537914526686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293301 (A027379 (n + 1)).toNat + ⌊(Nat.choose 2 n : ℚ) / 3⌋

end

end A293302.P11788638537914526686

/-! ## A293302.P9192393992016409707

`or(A000007(n), A293301(A055998(n+1)))`
-/

namespace A293302.P9192393992016409707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A293301 (A055998 (n + 1)).toNat)

end

end A293302.P9192393992016409707

/-! ## A293302.P3161689682568196927

`A293301(A027379(n+1))+char[A002997(n+1)]`
-/

namespace A293302.P3161689682568196927
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002997 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293301 (A027379 (n + 1)).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A293302.P3161689682568196927

/-! ## A293302.P12763281877618747231

`A293301(A055998(n+1))^gcd(2, A000040(n+1))`
-/

namespace A293302.P12763281877618747231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293301 (A055998 (n + 1)).toNat ^ Int.gcd 2 (A000040 (n + 1))

end

end A293302.P12763281877618747231

/-! ## A293302.P8528933849620763995

`A008292(A000124(n))*A293301(A027379(n+1))`
-/

namespace A293302.P8528933849620763995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008292 (A000124 n).toNat * A293301 (A027379 (n + 1)).toNat

end

end A293302.P8528933849620763995

/-! ## A293302.P2989645434416582592

`lcm(A093429(n+1), A293301(A027379(n+1)))`
-/

namespace A293302.P2989645434416582592
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A093429 (n + 1)) (A293301 (A027379 (n + 1)).toNat)

end

end A293302.P2989645434416582592

/-!
# A293303: Exponential convolution of the exponential Mobius function and the natural numbers.

The programs for A293303, there is no canonical definition to state claims against.
-/

/-! ## A293303.P16768457714218451157

`A153679(A153679(n+1))-A001222(A303278(n+1))`
-/

namespace A293303.P16768457714218451157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153679 (A153679 (n + 1)).toNat - A001222 (A303278 (n + 1)).toNat

end

end A293303.P16768457714218451157

/-! ## A293303.P13540052669533099289

`1-A032741(A303278(n+1))+n`
-/

namespace A293303.P13540052669533099289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A032741 (A303278 (n + 1)).toNat + (n : ℤ)

end

end A293303.P13540052669533099289

/-! ## A293303.P3917377615453451870

`A000027(n+1)-A064415(A303278(n+1))`
-/

namespace A293303.P3917377615453451870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (n + 1) - A064415 (A303278 (n + 1)).toNat

end

end A293303.P3917377615453451870

/-! ## A293303.P12130176893917203345

`A153679(n+1)-A113901(A303278(n+1))`
-/

namespace A293303.P12130176893917203345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153679 (n + 1) - A113901 (A303278 (n + 1)).toNat

end

end A293303.P12130176893917203345

/-! ## A293303.P14684435351978481538

`A247064(n+1)-A275812(A303278(n+1))`
-/

namespace A293303.P14684435351978481538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247064 (n + 1) - A275812 (A303278 (n + 1)).toNat

end

end A293303.P14684435351978481538

/-!
# A293304: Expansion of Product_{k>=1} (1 + x^(2*k-1) + 2*x^(4*k-2)).

The programs for A293304, there is no canonical definition to state claims against.
-/

/-! ## A293304.P6079069216683859415

`A293461(∑[n+3])`
-/

namespace A293304.P6079069216683859415
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293461 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A293304.P6079069216683859415

/-! ## A293304.P16799337160828925225

`or(char[1], A293461(A055998(n+1)))`
-/

namespace A293304.P16799337160828925225
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A293461 (A055998 (n + 1)).toNat)

end

end A293304.P16799337160828925225

/-! ## A293304.P16203173405700219891

`gcd(A000038(n), A293461(A055998(n+1)))`
-/

namespace A293304.P16203173405700219891
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A293461 (A055998 (n + 1)).toNat)

end

end A293304.P16203173405700219891

/-! ## A293304.P16316233340547781562

`char[A001057(n)]*A293461(A055998(n+1))`
-/

namespace A293304.P16316233340547781562
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A293461 (A055998 (n + 1)).toNat

end

end A293304.P16316233340547781562

/-! ## A293304.P6731369496705138688

`char[A329278(n)]*A293461(A055998(n+1))`
-/

namespace A293304.P6731369496705138688
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329278 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A293461 (A055998 (n + 1)).toNat

end

end A293304.P6731369496705138688

/-! ## A293304.P4909502893866873890

`A293461(A055998(n+1))+A000007(n+1)`
-/

namespace A293304.P4909502893866873890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293461 (A055998 (n + 1)).toNat + A000007 (n + 1)

end

end A293304.P4909502893866873890

/-! ## A293304.P9370642715556810590

`A293461(A055998(n+1))+A000035(2*n)`
-/

namespace A293304.P9370642715556810590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293461 (A055998 (n + 1)).toNat + A000035 (2 * n)

end

end A293304.P9370642715556810590

/-! ## A293304.P2328658746953161921

`A057979(2*n)*A293461(A055998(n+1))`
-/

namespace A293304.P2328658746953161921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 (2 * n) * A293461 (A055998 (n + 1)).toNat

end

end A293304.P2328658746953161921

/-! ## A293304.P5597510392366568608

`A293461(A055998(n+1))%A000041(n+2)`
-/

namespace A293304.P5597510392366568608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A293461 (A055998 (n + 1)).toNat) (A000041 (n + 2))

end

end A293304.P5597510392366568608

/-! ## A293304.P6245908261931157506

`A007318(C(2, n))*A293461(A055998(n+1))`
-/

namespace A293304.P6245908261931157506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A293461 (A055998 (n + 1)).toNat

end

end A293304.P6245908261931157506

/-! ## A293304.P4072095798786785294

`A000010(C(2, n)!)*A293461(A055998(n+1))`
-/

namespace A293304.P4072095798786785294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (Nat.factorial (Nat.choose 2 n)) * A293461 (A055998 (n + 1)).toNat

end

end A293304.P4072095798786785294

/-! ## A293304.P7884372994254798198

`A000041(n*char[1])*A293461(A055998(n+1))`
-/

namespace A293304.P7884372994254798198
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (n * (if ∃ j, f1 j = n then 1 else 0)) * A293461 (A055998 (n + 1)).toNat

end

end A293304.P7884372994254798198

/-! ## A293304.P10023564814685005344

`A000108(C(2, n+2))*A293461(A055998(n+1))`
-/

namespace A293304.P10023564814685005344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (Nat.choose 2 (n + 2)) * A293461 (A055998 (n + 1)).toNat

end

end A293304.P10023564814685005344

/-! ## A293304.P14582863732276530612

`lcm(A000040(n+2)%2, A293461(A055998(n+1)))`
-/

namespace A293304.P14582863732276530612
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (Int.tmod (A000040 (n + 2)) 2) (A293461 (A055998 (n + 1)).toNat)

end

end A293304.P14582863732276530612

/-! ## A293304.P18199628901524969207

`A293461(A055998(n+1))+A001222((n+1)²)%2`
-/

namespace A293304.P18199628901524969207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293461 (A055998 (n + 1)).toNat + Int.tmod (A001222 ((n + 1) ^ 2)) 2

end

end A293304.P18199628901524969207

/-! ## A293304.P15389943464781229489

`(A000005(n+1)%2)!*A293461(A055998(n+1))`
-/

namespace A293304.P15389943464781229489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (Int.tmod (A000005 (n + 1)) 2).toNat : ℤ) * A293461 (A055998 (n + 1)).toNat

end

end A293304.P15389943464781229489

/-! ## A293304.P8309437693933045605

`A293461(A055998(n+1))+(2*A001222(n+1))%2`
-/

namespace A293304.P8309437693933045605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293461 (A055998 (n + 1)).toNat + Int.tmod (2 * A001222 (n + 1)) 2

end

end A293304.P8309437693933045605

/-! ## A293304.P14952203257161249745

`A293461(A055998(n+1))^A001221(A001316(n))`
-/

namespace A293304.P14952203257161249745
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A293461 (A055998 (n + 1)).toNat : ℚ) ^ (A001221 (A001316 n).toNat : ℤ)

end

end A293304.P14952203257161249745

/-! ## A293304.P4866280547174236577

`-A008683(A020483(n))*A293461(A055998(n+1))`
-/

namespace A293304.P4866280547174236577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(A008683 (A020483 n).toNat * A293461 (A055998 (n + 1)).toNat)

end

end A293304.P4866280547174236577

/-! ## A293304.P6313491836771000249

`A003415(A000040(n+1))*A293461(A055998(n+1))`
-/

namespace A293304.P6313491836771000249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (A000040 (n + 1)).toNat * A293461 (A055998 (n + 1)).toNat

end

end A293304.P6313491836771000249

/-!
# A293305: Square array A(n,k), n >= 0, k >= 0, read by antidiagonals, where column k is the expansion of g.f. Product_{i>0} (1 + Sum_{j=1..k} (-1)^j*j*x^(j*i)).

The programs for A293305, there is no canonical definition to state claims against.
-/

/-! ## A293305.P12143598559812368829

`A293071(n)/A073203(A293071(n)²)`
-/

namespace A293305.P12143598559812368829
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A293071 n : ℚ) / (A073203 (A293071 n ^ 2).toNat : ℚ)

end

end A293305.P12143598559812368829

/-! ## A293305.P5518725632277228768

`A293071(n)/A073204(A293071(n)²)`
-/

namespace A293305.P5518725632277228768
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A293071 n : ℚ) / (A073204 (A293071 n ^ 2).toNat : ℚ)

end

end A293305.P5518725632277228768

/-! ## A293305.P3519881718729198085

`A293071(n)/A073203(A073204(n))`
-/

namespace A293305.P3519881718729198085
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A293071 n : ℚ) / (A073203 (A073204 n).toNat : ℚ)

end

end A293305.P3519881718729198085

/-! ## A293305.P16411491701566612607

`A293071(n)/A302233(A294250(n))`
-/

namespace A293305.P16411491701566612607
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A293071 n : ℚ) / (A302233 (A294250 n).toNat : ℚ)

end

end A293305.P16411491701566612607

/-! ## A293305.P299845354981090153

`A293071(n)+A067898(A213916(n+1))`
-/

namespace A293305.P299845354981090153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293071 n + A067898 (A213916 (n + 1)).toNat

end

end A293305.P299845354981090153

/-!
# A293306: Expansion of (eta(q)*eta(q^3))/eta(q^2)^2 in powers of q.

The programs for A293306, there is no canonical definition to state claims against.
-/

/-! ## A293306.P10651493001271829120

`A033999(n)*A385520(n)`
-/

namespace A293306.P10651493001271829120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A385520 n

end

end A293306.P10651493001271829120

/-! ## A293306.P6518575823541111809

`A293305(∑[4*n])`
-/

namespace A293306.P6518575823541111809
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293305 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A293306.P6518575823541111809

/-! ## A293306.P15675872709707654431

`or(char[1], A293305(A046092(n)))`
-/

namespace A293306.P15675872709707654431
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A293305 (A046092 n).toNat)

end

end A293306.P15675872709707654431

/-! ## A293306.P8959790744487626763

`or(char[1], A293305(A266725(2*n)))`
-/

namespace A293306.P8959790744487626763
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A293305 (A266725 (2 * n)).toNat)

end

end A293306.P8959790744487626763

/-! ## A293306.P3328016520903343710

`A293305(A046092(n))%∑[A000032(n)]`
-/

namespace A293306.P3328016520903343710
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A293305 (A046092 n).toNat) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A293306.P3328016520903343710

/-! ## A293306.P8669153704783988841

`A293305(A046092(n))+A000038(n+2)`
-/

namespace A293306.P8669153704783988841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293305 (A046092 n).toNat + A000038 (n + 2)

end

end A293306.P8669153704783988841

/-! ## A293306.P5827916558567548301

`A007318(C(n, 2))*A293305(A046092(n))`
-/

namespace A293306.P5827916558567548301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose n 2) * A293305 (A046092 n).toNat

end

end A293306.P5827916558567548301

/-! ## A293306.P14227455767818336477

`A293305(A266725(2*n))%record[A000032(n)]`
-/

namespace A293306.P14227455767818336477
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A293305 (A266725 (2 * n)).toNat) (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A293306.P14227455767818336477

/-! ## A293306.P8100839067620119377

`A014963(98*(n+1))*A293305(A046092(n))`
-/

namespace A293306.P8100839067620119377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (98 * (n + 1)) * A293305 (A046092 n).toNat

end

end A293306.P8100839067620119377

/-! ## A293306.P3971213496014429923

`A008683(gcd(n, n+1))*A293305(A046092(n))`
-/

namespace A293306.P3971213496014429923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (Nat.gcd n (n + 1)) * A293305 (A046092 n).toNat

end

end A293306.P3971213496014429923

/-!
# A293307: Square array A(n,k), n >= 0, k >= 0, read by antidiagonals, where column k is the expansion of g.f. Product_{i>0} 1/(1 + Sum_{j=1..k} (-1)^j*j*x^(j*i)).

The programs for A293307, there is no canonical definition to state claims against.
-/

/-! ## A293307.P3991462224284750888

`ceil(A293293(n)/A056926(A320114(n+1)))`
-/

namespace A293307.P3991462224284750888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A293293 n : ℚ) / (A056926 (A320114 (n + 1)).toNat : ℚ)⌉

end

end A293307.P3991462224284750888

/-! ## A293307.P15034088240531172367

`ceil(A293293(n)/A194673(n))`
-/

namespace A293307.P15034088240531172367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A293293 n : ℚ) / (A194673 n : ℚ)⌉

end

end A293307.P15034088240531172367

/-! ## A293307.P5518239023463382083

`A293293(n)%A151555(A057731(2*(n+1)))`
-/

namespace A293307.P5518239023463382083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A293293 n) (A151555 (A057731 (2 * (n + 1))).toNat)

end

end A293307.P5518239023463382083

/-! ## A293307.P14857748489529673464

`A293293(n)-A067898(A213916(n+1))`
-/

namespace A293307.P14857748489529673464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293293 n - A067898 (A213916 (n + 1)).toNat

end

end A293307.P14857748489529673464

/-! ## A293307.P5745243548844512699

`A293293(n)%A080552(n)`
-/

namespace A293307.P5745243548844512699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A293293 n) (A080552 n)

end

end A293307.P5745243548844512699

/-!
# A293308: Number of permutations of zero-one words with A056576(n)-n zeros and n-1 ones.

The programs for A293308, the canonical program `A293308.P11952553668781319517` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A293308 has offset 1).

The definition of A293308 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A293308.P11952553668781319517

`(A056576(n+1)-1)!/((A056576(n+1)-(n+1))!*n!)`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A293308

/-- `(A056576(n+1)-1)!/((A056576(n+1)-(n+1))!*n!)` -/
def P11952553668781319517.Spec : Prop :=
  ∀ n, P11952553668781319517.a n = (A293308 (n + 1) : ℚ)

end A293308

/-! ## A293308.P1115370606032285636

`C(floor(log2(∑[3^n])), n)`
-/

namespace A293308.P1115370606032285636
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (Nat.log 2 (∑ j ∈ Finset.range (n + 1), f1 j)) n

end

end A293308.P1115370606032285636

namespace A293308

/-- `C(floor(log2(∑[3^n])), n)` -/
def P1115370606032285636.Spec : Prop :=
  ∀ n, (P1115370606032285636.a n : ℤ) = A293308 (n + 1)

end A293308

/-! ## A293308.P15198100135087786539

`A046899(A098295(n+1)+A000217(n))`
-/

namespace A293308.P15198100135087786539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046899 (A098295 (n + 1) + A000217 n).toNat

end

end A293308.P15198100135087786539

namespace A293308

/-- `A046899(A098295(n+1)+A000217(n))` -/
def P15198100135087786539.Spec : Prop :=
  ∀ n, P15198100135087786539.a n = A293308 (n + 1)

end A293308

/-! ## A293308.P12033692414033362496

`A092392(A000096(n)-A098295(n+1))`
-/

namespace A293308.P12033692414033362496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092392 (A000096 n - A098295 (n + 1)).toNat

end

end A293308.P12033692414033362496

namespace A293308

/-- `A092392(A000096(n)-A098295(n+1))` -/
def P12033692414033362496.Spec : Prop :=
  ∀ n, P12033692414033362496.a n = A293308 (n + 1)

end A293308

/-! ## A293308.P6811449740046844184

`A007318(∑[A022921(n)*A204399(n)])`
-/

namespace A293308.P6811449740046844184
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022921 n * A204399 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A293308.P6811449740046844184

namespace A293308

/-- `A007318(∑[A022921(n)*A204399(n)])` -/
def P6811449740046844184.Spec : Prop :=
  ∀ n, P6811449740046844184.a n = A293308 (n + 1)

end A293308

/-! ## A293308.P5517317429031323474

`A131830(∑[A022921(n)*A204399(n)])`
-/

namespace A293308.P5517317429031323474
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022921 n * A204399 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131830 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A293308.P5517317429031323474

namespace A293308

/-- `A131830(∑[A022921(n)*A204399(n)])` -/
def P5517317429031323474.Spec : Prop :=
  ∀ n, P5517317429031323474.a n = A293308 (n + 1)

end A293308

/-!
# A293311: Rectangular array read by antidiagonals: A(n,k) = number of magic labelings of the graph LOOP X C_n (see comments) having magic sum k, n >= 1, k >= 0.

The programs for A293311, there is no canonical definition to state claims against.
-/

/-! ## A293311.P6252479979485294729

`A075195(n+1)-A178798(A078341(n+1))`
-/

namespace A293311.P6252479979485294729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075195 (n + 1) - A178798 (A078341 (n + 1)).toNat

end

end A293311.P6252479979485294729

/-! ## A293311.P5976113914642636467

`A075195(n+1)-A178798(A102473(n+2))`
-/

namespace A293311.P5976113914642636467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075195 (n + 1) - A178798 (A102473 (n + 2)).toNat

end

end A293311.P5976113914642636467

/-! ## A293311.P11347075041235512209

`A178798(A078341(n+1)+2)+A075195(n+1)`
-/

namespace A293311.P11347075041235512209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178798 (A078341 (n + 1) + 2).toNat + A075195 (n + 1)

end

end A293311.P11347075041235512209

/-! ## A293311.P17632186059253386440

`or(A007814(A022169(n)), A135278(n))`
-/

namespace A293311.P17632186059253386440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A007814 (A022169 n).toNat) (A135278 n)

end

end A293311.P17632186059253386440

/-! ## A293311.P13829576568376019702

`or(A007814(A038227(n)), A135278(n))`
-/

namespace A293311.P13829576568376019702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A007814 (A038227 n).toNat) (A135278 n)

end

end A293311.P13829576568376019702

/-!
# A293312: Rectangular array read by antidiagonals: A(n,k) = tr((M_n)^k), k >= 0, where M_n is the n X n matrix M_1 = {{1}}, M_n = {{0,...,0,1},{0,...,0,1,1},...,{0,1,...,1},{1,...,1}}, n > 1, and tr(.) is the trace.

The programs for A293312, there is no canonical definition to state claims against.
-/

/-! ## A293312.P8483445100252169144

`gcd(A033687(A129519(n)), A056239(n+1))`
-/

namespace A293312.P8483445100252169144
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A033687 (A129519 n).toNat) (A056239 (n + 1))

end

end A293312.P8483445100252169144

/-! ## A293312.P10895460377808410059

`A374630(A213800(n+1)+A131242(n+1))`
-/

namespace A293312.P10895460377808410059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374630 (A213800 (n + 1) + A131242 (n + 1)).toNat

end

end A293312.P10895460377808410059

/-! ## A293312.P15468125245430276915

`A172467(n+1)-A086017(A200430(n+5))`
-/

namespace A293312.P15468125245430276915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172467 (n + 1) - A086017 (A200430 (n + 5)).toNat

end

end A293312.P15468125245430276915

/-! ## A293312.P3134536837513710400

`A366624(A134991(n+1)*A226873(3*n+1))`
-/

namespace A293312.P3134536837513710400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366624 (A134991 (n + 1) * A226873 (3 * n + 1)).toNat

end

end A293312.P3134536837513710400

/-! ## A293312.P5748726032138978042

`A105825(A038253(n))`
-/

namespace A293312.P5748726032138978042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105825 (A038253 n).toNat

end

end A293312.P5748726032138978042

/-!
# A293313: Greatest integer k such that k/2^n < (1+sqrt(5))/2 (the golden ratio).

The programs for A293313, the canonical program `A293313.P7199876239734961514` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A293313 has offset 0).

The definition of A293313 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A293313.P7199876239734961514

`A293314(n)-1`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A293313

/-- `A293314(n)-1` -/
def P7199876239734961514.Spec : Prop :=
  ∀ n, P7199876239734961514.a n = A293313 n

theorem P7199876239734961514.correct : P7199876239734961514.Spec := by
  intro n
  simp only [A293313]

end A293313

/-! ## A293313.P15176473660086207420

`floor(ϕ*2^n)`
-/

namespace A293313.P15176473660086207420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.goldenRatio * (2 ^ n : ℝ)⌋

end

end A293313.P15176473660086207420

namespace A293313

/-- `floor(ϕ*2^n)` -/
def P15176473660086207420.Spec : Prop :=
  ∀ n, P15176473660086207420.a n = A293313 n

end A293313

/-! ## A293313.P5971310652745152468

`or(2^n, floor(2^n/ϕ))`
-/

namespace A293313.P5971310652745152468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (2 ^ n : ℤ) ⌊(2 ^ n : ℝ) / Real.goldenRatio⌋

end

end A293313.P5971310652745152468

namespace A293313

/-- `or(2^n, floor(2^n/ϕ))` -/
def P5971310652745152468.Spec : Prop :=
  ∀ n, P5971310652745152468.a n = A293313 n

end A293313

/-! ## A293313.P6197176441639345196

`xor(2^n, floor(2^n/ϕ))`
-/

namespace A293313.P6197176441639345196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (2 ^ n : ℤ) ⌊(2 ^ n : ℝ) / Real.goldenRatio⌋

end

end A293313.P6197176441639345196

namespace A293313

/-- `xor(2^n, floor(2^n/ϕ))` -/
def P6197176441639345196.Spec : Prop :=
  ∀ n, P6197176441639345196.a n = A293313 n

end A293313

/-! ## A293313.P17396288185944150460

`A293322(n)+2^n`
-/

namespace A293313.P17396288185944150460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293322 n + (2 ^ n : ℤ)

end

end A293313.P17396288185944150460

namespace A293313

/-- `A293322(n)+2^n` -/
def P17396288185944150460.Spec : Prop :=
  ∀ n, P17396288185944150460.a n = A293313 n

end A293313

/-! ## A293313.P11023973692327443175

`ceil(ϕ*A000079(n))-1`
-/

namespace A293313.P11023973692327443175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.goldenRatio * (A000079 n : ℝ)⌉ - 1

end

end A293313.P11023973692327443175

namespace A293313

/-- `ceil(ϕ*A000079(n))-1` -/
def P11023973692327443175.Spec : Prop :=
  ∀ n, P11023973692327443175.a n = A293313 n

end A293313

/-! ## A293313.P15653813447698696678

`A293315(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A293313.P15653813447698696678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A293315 (n - 1) + a (n - 1)

end

end A293313.P15653813447698696678

namespace A293313

/-- `A293315(n-1)+a(n-1)` -/
def P15653813447698696678.Spec : Prop :=
  ∀ n, P15653813447698696678.a n = A293313 n

end A293313

/-! ## A293313.P14487855716199878687

`A293323(n)+A000225(n)`
-/

namespace A293313.P14487855716199878687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293323 n + A000225 n

end

end A293313.P14487855716199878687

namespace A293313

/-- `A293323(n)+A000225(n)` -/
def P14487855716199878687.Spec : Prop :=
  ∀ n, P14487855716199878687.a n = A293313 n

end A293313

/-! ## A293313.P17073612545582600403

`A293331(n)-A293324(n)`
-/

namespace A293313.P17073612545582600403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293331 n - A293324 n

end

end A293313.P17073612545582600403

namespace A293313

/-- `A293331(n)-A293324(n)` -/
def P17073612545582600403.Spec : Prop :=
  ∀ n, P17073612545582600403.a n = A293313 n

end A293313

/-! ## A293313.P12720865339150214694

`A000051(n)+A293322(n)-1`
-/

namespace A293313.P12720865339150214694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000051 n + (A293322 n - 1)

end

end A293313.P12720865339150214694

namespace A293313

/-- `A000051(n)+A293322(n)-1` -/
def P12720865339150214694.Spec : Prop :=
  ∀ n, P12720865339150214694.a n = A293313 n

end A293313

/-! ## A293313.P14060862062907461919

`A000079(n)+A293323(n)-1`
-/

namespace A293313.P14060862062907461919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n + (A293323 n - 1)

end

end A293313.P14060862062907461919

namespace A293313

/-- `A000079(n)+A293323(n)-1` -/
def P14060862062907461919.Spec : Prop :=
  ∀ n, P14060862062907461919.a n = A293313 n

end A293313

/-! ## A293313.P12324574800343140123

`A293332(n)-(A293324(n)+1)`
-/

namespace A293313.P12324574800343140123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293332 n - (A293324 n + 1)

end

end A293313.P12324574800343140123

namespace A293313

/-- `A293332(n)-(A293324(n)+1)` -/
def P12324574800343140123.Spec : Prop :=
  ∀ n, P12324574800343140123.a n = A293313 n

end A293313

/-! ## A293313.P12523563881791385724

`A068432(n+1)+A376448(n)-1`
-/

namespace A293313.P12523563881791385724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068432 (n + 1) + (A376448 n - 1)

end

end A293313.P12523563881791385724

namespace A293313

/-- `A068432(n+1)+A376448(n)-1` -/
def P12523563881791385724.Spec : Prop :=
  ∀ n, P12523563881791385724.a n = A293313 n

end A293313

/-! ## A293313.P3606832463301491617

`A293319(n)-2^n`
-/

namespace A293313.P3606832463301491617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293319 n - (2 ^ n : ℤ)

end

end A293313.P3606832463301491617

namespace A293313

/-- `A293319(n)-2^n` -/
def P3606832463301491617.Spec : Prop :=
  ∀ n, P3606832463301491617.a n = A293313 n

end A293313

/-! ## A293313.P17714010563703571439

`(A376448(n+1)-1)/2`
-/

namespace A293313.P17714010563703571439
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A376448 (n + 1) - 1 : ℚ) / 2

end

end A293313.P17714010563703571439

namespace A293313

/-- `(A376448(n+1)-1)/2` -/
def P17714010563703571439.Spec : Prop :=
  ∀ n, P17714010563703571439.a n = (A293313 n : ℚ)

end A293313

/-! ## A293313.P17439984125921622571

`A293320(n)-A000051(n)`
-/

namespace A293313.P17439984125921622571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293320 n - A000051 n

end

end A293313.P17439984125921622571

namespace A293313

/-- `A293320(n)-A000051(n)` -/
def P17439984125921622571.Spec : Prop :=
  ∀ n, P17439984125921622571.a n = A293313 n

end A293313

/-! ## A293313.P6769495940941482118

`A293320(n)-(A000079(n)+1)`
-/

namespace A293313.P6769495940941482118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293320 n - (A000079 n + 1)

end

end A293313.P6769495940941482118

namespace A293313

/-- `A293320(n)-(A000079(n)+1)` -/
def P6769495940941482118.Spec : Prop :=
  ∀ n, P6769495940941482118.a n = A293313 n

end A293313

/-! ## A293313.P7950720322701491171

`∑[A293315(n)]+1-A293315(n)`
-/

namespace A293313.P7950720322701491171
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293315 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (1 - A293315 n)

end

end A293313.P7950720322701491171

namespace A293313

/-- `∑[A293315(n)]+1-A293315(n)` -/
def P7950720322701491171.Spec : Prop :=
  ∀ n, P7950720322701491171.a n = A293313 n

end A293313

/-! ## A293313.P2111602372015618495

`A293315(n)+A293319(n)-A293321(n)`
-/

namespace A293313.P2111602372015618495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293315 n + (A293319 n - A293321 n)

end

end A293313.P2111602372015618495

namespace A293313

/-- `A293315(n)+A293319(n)-A293321(n)` -/
def P2111602372015618495.Spec : Prop :=
  ∀ n, P2111602372015618495.a n = A293313 n

end A293313

/-! ## A293313.P15657205638330298469

`A293321(n)+A293322(n)-A293315(n)`
-/

namespace A293313.P15657205638330298469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293321 n + (A293322 n - A293315 n)

end

end A293313.P15657205638330298469

namespace A293313

/-- `A293321(n)+A293322(n)-A293315(n)` -/
def P15657205638330298469.Spec : Prop :=
  ∀ n, P15657205638330298469.a n = A293313 n

end A293313

/-!
# A293314: Least integer k such that k/2^n > (1+sqrt(5))/2 (the golden ratio).

The programs for A293314, the canonical program `A293314.P16321844215025963346` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A293314 has offset 0).

The definition of A293314 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A293314.P16321844215025963346

`ceil(2^n*(1+sqrt(5))/2)`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A293314

/-- `ceil(2^n*(1+sqrt(5))/2)` -/
def P16321844215025963346.Spec : Prop :=
  ∀ n, P16321844215025963346.a n = A293314 n

theorem P16321844215025963346.correct : P16321844215025963346.Spec := by
  intro n
  simp only [A293314]

end A293314

/-! ## A293314.P14982283169058841112

`A293313(n)+1`
-/

namespace A293314.P14982283169058841112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293313 n + 1

end

end A293314.P14982283169058841112

namespace A293314

/-- `A293313(n)+1` -/
def P14982283169058841112.Spec : Prop :=
  ∀ n, P14982283169058841112.a n = A293314 n

end A293314

/-! ## A293314.P3233688127147933588

`A293323(n)+2^n`
-/

namespace A293314.P3233688127147933588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293323 n + (2 ^ n : ℤ)

end

end A293314.P3233688127147933588

namespace A293314

/-- `A293323(n)+2^n` -/
def P3233688127147933588.Spec : Prop :=
  ∀ n, P3233688127147933588.a n = A293314 n

end A293314

/-! ## A293314.P5718183263706854481

`A293315(n-1)+a(n-1)` with `a(0)=2`
-/

namespace A293314.P5718183263706854481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A293315 (n - 1) + a (n - 1)

end

end A293314.P5718183263706854481

namespace A293314

/-- `A293315(n-1)+a(n-1)` -/
def P5718183263706854481.Spec : Prop :=
  ∀ n, P5718183263706854481.a n = A293314 n

end A293314

/-! ## A293314.P6283125203637023863

`floor((A000051(n)-1)*(ϕ²-1))+1`
-/

namespace A293314.P6283125203637023863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000051 n - 1 : ℝ) * (Real.goldenRatio ^ 2 - 1)⌋ + 1

end

end A293314.P6283125203637023863

namespace A293314

/-- `floor((A000051(n)-1)*(ϕ²-1))+1` -/
def P6283125203637023863.Spec : Prop :=
  ∀ n, P6283125203637023863.a n = A293314 n

end A293314

/-! ## A293314.P5160242754899837460

`A293322(n)+A000051(n)`
-/

namespace A293314.P5160242754899837460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293322 n + A000051 n

end

end A293314.P5160242754899837460

namespace A293314

/-- `A293322(n)+A000051(n)` -/
def P5160242754899837460.Spec : Prop :=
  ∀ n, P5160242754899837460.a n = A293314 n

end A293314

/-! ## A293314.P4073336558529204572

`A293332(n)-A293324(n)`
-/

namespace A293314.P4073336558529204572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293332 n - A293324 n

end

end A293314.P4073336558529204572

namespace A293314

/-- `A293332(n)-A293324(n)` -/
def P4073336558529204572.Spec : Prop :=
  ∀ n, P4073336558529204572.a n = A293314 n

end A293314

/-! ## A293314.P15913170687701553988

`A000079(n)+A293322(n)+1`
-/

namespace A293314.P15913170687701553988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n + (A293322 n + 1)

end

end A293314.P15913170687701553988

namespace A293314

/-- `A000079(n)+A293322(n)+1` -/
def P15913170687701553988.Spec : Prop :=
  ∀ n, P15913170687701553988.a n = A293314 n

end A293314

/-! ## A293314.P15566673169365888140

`A000225(n)+A293323(n)+1`
-/

namespace A293314.P15566673169365888140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 n + (A293323 n + 1)

end

end A293314.P15566673169365888140

namespace A293314

/-- `A000225(n)+A293323(n)+1` -/
def P15566673169365888140.Spec : Prop :=
  ∀ n, P15566673169365888140.a n = A293314 n

end A293314

/-! ## A293314.P9194994951136743080

`A376448(n)+A068432(n+1)`
-/

namespace A293314.P9194994951136743080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376448 n + A068432 (n + 1)

end

end A293314.P9194994951136743080

namespace A293314

/-- `A376448(n)+A068432(n+1)` -/
def P9194994951136743080.Spec : Prop :=
  ∀ n, P9194994951136743080.a n = A293314 n

end A293314

/-! ## A293314.P10759548618646198371

`A293331(n)+1-A293324(n)`
-/

namespace A293314.P10759548618646198371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293331 n + (1 - A293324 n)

end

end A293314.P10759548618646198371

namespace A293314

/-- `A293331(n)+1-A293324(n)` -/
def P10759548618646198371.Spec : Prop :=
  ∀ n, P10759548618646198371.a n = A293314 n

end A293314

/-! ## A293314.P12941839172582947178

`A293320(n)-2^n`
-/

namespace A293314.P12941839172582947178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293320 n - (2 ^ n : ℤ)

end

end A293314.P12941839172582947178

namespace A293314

/-- `A293320(n)-2^n` -/
def P12941839172582947178.Spec : Prop :=
  ∀ n, P12941839172582947178.a n = A293314 n

end A293314

/-! ## A293314.P15068057345308691943

`(A376448(n+1)+1)/2`
-/

namespace A293314.P15068057345308691943
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A376448 (n + 1) + 1 : ℚ) / 2

end

end A293314.P15068057345308691943

namespace A293314

/-- `(A376448(n+1)+1)/2` -/
def P15068057345308691943.Spec : Prop :=
  ∀ n, P15068057345308691943.a n = (A293314 n : ℚ)

end A293314

/-! ## A293314.P15375899137792940184

`A293319(n)-A000225(n)`
-/

namespace A293314.P15375899137792940184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293319 n - A000225 n

end

end A293314.P15375899137792940184

namespace A293314

/-- `A293319(n)-A000225(n)` -/
def P15375899137792940184.Spec : Prop :=
  ∀ n, P15375899137792940184.a n = A293314 n

end A293314

/-! ## A293314.P9522084400812128898

`A293319(n)+1-A000079(n)`
-/

namespace A293314.P9522084400812128898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293319 n + (1 - A000079 n)

end

end A293314.P9522084400812128898

namespace A293314

/-- `A293319(n)+1-A000079(n)` -/
def P9522084400812128898.Spec : Prop :=
  ∀ n, P9522084400812128898.a n = A293314 n

end A293314

/-! ## A293314.P2193217761807230217

`xor(A007283(n), A293319(n))+1`
-/

namespace A293314.P2193217761807230217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A007283 n) (A293319 n) + 1

end

end A293314.P2193217761807230217

namespace A293314

/-- `xor(A007283(n), A293319(n))+1` -/
def P2193217761807230217.Spec : Prop :=
  ∀ n, P2193217761807230217.a n = A293314 n

end A293314

/-! ## A293314.P11579268253554739029

`∑[A293315(n)]+2-A293315(n)`
-/

namespace A293314.P11579268253554739029
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293315 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (2 - A293315 n)

end

end A293314.P11579268253554739029

namespace A293314

/-- `∑[A293315(n)]+2-A293315(n)` -/
def P11579268253554739029.Spec : Prop :=
  ∀ n, P11579268253554739029.a n = A293314 n

end A293314

/-! ## A293314.P3125048618203531091

`A293315(n)+A293320(n)-A293321(n)`
-/

namespace A293314.P3125048618203531091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293315 n + (A293320 n - A293321 n)

end

end A293314.P3125048618203531091

namespace A293314

/-- `A293315(n)+A293320(n)-A293321(n)` -/
def P3125048618203531091.Spec : Prop :=
  ∀ n, P3125048618203531091.a n = A293314 n

end A293314

/-! ## A293314.P16245070619905347804

`floor(sqrt(A293319(2*n)))+1`
-/

namespace A293314.P16245070619905347804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A293319 (2 * n)) + 1

end

end A293314.P16245070619905347804

namespace A293314

/-- `floor(sqrt(A293319(2*n)))+1` -/
def P16245070619905347804.Spec : Prop :=
  ∀ n, P16245070619905347804.a n = A293314 n

end A293314

/-! ## A293314.P1990506433068345922

`floor(sqrt(A293320(2*n)))+1`
-/

namespace A293314.P1990506433068345922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A293320 (2 * n)) + 1

end

end A293314.P1990506433068345922

namespace A293314

/-- `floor(sqrt(A293320(2*n)))+1` -/
def P1990506433068345922.Spec : Prop :=
  ∀ n, P1990506433068345922.a n = A293314 n

end A293314

/-!
# A293315: The integer k that minimizes |k/2^n - r|, where r = golden ratio.

The programs for A293315, the canonical program `A293315.P12774937551882229673` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A293315 has offset 0).

The definition of A293315 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A293315.P12774937551882229673

`round(ϕ*2^n)`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A293315

/-- `round(ϕ*2^n)` -/
def P12774937551882229673.Spec : Prop :=
  ∀ n, P12774937551882229673.a n = A293315 n

theorem P12774937551882229673.correct : P12774937551882229673.Spec := by
  intro n
  simp only [A293315]

end A293315

/-! ## A293315.P1612071467138191657

`A293324(n)+2^n`
-/

namespace A293315.P1612071467138191657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293324 n + (2 ^ n : ℤ)

end

end A293315.P1612071467138191657

namespace A293315

/-- `A293324(n)+2^n` -/
def P1612071467138191657.Spec : Prop :=
  ∀ n, P1612071467138191657.a n = A293315 n

end A293315

/-! ## A293315.P2729801346825750137

`A293331(n)-A293322(n)`
-/

namespace A293315.P2729801346825750137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293331 n - A293322 n

end

end A293315.P2729801346825750137

namespace A293315

/-- `A293331(n)-A293322(n)` -/
def P2729801346825750137.Spec : Prop :=
  ∀ n, P2729801346825750137.a n = A293315 n

end A293315

/-! ## A293315.P15308128675637758487

`A293332(n)-A293323(n)`
-/

namespace A293315.P15308128675637758487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293332 n - A293323 n

end

end A293315.P15308128675637758487

namespace A293315

/-- `A293332(n)-A293323(n)` -/
def P15308128675637758487.Spec : Prop :=
  ∀ n, P15308128675637758487.a n = A293315 n

end A293315

/-! ## A293315.P2771730830259568408

`xor(A171559(n), A293324(n))`
-/

namespace A293315.P2771730830259568408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A171559 n) (A293324 n)

end

end A293315.P2771730830259568408

namespace A293315

/-- `xor(A171559(n), A293324(n))` -/
def P2771730830259568408.Spec : Prop :=
  ∀ n, P2771730830259568408.a n = A293315 n

end A293315

/-! ## A293315.P443546711531896117

`A293331(n)+1-A293323(n)`
-/

namespace A293315.P443546711531896117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293331 n + (1 - A293323 n)

end

end A293315.P443546711531896117

namespace A293315

/-- `A293331(n)+1-A293323(n)` -/
def P443546711531896117.Spec : Prop :=
  ∀ n, P443546711531896117.a n = A293315 n

end A293315

/-! ## A293315.P16571589857640080772

`A293313(n)+A293324(n)-A293322(n)`
-/

namespace A293315.P16571589857640080772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293313 n + (A293324 n - A293322 n)

end

end A293315.P16571589857640080772

namespace A293315

/-- `A293313(n)+A293324(n)-A293322(n)` -/
def P16571589857640080772.Spec : Prop :=
  ∀ n, P16571589857640080772.a n = A293315 n

end A293315

/-! ## A293315.P1311936026349993403

`Δ[A293313(n)]`
-/

namespace A293315.P1311936026349993403
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293313 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A293315.P1311936026349993403

namespace A293315

/-- `Δ[A293313(n)]` -/
def P1311936026349993403.Spec : Prop :=
  ∀ n, P1311936026349993403.a n = A293315 n

end A293315

/-! ## A293315.P4281016903712979958

`Δ[A293314(n)]`
-/

namespace A293315.P4281016903712979958
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293314 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A293315.P4281016903712979958

namespace A293315

/-- `Δ[A293314(n)]` -/
def P4281016903712979958.Spec : Prop :=
  ∀ n, P4281016903712979958.a n = A293315 n

end A293315

/-! ## A293315.P11694739371974566868

`A293321(n)-2^n`
-/

namespace A293315.P11694739371974566868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293321 n - (2 ^ n : ℤ)

end

end A293315.P11694739371974566868

namespace A293315

/-- `A293321(n)-2^n` -/
def P11694739371974566868.Spec : Prop :=
  ∀ n, P11694739371974566868.a n = A293315 n

end A293315

/-! ## A293315.P17075785981559840707

`floor(A293314(n+1)/2)`
-/

namespace A293315.P17075785981559840707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A293314 (n + 1) : ℚ) / 2⌋

end

end A293315.P17075785981559840707

namespace A293315

/-- `floor(A293314(n+1)/2)` -/
def P17075785981559840707.Spec : Prop :=
  ∀ n, P17075785981559840707.a n = A293315 n

end A293315

/-! ## A293315.P14232562937737467561

`ceil(A293313(n+1)/2)`
-/

namespace A293315.P14232562937737467561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A293313 (n + 1) : ℚ) / 2⌉

end

end A293315.P14232562937737467561

namespace A293315

/-- `ceil(A293313(n+1)/2)` -/
def P14232562937737467561.Spec : Prop :=
  ∀ n, P14232562937737467561.a n = A293315 n

end A293315

/-! ## A293315.P11488380663540760064

`Δ[ceil((ϕ²-1)*A000079(n))]`
-/

namespace A293315.P11488380663540760064
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Real.goldenRatio ^ 2 - 1) * (A000079 n : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A293315.P11488380663540760064

namespace A293315

/-- `Δ[ceil((ϕ²-1)*A000079(n))]` -/
def P11488380663540760064.Spec : Prop :=
  ∀ n, P11488380663540760064.a n = A293315 n

end A293315

/-! ## A293315.P18302199959775942809

`Δ[floor((A000051(n)-1)*(ϕ²-1))]`
-/

namespace A293315.P18302199959775942809
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000051 n - 1 : ℝ) * (Real.goldenRatio ^ 2 - 1)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A293315.P18302199959775942809

namespace A293315

/-- `Δ[floor((A000051(n)-1)*(ϕ²-1))]` -/
def P18302199959775942809.Spec : Prop :=
  ∀ n, P18302199959775942809.a n = A293315 n

end A293315

/-! ## A293315.P7560479256822621710

`A293313(n+1)-A293313(n)`
-/

namespace A293315.P7560479256822621710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293313 (n + 1) - A293313 n

end

end A293315.P7560479256822621710

namespace A293315

/-- `A293313(n+1)-A293313(n)` -/
def P7560479256822621710.Spec : Prop :=
  ∀ n, P7560479256822621710.a n = A293315 n

end A293315

/-! ## A293315.P5260987546089151997

`A293314(n+1)-A293314(n)`
-/

namespace A293315.P5260987546089151997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293314 (n + 1) - A293314 n

end

end A293315.P5260987546089151997

namespace A293315

/-- `A293314(n+1)-A293314(n)` -/
def P5260987546089151997.Spec : Prop :=
  ∀ n, P5260987546089151997.a n = A293315 n

end A293315

/-! ## A293315.P14402949657792738693

`A293313(n)-(A293319(n)-A293321(n))`
-/

namespace A293315.P14402949657792738693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293313 n - (A293319 n - A293321 n)

end

end A293315.P14402949657792738693

namespace A293315

/-- `A293313(n)-(A293319(n)-A293321(n))` -/
def P14402949657792738693.Spec : Prop :=
  ∀ n, P14402949657792738693.a n = A293315 n

end A293315

/-! ## A293315.P2294140026449632617

`A293314(n)-(A293320(n)-A293321(n))`
-/

namespace A293315.P2294140026449632617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293314 n - (A293320 n - A293321 n)

end

end A293315.P2294140026449632617

namespace A293315

/-- `A293314(n)-(A293320(n)-A293321(n))` -/
def P2294140026449632617.Spec : Prop :=
  ∀ n, P2294140026449632617.a n = A293315 n

end A293315

/-! ## A293315.P4890946280312689343

`Δ[A376448(n+1)/2]`
-/

namespace A293315.P4890946280312689343
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A376448 (n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A293315.P4890946280312689343

namespace A293315

/-- `Δ[A376448(n+1)/2]` -/
def P4890946280312689343.Spec : Prop :=
  ∀ n, P4890946280312689343.a n = (A293315 n : ℚ)

end A293315

/-!
# A293316: Solution of the complementary equation a(n) = a(n-1) + a(n-2) + b(n-2) + 1, where a(0) = 1, a(1) = 3, b(0) = 2, b(1) = 4.

The programs for A293316, there is no canonical definition to state claims against.
-/

/-! ## A293316.P966621451219235010

`A000038(A006094(n+1))+A295965(n)-A006355(n)`
-/

namespace A293316.P966621451219235010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 (A006094 (n + 1)).toNat + (A295965 n - A006355 n)

end

end A293316.P966621451219235010

/-! ## A293316.P7410218976052941849

`(A295965(n)-A006355(n))^A006519(A001248(n+1))`
-/

namespace A293316.P7410218976052941849
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A295965 n - A006355 n : ℚ) ^ (A006519 (A001248 (n + 1)).toNat : ℤ)

end

end A293316.P7410218976052941849

/-! ## A293316.P12737800145943364789

`A000027(A295965(n)-A006355(n))`
-/

namespace A293316.P12737800145943364789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A295965 n - A006355 n).toNat

end

end A293316.P12737800145943364789

/-! ## A293316.P522330267197268754

`A001222(A005850(n+1))*A295965(n)-A006355(n)`
-/

namespace A293316.P522330267197268754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A005850 (n + 1)).toNat * A295965 n - A006355 n

end

end A293316.P522330267197268754

/-! ## A293316.P10249519291321943361

`(A295965(n)-A006355(n))%A000040(A261651(n))`
-/

namespace A293316.P10249519291321943361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A295965 n - A006355 n) (A000040 (A261651 n).toNat)

end

end A293316.P10249519291321943361

/-!
# A293317: Solution of the complementary equation a(n) = a(n-1) + a(n-2) + b(n-2) - 1, where a(0) = 1, a(1) = 3, b(0) = 2, b(1) = 4.

The programs for A293317, there is no canonical definition to state claims against.
-/

/-! ## A293317.P14480450534565694518

`A028310(A294545(n)+1-A006355(n))`
-/

namespace A293317.P14480450534565694518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A294545 n + (1 - A006355 n)).toNat

end

end A293317.P14480450534565694518

/-! ## A293317.P11104960210162351172

`A023443(A294545(n)+2-A006355(n))`
-/

namespace A293317.P11104960210162351172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A294545 n + (2 - A006355 n)).toNat

end

end A293317.P11104960210162351172

/-! ## A293317.P2404921959652640257

`A028310(1-(A006355(n)-A294545(n)))`
-/

namespace A293317.P2404921959652640257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (1 - (A006355 n - A294545 n)).toNat

end

end A293317.P2404921959652640257

/-! ## A293317.P4836089215144381430

`A023443(2-(A006355(n)-A294545(n)))`
-/

namespace A293317.P4836089215144381430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (2 - (A006355 n - A294545 n)).toNat

end

end A293317.P4836089215144381430

/-! ## A293317.P2047525370046181006

`A028310(A294545(n))-A023443(A006355(n))`
-/

namespace A293317.P2047525370046181006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A294545 n).toNat - A023443 (A006355 n).toNat

end

end A293317.P2047525370046181006

/-!
# A293318: a(n) = (2*n)! * [x^(2*n)] (-log(sqrt(1 - 2*x)))^n/(sqrt(1 - 2*x)*n!).

The programs for A293318, there is no canonical definition to state claims against.
-/

/-! ## A293318.P6112794405289628328

`A028338(∑[4*n])`
-/

namespace A293318.P6112794405289628328
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028338 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A293318.P6112794405289628328

/-! ## A293318.P16333490408363646138

`A109692(∑[4*n])`
-/

namespace A293318.P16333490408363646138
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109692 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A293318.P16333490408363646138

/-! ## A293318.P16720312292979688688

`abs(A039758(A046092(n)))`
-/

namespace A293318.P16720312292979688688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A039758 (A046092 n).toNat|

end

end A293318.P16720312292979688688

/-! ## A293318.P9419486434759774259

`record[A028338(A266725(n))]`
-/

namespace A293318.P9419486434759774259
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028338 (A266725 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A293318.P9419486434759774259

/-! ## A293318.P642762812823100667

`abs(A039757(2*A002378(n)))`
-/

namespace A293318.P642762812823100667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A039757 (2 * A002378 n).toNat|

end

end A293318.P642762812823100667

/-!
# A293319: Greatest integer k such that k/2^n < phi^2, where phi = (1+sqrt(5))/2 = golden ratio.

The programs for A293319, the canonical program `A293319.P8415594249504291163` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A293319 has offset 0).

The definition of A293319 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A293319.P8415594249504291163

`A293320(n)-1`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A293319

/-- `A293320(n)-1` -/
def P8415594249504291163.Spec : Prop :=
  ∀ n, P8415594249504291163.a n = A293319 n

theorem P8415594249504291163.correct : P8415594249504291163.Spec := by
  intro n
  simp only [A293319]

end A293319

/-! ## A293319.P16622330758262724022

`floor(ϕ²*2^n)`
-/

namespace A293319.P16622330758262724022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.goldenRatio ^ 2 * (2 ^ n : ℝ)⌋

end

end A293319.P16622330758262724022

namespace A293319

/-- `floor(ϕ²*2^n)` -/
def P16622330758262724022.Spec : Prop :=
  ∀ n, P16622330758262724022.a n = A293319 n

end A293319

/-! ## A293319.P5623151363079944112

`A293313(n)+2^n`
-/

namespace A293319.P5623151363079944112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293313 n + (2 ^ n : ℤ)

end

end A293319.P5623151363079944112

namespace A293319

/-- `A293313(n)+2^n` -/
def P5623151363079944112.Spec : Prop :=
  ∀ n, P5623151363079944112.a n = A293319 n

end A293319

/-! ## A293319.P6271398968935778336

`A293322(n)+2^(n+1)`
-/

namespace A293319.P6271398968935778336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293322 n + (2 ^ (n + 1) : ℤ)

end

end A293319.P6271398968935778336

namespace A293319

/-- `A293322(n)+2^(n+1)` -/
def P6271398968935778336.Spec : Prop :=
  ∀ n, P6271398968935778336.a n = A293319 n

end A293319

/-! ## A293319.P4076664317118159313

`A293321(n-1)+a(n-1)` with `a(0)=2`
-/

namespace A293319.P4076664317118159313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A293321 (n - 1) + a (n - 1)

end

end A293319.P4076664317118159313

namespace A293319

/-- `A293321(n-1)+a(n-1)` -/
def P4076664317118159313.Spec : Prop :=
  ∀ n, P4076664317118159313.a n = A293319 n

end A293319

/-! ## A293319.P4096686974906292766

`A293314(n)+A000225(n)`
-/

namespace A293319.P4096686974906292766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293314 n + A000225 n

end

end A293319.P4096686974906292766

namespace A293319

/-- `A293314(n)+A000225(n)` -/
def P4096686974906292766.Spec : Prop :=
  ∀ n, P4096686974906292766.a n = A293319 n

end A293319

/-! ## A293319.P17561156288090310597

`A293323(n)+A126646(n)`
-/

namespace A293319.P17561156288090310597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293323 n + A126646 n

end

end A293319.P17561156288090310597

namespace A293319

/-- `A293323(n)+A126646(n)` -/
def P17561156288090310597.Spec : Prop :=
  ∀ n, P17561156288090310597.a n = A293319 n

end A293319

/-! ## A293319.P5862120298148504098

`xor(A007283(n), A293313(n))`
-/

namespace A293319.P5862120298148504098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A007283 n) (A293313 n)

end

end A293319.P5862120298148504098

namespace A293319

/-- `xor(A007283(n), A293313(n))` -/
def P5862120298148504098.Spec : Prop :=
  ∀ n, P5862120298148504098.a n = A293319 n

end A293319

/-! ## A293319.P7905147029900998733

`A000225(n)+A293313(n)+1`
-/

namespace A293319.P7905147029900998733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 n + (A293313 n + 1)

end

end A293319.P7905147029900998733

namespace A293319

/-- `A000225(n)+A293313(n)+1` -/
def P7905147029900998733.Spec : Prop :=
  ∀ n, P7905147029900998733.a n = A293319 n

end A293319

/-! ## A293319.P17108341884614510249

`A293323(n)+A000225(n+1)`
-/

namespace A293319.P17108341884614510249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293323 n + A000225 (n + 1)

end

end A293319.P17108341884614510249

namespace A293319

/-- `A293323(n)+A000225(n+1)` -/
def P17108341884614510249.Spec : Prop :=
  ∀ n, P17108341884614510249.a n = A293319 n

end A293319

/-! ## A293319.P16272282517871681542

`A000051(n)+A293313(n)-1`
-/

namespace A293319.P16272282517871681542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000051 n + (A293313 n - 1)

end

end A293319.P16272282517871681542

namespace A293319

/-- `A000051(n)+A293313(n)-1` -/
def P16272282517871681542.Spec : Prop :=
  ∀ n, P16272282517871681542.a n = A293319 n

end A293319

/-! ## A293319.P12361246414136846789

`A000079(n)+A293314(n)-1`
-/

namespace A293319.P12361246414136846789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n + (A293314 n - 1)

end

end A293319.P12361246414136846789

namespace A293319

/-- `A000079(n)+A293314(n)-1` -/
def P12361246414136846789.Spec : Prop :=
  ∀ n, P12361246414136846789.a n = A293319 n

end A293319

/-! ## A293319.P16580159371453792787

`A048578(n)+A293322(n)-1`
-/

namespace A293319.P16580159371453792787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048578 n + (A293322 n - 1)

end

end A293319.P16580159371453792787

namespace A293319

/-- `A048578(n)+A293322(n)-1` -/
def P16580159371453792787.Spec : Prop :=
  ∀ n, P16580159371453792787.a n = A293319 n

end A293319

/-! ## A293319.P3065526293245935531

`A376448(n+1)-A293323(n)`
-/

namespace A293319.P3065526293245935531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376448 (n + 1) - A293323 n

end

end A293319.P3065526293245935531

namespace A293319

/-- `A376448(n+1)-A293323(n)` -/
def P3065526293245935531.Spec : Prop :=
  ∀ n, P3065526293245935531.a n = A293319 n

end A293319

/-! ## A293319.P6410846187291590433

`A000051(n)+A293314(n)-2`
-/

namespace A293319.P6410846187291590433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000051 n + (A293314 n - 2)

end

end A293319.P6410846187291590433

namespace A293319

/-- `A000051(n)+A293314(n)-2` -/
def P6410846187291590433.Spec : Prop :=
  ∀ n, P6410846187291590433.a n = A293319 n

end A293319

/-! ## A293319.P16513622222321018757

`2*A293313(n)-A293322(n)`
-/

namespace A293319.P16513622222321018757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A293313 n - A293322 n

end

end A293319.P16513622222321018757

namespace A293319

/-- `2*A293313(n)-A293322(n)` -/
def P16513622222321018757.Spec : Prop :=
  ∀ n, P16513622222321018757.a n = A293319 n

end A293319

/-! ## A293319.P9428434220759502101

`A126646(n)+and(A126646(n), A293320(n))`
-/

namespace A293319.P9428434220759502101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126646 n + Int.land (A126646 n) (A293320 n)

end

end A293319.P9428434220759502101

namespace A293319

/-- `A126646(n)+and(A126646(n), A293320(n))` -/
def P9428434220759502101.Spec : Prop :=
  ∀ n, P9428434220759502101.a n = A293319 n

end A293319

/-! ## A293319.P5990690858561556611

`A376448(n+1)+A293321(n)-A293314(n+1)`
-/

namespace A293319.P5990690858561556611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376448 (n + 1) + (A293321 n - A293314 (n + 1))

end

end A293319.P5990690858561556611

namespace A293319

/-- `A376448(n+1)+A293321(n)-A293314(n+1)` -/
def P5990690858561556611.Spec : Prop :=
  ∀ n, P5990690858561556611.a n = A293319 n

end A293319

/-! ## A293319.P7719153097913766273

`A293321(n+1)+A293322(n)-A293315(n+1)`
-/

namespace A293319.P7719153097913766273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293321 (n + 1) + (A293322 n - A293315 (n + 1))

end

end A293319.P7719153097913766273

namespace A293319

/-- `A293321(n+1)+A293322(n)-A293315(n+1)` -/
def P7719153097913766273.Spec : Prop :=
  ∀ n, P7719153097913766273.a n = A293319 n

end A293319

/-!
# A293320: Least integer k such that k/2^n > phi^2, where phi = (1+sqrt(5))/2 = golden ratio.

The programs for A293320, the canonical program `A293320.P16205955306198719648` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A293320 has offset 0).

The definition of A293320 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A293320.P15774866626693465039

`A293319(n)+1`
-/

namespace A293320.P15774866626693465039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293319 n + 1

end

end A293320.P15774866626693465039

namespace A293320

/-- `A293319(n)+1` -/
def P15774866626693465039.Spec : Prop :=
  ∀ n, P15774866626693465039.a n = A293320 n

end A293320

/-! ## A293320.P16205955306198719648

`ceil(2^n*(3+sqrt(5))/2)`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A293320

/-- `ceil(2^n*(3+sqrt(5))/2)` -/
def P16205955306198719648.Spec : Prop :=
  ∀ n, P16205955306198719648.a n = A293320 n

theorem P16205955306198719648.correct : P16205955306198719648.Spec := by
  intro n
  simp only [A293320]

end A293320

/-! ## A293320.P3375658539458878976

`A293314(n)+2^n`
-/

namespace A293320.P3375658539458878976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293314 n + (2 ^ n : ℤ)

end

end A293320.P3375658539458878976

namespace A293320

/-- `A293314(n)+2^n` -/
def P3375658539458878976.Spec : Prop :=
  ∀ n, P3375658539458878976.a n = A293320 n

end A293320

/-! ## A293320.P10694529764131654806

`A293323(n)+2^(n+1)`
-/

namespace A293320.P10694529764131654806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293323 n + (2 ^ (n + 1) : ℤ)

end

end A293320.P10694529764131654806

namespace A293320

/-- `A293323(n)+2^(n+1)` -/
def P10694529764131654806.Spec : Prop :=
  ∀ n, P10694529764131654806.a n = A293320 n

end A293320

/-! ## A293320.P5022921047700351559

`A293321(n-1)+a(n-1)` with `a(0)=3`
-/

namespace A293320.P5022921047700351559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  A293321 (n - 1) + a (n - 1)

end

end A293320.P5022921047700351559

namespace A293320

/-- `A293321(n-1)+a(n-1)` -/
def P5022921047700351559.Spec : Prop :=
  ∀ n, P5022921047700351559.a n = A293320 n

end A293320

/-! ## A293320.P14918750356026148691

`A293313(n)+A000051(n)`
-/

namespace A293320.P14918750356026148691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293313 n + A000051 n

end

end A293320.P14918750356026148691

namespace A293320

/-- `A293313(n)+A000051(n)` -/
def P14918750356026148691.Spec : Prop :=
  ∀ n, P14918750356026148691.a n = A293320 n

end A293320

/-! ## A293320.P7352485648302808382

`A293322(n)+A048578(n)`
-/

namespace A293320.P7352485648302808382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293322 n + A048578 n

end

end A293320.P7352485648302808382

namespace A293320

/-- `A293322(n)+A048578(n)` -/
def P7352485648302808382.Spec : Prop :=
  ∀ n, P7352485648302808382.a n = A293320 n

end A293320

/-! ## A293320.P16844214854445325666

`A293322(n)+A000051(n+1)`
-/

namespace A293320.P16844214854445325666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293322 n + A000051 (n + 1)

end

end A293320.P16844214854445325666

namespace A293320

/-- `A293322(n)+A000051(n+1)` -/
def P16844214854445325666.Spec : Prop :=
  ∀ n, P16844214854445325666.a n = A293320 n

end A293320

/-! ## A293320.P3051747634129067573

`A000079(n)+A293313(n)+1`
-/

namespace A293320.P3051747634129067573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n + (A293313 n + 1)

end

end A293320.P3051747634129067573

namespace A293320

/-- `A000079(n)+A293313(n)+1` -/
def P3051747634129067573.Spec : Prop :=
  ∀ n, P3051747634129067573.a n = A293320 n

end A293320

/-! ## A293320.P7705806612726853790

`A000225(n)+A293314(n)+1`
-/

namespace A293320.P7705806612726853790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 n + (A293314 n + 1)

end

end A293320.P7705806612726853790

namespace A293320

/-- `A000225(n)+A293314(n)+1` -/
def P7705806612726853790.Spec : Prop :=
  ∀ n, P7705806612726853790.a n = A293320 n

end A293320

/-! ## A293320.P5771109356894830580

`A126646(n)+A293323(n)+1`
-/

namespace A293320.P5771109356894830580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126646 n + (A293323 n + 1)

end

end A293320.P5771109356894830580

namespace A293320

/-- `A126646(n)+A293323(n)+1` -/
def P5771109356894830580.Spec : Prop :=
  ∀ n, P5771109356894830580.a n = A293320 n

end A293320

/-! ## A293320.P16189911270462025292

`A000051(n)+A293314(n)-1`
-/

namespace A293320.P16189911270462025292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000051 n + (A293314 n - 1)

end

end A293320.P16189911270462025292

namespace A293320

/-- `A000051(n)+A293314(n)-1` -/
def P16189911270462025292.Spec : Prop :=
  ∀ n, P16189911270462025292.a n = A293320 n

end A293320

/-! ## A293320.P4911039325340763818

`A000225(n)+A293313(n)+2`
-/

namespace A293320.P4911039325340763818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 n + (A293313 n + 2)

end

end A293320.P4911039325340763818

namespace A293320

/-- `A000225(n)+A293313(n)+2` -/
def P4911039325340763818.Spec : Prop :=
  ∀ n, P4911039325340763818.a n = A293320 n

end A293320

/-! ## A293320.P15163954944399340358

`A376448(n+1)-A293322(n)`
-/

namespace A293320.P15163954944399340358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376448 (n + 1) - A293322 n

end

end A293320.P15163954944399340358

namespace A293320

/-- `A376448(n+1)-A293322(n)` -/
def P15163954944399340358.Spec : Prop :=
  ∀ n, P15163954944399340358.a n = A293320 n

end A293320

/-! ## A293320.P3280722422086146867

`2*A293314(n)-A293323(n)`
-/

namespace A293320.P3280722422086146867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A293314 n - A293323 n

end

end A293320.P3280722422086146867

namespace A293320

/-- `2*A293314(n)-A293323(n)` -/
def P3280722422086146867.Spec : Prop :=
  ∀ n, P3280722422086146867.a n = A293320 n

end A293320

/-! ## A293320.P6241037722862540160

`xor(A007283(n), A293313(n))+1`
-/

namespace A293320.P6241037722862540160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A007283 n) (A293313 n) + 1

end

end A293320.P6241037722862540160

namespace A293320

/-- `xor(A007283(n), A293313(n))+1` -/
def P6241037722862540160.Spec : Prop :=
  ∀ n, P6241037722862540160.a n = A293320 n

end A293320

/-! ## A293320.P5905152719748321762

`2-(A135517(A135517(n))-A293319(n))`
-/

namespace A293320.P5905152719748321762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (A135517 (A135517 n).toNat - A293319 n)

end

end A293320.P5905152719748321762

namespace A293320

/-- `2-(A135517(A135517(n))-A293319(n))` -/
def P5905152719748321762.Spec : Prop :=
  ∀ n, P5905152719748321762.a n = A293320 n

end A293320

/-! ## A293320.P2583842329641399032

`A293313(n)+A293314(n)-A293322(n)`
-/

namespace A293320.P2583842329641399032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293313 n + (A293314 n - A293322 n)

end

end A293320.P2583842329641399032

namespace A293320

/-- `A293313(n)+A293314(n)-A293322(n)` -/
def P2583842329641399032.Spec : Prop :=
  ∀ n, P2583842329641399032.a n = A293320 n

end A293320

/-! ## A293320.P8900719577212636168

`A293313(n+1)+A293323(n)-A293322(n+1)`
-/

namespace A293320.P8900719577212636168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293313 (n + 1) + (A293323 n - A293322 (n + 1))

end

end A293320.P8900719577212636168

namespace A293320

/-- `A293313(n+1)+A293323(n)-A293322(n+1)` -/
def P8900719577212636168.Spec : Prop :=
  ∀ n, P8900719577212636168.a n = A293320 n

end A293320

/-! ## A293320.P8661661373321513334

`A376448(n+1)+A293321(n)-A293313(n+1)`
-/

namespace A293320.P8661661373321513334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376448 (n + 1) + (A293321 n - A293313 (n + 1))

end

end A293320.P8661661373321513334

namespace A293320

/-- `A376448(n+1)+A293321(n)-A293313(n+1)` -/
def P8661661373321513334.Spec : Prop :=
  ∀ n, P8661661373321513334.a n = A293320 n

end A293320

/-!
# A293321: The integer k that minimizes |k/2^n - phi^2|, where phi = (1+sqrt(5))/2 = golden ratio.

The programs for A293321, the canonical program `A293321.P7744093842615132060` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A293321 has offset 0).

The definition of A293321 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 331 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A293321.P17002148569180108555

`round(ϕ²*2^n)`
-/

namespace A293321.P17002148569180108555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.goldenRatio ^ 2 * (2 ^ n : ℝ))

end

end A293321.P17002148569180108555

namespace A293321

/-- `round(ϕ²*2^n)` -/
def P17002148569180108555.Spec : Prop :=
  ∀ n, P17002148569180108555.a n = A293321 n

end A293321

/-! ## A293321.P16774466078480015808

`A293315(n)+2^n`
-/

namespace A293321.P16774466078480015808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293315 n + (2 ^ n : ℤ)

end

end A293321.P16774466078480015808

namespace A293321

/-- `A293315(n)+2^n` -/
def P16774466078480015808.Spec : Prop :=
  ∀ n, P16774466078480015808.a n = A293321 n

end A293321

/-! ## A293321.P16842296805013039762

`A293324(n)+2^(n+1)`
-/

namespace A293321.P16842296805013039762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293324 n + (2 ^ (n + 1) : ℤ)

end

end A293321.P16842296805013039762

namespace A293321

/-- `A293324(n)+2^(n+1)` -/
def P16842296805013039762.Spec : Prop :=
  ∀ n, P16842296805013039762.a n = A293321 n

end A293321

/-! ## A293321.P7744093842615132060

`A293313(n+1)-A293322(n)`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A293321

/-- `A293313(n+1)-A293322(n)` -/
def P7744093842615132060.Spec : Prop :=
  ∀ n, P7744093842615132060.a n = A293321 n

theorem P7744093842615132060.correct : P7744093842615132060.Spec := by
  intro n
  simp only [A293321]

end A293321

/-! ## A293321.P16605819424809062826

`A293314(n+1)-A293323(n)`
-/

namespace A293321.P16605819424809062826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293314 (n + 1) - A293323 n

end

end A293321.P16605819424809062826

namespace A293321

/-- `A293314(n+1)-A293323(n)` -/
def P16605819424809062826.Spec : Prop :=
  ∀ n, P16605819424809062826.a n = A293321 n

end A293321

/-! ## A293321.P3309397638285341139

`2*Δ[A293313(n)]-A293324(n)`
-/

namespace A293321.P3309397638285341139
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293313 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (f1 (n + 1) - f1 n) - A293324 n

end

end A293321.P3309397638285341139

namespace A293321

/-- `2*Δ[A293313(n)]-A293324(n)` -/
def P3309397638285341139.Spec : Prop :=
  ∀ n, P3309397638285341139.a n = A293321 n

end A293321

/-! ## A293321.P3881457260175912935

`A293313(n)-(A293322(n)-A293315(n))`
-/

namespace A293321.P3881457260175912935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293313 n - (A293322 n - A293315 n)

end

end A293321.P3881457260175912935

namespace A293321

/-- `A293313(n)-(A293322(n)-A293315(n))` -/
def P3881457260175912935.Spec : Prop :=
  ∀ n, P3881457260175912935.a n = A293321 n

end A293321

/-! ## A293321.P12333290253203768981

`Δ[A293319(n)]`
-/

namespace A293321.P12333290253203768981
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293319 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A293321.P12333290253203768981

namespace A293321

/-- `Δ[A293319(n)]` -/
def P12333290253203768981.Spec : Prop :=
  ∀ n, P12333290253203768981.a n = A293321 n

end A293321

/-! ## A293321.P4902080088844408787

`Δ[A293320(n)]`
-/

namespace A293321.P4902080088844408787
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293320 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A293321.P4902080088844408787

namespace A293321

/-- `Δ[A293320(n)]` -/
def P4902080088844408787.Spec : Prop :=
  ∀ n, P4902080088844408787.a n = A293321 n

end A293321

/-! ## A293321.P14291264576642361908

`floor(A293320(n+1)/2)`
-/

namespace A293321.P14291264576642361908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A293320 (n + 1) : ℚ) / 2⌋

end

end A293321.P14291264576642361908

namespace A293321

/-- `floor(A293320(n+1)/2)` -/
def P14291264576642361908.Spec : Prop :=
  ∀ n, P14291264576642361908.a n = A293321 n

end A293321

/-! ## A293321.P6827072764072221076

`ceil(A293319(n+1)/2)`
-/

namespace A293321.P6827072764072221076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A293319 (n + 1) : ℚ) / 2⌉

end

end A293321.P6827072764072221076

namespace A293321

/-- `ceil(A293319(n+1)/2)` -/
def P6827072764072221076.Spec : Prop :=
  ∀ n, P6827072764072221076.a n = A293321 n

end A293321

/-! ## A293321.P14943211726503499654

`A293319(n+1)-A293319(n)`
-/

namespace A293321.P14943211726503499654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293319 (n + 1) - A293319 n

end

end A293321.P14943211726503499654

namespace A293321

/-- `A293319(n+1)-A293319(n)` -/
def P14943211726503499654.Spec : Prop :=
  ∀ n, P14943211726503499654.a n = A293321 n

end A293321

/-! ## A293321.P5052669402705950451

`A293320(n+1)-A293320(n)`
-/

namespace A293321.P5052669402705950451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293320 (n + 1) - A293320 n

end

end A293321.P5052669402705950451

namespace A293321

/-- `A293320(n+1)-A293320(n)` -/
def P5052669402705950451.Spec : Prop :=
  ∀ n, P5052669402705950451.a n = A293321 n

end A293321

/-! ## A293321.P18372539122645872069

`Δ[A293313(n+1)-A293324(n)]`
-/

namespace A293321.P18372539122645872069
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293313 (n + 1) - A293324 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A293321.P18372539122645872069

namespace A293321

/-- `Δ[A293313(n+1)-A293324(n)]` -/
def P18372539122645872069.Spec : Prop :=
  ∀ n, P18372539122645872069.a n = A293321 n

end A293321

/-!
# A293322: Greatest integer k such that k/2^n < 1/phi, where phi = (1+sqrt(5))/2 = golden ratio.

The programs for A293322, the canonical program `A293322.P14636184931829606719` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A293322 has offset 0).

The definition of A293322 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A293322.P14636184931829606719

`A293323(n)-1`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A293322

/-- `A293323(n)-1` -/
def P14636184931829606719.Spec : Prop :=
  ∀ n, P14636184931829606719.a n = A293322 n

theorem P14636184931829606719.correct : P14636184931829606719.Spec := by
  intro n
  simp only [A293322]

end A293322

/-! ## A293322.P17184232954465918962

`floor(2^n/ϕ)`
-/

namespace A293322.P17184232954465918962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(2 ^ n : ℝ) / Real.goldenRatio⌋

end

end A293322.P17184232954465918962

namespace A293322

/-- `floor(2^n/ϕ)` -/
def P17184232954465918962.Spec : Prop :=
  ∀ n, P17184232954465918962.a n = A293322 n

end A293322

/-! ## A293322.P7594962348921338238

`ceil(A000079(n)/ϕ)-1`
-/

namespace A293322.P7594962348921338238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A000079 n : ℝ) / Real.goldenRatio⌉ - 1

end

end A293322.P7594962348921338238

namespace A293322

/-- `ceil(A000079(n)/ϕ)-1` -/
def P7594962348921338238.Spec : Prop :=
  ∀ n, P7594962348921338238.a n = A293322 n

end A293322

/-! ## A293322.P13378226039956453140

`ceil((A000225(n)+1)/ϕ)-1`
-/

namespace A293322.P13378226039956453140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A000225 n + 1 : ℝ) / Real.goldenRatio⌉ - 1

end

end A293322.P13378226039956453140

namespace A293322

/-- `ceil((A000225(n)+1)/ϕ)-1` -/
def P13378226039956453140.Spec : Prop :=
  ∀ n, P13378226039956453140.a n = A293322 n

end A293322

/-! ## A293322.P17201115047704629293

`A293313(n)-2^n`
-/

namespace A293322.P17201115047704629293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293313 n - (2 ^ n : ℤ)

end

end A293322.P17201115047704629293

namespace A293322

/-- `A293313(n)-2^n` -/
def P17201115047704629293.Spec : Prop :=
  ∀ n, P17201115047704629293.a n = A293322 n

end A293322

/-! ## A293322.P2818197694217964485

`A293314(n)-A000051(n)`
-/

namespace A293322.P2818197694217964485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293314 n - A000051 n

end

end A293322.P2818197694217964485

namespace A293322

/-- `A293314(n)-A000051(n)` -/
def P2818197694217964485.Spec : Prop :=
  ∀ n, P2818197694217964485.a n = A293322 n

end A293322

/-! ## A293322.P14081737865457470297

`A293331(n)-A293315(n)`
-/

namespace A293322.P14081737865457470297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293331 n - A293315 n

end

end A293322.P14081737865457470297

namespace A293322

/-- `A293331(n)-A293315(n)` -/
def P14081737865457470297.Spec : Prop :=
  ∀ n, P14081737865457470297.a n = A293322 n

end A293322

/-! ## A293322.P14251620156730238084

`A293313(n)%A000079(n)`
-/

namespace A293322.P14251620156730238084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A293313 n) (A000079 n)

end

end A293322.P14251620156730238084

namespace A293322

/-- `A293313(n)%A000079(n)` -/
def P14251620156730238084.Spec : Prop :=
  ∀ n, P14251620156730238084.a n = A293322 n

end A293322

/-! ## A293322.P4191389837907847234

`and(A000225(n), A293313(n))`
-/

namespace A293322.P4191389837907847234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000225 n) (A293313 n)

end

end A293322.P4191389837907847234

namespace A293322

/-- `and(A000225(n), A293313(n))` -/
def P4191389837907847234.Spec : Prop :=
  ∀ n, P4191389837907847234.a n = A293322 n

end A293322

/-! ## A293322.P16364677215697955049

`∑[A293324(n)]-A293324(n)`
-/

namespace A293322.P16364677215697955049
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293324 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A293324 n

end

end A293322.P16364677215697955049

namespace A293322

/-- `∑[A293324(n)]-A293324(n)` -/
def P16364677215697955049.Spec : Prop :=
  ∀ n, P16364677215697955049.a n = A293322 n

end A293322

/-! ## A293322.P8924490914504308142

`A293314(n)-(A000079(n)+1)`
-/

namespace A293322.P8924490914504308142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293314 n - (A000079 n + 1)

end

end A293322.P8924490914504308142

namespace A293322

/-- `A293314(n)-(A000079(n)+1)` -/
def P8924490914504308142.Spec : Prop :=
  ∀ n, P8924490914504308142.a n = A293322 n

end A293322

/-! ## A293322.P7542642038464670844

`A293332(n)-(A293315(n)+1)`
-/

namespace A293322.P7542642038464670844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293332 n - (A293315 n + 1)

end

end A293322.P7542642038464670844

namespace A293322

/-- `A293332(n)-(A293315(n)+1)` -/
def P7542642038464670844.Spec : Prop :=
  ∀ n, P7542642038464670844.a n = A293322 n

end A293322

/-! ## A293322.P15012034746648927067

`A293314(n)-(A000225(n)+2)`
-/

namespace A293322.P15012034746648927067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293314 n - (A000225 n + 2)

end

end A293322.P15012034746648927067

namespace A293322

/-- `A293314(n)-(A000225(n)+2)` -/
def P15012034746648927067.Spec : Prop :=
  ∀ n, P15012034746648927067.a n = A293322 n

end A293322

/-! ## A293322.P16205826115480457902

`and(A293313(n), A303611(n+2))`
-/

namespace A293322.P16205826115480457902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A293313 n) (A303611 (n + 2))

end

end A293322.P16205826115480457902

namespace A293322

/-- `and(A293313(n), A303611(n+2))` -/
def P16205826115480457902.Spec : Prop :=
  ∀ n, P16205826115480457902.a n = A293322 n

end A293322

/-! ## A293322.P13708968917270503458

`A293319(n)-2^(n+1)`
-/

namespace A293322.P13708968917270503458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293319 n - (2 ^ (n + 1) : ℤ)

end

end A293322.P13708968917270503458

namespace A293322

/-- `A293319(n)-2^(n+1)` -/
def P13708968917270503458.Spec : Prop :=
  ∀ n, P13708968917270503458.a n = A293322 n

end A293322

/-! ## A293322.P2962940258693459628

`A293320(n)-A048578(n)`
-/

namespace A293322.P2962940258693459628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293320 n - A048578 n

end

end A293322.P2962940258693459628

namespace A293322

/-- `A293320(n)-A048578(n)` -/
def P2962940258693459628.Spec : Prop :=
  ∀ n, P2962940258693459628.a n = A293322 n

end A293322

/-! ## A293322.P15203828530546496931

`A293319(n)%A000079(n)`
-/

namespace A293322.P15203828530546496931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A293319 n) (A000079 n)

end

end A293322.P15203828530546496931

namespace A293322

/-- `A293319(n)%A000079(n)` -/
def P15203828530546496931.Spec : Prop :=
  ∀ n, P15203828530546496931.a n = A293322 n

end A293322

/-! ## A293322.P17648305777021966927

`and(A000225(n), A293319(n))`
-/

namespace A293322.P17648305777021966927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000225 n) (A293319 n)

end

end A293322.P17648305777021966927

namespace A293322

/-- `and(A000225(n), A293319(n))` -/
def P17648305777021966927.Spec : Prop :=
  ∀ n, P17648305777021966927.a n = A293322 n

end A293322

/-! ## A293322.P11036115178106077289

`and(A126646(n), A293319(n))`
-/

namespace A293322.P11036115178106077289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A126646 n) (A293319 n)

end

end A293322.P11036115178106077289

namespace A293322

/-- `and(A126646(n), A293319(n))` -/
def P11036115178106077289.Spec : Prop :=
  ∀ n, P11036115178106077289.a n = A293322 n

end A293322

/-! ## A293322.P3356233840383737064

`and(A140683(n), A293313(n))`
-/

namespace A293322.P3356233840383737064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A140683 n) (A293313 n)

end

end A293322.P3356233840383737064

namespace A293322

/-- `and(A140683(n), A293313(n))` -/
def P3356233840383737064.Spec : Prop :=
  ∀ n, P3356233840383737064.a n = A293322 n

end A293322

/-!
# A293323: Least integer k such that k/2^n > 1/phi, where phi = (1+sqrt(5))/2 = golden ratio.

The programs for A293323, the canonical program `A293323.P2503044845496551449` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A293323 has offset 0).

The definition of A293323 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A293323.P2503044845496551449

`ceil(2^(n-1)*(sqrt(5)-1))`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A293323

/-- `ceil(2^(n-1)*(sqrt(5)-1))` -/
def P2503044845496551449.Spec : Prop :=
  ∀ n, P2503044845496551449.a n = A293323 n

theorem P2503044845496551449.correct : P2503044845496551449.Spec := by
  intro n
  simp only [A293323]

end A293323

/-! ## A293323.P2906538802691590389

`A293322(n)+1`
-/

namespace A293323.P2906538802691590389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293322 n + 1

end

end A293323.P2906538802691590389

namespace A293323

/-- `A293322(n)+1` -/
def P2906538802691590389.Spec : Prop :=
  ∀ n, P2906538802691590389.a n = A293323 n

end A293323

/-! ## A293323.P5473681587669190404

`∑[A293324(abs(1-n))]`
-/

namespace A293323.P5473681587669190404
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293324 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A293323.P5473681587669190404

namespace A293323

/-- `∑[A293324(abs(1-n))]` -/
def P5473681587669190404.Spec : Prop :=
  ∀ n, P5473681587669190404.a n = A293323 n

end A293323

/-! ## A293323.P10530004177251144728

`floor(A000079(n)/ϕ)+1`
-/

namespace A293323.P10530004177251144728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000079 n : ℝ) / Real.goldenRatio⌋ + 1

end

end A293323.P10530004177251144728

namespace A293323

/-- `floor(A000079(n)/ϕ)+1` -/
def P10530004177251144728.Spec : Prop :=
  ∀ n, P10530004177251144728.a n = A293323 n

end A293323

/-! ## A293323.P12419064566521231056

`floor((A000225(n)+1)/ϕ)+1`
-/

namespace A293323.P12419064566521231056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000225 n + 1 : ℝ) / Real.goldenRatio⌋ + 1

end

end A293323.P12419064566521231056

namespace A293323

/-- `floor((A000225(n)+1)/ϕ)+1` -/
def P12419064566521231056.Spec : Prop :=
  ∀ n, P12419064566521231056.a n = A293323 n

end A293323

/-! ## A293323.P16370531587347347081

`A293324(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A293323.P16370531587347347081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A293324 (n - 1) + a (n - 1)

end

end A293323.P16370531587347347081

namespace A293323

/-- `A293324(n-1)+a(n-1)` -/
def P16370531587347347081.Spec : Prop :=
  ∀ n, P16370531587347347081.a n = A293323 n

end A293323

/-! ## A293323.P3185961540155809315

`floor((A000051(n)-1)*(ϕ-1))+1`
-/

namespace A293323.P3185961540155809315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000051 n - 1 : ℝ) * (Real.goldenRatio - 1)⌋ + 1

end

end A293323.P3185961540155809315

namespace A293323

/-- `floor((A000051(n)-1)*(ϕ-1))+1` -/
def P3185961540155809315.Spec : Prop :=
  ∀ n, P3185961540155809315.a n = A293323 n

end A293323

/-! ## A293323.P11427512743005981390

`A293314(n)-2^n`
-/

namespace A293323.P11427512743005981390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293314 n - (2 ^ n : ℤ)

end

end A293323.P11427512743005981390

namespace A293323

/-- `A293314(n)-2^n` -/
def P11427512743005981390.Spec : Prop :=
  ∀ n, P11427512743005981390.a n = A293323 n

end A293323

/-! ## A293323.P16228158304731574802

`A293313(n)-A000225(n)`
-/

namespace A293323.P16228158304731574802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293313 n - A000225 n

end

end A293323.P16228158304731574802

namespace A293323

/-- `A293313(n)-A000225(n)` -/
def P16228158304731574802.Spec : Prop :=
  ∀ n, P16228158304731574802.a n = A293323 n

end A293323

/-! ## A293323.P4551519959006517059

`A293332(n)-A293315(n)`
-/

namespace A293323.P4551519959006517059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293332 n - A293315 n

end

end A293323.P4551519959006517059

namespace A293323

/-- `A293332(n)-A293315(n)` -/
def P4551519959006517059.Spec : Prop :=
  ∀ n, P4551519959006517059.a n = A293323 n

end A293323

/-! ## A293323.P7888116596184104417

`A293313(n)+1-A000079(n)`
-/

namespace A293323.P7888116596184104417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293313 n + (1 - A000079 n)

end

end A293323.P7888116596184104417

namespace A293323

/-- `A293313(n)+1-A000079(n)` -/
def P7888116596184104417.Spec : Prop :=
  ∀ n, P7888116596184104417.a n = A293323 n

end A293323

/-! ## A293323.P4573731525908749255

`A293331(n)+1-A293315(n)`
-/

namespace A293323.P4573731525908749255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293331 n + (1 - A293315 n)

end

end A293323.P4573731525908749255

namespace A293323

/-- `A293331(n)+1-A293315(n)` -/
def P4573731525908749255.Spec : Prop :=
  ∀ n, P4573731525908749255.a n = A293323 n

end A293323

/-! ## A293323.P12943269202313332633

`A293313(n)+2-A000051(n)`
-/

namespace A293323.P12943269202313332633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293313 n + (2 - A000051 n)

end

end A293323.P12943269202313332633

namespace A293323

/-- `A293313(n)+2-A000051(n)` -/
def P12943269202313332633.Spec : Prop :=
  ∀ n, P12943269202313332633.a n = A293323 n

end A293323

/-! ## A293323.P16608292781797119341

`∑[A293324(n)]+1-A293324(n)`
-/

namespace A293323.P16608292781797119341
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293324 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (1 - A293324 n)

end

end A293323.P16608292781797119341

namespace A293323

/-- `∑[A293324(n)]+1-A293324(n)` -/
def P16608292781797119341.Spec : Prop :=
  ∀ n, P16608292781797119341.a n = A293323 n

end A293323

/-! ## A293323.P15502623054843814435

`A293320(n)-2^(n+1)`
-/

namespace A293323.P15502623054843814435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293320 n - (2 ^ (n + 1) : ℤ)

end

end A293323.P15502623054843814435

namespace A293323

/-- `A293320(n)-2^(n+1)` -/
def P15502623054843814435.Spec : Prop :=
  ∀ n, P15502623054843814435.a n = A293323 n

end A293323

/-! ## A293323.P9883604000560675315

`A293319(n)-A126646(n)`
-/

namespace A293323.P9883604000560675315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293319 n - A126646 n

end

end A293323.P9883604000560675315

namespace A293323

/-- `A293319(n)-A126646(n)` -/
def P9883604000560675315.Spec : Prop :=
  ∀ n, P9883604000560675315.a n = A293323 n

end A293323

/-! ## A293323.P419240931354194362

`and(A126646(n), A293320(n))`
-/

namespace A293323.P419240931354194362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A126646 n) (A293320 n)

end

end A293323.P419240931354194362

namespace A293323

/-- `and(A126646(n), A293320(n))` -/
def P419240931354194362.Spec : Prop :=
  ∀ n, P419240931354194362.a n = A293323 n

end A293323

/-! ## A293323.P4125777084977904220

`A293319(n)-A000225(n+1)`
-/

namespace A293323.P4125777084977904220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293319 n - A000225 (n + 1)

end

end A293323.P4125777084977904220

namespace A293323

/-- `A293319(n)-A000225(n+1)` -/
def P4125777084977904220.Spec : Prop :=
  ∀ n, P4125777084977904220.a n = A293323 n

end A293323

/-! ## A293323.P1743253145095781099

`A376448(n+1)-A293319(n)`
-/

namespace A293323.P1743253145095781099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376448 (n + 1) - A293319 n

end

end A293323.P1743253145095781099

namespace A293323

/-- `A376448(n+1)-A293319(n)` -/
def P1743253145095781099.Spec : Prop :=
  ∀ n, P1743253145095781099.a n = A293323 n

end A293323

/-! ## A293323.P14978506374593726697

`2*A293314(n)-A293320(n)`
-/

namespace A293323.P14978506374593726697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A293314 n - A293320 n

end

end A293323.P14978506374593726697

namespace A293323

/-- `2*A293314(n)-A293320(n)` -/
def P14978506374593726697.Spec : Prop :=
  ∀ n, P14978506374593726697.a n = A293323 n

end A293323

/-!
# A293324: The integer k that minimizes |k/2^n - 1/phi|, where phi = (1+sqrt(5))/2 = golden ratio.

The programs for A293324, the canonical program `A293324.P15307345529341854269` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A293324 has offset 0).

The definition of A293324 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A293324.P15307345529341854269

`round(2^n/ϕ)`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A293324

/-- `round(2^n/ϕ)` -/
def P15307345529341854269.Spec : Prop :=
  ∀ n, P15307345529341854269.a n = A293324 n

theorem P15307345529341854269.correct : P15307345529341854269.Spec := by
  intro n
  simp only [A293324]

end A293324

/-! ## A293324.P16320112529209000978

`Δ[A293322(n)]`
-/

namespace A293324.P16320112529209000978
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293322 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A293324.P16320112529209000978

namespace A293324

/-- `Δ[A293322(n)]` -/
def P16320112529209000978.Spec : Prop :=
  ∀ n, P16320112529209000978.a n = A293324 n

end A293324

/-! ## A293324.P9950386600437098407

`Δ[A293323(n)]`
-/

namespace A293324.P9950386600437098407
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293323 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A293324.P9950386600437098407

namespace A293324

/-- `Δ[A293323(n)]` -/
def P9950386600437098407.Spec : Prop :=
  ∀ n, P9950386600437098407.a n = A293324 n

end A293324

/-! ## A293324.P11040821479587732441

`A293315(n)-2^n`
-/

namespace A293324.P11040821479587732441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293315 n - (2 ^ n : ℤ)

end

end A293324.P11040821479587732441

namespace A293324

/-- `A293315(n)-2^n` -/
def P11040821479587732441.Spec : Prop :=
  ∀ n, P11040821479587732441.a n = A293324 n

end A293324

/-! ## A293324.P6416217208137133957

`floor(A293323(n+1)/2)`
-/

namespace A293324.P6416217208137133957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A293323 (n + 1) : ℚ) / 2⌋

end

end A293324.P6416217208137133957

namespace A293324

/-- `floor(A293323(n+1)/2)` -/
def P6416217208137133957.Spec : Prop :=
  ∀ n, P6416217208137133957.a n = A293324 n

end A293324

/-! ## A293324.P13787073272920287487

`ceil(A293322(n+1)/2)`
-/

namespace A293324.P13787073272920287487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A293322 (n + 1) : ℚ) / 2⌉

end

end A293324.P13787073272920287487

namespace A293324

/-- `ceil(A293322(n+1)/2)` -/
def P13787073272920287487.Spec : Prop :=
  ∀ n, P13787073272920287487.a n = A293324 n

end A293324

/-! ## A293324.P9800185962335734520

`Δ[floor((A000225(n)+1)/ϕ)]`
-/

namespace A293324.P9800185962335734520
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000225 n + 1 : ℝ) / Real.goldenRatio⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A293324.P9800185962335734520

namespace A293324

/-- `Δ[floor((A000225(n)+1)/ϕ)]` -/
def P9800185962335734520.Spec : Prop :=
  ∀ n, P9800185962335734520.a n = A293324 n

end A293324

/-! ## A293324.P8365807348136826598

`Δ[floor((A000051(n)-1)*(ϕ-1))]`
-/

namespace A293324.P8365807348136826598
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000051 n - 1 : ℝ) * (Real.goldenRatio - 1)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A293324.P8365807348136826598

namespace A293324

/-- `Δ[floor((A000051(n)-1)*(ϕ-1))]` -/
def P8365807348136826598.Spec : Prop :=
  ∀ n, P8365807348136826598.a n = A293324 n

end A293324

/-! ## A293324.P12051346938378110934

`A293331(n)-A293313(n)`
-/

namespace A293324.P12051346938378110934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293331 n - A293313 n

end

end A293324.P12051346938378110934

namespace A293324

/-- `A293331(n)-A293313(n)` -/
def P12051346938378110934.Spec : Prop :=
  ∀ n, P12051346938378110934.a n = A293324 n

end A293324

/-! ## A293324.P14189941948687565593

`A293332(n)-A293314(n)`
-/

namespace A293324.P14189941948687565593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293332 n - A293314 n

end

end A293324.P14189941948687565593

namespace A293324

/-- `A293332(n)-A293314(n)` -/
def P14189941948687565593.Spec : Prop :=
  ∀ n, P14189941948687565593.a n = A293324 n

end A293324

/-! ## A293324.P17267908292997918909

`xor(A171559(n), A293315(n))`
-/

namespace A293324.P17267908292997918909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A171559 n) (A293315 n)

end

end A293324.P17267908292997918909

namespace A293324

/-- `xor(A171559(n), A293315(n))` -/
def P17267908292997918909.Spec : Prop :=
  ∀ n, P17267908292997918909.a n = A293324 n

end A293324

/-! ## A293324.P6380498624263229922

`A293322(n+1)-A293322(n)`
-/

namespace A293324.P6380498624263229922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293322 (n + 1) - A293322 n

end

end A293324.P6380498624263229922

namespace A293324

/-- `A293322(n+1)-A293322(n)` -/
def P6380498624263229922.Spec : Prop :=
  ∀ n, P6380498624263229922.a n = A293324 n

end A293324

/-! ## A293324.P12848740930058373459

`A293323(n+1)-A293323(n)`
-/

namespace A293324.P12848740930058373459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293323 (n + 1) - A293323 n

end

end A293324.P12848740930058373459

namespace A293324

/-- `A293323(n+1)-A293323(n)` -/
def P12848740930058373459.Spec : Prop :=
  ∀ n, P12848740930058373459.a n = A293324 n

end A293324

/-! ## A293324.P13087637238559007678

`A293321(n)-2^(n+1)`
-/

namespace A293324.P13087637238559007678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293321 n - (2 ^ (n + 1) : ℤ)

end

end A293324.P13087637238559007678

namespace A293324

/-- `A293321(n)-2^(n+1)` -/
def P13087637238559007678.Spec : Prop :=
  ∀ n, P13087637238559007678.a n = A293324 n

end A293324

/-! ## A293324.P3435420248085339430

`and(A126646(n), A293321(n))`
-/

namespace A293324.P3435420248085339430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A126646 n) (A293321 n)

end

end A293324.P3435420248085339430

namespace A293324

/-- `and(A126646(n), A293321(n))` -/
def P3435420248085339430.Spec : Prop :=
  ∀ n, P3435420248085339430.a n = A293324 n

end A293324

/-! ## A293324.P1914605047744696674

`and(A255047(n), A293321(n))`
-/

namespace A293324.P1914605047744696674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A255047 n) (A293321 n)

end

end A293324.P1914605047744696674

namespace A293324

/-- `and(A255047(n), A293321(n))` -/
def P1914605047744696674.Spec : Prop :=
  ∀ n, P1914605047744696674.a n = A293324 n

end A293324

/-! ## A293324.P13217427722838579052

`and(A267604(n), A293321(n))`
-/

namespace A293324.P13217427722838579052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A267604 n) (A293321 n)

end

end A293324.P13217427722838579052

namespace A293324

/-- `and(A267604(n), A293321(n))` -/
def P13217427722838579052.Spec : Prop :=
  ∀ n, P13217427722838579052.a n = A293324 n

end A293324

/-! ## A293324.P6565143066707600780

`and(A290683(n), A293321(n))`
-/

namespace A293324.P6565143066707600780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A290683 n) (A293321 n)

end

end A293324.P6565143066707600780

namespace A293324

/-- `and(A290683(n), A293321(n))` -/
def P6565143066707600780.Spec : Prop :=
  ∀ n, P6565143066707600780.a n = A293324 n

end A293324

/-! ## A293324.P408097917368617645

`A293313(n+1)-A293319(n)`
-/

namespace A293324.P408097917368617645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293313 (n + 1) - A293319 n

end

end A293324.P408097917368617645

namespace A293324

/-- `A293313(n+1)-A293319(n)` -/
def P408097917368617645.Spec : Prop :=
  ∀ n, P408097917368617645.a n = A293324 n

end A293324

/-! ## A293324.P11457660583791963188

`A293314(n+1)-A293320(n)`
-/

namespace A293324.P11457660583791963188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293314 (n + 1) - A293320 n

end

end A293324.P11457660583791963188

namespace A293324

/-- `A293314(n+1)-A293320(n)` -/
def P11457660583791963188.Spec : Prop :=
  ∀ n, P11457660583791963188.a n = A293324 n

end A293324

/-!
# A293325: Least integer k such that k/2^n > sqrt(3).

The programs for A293325, the canonical program `A293325.P1460983041729213506` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A293325 has offset 0).

The definition of A293325 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A293325.P1460983041729213506

`A094386(n+1)+1`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A293325

/-- `A094386(n+1)+1` -/
def P1460983041729213506.Spec : Prop :=
  ∀ n, P1460983041729213506.a n = A293325 n

theorem P1460983041729213506.correct : P1460983041729213506.Spec := by
  intro n
  simp only [A293325]

end A293325

/-! ## A293325.P13734423006464346913

`ceil(sqrt(3)*2^n)`
-/

namespace A293325.P13734423006464346913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (3 : ℝ) * (2 ^ n : ℝ)⌉

end

end A293325.P13734423006464346913

namespace A293325

/-- `ceil(sqrt(3)*2^n)` -/
def P13734423006464346913.Spec : Prop :=
  ∀ n, P13734423006464346913.a n = A293325 n

end A293325

/-! ## A293325.P15360488028161041937

`A221718(2*n)+1`
-/

namespace A293325.P15360488028161041937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221718 (2 * n) + 1

end

end A293325.P15360488028161041937

namespace A293325

/-- `A221718(2*n)+1` -/
def P15360488028161041937.Spec : Prop :=
  ∀ n, P15360488028161041937.a n = A293325 n

end A293325

/-! ## A293325.P10641043719128516626

`floor(sqrt(3)*A000079(n))+1`
-/

namespace A293325.P10641043719128516626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt (3 : ℝ) * (A000079 n : ℝ)⌋ + 1

end

end A293325.P10641043719128516626

namespace A293325

/-- `floor(sqrt(3)*A000079(n))+1` -/
def P10641043719128516626.Spec : Prop :=
  ∀ n, P10641043719128516626.a n = A293325 n

end A293325

/-! ## A293325.P18343038818481184039

`A293326(n-1)+a(n-1)` with `a(0)=2`
-/

namespace A293325.P18343038818481184039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A293326 (n - 1) + a (n - 1)

end

end A293325.P18343038818481184039

namespace A293325

/-- `A293326(n-1)+a(n-1)` -/
def P18343038818481184039.Spec : Prop :=
  ∀ n, P18343038818481184039.a n = A293325 n

end A293325

/-! ## A293325.P319067152352194594

`floor(A007283(n)/sqrt(3))+1`
-/

namespace A293325.P319067152352194594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A007283 n : ℝ) / Real.sqrt (3 : ℝ)⌋ + 1

end

end A293325.P319067152352194594

namespace A293325

/-- `floor(A007283(n)/sqrt(3))+1` -/
def P319067152352194594.Spec : Prop :=
  ∀ n, P319067152352194594.a n = A293325 n

end A293325

/-! ## A293325.P3099602951726285537

`∑[A293326(n)]+2-A293326(n)`
-/

namespace A293325.P3099602951726285537
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293326 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (2 - A293326 n)

end

end A293325.P3099602951726285537

namespace A293325

/-- `∑[A293326(n)]+2-A293326(n)` -/
def P3099602951726285537.Spec : Prop :=
  ∀ n, P3099602951726285537.a n = A293325 n

end A293325

/-! ## A293325.P12681682940669358136

`∑[round(sqrt(A002001(n)))]+1`
-/

namespace A293325.P12681682940669358136
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A002001 n : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A293325.P12681682940669358136

namespace A293325

/-- `∑[round(sqrt(A002001(n)))]+1` -/
def P12681682940669358136.Spec : Prop :=
  ∀ n, P12681682940669358136.a n = A293325 n

end A293325

/-! ## A293325.P16177485452286420107

`floor(sqrt(A096045(n)))+1`
-/

namespace A293325.P16177485452286420107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A096045 n) + 1

end

end A293325.P16177485452286420107

namespace A293325

/-- `floor(sqrt(A096045(n)))+1` -/
def P16177485452286420107.Spec : Prop :=
  ∀ n, P16177485452286420107.a n = A293325 n

end A293325

/-! ## A293325.P9315402771617840290

`floor(sqrt(A198693(n)))+1`
-/

namespace A293325.P9315402771617840290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A198693 n) + 1

end

end A293325.P9315402771617840290

namespace A293325

/-- `floor(sqrt(A198693(n)))+1` -/
def P9315402771617840290.Spec : Prop :=
  ∀ n, P9315402771617840290.a n = A293325 n

end A293325

/-! ## A293325.P669245646908490191

`floor(sqrt(A003945(2*n+1)))+1`
-/

namespace A293325.P669245646908490191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A003945 (2 * n + 1)) + 1

end

end A293325.P669245646908490191

namespace A293325

/-- `floor(sqrt(A003945(2*n+1)))+1` -/
def P669245646908490191.Spec : Prop :=
  ∀ n, P669245646908490191.a n = A293325 n

end A293325

/-! ## A293325.P3881101336428531921

`floor(sqrt(3*A164073(2*n+1)²))+1`
-/

namespace A293325.P3881101336428531921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (3 * A164073 (2 * n + 1) ^ 2) + 1

end

end A293325.P3881101336428531921

namespace A293325

/-- `floor(sqrt(3*A164073(2*n+1)²))+1` -/
def P3881101336428531921.Spec : Prop :=
  ∀ n, P3881101336428531921.a n = A293325 n

end A293325

/-! ## A293325.P10476130180490438025

`floor(sqrt(Δ[4^n-A047558(n+1)]))+1`
-/

namespace A293325.P10476130180490438025
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 ^ n : ℤ) - A047558 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (f1 (n + 1) - f1 n) + 1

end

end A293325.P10476130180490438025

namespace A293325

/-- `floor(sqrt(Δ[4^n-A047558(n+1)]))+1` -/
def P10476130180490438025.Spec : Prop :=
  ∀ n, P10476130180490438025.a n = A293325 n

end A293325

/-!
# A293326: The integer k that minimizes |k/2^n - sqrt(3)|.

The programs for A293326, the canonical program `A293326.P17442974139172085568` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A293326 has offset 0).

The definition of A293326 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A293326.P8498649434330670857

`round(sqrt(3)*2^n)`
-/

namespace A293326.P8498649434330670857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (3 : ℝ) * (2 ^ n : ℝ))

end

end A293326.P8498649434330670857

namespace A293326

/-- `round(sqrt(3)*2^n)` -/
def P8498649434330670857.Spec : Prop :=
  ∀ n, P8498649434330670857.a n = A293326 n

end A293326

/-! ## A293326.P17442974139172085568

`A094386(n+1)+A004547(n+2)`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A293326

/-- `A094386(n+1)+A004547(n+2)` -/
def P17442974139172085568.Spec : Prop :=
  ∀ n, P17442974139172085568.a n = A293326 n

theorem P17442974139172085568.correct : P17442974139172085568.Spec := by
  intro n
  simp only [A293326]

end A293326

/-! ## A293326.P2657327594513427341

`Δ[A293325(n)]`
-/

namespace A293326.P2657327594513427341
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293325 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A293326.P2657327594513427341

namespace A293326

/-- `Δ[A293325(n)]` -/
def P2657327594513427341.Spec : Prop :=
  ∀ n, P2657327594513427341.a n = A293326 n

end A293326

/-! ## A293326.P6650630970001860310

`Δ[A094386(n+1)]`
-/

namespace A293326.P6650630970001860310
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094386 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A293326.P6650630970001860310

namespace A293326

/-- `Δ[A094386(n+1)]` -/
def P6650630970001860310.Spec : Prop :=
  ∀ n, P6650630970001860310.a n = A293326 n

end A293326

/-! ## A293326.P10192345349129787837

`Δ[A221718(2*n)]`
-/

namespace A293326.P10192345349129787837
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221718 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A293326.P10192345349129787837

namespace A293326

/-- `Δ[A221718(2*n)]` -/
def P10192345349129787837.Spec : Prop :=
  ∀ n, P10192345349129787837.a n = A293326 n

end A293326

/-! ## A293326.P7975543587835891861

`floor(A293325(n+1)/2)`
-/

namespace A293326.P7975543587835891861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A293325 (n + 1) : ℚ) / 2⌋

end

end A293326.P7975543587835891861

namespace A293326

/-- `floor(A293325(n+1)/2)` -/
def P7975543587835891861.Spec : Prop :=
  ∀ n, P7975543587835891861.a n = A293326 n

end A293326

/-! ## A293326.P4808725916189273709

`ceil(A094386(n+2)/2)`
-/

namespace A293326.P4808725916189273709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A094386 (n + 2) : ℚ) / 2⌉

end

end A293326.P4808725916189273709

namespace A293326

/-- `ceil(A094386(n+2)/2)` -/
def P4808725916189273709.Spec : Prop :=
  ∀ n, P4808725916189273709.a n = A293326 n

end A293326

/-! ## A293326.P10366335241870137327

`abs(round(A007283(n)/sqrt(3))-n)+n`
-/

namespace A293326.P10366335241870137327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |SequenceMachineLib.roundAway ((A007283 n : ℝ) / Real.sqrt (3 : ℝ)) - (n : ℤ)| + (n : ℤ)

end

end A293326.P10366335241870137327

namespace A293326

/-- `abs(round(A007283(n)/sqrt(3))-n)+n` -/
def P10366335241870137327.Spec : Prop :=
  ∀ n, P10366335241870137327.a n = A293326 n

end A293326

/-! ## A293326.P1710988367833614184

`A293325(n+1)-A293325(n)`
-/

namespace A293326.P1710988367833614184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293325 (n + 1) - A293325 n

end

end A293326.P1710988367833614184

namespace A293326

/-- `A293325(n+1)-A293325(n)` -/
def P1710988367833614184.Spec : Prop :=
  ∀ n, P1710988367833614184.a n = A293326 n

end A293326

/-! ## A293326.P6768053809813613367

`A094386(n+2)-A094386(n+1)`
-/

namespace A293326.P6768053809813613367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094386 (n + 2) - A094386 (n + 1)

end

end A293326.P6768053809813613367

namespace A293326

/-- `A094386(n+2)-A094386(n+1)` -/
def P6768053809813613367.Spec : Prop :=
  ∀ n, P6768053809813613367.a n = A293326 n

end A293326

/-! ## A293326.P13207422628004840577

`A221718(2*(n+1))-A221718(2*n)`
-/

namespace A293326.P13207422628004840577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221718 (2 * (n + 1)) - A221718 (2 * n)

end

end A293326.P13207422628004840577

namespace A293326

/-- `A221718(2*(n+1))-A221718(2*n)` -/
def P13207422628004840577.Spec : Prop :=
  ∀ n, P13207422628004840577.a n = A293326 n

end A293326

/-! ## A293326.P3845655252337145817

`Δ[floor(A007283(n)/sqrt(3))]`
-/

namespace A293326.P3845655252337145817
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A007283 n : ℝ) / Real.sqrt (3 : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A293326.P3845655252337145817

namespace A293326

/-- `Δ[floor(A007283(n)/sqrt(3))]` -/
def P3845655252337145817.Spec : Prop :=
  ∀ n, P3845655252337145817.a n = A293326 n

end A293326

/-! ## A293326.P17291120256716356780

`ceil((A007283(n+1)/sqrt(3)-1)/2)`
-/

namespace A293326.P17291120256716356780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((A007283 (n + 1) : ℝ) / Real.sqrt (3 : ℝ) - 1) / 2⌉

end

end A293326.P17291120256716356780

namespace A293326

/-- `ceil((A007283(n+1)/sqrt(3)-1)/2)` -/
def P17291120256716356780.Spec : Prop :=
  ∀ n, P17291120256716356780.a n = A293326 n

end A293326

/-! ## A293326.P5227965015770149295

`abs(round(sqrt(A007283(2*n)))-n)+n`
-/

namespace A293326.P5227965015770149295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |SequenceMachineLib.roundAway (Real.sqrt (A007283 (2 * n) : ℝ)) - (n : ℤ)| + (n : ℤ)

end

end A293326.P5227965015770149295

namespace A293326

/-- `abs(round(sqrt(A007283(2*n)))-n)+n` -/
def P5227965015770149295.Spec : Prop :=
  ∀ n, P5227965015770149295.a n = A293326 n

end A293326

/-! ## A293326.P12258643467746667997

`Δ[floor(sqrt(A198693(n)))]`
-/

namespace A293326.P12258643467746667997
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A198693 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A293326.P12258643467746667997

namespace A293326

/-- `Δ[floor(sqrt(A198693(n)))]` -/
def P12258643467746667997.Spec : Prop :=
  ∀ n, P12258643467746667997.a n = A293326 n

end A293326

/-! ## A293326.P14005645995794425853

`Δ[floor(sqrt(A007283(2*n)))]`
-/

namespace A293326.P14005645995794425853
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A007283 (2 * n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A293326.P14005645995794425853

namespace A293326

/-- `Δ[floor(sqrt(A007283(2*n)))]` -/
def P14005645995794425853.Spec : Prop :=
  ∀ n, P14005645995794425853.a n = A293326 n

end A293326

/-! ## A293326.P15433307413938151547

`Δ[floor(sqrt(A003945(2*n+1)))]`
-/

namespace A293326.P15433307413938151547
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A003945 (2 * n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A293326.P15433307413938151547

namespace A293326

/-- `Δ[floor(sqrt(A003945(2*n+1)))]` -/
def P15433307413938151547.Spec : Prop :=
  ∀ n, P15433307413938151547.a n = A293326 n

end A293326

/-!
# A293327: Greatest integer k such that k/2^n < sqrt(1/3).

The programs for A293327, the canonical program `A293327.P5420786145344540792` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A293327 has offset 0).

The definition of A293327 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A293327.P1550031808113030362

`A293328(n)-1`
-/

namespace A293327.P1550031808113030362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293328 n - 1

end

end A293327.P1550031808113030362

namespace A293327

/-- `A293328(n)-1` -/
def P1550031808113030362.Spec : Prop :=
  ∀ n, P1550031808113030362.a n = A293327 n

end A293327

/-! ## A293327.P5420786145344540792

`floor(2^n/sqrt(3))`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A293327

/-- `floor(2^n/sqrt(3))` -/
def P5420786145344540792.Spec : Prop :=
  ∀ n, P5420786145344540792.a n = A293327 n

theorem P5420786145344540792.correct : P5420786145344540792.Spec := by
  intro n
  simp only [A293327]

end A293327

/-! ## A293327.P4365171396716556445

`(ceil(2^n/sqrt(3))-1)%ceil(sqrt(3)*2^n)`
-/

namespace A293327.P4365171396716556445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (⌈(2 ^ n : ℝ) / Real.sqrt (3 : ℝ)⌉ - 1) ⌈Real.sqrt (3 : ℝ) * (2 ^ n : ℝ)⌉

end

end A293327.P4365171396716556445

namespace A293327

/-- `(ceil(2^n/sqrt(3))-1)%ceil(sqrt(3)*2^n)` -/
def P4365171396716556445.Spec : Prop :=
  ∀ n, P4365171396716556445.a n = A293327 n

end A293327

/-! ## A293327.P16227475136476677468

`∑[A293329(n)]-A293329(n)`
-/

namespace A293327.P16227475136476677468
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293329 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A293329 n

end

end A293327.P16227475136476677468

namespace A293327

/-- `∑[A293329(n)]-A293329(n)` -/
def P16227475136476677468.Spec : Prop :=
  ∀ n, P16227475136476677468.a n = A293327 n

end A293327

/-! ## A293327.P6341034117736999945

`record[floor(sqrt(A084183(n)))]`
-/

namespace A293327.P6341034117736999945
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A084183 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A293327.P6341034117736999945

namespace A293327

/-- `record[floor(sqrt(A084183(n)))]` -/
def P6341034117736999945.Spec : Prop :=
  ∀ n, P6341034117736999945.a n = A293327 n

end A293327

/-! ## A293327.P5298027130082486048

`ceil(sqrt(A047849(n)))-1`
-/

namespace A293327.P5298027130082486048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A047849 n : ℝ)⌉ - 1

end

end A293327.P5298027130082486048

namespace A293327

/-- `ceil(sqrt(A047849(n)))-1` -/
def P5298027130082486048.Spec : Prop :=
  ∀ n, P5298027130082486048.a n = A293327 n

end A293327

/-! ## A293327.P1240820688068880246

`ceil(sqrt(A005578(2*n)))-1`
-/

namespace A293327.P1240820688068880246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A005578 (2 * n) : ℝ)⌉ - 1

end

end A293327.P1240820688068880246

namespace A293327

/-- `ceil(sqrt(A005578(2*n)))-1` -/
def P1240820688068880246.Spec : Prop :=
  ∀ n, P1240820688068880246.a n = A293327 n

end A293327

/-! ## A293327.P8620167683211425849

`ceil(sqrt(A078008(2*n)))-1`
-/

namespace A293327.P8620167683211425849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A078008 (2 * n) : ℝ)⌉ - 1

end

end A293327.P8620167683211425849

namespace A293327

/-- `ceil(sqrt(A078008(2*n)))-1` -/
def P8620167683211425849.Spec : Prop :=
  ∀ n, P8620167683211425849.a n = A293327 n

end A293327

/-! ## A293327.P8681055181151464599

`ceil(sqrt(A128209(2*n)))-1`
-/

namespace A293327.P8681055181151464599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A128209 (2 * n) : ℝ)⌉ - 1

end

end A293327.P8681055181151464599

namespace A293327

/-- `ceil(sqrt(A128209(2*n)))-1` -/
def P8681055181151464599.Spec : Prop :=
  ∀ n, P8681055181151464599.a n = A293327 n

end A293327

/-! ## A293327.P5325192087991752086

`ceil(sqrt(A094359(2*n+1)))-1`
-/

namespace A293327.P5325192087991752086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A094359 (2 * n + 1) : ℝ)⌉ - 1

end

end A293327.P5325192087991752086

namespace A293327

/-- `ceil(sqrt(A094359(2*n+1)))-1` -/
def P5325192087991752086.Spec : Prop :=
  ∀ n, P5325192087991752086.a n = A293327 n

end A293327

/-! ## A293327.P13065543647393170019

`ceil(sqrt(A173197(2*n+1)))-1`
-/

namespace A293327.P13065543647393170019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A173197 (2 * n + 1) : ℝ)⌉ - 1

end

end A293327.P13065543647393170019

namespace A293327

/-- `ceil(sqrt(A173197(2*n+1)))-1` -/
def P13065543647393170019.Spec : Prop :=
  ∀ n, P13065543647393170019.a n = A293327 n

end A293327

/-! ## A293327.P10945597343655736527

`floor(sqrt(A002450(n)))/A016813(n)%2`
-/

namespace A293327.P10945597343655736527
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.sqrt (A002450 n) : ℚ) / (Int.tmod (A016813 n) 2 : ℚ)

end

end A293327.P10945597343655736527

namespace A293327

/-- `floor(sqrt(A002450(n)))/A016813(n)%2` -/
def P10945597343655736527.Spec : Prop :=
  ∀ n, P10945597343655736527.a n = (A293327 n : ℚ)

end A293327

/-!
# A293328: Least integer k such that k/2^n > sqrt(1/3).

The programs for A293328, the canonical program `A293328.P1628811310292705027` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A293328 has offset 0).

The definition of A293328 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A293327, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A293328.P1628811310292705027

`A293327(n)+1`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A293328

/-- `A293327(n)+1` -/
def P1628811310292705027.Spec : Prop :=
  ∀ n, P1628811310292705027.a n = A293328 n

theorem P1628811310292705027.correct : P1628811310292705027.Spec := by
  intro n
  simp only [A293328]

end A293328

/-! ## A293328.P13730149062165768163

`ceil(2^n/sqrt(3))`
-/

namespace A293328.P13730149062165768163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(2 ^ n : ℝ) / Real.sqrt (3 : ℝ)⌉

end

end A293328.P13730149062165768163

namespace A293328

/-- `ceil(2^n/sqrt(3))` -/
def P13730149062165768163.Spec : Prop :=
  ∀ n, P13730149062165768163.a n = A293328 n

end A293328

/-! ## A293328.P16611290420758577211

`∑[A293329(abs(1-n))]`
-/

namespace A293328.P16611290420758577211
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293329 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A293328.P16611290420758577211

namespace A293328

/-- `∑[A293329(abs(1-n))]` -/
def P16611290420758577211.Spec : Prop :=
  ∀ n, P16611290420758577211.a n = A293328 n

end A293328

/-! ## A293328.P14853999718189922509

`A293329(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A293328.P14853999718189922509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A293329 (n - 1) + a (n - 1)

end

end A293328.P14853999718189922509

namespace A293328

/-- `A293329(n-1)+a(n-1)` -/
def P14853999718189922509.Spec : Prop :=
  ∀ n, P14853999718189922509.a n = A293328 n

end A293328

/-! ## A293328.P8689638952654988857

`floor(sqrt(3)*A000079(n)/3)+1`
-/

namespace A293328.P8689638952654988857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt (3 : ℝ) * (A000079 n : ℝ) / 3⌋ + 1

end

end A293328.P8689638952654988857

namespace A293328

/-- `floor(sqrt(3)*A000079(n)/3)+1` -/
def P8689638952654988857.Spec : Prop :=
  ∀ n, P8689638952654988857.a n = A293328 n

end A293328

/-! ## A293328.P17165646565153888135

`∑[A293329(n)]+1-A293329(n)`
-/

namespace A293328.P17165646565153888135
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293329 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (1 - A293329 n)

end

end A293328.P17165646565153888135

namespace A293328

/-- `∑[A293329(n)]+1-A293329(n)` -/
def P17165646565153888135.Spec : Prop :=
  ∀ n, P17165646565153888135.a n = A293328 n

end A293328

/-! ## A293328.P11046368228709407971

`floor(sqrt(A002450(n)))+1`
-/

namespace A293328.P11046368228709407971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A002450 n) + 1

end

end A293328.P11046368228709407971

namespace A293328

/-- `floor(sqrt(A002450(n)))+1` -/
def P11046368228709407971.Spec : Prop :=
  ∀ n, P11046368228709407971.a n = A293328 n

end A293328

/-! ## A293328.P6442899410586576478

`floor(record[sqrt(A084183(n))+1])`
-/

namespace A293328.P6442899410586576478
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A084183 n : ℝ) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)⌋

end

end A293328.P6442899410586576478

namespace A293328

/-- `floor(record[sqrt(A084183(n))+1])` -/
def P6442899410586576478.Spec : Prop :=
  ∀ n, P6442899410586576478.a n = A293328 n

end A293328

/-! ## A293328.P5419844753400472166

`floor(sqrt(A163834(n)-2))+1`
-/

namespace A293328.P5419844753400472166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A163834 n - 2) + 1

end

end A293328.P5419844753400472166

namespace A293328

/-- `floor(sqrt(A163834(n)-2))+1` -/
def P5419844753400472166.Spec : Prop :=
  ∀ n, P5419844753400472166.a n = A293328 n

end A293328

/-! ## A293328.P2777887106954528447

`floor(sqrt(A001045(2*n)))+1`
-/

namespace A293328.P2777887106954528447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A001045 (2 * n)) + 1

end

end A293328.P2777887106954528447

namespace A293328

/-- `floor(sqrt(A001045(2*n)))+1` -/
def P2777887106954528447.Spec : Prop :=
  ∀ n, P2777887106954528447.a n = A293328 n

end A293328

/-! ## A293328.P1600710657910730232

`floor(sqrt(A024495(2*n)))+1`
-/

namespace A293328.P1600710657910730232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A024495 (2 * n)) + 1

end

end A293328.P1600710657910730232

namespace A293328

/-- `floor(sqrt(A024495(2*n)))+1` -/
def P1600710657910730232.Spec : Prop :=
  ∀ n, P1600710657910730232.a n = A293328 n

end A293328

/-! ## A293328.P1353921561351440189

`floor(sqrt(A136324(2*n)))+1`
-/

namespace A293328.P1353921561351440189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A136324 (2 * n)) + 1

end

end A293328.P1353921561351440189

namespace A293328

/-- `floor(sqrt(A136324(2*n)))+1` -/
def P1353921561351440189.Spec : Prop :=
  ∀ n, P1353921561351440189.a n = A293328 n

end A293328

/-! ## A293328.P3948107800908074734

`floor(sqrt(A166022(2*n)))+1`
-/

namespace A293328.P3948107800908074734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A166022 (2 * n)) + 1

end

end A293328.P3948107800908074734

namespace A293328

/-- `floor(sqrt(A166022(2*n)))+1` -/
def P3948107800908074734.Spec : Prop :=
  ∀ n, P3948107800908074734.a n = A293328 n

end A293328

/-! ## A293328.P11714843363595085319

`floor(sqrt(A171501(2*n)))+1`
-/

namespace A293328.P11714843363595085319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A171501 (2 * n)) + 1

end

end A293328.P11714843363595085319

namespace A293328

/-- `floor(sqrt(A171501(2*n)))+1` -/
def P11714843363595085319.Spec : Prop :=
  ∀ n, P11714843363595085319.a n = A293328 n

end A293328

/-! ## A293328.P15905676491617589370

`floor(sqrt(A242563(2*n)))+1`
-/

namespace A293328.P15905676491617589370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A242563 (2 * n)) + 1

end

end A293328.P15905676491617589370

namespace A293328

/-- `floor(sqrt(A242563(2*n)))+1` -/
def P15905676491617589370.Spec : Prop :=
  ∀ n, P15905676491617589370.a n = A293328 n

end A293328

/-! ## A293328.P8139774144126029807

`floor(sqrt(A092808(2*n+1)))+1`
-/

namespace A293328.P8139774144126029807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A092808 (2 * n + 1)) + 1

end

end A293328.P8139774144126029807

namespace A293328

/-- `floor(sqrt(A092808(2*n+1)))+1` -/
def P8139774144126029807.Spec : Prop :=
  ∀ n, P8139774144126029807.a n = A293328 n

end A293328

/-! ## A293328.P14325134563334134787

`floor(sqrt(A096773(2*n+1)))+1`
-/

namespace A293328.P14325134563334134787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A096773 (2 * n + 1)) + 1

end

end A293328.P14325134563334134787

namespace A293328

/-- `floor(sqrt(A096773(2*n+1)))+1` -/
def P14325134563334134787.Spec : Prop :=
  ∀ n, P14325134563334134787.a n = A293328 n

end A293328

/-! ## A293328.P1825479920097098783

`floor(sqrt(A135574(2*n+1)))+1`
-/

namespace A293328.P1825479920097098783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A135574 (2 * n + 1)) + 1

end

end A293328.P1825479920097098783

namespace A293328

/-- `floor(sqrt(A135574(2*n+1)))+1` -/
def P1825479920097098783.Spec : Prop :=
  ∀ n, P1825479920097098783.a n = A293328 n

end A293328

/-! ## A293328.P6356414622112833783

`floor(sqrt(A136401(2*n+1)))+1`
-/

namespace A293328.P6356414622112833783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A136401 (2 * n + 1)) + 1

end

end A293328.P6356414622112833783

namespace A293328

/-- `floor(sqrt(A136401(2*n+1)))+1` -/
def P6356414622112833783.Spec : Prop :=
  ∀ n, P6356414622112833783.a n = A293328 n

end A293328

/-! ## A293328.P14620501232295242014

`floor(sqrt(A167167(2*n)+1))+1`
-/

namespace A293328.P14620501232295242014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A167167 (2 * n) + 1) + 1

end

end A293328.P14620501232295242014

namespace A293328

/-- `floor(sqrt(A167167(2*n)+1))+1` -/
def P14620501232295242014.Spec : Prop :=
  ∀ n, P14620501232295242014.a n = A293328 n

end A293328

/-!
# A293329: The integer k that minimizes |k/2^n - sqrt(1/3)|.

The programs for A293329, the canonical program `A293329.P11076240075821542583` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A293329 has offset 0).

The definition of A293329 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A293329.P11076240075821542583

`round(2^n/sqrt(3))`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A293329

/-- `round(2^n/sqrt(3))` -/
def P11076240075821542583.Spec : Prop :=
  ∀ n, P11076240075821542583.a n = A293329 n

theorem P11076240075821542583.correct : P11076240075821542583.Spec := by
  intro n
  simp only [A293329]

end A293329

/-! ## A293329.P17437613833598192180

`Δ[A293327(n)]`
-/

namespace A293329.P17437613833598192180
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293327 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A293329.P17437613833598192180

namespace A293329

/-- `Δ[A293327(n)]` -/
def P17437613833598192180.Spec : Prop :=
  ∀ n, P17437613833598192180.a n = A293329 n

end A293329

/-! ## A293329.P6514798519642290333

`Δ[A293328(n)]`
-/

namespace A293329.P6514798519642290333
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293328 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A293329.P6514798519642290333

namespace A293329

/-- `Δ[A293328(n)]` -/
def P6514798519642290333.Spec : Prop :=
  ∀ n, P6514798519642290333.a n = A293329 n

end A293329

/-! ## A293329.P14616740488680072112

`floor(A293328(n+1)/2)`
-/

namespace A293329.P14616740488680072112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A293328 (n + 1) : ℚ) / 2⌋

end

end A293329.P14616740488680072112

namespace A293329

/-- `floor(A293328(n+1)/2)` -/
def P14616740488680072112.Spec : Prop :=
  ∀ n, P14616740488680072112.a n = A293329 n

end A293329

/-! ## A293329.P616588435319280719

`ceil(A293327(n+1)/2)`
-/

namespace A293329.P616588435319280719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A293327 (n + 1) : ℚ) / 2⌉

end

end A293329.P616588435319280719

namespace A293329

/-- `ceil(A293327(n+1)/2)` -/
def P616588435319280719.Spec : Prop :=
  ∀ n, P616588435319280719.a n = A293329 n

end A293329

/-! ## A293329.P17768070884434587630

`A293327(n+1)-A293327(n)`
-/

namespace A293329.P17768070884434587630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293327 (n + 1) - A293327 n

end

end A293329.P17768070884434587630

namespace A293329

/-- `A293327(n+1)-A293327(n)` -/
def P17768070884434587630.Spec : Prop :=
  ∀ n, P17768070884434587630.a n = A293329 n

end A293329

/-! ## A293329.P9024481518374312914

`A293328(n+1)-A293328(n)`
-/

namespace A293329.P9024481518374312914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293328 (n + 1) - A293328 n

end

end A293329.P9024481518374312914

namespace A293329

/-- `A293328(n+1)-A293328(n)` -/
def P9024481518374312914.Spec : Prop :=
  ∀ n, P9024481518374312914.a n = A293329 n

end A293329

/-! ## A293329.P11154842388867949564

`Δ[floor(sqrt(A002450(n)))]`
-/

namespace A293329.P11154842388867949564
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A002450 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A293329.P11154842388867949564

namespace A293329

/-- `Δ[floor(sqrt(A002450(n)))]` -/
def P11154842388867949564.Spec : Prop :=
  ∀ n, P11154842388867949564.a n = A293329 n

end A293329

/-! ## A293329.P7378876685020639385

`Δ[floor(sqrt(A001045(2*n)))]`
-/

namespace A293329.P7378876685020639385
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A001045 (2 * n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A293329.P7378876685020639385

namespace A293329

/-- `Δ[floor(sqrt(A001045(2*n)))]` -/
def P7378876685020639385.Spec : Prop :=
  ∀ n, P7378876685020639385.a n = A293329 n

end A293329

/-! ## A293329.P2385371423977446957

`Δ[floor(sqrt(A092808(2*n+1)))]`
-/

namespace A293329.P2385371423977446957
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A092808 (2 * n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A293329.P2385371423977446957

namespace A293329

/-- `Δ[floor(sqrt(A092808(2*n+1)))]` -/
def P2385371423977446957.Spec : Prop :=
  ∀ n, P2385371423977446957.a n = A293329 n

end A293329

/-! ## A293329.P4532375825374402088

`Δ[floor(sqrt(A167167(2*n)+1))]`
-/

namespace A293329.P4532375825374402088
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A167167 (2 * n) + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A293329.P4532375825374402088

namespace A293329

/-- `Δ[floor(sqrt(A167167(2*n)+1))]` -/
def P4532375825374402088.Spec : Prop :=
  ∀ n, P4532375825374402088.a n = A293329 n

end A293329

/-!
# A293330: Minimum number of points of the square lattice falling strictly inside a square of side n that is not perfectly aligned with the square lattice.

The programs for A293330, there is no canonical definition to state claims against.
-/

/-! ## A293330.P3728511982469620744

`A354702(∑[n-char[1]]+1)`
-/

namespace A293330.P3728511982469620744
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354702 (∑ j ∈ Finset.range (n + 1), f1 j + 1).toNat

end

end A293330.P3728511982469620744

/-! ## A293330.P1143246520989176232

`and(-1, A354702(A179865(n+1)))`
-/

namespace A293330.P1143246520989176232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A354702 (A179865 (n + 1)).toNat)

end

end A293330.P1143246520989176232

/-! ## A293330.P4627795004949813023

`A354702(A179865(n+1))+A326542(n)`
-/

namespace A293330.P4627795004949813023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354702 (A179865 (n + 1)).toNat + A326542 n

end

end A293330.P4627795004949813023

/-!
# A293331: Greatest integer k such that k/2^n < sqrt(5).

The programs for A293331, the canonical program `A293331.P14628135211363865377` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A293331 has offset 0).

The definition of A293331 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A293331.P16004041516126914448

`A293332(n)-1`
-/

namespace A293331.P16004041516126914448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293332 n - 1

end

end A293331.P16004041516126914448

namespace A293331

/-- `A293332(n)-1` -/
def P16004041516126914448.Spec : Prop :=
  ∀ n, P16004041516126914448.a n = A293331 n

end A293331

/-! ## A293331.P7900852707579726431

`floor(sqrt(5)*2^n)`
-/

namespace A293331.P7900852707579726431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt (5 : ℝ) * (2 ^ n : ℝ)⌋

end

end A293331.P7900852707579726431

namespace A293331

/-- `floor(sqrt(5)*2^n)` -/
def P7900852707579726431.Spec : Prop :=
  ∀ n, P7900852707579726431.a n = A293331 n

end A293331

/-! ## A293331.P14628135211363865377

`A221942(2*n)`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A293331

/-- `A221942(2*n)` -/
def P14628135211363865377.Spec : Prop :=
  ∀ n, P14628135211363865377.a n = A293331 n

theorem P14628135211363865377.correct : P14628135211363865377.Spec := by
  intro n
  simp only [A293331]

end A293331

/-! ## A293331.P6648944753800733716

`A293322(n+1)+2^n`
-/

namespace A293331.P6648944753800733716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293322 (n + 1) + (2 ^ n : ℤ)

end

end A293331.P6648944753800733716

namespace A293331

/-- `A293322(n+1)+2^n` -/
def P6648944753800733716.Spec : Prop :=
  ∀ n, P6648944753800733716.a n = A293331 n

end A293331

/-! ## A293331.P4551249986443879177

`A293333(n-1)+a(n-1)` with `a(0)=2`
-/

namespace A293331.P4551249986443879177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A293333 (n - 1) + a (n - 1)

end

end A293331.P4551249986443879177

namespace A293331

/-- `A293333(n-1)+a(n-1)` -/
def P4551249986443879177.Spec : Prop :=
  ∀ n, P4551249986443879177.a n = A293331 n

end A293331

/-! ## A293331.P12425299924227290193

`A293324(n)+A293313(n)`
-/

namespace A293331.P12425299924227290193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293324 n + A293313 n

end

end A293331.P12425299924227290193

namespace A293331

/-- `A293324(n)+A293313(n)` -/
def P12425299924227290193.Spec : Prop :=
  ∀ n, P12425299924227290193.a n = A293331 n

end A293331

/-! ## A293331.P13374774448921700736

`A293323(n+1)+A000225(n)`
-/

namespace A293331.P13374774448921700736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293323 (n + 1) + A000225 n

end

end A293331.P13374774448921700736

namespace A293331

/-- `A293323(n+1)+A000225(n)` -/
def P13374774448921700736.Spec : Prop :=
  ∀ n, P13374774448921700736.a n = A293331 n

end A293331

/-! ## A293331.P486815995608904725

`A293314(n)+A293324(n)-1`
-/

namespace A293331.P486815995608904725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293314 n + (A293324 n - 1)

end

end A293331.P486815995608904725

namespace A293331

/-- `A293314(n)+A293324(n)-1` -/
def P486815995608904725.Spec : Prop :=
  ∀ n, P486815995608904725.a n = A293331 n

end A293331

/-! ## A293331.P16116104432695978857

`A293315(n)+A293323(n)-1`
-/

namespace A293331.P16116104432695978857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293315 n + (A293323 n - 1)

end

end A293331.P16116104432695978857

namespace A293331

/-- `A293315(n)+A293323(n)-1` -/
def P16116104432695978857.Spec : Prop :=
  ∀ n, P16116104432695978857.a n = A293331 n

end A293331

/-! ## A293331.P18177211263594788594

`A293323(n+1)+A293313(n)-A293323(n)`
-/

namespace A293331.P18177211263594788594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293323 (n + 1) + (A293313 n - A293323 n)

end

end A293331.P18177211263594788594

namespace A293331

/-- `A293323(n+1)+A293313(n)-A293323(n)` -/
def P18177211263594788594.Spec : Prop :=
  ∀ n, P18177211263594788594.a n = A293331 n

end A293331

/-! ## A293331.P1481491242839534266

`A293313(n+1)-2^n`
-/

namespace A293331.P1481491242839534266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293313 (n + 1) - (2 ^ n : ℤ)

end

end A293331.P1481491242839534266

namespace A293331

/-- `A293313(n+1)-2^n` -/
def P1481491242839534266.Spec : Prop :=
  ∀ n, P1481491242839534266.a n = A293331 n

end A293331

/-! ## A293331.P5713866339108470685

`A293314(n+1)-A000051(n)`
-/

namespace A293331.P5713866339108470685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293314 (n + 1) - A000051 n

end

end A293331.P5713866339108470685

namespace A293331

/-- `A293314(n+1)-A000051(n)` -/
def P5713866339108470685.Spec : Prop :=
  ∀ n, P5713866339108470685.a n = A293331 n

end A293331

/-! ## A293331.P16354089893325341794

`and(A153893(n), A293313(n+1))`
-/

namespace A293331.P16354089893325341794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A153893 n) (A293313 (n + 1))

end

end A293331.P16354089893325341794

namespace A293331

/-- `and(A153893(n), A293313(n+1))` -/
def P16354089893325341794.Spec : Prop :=
  ∀ n, P16354089893325341794.a n = A293331 n

end A293331

/-! ## A293331.P15006718272962349541

`A157823(n+1)+A293314(n+1)-1`
-/

namespace A293331.P15006718272962349541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157823 (n + 1) + (A293314 (n + 1) - 1)

end

end A293331.P15006718272962349541

namespace A293331

/-- `A157823(n+1)+A293314(n+1)-1` -/
def P15006718272962349541.Spec : Prop :=
  ∀ n, P15006718272962349541.a n = A293331 n

end A293331

/-! ## A293331.P6552442930142098358

`(A293322(n+1)+A293313(n+1))/2`
-/

namespace A293331.P6552442930142098358
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A293322 (n + 1) + A293313 (n + 1) : ℚ) / 2

end

end A293331.P6552442930142098358

namespace A293331

/-- `(A293322(n+1)+A293313(n+1))/2` -/
def P6552442930142098358.Spec : Prop :=
  ∀ n, P6552442930142098358.a n = (A293331 n : ℚ)

end A293331

/-! ## A293331.P164067563685302087

`A293314(n+1)+A293322(n)-A293314(n)`
-/

namespace A293331.P164067563685302087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293314 (n + 1) + (A293322 n - A293314 n)

end

end A293331.P164067563685302087

namespace A293331

/-- `A293314(n+1)+A293322(n)-A293314(n)` -/
def P164067563685302087.Spec : Prop :=
  ∀ n, P164067563685302087.a n = A293331 n

end A293331

/-! ## A293331.P5231216254401305653

`A293319(n+1)-A007283(n)`
-/

namespace A293331.P5231216254401305653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293319 (n + 1) - A007283 n

end

end A293331.P5231216254401305653

namespace A293331

/-- `A293319(n+1)-A007283(n)` -/
def P5231216254401305653.Spec : Prop :=
  ∀ n, P5231216254401305653.a n = A293331 n

end A293331

/-! ## A293331.P11167670213905643937

`and(A086224(n), A293313(n+1))`
-/

namespace A293331.P11167670213905643937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A086224 n) (A293313 (n + 1))

end

end A293331.P11167670213905643937

namespace A293331

/-- `and(A086224(n), A293313(n+1))` -/
def P11167670213905643937.Spec : Prop :=
  ∀ n, P11167670213905643937.a n = A293331 n

end A293331

/-! ## A293331.P4409841914978592116

`and(A086225(n), A293313(n+1))`
-/

namespace A293331.P4409841914978592116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A086225 n) (A293313 (n + 1))

end

end A293331.P4409841914978592116

namespace A293331

/-- `and(A086225(n), A293313(n+1))` -/
def P4409841914978592116.Spec : Prop :=
  ∀ n, P4409841914978592116.a n = A293331 n

end A293331

/-! ## A293331.P489350469368477804

`and(A196305(n), A293313(n+1))`
-/

namespace A293331.P489350469368477804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A196305 n) (A293313 (n + 1))

end

end A293331.P489350469368477804

namespace A293331

/-- `and(A196305(n), A293313(n+1))` -/
def P489350469368477804.Spec : Prop :=
  ∀ n, P489350469368477804.a n = A293331 n

end A293331

/-!
# A293332: Least integer k such that k/2^n > sqrt(5).

The programs for A293332, the canonical program `A293332.P17977191221570803940` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A293332 has offset 0).

The definition of A293332 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A293331, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A293332.P17977191221570803940

`A293331(n)+1`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A293332

/-- `A293331(n)+1` -/
def P17977191221570803940.Spec : Prop :=
  ∀ n, P17977191221570803940.a n = A293332 n

theorem P17977191221570803940.correct : P17977191221570803940.Spec := by
  intro n
  simp only [A293332]

end A293332

/-! ## A293332.P680829264039235062

`ceil(sqrt(5)*2^n)`
-/

namespace A293332.P680829264039235062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (5 : ℝ) * (2 ^ n : ℝ)⌉

end

end A293332.P680829264039235062

namespace A293332

/-- `ceil(sqrt(5)*2^n)` -/
def P680829264039235062.Spec : Prop :=
  ∀ n, P680829264039235062.a n = A293332 n

end A293332

/-! ## A293332.P11355120588829127502

`A221942(2*n)+1`
-/

namespace A293332.P11355120588829127502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221942 (2 * n) + 1

end

end A293332.P11355120588829127502

namespace A293332

/-- `A221942(2*n)+1` -/
def P11355120588829127502.Spec : Prop :=
  ∀ n, P11355120588829127502.a n = A293332 n

end A293332

/-! ## A293332.P17214944490303007304

`A293323(n+1)+2^n`
-/

namespace A293332.P17214944490303007304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293323 (n + 1) + (2 ^ n : ℤ)

end

end A293332.P17214944490303007304

namespace A293332

/-- `A293323(n+1)+2^n` -/
def P17214944490303007304.Spec : Prop :=
  ∀ n, P17214944490303007304.a n = A293332 n

end A293332

/-! ## A293332.P417480372612256453

`A293333(n-1)+a(n-1)` with `a(0)=3`
-/

namespace A293332.P417480372612256453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  A293333 (n - 1) + a (n - 1)

end

end A293332.P417480372612256453

namespace A293332

/-- `A293333(n-1)+a(n-1)` -/
def P417480372612256453.Spec : Prop :=
  ∀ n, P417480372612256453.a n = A293332 n

end A293332

/-! ## A293332.P7539178753695131933

`A293324(n)+A293314(n)`
-/

namespace A293332.P7539178753695131933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293324 n + A293314 n

end

end A293332.P7539178753695131933

namespace A293332

/-- `A293324(n)+A293314(n)` -/
def P7539178753695131933.Spec : Prop :=
  ∀ n, P7539178753695131933.a n = A293332 n

end A293332

/-! ## A293332.P4610196311624517593

`A293322(n+1)+A000051(n)`
-/

namespace A293332.P4610196311624517593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293322 (n + 1) + A000051 n

end

end A293332.P4610196311624517593

namespace A293332

/-- `A293322(n+1)+A000051(n)` -/
def P4610196311624517593.Spec : Prop :=
  ∀ n, P4610196311624517593.a n = A293332 n

end A293332

/-! ## A293332.P3731324208069394145

`A293313(n)+A293324(n)+1`
-/

namespace A293332.P3731324208069394145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293313 n + (A293324 n + 1)

end

end A293332.P3731324208069394145

namespace A293332

/-- `A293313(n)+A293324(n)+1` -/
def P3731324208069394145.Spec : Prop :=
  ∀ n, P3731324208069394145.a n = A293332 n

end A293332

/-! ## A293332.P12178912570758313265

`A293315(n)+A293322(n)+1`
-/

namespace A293332.P12178912570758313265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293315 n + (A293322 n + 1)

end

end A293332.P12178912570758313265

namespace A293332

/-- `A293315(n)+A293322(n)+1` -/
def P12178912570758313265.Spec : Prop :=
  ∀ n, P12178912570758313265.a n = A293332 n

end A293332

/-! ## A293332.P16933942201825930527

`A293322(n+1)+A293314(n)-A293322(n)`
-/

namespace A293332.P16933942201825930527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293322 (n + 1) + (A293314 n - A293322 n)

end

end A293332.P16933942201825930527

namespace A293332

/-- `A293322(n+1)+A293314(n)-A293322(n)` -/
def P16933942201825930527.Spec : Prop :=
  ∀ n, P16933942201825930527.a n = A293332 n

end A293332

/-! ## A293332.P12278548262245756214

`A293314(n+1)-2^n`
-/

namespace A293332.P12278548262245756214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293314 (n + 1) - (2 ^ n : ℤ)

end

end A293332.P12278548262245756214

namespace A293332

/-- `A293314(n+1)-2^n` -/
def P12278548262245756214.Spec : Prop :=
  ∀ n, P12278548262245756214.a n = A293332 n

end A293332

/-! ## A293332.P2881964641068629651

`A293313(n+1)-A000225(n)`
-/

namespace A293332.P2881964641068629651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293313 (n + 1) - A000225 n

end

end A293332.P2881964641068629651

namespace A293332

/-- `A293313(n+1)-A000225(n)` -/
def P2881964641068629651.Spec : Prop :=
  ∀ n, P2881964641068629651.a n = A293332 n

end A293332

/-! ## A293332.P10545940266514933071

`(A293323(n+1)+A293314(n+1))/2`
-/

namespace A293332.P10545940266514933071
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A293323 (n + 1) + A293314 (n + 1) : ℚ) / 2

end

end A293332.P10545940266514933071

namespace A293332

/-- `(A293323(n+1)+A293314(n+1))/2` -/
def P10545940266514933071.Spec : Prop :=
  ∀ n, P10545940266514933071.a n = (A293332 n : ℚ)

end A293332

/-! ## A293332.P1751227604038848891

`A293313(n+1)+A293314(n)-A293319(n)`
-/

namespace A293332.P1751227604038848891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293313 (n + 1) + (A293314 n - A293319 n)

end

end A293332.P1751227604038848891

namespace A293332

/-- `A293313(n+1)+A293314(n)-A293319(n)` -/
def P1751227604038848891.Spec : Prop :=
  ∀ n, P1751227604038848891.a n = A293332 n

end A293332

/-! ## A293332.P5096956297080717761

`A293313(n+1)+A293323(n)-A293313(n)`
-/

namespace A293332.P5096956297080717761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293313 (n + 1) + (A293323 n - A293313 n)

end

end A293332.P5096956297080717761

namespace A293332

/-- `A293313(n+1)+A293323(n)-A293313(n)` -/
def P5096956297080717761.Spec : Prop :=
  ∀ n, P5096956297080717761.a n = A293332 n

end A293332

/-! ## A293332.P11439043027184451188

`A376448(n+1)+A293315(n)-A293319(n)`
-/

namespace A293332.P11439043027184451188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376448 (n + 1) + (A293315 n - A293319 n)

end

end A293332.P11439043027184451188

namespace A293332

/-- `A376448(n+1)+A293315(n)-A293319(n)` -/
def P11439043027184451188.Spec : Prop :=
  ∀ n, P11439043027184451188.a n = A293332 n

end A293332

/-! ## A293332.P6494565937362304926

`A293319(n+1)-A153893(n)`
-/

namespace A293332.P6494565937362304926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293319 (n + 1) - A153893 n

end

end A293332.P6494565937362304926

namespace A293332

/-- `A293319(n+1)-A153893(n)` -/
def P6494565937362304926.Spec : Prop :=
  ∀ n, P6494565937362304926.a n = A293332 n

end A293332

/-! ## A293332.P13554757966137434674

`floor(sqrt(A156760(n)))+1`
-/

namespace A293332.P13554757966137434674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A156760 n) + 1

end

end A293332.P13554757966137434674

namespace A293332

/-- `floor(sqrt(A156760(n)))+1` -/
def P13554757966137434674.Spec : Prop :=
  ∀ n, P13554757966137434674.a n = A293332 n

end A293332

/-! ## A293332.P11438711625314207797

`floor(sqrt(A292540(n+1)))+1`
-/

namespace A293332.P11438711625314207797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A292540 (n + 1)) + 1

end

end A293332.P11438711625314207797

namespace A293332

/-- `floor(sqrt(A292540(n+1)))+1` -/
def P11438711625314207797.Spec : Prop :=
  ∀ n, P11438711625314207797.a n = A293332 n

end A293332

/-! ## A293332.P11476309722754859908

`floor(sqrt(A153894(2*n)))+1`
-/

namespace A293332.P11476309722754859908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A153894 (2 * n)) + 1

end

end A293332.P11476309722754859908

namespace A293332

/-- `floor(sqrt(A153894(2*n)))+1` -/
def P11476309722754859908.Spec : Prop :=
  ∀ n, P11476309722754859908.a n = A293332 n

end A293332

/-!
# A293333: The integer k that minimizes |k/2^n - sqrt(5)|.

The programs for A293333, the canonical program `A293333.P12220246143884906906` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A293333 has offset 0).

The definition of A293333 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A293333.P1939961693595466475

`round(sqrt(5)*2^n)`
-/

namespace A293333.P1939961693595466475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (5 : ℝ) * (2 ^ n : ℝ))

end

end A293333.P1939961693595466475

namespace A293333

/-- `round(sqrt(5)*2^n)` -/
def P1939961693595466475.Spec : Prop :=
  ∀ n, P1939961693595466475.a n = A293333 n

end A293333

/-! ## A293333.P12220246143884906906

`A293324(n+1)+2^n`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A293333

/-- `A293324(n+1)+2^n` -/
def P12220246143884906906.Spec : Prop :=
  ∀ n, P12220246143884906906.a n = A293333 n

theorem P12220246143884906906.correct : P12220246143884906906.Spec := by
  intro n
  simp only [A293333]

end A293333

/-! ## A293333.P13852123779689654151

`Δ[A293331(n)]`
-/

namespace A293333.P13852123779689654151
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293331 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A293333.P13852123779689654151

namespace A293333

/-- `Δ[A293331(n)]` -/
def P13852123779689654151.Spec : Prop :=
  ∀ n, P13852123779689654151.a n = A293333 n

end A293333

/-! ## A293333.P14979690637460877376

`Δ[A293332(n)]`
-/

namespace A293333.P14979690637460877376
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293332 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A293333.P14979690637460877376

namespace A293333

/-- `Δ[A293332(n)]` -/
def P14979690637460877376.Spec : Prop :=
  ∀ n, P14979690637460877376.a n = A293333 n

end A293333

/-! ## A293333.P9916782523130698162

`Δ[A221942(2*n)]`
-/

namespace A293333.P9916782523130698162
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221942 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A293333.P9916782523130698162

namespace A293333

/-- `Δ[A221942(2*n)]` -/
def P9916782523130698162.Spec : Prop :=
  ∀ n, P9916782523130698162.a n = A293333 n

end A293333

/-! ## A293333.P5712595520658941532

`floor(A293332(n+1)/2)`
-/

namespace A293333.P5712595520658941532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A293332 (n + 1) : ℚ) / 2⌋

end

end A293333.P5712595520658941532

namespace A293333

/-- `floor(A293332(n+1)/2)` -/
def P5712595520658941532.Spec : Prop :=
  ∀ n, P5712595520658941532.a n = A293333 n

end A293333

/-! ## A293333.P10892315586495376771

`ceil(A293331(n+1)/2)`
-/

namespace A293333.P10892315586495376771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A293331 (n + 1) : ℚ) / 2⌉

end

end A293333.P10892315586495376771

namespace A293333

/-- `ceil(A293331(n+1)/2)` -/
def P10892315586495376771.Spec : Prop :=
  ∀ n, P10892315586495376771.a n = A293333 n

end A293333

/-! ## A293333.P1554222681792190296

`A293315(n+1)-2^n`
-/

namespace A293333.P1554222681792190296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293315 (n + 1) - (2 ^ n : ℤ)

end

end A293333.P1554222681792190296

namespace A293333

/-- `A293315(n+1)-2^n` -/
def P1554222681792190296.Spec : Prop :=
  ∀ n, P1554222681792190296.a n = A293333 n

end A293333

/-! ## A293333.P17030286056559834912

`Δ[A293324(n)+A293313(n)]`
-/

namespace A293333.P17030286056559834912
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293324 n + A293313 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A293333.P17030286056559834912

namespace A293333

/-- `Δ[A293324(n)+A293313(n)]` -/
def P17030286056559834912.Spec : Prop :=
  ∀ n, P17030286056559834912.a n = A293333 n

end A293333

/-! ## A293333.P7129801933530735254

`A293331(n+1)-A293331(n)`
-/

namespace A293333.P7129801933530735254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293331 (n + 1) - A293331 n

end

end A293333.P7129801933530735254

namespace A293333

/-- `A293331(n+1)-A293331(n)` -/
def P7129801933530735254.Spec : Prop :=
  ∀ n, P7129801933530735254.a n = A293333 n

end A293333

/-! ## A293333.P9678101753309506053

`A293332(n+1)-A293332(n)`
-/

namespace A293333.P9678101753309506053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293332 (n + 1) - A293332 n

end

end A293333.P9678101753309506053

namespace A293333

/-- `A293332(n+1)-A293332(n)` -/
def P9678101753309506053.Spec : Prop :=
  ∀ n, P9678101753309506053.a n = A293333 n

end A293333

/-! ## A293333.P812833061713119246

`A221942(2*(n+1))-A221942(2*n)`
-/

namespace A293333.P812833061713119246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221942 (2 * (n + 1)) - A221942 (2 * n)

end

end A293333.P812833061713119246

namespace A293333

/-- `A221942(2*(n+1))-A221942(2*n)` -/
def P812833061713119246.Spec : Prop :=
  ∀ n, P812833061713119246.a n = A293333 n

end A293333

/-! ## A293333.P3732322019825421853

`Δ[floor(sqrt(A292540(n+1)))]`
-/

namespace A293333.P3732322019825421853
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A292540 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A293333.P3732322019825421853

namespace A293333

/-- `Δ[floor(sqrt(A292540(n+1)))]` -/
def P3732322019825421853.Spec : Prop :=
  ∀ n, P3732322019825421853.a n = A293333 n

end A293333

/-! ## A293333.P11118805511512601590

`ceil((sqrt(A020714(2*(n+1)))-1)/2)`
-/

namespace A293333.P11118805511512601590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Real.sqrt (A020714 (2 * (n + 1)) : ℝ) - 1) / 2⌉

end

end A293333.P11118805511512601590

namespace A293333

/-- `ceil((sqrt(A020714(2*(n+1)))-1)/2)` -/
def P11118805511512601590.Spec : Prop :=
  ∀ n, P11118805511512601590.a n = A293333 n

end A293333

/-!
# A293334: Greatest integer k such that k/2^n < sqrt(1/5).

The programs for A293334, the canonical program `A293334.P17713616327838257927` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A293334 has offset 0).

The definition of A293334 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A293335, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A293334.P17713616327838257927

`A293335(n)-1`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A293334

/-- `A293335(n)-1` -/
def P17713616327838257927.Spec : Prop :=
  ∀ n, P17713616327838257927.a n = A293334 n

theorem P17713616327838257927.correct : P17713616327838257927.Spec := by
  intro n
  simp only [A293334]

end A293334

/-! ## A293334.P5553632423864087173

`A293336(n-1)+a(n-1)` with `a(0)=0`
-/

namespace A293334.P5553632423864087173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A293336 (n - 1) + a (n - 1)

end

end A293334.P5553632423864087173

namespace A293334

/-- `A293336(n-1)+a(n-1)` -/
def P5553632423864087173.Spec : Prop :=
  ∀ n, P5553632423864087173.a n = A293334 n

end A293334

/-! ## A293334.P1291453060901028600

`A323202(2*n+1)+A293335(n)`
-/

namespace A293334.P1291453060901028600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323202 (2 * n + 1) + A293335 n

end

end A293334.P1291453060901028600

namespace A293334

/-- `A323202(2*n+1)+A293335(n)` -/
def P1291453060901028600.Spec : Prop :=
  ∀ n, P1291453060901028600.a n = A293334 n

end A293334

/-! ## A293334.P11819224473668844183

`floor(2^n/sqrt(5))`
-/

namespace A293334.P11819224473668844183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(2 ^ n : ℝ) / Real.sqrt (5 : ℝ)⌋

end

end A293334.P11819224473668844183

namespace A293334

/-- `floor(2^n/sqrt(5))` -/
def P11819224473668844183.Spec : Prop :=
  ∀ n, P11819224473668844183.a n = A293334 n

end A293334

/-! ## A293334.P11196003506594655875

`∑[A293336(n)]-A293336(n)`
-/

namespace A293334.P11196003506594655875
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293336 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A293336 n

end

end A293334.P11196003506594655875

namespace A293334

/-- `∑[A293336(n)]-A293336(n)` -/
def P11196003506594655875.Spec : Prop :=
  ∀ n, P11196003506594655875.a n = A293334 n

end A293334

/-! ## A293334.P1992936431971928622

`A293335(n+1)%(A293336(n)+1)`
-/

namespace A293334.P1992936431971928622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A293335 (n + 1)) (A293336 n + 1)

end

end A293334.P1992936431971928622

namespace A293334

/-- `A293335(n+1)%(A293336(n)+1)` -/
def P1992936431971928622.Spec : Prop :=
  ∀ n, P1992936431971928622.a n = A293334 n

end A293334

/-! ## A293334.P2442847302291085155

`(A293335(n)+A293331(n))%A293332(n)`
-/

namespace A293334.P2442847302291085155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A293335 n + A293331 n) (A293332 n)

end

end A293334.P2442847302291085155

namespace A293334

/-- `(A293335(n)+A293331(n))%A293332(n)` -/
def P2442847302291085155.Spec : Prop :=
  ∀ n, P2442847302291085155.a n = A293334 n

end A293334

/-!
# A293335: Least integer k such that k/2^n > sqrt(1/5).

The programs for A293335, the canonical program `A293335.P20930666671311790` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A293335 has offset 0).

The definition of A293335 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 334 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A293335.P14566558452346769209

`A293334(n)+1`
-/

namespace A293335.P14566558452346769209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293334 n + 1

end

end A293335.P14566558452346769209

namespace A293335

/-- `A293334(n)+1` -/
def P14566558452346769209.Spec : Prop :=
  ∀ n, P14566558452346769209.a n = A293335 n

end A293335

/-! ## A293335.P20930666671311790

`∑[A293336(abs(1-n))]`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A293335

/-- `∑[A293336(abs(1-n))]` -/
def P20930666671311790.Spec : Prop :=
  ∀ n, P20930666671311790.a n = A293335 n

theorem P20930666671311790.correct : P20930666671311790.Spec := by
  intro n
  simp only [A293335]

end A293335

/-! ## A293335.P3936302999636623649

`A293336(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A293335.P3936302999636623649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A293336 (n - 1) + a (n - 1)

end

end A293335.P3936302999636623649

namespace A293335

/-- `A293336(n-1)+a(n-1)` -/
def P3936302999636623649.Spec : Prop :=
  ∀ n, P3936302999636623649.a n = A293335 n

end A293335

/-! ## A293335.P12836464691466997796

`ceil(2^n/sqrt(5))`
-/

namespace A293335.P12836464691466997796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(2 ^ n : ℝ) / Real.sqrt (5 : ℝ)⌉

end

end A293335.P12836464691466997796

namespace A293335

/-- `ceil(2^n/sqrt(5))` -/
def P12836464691466997796.Spec : Prop :=
  ∀ n, P12836464691466997796.a n = A293335 n

end A293335

/-! ## A293335.P12273113582020449419

`∑[A293336(n)]+1-A293336(n)`
-/

namespace A293335.P12273113582020449419
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293336 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (1 - A293336 n)

end

end A293335.P12273113582020449419

namespace A293335

/-- `∑[A293336(n)]+1-A293336(n)` -/
def P12273113582020449419.Spec : Prop :=
  ∀ n, P12273113582020449419.a n = A293335 n

end A293335

/-! ## A293335.P4241361039060369422

`A293332(n)-(A293331(n)-A293334(n))`
-/

namespace A293335.P4241361039060369422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293332 n - (A293331 n - A293334 n)

end

end A293335.P4241361039060369422

namespace A293335

/-- `A293332(n)-(A293331(n)-A293334(n))` -/
def P4241361039060369422.Spec : Prop :=
  ∀ n, P4241361039060369422.a n = A293335 n

end A293335

/-! ## A293335.P4019650813672035882

`2-(A010052(n²)-A293334(n))`
-/

namespace A293335.P4019650813672035882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (A010052 (n ^ 2) - A293334 n)

end

end A293335.P4019650813672035882

namespace A293335

/-- `2-(A010052(n²)-A293334(n))` -/
def P4019650813672035882.Spec : Prop :=
  ∀ n, P4019650813672035882.a n = A293335 n

end A293335

/-!
# A293336: The integer k that minimizes |k/2^n - sqrt(1/5)|.

The programs for A293336, the canonical program `A293336.P18208652811422808799` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A293336 has offset 0).

The definition of A293336 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A293336.P18208652811422808799

`round(2^n/sqrt(5))`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A293336

/-- `round(2^n/sqrt(5))` -/
def P18208652811422808799.Spec : Prop :=
  ∀ n, P18208652811422808799.a n = A293336 n

theorem P18208652811422808799.correct : P18208652811422808799.Spec := by
  intro n
  simp only [A293336]

end A293336

/-! ## A293336.P4564647775257939281

`Δ[A293334(n)]`
-/

namespace A293336.P4564647775257939281
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293334 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A293336.P4564647775257939281

namespace A293336

/-- `Δ[A293334(n)]` -/
def P4564647775257939281.Spec : Prop :=
  ∀ n, P4564647775257939281.a n = A293336 n

end A293336

/-! ## A293336.P7473112063376868562

`Δ[A293335(n)]`
-/

namespace A293336.P7473112063376868562
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293335 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A293336.P7473112063376868562

namespace A293336

/-- `Δ[A293335(n)]` -/
def P7473112063376868562.Spec : Prop :=
  ∀ n, P7473112063376868562.a n = A293336 n

end A293336

/-! ## A293336.P3003348629614032773

`floor(A293335(n+1)/2)`
-/

namespace A293336.P3003348629614032773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A293335 (n + 1) : ℚ) / 2⌋

end

end A293336.P3003348629614032773

namespace A293336

/-- `floor(A293335(n+1)/2)` -/
def P3003348629614032773.Spec : Prop :=
  ∀ n, P3003348629614032773.a n = A293336 n

end A293336

/-! ## A293336.P15155076944798707067

`ceil(A293334(n+1)/2)`
-/

namespace A293336.P15155076944798707067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A293334 (n + 1) : ℚ) / 2⌉

end

end A293336.P15155076944798707067

namespace A293336

/-- `ceil(A293334(n+1)/2)` -/
def P15155076944798707067.Spec : Prop :=
  ∀ n, P15155076944798707067.a n = A293336 n

end A293336

/-! ## A293336.P7434770705913367164

`A293334(n+1)-A293334(n)`
-/

namespace A293336.P7434770705913367164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293334 (n + 1) - A293334 n

end

end A293336.P7434770705913367164

namespace A293336

/-- `A293334(n+1)-A293334(n)` -/
def P7434770705913367164.Spec : Prop :=
  ∀ n, P7434770705913367164.a n = A293336 n

end A293336

/-! ## A293336.P5310434501913132123

`A293335(n+1)-A293335(n)`
-/

namespace A293336.P5310434501913132123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293335 (n + 1) - A293335 n

end

end A293336.P5310434501913132123

namespace A293336

/-- `A293335(n+1)-A293335(n)` -/
def P5310434501913132123.Spec : Prop :=
  ∀ n, P5310434501913132123.a n = A293336 n

end A293336

/-!
# A293337: Least integer k such that k/2^n > e.

The programs for A293337, the canonical program `A293337.P12686929730737990883` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A293337 has offset 0).

The definition of A293337 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A293337.P12686929730737990883

`A027437(n)+1`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A293337

/-- `A027437(n)+1` -/
def P12686929730737990883.Spec : Prop :=
  ∀ n, P12686929730737990883.a n = A293337 n

theorem P12686929730737990883.correct : P12686929730737990883.Spec := by
  intro n
  simp only [A293337]

end A293337

/-! ## A293337.P18401857356811110572

`ceil(e*2^n)`
-/

namespace A293337.P18401857356811110572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.exp 1 * (2 ^ n : ℝ)⌉

end

end A293337.P18401857356811110572

namespace A293337

/-- `ceil(e*2^n)` -/
def P18401857356811110572.Spec : Prop :=
  ∀ n, P18401857356811110572.a n = A293337 n

end A293337

/-! ## A293337.P4271786160025032122

`∑[round(e*A011782(n))]`
-/

namespace A293337.P4271786160025032122
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.exp 1 * (A011782 n : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A293337.P4271786160025032122

namespace A293337

/-- `∑[round(e*A011782(n))]` -/
def P4271786160025032122.Spec : Prop :=
  ∀ n, P4271786160025032122.a n = A293337 n

end A293337

/-! ## A293337.P4191182866444921085

`floor(e*A000079(n))+1`
-/

namespace A293337.P4191182866444921085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.exp 1 * (A000079 n : ℝ)⌋ + 1

end

end A293337.P4191182866444921085

namespace A293337

/-- `floor(e*A000079(n))+1` -/
def P4191182866444921085.Spec : Prop :=
  ∀ n, P4191182866444921085.a n = A293337 n

end A293337

/-! ## A293337.P7535292422462817687

`floor(e*Δ[A000225(n)])+1`
-/

namespace A293337.P7535292422462817687
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.exp 1 * (f1 (n + 1) - f1 n : ℝ)⌋ + 1

end

end A293337.P7535292422462817687

namespace A293337

/-- `floor(e*Δ[A000225(n)])+1` -/
def P7535292422462817687.Spec : Prop :=
  ∀ n, P7535292422462817687.a n = A293337 n

end A293337

/-! ## A293337.P11391941572935444930

`A293338(n-1)+a(n-1)` with `a(0)=3`
-/

namespace A293337.P11391941572935444930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  A293338 (n - 1) + a (n - 1)

end

end A293337.P11391941572935444930

namespace A293337

/-- `A293338(n-1)+a(n-1)` -/
def P11391941572935444930.Spec : Prop :=
  ∀ n, P11391941572935444930.a n = A293337 n

end A293337

/-! ## A293337.P15909709718526316365

`A293338(n)-A004593(n+4)+1`
-/

namespace A293337.P15909709718526316365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293338 n - A004593 (n + 4) + 1

end

end A293337.P15909709718526316365

namespace A293337

/-- `A293338(n)-A004593(n+4)+1` -/
def P15909709718526316365.Spec : Prop :=
  ∀ n, P15909709718526316365.a n = A293337 n

end A293337

/-! ## A293337.P18262212646872140539

`floor(sqrt(A293359(2*n)))+1`
-/

namespace A293337.P18262212646872140539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A293359 (2 * n)) + 1

end

end A293337.P18262212646872140539

namespace A293337

/-- `floor(sqrt(A293359(2*n)))+1` -/
def P18262212646872140539.Spec : Prop :=
  ∀ n, P18262212646872140539.a n = A293337 n

end A293337

/-! ## A293337.P668834283512526309

`floor(sqrt(A293360(2*n)))+1`
-/

namespace A293337.P668834283512526309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A293360 (2 * n)) + 1

end

end A293337.P668834283512526309

namespace A293337

/-- `floor(sqrt(A293360(2*n)))+1` -/
def P668834283512526309.Spec : Prop :=
  ∀ n, P668834283512526309.a n = A293337 n

end A293337

/-! ## A293337.P12024143112727219594

`floor(sqrt(A293361(2*n)))+1`
-/

namespace A293337.P12024143112727219594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A293361 (2 * n)) + 1

end

end A293337.P12024143112727219594

namespace A293337

/-- `floor(sqrt(A293361(2*n)))+1` -/
def P12024143112727219594.Spec : Prop :=
  ∀ n, P12024143112727219594.a n = A293337 n

end A293337

/-!
# A293338: The integer k that minimizes |k/2^n - e|.

The programs for A293338, the canonical program `A293338.P12856302276837498788` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A293338 has offset 0).

The definition of A293338 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 331 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A293338.P6793415419896954359

`round(2^n*e)`
-/

namespace A293338.P6793415419896954359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((2 ^ n : ℝ) * Real.exp 1)

end

end A293338.P6793415419896954359

namespace A293338

/-- `round(2^n*e)` -/
def P6793415419896954359.Spec : Prop :=
  ∀ n, P6793415419896954359.a n = A293338 n

end A293338

/-! ## A293338.P8175028595519052581

`record[round(e*A077957(n))]`
-/

namespace A293338.P8175028595519052581
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.exp 1 * (A077957 n : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A293338.P8175028595519052581

namespace A293338

/-- `record[round(e*A077957(n))]` -/
def P8175028595519052581.Spec : Prop :=
  ∀ n, P8175028595519052581.a n = A293338 n

end A293338

/-! ## A293338.P12856302276837498788

`A027437(n)+A004593(n+4)`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A293338

/-- `A027437(n)+A004593(n+4)` -/
def P12856302276837498788.Spec : Prop :=
  ∀ n, P12856302276837498788.a n = A293338 n

theorem P12856302276837498788.correct : P12856302276837498788.Spec := by
  intro n
  simp only [A293338]

end A293338

/-! ## A293338.P10144352548356665865

`Δ[A027437(n)]`
-/

namespace A293338.P10144352548356665865
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027437 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A293338.P10144352548356665865

namespace A293338

/-- `Δ[A027437(n)]` -/
def P10144352548356665865.Spec : Prop :=
  ∀ n, P10144352548356665865.a n = A293338 n

end A293338

/-! ## A293338.P5578705798304302667

`Δ[A293337(n)]`
-/

namespace A293338.P5578705798304302667
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293337 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A293338.P5578705798304302667

namespace A293338

/-- `Δ[A293337(n)]` -/
def P5578705798304302667.Spec : Prop :=
  ∀ n, P5578705798304302667.a n = A293338 n

end A293338

/-! ## A293338.P13812589951560355155

`floor(A293337(n+1)/2)`
-/

namespace A293338.P13812589951560355155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A293337 (n + 1) : ℚ) / 2⌋

end

end A293338.P13812589951560355155

namespace A293338

/-- `floor(A293337(n+1)/2)` -/
def P13812589951560355155.Spec : Prop :=
  ∀ n, P13812589951560355155.a n = A293338 n

end A293338

/-! ## A293338.P12049783221379046360

`A027437(n+1)-A027437(n)`
-/

namespace A293338.P12049783221379046360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027437 (n + 1) - A027437 n

end

end A293338.P12049783221379046360

namespace A293338

/-- `A027437(n+1)-A027437(n)` -/
def P12049783221379046360.Spec : Prop :=
  ∀ n, P12049783221379046360.a n = A293338 n

end A293338

/-! ## A293338.P2381251125389342234

`A293337(n+1)-A293337(n)`
-/

namespace A293338.P2381251125389342234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293337 (n + 1) - A293337 n

end

end A293338.P2381251125389342234

namespace A293338

/-- `A293337(n+1)-A293337(n)` -/
def P2381251125389342234.Spec : Prop :=
  ∀ n, P2381251125389342234.a n = A293338 n

end A293338

/-!
# A293339: Greatest integer k such that k/2^n < 1/e.

The programs for A293339, the canonical program `A293339.P11332361614021270041` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A293339 has offset 0).

The definition of A293339 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 334 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A293339.P3905180019689283367

`A293340(n)-1`
-/

namespace A293339.P3905180019689283367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293340 n - 1

end

end A293339.P3905180019689283367

namespace A293339

/-- `A293340(n)-1` -/
def P3905180019689283367.Spec : Prop :=
  ∀ n, P3905180019689283367.a n = A293339 n

end A293339

/-! ## A293339.P6079599799592826925

`floor(exp(n*log(2)-1))`
-/

namespace A293339.P6079599799592826925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.exp ((n : ℝ) * Real.log (2 : ℝ) - 1)⌋

end

end A293339.P6079599799592826925

namespace A293339

/-- `floor(exp(n*log(2)-1))` -/
def P6079599799592826925.Spec : Prop :=
  ∀ n, P6079599799592826925.a n = A293339 n

end A293339

/-! ## A293339.P11332361614021270041

`A293341(n-1)+a(n-1)` with `a(0)=0`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A293339

/-- `A293341(n-1)+a(n-1)` -/
def P11332361614021270041.Spec : Prop :=
  ∀ n, P11332361614021270041.a n = A293339 n

theorem P11332361614021270041.correct : P11332361614021270041.Spec := by
  intro n
  simp only [A293339]

end A293339

/-! ## A293339.P7654588524468339714

`ceil(A000079(n)/e)-1`
-/

namespace A293339.P7654588524468339714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A000079 n : ℝ) / Real.exp 1⌉ - 1

end

end A293339.P7654588524468339714

namespace A293339

/-- `ceil(A000079(n)/e)-1` -/
def P7654588524468339714.Spec : Prop :=
  ∀ n, P7654588524468339714.a n = A293339 n

end A293339

/-! ## A293339.P3604203292812063438

`∑[A293341(n)]-A293341(n)`
-/

namespace A293339.P3604203292812063438
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293341 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A293341 n

end

end A293339.P3604203292812063438

namespace A293339

/-- `∑[A293341(n)]-A293341(n)` -/
def P3604203292812063438.Spec : Prop :=
  ∀ n, P3604203292812063438.a n = A293339 n

end A293339

/-! ## A293339.P13615583317543793608

`floor(2^n/e)%A291675(n+1)`
-/

namespace A293339.P13615583317543793608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌊(2 ^ n : ℝ) / Real.exp 1⌋ (A291675 (n + 1))

end

end A293339.P13615583317543793608

namespace A293339

/-- `floor(2^n/e)%A291675(n+1)` -/
def P13615583317543793608.Spec : Prop :=
  ∀ n, P13615583317543793608.a n = A293339 n

end A293339

/-! ## A293339.P4852057505054007391

`floor(2^n/e)%A305160(n)`
-/

namespace A293339.P4852057505054007391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌊(2 ^ n : ℝ) / Real.exp 1⌋ (A305160 n)

end

end A293339.P4852057505054007391

namespace A293339

/-- `floor(2^n/e)%A305160(n)` -/
def P4852057505054007391.Spec : Prop :=
  ∀ n, P4852057505054007391.a n = A293339 n

end A293339

/-!
# A293340: Least integer k such that k/2^n > 1/e.

The programs for A293340, the canonical program `A293340.P3667538112615828860` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A293340 has offset 0).

The definition of A293340 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A293339, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A293340.P3667538112615828860

`A293339(n)+1`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A293340

/-- `A293339(n)+1` -/
def P3667538112615828860.Spec : Prop :=
  ∀ n, P3667538112615828860.a n = A293340 n

theorem P3667538112615828860.correct : P3667538112615828860.Spec := by
  intro n
  simp only [A293340]

end A293340

/-! ## A293340.P16301650841358332810

`∑[A293341(abs(1-n))]`
-/

namespace A293340.P16301650841358332810
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293341 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A293340.P16301650841358332810

namespace A293340

/-- `∑[A293341(abs(1-n))]` -/
def P16301650841358332810.Spec : Prop :=
  ∀ n, P16301650841358332810.a n = A293340 n

end A293340

/-! ## A293340.P11700355466214314822

`A293341(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A293340.P11700355466214314822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A293341 (n - 1) + a (n - 1)

end

end A293340.P11700355466214314822

namespace A293340

/-- `A293341(n-1)+a(n-1)` -/
def P11700355466214314822.Spec : Prop :=
  ∀ n, P11700355466214314822.a n = A293340 n

end A293340

/-! ## A293340.P18335648004351916523

`∑[A293341(n)]+1-A293341(n)`
-/

namespace A293340.P18335648004351916523
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293341 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (1 - A293341 n)

end

end A293340.P18335648004351916523

namespace A293340

/-- `∑[A293341(n)]+1-A293341(n)` -/
def P18335648004351916523.Spec : Prop :=
  ∀ n, P18335648004351916523.a n = A293340 n

end A293340

/-! ## A293340.P5064240739633848708

`ceil(A000079(n)/e)%A000079(n+1)`
-/

namespace A293340.P5064240739633848708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌈(A000079 n : ℝ) / Real.exp 1⌉ (A000079 (n + 1))

end

end A293340.P5064240739633848708

namespace A293340

/-- `ceil(A000079(n)/e)%A000079(n+1)` -/
def P5064240739633848708.Spec : Prop :=
  ∀ n, P5064240739633848708.a n = A293340 n

end A293340

/-! ## A293340.P8810942707885425908

`A007318(∑[n+1])*ceil(A000079(n)/e)`
-/

namespace A293340.P8810942707885425908
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * ⌈(A000079 n : ℝ) / Real.exp 1⌉

end

end A293340.P8810942707885425908

namespace A293340

/-- `A007318(∑[n+1])*ceil(A000079(n)/e)` -/
def P8810942707885425908.Spec : Prop :=
  ∀ n, P8810942707885425908.a n = A293340 n

end A293340

/-!
# A293341: The integer k that minimizes |k/2^n - 1/e|.

The programs for A293341, the canonical program `A293341.P9966951365541624441` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A293341 has offset 0).

The definition of A293341 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A293341.P9966951365541624441

`round(2^n/e)`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A293341

/-- `round(2^n/e)` -/
def P9966951365541624441.Spec : Prop :=
  ∀ n, P9966951365541624441.a n = A293341 n

theorem P9966951365541624441.correct : P9966951365541624441.Spec := by
  intro n
  simp only [A293341]

end A293341

/-! ## A293341.P4012829102335001053

`Δ[A293339(n)]`
-/

namespace A293341.P4012829102335001053
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293339 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A293341.P4012829102335001053

namespace A293341

/-- `Δ[A293339(n)]` -/
def P4012829102335001053.Spec : Prop :=
  ∀ n, P4012829102335001053.a n = A293341 n

end A293341

/-! ## A293341.P1324635675939370485

`Δ[A293340(n)]`
-/

namespace A293341.P1324635675939370485
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293340 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A293341.P1324635675939370485

namespace A293341

/-- `Δ[A293340(n)]` -/
def P1324635675939370485.Spec : Prop :=
  ∀ n, P1324635675939370485.a n = A293341 n

end A293341

/-! ## A293341.P6408687830919597626

`floor(A293340(n+1)/2)`
-/

namespace A293341.P6408687830919597626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A293340 (n + 1) : ℚ) / 2⌋

end

end A293341.P6408687830919597626

namespace A293341

/-- `floor(A293340(n+1)/2)` -/
def P6408687830919597626.Spec : Prop :=
  ∀ n, P6408687830919597626.a n = A293341 n

end A293341

/-! ## A293341.P3378696223556666622

`ceil(A293339(n+1)/2)`
-/

namespace A293341.P3378696223556666622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A293339 (n + 1) : ℚ) / 2⌉

end

end A293341.P3378696223556666622

namespace A293341

/-- `ceil(A293339(n+1)/2)` -/
def P3378696223556666622.Spec : Prop :=
  ∀ n, P3378696223556666622.a n = A293341 n

end A293341

/-! ## A293341.P18353412834462772524

`A293339(n+1)-A293339(n)`
-/

namespace A293341.P18353412834462772524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293339 (n + 1) - A293339 n

end

end A293341.P18353412834462772524

namespace A293341

/-- `A293339(n+1)-A293339(n)` -/
def P18353412834462772524.Spec : Prop :=
  ∀ n, P18353412834462772524.a n = A293341 n

end A293341

/-! ## A293341.P12666409614600095332

`A293340(n+1)-A293340(n)`
-/

namespace A293341.P12666409614600095332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293340 (n + 1) - A293340 n

end

end A293341.P12666409614600095332

namespace A293341

/-- `A293340(n+1)-A293340(n)` -/
def P12666409614600095332.Spec : Prop :=
  ∀ n, P12666409614600095332.a n = A293341 n

end A293341

/-!
# A293342: Least integer k such that k/2^n > Pi.

The programs for A293342, the canonical program `A293342.P14417699330269027731` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A293342 has offset 0).

The definition of A293342 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 331 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A293342.P16020101954512406690

`ceil(π*2^n)`
-/

namespace A293342.P16020101954512406690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.pi * (2 ^ n : ℝ)⌉

end

end A293342.P16020101954512406690

namespace A293342

/-- `ceil(π*2^n)` -/
def P16020101954512406690.Spec : Prop :=
  ∀ n, P16020101954512406690.a n = A293342 n

end A293342

/-! ## A293342.P15327584203052400405

`floor(2^(n+2)*atan(1))+1`
-/

namespace A293342.P15327584203052400405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(2 ^ (n + 2) : ℝ) * Real.arctan (1 : ℝ)⌋ + 1

end

end A293342.P15327584203052400405

namespace A293342

/-- `floor(2^(n+2)*atan(1))+1` -/
def P15327584203052400405.Spec : Prop :=
  ∀ n, P15327584203052400405.a n = A293342 n

end A293342

/-! ## A293342.P4819386806809815513

`∑[round(2^n*acot(round(acot(n+1))))]+3`
-/

namespace A293342.P4819386806809815513
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((2 ^ n : ℝ) * SequenceMachineLib.acot (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n + 1 : ℝ)) : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 3

end

end A293342.P4819386806809815513

namespace A293342

/-- `∑[round(2^n*acot(round(acot(n+1))))]+3` -/
def P4819386806809815513.Spec : Prop :=
  ∀ n, P4819386806809815513.a n = A293342 n

end A293342

/-! ## A293342.P14417699330269027731

`∑[A121349(n)]+3`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A293342

/-- `∑[A121349(n)]+3` -/
def P14417699330269027731.Spec : Prop :=
  ∀ n, P14417699330269027731.a n = A293342 n

theorem P14417699330269027731.correct : P14417699330269027731.Spec := by
  intro n
  simp only [A293342]

end A293342

/-! ## A293342.P3937434967883854704

`∑[A155996(n+1)]+2`
-/

namespace A293342.P3937434967883854704
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155996 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2

end

end A293342.P3937434967883854704

namespace A293342

/-- `∑[A155996(n+1)]+2` -/
def P3937434967883854704.Spec : Prop :=
  ∀ n, P3937434967883854704.a n = A293342 n

end A293342

/-! ## A293342.P16979795865191968709

`floor(π*A000079(n))+1`
-/

namespace A293342.P16979795865191968709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.pi * (A000079 n : ℝ)⌋ + 1

end

end A293342.P16979795865191968709

namespace A293342

/-- `floor(π*A000079(n))+1` -/
def P16979795865191968709.Spec : Prop :=
  ∀ n, P16979795865191968709.a n = A293342 n

end A293342

/-!
# A293343: Dimensions of the squares of a certain family of error-correcting codes.

The programs for A293343, there is no canonical definition to state claims against.
-/

/-! ## A293343.P15359588352150930619

`A325038(A219042(n+1))+A005773(n)`
-/

namespace A293343.P15359588352150930619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325038 (A219042 (n + 1)).toNat + A005773 n

end

end A293343.P15359588352150930619

/-! ## A293343.P11989022814595006429

`A242337(A032353(n+1))+A032353(n+1)`
-/

namespace A293343.P11989022814595006429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242337 (A032353 (n + 1)).toNat + A032353 (n + 1)

end

end A293343.P11989022814595006429

/-!
# A293344: a(n) = a(n-1) + a(n-3) + 2*a(n-5) - a(n-8) - a(n-10), n > 10.

The programs for A293344, the canonical program `A293344.P17031423610874465765` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A293344 has offset 1).

The definition of A293344 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+a(n-3)+2*a(n-5)-a(n-8)-a(n-10)` (program `A293344.P17031423610874465765`, by `A293344.P17031423610874465765.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A293344.P17031423610874465765

`a(n-1)+a(n-3)+2*a(n-5)-a(n-8)-a(n-10)` with `a(0)=1, a(1)=1, a(2)=4, a(3)=5, a(4)=16, a(5)=22, a(6)=29, a(7)=45, a(8)=76, a(9)=126`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A293344

/-- `a(n-1)+a(n-3)+2*a(n-5)-a(n-8)-a(n-10)` -/
def P17031423610874465765.Spec : Prop :=
  ∀ n, P17031423610874465765.a n = A293344 (n + 1)

theorem P17031423610874465765.correct : P17031423610874465765.Spec := by
  intro n
  simp only [A293344, Nat.add_sub_cancel]

end A293344

/-!
# A293346: Number of distinguishable configurations of the nearest larger value problem on an array of size n, using tiebreaking rule I: ties are broken by using the value to the right.

The programs for A293346, there is no canonical definition to state claims against.
-/

/-! ## A293346.P6729058951064693784

`A008619(A183125(n)-A007095(n))`
-/

namespace A293346.P6729058951064693784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A183125 n - A007095 n).toNat

end

end A293346.P6729058951064693784

/-! ## A293346.P1482293112174189144

`A065033(A183118(n)-A028391(n))`
-/

namespace A293346.P1482293112174189144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A183118 n - A028391 n).toNat

end

end A293346.P1482293112174189144

/-! ## A293346.P6507426379737726145

`A008620(round(sqrt(A123787(n+1))))`
-/

namespace A293346.P6507426379737726145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (SequenceMachineLib.roundAway (Real.sqrt (A123787 (n + 1) : ℝ))).toNat

end

end A293346.P6507426379737726145

/-! ## A293346.P6911750609244260455

`A020913(A122391(n)+A007051(n))`
-/

namespace A293346.P6911750609244260455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020913 (A122391 n + A007051 n).toNat

end

end A293346.P6911750609244260455

/-! ## A293346.P4865096650278903182

`A020913(A098011(n+1)+A007051(n))`
-/

namespace A293346.P4865096650278903182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020913 (A098011 (n + 1) + A007051 n).toNat

end

end A293346.P4865096650278903182

/-!
# A293347: Number of distinguishable configurations of the nearest larger value problem on an array of size n, using tiebreaking rule II: ties are broken by using the smaller value.

The programs for A293347, there is no canonical definition to state claims against.
-/

/-! ## A293347.P13845061041429325874

`A054391(n)+A025459(A054365(n))`
-/

namespace A293347.P13845061041429325874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054391 n + A025459 (A054365 n).toNat

end

end A293347.P13845061041429325874

/-! ## A293347.P5701748938394894760

`A307577(n)+A280951(A000081(n))`
-/

namespace A293347.P5701748938394894760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307577 n + A280951 (A000081 n).toNat

end

end A293347.P5701748938394894760

/-!
# A293348: Number of distinguishable configurations of the nearest larger value problem on an array of size n, using tiebreaking rule III: ties are broken by using the larger value.

The programs for A293348, there is no canonical definition to state claims against.
-/

/-! ## A293348.P14800136746836519804

`A034888(A025565(n+1)-A068030(n))`
-/

namespace A293348.P14800136746836519804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034888 (A025565 (n + 1) - A068030 n).toNat

end

end A293348.P14800136746836519804

/-! ## A293348.P917027650872197385

`A195174(A291000(n)+3)`
-/

namespace A293348.P917027650872197385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195174 (A291000 n + 3).toNat

end

end A293348.P917027650872197385

/-! ## A293348.P3676982554377128200

`A023190(A046342(n))`
-/

namespace A293348.P3676982554377128200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023190 (A046342 n).toNat

end

end A293348.P3676982554377128200

/-! ## A293348.P9760396309256731147

`A023190(A394951(n))`
-/

namespace A293348.P9760396309256731147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023190 (A394951 n).toNat

end

end A293348.P9760396309256731147

/-!
# A293349: Solution of the complementary equation a(n) = a(n-1) + a(n-2) + b(n-2) + n, where a(0) = 1, a(1) = 3, b(0) = 2, b(1) = 4.

The programs for A293349, there is no canonical definition to state claims against.
-/

/-! ## A293349.P11423916567668930541

`A065220(n)+A000027(A295953(n))-A212804(A028310(n))`
-/

namespace A293349.P11423916567668930541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065220 n + A000027 (A295953 n).toNat - A212804 (A028310 n).toNat

end

end A293349.P11423916567668930541

/-! ## A293349.P5709849091978677877

`A294546(n)+A024000(A212804(n))-A212804(A028310(n))`
-/

namespace A293349.P5709849091978677877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294546 n + A024000 (A212804 n).toNat - A212804 (A028310 n).toNat

end

end A293349.P5709849091978677877

/-! ## A293349.P14896551558001260343

`A294546(n)+A024000(A006355(n))`
-/

namespace A293349.P14896551558001260343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294546 n + A024000 (A006355 n).toNat

end

end A293349.P14896551558001260343

/-! ## A293349.P13188796078913825898

`A294367(n)-A004526(A006355(n))`
-/

namespace A293349.P13188796078913825898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294367 n - A004526 (A006355 n).toNat

end

end A293349.P13188796078913825898

/-! ## A293349.P6233111284424572797

`A294367(n)-A106345(A011782(n))`
-/

namespace A293349.P6233111284424572797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294367 n - A106345 (A011782 n).toNat

end

end A293349.P6233111284424572797

/-!
# A293350: Solution of the complementary equation a(n) = a(n-1) + a(n-2) + b(n-2) + 2n, where a(0) = 1, a(1) = 3, b(0) = 2, b(1) = 4.

The programs for A293350, there is no canonical definition to state claims against.
-/

/-! ## A293350.P5356778793352655886

`A294547(n)+A024000(A006355(n))`
-/

namespace A293350.P5356778793352655886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294547 n + A024000 (A006355 n).toNat

end

end A293350.P5356778793352655886

/-! ## A293350.P12999036274577008085

`1-A006355(n)+A294538(n)-A001489(A000071(n+1))`
-/

namespace A293350.P12999036274577008085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A006355 n + (A294538 n - A001489 (A000071 (n + 1)).toNat)

end

end A293350.P12999036274577008085

/-! ## A293350.P1864145682030971064

`A004277(A294365(n))-A294421(n)`
-/

namespace A293350.P1864145682030971064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A294365 n).toNat - A294421 n

end

end A293350.P1864145682030971064

/-! ## A293350.P16920234453376610771

`2-A024000(A294547(n)-A006355(n))`
-/

namespace A293350.P16920234453376610771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A024000 (A294547 n - A006355 n).toNat

end

end A293350.P16920234453376610771

/-! ## A293350.P4357878276495389004

`A294415(A087051(n))+A065220(n)`
-/

namespace A293350.P4357878276495389004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294415 (A087051 n).toNat + A065220 n

end

end A293350.P4357878276495389004

/-!
# A293351: Solution of the complementary equation a(n) = a(n-1) + a(n-2) + b(n-2) + n -1, where a(0) = 1, a(1) = 3, b(0) = 2, b(1) = 4.

The programs for A293351, there is no canonical definition to state claims against.
-/

/-! ## A293351.P11272388895265939422

`A294548(n)+A024000(A006355(n))`
-/

namespace A293351.P11272388895265939422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294548 n + A024000 (A006355 n).toNat

end

end A293351.P11272388895265939422

/-! ## A293351.P136292283773047990

`2-A024000(A294548(n)-A006355(n))`
-/

namespace A293351.P136292283773047990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A024000 (A294548 n - A006355 n).toNat

end

end A293351.P136292283773047990

/-! ## A293351.P6555458889793538950

`A344420(12*A192960(n))`
-/

namespace A293351.P6555458889793538950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344420 (12 * A192960 n).toNat

end

end A293351.P6555458889793538950

/-! ## A293351.P9310601046401764242

`∑[A172471(A121691(n+3))]-1-2*n`
-/

namespace A293351.P9310601046401764242
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172471 (A121691 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1 - (2 * n : ℤ)

end

end A293351.P9310601046401764242

/-!
# A293352: Greatest integer k such that k/2^n < Euler's constant (0.577216...).

The programs for A293352, the canonical program `A293352.P15792782827645528579` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A293352 has offset 0).

The definition of A293352 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A293352.P2490096322050628883

`A293353(n)-1`
-/

namespace A293352.P2490096322050628883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293353 n - 1

end

end A293352.P2490096322050628883

namespace A293352

/-- `A293353(n)-1` -/
def P2490096322050628883.Spec : Prop :=
  ∀ n, P2490096322050628883.a n = A293352 n

end A293352

/-! ## A293352.P15792782827645528579

`floor(γ*2^n)`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A293352

/-- `floor(γ*2^n)` -/
def P15792782827645528579.Spec : Prop :=
  ∀ n, P15792782827645528579.a n = A293352 n

theorem P15792782827645528579.correct : P15792782827645528579.Spec := by
  intro n
  simp only [A293352]

end A293352

/-! ## A293352.P15688028534505264603

`or(floor(γ*A000079(n)), char[1])`
-/

namespace A293352.P15688028534505264603
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ⌊Real.eulerMascheroniConstant * (A000079 n : ℝ)⌋ ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A293352.P15688028534505264603

namespace A293352

/-- `or(floor(γ*A000079(n)), char[1])` -/
def P15688028534505264603.Spec : Prop :=
  ∀ n, P15688028534505264603.a n = A293352 n

end A293352

/-! ## A293352.P557867723685540428

`A293354(n)-A104015(n)`
-/

namespace A293352.P557867723685540428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293354 n - A104015 n

end

end A293352.P557867723685540428

namespace A293352

/-- `A293354(n)-A104015(n)` -/
def P557867723685540428.Spec : Prop :=
  ∀ n, P557867723685540428.a n = A293352 n

end A293352

/-! ## A293352.P15451436817561288105

`A321800(C(2, n))+A293353(n)`
-/

namespace A293352.P15451436817561288105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321800 (Nat.choose 2 n) + A293353 n

end

end A293352.P15451436817561288105

namespace A293352

/-- `A321800(C(2, n))+A293353(n)` -/
def P15451436817561288105.Spec : Prop :=
  ∀ n, P15451436817561288105.a n = A293352 n

end A293352

/-! ## A293352.P8336682490067656507

`char[A031537(n+1)]+floor(γ*A000079(n))`
-/

namespace A293352.P8336682490067656507
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031537 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) + ⌊Real.eulerMascheroniConstant * (A000079 n : ℝ)⌋

end

end A293352.P8336682490067656507

namespace A293352

/-- `char[A031537(n+1)]+floor(γ*A000079(n))` -/
def P8336682490067656507.Spec : Prop :=
  ∀ n, P8336682490067656507.a n = A293352 n

end A293352

/-! ## A293352.P11689316923444050032

`char[A031541(n+1)]+floor(γ*A000079(n))`
-/

namespace A293352.P11689316923444050032
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031541 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) + ⌊Real.eulerMascheroniConstant * (A000079 n : ℝ)⌋

end

end A293352.P11689316923444050032

namespace A293352

/-- `char[A031541(n+1)]+floor(γ*A000079(n))` -/
def P11689316923444050032.Spec : Prop :=
  ∀ n, P11689316923444050032.a n = A293352 n

end A293352

/-! ## A293352.P2203418099785704916

`char[A031542(n+1)]+floor(γ*A000079(n))`
-/

namespace A293352.P2203418099785704916
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031542 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) + ⌊Real.eulerMascheroniConstant * (A000079 n : ℝ)⌋

end

end A293352.P2203418099785704916

namespace A293352

/-- `char[A031542(n+1)]+floor(γ*A000079(n))` -/
def P2203418099785704916.Spec : Prop :=
  ∀ n, P2203418099785704916.a n = A293352 n

end A293352

/-! ## A293352.P12224165398631172775

`char[A031545(n+1)]+floor(γ*A000079(n))`
-/

namespace A293352.P12224165398631172775
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031545 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) + ⌊Real.eulerMascheroniConstant * (A000079 n : ℝ)⌋

end

end A293352.P12224165398631172775

namespace A293352

/-- `char[A031545(n+1)]+floor(γ*A000079(n))` -/
def P12224165398631172775.Spec : Prop :=
  ∀ n, P12224165398631172775.a n = A293352 n

end A293352

/-! ## A293352.P13301408538466709445

`char[A031549(n+1)]+floor(γ*A000079(n))`
-/

namespace A293352.P13301408538466709445
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031549 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) + ⌊Real.eulerMascheroniConstant * (A000079 n : ℝ)⌋

end

end A293352.P13301408538466709445

namespace A293352

/-- `char[A031549(n+1)]+floor(γ*A000079(n))` -/
def P13301408538466709445.Spec : Prop :=
  ∀ n, P13301408538466709445.a n = A293352 n

end A293352

/-! ## A293352.P17673548530508797345

`char[A031552(n+1)]+floor(γ*A000079(n))`
-/

namespace A293352.P17673548530508797345
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031552 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) + ⌊Real.eulerMascheroniConstant * (A000079 n : ℝ)⌋

end

end A293352.P17673548530508797345

namespace A293352

/-- `char[A031552(n+1)]+floor(γ*A000079(n))` -/
def P17673548530508797345.Spec : Prop :=
  ∀ n, P17673548530508797345.a n = A293352 n

end A293352

/-! ## A293352.P8200125460977642506

`A321800(A001316(n))+A293353(n)`
-/

namespace A293352.P8200125460977642506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321800 (A001316 n).toNat + A293353 n

end

end A293352.P8200125460977642506

namespace A293352

/-- `A321800(A001316(n))+A293353(n)` -/
def P8200125460977642506.Spec : Prop :=
  ∀ n, P8200125460977642506.a n = A293352 n

end A293352

/-! ## A293352.P9560911534083940537

`A318657(A001097(n+1))+A293353(n)`
-/

namespace A293352.P9560911534083940537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318657 (A001097 (n + 1)).toNat + A293353 n

end

end A293352.P9560911534083940537

namespace A293352

/-- `A318657(A001097(n+1))+A293353(n)` -/
def P9560911534083940537.Spec : Prop :=
  ∀ n, P9560911534083940537.a n = A293352 n

end A293352

/-! ## A293352.P14610818265587370352

`A321800(A059268(n))+A293353(n)`
-/

namespace A293352.P14610818265587370352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321800 (A059268 n).toNat + A293353 n

end

end A293352.P14610818265587370352

namespace A293352

/-- `A321800(A059268(n))+A293353(n)` -/
def P14610818265587370352.Spec : Prop :=
  ∀ n, P14610818265587370352.a n = A293352 n

end A293352

/-!
# A293353: Least integer k such that k/2^n > Euler's constant (0.577216...).

The programs for A293353, the canonical program `A293353.P6349425847895213126` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A293353 has offset 0).

The definition of A293353 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A293352, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A293353.P6349425847895213126

`A293352(n)+1`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A293353

/-- `A293352(n)+1` -/
def P6349425847895213126.Spec : Prop :=
  ∀ n, P6349425847895213126.a n = A293353 n

theorem P6349425847895213126.correct : P6349425847895213126.Spec := by
  intro n
  simp only [A293353]

end A293353

/-! ## A293353.P12582388178117814294

`ceil(γ*2^n)`
-/

namespace A293353.P12582388178117814294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.eulerMascheroniConstant * (2 ^ n : ℝ)⌉

end

end A293353.P12582388178117814294

namespace A293353

/-- `ceil(γ*2^n)` -/
def P12582388178117814294.Spec : Prop :=
  ∀ n, P12582388178117814294.a n = A293353 n

end A293353

/-! ## A293353.P9795811706931546111

`∑[A293354(abs(1-n))]`
-/

namespace A293353.P9795811706931546111
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293354 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A293353.P9795811706931546111

namespace A293353

/-- `∑[A293354(abs(1-n))]` -/
def P9795811706931546111.Spec : Prop :=
  ∀ n, P9795811706931546111.a n = A293353 n

end A293353

/-! ## A293353.P11504982908679917687

`floor(γ*A000079(n))+1`
-/

namespace A293353.P11504982908679917687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.eulerMascheroniConstant * (A000079 n : ℝ)⌋ + 1

end

end A293353.P11504982908679917687

namespace A293353

/-- `floor(γ*A000079(n))+1` -/
def P11504982908679917687.Spec : Prop :=
  ∀ n, P11504982908679917687.a n = A293353 n

end A293353

/-! ## A293353.P11404422770574105989

`A293354(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A293353.P11404422770574105989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A293354 (n - 1) + a (n - 1)

end

end A293353.P11404422770574105989

namespace A293353

/-- `A293354(n-1)+a(n-1)` -/
def P11404422770574105989.Spec : Prop :=
  ∀ n, P11404422770574105989.a n = A293353 n

end A293353

/-! ## A293353.P5233989749633843424

`A293354(n)+1-A104015(n)`
-/

namespace A293353.P5233989749633843424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293354 n + (1 - A104015 n)

end

end A293353.P5233989749633843424

namespace A293353

/-- `A293354(n)+1-A104015(n)` -/
def P5233989749633843424.Spec : Prop :=
  ∀ n, P5233989749633843424.a n = A293353 n

end A293353

/-! ## A293353.P7328934591371676211

`1-(A000007(A226040(n))-A293352(n))`
-/

namespace A293353.P7328934591371676211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (A000007 (A226040 n).toNat - A293352 n)

end

end A293353.P7328934591371676211

namespace A293353

/-- `1-(A000007(A226040(n))-A293352(n))` -/
def P7328934591371676211.Spec : Prop :=
  ∀ n, P7328934591371676211.a n = A293353 n

end A293353

/-!
# A293354: The integer k that minimizes |k/2^n - r|, where r = Euler's constant (0.577216...).

The programs for A293354, the canonical program `A293354.P5274624398958405319` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A293354 has offset 0).

The definition of A293354 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A293354.P5274624398958405319

`round(γ*2^n)`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A293354

/-- `round(γ*2^n)` -/
def P5274624398958405319.Spec : Prop :=
  ∀ n, P5274624398958405319.a n = A293354 n

theorem P5274624398958405319.correct : P5274624398958405319.Spec := by
  intro n
  simp only [A293354]

end A293354

/-! ## A293354.P18119001829364385848

`A293352(n)+A104015(n)`
-/

namespace A293354.P18119001829364385848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293352 n + A104015 n

end

end A293354.P18119001829364385848

namespace A293354

/-- `A293352(n)+A104015(n)` -/
def P18119001829364385848.Spec : Prop :=
  ∀ n, P18119001829364385848.a n = A293354 n

end A293354

/-! ## A293354.P15663143819900518239

`Δ[A293352(n)]`
-/

namespace A293354.P15663143819900518239
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293352 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A293354.P15663143819900518239

namespace A293354

/-- `Δ[A293352(n)]` -/
def P15663143819900518239.Spec : Prop :=
  ∀ n, P15663143819900518239.a n = A293354 n

end A293354

/-! ## A293354.P8539486118071489941

`Δ[A293353(n)]`
-/

namespace A293354.P8539486118071489941
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293353 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A293354.P8539486118071489941

namespace A293354

/-- `Δ[A293353(n)]` -/
def P8539486118071489941.Spec : Prop :=
  ∀ n, P8539486118071489941.a n = A293354 n

end A293354

/-! ## A293354.P95476360773960494

`floor(A293353(n+1)/2)`
-/

namespace A293354.P95476360773960494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A293353 (n + 1) : ℚ) / 2⌋

end

end A293354.P95476360773960494

namespace A293354

/-- `floor(A293353(n+1)/2)` -/
def P95476360773960494.Spec : Prop :=
  ∀ n, P95476360773960494.a n = A293354 n

end A293354

/-! ## A293354.P15829392302066864035

`ceil(A293352(n+1)/2)`
-/

namespace A293354.P15829392302066864035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A293352 (n + 1) : ℚ) / 2⌉

end

end A293354.P15829392302066864035

namespace A293354

/-- `ceil(A293352(n+1)/2)` -/
def P15829392302066864035.Spec : Prop :=
  ∀ n, P15829392302066864035.a n = A293354 n

end A293354

/-! ## A293354.P6504284301126756275

`A293352(n+1)-A293352(n)`
-/

namespace A293354.P6504284301126756275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293352 (n + 1) - A293352 n

end

end A293354.P6504284301126756275

namespace A293354

/-- `A293352(n+1)-A293352(n)` -/
def P6504284301126756275.Spec : Prop :=
  ∀ n, P6504284301126756275.a n = A293354 n

end A293354

/-! ## A293354.P14349115855054560395

`A293353(n+1)-A293353(n)`
-/

namespace A293354.P14349115855054560395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293353 (n + 1) - A293353 n

end

end A293354.P14349115855054560395

namespace A293354

/-- `A293353(n+1)-A293353(n)` -/
def P14349115855054560395.Spec : Prop :=
  ∀ n, P14349115855054560395.a n = A293354 n

end A293354

/-!
# A293357: Solution of the complementary equation a(n) = a(n-1) + a(n-2) + b(n-2) + n +1, where a(0) = 1, a(1) = 3, b(0) = 2, b(1) = 4.

The programs for A293357, there is no canonical definition to state claims against.
-/

/-! ## A293357.P3879034459980310759

`A294549(n)+A024000(A212804(n))-A212804(A028310(n))`
-/

namespace A293357.P3879034459980310759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294549 n + A024000 (A212804 n).toNat - A212804 (A028310 n).toNat

end

end A293357.P3879034459980310759

/-! ## A293357.P9767900969766918155

`A295957(n)+∑[A023443(A212804(n))]-A212804(A028310(n))`
-/

namespace A293357.P9767900969766918155
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A212804 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295957 n + ∑ j ∈ Finset.range (n + 1), f1 j - A212804 (A028310 n).toNat

end

end A293357.P9767900969766918155

/-! ## A293357.P10780392633918077842

`A294549(n)+A024000(A006355(n))`
-/

namespace A293357.P10780392633918077842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294549 n + A024000 (A006355 n).toNat

end

end A293357.P10780392633918077842

/-! ## A293357.P7432948416396683656

`A294365(n)-A004526(A006355(n))`
-/

namespace A293357.P7432948416396683656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294365 n - A004526 (A006355 n).toNat

end

end A293357.P7432948416396683656

/-! ## A293357.P12299323175327064237

`A294365(n)-A106345(A011782(n))`
-/

namespace A293357.P12299323175327064237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294365 n - A106345 (A011782 n).toNat

end

end A293357.P12299323175327064237

/-!
# A293358: Solution of the complementary equation a(n) = a(n-1) + a(n-2) + b(n-1), where a(0) = 1, a(1) = 3, b(0) = 2, b(1) = 4.

The programs for A293358, there is no canonical definition to state claims against.
-/

/-! ## A293358.P7044575395125000016

`(A294542(n)-Δ[A065220(n)])%A201268(n+1)`
-/

namespace A293358.P7044575395125000016
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065220 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A294542 n - (f1 (n + 1) - f1 n)) (A201268 (n + 1))

end

end A293358.P7044575395125000016

/-! ## A293358.P10337087105584981603

`(A295965(n)-A212804(n))%A098186(A028310(n))`
-/

namespace A293358.P10337087105584981603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A295965 n - A212804 n) (A098186 (A028310 n).toNat)

end

end A293358.P10337087105584981603

/-! ## A293358.P3277339499657483177

`A000027(A295965(n)-A212804(n))`
-/

namespace A293358.P3277339499657483177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A295965 n - A212804 n).toNat

end

end A293358.P3277339499657483177

/-! ## A293358.P12862788653977308334

`A028310(A295965(n)-A212804(n))`
-/

namespace A293358.P12862788653977308334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A295965 n - A212804 n).toNat

end

end A293358.P12862788653977308334

/-! ## A293358.P3537043119974619075

`A000045(n)+A295965(n)-A000045(A061497(n+1))`
-/

namespace A293358.P3537043119974619075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n + (A295965 n - A000045 (A061497 (n + 1)).toNat)

end

end A293358.P3537043119974619075

/-!
# A293359: Greatest integer k such that k/2^n < e^2.

The programs for A293359, the canonical program `A293359.P17443390046892914447` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A293359 has offset 0).

The definition of A293359 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 330 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A293359.P954911557610762467

`A293360(n)-1`
-/

namespace A293359.P954911557610762467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293360 n - 1

end

end A293359.P954911557610762467

namespace A293359

/-- `A293360(n)-1` -/
def P954911557610762467.Spec : Prop :=
  ∀ n, P954911557610762467.a n = A293359 n

end A293359

/-! ## A293359.P1118623165947606574

`floor(2^n*exp(2))`
-/

namespace A293359.P1118623165947606574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(2 ^ n : ℝ) * Real.exp (2 : ℝ)⌋

end

end A293359.P1118623165947606574

namespace A293359

/-- `floor(2^n*exp(2))` -/
def P1118623165947606574.Spec : Prop :=
  ∀ n, P1118623165947606574.a n = A293359 n

end A293359

/-! ## A293359.P14149828392451586895

`ceil(2^n*exp(2)-A000035(or(1, n)))`
-/

namespace A293359.P14149828392451586895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(2 ^ n : ℝ) * Real.exp (2 : ℝ) - (A000035 (Nat.lor 1 n) : ℝ)⌉

end

end A293359.P14149828392451586895

namespace A293359

/-- `ceil(2^n*exp(2)-A000035(or(1, n)))` -/
def P14149828392451586895.Spec : Prop :=
  ∀ n, P14149828392451586895.a n = A293359 n

end A293359

/-! ## A293359.P17443390046892914447

`∑[A293361(A057428(n)+n)]`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A293359

/-- `∑[A293361(A057428(n)+n)]` -/
def P17443390046892914447.Spec : Prop :=
  ∀ n, P17443390046892914447.a n = A293359 n

theorem P17443390046892914447.correct : P17443390046892914447.Spec := by
  intro n
  simp only [A293359]

end A293359

/-! ## A293359.P4303679737328954423

`∑[A293361(A004273(n)-n)]`
-/

namespace A293359.P4303679737328954423
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293361 (A004273 n - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A293359.P4303679737328954423

namespace A293359

/-- `∑[A293361(A004273(n)-n)]` -/
def P4303679737328954423.Spec : Prop :=
  ∀ n, P4303679737328954423.a n = A293359 n

end A293359

/-! ## A293359.P422569509972642295

`∑[A293361(n-A057428(n)²)]`
-/

namespace A293359.P422569509972642295
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293361 ((n : ℤ) - A057428 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A293359.P422569509972642295

namespace A293359

/-- `∑[A293361(n-A057428(n)²)]` -/
def P422569509972642295.Spec : Prop :=
  ∀ n, P422569509972642295.a n = A293359 n

end A293359

/-! ## A293359.P9036755158434787852

`A280193(2*n+1)+A293360(n)`
-/

namespace A293359.P9036755158434787852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280193 (2 * n + 1) + A293360 n

end

end A293359.P9036755158434787852

namespace A293359

/-- `A280193(2*n+1)+A293360(n)` -/
def P9036755158434787852.Spec : Prop :=
  ∀ n, P9036755158434787852.a n = A293359 n

end A293359

/-! ## A293359.P8755126756491620033

`∑[A293361(A259361(n²))]`
-/

namespace A293359.P8755126756491620033
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293361 (A259361 (n ^ 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A293359.P8755126756491620033

namespace A293359

/-- `∑[A293361(A259361(n²))]` -/
def P8755126756491620033.Spec : Prop :=
  ∀ n, P8755126756491620033.a n = A293359 n

end A293359

/-!
# A293360: Least integer k such that k/2^n > e^2.

The programs for A293360, the canonical program `A293360.P17948557738983842076` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A293360 has offset 0).

The definition of A293360 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A293359, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A293360.P17948557738983842076

`A293359(n)+1`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A293360

/-- `A293359(n)+1` -/
def P17948557738983842076.Spec : Prop :=
  ∀ n, P17948557738983842076.a n = A293360 n

theorem P17948557738983842076.correct : P17948557738983842076.Spec := by
  intro n
  simp only [A293360]

end A293360

/-! ## A293360.P15667386478727311246

`ceil(2^n*exp(2))`
-/

namespace A293360.P15667386478727311246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(2 ^ n : ℝ) * Real.exp (2 : ℝ)⌉

end

end A293360.P15667386478727311246

namespace A293360

/-- `ceil(2^n*exp(2))` -/
def P15667386478727311246.Spec : Prop :=
  ∀ n, P15667386478727311246.a n = A293360 n

end A293360

/-! ## A293360.P1289318444187525679

`floor(∑[exp(2)*A011782(n)])+1`
-/

namespace A293360.P1289318444187525679
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.exp (2 : ℝ) * (A011782 n : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋ + 1

end

end A293360.P1289318444187525679

namespace A293360

/-- `floor(∑[exp(2)*A011782(n)])+1` -/
def P1289318444187525679.Spec : Prop :=
  ∀ n, P1289318444187525679.a n = A293360 n

end A293360

/-! ## A293360.P3126640838975173471

`record[ceil(exp(2)*A122111(n+1))]`
-/

namespace A293360.P3126640838975173471
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.exp (2 : ℝ) * (A122111 (n + 1) : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A293360.P3126640838975173471

namespace A293360

/-- `record[ceil(exp(2)*A122111(n+1))]` -/
def P3126640838975173471.Spec : Prop :=
  ∀ n, P3126640838975173471.a n = A293360 n

end A293360

/-! ## A293360.P11231601741103688147

`record[ceil(exp(2)*A329605(n+1))]`
-/

namespace A293360.P11231601741103688147
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.exp (2 : ℝ) * (A329605 (n + 1) : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A293360.P11231601741103688147

namespace A293360

/-- `record[ceil(exp(2)*A329605(n+1))]` -/
def P11231601741103688147.Spec : Prop :=
  ∀ n, P11231601741103688147.a n = A293360 n

end A293360

/-! ## A293360.P5162116159558747376

`∑[A293361(n)]+8-A293361(n)`
-/

namespace A293360.P5162116159558747376
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293361 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (8 - A293361 n)

end

end A293360.P5162116159558747376

namespace A293360

/-- `∑[A293361(n)]+8-A293361(n)` -/
def P5162116159558747376.Spec : Prop :=
  ∀ n, P5162116159558747376.a n = A293360 n

end A293360

/-!
# A293361: The integer k that minimizes |k/2^n - e^2|.

The programs for A293361, the canonical program `A293361.P12822792580272967294` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A293361 has offset 0).

The definition of A293361 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A293361.P12822792580272967294

`floor(1/2+e²*2^n)`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A293361

/-- `floor(1/2+e²*2^n)` -/
def P12822792580272967294.Spec : Prop :=
  ∀ n, P12822792580272967294.a n = A293361 n

theorem P12822792580272967294.correct : P12822792580272967294.Spec := by
  intro n
  simp only [A293361]

end A293361

/-! ## A293361.P15490097878421104239

`Δ[A293359(n)]`
-/

namespace A293361.P15490097878421104239
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293359 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A293361.P15490097878421104239

namespace A293361

/-- `Δ[A293359(n)]` -/
def P15490097878421104239.Spec : Prop :=
  ∀ n, P15490097878421104239.a n = A293361 n

end A293361

/-! ## A293361.P3323400104549681327

`Δ[A293360(n)]`
-/

namespace A293361.P3323400104549681327
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293360 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A293361.P3323400104549681327

namespace A293361

/-- `Δ[A293360(n)]` -/
def P3323400104549681327.Spec : Prop :=
  ∀ n, P3323400104549681327.a n = A293361 n

end A293361

/-! ## A293361.P2756222776750777850

`ceil(A293359(n+1)/2)`
-/

namespace A293361.P2756222776750777850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A293359 (n + 1) : ℚ) / 2⌉

end

end A293361.P2756222776750777850

namespace A293361

/-- `ceil(A293359(n+1)/2)` -/
def P2756222776750777850.Spec : Prop :=
  ∀ n, P2756222776750777850.a n = A293361 n

end A293361

/-! ## A293361.P16910217660209885713

`A293359(n+1)-A293359(n)`
-/

namespace A293361.P16910217660209885713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293359 (n + 1) - A293359 n

end

end A293361.P16910217660209885713

namespace A293361

/-- `A293359(n+1)-A293359(n)` -/
def P16910217660209885713.Spec : Prop :=
  ∀ n, P16910217660209885713.a n = A293361 n

end A293361

/-! ## A293361.P12054855553643552742

`A293360(n+1)-A293360(n)`
-/

namespace A293361.P12054855553643552742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293360 (n + 1) - A293360 n

end

end A293361.P12054855553643552742

namespace A293361

/-- `A293360(n+1)-A293360(n)` -/
def P12054855553643552742.Spec : Prop :=
  ∀ n, P12054855553643552742.a n = A293361 n

end A293361

/-!
# A293362: Greatest integer k such that k/2^n < log 2.

The programs for A293362, the canonical program `A293362.P16130031702319544918` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A293362 has offset 0).

The definition of A293362 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A293362.P16130031702319544918

`floor(log(2)*2^n)`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A293362

/-- `floor(log(2)*2^n)` -/
def P16130031702319544918.Spec : Prop :=
  ∀ n, P16130031702319544918.a n = A293362 n

theorem P16130031702319544918.correct : P16130031702319544918.Spec := by
  intro n
  simp only [A293362]

end A293362

/-! ## A293362.P11527066747657964790

`A293363(n)-1`
-/

namespace A293362.P11527066747657964790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293363 n - 1

end

end A293362.P11527066747657964790

namespace A293362

/-- `A293363(n)-1` -/
def P11527066747657964790.Spec : Prop :=
  ∀ n, P11527066747657964790.a n = A293362 n

end A293362

/-! ## A293362.P15517850868382310977

`ceil(2^n*log(2))-gcd(n, n+1)`
-/

namespace A293362.P15517850868382310977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(2 ^ n : ℝ) * Real.log (2 : ℝ)⌉ - (Nat.gcd n (n + 1) : ℤ)

end

end A293362.P15517850868382310977

namespace A293362

/-- `ceil(2^n*log(2))-gcd(n, n+1)` -/
def P15517850868382310977.Spec : Prop :=
  ∀ n, P15517850868382310977.a n = A293362 n

end A293362

/-! ## A293362.P17093352761527136797

`A293364(n)-A068426(n)`
-/

namespace A293362.P17093352761527136797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293364 n - A068426 n

end

end A293362.P17093352761527136797

namespace A293362

/-- `A293364(n)-A068426(n)` -/
def P17093352761527136797.Spec : Prop :=
  ∀ n, P17093352761527136797.a n = A293362 n

end A293362

/-! ## A293362.P5285147672896762616

`∑[A293364(A004525(n+n))]-A293364(n)`
-/

namespace A293362.P5285147672896762616
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293364 (A004525 (n + n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A293364 n

end

end A293362.P5285147672896762616

namespace A293362

/-- `∑[A293364(A004525(n+n))]-A293364(n)` -/
def P5285147672896762616.Spec : Prop :=
  ∀ n, P5285147672896762616.a n = A293362 n

end A293362

/-! ## A293362.P12862684728776044779

`ceil(2^n*log(2))-A007318(A000217(n))`
-/

namespace A293362.P12862684728776044779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(2 ^ n : ℝ) * Real.log (2 : ℝ)⌉ - A007318 (A000217 n).toNat

end

end A293362.P12862684728776044779

namespace A293362

/-- `ceil(2^n*log(2))-A007318(A000217(n))` -/
def P12862684728776044779.Spec : Prop :=
  ∀ n, P12862684728776044779.a n = A293362 n

end A293362

/-!
# A293363: Least integer k such that k/2^n > log 2.

The programs for A293363, the canonical program `A293363.P12011803147856491094` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A293363 has offset 0).

The definition of A293363 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A293363.P12011803147856491094

`A293362(n)+1`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A293363

/-- `A293362(n)+1` -/
def P12011803147856491094.Spec : Prop :=
  ∀ n, P12011803147856491094.a n = A293363 n

theorem P12011803147856491094.correct : P12011803147856491094.Spec := by
  intro n
  simp only [A293363]

end A293363

/-! ## A293363.P14819121636577314584

`ceil(2^n*log(2))`
-/

namespace A293363.P14819121636577314584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(2 ^ n : ℝ) * Real.log (2 : ℝ)⌉

end

end A293363.P14819121636577314584

namespace A293363

/-- `ceil(2^n*log(2))` -/
def P14819121636577314584.Spec : Prop :=
  ∀ n, P14819121636577314584.a n = A293363 n

end A293363

/-! ## A293363.P14774114693809953361

`∑[A293364(abs(1-n))]`
-/

namespace A293363.P14774114693809953361
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293364 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A293363.P14774114693809953361

namespace A293363

/-- `∑[A293364(abs(1-n))]` -/
def P14774114693809953361.Spec : Prop :=
  ∀ n, P14774114693809953361.a n = A293363 n

end A293363

/-! ## A293363.P4959951232130097553

`A293364(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A293363.P4959951232130097553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A293364 (n - 1) + a (n - 1)

end

end A293363.P4959951232130097553

namespace A293363

/-- `A293364(n-1)+a(n-1)` -/
def P4959951232130097553.Spec : Prop :=
  ∀ n, P4959951232130097553.a n = A293363 n

end A293363

/-! ## A293363.P13253463968750353035

`A293364(n)+1-A068426(n)`
-/

namespace A293363.P13253463968750353035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293364 n + (1 - A068426 n)

end

end A293363.P13253463968750353035

namespace A293363

/-- `A293364(n)+1-A068426(n)` -/
def P13253463968750353035.Spec : Prop :=
  ∀ n, P13253463968750353035.a n = A293363 n

end A293363

/-! ## A293363.P2125822890224491620

`A000124(n)-(∑[n]-A293362(n))`
-/

namespace A293363.P2125822890224491620
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 n - (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A293362 n)

end

end A293363.P2125822890224491620

namespace A293363

/-- `A000124(n)-(∑[n]-A293362(n))` -/
def P2125822890224491620.Spec : Prop :=
  ∀ n, P2125822890224491620.a n = A293363 n

end A293363

/-!
# A293364: The integer k that minimizes |k/2^n - log 2|.

The programs for A293364, the canonical program `A293364.P8270607590027864362` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A293364 has offset 0).

The definition of A293364 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A293364.P8270607590027864362

`round(2^n*log(2))`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A293364

/-- `round(2^n*log(2))` -/
def P8270607590027864362.Spec : Prop :=
  ∀ n, P8270607590027864362.a n = A293364 n

theorem P8270607590027864362.correct : P8270607590027864362.Spec := by
  intro n
  simp only [A293364]

end A293364

/-! ## A293364.P4278563131517004370

`A293362(n)+A068426(n)`
-/

namespace A293364.P4278563131517004370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293362 n + A068426 n

end

end A293364.P4278563131517004370

namespace A293364

/-- `A293362(n)+A068426(n)` -/
def P4278563131517004370.Spec : Prop :=
  ∀ n, P4278563131517004370.a n = A293364 n

end A293364

/-! ## A293364.P18203711720122477431

`Δ[A293362(n)]`
-/

namespace A293364.P18203711720122477431
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293362 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A293364.P18203711720122477431

namespace A293364

/-- `Δ[A293362(n)]` -/
def P18203711720122477431.Spec : Prop :=
  ∀ n, P18203711720122477431.a n = A293364 n

end A293364

/-! ## A293364.P4387124732858197029

`Δ[A293363(n)]`
-/

namespace A293364.P4387124732858197029
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293363 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A293364.P4387124732858197029

namespace A293364

/-- `Δ[A293363(n)]` -/
def P4387124732858197029.Spec : Prop :=
  ∀ n, P4387124732858197029.a n = A293364 n

end A293364

/-! ## A293364.P4780845202840263768

`floor(A293363(n+1)/2)`
-/

namespace A293364.P4780845202840263768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A293363 (n + 1) : ℚ) / 2⌋

end

end A293364.P4780845202840263768

namespace A293364

/-- `floor(A293363(n+1)/2)` -/
def P4780845202840263768.Spec : Prop :=
  ∀ n, P4780845202840263768.a n = A293364 n

end A293364

/-! ## A293364.P5954239755345670838

`ceil(A293362(n+1)/2)`
-/

namespace A293364.P5954239755345670838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A293362 (n + 1) : ℚ) / 2⌉

end

end A293364.P5954239755345670838

namespace A293364

/-- `ceil(A293362(n+1)/2)` -/
def P5954239755345670838.Spec : Prop :=
  ∀ n, P5954239755345670838.a n = A293364 n

end A293364

/-! ## A293364.P13940624315238948657

`A293362(n+1)-A293362(n)`
-/

namespace A293364.P13940624315238948657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293362 (n + 1) - A293362 n

end

end A293364.P13940624315238948657

namespace A293364

/-- `A293362(n+1)-A293362(n)` -/
def P13940624315238948657.Spec : Prop :=
  ∀ n, P13940624315238948657.a n = A293364 n

end A293364

/-! ## A293364.P12464756908175061777

`A293363(n+1)-A293363(n)`
-/

namespace A293364.P12464756908175061777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293363 (n + 1) - A293363 n

end

end A293364.P12464756908175061777

namespace A293364

/-- `A293363(n+1)-A293363(n)` -/
def P12464756908175061777.Spec : Prop :=
  ∀ n, P12464756908175061777.a n = A293364 n

end A293364

/-!
# A293366: Number of partitions of n where each part i is marked with a word of length i over a binary alphabet whose letters appear in alphabetical order and both letters occur at least once in the partition.

The programs for A293366, there is no canonical definition to state claims against.
-/

/-! ## A293366.P11413670651285838017

`A261719(∑[n+2]+3)`
-/

namespace A293366.P11413670651285838017
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261719 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A293366.P11413670651285838017

/-!
# A293367: Number of partitions of n where each part i is marked with a word of length i over a ternary alphabet whose letters appear in alphabetical order and all three letters occur at least once in the partition.

The programs for A293367, there is no canonical definition to state claims against.
-/

/-! ## A293367.P348978977550395476

`A261719(A167614(n+2))`
-/

namespace A293367.P348978977550395476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261719 (A167614 (n + 2)).toNat

end

end A293367.P348978977550395476

/-! ## A293367.P4108343433074732401

`A261719(A055999(n)+9)`
-/

namespace A293367.P4108343433074732401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261719 (A055999 n + 9).toNat

end

end A293367.P4108343433074732401

/-! ## A293367.P15566479242373784825

`A261719(eq[3, A002262(n)])`
-/

namespace A293367.P15566479242373784825
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261719 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A293367.P15566479242373784825

/-! ## A293367.P14898392565860463589

`A261719(A000096(n+2)+4)`
-/

namespace A293367.P14898392565860463589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261719 (A000096 (n + 2) + 4).toNat

end

end A293367.P14898392565860463589

/-! ## A293367.P13064541880433061646

`A261719(4-A080956(n+4))`
-/

namespace A293367.P13064541880433061646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261719 (4 - A080956 (n + 4)).toNat

end

end A293367.P13064541880433061646

/-! ## A293367.P12255309104382277467

`A261719(eq[1, A144328(n+1)-2])`
-/

namespace A293367.P12255309104382277467
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261719 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A293367.P12255309104382277467

/-! ## A293367.P7238080366832939362

`A261719(eq[2, A002260(n+1)-2])`
-/

namespace A293367.P7238080366832939362
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261719 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A293367.P7238080366832939362

/-! ## A293367.P5399276101325246286

`A261719(eq[2, A134868(n+1)-2])`
-/

namespace A293367.P5399276101325246286
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134868 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261719 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A293367.P5399276101325246286

/-! ## A293367.P16429695575190248595

`A261719(eq[2, A002260(n+1)/2])`
-/

namespace A293367.P16429695575190248595
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002260 (n + 1) : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261719 (SequenceMachineLib.nth (fun j => (f1 j : ℚ) = f2 j) n)

end

end A293367.P16429695575190248595

/-! ## A293367.P15976966405344083708

`A261719(eq[2, A134868(n+1)/2])`
-/

namespace A293367.P15976966405344083708
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A134868 (n + 1) : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261719 (SequenceMachineLib.nth (fun j => (f1 j : ℚ) = f2 j) n)

end

end A293367.P15976966405344083708

/-!
# A293368: Number of partitions of n where each part i is marked with a word of length i over a quaternary alphabet whose letters appear in alphabetical order and all four letters occur at least once in the partition.

The programs for A293368, there is no canonical definition to state claims against.
-/

/-! ## A293368.P3362501307660003

`A261719(eq[4, A002262(n)])`
-/

namespace A293368.P3362501307660003
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261719 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A293368.P3362501307660003

/-! ## A293368.P18036064784725409524

`A261719(eq[16, A059268(n)])`
-/

namespace A293368.P18036064784725409524
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261719 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A293368.P18036064784725409524

/-! ## A293368.P4712131168067300546

`A261719(eq[24, A233543(n)])`
-/

namespace A293368.P4712131168067300546
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  24

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233543 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261719 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A293368.P4712131168067300546

/-! ## A293368.P8626174800211284958

`A261719(eq[5, A002260(n+1)])`
-/

namespace A293368.P8626174800211284958
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261719 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A293368.P8626174800211284958

/-! ## A293368.P3765747701496850032

`A261719(eq[9, A158405(n+1)])`
-/

namespace A293368.P3765747701496850032
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158405 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261719 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A293368.P3765747701496850032

/-! ## A293368.P3032732359955473588

`A261719(eq[2, A144328(n+1)-2])`
-/

namespace A293368.P3032732359955473588
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261719 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A293368.P3032732359955473588

/-! ## A293368.P3702904030186005073

`A261719(eq[2, A144328(n+1)/2])`
-/

namespace A293368.P3702904030186005073
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A144328 (n + 1) : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261719 (SequenceMachineLib.nth (fun j => (f1 j : ℚ) = f2 j) n)

end

end A293368.P3702904030186005073

/-! ## A293368.P15068594962975222346

`A261719(A000124(n+6)-2*(n+4))`
-/

namespace A293368.P15068594962975222346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261719 (A000124 (n + 6) - (2 * (n + 4) : ℤ)).toNat

end

end A293368.P15068594962975222346

/-!
# A293369: Number of partitions of n where each part i is marked with a word of length i over a quinary alphabet whose letters appear in alphabetical order and all five letters occur at least once in the partition.

The programs for A293369, there is no canonical definition to state claims against.
-/

/-! ## A293369.P18167169109367979252

`A261719(A167499(n+4))`
-/

namespace A293369.P18167169109367979252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261719 (A167499 (n + 4)).toNat

end

end A293369.P18167169109367979252

/-! ## A293369.P17474393256961791019

`A261719(eq[5, A002262(n)])`
-/

namespace A293369.P17474393256961791019
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261719 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A293369.P17474393256961791019

/-! ## A293369.P9225554896441529938

`A261719(eq[6, A002260(n+1)])`
-/

namespace A293369.P9225554896441529938
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261719 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A293369.P9225554896441529938

/-! ## A293369.P1007500091836138158

`A261719(A000217(n+6)-(n+1))`
-/

namespace A293369.P1007500091836138158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261719 (A000217 (n + 6) - (n + 1 : ℤ)).toNat

end

end A293369.P1007500091836138158

/-! ## A293369.P7756777837627059971

`A261719(A000124(n+6)-(n+2))`
-/

namespace A293369.P7756777837627059971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261719 (A000124 (n + 6) - (n + 2 : ℤ)).toNat

end

end A293369.P7756777837627059971

/-!
# A293370: Number of partitions of n where each part i is marked with a word of length i over a senary alphabet whose letters appear in alphabetical order and all six letters occur at least once in the partition.

The programs for A293370, there is no canonical definition to state claims against.
-/

/-! ## A293370.P3978002194001857150

`A261719(eq[6, A002262(n)])`
-/

namespace A293370.P3978002194001857150
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261719 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A293370.P3978002194001857150

/-! ## A293370.P13068166741326428694

`A261719(A000124(n+6)+5)`
-/

namespace A293370.P13068166741326428694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261719 (A000124 (n + 6) + 5).toNat

end

end A293370.P13068166741326428694

/-! ## A293370.P9186563989367645480

`A261719(A000217(n+6)+6)`
-/

namespace A293370.P9186563989367645480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261719 (A000217 (n + 6) + 6).toNat

end

end A293370.P9186563989367645480

/-! ## A293370.P15470796566628845581

`A261719(eq[6, A144328(n+1)])`
-/

namespace A293370.P15470796566628845581
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261719 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A293370.P15470796566628845581

/-! ## A293370.P10005460243247107530

`A261719(eq[7, A002260(n+1)])`
-/

namespace A293370.P10005460243247107530
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261719 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A293370.P10005460243247107530

/-!
# A293371: Number of partitions of n where each part i is marked with a word of length i over a septenary alphabet whose letters appear in alphabetical order and all seven letters occur at least once in the partition.

The programs for A293371, there is no canonical definition to state claims against.
-/

/-! ## A293371.P14319776069579245722

`A261719(eq[7, A002262(n)])`
-/

namespace A293371.P14319776069579245722
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261719 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A293371.P14319776069579245722

/-! ## A293371.P15592769390262691883

`A261719(eq[7, A144328(n+1)])`
-/

namespace A293371.P15592769390262691883
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261719 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A293371.P15592769390262691883

/-! ## A293371.P5901966138325943056

`A261719(eq[8, A002260(n+1)])`
-/

namespace A293371.P5901966138325943056
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261719 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A293371.P5901966138325943056

/-! ## A293371.P12432116316151960363

`A261719(eq[8, A134868(n+1)])`
-/

namespace A293371.P12432116316151960363
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134868 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261719 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A293371.P12432116316151960363

/-! ## A293371.P9798040005213501519

`A261719(eq[15, A245093(n+1)])`
-/

namespace A293371.P9798040005213501519
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  15

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245093 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261719 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A293371.P9798040005213501519

/-!
# A293372: Number of partitions of n where each part i is marked with a word of length i over an octonary alphabet whose letters appear in alphabetical order and all eight letters occur at least once in the partition.

The programs for A293372, there is no canonical definition to state claims against.
-/

/-! ## A293372.P5446516059782468140

`A261719(eq[8, A002262(n)])`
-/

namespace A293372.P5446516059782468140
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261719 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A293372.P5446516059782468140

/-! ## A293372.P16175374212278234380

`A261719(eq[8, A130270(n+1)])`
-/

namespace A293372.P16175374212278234380
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130270 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261719 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A293372.P16175374212278234380

/-! ## A293372.P1100072895487269528

`A261719(eq[8, A144328(n+1)])`
-/

namespace A293372.P1100072895487269528
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261719 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A293372.P1100072895487269528

/-! ## A293372.P7333415657874099588

`A261719(eq[9, A002260(n+1)])`
-/

namespace A293372.P7333415657874099588
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261719 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A293372.P7333415657874099588

/-! ## A293372.P9430729405595361528

`A261719(eq[9, A134868(n+1)])`
-/

namespace A293372.P9430729405595361528
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134868 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261719 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A293372.P9430729405595361528

/-!
# A293373: Number of partitions of n where each part i is marked with a word of length i over a nonary alphabet whose letters appear in alphabetical order and all nine letters occur at least once in the partition.

The programs for A293373, there is no canonical definition to state claims against.
-/

/-! ## A293373.P5153449956826267820

`A261719(eq[9, A002262(n)])`
-/

namespace A293373.P5153449956826267820
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261719 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A293373.P5153449956826267820

/-! ## A293373.P11322613155881039412

`A261719(eq[9, A130270(n+1)])`
-/

namespace A293373.P11322613155881039412
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130270 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261719 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A293373.P11322613155881039412

/-! ## A293373.P9013658277891577804

`A261719(eq[9, A144328(n+1)])`
-/

namespace A293373.P9013658277891577804
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261719 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A293373.P9013658277891577804

/-! ## A293373.P17977159953995641695

`A261719(eq[10, A002260(n+1)])`
-/

namespace A293373.P17977159953995641695
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261719 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A293373.P17977159953995641695

/-! ## A293373.P9663860878698586694

`A261719(eq[19, A158405(n+1)])`
-/

namespace A293373.P9663860878698586694
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  19

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158405 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261719 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A293373.P9663860878698586694

/-!
# A293374: Number of partitions of n where each part i is marked with a word of length i over a denary alphabet whose letters appear in alphabetical order and all ten letters occur at least once in the partition.

The programs for A293374, there is no canonical definition to state claims against.
-/

/-! ## A293374.P8524374140123686058

`A261719(eq[10, A002262(n)])`
-/

namespace A293374.P8524374140123686058
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261719 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A293374.P8524374140123686058

/-! ## A293374.P7641944065804301713

`A261719(eq[10, A144328(n+1)])`
-/

namespace A293374.P7641944065804301713
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261719 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A293374.P7641944065804301713

/-! ## A293374.P16334861737711744192

`A261719(eq[11, A002260(n+1)])`
-/

namespace A293374.P16334861737711744192
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261719 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A293374.P16334861737711744192

/-! ## A293374.P544637918151376462

`A261719(eq[11, A134868(n+1)])`
-/

namespace A293374.P544637918151376462
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134868 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261719 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A293374.P544637918151376462

/-! ## A293374.P14387391367513660997

`A261719(A000217(n+11)-(n+1))`
-/

namespace A293374.P14387391367513660997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261719 (A000217 (n + 11) - (n + 1 : ℤ)).toNat

end

end A293374.P14387391367513660997

/-!
# A293375: Triangle read by rows: T(n, k), for 1 <= k <= n, where T(n, k) is defined in A192763.

The programs for A293375, there is no canonical definition to state claims against.
-/

/-! ## A293375.P5424090446788126830

`A192763(A245300(n)+1)`
-/

namespace A293375.P5424090446788126830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192763 (A245300 n + 1).toNat

end

end A293375.P5424090446788126830

/-!
# A293376: Corresponding values of pod(n)/tau(n) of numbers n from A120736.

The programs for A293376, the canonical program `A293376.P13980595936671275185` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A293376 has offset 1).

The definition of A293376 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A120736, A291186, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A293376.P13980595936671275185

`A291186(A120736(n+1))`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A293376

/-- `A291186(A120736(n+1))` -/
def P13980595936671275185.Spec : Prop :=
  ∀ n, P13980595936671275185.a n = A293376 (n + 1)

theorem P13980595936671275185.correct : P13980595936671275185.Spec := by
  intro n
  simp only [A293376, Nat.add_sub_cancel]

end A293376

/-! ## A293376.P2935732755906293377

`A291186(eq[1, A137927(n+1)]+1)`
-/

namespace A293376.P2935732755906293377
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137927 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291186 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A293376.P2935732755906293377

namespace A293376

/-- `A291186(eq[1, A137927(n+1)]+1)` -/
def P2935732755906293377.Spec : Prop :=
  ∀ n, P2935732755906293377.a n = A293376 (n + 1)

end A293376

/-! ## A293376.P10991644089249765158

`A291186(∪[A048751(n+1), A114146(n)])`
-/

namespace A293376.P10991644089249765158
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048751 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114146 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291186 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A293376.P10991644089249765158

namespace A293376

/-- `A291186(∪[A048751(n+1), A114146(n)])` -/
def P10991644089249765158.Spec : Prop :=
  ∀ n, P10991644089249765158.a n = A293376 (n + 1)

end A293376

/-! ## A293376.P16160551298788828136

`A291186(eq[A000005(n+1), A306671(n+1)]+1)`
-/

namespace A293376.P16160551298788828136
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306671 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291186 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1)

end

end A293376.P16160551298788828136

namespace A293376

/-- `A291186(eq[A000005(n+1), A306671(n+1)]+1)` -/
def P16160551298788828136.Spec : Prop :=
  ∀ n, P16160551298788828136.a n = A293376 (n + 1)

end A293376

/-! ## A293376.P7341392133280441688

`∏{e}[ceil(2^(n-1)), A048752(#)]`
-/

namespace A293376.P7341392133280441688
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A048752 (Nat.factorization (f1 n).natAbs p)

end

end A293376.P7341392133280441688

namespace A293376

/-- `∏{e}[ceil(2^(n-1)), A048752(#)]` -/
def P7341392133280441688.Spec : Prop :=
  ∀ n, P7341392133280441688.a n = A293376 (n + 1)

end A293376

/-!
# A293377: Square array A(n,k), n >= 0, k >= 0, read by antidiagonals, where column k is the expansion of g.f. Product_{i>0} (1 + Sum_{j=1..k} j*x^(j*i))^2.

The programs for A293377, there is no canonical definition to state claims against.
-/

/-! ## A293377.P425919535631815027

`A068063(A004070(n)²*A292795(n))`
-/

namespace A293377.P425919535631815027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068063 (A004070 n ^ 2 * A292795 n).toNat

end

end A293377.P425919535631815027

/-! ## A293377.P12894812417028740876

`A172263(A316723(n)²*A225641(n))`
-/

namespace A293377.P12894812417028740876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172263 (A316723 n ^ 2 * A225641 n).toNat

end

end A293377.P12894812417028740876

/-!
# A293378: Expansion of (eta(q^6)/(eta(q)*eta(q^2)*eta(q^3)))^2 in powers of q.

The programs for A293378, there is no canonical definition to state claims against.
-/

/-! ## A293378.P6703181360246289314

`A293377(2*n²)+2*n`
-/

namespace A293378.P6703181360246289314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293377 (2 * n ^ 2) + (2 * n : ℤ)

end

end A293378.P6703181360246289314

/-! ## A293378.P5866411009631132974

`A293377(∑[4*n])`
-/

namespace A293378.P5866411009631132974
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293377 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A293378.P5866411009631132974

/-! ## A293378.P6130654723907465227

`record[A293377(n*A008619(n))]`
-/

namespace A293378.P6130654723907465227
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293377 ((n : ℤ) * A008619 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A293378.P6130654723907465227

/-! ## A293378.P17432362653211217016

`record[A293377(n*A028242(n))]`
-/

namespace A293378.P17432362653211217016
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293377 ((n : ℤ) * A028242 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A293378.P17432362653211217016

/-! ## A293378.P10987962711258798728

`A293377(A046092(n))%A198766(n)`
-/

namespace A293378.P10987962711258798728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A293377 (A046092 n).toNat) (A198766 n)

end

end A293378.P10987962711258798728

/-! ## A293378.P13736323093947455978

`gcd(A000038(n), A293377(A046092(n)))`
-/

namespace A293378.P13736323093947455978
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A293377 (A046092 n).toNat)

end

end A293378.P13736323093947455978

/-! ## A293378.P18434339018741504531

`lcm(A033999(n), A293377(A046092(n)))`
-/

namespace A293378.P18434339018741504531
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A293377 (A046092 n).toNat)

end

end A293378.P18434339018741504531

/-! ## A293378.P13567707754627140124

`record[A293377(A004526(n)+A000096(n))]`
-/

namespace A293378.P13567707754627140124
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293377 (A004526 n + A000096 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A293378.P13567707754627140124

/-!
# A293379: G.f.: exp( Sum_{n>=1} A052886(n) * x^n/n ).

The programs for A293379, there is no canonical definition to state claims against.
-/

/-! ## A293379.P17183003802062363045

`A229785(A045846(n))`
-/

namespace A293379.P17183003802062363045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229785 (A045846 n).toNat

end

end A293379.P17183003802062363045

/-! ## A293379.P17920411568617995280

`A152768(A205500(n))`
-/

namespace A293379.P17920411568617995280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152768 (A205500 n).toNat

end

end A293379.P17920411568617995280

/-!
# A293386: Square array A(n,k), n >= 0, k >= 0, read by antidiagonals, where column k is the expansion of g.f. Product_{i>0} 1/(1 + Sum_{j=1..k} j*x^(j*i))^2.

The programs for A293386, there is no canonical definition to state claims against.
-/

/-! ## A293386.P17615573446646486727

`A087960(A057370(n+1))*A293388(n)`
-/

namespace A293386.P17615573446646486727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087960 (A057370 (n + 1)).toNat * A293388 n

end

end A293386.P17615573446646486727

/-! ## A293386.P7437156530846617625

`A256655(A293388(n)^8)`
-/

namespace A293386.P7437156530846617625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256655 (A293388 n ^ 8).toNat

end

end A293386.P7437156530846617625

/-! ## A293386.P5221414654880463414

`A293388(n)^A256069(n)`
-/

namespace A293386.P5221414654880463414
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A293388 n : ℚ) ^ (A256069 n : ℤ)

end

end A293386.P5221414654880463414

/-! ## A293386.P6504491484089630477

`A293388(n)^A143953(n)²`
-/

namespace A293386.P6504491484089630477
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A293388 n : ℚ) ^ (A143953 n ^ 2 : ℤ)

end

end A293386.P6504491484089630477

/-! ## A293386.P14662431677279850437

`A293388(n)^A269939(n)²`
-/

namespace A293386.P14662431677279850437
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A293388 n : ℚ) ^ (A269939 n ^ 2 : ℤ)

end

end A293386.P14662431677279850437

/-!
# A293387: Expansion of (eta(q^2)^2/(eta(q)eta(q^3)))^2 in powers of q.

The programs for A293387, there is no canonical definition to state claims against.
-/

/-! ## A293387.P3271070818251801146

`abs(A262930(n))`
-/

namespace A293387.P3271070818251801146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A262930 n|

end

end A293387.P3271070818251801146

/-! ## A293387.P16521742452054994225

`A033999(n)*A262930(n)`
-/

namespace A293387.P16521742452054994225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A262930 n

end

end A293387.P16521742452054994225

/-! ## A293387.P14015047521288502336

`A261321(n)/A132954(n)`
-/

namespace A293387.P14015047521288502336
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A261321 n : ℚ) / (A132954 n : ℚ)

end

end A293387.P14015047521288502336

/-! ## A293387.P15364823181966678770

`gcd(A000038(n), A262930(n))`
-/

namespace A293387.P15364823181966678770
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A262930 n)

end

end A293387.P15364823181966678770

/-! ## A293387.P4924195158546472777

`lcm(A000034(n), A262930(n))`
-/

namespace A293387.P4924195158546472777
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000034 n) (A262930 n)

end

end A293387.P4924195158546472777

/-! ## A293387.P16262779685900529450

`(-1)^A166698(n+2)*A262930(n)`
-/

namespace A293387.P16262779685900529450
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-1 : ℚ) ^ (A166698 (n + 2) : ℤ) * (A262930 n : ℚ)

end

end A293387.P16262779685900529450

/-! ## A293387.P9681078561850821326

`A033999(n)/A132954(n)*A217771(n)`
-/

namespace A293387.P9681078561850821326
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A033999 n : ℚ) / (A132954 n : ℚ) * (A217771 n : ℚ)

end

end A293387.P9681078561850821326

/-! ## A293387.P1046306395564239888

`A261325(n)/A261446(n)*A262930(n)`
-/

namespace A293387.P1046306395564239888
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A261325 n : ℚ) / (A261446 n : ℚ) * (A262930 n : ℚ)

end

end A293387.P1046306395564239888

/-! ## A293387.P6327805754279883496

`sqrt(A262930(n)^(2%A000096(n+1)))`
-/

namespace A293387.P6327805754279883496
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt ((A262930 n : ℚ) ^ (Int.tmod 2 (A000096 (n + 1)) : ℤ) : ℝ)

end

end A293387.P6327805754279883496

/-! ## A293387.P15940808400809954518

`sqrt(A262930(n)*A262930(n%(n+1)))`
-/

namespace A293387.P15940808400809954518
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A262930 n * A262930 (n % (n + 1)) : ℝ)

end

end A293387.P15940808400809954518

/-!
# A293388: Square array A(n,k), n >= 0, k >= 0, read by antidiagonals, where column k is the expansion of g.f. Product_{i>0} (1 + Sum_{j=1..k} (-1)^j*j*x^(j*i))^2.

The programs for A293388, there is no canonical definition to state claims against.
-/

/-! ## A293388.P16783037905460839700

`A053985(A293377(n))%A053974(n+1)`
-/

namespace A293388.P16783037905460839700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A053985 (A293377 n).toNat) (A053974 (n + 1))

end

end A293388.P16783037905460839700

/-! ## A293388.P6768043241944073068

`A087960(A057370(n+1))*A293386(n)`
-/

namespace A293388.P6768043241944073068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087960 (A057370 (n + 1)).toNat * A293386 n

end

end A293388.P6768043241944073068

/-!
# A293389: Expansion of ((eta(q)eta(q^3))/eta(q^2)^2)^2 in powers of q.

The programs for A293389, there is no canonical definition to state claims against.
-/

/-! ## A293389.P12943077194920938664

`A293388(∑[4*n])`
-/

namespace A293389.P12943077194920938664
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293388 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A293389.P12943077194920938664

/-! ## A293389.P13999271652064531505

`tan(acot(1))*A293388(A046092(n))`
-/

namespace A293389.P13999271652064531505
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.tan (SequenceMachineLib.acot (1 : ℝ)) * (A293388 (A046092 n).toNat : ℝ)

end

end A293389.P13999271652064531505

/-! ## A293389.P17544433284656002615

`A293388(A046092(n))+A271439(∑[n])`
-/

namespace A293389.P17544433284656002615
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293388 (A046092 n).toNat + A271439 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A293389.P17544433284656002615

/-! ## A293389.P14155243303543518773

`A293388(A046092(n))%∑[A288668(n)]`
-/

namespace A293389.P14155243303543518773
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288668 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A293388 (A046092 n).toNat) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A293389.P14155243303543518773

/-! ## A293389.P6917174373134389381

`A293388(A046092(n))+A000007(n+1)`
-/

namespace A293389.P6917174373134389381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293388 (A046092 n).toNat + A000007 (n + 1)

end

end A293389.P6917174373134389381

/-! ## A293389.P2586501100736095841

`A007318(C(2, n))*A293388(A046092(n))`
-/

namespace A293389.P2586501100736095841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A293388 (A046092 n).toNat

end

end A293389.P2586501100736095841

/-! ## A293389.P13425791588933004420

`A293388(A046092(n))+A008683(4*(n+1))`
-/

namespace A293389.P13425791588933004420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293388 (A046092 n).toNat + A008683 (4 * (n + 1))

end

end A293389.P13425791588933004420

/-! ## A293389.P17365859937780100710

`A000040(n+2)%2*A293388(A046092(n))`
-/

namespace A293389.P17365859937780100710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (n + 2)) 2 * A293388 (A046092 n).toNat

end

end A293389.P17365859937780100710

/-! ## A293389.P3705294966254914077

`A293388(A046092(n))+(3*A007318(n))%3`
-/

namespace A293389.P3705294966254914077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293388 (A046092 n).toNat + Int.tmod (3 * A007318 n) 3

end

end A293389.P3705294966254914077

/-! ## A293389.P16492685880212918351

`A000041(C(2, n+2))*A293388(A046092(n))`
-/

namespace A293389.P16492685880212918351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (Nat.choose 2 (n + 2)) * A293388 (A046092 n).toNat

end

end A293389.P16492685880212918351

/-!
# A293390: Least m such that the exponents in expression for n as a sum of distinct powers of 2 are pairwise distinct mod m; a(0) = 0 by convention.

The programs for A293390, there is no canonical definition to state claims against.
-/

/-! ## A293390.P9064351734830079993

`∑{p}[A225530(n²), A099563(#)]`
-/

namespace A293390.P9064351734830079993
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225530 (n ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A099563 p

end

end A293390.P9064351734830079993

/-! ## A293390.P6049485324901690739

`A101605(A090167(n))+A000120(n)`
-/

namespace A293390.P6049485324901690739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101605 (A090167 n).toNat + A000120 n

end

end A293390.P6049485324901690739

/-! ## A293390.P8674019844980008024

`A069010(lcm(A033428(n), A073138(n)))`
-/

namespace A293390.P8674019844980008024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069010 (Int.lcm (A033428 n) (A073138 n))

end

end A293390.P8674019844980008024

/-! ## A293390.P9534442839375056958

`A288106(A325707(3*(n+1)))+A000120(n)`
-/

namespace A293390.P9534442839375056958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288106 (A325707 (3 * (n + 1))).toNat + A000120 n

end

end A293390.P9534442839375056958

/-! ## A293390.P3165875230155828829

`A382760(A342635(n))`
-/

namespace A293390.P3165875230155828829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382760 (A342635 n).toNat

end

end A293390.P3165875230155828829

/-!
# A293391: Integers n such that sigma(n)/phi(n) is a perfect square.

The programs for A293391, there is no canonical definition to state claims against.
-/

/-! ## A293391.P10088903739566130334

`∩[A011257(n+1), A015771(n+1)]`
-/

namespace A293391.P10088903739566130334
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011257 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015771 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A293391.P10088903739566130334

/-! ## A293391.P18104767099494110207

`∩[A011257(n+1), A020492(n+1)]`
-/

namespace A293391.P18104767099494110207
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011257 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020492 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A293391.P18104767099494110207

/-! ## A293391.P5864529643625362162

`filter[A011257(n+1), A351114(#)]`
-/

namespace A293391.P5864529643625362162
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011257 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A351114 (f1 j).toNat = 1) n)

end

end A293391.P5864529643625362162

/-!
# A293392: Total number of ON cells after n-th stage in a 90-degree sector of the cellular automaton of A267190.

The programs for A293392, there is no canonical definition to state claims against.
-/

/-! ## A293392.P1486577886116872993

`(A267190(n+1)-1)/4`
-/

namespace A293392.P1486577886116872993
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A267190 (n + 1) - 1 : ℚ) / 4

end

end A293392.P1486577886116872993

/-! ## A293392.P10024536668362512115

`floor(A267190(n+1)/4)`
-/

namespace A293392.P10024536668362512115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A267190 (n + 1) : ℚ) / 4⌋

end

end A293392.P10024536668362512115

/-! ## A293392.P3336864277629841535

`∑[floor(A267191(n+1)/4)]`
-/

namespace A293392.P3336864277629841535
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A267191 (n + 1) : ℚ) / 4⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A293392.P3336864277629841535

/-! ## A293392.P18018832781992722993

`round(record[A267190(abs(1-n))]/4)`
-/

namespace A293392.P18018832781992722993
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267190 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) / 4)

end

end A293392.P18018832781992722993

/-! ## A293392.P12929697646736480315

`∑[A267191(round(acot(n)+n)+1)/4]-1`
-/

namespace A293392.P12929697646736480315
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A267191 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ)) + 1).toNat : ℚ) / 4

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A293392.P12929697646736480315

/-! ## A293392.P10219538213768127468

`∑[A267191(round(sqrt(n²+1))+1)/4]-1`
-/

namespace A293392.P10219538213768127468
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A267191 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ)) + 1).toNat : ℚ) / 4

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A293392.P10219538213768127468

/-! ## A293392.P7620172462978016169

`A002265(A267190(n+1))`
-/

namespace A293392.P7620172462978016169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A267190 (n + 1)).toNat

end

end A293392.P7620172462978016169

/-! ## A293392.P13066033741055314140

`∑[A002265(Δ[A267190(n)])]`
-/

namespace A293392.P13066033741055314140
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267190 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A293392.P13066033741055314140

/-! ## A293392.P15578454366682916846

`∑[A026922(Δ[A267190(n)])]`
-/

namespace A293392.P15578454366682916846
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267190 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026922 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A293392.P15578454366682916846

/-! ## A293392.P1421035485756247474

`∑[A131508(Δ[A267190(n)])]`
-/

namespace A293392.P1421035485756247474
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267190 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131508 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A293392.P1421035485756247474

/-!
# A293394: Numbers k such that (2*k-1)*(2^((k-1)/4)) == 1 (mod k).

The programs for A293394, there is no canonical definition to state claims against.
-/

/-! ## A293394.P2357015316866374047

`A070179(n)/a(A001221(A165825(n+1))-1)` with `a(0)=1`
-/

namespace A293394.P2357015316866374047
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (A070179 n : ℚ) / a (A001221 (A165825 (n + 1)).toNat - 1).toNat

end

end A293394.P2357015316866374047

/-! ## A293394.P5143218163165056812

`A070179(A028310(n))^A001221(A165825(n+1))`
-/

namespace A293394.P5143218163165056812
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A070179 (A028310 n).toNat : ℚ) ^ (A001221 (A165825 (n + 1)).toNat : ℤ)

end

end A293394.P5143218163165056812

/-! ## A293394.P8402557866884557764

`A070179(A000007(n)+n)%A070170(n+1)²`
-/

namespace A293394.P8402557866884557764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A070179 (A000007 n + (n : ℤ)).toNat) (A070170 (n + 1) ^ 2)

end

end A293394.P8402557866884557764

/-! ## A293394.P314775754155134564

`gcd(A070179(A028310(n)), A077618((n+1)²))`
-/

namespace A293394.P314775754155134564
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A070179 (A028310 n).toNat) (A077618 ((n + 1) ^ 2))

end

end A293394.P314775754155134564

/-! ## A293394.P17639308474629350579

`A070179(A000007(a(n-1))+n)` with `a(0)=1`
-/

namespace A293394.P17639308474629350579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A070179 (A000007 (a (n - 1)).toNat + (n : ℤ)).toNat

end

end A293394.P17639308474629350579

/-! ## A293394.P12141620608565089615

`A070179(A000038(a(n-1))+n)` with `a(0)=1`
-/

namespace A293394.P12141620608565089615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A070179 (A000038 (a (n - 1)).toNat + (n : ℤ)).toNat

end

end A293394.P12141620608565089615

/-! ## A293394.P17141986852457687822

`A001511(a(n-1))*A070179(A028310(n))` with `a(0)=1`
-/

namespace A293394.P17141986852457687822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A001511 (a (n - 1)).toNat * A070179 (A028310 n).toNat

end

end A293394.P17141986852457687822

/-! ## A293394.P1605954745921445892

`A006519(a(n-1))*A070179(A028310(n))` with `a(0)=1`
-/

namespace A293394.P1605954745921445892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A006519 (a (n - 1)).toNat * A070179 (A028310 n).toNat

end

end A293394.P1605954745921445892

/-! ## A293394.P13095816603958314303

`A009195(a(n-1))*A070179(A028310(n))` with `a(0)=1`
-/

namespace A293394.P13095816603958314303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A009195 (a (n - 1)).toNat * A070179 (A028310 n).toNat

end

end A293394.P13095816603958314303

/-!
# A293395: The initial member of 5 consecutive primes whose arithmetic mean is the middle member.

The programs for A293395, there is no canonical definition to state claims against.
-/

/-! ## A293395.P15248430298249600174

`A000040(∑{d}[A082077(n+1), A000720(#)]-2)`
-/

namespace A293395.P15248430298249600174
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082077 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (∑ d ∈ Nat.divisors (f1 n).natAbs, A000720 d - 2).toNat

end

end A293395.P15248430298249600174

/-! ## A293395.P13226722041966754188

`A033302(A082077(n+1))`
-/

namespace A293395.P13226722041966754188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033302 (A082077 (n + 1)).toNat

end

end A293395.P13226722041966754188

/-! ## A293395.P5490914474022179563

`A285727(p?[A082077(n+1)])`
-/

namespace A293395.P5490914474022179563
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082077 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285727 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A293395.P5490914474022179563

/-! ## A293395.P12022715987939412781

`A285727(or(1, A082077(n+1)))`
-/

namespace A293395.P12022715987939412781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285727 (Int.lor 1 (A082077 (n + 1))).toNat

end

end A293395.P12022715987939412781

/-! ## A293395.P15177017900494245499

`∑{d}[A082077(n+1), A285727(#)]`
-/

namespace A293395.P15177017900494245499
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082077 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A285727 d

end

end A293395.P15177017900494245499

/-!
# A293396: Numbers k such that (13*10^k + 347)/9 is prime.

The programs for A293396, there is no canonical definition to state claims against.
-/

/-! ## A293396.P10296482259074934283

`or(A360675(A000045(n+1)), A364000(2*n+1))`
-/

namespace A293396.P10296482259074934283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A360675 (A000045 (n + 1)).toNat) (A364000 (2 * n + 1))

end

end A293396.P10296482259074934283

/-! ## A293396.P14865593857827438747

`A221474(n²)+or(2*n, n%4)`
-/

namespace A293396.P14865593857827438747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221474 (n ^ 2) + (Nat.lor (2 * n) (n % 4) : ℤ)

end

end A293396.P14865593857827438747

/-! ## A293396.P11788188931073474850

`∑[A000120(Δ[A123752(n)])]`
-/

namespace A293396.P11788188931073474850
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123752 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A293396.P11788188931073474850

/-! ## A293396.P15333804202492844729

`∑[A034968(record[A170852(n)])]`
-/

namespace A293396.P15333804202492844729
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170852 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034968 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A293396.P15333804202492844729

/-! ## A293396.P1531181206099244510

`∑[A270516(A201921(n+1))]`
-/

namespace A293396.P1531181206099244510
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270516 (A201921 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A293396.P1531181206099244510

/-!
# A293397: Numbers k such that 8*10^k + 87 is prime.

The programs for A293397, there is no canonical definition to state claims against.
-/

/-! ## A293397.P5485623802659837941

`∑[A290104(∑[A088578(n)])]`
-/

namespace A293397.P5485623802659837941
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088578 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290104 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A293397.P5485623802659837941

/-! ## A293397.P13759636223458617205

`record[A344972(record[A321414(n+5)])]`
-/

namespace A293397.P13759636223458617205
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321414 (n + 5)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344972 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A293397.P13759636223458617205

/-! ## A293397.P11176335194118383385

`eq[A212999(A110654(n)), A227153(n)]`
-/

namespace A293397.P11176335194118383385
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212999 (A110654 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227153 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A293397.P11176335194118383385

/-! ## A293397.P16159426723700247175

`lt[A245776(A079079(n+1)), A003215(n)]`
-/

namespace A293397.P16159426723700247175
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245776 (A079079 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003215 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A293397.P16159426723700247175

/-! ## A293397.P7378705578703260741

`A004186(lt[A164732(n+1), A319805(n)])`
-/

namespace A293397.P7378705578703260741
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164732 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319805 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004186 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A293397.P7378705578703260741

