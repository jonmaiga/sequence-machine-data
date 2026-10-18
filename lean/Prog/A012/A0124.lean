import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C005
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C011
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C020
import Seq.B000.C023
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C004
import Seq.B002.C000
import Seq.B002.C001
import Seq.B005.C000
import Seq.B007.C000
import Seq.B008.C000
import Seq.B010.C000
import Seq.B011.C000
import Seq.B013.C000
import Seq.Opaque.C000
import Seq.Opaque.C002
import Seq.Opaque.C003
import Seq.Opaque.C004
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
import Seq.Opaque.C020
import Seq.Opaque.C021
import Seq.Opaque.C022
import Seq.Opaque.C024

/-!
# A012401: Expansion of e.g.f.: sinh(arctan(x)*log(x+1))=2/2!*x^2-3/3!*x^3-10/5!*x^5+328/6!*x^6...

The programs for A012401, there is no canonical definition to state claims against.
-/

/-! ## A012401.P12397992322704922665

`A012396(n)-A012405(n)`
-/

namespace A012401.P12397992322704922665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012396 n - A012405 n

end

end A012401.P12397992322704922665

/-! ## A012401.P7403337592708132458

`A012396(n)+A012405(n)*A321800(A050603(n))`
-/

namespace A012401.P7403337592708132458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012396 n + A012405 n * A321800 (A050603 n).toNat

end

end A012401.P7403337592708132458

/-!
# A012402: arcsinh(arctan(x)*log(x+1)) = 2/2!*x^2 - 3/3!*x^3 - 10/5!*x^5 + 88/6!*x^6 - ...

The programs for A012402, there is no canonical definition to state claims against.
-/

/-! ## A012402.P10604006080165124729

`A012397(A077739(n+2))`
-/

namespace A012402.P10604006080165124729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012397 (A077739 (n + 2)).toNat

end

end A012402.P10604006080165124729

/-! ## A012402.P16125290382737919861

`A012397(A004892(n+2)+1)`
-/

namespace A012402.P16125290382737919861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012397 (A004892 (n + 2) + 1).toNat

end

end A012402.P16125290382737919861

/-! ## A012402.P8727364917956114203

`A012397(n+2)*A346467(A000142(n))`
-/

namespace A012402.P8727364917956114203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012397 (n + 2) * A346467 (A000142 n).toNat

end

end A012402.P8727364917956114203

/-! ## A012402.P2055577339020788335

`A012397(n+2)^A242784(A001045(n))`
-/

namespace A012402.P2055577339020788335
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A012397 (n + 2) : ℚ) ^ (A242784 (A001045 n).toNat : ℤ)

end

end A012402.P2055577339020788335

/-!
# A012403: E.g.f. tanh(arctan(x)*log(x+1)).

The programs for A012403, there is no canonical definition to state claims against.
-/

/-! ## A012403.P8592609478178862765

`A012399(9^val(n+1, 9)*(n+2))`
-/

namespace A012403.P8592609478178862765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012399 (9 ^ SequenceMachineLib.valuation (n + 1) 9 * (n + 2))

end

end A012403.P8592609478178862765

/-! ## A012403.P4518398183992442655

`A012399((n+2)^9^val(n+1, 9))`
-/

namespace A012403.P4518398183992442655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012399 ((n + 2) ^ 9 ^ SequenceMachineLib.valuation (n + 1) 9)

end

end A012403.P4518398183992442655

/-! ## A012403.P621051056655405174

`A012399(A077739(n+2))`
-/

namespace A012403.P621051056655405174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012399 (A077739 (n + 2)).toNat

end

end A012403.P621051056655405174

/-! ## A012403.P925468052584059560

`A012399(A154701(n+1)+1)`
-/

namespace A012403.P925468052584059560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012399 (A154701 (n + 1) + 1).toNat

end

end A012403.P925468052584059560

/-!
# A012404: arctanh(arctan(x)*log(x+1))=2/2!*x^2-3/3!*x^3-10/5!*x^5+448/6!*x^6...

The programs for A012404, there is no canonical definition to state claims against.
-/

/-! ## A012404.P158321975944578274

`A185255(A155547(n+1))+A012397(n)`
-/

namespace A012404.P158321975944578274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185255 (A155547 (n + 1)).toNat + A012397 n

end

end A012404.P158321975944578274

/-!
# A012405: Expansion of e.g.f.: cosh(arctan(x)*log(x+1))=1+12/4!*x^4-60/5!*x^5+90/6!*x^6-420/7!*x^7...

The programs for A012405, there is no canonical definition to state claims against.
-/

/-! ## A012405.P365843790875126595

`A012396(n)-A012401(n)`
-/

namespace A012405.P365843790875126595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012396 n - A012401 n

end

end A012405.P365843790875126595

/-! ## A012405.P8601432781145151509

`A012396(n)-A012398(A082216(n))`
-/

namespace A012405.P8601432781145151509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012396 n - A012398 (A082216 n).toNat

end

end A012405.P8601432781145151509

/-!
# A012408: exp(arctan(x)*exp(x))=1+x+3/2!*x^2+8/3!*x^3+25/4!*x^4+100/5!*x^5...

The programs for A012408, there is no canonical definition to state claims against.
-/

/-! ## A012408.P10361300776484601864

`A012417(n)+A012413(n)`
-/

namespace A012408.P10361300776484601864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012417 n + A012413 n

end

end A012408.P10361300776484601864

/-! ## A012408.P4247351392851914895

`A012417(n)-A012413(n)*A057428(n)`
-/

namespace A012408.P4247351392851914895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012417 n - A012413 n * A057428 n

end

end A012408.P4247351392851914895

/-! ## A012408.P15871675704946824847

`A177479(n)+A056239(A319189(n))`
-/

namespace A012408.P15871675704946824847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177479 n + A056239 (A319189 n).toNat

end

end A012408.P15871675704946824847

/-!
# A012410: Expansion of e.g.f. arcsin(arctan(x) * exp(x)).

The programs for A012410, there is no canonical definition to state claims against.
-/

/-! ## A012410.P10079921343761047316

`and(A054930(A049297(n+1)), A276852(n))`
-/

namespace A012410.P10079921343761047316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A054930 (A049297 (n + 1)).toNat) (A276852 n)

end

end A012410.P10079921343761047316

/-! ## A012410.P17398984763643902803

`and(A054930(A056391(n+1)), A276852(n))`
-/

namespace A012410.P17398984763643902803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A054930 (A056391 (n + 1)).toNat) (A276852 n)

end

end A012410.P17398984763643902803

/-! ## A012410.P4818160616745879995

`and(A276852(n), A276853(A054866(n+1)))`
-/

namespace A012410.P4818160616745879995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A276852 n) (A276853 (A054866 (n + 1)).toNat)

end

end A012410.P4818160616745879995

/-!
# A012411: arctan(arctan(x)*exp(x)) = x + 2/2!*x^2 - 1/3!*x^3 - 28/4!*x^4 - 107/5!*x^5 + ...

The programs for A012411, there is no canonical definition to state claims against.
-/

/-! ## A012411.P6868546558386540082

`or(n, A128497(record[A128495(n)]))`
-/

namespace A012411.P6868546558386540082
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128495 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n : ℤ) (A128497 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat)

end

end A012411.P6868546558386540082

/-! ## A012411.P14573938302294036095

`1-A054531(A066357(n))+n`
-/

namespace A012411.P14573938302294036095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A054531 (A066357 n).toNat + (n : ℤ)

end

end A012411.P14573938302294036095

/-!
# A012413: sinh(arctan(x)*exp(x)) = x + 2/2!*x^2 + 2/3!*x^3 + 8/4!*x^4 + 80/5!*x^5 +...

The programs for A012413, there is no canonical definition to state claims against.
-/

/-! ## A012413.P10616277399008477600

`A012408(n)-A012417(n)`
-/

namespace A012413.P10616277399008477600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012408 n - A012417 n

end

end A012413.P10616277399008477600

/-! ## A012413.P17793431585377268444

`A012408(n)+A012417(n)*A153881(n+2)`
-/

namespace A012413.P17793431585377268444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012408 n + A012417 n * A153881 (n + 2)

end

end A012413.P17793431585377268444

/-! ## A012413.P15746195762035993281

`A012408(n)+A012417(n)*A057428(A046541(n+1))`
-/

namespace A012413.P15746195762035993281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012408 n + A012417 n * A057428 (A046541 (n + 1)).toNat

end

end A012413.P15746195762035993281

/-! ## A012413.P13479514813433432576

`A012408(n)+A012417(n)/A243993(A365464(3^n))`
-/

namespace A012413.P13479514813433432576
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A012408 n : ℚ) + (A012417 n : ℚ) / (A243993 (A365464 (3 ^ n)).toNat : ℚ)

end

end A012413.P13479514813433432576

/-!
# A012415: Expansion of e.g.f. tanh(arctan(x) * exp(x)).

The programs for A012415, there is no canonical definition to state claims against.
-/

/-! ## A012415.P13213291605353597956

`A012660(n^7^val(n+1, 7))`
-/

namespace A012415.P13213291605353597956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012660 (n ^ 7 ^ SequenceMachineLib.valuation (n + 1) 7)

end

end A012415.P13213291605353597956

/-! ## A012415.P10416137786130604078

`A012660(n)%A133660(n+5)`
-/

namespace A012415.P10416137786130604078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A012660 n) (A133660 (n + 5))

end

end A012415.P10416137786130604078

/-!
# A012416: arctanh(arctan(x)*exp(x))=x+2/2!*x^2+3/3!*x^3+20/4!*x^4+173/5!*x^5...

The programs for A012416, there is no canonical definition to state claims against.
-/

/-! ## A012416.P16651611834464100156

`or(n, A057360(A210426(n+1)))`
-/

namespace A012416.P16651611834464100156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n : ℤ) (A057360 (A210426 (n + 1)).toNat)

end

end A012416.P16651611834464100156

/-! ## A012416.P17517601363801300534

`or(n, round(sqrt(A215702(n+1)))²)`
-/

namespace A012416.P17517601363801300534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n : ℤ) (SequenceMachineLib.roundAway (Real.sqrt (A215702 (n + 1) : ℝ)) ^ 2)

end

end A012416.P17517601363801300534

/-!
# A012417: cosh(arctan(x)*exp(x))=1+1/2!*x^2+6/3!*x^3+17/4!*x^4+20/5!*x^5...

The programs for A012417, there is no canonical definition to state claims against.
-/

/-! ## A012417.P8411024402176537260

`A012408(n)-A012413(n)`
-/

namespace A012417.P8411024402176537260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012408 n - A012413 n

end

end A012417.P8411024402176537260

/-! ## A012417.P15422012564815903822

`A012408(n)+A012413(n)*A057428(n)`
-/

namespace A012417.P15422012564815903822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012408 n + A012413 n * A057428 n

end

end A012417.P15422012564815903822

/-! ## A012417.P6149483884890959537

`xor(∑[(-1)^(n%3)], A234809(A244430(n)))`
-/

namespace A012417.P6149483884890959537
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ (n % 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (∑ j ∈ Finset.range (n + 1), f1 j) (A234809 (A244430 n).toNat)

end

end A012417.P6149483884890959537

/-!
# A012424: Expansion of e.g.f. cos(arctan(x)*sin(x)) (only even powers).

The programs for A012424, there is no canonical definition to state claims against.
-/

/-! ## A012424.P5892492124656041880

`A009001(A012432(n))*A012379(n)`
-/

namespace A012424.P5892492124656041880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009001 (A012432 n).toNat * A012379 n

end

end A012424.P5892492124656041880

/-!
# A012425: sinh(arctan(x)*sin(x))=2/2!*x^2-12/4!*x^4+310/6!*x^6-17304/8!*x^8...

The programs for A012425, there is no canonical definition to state claims against.
-/

/-! ## A012425.P2191407065654957196

`A012420(n+1)-A012429(n+1)`
-/

namespace A012425.P2191407065654957196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012420 (n + 1) - A012429 (n + 1)

end

end A012425.P2191407065654957196

/-!
# A012428: arctanh(arctan(x)*sin(x))=2/2!*x^2-12/4!*x^4+430/6!*x^6-27384/8!*x^8...

The programs for A012428, there is no canonical definition to state claims against.
-/

/-! ## A012428.P5186112066536012786

`A008683(A012792(n))*A012751(n)`
-/

namespace A012428.P5186112066536012786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A012792 n).toNat * A012751 n

end

end A012428.P5186112066536012786

/-!
# A012430: Expansion of e.g.f. sec(arctan(x)*sin(x)) (only even powers).

The programs for A012430, there is no canonical definition to state claims against.
-/

/-! ## A012430.P99128240138486170

`A008836(A001018(n))*A012385(n)`
-/

namespace A012430.P99128240138486170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008836 (A001018 n).toNat * A012385 n

end

end A012430.P99128240138486170

/-!
# A012431: Expansion of e.g.f. sech(arctan(x)*sin(x)) (only even powers).

The programs for A012431, there is no canonical definition to state claims against.
-/

/-! ## A012431.P11519609270429907566

`A012386(n)*A057077(A012432(n))`
-/

namespace A012431.P11519609270429907566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012386 n * A057077 (A012432 n).toNat

end

end A012431.P11519609270429907566

/-!
# A012432: exp(arctan(x)*arcsin(x))=1+2/2!*x^2+8/4!*x^4+158/6!*x^6+4104/8!*x^8...

The programs for A012432, there is no canonical definition to state claims against.
-/

/-! ## A012432.P15701362845905800967

`A055034(A188313(n)+A143328(n+1))`
-/

namespace A012432.P15701362845905800967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055034 (A188313 n + A143328 (n + 1)).toNat

end

end A012432.P15701362845905800967

/-!
# A012437: sinh(arctan(x)*arcsin(x))=2/2!*x^2-4/4!*x^4+278/6!*x^6-6984/8!*x^8...

The programs for A012437, there is no canonical definition to state claims against.
-/

/-! ## A012437.P2874186155572469983

`A012432(n+1)-A012441(n+1)`
-/

namespace A012437.P2874186155572469983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012432 (n + 1) - A012441 (n + 1)

end

end A012437.P2874186155572469983

/-!
# A012440: arctanh(arctan(x)*arcsin(x))=2/2!*x^2-4/4!*x^4+398/6!*x^6-10344/8!*x^8...

The programs for A012440, there is no canonical definition to state claims against.
-/

/-! ## A012440.P601506465309861871

`A008683(A012792(n))*A012753(n)`
-/

namespace A012440.P601506465309861871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A012792 n).toNat * A012753 n

end

end A012440.P601506465309861871

/-!
# A012443: sech(arctan(x)*arcsin(x))=1-12/4!*x^4+120/6!*x^6-1008/8!*x^8...

The programs for A012443, there is no canonical definition to state claims against.
-/

/-! ## A012443.P10079119840623382790

`A349632((n+1)*n!²)`
-/

namespace A012443.P10079119840623382790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349632 ((n + 1) * Nat.factorial n ^ 2)

end

end A012443.P10079119840623382790

/-!
# A012444: exp(arctan(x)*tan(x))=1+2/2!*x^2+12/4!*x^4+280/6!*x^6+7952/8!*x^8...

The programs for A012444, there is no canonical definition to state claims against.
-/

/-! ## A012444.P12128273774628801333

`or(2^n, A057508(A000182(n+1)))`
-/

namespace A012444.P12128273774628801333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (2 ^ n : ℤ) (A057508 (A000182 (n + 1)).toNat)

end

end A012444.P12128273774628801333

/-!
# A012445: sin(arctan(x)*tan(x))=2/2!*x^2+40/6!*x^6-2688/8!*x^8-31712/10!*x^10...

The programs for A012445, there is no canonical definition to state claims against.
-/

/-! ## A012445.P4153785344651326749

`A012453(A007299(n))+A012450(n+1)`
-/

namespace A012445.P4153785344651326749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012453 (A007299 n).toNat + A012450 (n + 1)

end

end A012445.P4153785344651326749

/-!
# A012446: arcsin(arctan(x)*tan(x))=2/2!*x^2+280/6!*x^6-2688/8!*x^8+1016608/10!*x^10...

The programs for A012446, there is no canonical definition to state claims against.
-/

/-! ## A012446.P1976115087692343983

`A012455(A007299(n))+A012449(n)`
-/

namespace A012446.P1976115087692343983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012455 (A007299 n).toNat + A012449 n

end

end A012446.P1976115087692343983

/-! ## A012446.P1889797697364871940

`A012444(n+1)-A012453(n+1)-A012453(A007299(n))`
-/

namespace A012446.P1889797697364871940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012444 (n + 1) - A012453 (n + 1) - A012453 (A007299 n).toNat

end

end A012446.P1889797697364871940

/-!
# A012447: arctan(arctan(x)*tan(x))=2/2!*x^2-80/6!*x^6-2688/8!*x^8+260608/10!*x^10...

The programs for A012447, there is no canonical definition to state claims against.
-/

/-! ## A012447.P25850373864392647

`∑[A143858(n+1)]-A290871(n+1)`
-/

namespace A012447.P25850373864392647
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143858 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A290871 (n + 1)

end

end A012447.P25850373864392647

/-!
# A012448: cos(arctan(x)*tan(x))=1-12/4!*x^4-7280/8!*x^8+241920/10!*x^10...

The programs for A012448, there is no canonical definition to state claims against.
-/

/-! ## A012448.P5956502632026830525

`A012431(n^A256069(n))`
-/

namespace A012448.P5956502632026830525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012431 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A256069 n : ℤ))).toNat

end

end A012448.P5956502632026830525

/-!
# A012449: sinh(arctan(x)*tan(x))=2/2!*x^2+280/6!*x^6-2688/8!*x^8+774688/10!*x^10...

The programs for A012449, there is no canonical definition to state claims against.
-/

/-! ## A012449.P17917953587269055620

`A012444(n+1)-A012453(n+1)`
-/

namespace A012449.P17917953587269055620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012444 (n + 1) - A012453 (n + 1)

end

end A012449.P17917953587269055620

/-! ## A012449.P8926210709057083286

`A012453(A007299(n))+A012446(n)`
-/

namespace A012449.P8926210709057083286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012453 (A007299 n).toNat + A012446 n

end

end A012449.P8926210709057083286

/-!
# A012450: arcsinh(arctan(x)*tan(x))=2/2!*x^2+40/6!*x^6-2688/8!*x^8+210208/10!*x^10...

The programs for A012450, there is no canonical definition to state claims against.
-/

/-! ## A012450.P823396392541457158

`A012448(A007299(n))+A012445(n)`
-/

namespace A012450.P823396392541457158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012448 (A007299 n).toNat + A012445 n

end

end A012450.P823396392541457158

/-!
# A012452: arctanh(arctan(x)*tan(x))=2/2!*x^2+400/6!*x^6-2688/8!*x^8...

The programs for A012452, there is no canonical definition to state claims against.
-/

/-! ## A012452.P3290568102594052289

`A008683(A012792(n))*A012755(n)`
-/

namespace A012452.P3290568102594052289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A012792 n).toNat * A012755 n

end

end A012452.P3290568102594052289

/-!
# A012454: sec(arctan(x)*tan(x))=1+12/4!*x^4+17360/8!*x^8-241920/10!*x^10...

The programs for A012454, there is no canonical definition to state claims against.
-/

/-! ## A012454.P10325582615901882971

`A012384(n^A256069(n))`
-/

namespace A012454.P10325582615901882971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012384 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A256069 n : ℤ))).toNat

end

end A012454.P10325582615901882971

/-!
# A012456: exp((arctan(x))^2)=1+2/2!*x^2-4/4!*x^4+8/6!*x^6+912/8!*x^8...

The programs for A012456, there is no canonical definition to state claims against.
-/

/-! ## A012456.P8239270850917596126

`A012465(n)+A012461(n)`
-/

namespace A012456.P8239270850917596126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012465 n + A012461 n

end

end A012456.P8239270850917596126

/-!
# A012459: Expansion of e.g.f. arctan(arctan(x)*arctan(x)) (even powers only).

The programs for A012459, there is no canonical definition to state claims against.
-/

/-! ## A012459.P12880139971617778716

`A012463(n*∑{e}[n+1, #-val(#!, 2)]^n)`
-/

namespace A012459.P12880139971617778716
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012463 ((n : ℤ) * (∑ p ∈ Nat.primeFactors (f1 n), ((Nat.factorization (f1 n) p : ℤ) - (SequenceMachineLib.valuation (Nat.factorial (Nat.factorization (f1 n) p)) 2 : ℤ))) ^ n).toNat

end

end A012459.P12880139971617778716

/-!
# A012461: sinh(arctan(x)*arctan(x))=2/2!*x^2-16/4!*x^4+488/6!*x^6-30336/8!*x^8...

The programs for A012461, there is no canonical definition to state claims against.
-/

/-! ## A012461.P8226954336098995054

`A012456(n)-A012465(n)`
-/

namespace A012461.P8226954336098995054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012456 n - A012465 n

end

end A012461.P8226954336098995054

/-!
# A012464: arctanh(arctan(x)*arctan(x))=2/2!*x^2-16/4!*x^4+608/6!*x^6-43776/8!*x^8...

The programs for A012464, there is no canonical definition to state claims against.
-/

/-! ## A012464.P4611042322710394032

`A008683(A012792(n))*A012757(n)`
-/

namespace A012464.P4611042322710394032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A012792 n).toNat * A012757 n

end

end A012464.P4611042322710394032

/-!
# A012465: cosh(arctan(x)*arctan(x))=1+12/4!*x^4-480/6!*x^6+31248/8!*x^8...

The programs for A012465, there is no canonical definition to state claims against.
-/

/-! ## A012465.P3762278094011064430

`A012456(n)-A012461(n)`
-/

namespace A012465.P3762278094011064430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012456 n - A012461 n

end

end A012465.P3762278094011064430

/-!
# A012467: Expansion of e.g.f. sech(arctan(x)^2), even powers only.

The programs for A012467, there is no canonical definition to state claims against.
-/

/-! ## A012467.P1907990462340354608

`A009052(n)*A048766(A009043(n))`
-/

namespace A012467.P1907990462340354608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009052 n * A048766 (A009043 n).toNat

end

end A012467.P1907990462340354608

/-!
# A012468: Expansion of e.g.f. arcsin(cos(x) * log(x+1)).

The programs for A012468, there is no canonical definition to state claims against.
-/

/-! ## A012468.P13103492367298332858

`A067815(A102206(n))-A009281(n)`
-/

namespace A012468.P13103492367298332858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067815 (A102206 n).toNat - A009281 n

end

end A012468.P13103492367298332858

/-!
# A012475: a(n) = (2*n+1) [x^(2*n+1)] arctan(cos(x)*sin(x)).

The programs for A012475, there is no canonical definition to state claims against.
-/

/-! ## A012475.P4896712720898968060

`(-1)^n*record[A009358(n+1)]`
-/

namespace A012475.P4896712720898968060
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009358 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A012475.P4896712720898968060

/-! ## A012475.P15950080419224326147

`(-1)^n*A009358(2*n+1)`
-/

namespace A012475.P15950080419224326147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A009358 (2 * n + 1)

end

end A012475.P15950080419224326147

/-! ## A012475.P17694703712139850741

`A009358(2*n+1)*A009384(2*n+1)`
-/

namespace A012475.P17694703712139850741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009358 (2 * n + 1) * A009384 (2 * n + 1)

end

end A012475.P17694703712139850741

/-!
# A012477: a(n) = (2*n+1) [x^(2*n+1)] arctanh(cos(x)*sin(x)).

The programs for A012477, there is no canonical definition to state claims against.
-/

/-! ## A012477.P17000049207312042730

`A009338(Δ[n²])`
-/

namespace A012477.P17000049207312042730
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009338 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A012477.P17000049207312042730

/-! ## A012477.P15712009553524546159

`A009338(2*n+1)-A000007(n+1)`
-/

namespace A012477.P15712009553524546159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009338 (2 * n + 1) - A000007 (n + 1)

end

end A012477.P15712009553524546159

/-!
# A012484: arctan(cos(x)*arcsin(x))=x-4/3!*x^3+68/5!*x^5-3064/7!*x^7+265936/9!*x^9...

The programs for A012484, there is no canonical definition to state claims against.
-/

/-! ## A012484.P12430227354027707499

`A013207(2*n+1)*A057078(A114220(3*n+1))`
-/

namespace A012484.P12430227354027707499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013207 (2 * n + 1) * A057078 (A114220 (3 * n + 1)).toNat

end

end A012484.P12430227354027707499

/-!
# A012485: cos(cos(x)*arcsin(x))=1-1/2!*x^2+9/4!*x^4-105/6!*x^6+1393/8!*x^8...

The programs for A012485, there is no canonical definition to state claims against.
-/

/-! ## A012485.P5610959945704303778

`(-1)^n*A012771(A004277(n))`
-/

namespace A012485.P5610959945704303778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A012771 (A004277 n).toNat

end

end A012485.P5610959945704303778

/-! ## A012485.P15017376175259478930

`A012771(2*n)/A012763(Δ[or(1, n)])`
-/

namespace A012485.P15017376175259478930
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A012771 (2 * n) : ℚ) / (A012763 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ)

end

end A012485.P15017376175259478930

/-! ## A012485.P6414129010564885918

`A012771(2*n)*A128834(3*n+1)`
-/

namespace A012485.P6414129010564885918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012771 (2 * n) * A128834 (3 * n + 1)

end

end A012485.P6414129010564885918

/-!
# A012486: sinh(cos(x)*arcsin(x))=x-1/3!*x^3-15/5!*x^5+359/7!*x^7+3713/9!*x^9...

The programs for A012486, there is no canonical definition to state claims against.
-/

/-! ## A012486.P9554599450813325259

`A012480(Δ[n²])`
-/

namespace A012486.P9554599450813325259
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012480 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A012486.P9554599450813325259

/-! ## A012486.P2343659688978520483

`or(1, A012480(A005408(n)))`
-/

namespace A012486.P2343659688978520483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A012480 (A005408 n).toNat)

end

end A012486.P2343659688978520483

/-! ## A012486.P14893799889848672125

`or(1, A012480(A004277(n)+1))`
-/

namespace A012486.P14893799889848672125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A012480 (A004277 n + 1).toNat)

end

end A012486.P14893799889848672125

/-! ## A012486.P2587801201964441044

`or(1, A012480(A005843(n)+1))`
-/

namespace A012486.P2587801201964441044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A012480 (A005843 n + 1).toNat)

end

end A012486.P2587801201964441044

/-!
# A012489: arctanh(cos(x)*arcsin(x))=x-12/5!*x^5-168/7!*x^7+8144/9!*x^9...

The programs for A012489, there is no canonical definition to state claims against.
-/

/-! ## A012489.P11298521569328391773

`A013195(Δ[n²])`
-/

namespace A012489.P11298521569328391773
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013195 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A012489.P11298521569328391773

/-! ## A012489.P11866233702650569381

`and(-3, A013195(2*n+1))`
-/

namespace A012489.P11866233702650569381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-3) (A013195 (2 * n + 1))

end

end A012489.P11866233702650569381

/-! ## A012489.P10181685007892165138

`A007318(C(2*n, 2))*A013195(2*n+1)`
-/

namespace A012489.P10181685007892165138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose (2 * n) 2) * A013195 (2 * n + 1)

end

end A012489.P10181685007892165138

/-! ## A012489.P17689316094289422298

`A007318(∑[n])*A013195(A005408(n))`
-/

namespace A012489.P17689316094289422298
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * A013195 (A005408 n).toNat

end

end A012489.P17689316094289422298

/-! ## A012489.P10179523190001254489

`A007318(A007318(A007318(A007318(n))²))*A013195(2*n+1)`
-/

namespace A012489.P10179523190001254489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A007318 (A007318 (A007318 n).toNat ^ 2).toNat).toNat * A013195 (2 * n + 1)

end

end A012489.P10179523190001254489

/-!
# A012490: cosh(cos(x)*arcsin(x))=1+1/2!*x^2-7/4!*x^4+25/6!*x^6+1297/8!*x^8...

The programs for A012490, there is no canonical definition to state claims against.
-/

/-! ## A012490.P3883740212725608388

`A012480(2*n)`
-/

namespace A012490.P3883740212725608388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012480 (2 * n)

end

end A012490.P3883740212725608388

/-! ## A012490.P2032180420097470103

`or(1, A012480(A004277(n)))`
-/

namespace A012490.P2032180420097470103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A012480 (A004277 n).toNat)

end

end A012490.P2032180420097470103

/-! ## A012490.P16541200015739608975

`or(1, A012480(A005843(n)))`
-/

namespace A012490.P16541200015739608975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A012480 (A005843 n).toNat)

end

end A012490.P16541200015739608975

/-! ## A012490.P11217572189900017725

`A012480(A005843(n))^A014963(A322676(n+1))`
-/

namespace A012490.P11217572189900017725
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A012480 (A005843 n).toNat : ℚ) ^ (A014963 (A322676 (n + 1)).toNat : ℤ)

end

end A012490.P11217572189900017725

/-! ## A012490.P17239697333217254126

`A012480(A005843(n))/A014963(A256647(n+1))`
-/

namespace A012490.P17239697333217254126
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A012480 (A005843 n).toNat : ℚ) / (A014963 (A256647 (n + 1)).toNat : ℚ)

end

end A012490.P17239697333217254126

/-!
# A012493: Take every 5th term of Padovan sequence A000931, beginning with the fifth term.

The programs for A012493, the canonical program `A012493.P17492376463677172932` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A012493 has offset 0).

The definition of A012493 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 165 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A012493.P343963429774145811

`Δ[A012864(n)]`
-/

namespace A012493.P343963429774145811
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012864 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A012493.P343963429774145811

namespace A012493

/-- `Δ[A012864(n)]` -/
def P343963429774145811.Spec : Prop :=
  ∀ n, P343963429774145811.a n = A012493 n

end A012493

/-! ## A012493.P17492376463677172932

`Δ[A000931(5*n)]`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A012493

/-- `Δ[A000931(5*n)]` -/
def P17492376463677172932.Spec : Prop :=
  ∀ n, P17492376463677172932.a n = A012493 n

theorem P17492376463677172932.correct : P17492376463677172932.Spec := by
  intro n
  simp only [A012493]

end A012493

/-! ## A012493.P17026605543754120130

`∑[A176476(n)]+n`
-/

namespace A012493.P17026605543754120130
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176476 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A012493.P17026605543754120130

namespace A012493

/-- `∑[A176476(n)]+n` -/
def P17026605543754120130.Spec : Prop :=
  ∀ n, P17026605543754120130.a n = A012493 n

end A012493

/-! ## A012493.P702367306537834849

`A182097(5*n+1)`
-/

namespace A012493.P702367306537834849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182097 (5 * n + 1)

end

end A012493.P702367306537834849

namespace A012493

/-- `A182097(5*n+1)` -/
def P702367306537834849.Spec : Prop :=
  ∀ n, P702367306537834849.a n = A012493 n

end A012493

/-! ## A012493.P725405574738555961

`A000931(5*n+4)`
-/

namespace A012493.P725405574738555961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000931 (5 * n + 4)

end

end A012493.P725405574738555961

namespace A012493

/-- `A000931(5*n+4)` -/
def P725405574738555961.Spec : Prop :=
  ∀ n, P725405574738555961.a n = A012493 n

end A012493

/-! ## A012493.P14234304885528146748

`A078027(5*n+6)`
-/

namespace A012493.P14234304885528146748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078027 (5 * n + 6)

end

end A012493.P14234304885528146748

namespace A012493

/-- `A078027(5*n+6)` -/
def P14234304885528146748.Spec : Prop :=
  ∀ n, P14234304885528146748.a n = A012493 n

end A012493

/-! ## A012493.P978370301322253917

`A133034(5*n+8)`
-/

namespace A012493.P978370301322253917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133034 (5 * n + 8)

end

end A012493.P978370301322253917

namespace A012493

/-- `A133034(5*n+8)` -/
def P978370301322253917.Spec : Prop :=
  ∀ n, P978370301322253917.a n = A012493 n

end A012493

/-! ## A012493.P10479278175673746646

`∑[∑[A012814(n)]]+n`
-/

namespace A012493.P10479278175673746646
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012814 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A012493.P10479278175673746646

namespace A012493

/-- `∑[∑[A012814(n)]]+n` -/
def P10479278175673746646.Spec : Prop :=
  ∀ n, P10479278175673746646.a n = A012493 n

end A012493

/-! ## A012493.P12598214768600344306

`∑[A012855(n+3)]-1`
-/

namespace A012493.P12598214768600344306
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012855 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A012493.P12598214768600344306

namespace A012493

/-- `∑[A012855(n+3)]-1` -/
def P12598214768600344306.Spec : Prop :=
  ∀ n, P12598214768600344306.a n = A012493 n

end A012493

/-! ## A012493.P15666941833845370770

`A127682(A017281(n))`
-/

namespace A012493.P15666941833845370770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127682 (A017281 n).toNat

end

end A012493.P15666941833845370770

namespace A012493

/-- `A127682(A017281(n))` -/
def P15666941833845370770.Spec : Prop :=
  ∀ n, P15666941833845370770.a n = A012493 n

end A012493

/-! ## A012493.P15778947405105713527

`∑[A182097(A008706(n))]`
-/

namespace A012493.P15778947405105713527
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182097 (A008706 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A012493.P15778947405105713527

namespace A012493

/-- `∑[A182097(A008706(n))]` -/
def P15778947405105713527.Spec : Prop :=
  ∀ n, P15778947405105713527.a n = A012493 n

end A012493

/-! ## A012493.P12320091928089593003

`A127682(A017305(n)-2)`
-/

namespace A012493.P12320091928089593003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127682 (A017305 n - 2).toNat

end

end A012493.P12320091928089593003

namespace A012493

/-- `A127682(A017305(n)-2)` -/
def P12320091928089593003.Spec : Prop :=
  ∀ n, P12320091928089593003.a n = A012493 n

end A012493

/-! ## A012493.P2083410730595160789

`A012814(n)+A012781(n)`
-/

namespace A012493.P2083410730595160789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012814 n + A012781 n

end

end A012493.P2083410730595160789

namespace A012493

/-- `A012814(n)+A012781(n)` -/
def P2083410730595160789.Spec : Prop :=
  ∀ n, P2083410730595160789.a n = A012493 n

end A012493

/-! ## A012493.P11194318491122694690

`A012772(n)-A012864(n)`
-/

namespace A012493.P11194318491122694690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012772 n - A012864 n

end

end A012493.P11194318491122694690

namespace A012493

/-- `A012772(n)-A012864(n)` -/
def P11194318491122694690.Spec : Prop :=
  ∀ n, P11194318491122694690.a n = A012493 n

end A012493

/-! ## A012493.P9531715751496688110

`A228361(A135042(n+1)-1)`
-/

namespace A012493.P9531715751496688110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228361 (A135042 (n + 1) - 1).toNat

end

end A012493.P9531715751496688110

namespace A012493

/-- `A228361(A135042(n+1)-1)` -/
def P9531715751496688110.Spec : Prop :=
  ∀ n, P9531715751496688110.a n = A012493 n

end A012493

/-! ## A012493.P9588650904025230442

`A012864(n+1)-A012864(n)`
-/

namespace A012493.P9588650904025230442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012864 (n + 1) - A012864 n

end

end A012493.P9588650904025230442

namespace A012493

/-- `A012864(n+1)-A012864(n)` -/
def P9588650904025230442.Spec : Prop :=
  ∀ n, P9588650904025230442.a n = A012493 n

end A012493

/-! ## A012493.P17927348989495289995

`A012880(n+1)-A012855(n+2)`
-/

namespace A012493.P17927348989495289995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012880 (n + 1) - A012855 (n + 2)

end

end A012493.P17927348989495289995

namespace A012493

/-- `A012880(n+1)-A012855(n+2)` -/
def P17927348989495289995.Spec : Prop :=
  ∀ n, P17927348989495289995.a n = A012493 n

end A012493

/-! ## A012493.P13157560649539563643

`A228361(A004274(2*n+1)+n)`
-/

namespace A012493.P13157560649539563643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228361 (A004274 (2 * n + 1) + (n : ℤ)).toNat

end

end A012493.P13157560649539563643

namespace A012493

/-- `A228361(A004274(2*n+1)+n)` -/
def P13157560649539563643.Spec : Prop :=
  ∀ n, P13157560649539563643.a n = A012493 n

end A012493

/-! ## A012493.P15356409354262984775

`A228361(A004280(2*n+1)+n)`
-/

namespace A012493.P15356409354262984775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228361 (A004280 (2 * n + 1) + (n : ℤ)).toNat

end

end A012493.P15356409354262984775

namespace A012493

/-- `A228361(A004280(2*n+1)+n)` -/
def P15356409354262984775.Spec : Prop :=
  ∀ n, P15356409354262984775.a n = A012493 n

end A012493

/-!
# A012494: Expansion of e.g.f. arctan(sin(x)) (odd powers only).

The programs for A012494, there is no canonical definition to state claims against.
-/

/-! ## A012494.P14786820200580421779

`A003704(Δ[n²])/(-1)^n`
-/

namespace A012494.P14786820200580421779
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003704 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ) / ((-1) ^ n : ℚ)

end

end A012494.P14786820200580421779

/-! ## A012494.P3135055782767445142

`(-1)^n*A003704(A005408(n))`
-/

namespace A012494.P3135055782767445142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A003704 (A005408 n).toNat

end

end A012494.P3135055782767445142

/-! ## A012494.P6872720808829684881

`A003704(2*n+1)*A033999(n)`
-/

namespace A012494.P6872720808829684881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003704 (2 * n + 1) * A033999 n

end

end A012494.P6872720808829684881

/-! ## A012494.P11388047703640462584

`A003704(2*n+1)*A062157(n+1)`
-/

namespace A012494.P11388047703640462584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003704 (2 * n + 1) * A062157 (n + 1)

end

end A012494.P11388047703640462584

/-! ## A012494.P9566385824657066434

`A013208(2*n+1)*A033999(n)`
-/

namespace A012494.P9566385824657066434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013208 (2 * n + 1) * A033999 n

end

end A012494.P9566385824657066434

/-!
# A012497: sin(cos(x)*arctan(x))=x-6/3!*x^3+100/5!*x^5-4256/7!*x^7+302352/9!*x^9...

The programs for A012497, there is no canonical definition to state claims against.
-/

/-! ## A012497.P4386661934010796039

`A012773(2*n+1)*A033999(n)`
-/

namespace A012497.P4386661934010796039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012773 (2 * n + 1) * A033999 n

end

end A012497.P4386661934010796039

