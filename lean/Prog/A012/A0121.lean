import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C013
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C028
import Seq.B000.C036
import Seq.B000.C038
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C003
import Seq.B001.C005
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B003.C000
import Seq.B003.C002
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C001
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B008.C000
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
import Seq.Opaque.C015
import Seq.Opaque.C016
import Seq.Opaque.C017
import Seq.Opaque.C018
import Seq.Opaque.C020
import Seq.Opaque.C021
import Seq.Opaque.C022

/-!
# A012101: Expansion of tan(arcsin(sinh(x))) (odd powers only).

The programs for A012101, there is no canonical definition to state claims against.
-/

/-! ## A012101.P16997634218455537108

`A012261(Δ[n²])`
-/

namespace A012101.P16997634218455537108
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012261 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A012101.P16997634218455537108

/-! ## A012101.P2228204258592495091

`A012571(n+1)/2`
-/

namespace A012101.P2228204258592495091
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A012571 (n + 1) : ℚ) / 2

end

end A012101.P2228204258592495091

/-! ## A012101.P5335934511814545063

`Δ[∑[A012571(n)]/2]`
-/

namespace A012101.P5335934511814545063
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012571 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℤ) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A012101.P5335934511814545063

/-! ## A012101.P17102907262206860853

`record[A012261((n+1)/2^val(n+1, 2))]`
-/

namespace A012101.P17102907262206860853
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012261 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A012101.P17102907262206860853

/-! ## A012101.P7348203543807740772

`record[A012261(A198954(n))]`
-/

namespace A012101.P7348203543807740772
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012261 (A198954 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A012101.P7348203543807740772

/-!
# A012103: cos(arcsin(sinh(x))) = 1-1/2!*x^2-7/4!*x^4-121/6!*x^6-5167/8!*x^8...

The programs for A012103, there is no canonical definition to state claims against.
-/

/-! ## A012103.P786240005678300393

`A012086(n*A012111(n))`
-/

namespace A012103.P786240005678300393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012086 ((n : ℤ) * A012111 n).toNat

end

end A012103.P786240005678300393

/-!
# A012104: sinh(arcsin(sinh(x)))=x+3/3!*x^3+41/5!*x^5+1403/7!*x^7+90641/9!*x^9...

The programs for A012104, there is no canonical definition to state claims against.
-/

/-! ## A012104.P3446686368434815412

`A012099(Δ[n²])`
-/

namespace A012104.P3446686368434815412
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012099 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A012104.P3446686368434815412

/-! ## A012104.P11832332882543855009

`record[A012099(A004442(n))]`
-/

namespace A012104.P11832332882543855009
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012099 (A004442 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A012104.P11832332882543855009

/-! ## A012104.P9193489246137895441

`record[A012099(A006257(n))]`
-/

namespace A012104.P9193489246137895441
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012099 (A006257 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A012104.P9193489246137895441

/-! ## A012104.P16951854429943451987

`record[A012099(A006369(n))]`
-/

namespace A012104.P16951854429943451987
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012099 (A006369 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A012104.P16951854429943451987

/-! ## A012104.P9292962068592099094

`record[A012099(A026741(n))]`
-/

namespace A012104.P9292962068592099094
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012099 (A026741 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A012104.P9292962068592099094

/-!
# A012108: cosh(arcsin(sinh(x)))=1+1/2!*x^2+9/4!*x^4+201/6!*x^6+9649/8!*x^8...

The programs for A012108, there is no canonical definition to state claims against.
-/

/-! ## A012108.P8360763291146709017

`A012099(2*n)`
-/

namespace A012108.P8360763291146709017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012099 (2 * n)

end

end A012108.P8360763291146709017

/-! ## A012108.P2060400072983370764

`or(1, A012099(A005843(n)))`
-/

namespace A012108.P2060400072983370764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A012099 (A005843 n).toNat)

end

end A012108.P2060400072983370764

/-! ## A012108.P3140147234688945548

`A012099(A005843(n))/A007318(∑[n])`
-/

namespace A012108.P3140147234688945548
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A012099 (A005843 n).toNat : ℚ) / (A007318 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ)

end

end A012108.P3140147234688945548

/-! ## A012108.P6739356132759957710

`A012099(A005843(n))^A007318(∑[n]+n)`
-/

namespace A012108.P6739356132759957710
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A012099 (A005843 n).toNat : ℚ) ^ (A007318 (∑ j ∈ Finset.range (n + 1), f1 j + n) : ℤ)

end

end A012108.P6739356132759957710

/-! ## A012108.P17175157670474790360

`A012099(A005843(n))/A000041(C(2, n+2))`
-/

namespace A012108.P17175157670474790360
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A012099 (A005843 n).toNat : ℚ) / (A000041 (Nat.choose 2 (n + 2)) : ℚ)

end

end A012108.P17175157670474790360

/-!
# A012109: sec(arcsin(sinh(x)))=1+1/2!*x^2+13/4!*x^4+421/6!*x^6+26713/8!*x^8...

The programs for A012109, there is no canonical definition to state claims against.
-/

/-! ## A012109.P7514468021851695176

`A012261(2*n)`
-/

namespace A012109.P7514468021851695176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012261 (2 * n)

end

end A012109.P7514468021851695176

/-! ## A012109.P15915690510640445604

`or(1, A012261(A005843(n)))`
-/

namespace A012109.P15915690510640445604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A012261 (A005843 n).toNat)

end

end A012109.P15915690510640445604

/-! ## A012109.P11667506125722924635

`gcd(A000038(n), A012261(A005843(n)))`
-/

namespace A012109.P11667506125722924635
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A012261 (A005843 n).toNat)

end

end A012109.P11667506125722924635

/-! ## A012109.P8000151211972446272

`A012261(A005843(n))^A014963(A016825(n))`
-/

namespace A012109.P8000151211972446272
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A012261 (A005843 n).toNat : ℚ) ^ (A014963 (A016825 n).toNat : ℤ)

end

end A012109.P8000151211972446272

/-! ## A012109.P5885190323747320378

`A012261(A005843(n))/A001511(A054569(n+1))`
-/

namespace A012109.P5885190323747320378
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A012261 (A005843 n).toNat : ℚ) / (A001511 (A054569 (n + 1)).toNat : ℚ)

end

end A012109.P5885190323747320378

/-!
# A012110: sech(arcsin(sinh(x)))=1-1/2!*x^2-3/4!*x^4-21/6!*x^6-1543/8!*x^8...

The programs for A012110, there is no canonical definition to state claims against.
-/

/-! ## A012110.P1587708249131803964

`or(A034856(A007830(n)), A098932(n+1))`
-/

namespace A012110.P1587708249131803964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A034856 (A007830 n).toNat) (A098932 (n + 1))

end

end A012110.P1587708249131803964

/-!
# A012111: Expansion of e.g.f.: exp(arcsin(arcsinh(x)))=1+x+1/2!*x^2+1/3!*x^3+1/4!*x^4+9/5!*x^5...

The programs for A012111, there is no canonical definition to state claims against.
-/

/-! ## A012111.P11666783841971138713

`A087734(A297009(n))+1`
-/

namespace A012111.P11666783841971138713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087734 (A297009 n).toNat + 1

end

end A012111.P11666783841971138713

/-! ## A012111.P15355618636425980420

`or(1, A210530(A152094(n)))`
-/

namespace A012111.P15355618636425980420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A210530 (A152094 n).toNat)

end

end A012111.P15355618636425980420

/-! ## A012111.P12928666311975161658

`and(-5, A175374(A128916(n)))`
-/

namespace A012111.P12928666311975161658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-5) (A175374 (A128916 (n + 10)).toNat)

end

end A012111.P12928666311975161658

/-! ## A012111.P2860104639401426768

`A002972(A276371(abs(2-n)))`
-/

namespace A012111.P2860104639401426768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002972 (A276371 |2 - (n : ℤ)|.toNat).toNat

end

end A012111.P2860104639401426768

/-!
# A012113: Expansion of e.g.f. tan(arcsin(arcsinh(x))) (odd powers only).

The programs for A012113, there is no canonical definition to state claims against.
-/

/-! ## A012113.P185143832223389209

`A012262(Δ[n²])`
-/

namespace A012113.P185143832223389209
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012262 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A012113.P185143832223389209

/-! ## A012113.P14716551726327625819

`and(-5, A012262(2*n+1))`
-/

namespace A012113.P14716551726327625819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-5) (A012262 (2 * n + 1))

end

end A012113.P14716551726327625819

/-! ## A012113.P2482606221233363254

`A012262(2*n+1)-A080300(2*n+1)`
-/

namespace A012113.P2482606221233363254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012262 (2 * n + 1) - A080300 (2 * n + 1)

end

end A012113.P2482606221233363254

/-! ## A012113.P7199517960336226598

`A178798(n)+A012262(A005408(n))`
-/

namespace A012113.P7199517960336226598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178798 n + A012262 (A005408 n).toNat

end

end A012113.P7199517960336226598

/-! ## A012113.P13187650416483933743

`A012262(A005408(n))*A304042(n)`
-/

namespace A012113.P13187650416483933743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012262 (A005408 n).toNat * A304042 n

end

end A012113.P13187650416483933743

/-!
# A012115: Expansion of e.g.f. of cos(arcsin(arcsinh(x))), even powers only.

The programs for A012115, there is no canonical definition to state claims against.
-/

/-! ## A012115.P9878966511019363869

`A012248(2*n)*A033999(n)`
-/

namespace A012115.P9878966511019363869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012248 (2 * n) * A033999 n

end

end A012115.P9878966511019363869

/-! ## A012115.P638135731156713085

`A012248(2*n)*A057077(2*n)`
-/

namespace A012115.P638135731156713085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012248 (2 * n) * A057077 (2 * n)

end

end A012115.P638135731156713085

/-! ## A012115.P4620353904741379321

`A009531(2*n+1)*A012248(2*n)`
-/

namespace A012115.P4620353904741379321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009531 (2 * n + 1) * A012248 (2 * n)

end

end A012115.P4620353904741379321

/-! ## A012115.P3947139977343151085

`A012248(A004277(n))/A033999(n)`
-/

namespace A012115.P3947139977343151085
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A012248 (A004277 n).toNat : ℚ) / (A033999 n : ℚ)

end

end A012115.P3947139977343151085

/-! ## A012115.P17332723412417838999

`A012248(A005843(n))/A033999(n)`
-/

namespace A012115.P17332723412417838999
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A012248 (A005843 n).toNat : ℚ) / (A033999 n : ℚ)

end

end A012115.P17332723412417838999

/-!
# A012116: sinh(arcsin(arcsinh(x)))=x+1/3!*x^3+9/5!*x^5+113/7!*x^7+6993/9!*x^9...

The programs for A012116, there is no canonical definition to state claims against.
-/

/-! ## A012116.P11413023862165342305

`A012111(Δ[n²])`
-/

namespace A012116.P11413023862165342305
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012111 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A012116.P11413023862165342305

/-! ## A012116.P791539543713331554

`or(1, A012111(A005408(n)))`
-/

namespace A012116.P791539543713331554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A012111 (A005408 n).toNat)

end

end A012116.P791539543713331554

/-! ## A012116.P3145722454874356293

`or(1, A012111(A005843(n)+1))`
-/

namespace A012116.P3145722454874356293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A012111 (A005843 n + 1).toNat)

end

end A012116.P3145722454874356293

/-! ## A012116.P5174527899276776110

`or(1, A012111(or(1, A005843(n))))`
-/

namespace A012116.P5174527899276776110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A012111 (Int.lor 1 (A005843 n)).toNat)

end

end A012116.P5174527899276776110

/-!
# A012120: cosh(arcsin(arcsinh(x)))=1+1/2!*x^2+1/4!*x^4+49/6!*x^6+1/8!*x^8...

The programs for A012120, there is no canonical definition to state claims against.
-/

/-! ## A012120.P4576981058193976304

`A012111(2*n)`
-/

namespace A012120.P4576981058193976304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012111 (2 * n)

end

end A012120.P4576981058193976304

/-! ## A012120.P4437938076602963547

`or(1, A012111(A005843(n)))`
-/

namespace A012120.P4437938076602963547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A012111 (A005843 n).toNat)

end

end A012120.P4437938076602963547

/-! ## A012120.P3670749035404140025

`A012111(A005843(n))+A008683(A017054(n))`
-/

namespace A012120.P3670749035404140025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012111 (A005843 n).toNat + A008683 (A017054 n).toNat

end

end A012120.P3670749035404140025

/-! ## A012120.P7728752646896729817

`A012111(A005843(n))+A008683(A205849(n+1))`
-/

namespace A012120.P7728752646896729817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012111 (A005843 n).toNat + A008683 (A205849 (n + 1)).toNat

end

end A012120.P7728752646896729817

/-! ## A012120.P8344255565360259696

`A012111(A005843(n))/A001222(A110589(n+1))`
-/

namespace A012120.P8344255565360259696
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A012111 (A005843 n).toNat : ℚ) / (A001222 (A110589 (n + 1)).toNat : ℚ)

end

end A012120.P8344255565360259696

/-!
# A012121: sec(arcsin(arcsinh(x)))=1+1/2!*x^2+5/4!*x^4+109/6!*x^6+3177/8!*x^8...

The programs for A012121, there is no canonical definition to state claims against.
-/

/-! ## A012121.P745721874358454102

`A012262(2*n)`
-/

namespace A012121.P745721874358454102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012262 (2 * n)

end

end A012121.P745721874358454102

/-! ## A012121.P11097426309338771264

`or(1, A012262(A004277(n)))`
-/

namespace A012121.P11097426309338771264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A012262 (A004277 n).toNat)

end

end A012121.P11097426309338771264

/-! ## A012121.P9722168047492152733

`or(1, A012262(A005843(n)))`
-/

namespace A012121.P9722168047492152733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A012262 (A005843 n).toNat)

end

end A012121.P9722168047492152733

/-! ## A012121.P10474162409231945112

`A012262(A004277(n))/A304042(n)`
-/

namespace A012121.P10474162409231945112
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A012262 (A004277 n).toNat : ℚ) / (A304042 n : ℚ)

end

end A012121.P10474162409231945112

/-! ## A012121.P17158614957335674194

`A012262(A005408(n)-1)/A304042(n)`
-/

namespace A012121.P17158614957335674194
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A012262 (A005408 n - 1).toNat : ℚ) / (A304042 n : ℚ)

end

end A012121.P17158614957335674194

/-!
# A012122: sech(arcsin(arcsinh(x)))=1-1/2!*x^2+5/4!*x^4-109/6!*x^6+4073/8!*x^8...

The programs for A012122, there is no canonical definition to state claims against.
-/

/-! ## A012122.P12722207080306463645

`or(A007913(A012238(n)), A012239(n))`
-/

namespace A012122.P12722207080306463645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A007913 (A012238 n).toNat) (A012239 n)

end

end A012122.P12722207080306463645

/-!
# A012124: arcsin(arcsin(tanh(x)))=x+4/5!*x^5+24/7!*x^7+1744/9!*x^9+61504/11!*x^11...

The programs for A012124, there is no canonical definition to state claims against.
-/

/-! ## A012124.P14796993109452222799

`A266593(A273525(n))-2`
-/

namespace A012124.P14796993109452222799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266593 (A273525 n).toNat - 2

end

end A012124.P14796993109452222799

/-!
# A012125: Expansion of x/ (1-4*x+16*x^2)^(3/2).

The programs for A012125, the canonical program `A012125.P15766045602028742367` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A012125 has offset 0).

The definition of A012125 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A012125.P15766045602028742367

`2*(2*n-1)/(n-1)*a(n-1)-16*n/(n-1)*a(n-2)` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A012125

/-- `2*(2*n-1)/(n-1)*a(n-1)-16*n/(n-1)*a(n-2)` -/
def P15766045602028742367.Spec : Prop :=
  ∀ n, P15766045602028742367.a n = (A012125 n : ℚ)

end A012125

/-!
# A012127: sinh(arcsin(tanh(x)))=x-4/5!*x^5+80/7!*x^7-2224/9!*x^9+88960/11!*x^11...

The programs for A012127, there is no canonical definition to state claims against.
-/

/-! ## A012127.P312353156645649695

`A012123(Δ[n²])`
-/

namespace A012127.P312353156645649695
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012123 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A012127.P312353156645649695

/-! ## A012127.P7854850856618492307

`and(-3, A012123(2*n+1))`
-/

namespace A012127.P7854850856618492307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-3) (A012123 (2 * n + 1))

end

end A012127.P7854850856618492307

/-! ## A012127.P6251401686776595261

`or(A012123(2*n+1), A049084(2*(n+1)))`
-/

namespace A012127.P6251401686776595261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A012123 (2 * n + 1)) (A049084 (2 * (n + 1)))

end

end A012127.P6251401686776595261

/-! ## A012127.P3766041919703303253

`A012123(2*n+1)^A001221(A062383(n))`
-/

namespace A012127.P3766041919703303253
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A012123 (2 * n + 1) : ℚ) ^ (A001221 (A062383 n).toNat : ℤ)

end

end A012127.P3766041919703303253

/-! ## A012127.P15554040861551661187

`A001221(A062383(n+1))*A012123(2*n+1)`
-/

namespace A012127.P15554040861551661187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A062383 (n + 1)).toNat * A012123 (2 * n + 1)

end

end A012127.P15554040861551661187

/-!
# A012130: arctanh(arcsin(tanh(x)))=x+1/3!*x^3+9/5!*x^5+169/7!*x^7+6513/9!*x^9...

The programs for A012130, there is no canonical definition to state claims against.
-/

/-! ## A012130.P12604269713876099650

`A348742(A005130(n))-A172201(n+1)`
-/

namespace A012130.P12604269713876099650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348742 (A005130 n).toNat - A172201 (n + 1)

end

end A012130.P12604269713876099650

/-!
# A012131: Expansion of e.g.f. cosh(arcsin(tanh(x))) (even powers only).

The programs for A012131, there is no canonical definition to state claims against.
-/

/-! ## A012131.P8429229446557869883

`A012123(2*n)`
-/

namespace A012131.P8429229446557869883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012123 (2 * n)

end

end A012131.P8429229446557869883

/-! ## A012131.P8270787138018904757

`or(1, A012123(A005843(n)))`
-/

namespace A012131.P8270787138018904757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A012123 (A005843 n).toNat)

end

end A012131.P8270787138018904757

/-! ## A012131.P8965961745156148654

`A012123(A005843(n))/A007318(C(2, n))`
-/

namespace A012131.P8965961745156148654
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A012123 (A005843 n).toNat : ℚ) / (A007318 (Nat.choose 2 n) : ℚ)

end

end A012131.P8965961745156148654

/-! ## A012131.P9450412878517812165

`A012123(A005843(n))^A000041(floor(2/(n+1)))`
-/

namespace A012131.P9450412878517812165
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A012123 (A005843 n).toNat : ℚ) ^ (A000041 ⌊2 / (n + 1 : ℚ)⌋.toNat : ℤ)

end

end A012131.P9450412878517812165

/-!
# A012132: Numbers z such that x*(x+1) + y*(y+1) = z*(z+1) is solvable in positive integers x,y.

The programs for A012132, the canonical program `A012132.P13113475380317075671` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A012132 has offset 1).

The definition of A012132 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A012132.P13113475380317075671

`comp[A027861(n+1)-1]+1`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A012132

/-- `comp[A027861(n+1)-1]+1` -/
def P13113475380317075671.Spec : Prop :=
  ∀ n, (P13113475380317075671.a n : ℤ) = A012132 (n + 1)

theorem P13113475380317075671.correct : P13113475380317075671.Spec := by
  intro n
  simp only [A012132, Nat.add_sub_cancel]

end A012132

/-! ## A012132.P4956529665359497996

`lt[2, A160651(n)]`
-/

namespace A012132.P4956529665359497996
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160651 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A012132.P4956529665359497996

namespace A012132

/-- `lt[2, A160651(n)]` -/
def P4956529665359497996.Spec : Prop :=
  ∀ n, (P4956529665359497996.a n : ℤ) = A012132 (n + 1)

end A012132

/-! ## A012132.P9113329869914652104

`lt[2, A278244(n)]`
-/

namespace A012132.P9113329869914652104
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278244 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A012132.P9113329869914652104

namespace A012132

/-- `lt[2, A278244(n)]` -/
def P9113329869914652104.Spec : Prop :=
  ∀ n, (P9113329869914652104.a n : ℤ) = A012132 (n + 1)

end A012132

/-! ## A012132.P403725610106652579

`eq[2, 2%A069002(n+2)]+1`
-/

namespace A012132.P403725610106652579
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod 2 (A069002 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A012132.P403725610106652579

namespace A012132

/-- `eq[2, 2%A069002(n+2)]+1` -/
def P403725610106652579.Spec : Prop :=
  ∀ n, (P403725610106652579.a n : ℤ) = A012132 (n + 1)

end A012132

/-! ## A012132.P7569037006509687312

`lt[2, A028949(n+2)-2]`
-/

namespace A012132.P7569037006509687312
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028949 (n + 2) - 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A012132.P7569037006509687312

namespace A012132

/-- `lt[2, A028949(n+2)-2]` -/
def P7569037006509687312.Spec : Prop :=
  ∀ n, (P7569037006509687312.a n : ℤ) = A012132 (n + 1)

end A012132

/-! ## A012132.P7722075113475358729

`lt[1, A147809(2*n+1)]`
-/

namespace A012132.P7722075113475358729
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147809 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A012132.P7722075113475358729

namespace A012132

/-- `lt[1, A147809(2*n+1)]` -/
def P7722075113475358729.Spec : Prop :=
  ∀ n, (P7722075113475358729.a n : ℤ) = A012132 (n + 1)

end A012132

/-! ## A012132.P4251110144641881

`lt[2, A147810(2*n+1)]`
-/

namespace A012132.P4251110144641881
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147810 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A012132.P4251110144641881

namespace A012132

/-- `lt[2, A147810(2*n+1)]` -/
def P4251110144641881.Spec : Prop :=
  ∀ n, (P4251110144641881.a n : ℤ) = A012132 (n + 1)

end A012132

/-! ## A012132.P4258300955057606116

`lt[2, A193330(2*n+1)]`
-/

namespace A012132.P4258300955057606116
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193330 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A012132.P4258300955057606116

namespace A012132

/-- `lt[2, A193330(2*n+1)]` -/
def P4258300955057606116.Spec : Prop :=
  ∀ n, (P4258300955057606116.a n : ℤ) = A012132 (n + 1)

end A012132

/-! ## A012132.P8988131340376357105

`lt[4, A193432(2*n+1)]`
-/

namespace A012132.P8988131340376357105
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193432 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A012132.P8988131340376357105

namespace A012132

/-- `lt[4, A193432(2*n+1)]` -/
def P8988131340376357105.Spec : Prop :=
  ∀ n, (P8988131340376357105.a n : ℤ) = A012132 (n + 1)

end A012132

/-! ## A012132.P2332889315366719216

`lt[A014442(2*n+1), n²]`
-/

namespace A012132.P2332889315366719216
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014442 (2 * n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A012132.P2332889315366719216

namespace A012132

/-- `lt[A014442(2*n+1), n²]` -/
def P2332889315366719216.Spec : Prop :=
  ∀ n, (P2332889315366719216.a n : ℤ) = A012132 (n + 1)

end A012132

/-! ## A012132.P15048375724203275258

`lt[A250069(2*n+1), n²]`
-/

namespace A012132.P15048375724203275258
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250069 (2 * n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A012132.P15048375724203275258

namespace A012132

/-- `lt[A250069(2*n+1), n²]` -/
def P15048375724203275258.Spec : Prop :=
  ∀ n, (P15048375724203275258.a n : ℤ) = A012132 (n + 1)

end A012132

/-! ## A012132.P7619759925194477085

`lt[A281793(2*n+1), n²]`
-/

namespace A012132.P7619759925194477085
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281793 (2 * n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A012132.P7619759925194477085

namespace A012132

/-- `lt[A281793(2*n+1), n²]` -/
def P7619759925194477085.Spec : Prop :=
  ∀ n, (P7619759925194477085.a n : ℤ) = A012132 (n + 1)

end A012132

/-! ## A012132.P1812743398436157806

`lt[A285122(2*n+1), n²]`
-/

namespace A012132.P1812743398436157806
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285122 (2 * n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A012132.P1812743398436157806

namespace A012132

/-- `lt[A285122(2*n+1), n²]` -/
def P1812743398436157806.Spec : Prop :=
  ∀ n, (P1812743398436157806.a n : ℤ) = A012132 (n + 1)

end A012132

/-! ## A012132.P2206350965895038540

`eq[3, 3%A152823(2*n+1)]`
-/

namespace A012132.P2206350965895038540
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod 3 (A152823 (2 * n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A012132.P2206350965895038540

namespace A012132

/-- `eq[3, 3%A152823(2*n+1)]` -/
def P2206350965895038540.Spec : Prop :=
  ∀ n, (P2206350965895038540.a n : ℤ) = A012132 (n + 1)

end A012132

/-! ## A012132.P9619220102531602190

`lt[A259036(2*n+1), (n+1)²]`
-/

namespace A012132.P9619220102531602190
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259036 (2 * n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A012132.P9619220102531602190

namespace A012132

/-- `lt[A259036(2*n+1), (n+1)²]` -/
def P9619220102531602190.Spec : Prop :=
  ∀ n, (P9619220102531602190.a n : ℤ) = A012132 (n + 1)

end A012132

/-! ## A012132.P8050430304199088153

`eq[A000007(n), A156297(A333167(2*n+1))]`
-/

namespace A012132.P8050430304199088153
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156297 (A333167 (2 * n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A012132.P8050430304199088153

namespace A012132

/-- `eq[A000007(n), A156297(A333167(2*n+1))]` -/
def P8050430304199088153.Spec : Prop :=
  ∀ n, (P8050430304199088153.a n : ℤ) = A012132 (n + 1)

end A012132

/-! ## A012132.P10559137159893659108

`eq[A000038(n), A156297(A333167(2*n+1))]`
-/

namespace A012132.P10559137159893659108
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156297 (A333167 (2 * n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A012132.P10559137159893659108

namespace A012132

/-- `eq[A000038(n), A156297(A333167(2*n+1))]` -/
def P10559137159893659108.Spec : Prop :=
  ∀ n, (P10559137159893659108.a n : ℤ) = A012132 (n + 1)

end A012132

/-! ## A012132.P7438470329168734569

`(A180263(n+2)-1)/2`
-/

namespace A012132.P7438470329168734569
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A180263 (n + 2) - 1 : ℚ) / 2

end

end A012132.P7438470329168734569

namespace A012132

/-- `(A180263(n+2)-1)/2` -/
def P7438470329168734569.Spec : Prop :=
  ∀ n, P7438470329168734569.a n = (A012132 (n + 1) : ℚ)

end A012132

/-! ## A012132.P13927279882126122746

`∑[Δ[A180263(n+1)]/2]`
-/

namespace A012132.P13927279882126122746
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180263 (n + 1)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A012132.P13927279882126122746

namespace A012132

/-- `∑[Δ[A180263(n+1)]/2]` -/
def P13927279882126122746.Spec : Prop :=
  ∀ n, P13927279882126122746.a n = (A012132 (n + 1) : ℚ)

end A012132

/-! ## A012132.P4795462254257534446

`A004524(A180263(n+2))`
-/

namespace A012132.P4795462254257534446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (A180263 (n + 2)).toNat

end

end A012132.P4795462254257534446

namespace A012132

/-- `A004524(A180263(n+2))` -/
def P4795462254257534446.Spec : Prop :=
  ∀ n, P4795462254257534446.a n = A012132 (n + 1)

end A012132

/-! ## A012132.P14903510969813784961

`lt[2, ∑{e}[(2*n+1)²+1, #]]`
-/

namespace A012132.P14903510969813784961
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n + 1) ^ 2 + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n), Nat.factorization (f3 n) p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A012132.P14903510969813784961

namespace A012132

/-- `lt[2, ∑{e}[(2*n+1)²+1, #]]` -/
def P14903510969813784961.Spec : Prop :=
  ∀ n, (P14903510969813784961.a n : ℤ) = A012132 (n + 1)

end A012132

/-!
# A012134: exp(arcsin(arctanh(x)))=1+x+1/2!*x^2+4/3!*x^3+13/4!*x^4+84/5!*x^5...

The programs for A012134, there is no canonical definition to state claims against.
-/

/-! ## A012134.P4303850896248435857

`A012258(n)+A006054(A184954(n))`
-/

namespace A012134.P4303850896248435857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012258 n + A006054 (A184954 n).toNat

end

end A012134.P4303850896248435857

/-! ## A012134.P2972782131047740187

`A012258(A099145(n+1))`
-/

namespace A012134.P2972782131047740187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012258 (A099145 (n + 1)).toNat

end

end A012134.P2972782131047740187

/-! ## A012134.P18041793930640041408

`A012258(A228050(n+1))`
-/

namespace A012134.P18041793930640041408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012258 (A228050 (n + 1)).toNat

end

end A012134.P18041793930640041408

/-!
# A012136: Expansion of e.g.f. tan(arcsin(arctanh(x))) (odd powers only).

The programs for A012136, there is no canonical definition to state claims against.
-/

/-! ## A012136.P7368361306199513927

`A012263(Δ[n²])`
-/

namespace A012136.P7368361306199513927
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012263 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A012136.P7368361306199513927

/-! ## A012136.P4238846207279210657

`record[A012263(xor(1, n))]`
-/

namespace A012136.P4238846207279210657
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012263 (Nat.xor 1 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A012136.P4238846207279210657

/-! ## A012136.P14401353641806904376

`record[A012263(gcd(n, ∑[n]))]`
-/

namespace A012136.P14401353641806904376
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012263 (Nat.gcd n (∑ j ∈ Finset.range (n + 1), f2 j))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A012136.P14401353641806904376

/-! ## A012136.P1312150734871035360

`lcm(2, A012263(2*n+1))/2`
-/

namespace A012136.P1312150734871035360
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm 2 (A012263 (2 * n + 1)) : ℚ) / 2

end

end A012136.P1312150734871035360

/-! ## A012136.P15360051735475476824

`record[A012263(round((lcm(3, n)+n)/3))]`
-/

namespace A012136.P15360051735475476824
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012263 (SequenceMachineLib.roundAway ((Nat.lcm 3 n + n : ℚ) / 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A012136.P15360051735475476824

/-!
# A012138: cos(arcsin(arctanh(x)))=1-1/2!*x^2-11/4!*x^4-349/6!*x^6-22455/8!*x^8...

The programs for A012138, there is no canonical definition to state claims against.
-/

/-! ## A012138.P15235562969936466946

`(-1)^n*A012251(2*n)`
-/

namespace A012138.P15235562969936466946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A012251 (2 * n)

end

end A012138.P15235562969936466946

/-! ## A012138.P5519530944549401620

`A012251(2*n)*A033999(n)`
-/

namespace A012138.P5519530944549401620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012251 (2 * n) * A033999 n

end

end A012138.P5519530944549401620

/-!
# A012139: sinh(arcsin(arctanh(x)))=x+4/3!*x^3+84/5!*x^5+4208/7!*x^7+386064/9!*x^9...

The programs for A012139, there is no canonical definition to state claims against.
-/

/-! ## A012139.P1644491100469796517

`A012134(Δ[n²])`
-/

namespace A012139.P1644491100469796517
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012134 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A012139.P1644491100469796517

/-! ## A012139.P10297401004448048757

`record[A012134(A099375(n))]`
-/

namespace A012139.P10297401004448048757
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012134 (A099375 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A012139.P10297401004448048757

/-! ## A012139.P14901915532406690415

`record[A012134(A000265(n+1))]`
-/

namespace A012139.P14901915532406690415
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012134 (A000265 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A012139.P14901915532406690415

/-! ## A012139.P12006353920235956389

`record[A012134(A204022(n+1))]`
-/

namespace A012139.P12006353920235956389
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012134 (A204022 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A012139.P12006353920235956389

/-! ## A012139.P6738814015906950153

`lcm(A012134(A005408(n)), A013609(n))`
-/

namespace A012139.P6738814015906950153
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A012134 (A005408 n).toNat) (A013609 n)

end

end A012139.P6738814015906950153

/-!
# A012143: cosh(arcsin(arctanh(x)))=1+1/2!*x^2+13/4!*x^4+469/6!*x^6+33433/8!*x^8...

The programs for A012143, there is no canonical definition to state claims against.
-/

/-! ## A012143.P14272411012329878107

`A012134(2*n)`
-/

namespace A012143.P14272411012329878107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012134 (2 * n)

end

end A012143.P14272411012329878107

/-! ## A012143.P14923664897391853993

`or(1, A012134(A004277(n)))`
-/

namespace A012143.P14923664897391853993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A012134 (A004277 n).toNat)

end

end A012143.P14923664897391853993

/-! ## A012143.P15480164607017889180

`or(1, A012134(A005843(n)))`
-/

namespace A012143.P15480164607017889180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A012134 (A005843 n).toNat)

end

end A012143.P15480164607017889180

/-!
# A012144: sec(arcsin(arctanh(x)))=1+1/2!*x^2+17/4!*x^4+769/6!*x^6+66849/8!*x^8...

The programs for A012144, there is no canonical definition to state claims against.
-/

/-! ## A012144.P433800888573494284

`A012263(2*n)`
-/

namespace A012144.P433800888573494284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012263 (2 * n)

end

end A012144.P433800888573494284

/-! ## A012144.P12913465189597294456

`or(1, A012263(A004277(n)))`
-/

namespace A012144.P12913465189597294456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A012263 (A004277 n).toNat)

end

end A012144.P12913465189597294456

/-! ## A012144.P6110909966785130498

`or(1, A012263(A005843(n)))`
-/

namespace A012144.P6110909966785130498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A012263 (A005843 n).toNat)

end

end A012144.P6110909966785130498

/-! ## A012144.P14473133705391556946

`gcd(A000038(n), A012263(A005843(n)))`
-/

namespace A012144.P14473133705391556946
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A012263 (A005843 n).toNat)

end

end A012144.P14473133705391556946

/-! ## A012144.P3024225534667440313

`lcm(A012263(A004277(n)), A057077(n))`
-/

namespace A012144.P3024225534667440313
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A012263 (A004277 n).toNat) (A057077 n)

end

end A012144.P3024225534667440313

/-!
# A012147: arctanh(tan(sin(x)))=x+3/3!*x^3+41/5!*x^5+1467/7!*x^7+100625/9!*x^9...

The programs for A012147, there is no canonical definition to state claims against.
-/

/-! ## A012147.P17415999600445594828

`A009364(Δ[n²])`
-/

namespace A012147.P17415999600445594828
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009364 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A012147.P17415999600445594828

/-! ## A012147.P1682665625718454052

`record[A009364(n+1)]`
-/

namespace A012147.P1682665625718454052
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009364 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A012147.P1682665625718454052

/-! ## A012147.P3633830103731785874

`record[or(1, A009364(n))]`
-/

namespace A012147.P3633830103731785874
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A009364 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A012147.P3633830103731785874

/-! ## A012147.P955231705167796964

`abs(A009364(2*n+1))`
-/

namespace A012147.P955231705167796964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A009364 (2 * n + 1)|

end

end A012147.P955231705167796964

/-! ## A012147.P8796358986174388598

`abs(record[A009364(A051340(n))])`
-/

namespace A012147.P8796358986174388598
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009364 (A051340 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)|

end

end A012147.P8796358986174388598

/-!
# A012148: Expansion of e.g.f. sec(tan(sin(x))), even powers only.

The programs for A012148, there is no canonical definition to state claims against.
-/

/-! ## A012148.P8706262764961207527

`or(1, A116039((2*n-1)*a(n-1)-(n-1)*(n-2)*a(n-2)))` with `a(0)=1, a(1)=1`
-/

namespace A012148.P8706262764961207527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  Int.lor 1 (A116039 (((2 * n : ℤ) - 1) * a (n - 1) - ((n : ℤ) - 1) * (((n : ℤ) - 2) * a (n - 2))).toNat)

end

end A012148.P8706262764961207527

/-!
# A012149: sech(tan(sin(x)))=1-1/2!*x^2+1/4!*x^4+47/6!*x^6-447/8!*x^8...

The programs for A012149, there is no canonical definition to state claims against.
-/

/-! ## A012149.P5556903605979899384

`A009054(n)%A008372(2*n+3)`
-/

namespace A012149.P5556903605979899384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A009054 n) (A008372 (2 * n + 3))

end

end A012149.P5556903605979899384

/-!
# A012150: Expansion of e.g.f. exp(tan(arcsin(x))).

The programs for A012150, there is no canonical definition to state claims against.
-/

/-! ## A012150.P13423168181260260790

`A012261(A058832(n)+n)`
-/

namespace A012150.P13423168181260260790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012261 (A058832 n + (n : ℤ)).toNat

end

end A012150.P13423168181260260790

/-! ## A012150.P13239134206445177151

`A362572(A159083(n)+n)`
-/

namespace A012150.P13239134206445177151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362572 (A159083 n + (n : ℤ)).toNat

end

end A012150.P13239134206445177151

/-! ## A012150.P734534265895862588

`A012261(n^A027023(n))`
-/

namespace A012150.P734534265895862588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012261 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A027023 n : ℤ))).toNat

end

end A012150.P734534265895862588

/-!
# A012152: arctanh(tan(tan(x)))=x+6/3!*x^3+176/5!*x^5+12240/7!*x^7...

The programs for A012152, there is no canonical definition to state claims against.
-/

/-! ## A012152.P15468915023862131212

`A009366(Δ[n²])`
-/

namespace A012152.P15468915023862131212
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009366 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A012152.P15468915023862131212

/-! ## A012152.P7200612064676224045

`record[A009366(n+1)]`
-/

namespace A012152.P7200612064676224045
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009366 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A012152.P7200612064676224045

/-! ## A012152.P3109048519289587542

`record[abs(A009366(xor(1, n)))]`
-/

namespace A012152.P3109048519289587542
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A009366 (Nat.xor 1 n)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A012152.P3109048519289587542

/-! ## A012152.P13022792845247343314

`abs(A009366(2*n+1))`
-/

namespace A012152.P13022792845247343314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A009366 (2 * n + 1)|

end

end A012152.P13022792845247343314

/-! ## A012152.P4664729027214296812

`record[A009366(n)^floor(atan(n))]`
-/

namespace A012152.P4664729027214296812
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A009366 n : ℚ) ^ (⌊Real.arctan (n : ℝ)⌋ : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A012152.P4664729027214296812

/-!
# A012156: arctanh(tan(sinh(x)))=x+5/3!*x^3+121/5!*x^5+7069/7!*x^7+763057/9!*x^9...

The programs for A012156, there is no canonical definition to state claims against.
-/

/-! ## A012156.P8037305082736059575

`A009365(Δ[n²])`
-/

namespace A012156.P8037305082736059575
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009365 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A012156.P8037305082736059575

/-! ## A012156.P3583225755302712322

`record[A009365(n+1)]`
-/

namespace A012156.P3583225755302712322
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009365 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A012156.P3583225755302712322

/-! ## A012156.P4349238656105101036

`record[or(1, A009365(n))]`
-/

namespace A012156.P4349238656105101036
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A009365 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A012156.P4349238656105101036

/-! ## A012156.P12921702992860949374

`abs(A009365(2*n+1))`
-/

namespace A012156.P12921702992860949374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A009365 (2 * n + 1)|

end

end A012156.P12921702992860949374

/-! ## A012156.P6742139084057523431

`abs(record[A009365(A266977(n))])`
-/

namespace A012156.P6742139084057523431
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009365 (A266977 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)|

end

end A012156.P6742139084057523431

/-!
# A012158: sech(tan(sinh(x)))=1-1/2!*x^2-7/4!*x^4-73/6!*x^6-239/8!*x^8...

The programs for A012158, there is no canonical definition to state claims against.
-/

/-! ## A012158.P3371716602958170420

`floor(acot(n)²)-A077805(A204465(n))`
-/

namespace A012158.P3371716602958170420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊SequenceMachineLib.acot (n : ℝ) ^ 2⌋ - A077805 (A204465 n).toNat

end

end A012158.P3371716602958170420

/-!
# A012159: E.g.f.: exp(tan(arcsinh(x))).

The programs for A012159, there is no canonical definition to state claims against.
-/

/-! ## A012159.P16524681785266199430

`A012051(n)*A012187(A172539(n+1))`
-/

namespace A012159.P16524681785266199430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012051 n * A012187 (A172539 (n + 1)).toNat

end

end A012159.P16524681785266199430

/-! ## A012159.P7067604148279767983

`A012051(n)*A054977(A025192(n))`
-/

namespace A012159.P7067604148279767983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012051 n * A054977 (A025192 n).toNat

end

end A012159.P7067604148279767983

/-! ## A012159.P5024992583574882976

`A012051(n)*A356224(A136252(n))`
-/

namespace A012159.P5024992583574882976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012051 n * A356224 (A136252 n).toNat

end

end A012159.P5024992583574882976

/-! ## A012159.P2528160236145180906

`A025469(A037278(n+3))+A012051(n)`
-/

namespace A012159.P2528160236145180906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025469 (A037278 (n + 3)).toNat + A012051 n

end

end A012159.P2528160236145180906

/-! ## A012159.P2346253964210818251

`A012051(n)*A054977(A037278(n+1))`
-/

namespace A012159.P2346253964210818251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012051 n * A054977 (A037278 (n + 1)).toNat

end

end A012159.P2346253964210818251

/-!
# A012160: sin(tan(arcsinh(x)))=x-4/5!*x^5-136/7!*x^7+272/9!*x^9-222016/11!*x^11...

The programs for A012160, there is no canonical definition to state claims against.
-/

/-! ## A012160.P9593100483646454869

`A012255(2*n+1)*A033999(n)`
-/

namespace A012160.P9593100483646454869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012255 (2 * n + 1) * A033999 n

end

end A012160.P9593100483646454869

/-!
# A012161: arcsin(tan(arcsinh(x)))=x+2/3!*x^3+24/5!*x^5+720/7!*x^7+48000/9!*x^9...

The programs for A012161, there is no canonical definition to state claims against.
-/

/-! ## A012161.P3553551145115158094

`A000010(A082765(n)-A211507(n))`
-/

namespace A012161.P3553551145115158094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A082765 n - A211507 n).toNat

end

end A012161.P3553551145115158094

/-!
# A012163: cos(tan(arcsinh(x)))=1-1/2!*x^2-3/4!*x^4-21/6!*x^6+185/8!*x^8...

The programs for A012163, there is no canonical definition to state claims against.
-/

/-! ## A012163.P16405927300563372900

`A012255(2*n)*A033999(n)`
-/

namespace A012163.P16405927300563372900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012255 (2 * n) * A033999 n

end

end A012163.P16405927300563372900

/-! ## A012163.P16465393407598598619

`A012255(A005843(n))/A033999(n)`
-/

namespace A012163.P16465393407598598619
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A012255 (A005843 n).toNat : ℚ) / (A033999 n : ℚ)

end

end A012163.P16465393407598598619

/-!
# A012164: sinh(tan(arcsinh(x))) = x+2/3!*x^3+16/5!*x^5+216/7!*x^7+6400/9!*x^9...

The programs for A012164, there is no canonical definition to state claims against.
-/

/-! ## A012164.P1364711922624316478

`A012159(Δ[n²])`
-/

namespace A012164.P1364711922624316478
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012159 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A012164.P1364711922624316478

/-! ## A012164.P16798060257429662628

`or(n, A012159(2*n+1))-n`
-/

namespace A012164.P16798060257429662628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n : ℤ) (A012159 (2 * n + 1)) - (n : ℤ)

end

end A012164.P16798060257429662628

/-! ## A012164.P17299026400026656311

`A025469(n)+A012159(2*n+1)`
-/

namespace A012164.P17299026400026656311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025469 n + A012159 (2 * n + 1)

end

end A012164.P17299026400026656311

/-! ## A012164.P918414001692913859

`A142150(2*n+1)+A012159(2*n+1)`
-/

namespace A012164.P918414001692913859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142150 (2 * n + 1) + A012159 (2 * n + 1)

end

end A012164.P918414001692913859

/-! ## A012164.P13557605486561663231

`and(2-A000203(n+2), A012159(2*n+1))`
-/

namespace A012164.P13557605486561663231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (2 - A000203 (n + 2)) (A012159 (2 * n + 1))

end

end A012164.P13557605486561663231

/-!
# A012167: cosh(tan(arcsinh(x)))=1+1/2!*x^2+5/4!*x^4+61/6!*x^6+937/8!*x^8...

The programs for A012167, there is no canonical definition to state claims against.
-/

/-! ## A012167.P2816024616361187320

`A012159(2*n)`
-/

namespace A012167.P2816024616361187320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012159 (2 * n)

end

end A012167.P2816024616361187320

/-! ## A012167.P10408083851513675019

`or(1, A012159(A004277(n)))`
-/

namespace A012167.P10408083851513675019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A012159 (A004277 n).toNat)

end

end A012167.P10408083851513675019

/-! ## A012167.P11314933560743900825

`or(1, A012159(A005843(n)))`
-/

namespace A012167.P11314933560743900825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A012159 (A005843 n).toNat)

end

end A012167.P11314933560743900825

/-! ## A012167.P10421753113122717736

`A025469(n)+A012159(A005843(n))`
-/

namespace A012167.P10421753113122717736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025469 n + A012159 (A005843 n).toNat

end

end A012167.P10421753113122717736

/-! ## A012167.P10234318958844858165

`A012159(A004277(n))^A089309(n²)`
-/

namespace A012167.P10234318958844858165
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A012159 (A004277 n).toNat : ℚ) ^ (A089309 (n ^ 2) : ℤ)

end

end A012167.P10234318958844858165

/-!
# A012170: arcsin(tan(tanh(x)))=x+1/3!*x^3+1/5!*x^5+169/7!*x^7+5857/9!*x^9...

The programs for A012170, there is no canonical definition to state claims against.
-/

/-! ## A012170.P10017425425810197261

`A047459(A003727(n)^3)`
-/

namespace A012170.P10017425425810197261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047459 (A003727 n ^ 3).toNat

end

end A012170.P10017425425810197261

/-!
# A012171: arctanh(tan(tanh(x)))=x+2/3!*x^3+16/5!*x^5+496/7!*x^7+24064/9!*x^9...

The programs for A012171, there is no canonical definition to state claims against.
-/

/-! ## A012171.P13928736724845680152

`A009367(Δ[n²])`
-/

namespace A012171.P13928736724845680152
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009367 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A012171.P13928736724845680152

/-! ## A012171.P7376018508290832669

`record[A009367(n+1)]`
-/

namespace A012171.P7376018508290832669
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009367 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A012171.P7376018508290832669

/-! ## A012171.P12706312169921137002

`abs(A009367(2*n+1))`
-/

namespace A012171.P12706312169921137002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A009367 (2 * n + 1)|

end

end A012171.P12706312169921137002

/-! ## A012171.P16009521893796859987

`abs(record[A009367(A005041(n))])`
-/

namespace A012171.P16009521893796859987
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009367 (A005041 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)|

end

end A012171.P16009521893796859987

/-! ## A012171.P2746136413829499474

`abs(record[A009367(A028310(n))])`
-/

namespace A012171.P2746136413829499474
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009367 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)|

end

end A012171.P2746136413829499474

/-!
# A012172: sec(tan(tanh(x)))=1+1/2!*x^2+5/4!*x^4+13/6!*x^6+41/8!*x^8...

The programs for A012172, there is no canonical definition to state claims against.
-/

/-! ## A012172.P9846761723955085632

`A117501((A333161(2*n)+2)^n+1)`
-/

namespace A012172.P9846761723955085632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117501 ((A333161 (2 * n) + 2) ^ n + 1).toNat

end

end A012172.P9846761723955085632

/-! ## A012172.P7571987735686431527

`A117501((A347437(2*(n+2))+2)^n+1)`
-/

namespace A012172.P7571987735686431527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117501 ((A347437 (2 * (n + 2)) + 2) ^ n + 1).toNat

end

end A012172.P7571987735686431527

/-!
# A012175: sin(tan(arctanh(x)))=x+3/3!*x^3+41/5!*x^5+1019/7!*x^7+12305/9!*x^9...

The programs for A012175, there is no canonical definition to state claims against.
-/

/-! ## A012175.P2088682186523294429

`A012256(Δ[n²])/(-1)^n`
-/

namespace A012175.P2088682186523294429
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A012256 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ) / ((-1) ^ n : ℚ)

end

end A012175.P2088682186523294429

/-! ## A012175.P18232307352505515540

`(-1)^n*A012256(2*n+1)`
-/

namespace A012175.P18232307352505515540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A012256 (2 * n + 1)

end

end A012175.P18232307352505515540

/-! ## A012175.P18146579953080029516

`A012256(2*n+1)*A033999(n)`
-/

namespace A012175.P18146579953080029516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012256 (2 * n + 1) * A033999 n

end

end A012175.P18146579953080029516

/-! ## A012175.P15367473752475394467

`A012256(2*n+1)*A130151(3*n)`
-/

namespace A012175.P15367473752475394467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012256 (2 * n + 1) * A130151 (3 * n)

end

end A012175.P15367473752475394467

/-!
# A012178: cos(tan(arctanh(x)))=1-1/2!*x^2-15/4!*x^4-561/6!*x^6-38623/8!*x^8...

The programs for A012178, there is no canonical definition to state claims against.
-/

/-! ## A012178.P4939764977978846521

`(-1)^n*A012256(2*n)`
-/

namespace A012178.P4939764977978846521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A012256 (2 * n)

end

end A012178.P4939764977978846521

/-! ## A012178.P153905954305735198

`A012256(2*n)*A033999(n)`
-/

namespace A012178.P153905954305735198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012256 (2 * n) * A033999 n

end

end A012178.P153905954305735198

/-!
# A012179: sinh(tan(arctanh(x)))=x+5/3!*x^3+121/5!*x^5+6621/7!*x^7+636337/9!*x^9...

The programs for A012179, there is no canonical definition to state claims against.
-/

/-! ## A012179.P10548309561930309703

`A012174(Δ[n²])`
-/

namespace A012179.P10548309561930309703
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012174 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A012179.P10548309561930309703

/-! ## A012179.P8083724720709729790

`record[A012174(A026741(n))]`
-/

namespace A012179.P8083724720709729790
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012174 (A026741 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A012179.P8083724720709729790

/-! ## A012179.P11530225345448686763

`record[A012174(A099375(n))]`
-/

namespace A012179.P11530225345448686763
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012174 (A099375 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A012179.P11530225345448686763

/-! ## A012179.P16327436590934875649

`record[A012174(A033999(n)+n)]`
-/

namespace A012179.P16327436590934875649
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012174 (A033999 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A012179.P16327436590934875649

/-! ## A012179.P16764456169824192620

`record[gcd(A012174(n), A046769(n))]`
-/

namespace A012179.P16764456169824192620
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A012174 n) (A046769 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A012179.P16764456169824192620

/-!
# A012182: cosh(tan(arctanh(x)))=1+1/2!*x^2+17/4!*x^4+721/6!*x^6+56545/8!*x^8...

The programs for A012182, there is no canonical definition to state claims against.
-/

/-! ## A012182.P420272436772603048

`A012174(2*n)`
-/

namespace A012182.P420272436772603048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012174 (2 * n)

end

end A012182.P420272436772603048

/-! ## A012182.P15843181047920669876

`or(1, A012174(A005843(n)))`
-/

namespace A012182.P15843181047920669876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A012174 (A005843 n).toNat)

end

end A012182.P15843181047920669876

/-! ## A012182.P5059490078713973789

`A012174(A005843(n))^A178334(n)`
-/

namespace A012182.P5059490078713973789
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A012174 (A005843 n).toNat : ℚ) ^ (A178334 n : ℤ)

end

end A012182.P5059490078713973789

/-! ## A012182.P15393543273769246006

`A012174(A005843(n))/A007318(∑[n])`
-/

namespace A012182.P15393543273769246006
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A012174 (A005843 n).toNat : ℚ) / (A007318 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ)

end

end A012182.P15393543273769246006

/-! ## A012182.P3499727874225047711

`A012174(A005843(n))^A007318(∑[n+2])`
-/

namespace A012182.P3499727874225047711
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A012174 (A005843 n).toNat : ℚ) ^ (A007318 (∑ j ∈ Finset.range (n + 1), f1 j) : ℤ)

end

end A012182.P3499727874225047711

/-!
# A012188: E.g.f. sinh(arctan(sin(x))) odd powers only.

The programs for A012188, there is no canonical definition to state claims against.
-/

/-! ## A012188.P679872309647510778

`A012185(Δ[n²])`
-/

namespace A012188.P679872309647510778
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012185 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A012188.P679872309647510778

/-! ## A012188.P9896677797683534265

`A012185(A005408(n))*A063435(n)`
-/

namespace A012188.P9896677797683534265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012185 (A005408 n).toNat * A063435 n

end

end A012188.P9896677797683534265

/-! ## A012188.P14006316804693391919

`A012185(Δ[A241847(n)])*A063435(n)`
-/

namespace A012188.P14006316804693391919
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241847 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012185 (f1 (n + 1) - f1 n).toNat * A063435 n

end

end A012188.P14006316804693391919

/-! ## A012188.P8740092795342255967

`A012185(A005408(n))+A000007(n+1)`
-/

namespace A012188.P8740092795342255967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012185 (A005408 n).toNat + A000007 (n + 1)

end

end A012188.P8740092795342255967

/-! ## A012188.P12045548454206147656

`A012185(A005408(n))-n*A000007(n)`
-/

namespace A012188.P12045548454206147656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012185 (A005408 n).toNat - (n : ℤ) * A000007 n

end

end A012188.P12045548454206147656

/-!
# A012192: cosh(arctan(sin(x)))=1+1/2!*x^2-11/4!*x^4+301/6!*x^6-16631/8!*x^8...

The programs for A012192, there is no canonical definition to state claims against.
-/

/-! ## A012192.P18221379259627275394

`A012185(2*n)`
-/

namespace A012192.P18221379259627275394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012185 (2 * n)

end

end A012192.P18221379259627275394

/-! ## A012192.P9614131956134674163

`or(1, A012185(A004277(n)))`
-/

namespace A012192.P9614131956134674163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A012185 (A004277 n).toNat)

end

end A012192.P9614131956134674163

/-! ## A012192.P5420044927627890804

`or(1, A012185(A005843(n)))`
-/

namespace A012192.P5420044927627890804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A012185 (A005843 n).toNat)

end

end A012192.P5420044927627890804

/-! ## A012192.P5217245107015875958

`A012185(A005408(n)-1)/A063435(n)`
-/

namespace A012192.P5217245107015875958
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A012185 (A005408 n - 1).toNat : ℚ) / (A063435 n : ℚ)

end

end A012192.P5217245107015875958

/-! ## A012192.P8308212014646531388

`A012185(A005843(n))+and(1, A002943(n))`
-/

namespace A012192.P8308212014646531388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012185 (A005843 n).toNat + Int.land 1 (A002943 n)

end

end A012192.P8308212014646531388

/-!
# A012193: sech(arctan(sin(x)))=1-1/2!*x^2+17/4!*x^4-721/6!*x^6+58337/8!*x^8...

The programs for A012193, there is no canonical definition to state claims against.
-/

/-! ## A012193.P16577042958253044618

`A291207(A033537(n)+1)`
-/

namespace A012193.P16577042958253044618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291207 (A033537 n + 1).toNat

end

end A012193.P16577042958253044618

/-!
# A012195: arcsin(arctan(arcsin(x)))=x+12/5!*x^5+80/7!*x^7+13776/9!*x^9...

The programs for A012195, there is no canonical definition to state claims against.
-/

/-! ## A012195.P3865729003696566246

`A057889(A000612(n)*A078008(n))`
-/

namespace A012195.P3865729003696566246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057889 (A000612 n * A078008 n).toNat

end

end A012195.P3865729003696566246

/-!
# A012197: sinh(arctan(arcsin(x)))=x+4/5!*x^5+136/7!*x^7+1744/9!*x^9+652864/11!*x^11...

The programs for A012197, there is no canonical definition to state claims against.
-/

/-! ## A012197.P16778154610096900372

`A012194(Δ[n²])`
-/

namespace A012197.P16778154610096900372
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012194 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A012197.P16778154610096900372

/-! ## A012197.P4976074405932571338

`abs(A012194(2*n+1))`
-/

namespace A012197.P4976074405932571338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A012194 (2 * n + 1)|

end

end A012197.P4976074405932571338

/-! ## A012197.P3949370915295605808

`or(2, A012194(A005408(n)))-2`
-/

namespace A012197.P3949370915295605808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 2 (A012194 (A005408 n).toNat) - 2

end

end A012197.P3949370915295605808

/-! ## A012197.P16532723086738875343

`A138364(2*n)+A012194(2*n+1)`
-/

namespace A012197.P16532723086738875343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138364 (2 * n) + A012194 (2 * n + 1)

end

end A012197.P16532723086738875343

/-! ## A012197.P10499870970344531021

`or(A000007(n), A012194(A005408(n)))`
-/

namespace A012197.P10499870970344531021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A012194 (A005408 n).toNat)

end

end A012197.P10499870970344531021

