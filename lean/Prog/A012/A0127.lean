import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C004
import Seq.B000.C006
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C012
import Seq.B000.C014
import Seq.B000.C016
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C025
import Seq.B000.C029
import Seq.B000.C038
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C003
import Seq.B001.C006
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C005
import Seq.B003.C003
import Seq.B004.C000
import Seq.B004.C001
import Seq.B005.C000
import Seq.B007.C000
import Seq.B009.C000
import Seq.B010.C000
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
import Seq.Opaque.C016
import Seq.Opaque.C017
import Seq.Opaque.C018
import Seq.Opaque.C020
import Seq.Opaque.C021
import Seq.Opaque.C022
import Seq.Opaque.C023

/-!
# A012700: Expansion of e.g.f. tan(arctanh(x) * log(x+1)).

The programs for A012700, there is no canonical definition to state claims against.
-/

/-! ## A012700.P8674355257693408469

`A012705(n)^(n-∑{digits}[n, #])!`
-/

namespace A012700.P8674355257693408469
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012705 n ^ Nat.factorial ((n : ℤ) - ((((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum : ℕ) : ℤ)).toNat

end

end A012700.P8674355257693408469

/-! ## A012700.P393149635543620928

`A012705(lcm(n, n-3*floor(n/10)))`
-/

namespace A012700.P393149635543620928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012705 (Int.lcm (n : ℤ) ((n : ℤ) - 3 * ⌊(n : ℚ) / 10⌋))

end

end A012700.P393149635543620928

/-! ## A012700.P18141746370619419965

`A012705(A002998(n))`
-/

namespace A012700.P18141746370619419965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012705 (A002998 n).toNat

end

end A012700.P18141746370619419965

/-! ## A012700.P8998222960673624172

`A012705(A082216(n))`
-/

namespace A012700.P8998222960673624172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012705 (A082216 n).toNat

end

end A012700.P8998222960673624172

/-! ## A012700.P15418964650598598279

`A012705(A087051(n))`
-/

namespace A012700.P15418964650598598279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012705 (A087051 n).toNat

end

end A012700.P15418964650598598279

/-!
# A012701: arctan(arctanh(x)*log(x+1))=2/2!*x^2-3/3!*x^3+16/4!*x^4-50/5!*x^5...

The programs for A012701, there is no canonical definition to state claims against.
-/

/-! ## A012701.P15940216821174012727

`A012358(n)%A141214(A048328(n))`
-/

namespace A012701.P15940216821174012727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A012358 n) (A141214 (A048328 n).toNat)

end

end A012701.P15940216821174012727

/-! ## A012701.P14803829248407101112

`A012355(n)%A281230(A281231(n))`
-/

namespace A012701.P14803829248407101112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A012355 n) (A281230 (A281231 n).toNat)

end

end A012701.P14803829248407101112

/-!
# A012703: Expansion of e.g.f.: sinh(arctanh(x)*log(x+1))=2/2!*x^2-3/3!*x^3+16/4!*x^4-50/5!*x^5...

The programs for A012703, there is no canonical definition to state claims against.
-/

/-! ## A012703.P4736955743031882659

`A012697(n)-A012706(n)`
-/

namespace A012703.P4736955743031882659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012697 n - A012706 n

end

end A012703.P4736955743031882659

/-!
# A012706: Expansion of e.g.f.: cosh(arctanh(x)*log(x+1)) = 1+12/4!*x^4-60/5!*x^5+570/6!*x^6...

The programs for A012706, there is no canonical definition to state claims against.
-/

/-! ## A012706.P1947014371089707208

`A012697(n)-A012703(n)`
-/

namespace A012706.P1947014371089707208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012697 n - A012703 n

end

end A012706.P1947014371089707208

/-! ## A012706.P16299810898170617419

`A012697(A004903(n+1))-A012699(n)`
-/

namespace A012706.P16299810898170617419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012697 (A004903 (n + 1)).toNat - A012699 n

end

end A012706.P16299810898170617419

/-!
# A012709: exp(arctanh(x)*exp(x))=1+x+3/2!*x^2+12/3!*x^3+57/4!*x^4+340/5!*x^5...

The programs for A012709, there is no canonical definition to state claims against.
-/

/-! ## A012709.P4565051838936009078

`A012718(n)+A012715(n)`
-/

namespace A012709.P4565051838936009078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012718 n + A012715 n

end

end A012709.P4565051838936009078

/-! ## A012709.P4410484015445608105

`A012718(n)-A012715(n)*A057428(n)`
-/

namespace A012709.P4410484015445608105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012718 n - A012715 n * A057428 n

end

end A012709.P4410484015445608105

/-! ## A012709.P10486380881574308241

`A012718(A004186(n))-A001489(A012715(n))`
-/

namespace A012709.P10486380881574308241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012718 (A004186 n).toNat - A001489 (A012715 n).toNat

end

end A012709.P10486380881574308241

/-!
# A012711: Expansion of e.g.f. arcsin(arctanh(x) * exp(x)).

The programs for A012711, there is no canonical definition to state claims against.
-/

/-! ## A012711.P14120566689232391162

`A289437(A335630(n)+A168680(n))`
-/

namespace A012711.P14120566689232391162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289437 (A335630 n + A168680 n).toNat

end

end A012711.P14120566689232391162

/-! ## A012711.P14125335274742408853

`A324839(n+2)*A324841(A324844(n+1))`
-/

namespace A012711.P14125335274742408853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324839 (n + 2) * A324841 (A324844 (n + 1)).toNat

end

end A012711.P14125335274742408853

/-!
# A012713: E.g.f.: arctan(arctanh(x)*exp(x))=x+2/2!*x^2+3/3!*x^3-12/4!*x^4-147/5!*x^5...

The programs for A012713, there is no canonical definition to state claims against.
-/

/-! ## A012713.P15417597078686441079

`n-∑[A341880(n!²)]`
-/

namespace A012713.P15417597078686441079
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341880 (Nat.factorial n ^ 2 + 16)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A012713.P15417597078686441079

/-! ## A012713.P16734970761924350016

`n-∑[A292373(∑[n]²²)]`
-/

namespace A012713.P16734970761924350016
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292373 (((∑ j ∈ Finset.range (n + 1), f2 j) ^ 2) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A012713.P16734970761924350016

/-!
# A012715: Expansion of e.g.f. sinh(arctanh(x) * exp(x)).

The programs for A012715, there is no canonical definition to state claims against.
-/

/-! ## A012715.P16828246979598912967

`A012709(n)-A012718(n)`
-/

namespace A012715.P16828246979598912967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012709 n - A012718 n

end

end A012715.P16828246979598912967

/-! ## A012715.P4783127679628672348

`A012709(n)+A012718(n)*A057428(n+1)`
-/

namespace A012715.P4783127679628672348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012709 n + A012718 n * A057428 (n + 1)

end

end A012715.P4783127679628672348

/-! ## A012715.P2820088996188680523

`A001405(n)*A002487(A144086(n))`
-/

namespace A012715.P2820088996188680523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001405 n * A002487 (A144086 n).toNat

end

end A012715.P2820088996188680523

/-!
# A012716: arcsinh(arctanh(x)*exp(x))=x+2/2!*x^2+4/3!*x^3-52/5!*x^5-440/6!*x^6...

The programs for A012716, there is no canonical definition to state claims against.
-/

/-! ## A012716.P15384329478172092289

`eq[0, floor(2*sqrt(n))%2]-A137722(n!)`
-/

namespace A012716.P15384329478172092289
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌊2 * Real.sqrt (n : ℝ)⌋ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ) - A137722 (Nat.factorial n)

end

end A012716.P15384329478172092289

/-! ## A012716.P11562656960360570978

`A018293(A006093(n+1))-A184718(n+1)`
-/

namespace A012716.P11562656960360570978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018293 (A006093 (n + 1)).toNat - A184718 (n + 1)

end

end A012716.P11562656960360570978

/-!
# A012717: arctanh(arctanh(x)*exp(x))=x+2/2!*x^2+7/3!*x^3+36/4!*x^4+293/5!*x^5...

The programs for A012717, there is no canonical definition to state claims against.
-/

/-! ## A012717.P5634255758509511084

`A192047(A372076(n+1))`
-/

namespace A012717.P5634255758509511084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192047 (A372076 (n + 1)).toNat

end

end A012717.P5634255758509511084

/-! ## A012717.P10489778717856050189

`A096397(A122704(n))+n`
-/

namespace A012717.P10489778717856050189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096397 (A122704 n).toNat + (n : ℤ)

end

end A012717.P10489778717856050189

/-!
# A012718: cosh(arctanh(x)*exp(x))=1+1/2!*x^2+6/3!*x^3+33/4!*x^4+180/5!*x^5...

The programs for A012718, there is no canonical definition to state claims against.
-/

/-! ## A012718.P17855265005516777772

`A012709(n)-A012715(n)`
-/

namespace A012718.P17855265005516777772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012709 n - A012715 n

end

end A012718.P17855265005516777772

/-! ## A012718.P8920435274265255647

`A012709(n)+A012715(n)*A057428(n)`
-/

namespace A012718.P8920435274265255647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012709 n + A012715 n * A057428 n

end

end A012718.P8920435274265255647

/-! ## A012718.P7476220382765140073

`A351813(n)-A166698(A220574(n+1))`
-/

namespace A012718.P7476220382765140073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351813 n - A166698 (A220574 (n + 1)).toNat

end

end A012718.P7476220382765140073

/-!
# A012719: sec(arctanh(x)*exp(x))=1+1/2!*x^2+6/3!*x^3+37/4!*x^4+260/5!*x^5...

The programs for A012719, there is no canonical definition to state claims against.
-/

/-! ## A012719.P3544461984598694625

`or(A088312(n), A091231(A020059(n)))`
-/

namespace A012719.P3544461984598694625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A088312 n) (A091231 (A020059 n).toNat)

end

end A012719.P3544461984598694625

/-!
# A012721: exp(arctanh(x)*sin(x))=1+2/2!*x^2+16/4!*x^4+350/6!*x^6+16280/8!*x^8...

The programs for A012721, there is no canonical definition to state claims against.
-/

/-! ## A012721.P10932014774750018234

`A100476(3*n+1)*A100495(A100446(n))`
-/

namespace A012721.P10932014774750018234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100476 (3 * n + 1) * A100495 (A100446 n).toNat

end

end A012721.P10932014774750018234

/-!
# A012723: exp(arctanh(x)*arcsin(x))=1+2/2!*x^2+24/4!*x^4+718/6!*x^6+40040/8!*x^8...

The programs for A012723, there is no canonical definition to state claims against.
-/

/-! ## A012723.P15428468239969755852

`abs(2*A012631(n)-A012622(n))`
-/

namespace A012723.P15428468239969755852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 * A012631 n - A012622 n|

end

end A012723.P15428468239969755852

/-!
# A012724: sinh(arctanh(x)*arcsin(x))=2/2!*x^2+12/4!*x^4+358/6!*x^6+19992/8!*x^8...

The programs for A012724, there is no canonical definition to state claims against.
-/

/-! ## A012724.P14175415082211773340

`abs(A012622(n+1)-A012631(n+1))`
-/

namespace A012724.P14175415082211773340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A012622 (n + 1) - A012631 (n + 1)|

end

end A012724.P14175415082211773340

/-!
# A012725: Expansion of e.g.f. exp(arctanh(x)*tan(x)) (even powers only).

The programs for A012725, there is no canonical definition to state claims against.
-/

/-! ## A012725.P10177692730754159955

`A222254(A048163(n+1))*A345163(3*n+1)`
-/

namespace A012725.P10177692730754159955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222254 (A048163 (n + 1)).toNat * A345163 (3 * n + 1)

end

end A012725.P10177692730754159955

/-!
# A012727: exp(arctanh(x)*arctan(x))=1+2/2!*x^2+12/4!*x^4+328/6!*x^6+13328/8!*x^8...

The programs for A012727, there is no canonical definition to state claims against.
-/

/-! ## A012727.P13555029236582657510

`lcm(A036234(A125861(n)), A154222(n))`
-/

namespace A012727.P13555029236582657510
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A036234 (A125861 n).toNat) (A154222 n)

end

end A012727.P13555029236582657510

/-!
# A012734: arctanh(arctanh(x)*arctan(x))=2/2!*x^2+448/6!*x^6+2380032/10!*x^10...

The programs for A012734, there is no canonical definition to state claims against.
-/

/-! ## A012734.P11520128637804274442

`record[A296623(n+1)]`
-/

namespace A012734.P11520128637804274442
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296623 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A012734.P11520128637804274442

/-! ## A012734.P10468844873013368895

`A296623(2*n+1)`
-/

namespace A012734.P10468844873013368895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296623 (2 * n + 1)

end

end A012734.P10468844873013368895

/-!
# A012735: cosh(arctanh(x)*arctan(x)) = 1+12/4!*x^4+13328/8!*x^8+123701952/12!*x^12...

The programs for A012735, there is no canonical definition to state claims against.
-/

/-! ## A012735.P18026141259634206553

`A012727(2*n)`
-/

namespace A012735.P18026141259634206553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012727 (2 * n)

end

end A012735.P18026141259634206553

/-!
# A012739: sin(arctanh(x)*cos(x))=x-2/3!*x^3+20/5!*x^5-16/7!*x^7+14096/9!*x^9...

The programs for A012739, there is no canonical definition to state claims against.
-/

/-! ## A012739.P8705357339205389497

`A012768(2*n+1)*A033999(n)`
-/

namespace A012739.P8705357339205389497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012768 (2 * n + 1) * A033999 n

end

end A012739.P8705357339205389497

/-! ## A012739.P6129021506941209563

`A012768(2*n+1)/2*A131714(3*n+4)`
-/

namespace A012739.P6129021506941209563
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A012768 (2 * n + 1) : ℚ) / 2 * (A131714 (3 * n + 4) : ℚ)

end

end A012739.P6129021506941209563

/-! ## A012739.P9559116793877971190

`A012768(A005408(n))/A033999(n)`
-/

namespace A012739.P9559116793877971190
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A012768 (A005408 n).toNat : ℚ) / (A033999 n : ℚ)

end

end A012739.P9559116793877971190

/-! ## A012739.P4051437795043412882

`A012742(n)%2*A012768(2*n+1)`
-/

namespace A012739.P4051437795043412882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A012742 n) 2 * A012768 (2 * n + 1)

end

end A012739.P4051437795043412882

/-!
# A012740: arcsin(arctanh(x)*cos(x))=x+8/5!*x^5+448/7!*x^7+32384/9!*x^9...

The programs for A012740, there is no canonical definition to state claims against.
-/

/-! ## A012740.P11886195673015266005

`A000027(A010050(n))-A009764(n)`
-/

namespace A012740.P11886195673015266005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A010050 n).toNat - A009764 n

end

end A012740.P11886195673015266005

/-!
# A012743: cos(arctanh(x)*cos(x))=1-1/2!*x^2+5/4!*x^4-85/6!*x^6-887/8!*x^8...

The programs for A012743, there is no canonical definition to state claims against.
-/

/-! ## A012743.P7117902141968362311

`A012768(2*n)*A033999(n)`
-/

namespace A012743.P7117902141968362311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012768 (2 * n) * A033999 n

end

end A012743.P7117902141968362311

/-! ## A012743.P11382669591710681188

`(-1)^n*A012768(A004277(n))`
-/

namespace A012743.P11382669591710681188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A012768 (A004277 n).toNat

end

end A012743.P11382669591710681188

/-! ## A012743.P11139199803604837331

`A012768(A004277(n))/A033999(n)`
-/

namespace A012743.P11139199803604837331
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A012768 (A004277 n).toNat : ℚ) / (A033999 n : ℚ)

end

end A012743.P11139199803604837331

/-!
# A012744: sinh(arctanh(x)*cos(x))=x+504/7!*x^7+24384/9!*x^9+2375296/11!*x^11...

The programs for A012744, there is no canonical definition to state claims against.
-/

/-! ## A012744.P11689882201151864517

`A012738(Δ[n²])`
-/

namespace A012744.P11689882201151864517
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012738 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A012744.P11689882201151864517

/-! ## A012744.P15465878164814432829

`abs(A012738(2*n+1))`
-/

namespace A012744.P15465878164814432829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A012738 (2 * n + 1)|

end

end A012744.P15465878164814432829

/-! ## A012744.P6462547415993188288

`A025444(n)+A012738(A005408(n))`
-/

namespace A012744.P6462547415993188288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025444 n + A012738 (A005408 n).toNat

end

end A012744.P6462547415993188288

/-! ## A012744.P10331391121721282555

`A025469(n)+A012738(A005408(n))`
-/

namespace A012744.P10331391121721282555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025469 n + A012738 (A005408 n).toNat

end

end A012744.P10331391121721282555

/-! ## A012744.P5938623942639974616

`gcd(A000041(n+1)*A012738(2*n+1), A012738(2*n+1))`
-/

namespace A012744.P5938623942639974616
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000041 (n + 1) * A012738 (2 * n + 1)) (A012738 (2 * n + 1))

end

end A012744.P5938623942639974616

/-!
# A012746: arctanh(arctanh(x)*cos(x)) = x+1/3!*x^3+13/5!*x^5+677/7!*x^7+54937/9!*x^9...

The programs for A012746, there is no canonical definition to state claims against.
-/

/-! ## A012746.P8311668175059117853

`A013200(Δ[n²])`
-/

namespace A012746.P8311668175059117853
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013200 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A012746.P8311668175059117853

/-! ## A012746.P10986112217373708872

`or(1, record[A013200(n)])`
-/

namespace A012746.P10986112217373708872
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013200 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A012746.P10986112217373708872

/-! ## A012746.P6007777864563456886

`abs(A013200(2*n+1))`
-/

namespace A012746.P6007777864563456886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A013200 (2 * n + 1)|

end

end A012746.P6007777864563456886

/-! ## A012746.P2577472992854114818

`or(1, A013200(A005408(n)))`
-/

namespace A012746.P2577472992854114818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A013200 (A005408 n).toNat)

end

end A012746.P2577472992854114818

/-! ## A012746.P5537580951292014789

`A000007(n)+record[A013200(n)]`
-/

namespace A012746.P5537580951292014789
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013200 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A012746.P5537580951292014789

/-!
# A012747: cosh(arctanh(x)*cos(x))=1+1/2!*x^2-3/4!*x^4+45/6!*x^6+2457/8!*x^8...

The programs for A012747, there is no canonical definition to state claims against.
-/

/-! ## A012747.P11872470793680501255

`A012738(2*n)`
-/

namespace A012747.P11872470793680501255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012738 (2 * n)

end

end A012747.P11872470793680501255

/-! ## A012747.P6788582668966912029

`or(1, A012738(A004277(n)))`
-/

namespace A012747.P6788582668966912029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A012738 (A004277 n).toNat)

end

end A012747.P6788582668966912029

/-! ## A012747.P7413942786511259793

`or(1, A012738(A005843(n)))`
-/

namespace A012747.P7413942786511259793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A012738 (A005843 n).toNat)

end

end A012747.P7413942786511259793

/-! ## A012747.P14759977796801155848

`A012738(A004277(n))^A000108(C(2, n))`
-/

namespace A012747.P14759977796801155848
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A012738 (A004277 n).toNat : ℚ) ^ (A000108 (Nat.choose 2 n) : ℤ)

end

end A012747.P14759977796801155848

/-! ## A012747.P17379657700140212235

`A012738(A004277(n))^A000041(gcd(n, n+1))`
-/

namespace A012747.P17379657700140212235
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A012738 (A004277 n).toNat : ℚ) ^ (A000041 (Nat.gcd n (n + 1)) : ℤ)

end

end A012747.P17379657700140212235

/-!
# A012748: Expansion of e.g.f. sec(arctanh(x)*cos(x)), only even powers.

The programs for A012748, there is no canonical definition to state claims against.
-/

/-! ## A012748.P2735818964229228084

`A193472(floor(sqrt(n^n)))`
-/

namespace A012748.P2735818964229228084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193472 (Nat.sqrt (n ^ n))

end

end A012748.P2735818964229228084

/-!
# A012749: sech(arctanh(x)*cos(x))=1-1/2!*x^2+9/4!*x^4-225/6!*x^6+6993/8!*x^8...

The programs for A012749, there is no canonical definition to state claims against.
-/

/-! ## A012749.P11604687979924191372

`A026741(A012831(n))*A033999(n)`
-/

namespace A012749.P11604687979924191372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A012831 n).toNat * A033999 n

end

end A012749.P11604687979924191372

/-!
# A012751: tan(arctanh(x)*sinh(x))=2/2!*x^2+12/4!*x^4+430/6!*x^6+27384/8!*x^8...

The programs for A012751, there is no canonical definition to state claims against.
-/

/-! ## A012751.P14164919726481028870

`∑{d}[A012428(n), A000010(#)]`
-/

namespace A012751.P14164919726481028870
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012428 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A012751.P14164919726481028870

/-!
# A012753: tan(arctanh(x)*arcsinh(x))=2/2!*x^2+4/4!*x^4+398/6!*x^6+10344/8!*x^8...

The programs for A012753, there is no canonical definition to state claims against.
-/

/-! ## A012753.P12034404270996680178

`A245092(abs(A012440(n)))`
-/

namespace A012753.P12034404270996680178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245092 |A012440 n|.toNat

end

end A012753.P12034404270996680178

/-!
# A012754: exp(arctanh(x)*tanh(x)) = 1+2/2!*x^2+12/4!*x^4+280/6!*x^6+13328/8!*x^8...

The programs for A012754, there is no canonical definition to state claims against.
-/

/-! ## A012754.P2776851781284890432

`A005349(A323819(n)+A054620(n))`
-/

namespace A012754.P2776851781284890432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005349 (A323819 n + A054620 n).toNat

end

end A012754.P2776851781284890432

/-!
# A012755: tan(arctanh(x)*tanh(x))=2/2!*x^2+400/6!*x^6+2688/8!*x^8...

The programs for A012755, there is no canonical definition to state claims against.
-/

/-! ## A012755.P16611821313119489735

`∑{d}[A012452(n), A000010(#)]`
-/

namespace A012755.P16611821313119489735
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012452 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A012755.P16611821313119489735

/-!
# A012756: exp(arctanh(x)*arctanh(x))=1+2/2!*x^2+28/4!*x^4+968/6!*x^6+61584/8!*x^8...

The programs for A012756, there is no canonical definition to state claims against.
-/

/-! ## A012756.P17062697833168995188

`abs(A012461(n)-A012465(n))`
-/

namespace A012756.P17062697833168995188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A012461 n - A012465 n|

end

end A012756.P17062697833168995188

/-! ## A012756.P838935625757316219

`abs(2*A012461(n)-A012456(n))`
-/

namespace A012756.P838935625757316219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 * A012461 n - A012456 n|

end

end A012756.P838935625757316219

/-! ## A012756.P10440635201609371892

`abs(2*A012465(n)-A012456(n))`
-/

namespace A012756.P10440635201609371892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 * A012465 n - A012456 n|

end

end A012756.P10440635201609371892

/-! ## A012756.P3165111384535418454

`gcd(A012461(n)-A012465(n), A007814(2*n+3))`
-/

namespace A012756.P3165111384535418454
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A012461 n - A012465 n) (A007814 (2 * n + 3))

end

end A012756.P3165111384535418454

/-!
# A012757: tan(arctanh(x)^2) = 2/2!*x^2 + 16/4!*x^4 + 608/6!*x^6 + 43776/8!*x^8 + ...

The programs for A012757, there is no canonical definition to state claims against.
-/

/-! ## A012757.P13172861485187887673

`∑{d}[A012464(n), A000010(#)]`
-/

namespace A012757.P13172861485187887673
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012464 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A012757.P13172861485187887673

/-!
# A012758: Expansion of e.g.f. arcsin(cosh(x) * log(x+1)).

The programs for A012758, there is no canonical definition to state claims against.
-/

/-! ## A012758.P16871367977517570448

`A009580(n)-A137396(A000108(n))`
-/

namespace A012758.P16871367977517570448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009580 n - A137396 (A000108 n).toNat

end

end A012758.P16871367977517570448

/-! ## A012758.P4835998653335303395

`A009582(n)-A060738(A324430(n))`
-/

namespace A012758.P4835998653335303395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009582 n - A060738 (A324430 n).toNat

end

end A012758.P4835998653335303395

/-!
# A012761: Expansion of e.g.f. arctanh(cosh(x) * log(x+1)).

The programs for A012761, there is no canonical definition to state claims against.
-/

/-! ## A012761.P13380748497594215491

`A359675(C(ceil(3*n/2), n))-A205481(n+1)`
-/

namespace A012761.P13380748497594215491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359675 (Nat.choose ⌈3 * ((n : ℚ) / 2)⌉.toNat n) - A205481 (n + 1)

end

end A012761.P13380748497594215491

/-! ## A012761.P18259860187523801982

`A175099(A033321(n))+A009650(n)`
-/

namespace A012761.P18259860187523801982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175099 (A033321 n).toNat + A009650 n

end

end A012761.P18259860187523801982

/-!
# A012762: Expansion of e.g.f.: sec(cosh(x)*log(x+1))=1+1/2!*x^2-3/3!*x^3+28/4!*x^4-160/5!*x^5...

The programs for A012762, there is no canonical definition to state claims against.
-/

/-! ## A012762.P7530793824954940423

`A012778(A004911(n+1))`
-/

namespace A012762.P7530793824954940423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012778 (A004911 (n + 1)).toNat

end

end A012762.P7530793824954940423

/-! ## A012762.P16839638581739164565

`A012778(n)^A010256(n)`
-/

namespace A012762.P16839638581739164565
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A012778 n : ℚ) ^ (A010256 n : ℤ)

end

end A012762.P16839638581739164565

/-!
# A012765: exp(cosh(x)*arcsin(x))=1+x+1/2!*x^2+5/3!*x^3+17/4!*x^4+65/5!*x^5...

The programs for A012765, there is no canonical definition to state claims against.
-/

/-! ## A012765.P5936481527608158435

`or(1, A010554((n+1)!))`
-/

namespace A012765.P5936481527608158435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A010554 (Nat.factorial (n + 1)))

end

end A012765.P5936481527608158435

/-!
# A012766: sin(cosh(x)*arcsin(x))=x+3/3!*x^3-15/5!*x^5-1029/7!*x^7-46239/9!*x^9...

The programs for A012766, there is no canonical definition to state claims against.
-/

/-! ## A012766.P5539851370046792164

`(-1)^n*A012634(A005408(n))`
-/

namespace A012766.P5539851370046792164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A012634 (A005408 n).toNat

end

end A012766.P5539851370046792164

/-!
# A012767: E.g.f.: arctan(cosh(x)*tan(x))=x+3/3!*x^3-35/5!*x^5-1057/7!*x^7+59865/9!*x^9...

The programs for A012767, there is no canonical definition to state claims against.
-/

/-! ## A012767.P74647605690322550

`(-1)^n*A009394(2*n+1)`
-/

namespace A012767.P74647605690322550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A009394 (2 * n + 1)

end

end A012767.P74647605690322550

/-!
# A012770: -log(cosh(x)*cos(x))=-4/4!*x^4-544/8!*x^8-707584/12!*x^12...

The programs for A012770, there is no canonical definition to state claims against.
-/

/-! ## A012770.P18034599631627689521

`A001250(record[xor(3, n)])`
-/

namespace A012770.P18034599631627689521
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 3 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001250 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A012770.P18034599631627689521

/-! ## A012770.P11608906960197391099

`A012509(2*(n+1))`
-/

namespace A012770.P11608906960197391099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012509 (2 * (n + 1))

end

end A012770.P11608906960197391099

/-! ## A012770.P6167004316848305398

`A001250(4*n+3)`
-/

namespace A012770.P6167004316848305398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001250 (4 * n + 3)

end

end A012770.P6167004316848305398

/-! ## A012770.P12278466645023485637

`2*A009764(Δ[n²])`
-/

namespace A012770.P12278466645023485637
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A009764 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A012770.P12278466645023485637

/-! ## A012770.P6297315866004079560

`2*A000182(2*(n+1))`
-/

namespace A012770.P6297315866004079560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000182 (2 * (n + 1))

end

end A012770.P6297315866004079560

/-!
# A012771: exp(cosh(x)*arcsinh(x))=1+x+1/2!*x^2+3/3!*x^3+9/4!*x^4+25/5!*x^5...

The programs for A012771, there is no canonical definition to state claims against.
-/

/-! ## A012771.P2827506869091549526

`or(1, A109950(A039946(n)))`
-/

namespace A012771.P2827506869091549526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A109950 (A039946 n).toNat)

end

end A012771.P2827506869091549526

/-!
# A012772: Take every 5th term of Padovan sequence A000931, beginning with the sixth term.

The programs for A012772, the canonical program `A012772.P17884064766285693171` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A012772 has offset 0).

The definition of A012772 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 165 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A012772.P1959235408480585684

`ogf((1-2x+x^2)/(1-5x+4x^2-x^3))`
-/

namespace A012772.P1959235408480585684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -2, 1] [1, -5, 4, -1] n

end

end A012772.P1959235408480585684

namespace A012772

/-- `ogf((1-2x+x^2)/(1-5x+4x^2-x^3))` -/
def P1959235408480585684.Spec : Prop :=
  ∀ n, P1959235408480585684.a n = A012772 n

end A012772

/-! ## A012772.P9293150225492397193

`A012864(n+1)`
-/

namespace A012772.P9293150225492397193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012864 (n + 1)

end

end A012772.P9293150225492397193

namespace A012772

/-- `A012864(n+1)` -/
def P9293150225492397193.Spec : Prop :=
  ∀ n, P9293150225492397193.a n = A012772 n

end A012772

/-! ## A012772.P17884064766285693171

`∑[A012493(n)]+1`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A012772

/-- `∑[A012493(n)]+1` -/
def P17884064766285693171.Spec : Prop :=
  ∀ n, P17884064766285693171.a n = A012772 n

theorem P17884064766285693171.correct : P17884064766285693171.Spec := by
  intro n
  simp only [A012772]

end A012772

/-! ## A012772.P10176894618551484199

`A000931(5*(n+1))`
-/

namespace A012772.P10176894618551484199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000931 (5 * (n + 1))

end

end A012772.P10176894618551484199

namespace A012772

/-- `A000931(5*(n+1))` -/
def P10176894618551484199.Spec : Prop :=
  ∀ n, P10176894618551484199.a n = A012772 n

end A012772

/-! ## A012772.P15186769438884137138

`A134816(5*n+1)`
-/

namespace A012772.P15186769438884137138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134816 (5 * n + 1)

end

end A012772.P15186769438884137138

namespace A012772

/-- `A134816(5*n+1)` -/
def P15186769438884137138.Spec : Prop :=
  ∀ n, P15186769438884137138.a n = A012772 n

end A012772

/-! ## A012772.P13953356908550170800

`A182097(5*n+2)`
-/

namespace A012772.P13953356908550170800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182097 (5 * n + 2)

end

end A012772.P13953356908550170800

namespace A012772

/-- `A182097(5*n+2)` -/
def P13953356908550170800.Spec : Prop :=
  ∀ n, P13953356908550170800.a n = A012772 n

end A012772

/-! ## A012772.P2542928987364568954

`A078027(5*n+7)`
-/

namespace A012772.P2542928987364568954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078027 (5 * n + 7)

end

end A012772.P2542928987364568954

namespace A012772

/-- `A078027(5*n+7)` -/
def P2542928987364568954.Spec : Prop :=
  ∀ n, P2542928987364568954.a n = A012772 n

end A012772

/-! ## A012772.P2731464822866884687

`A133034(5*n+9)`
-/

namespace A012772.P2731464822866884687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133034 (5 * n + 9)

end

end A012772.P2731464822866884687

namespace A012772

/-- `A133034(5*n+9)` -/
def P2731464822866884687.Spec : Prop :=
  ∀ n, P2731464822866884687.a n = A012772 n

end A012772

/-! ## A012772.P2693706164803265755

`∑[A134816(A008706(n))]`
-/

namespace A012772.P2693706164803265755
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134816 (A008706 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A012772.P2693706164803265755

namespace A012772

/-- `∑[A134816(A008706(n))]` -/
def P2693706164803265755.Spec : Prop :=
  ∀ n, P2693706164803265755.a n = A012772 n

end A012772

/-! ## A012772.P12337282663476216423

`record[A012864(A008611(n))]`
-/

namespace A012772.P12337282663476216423
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012864 (A008611 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A012772.P12337282663476216423

namespace A012772

/-- `record[A012864(A008611(n))]` -/
def P12337282663476216423.Spec : Prop :=
  ∀ n, P12337282663476216423.a n = A012772 n

end A012772

/-! ## A012772.P6964834103215573285

`record[A012864(A008615(n))]`
-/

namespace A012772.P6964834103215573285
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012864 (A008615 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A012772.P6964834103215573285

namespace A012772

/-- `record[A012864(A008615(n))]` -/
def P6964834103215573285.Spec : Prop :=
  ∀ n, P6964834103215573285.a n = A012772 n

end A012772

/-! ## A012772.P8727542855678358375

`A228361(A135042(n+1))`
-/

namespace A012772.P8727542855678358375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228361 (A135042 (n + 1)).toNat

end

end A012772.P8727542855678358375

namespace A012772

/-- `A228361(A135042(n+1))` -/
def P8727542855678358375.Spec : Prop :=
  ∀ n, P8727542855678358375.a n = A012772 n

end A012772

/-! ## A012772.P8393975393452896795

`A127682(A370532(n+2))`
-/

namespace A012772.P8393975393452896795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127682 (A370532 (n + 2)).toNat

end

end A012772.P8393975393452896795

namespace A012772

/-- `A127682(A370532(n+2))` -/
def P8393975393452896795.Spec : Prop :=
  ∀ n, P8393975393452896795.a n = A012772 n

end A012772

/-! ## A012772.P14028025677451214230

`A164001(A111284(n+1)+n)`
-/

namespace A012772.P14028025677451214230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164001 (A111284 (n + 1) + (n : ℤ)).toNat

end

end A012772.P14028025677451214230

namespace A012772

/-- `A164001(A111284(n+1)+n)` -/
def P14028025677451214230.Spec : Prop :=
  ∀ n, P14028025677451214230.a n = A012772 n

end A012772

/-! ## A012772.P6379720314931234422

`A228361(A019442(n+2)+n)`
-/

namespace A012772.P6379720314931234422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228361 (A019442 (n + 2) + (n : ℤ)).toNat

end

end A012772.P6379720314931234422

namespace A012772

/-- `A228361(A019442(n+2)+n)` -/
def P6379720314931234422.Spec : Prop :=
  ∀ n, P6379720314931234422.a n = A012772 n

end A012772

/-! ## A012772.P6617358876585441805

`A012855(n+3)+A012814(n)`
-/

namespace A012772.P6617358876585441805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012855 (n + 3) + A012814 n

end

end A012772.P6617358876585441805

namespace A012772

/-- `A012855(n+3)+A012814(n)` -/
def P6617358876585441805.Spec : Prop :=
  ∀ n, P6617358876585441805.a n = A012772 n

end A012772

/-! ## A012772.P7182727150697001428

`A164001(A033627(2*n+1)-n)`
-/

namespace A012772.P7182727150697001428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164001 (A033627 (2 * n + 1) - (n : ℤ)).toNat

end

end A012772.P7182727150697001428

namespace A012772

/-- `A164001(A033627(2*n+1)-n)` -/
def P7182727150697001428.Spec : Prop :=
  ∀ n, P7182727150697001428.a n = A012772 n

end A012772

/-! ## A012772.P16353890262962938810

`A012814(n)+A012781(n)+a(n-1)` with `a(0)=1`
-/

namespace A012772.P16353890262962938810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A012814 n + (A012781 n + a (n - 1))

end

end A012772.P16353890262962938810

namespace A012772

/-- `A012814(n)+A012781(n)+a(n-1)` -/
def P16353890262962938810.Spec : Prop :=
  ∀ n, P16353890262962938810.a n = A012772 n

end A012772

/-! ## A012772.P9121911528592646656

`A012880(n+1)+A012866(n)-A012855(n)`
-/

namespace A012772.P9121911528592646656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012880 (n + 1) + (A012866 n - A012855 n)

end

end A012772.P9121911528592646656

namespace A012772

/-- `A012880(n+1)+A012866(n)-A012855(n)` -/
def P9121911528592646656.Spec : Prop :=
  ∀ n, P9121911528592646656.a n = A012772 n

end A012772

/-! ## A012772.P6636112866486858458

`A012880(n+1)+A012880(n)-A012866(n)`
-/

namespace A012772.P6636112866486858458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012880 (n + 1) + (A012880 n - A012866 n)

end

end A012772.P6636112866486858458

namespace A012772

/-- `A012880(n+1)+A012880(n)-A012866(n)` -/
def P6636112866486858458.Spec : Prop :=
  ∀ n, P6636112866486858458.a n = A012772 n

end A012772

/-!
# A012774: Expansion of e.g.f. arcsin(sec(x) * log(x+1)).

The programs for A012774, there is no canonical definition to state claims against.
-/

/-! ## A012774.P15663719171041589093

`or(A009582(n), A060738(A324430(n)))`
-/

namespace A012774.P15663719171041589093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A009582 n) (A060738 (A324430 n).toNat)

end

end A012774.P15663719171041589093

/-!
# A012777: Expansion of e.g.f. arctanh(sec(x) * log(x+1)).

The programs for A012777, there is no canonical definition to state claims against.
-/

/-! ## A012777.P16894860453029238914

`A167688(A001147(n))+A009652(n)`
-/

namespace A012777.P16894860453029238914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167688 (A001147 n).toNat + A009652 n

end

end A012777.P16894860453029238914

/-! ## A012777.P860274090435188945

`or(A001222(A099202(n)), A009652(n))`
-/

namespace A012777.P860274090435188945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A001222 (A099202 n).toNat) (A009652 n)

end

end A012777.P860274090435188945

/-!
# A012780: Expansion of e.g.f. arcsin(tan(x)) (odd powers only).

The programs for A012780, there is no canonical definition to state claims against.
-/

/-! ## A012780.P1748533933474451519

`2*A012085(n)-A012079(n)`
-/

namespace A012780.P1748533933474451519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A012085 n - A012079 n

end

end A012780.P1748533933474451519

/-!
# A012781: Take every 5th term of Padovan sequence A000931, beginning with the second term.

The programs for A012781, the canonical program `A012781.P2702030886372314705` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A012781 has offset 0).

The definition of A012781 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A012781.P2702030886372314705

`5*a(n-1)-4*a(n-2)+a(n-3)` with `a(0)=0, a(1)=1, a(2)=4`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A012781

/-- `5*a(n-1)-4*a(n-2)+a(n-3)` -/
def P2702030886372314705.Spec : Prop :=
  ∀ n, P2702030886372314705.a n = A012781 n

theorem P2702030886372314705.correct : P2702030886372314705.Spec := by
  intro n
  simp only [A012781]

end A012781

/-! ## A012781.P16996084990054314647

`ogf((x-x^2)/(1-5x+4x^2-x^3))`
-/

namespace A012781.P16996084990054314647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, -1] [1, -5, 4, -1] n

end

end A012781.P16996084990054314647

namespace A012781

/-- `ogf((x-x^2)/(1-5x+4x^2-x^3))` -/
def P16996084990054314647.Spec : Prop :=
  ∀ n, P16996084990054314647.a n = A012781 n

end A012781

/-! ## A012781.P924921577615350068

`∑[A012864(n)]-1`
-/

namespace A012781.P924921577615350068
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012864 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A012781.P924921577615350068

namespace A012781

/-- `∑[A012864(n)]-1` -/
def P924921577615350068.Spec : Prop :=
  ∀ n, P924921577615350068.a n = A012781 n

end A012781

/-! ## A012781.P1882935790265445515

`A000931(5*n+1)`
-/

namespace A012781.P1882935790265445515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000931 (5 * n + 1)

end

end A012781.P1882935790265445515

namespace A012781

/-- `A000931(5*n+1)` -/
def P1882935790265445515.Spec : Prop :=
  ∀ n, P1882935790265445515.a n = A012781 n

end A012781

/-! ## A012781.P12901432194932328913

`A133034(5*(n+1))`
-/

namespace A012781.P12901432194932328913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133034 (5 * (n + 1))

end

end A012781.P12901432194932328913

namespace A012781

/-- `A133034(5*(n+1))` -/
def P12901432194932328913.Spec : Prop :=
  ∀ n, P12901432194932328913.a n = A012781 n

end A012781

/-! ## A012781.P16659750154135924855

`A078027(5*n+3)`
-/

namespace A012781.P16659750154135924855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078027 (5 * n + 3)

end

end A012781.P16659750154135924855

namespace A012781

/-- `A078027(5*n+3)` -/
def P16659750154135924855.Spec : Prop :=
  ∀ n, P16659750154135924855.a n = A012781 n

end A012781

/-! ## A012781.P18044364662366258566

`Δ[Δ[A012855(n+1)]]`
-/

namespace A012781.P18044364662366258566
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012855 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A012781.P18044364662366258566

namespace A012781

/-- `Δ[Δ[A012855(n+1)]]` -/
def P18044364662366258566.Spec : Prop :=
  ∀ n, P18044364662366258566.a n = A012781 n

end A012781

/-! ## A012781.P3341410510309237146

`∑[A000931(5*n)]-1`
-/

namespace A012781.P3341410510309237146
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000931 (5 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A012781.P3341410510309237146

namespace A012781

/-- `∑[A000931(5*n)]-1` -/
def P3341410510309237146.Spec : Prop :=
  ∀ n, P3341410510309237146.a n = A012781 n

end A012781

/-! ## A012781.P5573893215617006484

`∑[A000931(A008706(n))]`
-/

namespace A012781.P5573893215617006484
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000931 (A008706 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A012781.P5573893215617006484

namespace A012781

/-- `∑[A000931(A008706(n))]` -/
def P5573893215617006484.Spec : Prop :=
  ∀ n, P5573893215617006484.a n = A012781 n

end A012781

/-! ## A012781.P9315897547389561705

`A012493(n)-A012814(n)`
-/

namespace A012781.P9315897547389561705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012493 n - A012814 n

end

end A012781.P9315897547389561705

namespace A012781

/-- `A012493(n)-A012814(n)` -/
def P9315897547389561705.Spec : Prop :=
  ∀ n, P9315897547389561705.a n = A012781 n

end A012781

/-! ## A012781.P4326857971602148448

`∑[A000931(A008574(n)+n)]`
-/

namespace A012781.P4326857971602148448
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000931 (A008574 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A012781.P4326857971602148448

namespace A012781

/-- `∑[A000931(A008574(n)+n)]` -/
def P4326857971602148448.Spec : Prop :=
  ∀ n, P4326857971602148448.a n = A012781 n

end A012781

/-! ## A012781.P9024960646335206144

`Δ[A012866(n)-A012855(n)]`
-/

namespace A012781.P9024960646335206144
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012866 n - A012855 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A012781.P9024960646335206144

namespace A012781

/-- `Δ[A012866(n)-A012855(n)]` -/
def P9024960646335206144.Spec : Prop :=
  ∀ n, P9024960646335206144.a n = A012781 n

end A012781

/-! ## A012781.P5793812547284653029

`A182097(A111284(n+1)+n)`
-/

namespace A012781.P5793812547284653029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182097 (A111284 (n + 1) + (n : ℤ)).toNat

end

end A012781.P5793812547284653029

namespace A012781

/-- `A182097(A111284(n+1)+n)` -/
def P5793812547284653029.Spec : Prop :=
  ∀ n, P5793812547284653029.a n = A012781 n

end A012781

/-! ## A012781.P9111760044742238935

`A012855(n+3)-A012864(n)`
-/

namespace A012781.P9111760044742238935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012855 (n + 3) - A012864 n

end

end A012781.P9111760044742238935

namespace A012781

/-- `A012855(n+3)-A012864(n)` -/
def P9111760044742238935.Spec : Prop :=
  ∀ n, P9111760044742238935.a n = A012781 n

end A012781

/-! ## A012781.P4025433993537017159

`(A012880(n)+A012814(n))/2`
-/

namespace A012781.P4025433993537017159
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A012880 n + A012814 n : ℚ) / 2

end

end A012781.P4025433993537017159

namespace A012781

/-- `(A012880(n)+A012814(n))/2` -/
def P4025433993537017159.Spec : Prop :=
  ∀ n, P4025433993537017159.a n = (A012781 n : ℚ)

end A012781

/-! ## A012781.P497313932081216379

`2*A012880(n)-A012866(n)`
-/

namespace A012781.P497313932081216379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A012880 n - A012866 n

end

end A012781.P497313932081216379

namespace A012781

/-- `2*A012880(n)-A012866(n)` -/
def P497313932081216379.Spec : Prop :=
  ∀ n, P497313932081216379.a n = A012781 n

end A012781

/-! ## A012781.P17542718146183859320

`A012866(n+1)-A012855(n+2)`
-/

namespace A012781.P17542718146183859320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012866 (n + 1) - A012855 (n + 2)

end

end A012781.P17542718146183859320

namespace A012781

/-- `A012866(n+1)-A012855(n+2)` -/
def P17542718146183859320.Spec : Prop :=
  ∀ n, P17542718146183859320.a n = A012781 n

end A012781

/-! ## A012781.P10285640532070157295

`A012880(n+1)-A012855(n+3)`
-/

namespace A012781.P10285640532070157295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012880 (n + 1) - A012855 (n + 3)

end

end A012781.P10285640532070157295

namespace A012781

/-- `A012880(n+1)-A012855(n+3)` -/
def P10285640532070157295.Spec : Prop :=
  ∀ n, P10285640532070157295.a n = A012781 n

end A012781

/-! ## A012781.P17147164586140398691

`A182097(A004271(2*n+1)+n)`
-/

namespace A012781.P17147164586140398691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182097 (A004271 (2 * n + 1) + (n : ℤ)).toNat

end

end A012781.P17147164586140398691

namespace A012781

/-- `A182097(A004271(2*n+1)+n)` -/
def P17147164586140398691.Spec : Prop :=
  ∀ n, P17147164586140398691.a n = A012781 n

end A012781

/-! ## A012781.P5036916944126671546

`A182097(A004278(2*n+1)+n)`
-/

namespace A012781.P5036916944126671546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182097 (A004278 (2 * n + 1) + (n : ℤ)).toNat

end

end A012781.P5036916944126671546

namespace A012781

/-- `A182097(A004278(2*n+1)+n)` -/
def P5036916944126671546.Spec : Prop :=
  ∀ n, P5036916944126671546.a n = A012781 n

end A012781

/-!
# A012782: exp(sec(x)*arcsin(x))=1+x+1/2!*x^2+5/3!*x^3+17/4!*x^4+85/5!*x^5...

The programs for A012782, there is no canonical definition to state claims against.
-/

/-! ## A012782.P8797123101774921466

`A008616(7*(n-char[2])!)`
-/

namespace A012782.P8797123101774921466
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008616 (7 * Nat.factorial ((n : ℤ) - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)).toNat)

end

end A012782.P8797123101774921466

/-! ## A012782.P6517448353596318174

`A008616(7*n!/(char[2]+1))`
-/

namespace A012782.P6517448353596318174
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008616 (SequenceMachineLib.roundAway (7 * ((Nat.factorial n : ℚ) / (((if ∃ j, f1 j = n then 1 else 0) + 1 : ℕ) : ℚ)))).toNat

end

end A012782.P6517448353596318174

/-! ## A012782.P4445481883259968899

`A008616(7*∑{digits}[n, (n%#!)!])`
-/

namespace A012782.P4445481883259968899
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008616 (7 * ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => Nat.factorial (n % Nat.factorial x)).sum)

end

end A012782.P4445481883259968899

/-!
# A012783: sin(sec(x)*arcsin(x))=x+3/3!*x^3+5/5!*x^5-889/7!*x^7-82167/9!*x^9...

The programs for A012783, there is no canonical definition to state claims against.
-/

/-! ## A012783.P4307018646439212047

`(-1)^n*A012881(2*n+1)`
-/

namespace A012783.P4307018646439212047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A012881 (2 * n + 1)

end

end A012783.P4307018646439212047

/-! ## A012783.P12795479261415193228

`A012881(2*n+1)*A033999(n)`
-/

namespace A012783.P12795479261415193228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012881 (2 * n + 1) * A033999 n

end

end A012783.P12795479261415193228

/-!
# A012787: cos(sec(x)*arcsin(x))=1-1/2!*x^2-15/4!*x^4-345/6!*x^6-11263/8!*x^8...

The programs for A012787, there is no canonical definition to state claims against.
-/

/-! ## A012787.P4979924739695309154

`(-1)^n*A012881(2*n)`
-/

namespace A012787.P4979924739695309154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A012881 (2 * n)

end

end A012787.P4979924739695309154

/-! ## A012787.P6469191512682780784

`A012881(2*n)*A033999(n)`
-/

namespace A012787.P6469191512682780784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012881 (2 * n) * A033999 n

end

end A012787.P6469191512682780784

/-! ## A012787.P10080010993416878814

`A012881(A005843(n))/(-1)^n`
-/

namespace A012787.P10080010993416878814
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A012881 (A005843 n).toNat : ℚ) / ((-1) ^ n : ℚ)

end

end A012787.P10080010993416878814

/-!
# A012788: sinh(sec(x)*arcsin(x))=x+5/3!*x^3+85/5!*x^5+3201/7!*x^7+204905/9!*x^9...

The programs for A012788, there is no canonical definition to state claims against.
-/

/-! ## A012788.P12524015791315620899

`A012782(Δ[n²])`
-/

namespace A012788.P12524015791315620899
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012782 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A012788.P12524015791315620899

/-! ## A012788.P3408071135124450517

`record[A012782(A026741(n))]`
-/

namespace A012788.P3408071135124450517
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012782 (A026741 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A012788.P3408071135124450517

/-! ## A012788.P15930816505940294228

`record[A012782(A198954(n))]`
-/

namespace A012788.P15930816505940294228
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012782 (A198954 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A012788.P15930816505940294228

/-! ## A012788.P11546170293927449267

`or(1, A012782(A005408(n)))`
-/

namespace A012788.P11546170293927449267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A012782 (A005408 n).toNat)

end

end A012788.P11546170293927449267

/-! ## A012788.P11183644678768152309

`record[A012782(abs(A009001(n)))]`
-/

namespace A012788.P11183644678768152309
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012782 |A009001 n|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A012788.P11183644678768152309

/-!
# A012789: arcsinh(sec(x)*arcsin(x))=x+3/3!*x^3+13/5!*x^5+7/7!*x^7+5465/9!*x^9...

The programs for A012789, there is no canonical definition to state claims against.
-/

/-! ## A012789.P11817682683468217201

`A263801(2*n)%∑[A263803(n+2)]`
-/

namespace A012789.P11817682683468217201
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263803 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A263801 (2 * n)) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A012789.P11817682683468217201

/-!
# A012791: Expansion of e.g.f.: arctanh(sec(x)*arcsin(x)) (odd powers).

The programs for A012791, there is no canonical definition to state claims against.
-/

/-! ## A012791.P13418684432165907818

`A013010(Δ[n²])`
-/

namespace A012791.P13418684432165907818
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013010 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A012791.P13418684432165907818

/-! ## A012791.P13483708769055698960

`record[A013010(n+1)]`
-/

namespace A012791.P13483708769055698960
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013010 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A012791.P13483708769055698960

/-! ## A012791.P6900346949337495484

`abs(A013010(2*n+1))`
-/

namespace A012791.P6900346949337495484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A013010 (2 * n + 1)|

end

end A012791.P6900346949337495484

/-! ## A012791.P4863141297145521318

`abs(record[A013010(A008611(n))])`
-/

namespace A012791.P4863141297145521318
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013010 (A008611 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)|

end

end A012791.P4863141297145521318

/-! ## A012791.P16899854694656254238

`abs(record[A013010(A008619(n))])`
-/

namespace A012791.P16899854694656254238
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013010 (A008619 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)|

end

end A012791.P16899854694656254238

/-!
# A012792: cosh(sec(x)*arcsin(x))=1+1/2!*x^2+17/4!*x^4+505/6!*x^6+25153/8!*x^8...

The programs for A012792, there is no canonical definition to state claims against.
-/

/-! ## A012792.P14962184733905703307

`A012782(2*n)`
-/

namespace A012792.P14962184733905703307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012782 (2 * n)

end

end A012792.P14962184733905703307

/-! ## A012792.P15025837397815779242

`or(1, A012782(A004277(n)))`
-/

namespace A012792.P15025837397815779242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A012782 (A004277 n).toNat)

end

end A012792.P15025837397815779242

/-! ## A012792.P511233739166282599

`or(1, A012782(A005843(n)))`
-/

namespace A012792.P511233739166282599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A012782 (A005843 n).toNat)

end

end A012792.P511233739166282599

/-! ## A012792.P16817418899779040687

`gcd(A000038(n), A012782(A005843(n)))`
-/

namespace A012792.P16817418899779040687
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A012782 (A005843 n).toNat)

end

end A012792.P16817418899779040687

/-! ## A012792.P17791312154366318718

`gcd(A012782(A004277(n)), A151933(n))`
-/

namespace A012792.P17791312154366318718
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A012782 (A004277 n).toNat) (A151933 n)

end

end A012792.P17791312154366318718

/-!
# A012796: arctan(sec(x)*tan(x))=x+3/3!*x^3-15/5!*x^5-1197/7!*x^7-255/9!*x^9...

The programs for A012796, there is no canonical definition to state claims against.
-/

/-! ## A012796.P2750068116166874342

`A009401(Δ[n²])/(-1)^n`
-/

namespace A012796.P2750068116166874342
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A009401 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ) / ((-1) ^ n : ℚ)

end

end A012796.P2750068116166874342

/-! ## A012796.P17500901872126738794

`(-1)^n*A009401(2*n+1)`
-/

namespace A012796.P17500901872126738794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A009401 (2 * n + 1)

end

end A012796.P17500901872126738794

/-! ## A012796.P6118973804638851969

`A009401(2*n+1)*A033999(n)`
-/

namespace A012796.P6118973804638851969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009401 (2 * n + 1) * A033999 n

end

end A012796.P6118973804638851969

/-! ## A012796.P17500750517609249047

`A009401(2*n+1)*A087960(n²)`
-/

namespace A012796.P17500750517609249047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009401 (2 * n + 1) * A087960 (n ^ 2)

end

end A012796.P17500750517609249047

/-!
# A012798: arctanh(sec(x)*tan(x))=x+7/3!*x^3+185/5!*x^5+12367/7!*x^7...

The programs for A012798, there is no canonical definition to state claims against.
-/

/-! ## A012798.P9538575740606480415

`A009380(Δ[n²])`
-/

namespace A012798.P9538575740606480415
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009380 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A012798.P9538575740606480415

/-! ## A012798.P5872350491623296231

`A013011(Δ[n²])`
-/

namespace A012798.P5872350491623296231
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013011 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A012798.P5872350491623296231

/-! ## A012798.P16470415725679330286

`record[A009380(n+1)]`
-/

namespace A012798.P16470415725679330286
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009380 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A012798.P16470415725679330286

/-! ## A012798.P14445615953904085721

`record[A013011(n+1)]`
-/

namespace A012798.P14445615953904085721
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013011 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A012798.P14445615953904085721

/-! ## A012798.P8586025029787463962

`record[or(1, A009380(n))]`
-/

namespace A012798.P8586025029787463962
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A009380 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A012798.P8586025029787463962

