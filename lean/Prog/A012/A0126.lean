import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C006
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C013
import Seq.B000.C017
import Seq.B000.C020
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C037
import Seq.B001.C000
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C003
import Seq.B003.C000
import Seq.B003.C002
import Seq.B003.C003
import Seq.B004.C000
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
import Seq.B012.C000
import Seq.B013.C000
import Seq.Opaque.C000
import Seq.Opaque.C001
import Seq.Opaque.C002
import Seq.Opaque.C003
import Seq.Opaque.C004
import Seq.Opaque.C005
import Seq.Opaque.C007
import Seq.Opaque.C008
import Seq.Opaque.C009
import Seq.Opaque.C010
import Seq.Opaque.C011
import Seq.Opaque.C015
import Seq.Opaque.C018
import Seq.Opaque.C019
import Seq.Opaque.C021
import Seq.Opaque.C022
import Seq.Opaque.C023

/-!
# A012606: arctanh(arcsinh(x)*arcsin(x))=2/2!*x^2+328/6!*x^6+1356192/10!*x^10...

The programs for A012606, there is no canonical definition to state claims against.
-/

/-! ## A012606.P7586683114364502743

`A296622(Δ[n²])`
-/

namespace A012606.P7586683114364502743
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296622 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A012606.P7586683114364502743

/-! ## A012606.P14724868129734325009

`record[A296622(n+1)]`
-/

namespace A012606.P14724868129734325009
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296622 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A012606.P14724868129734325009

/-! ## A012606.P5296285777949762059

`abs(record[A296622(A008611(n))])`
-/

namespace A012606.P5296285777949762059
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296622 (A008611 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)|

end

end A012606.P5296285777949762059

/-! ## A012606.P6399866615044640196

`abs(record[A296622(A028310(n))])`
-/

namespace A012606.P6399866615044640196
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296622 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)|

end

end A012606.P6399866615044640196

/-!
# A012607: Expansion of e.g.f. cosh(arcsinh(x)*arcsin(x)) in powers of x^4.

The programs for A012607, there is no canonical definition to state claims against.
-/

/-! ## A012607.P9090353370716341384

`A012598(2*n)`
-/

namespace A012607.P9090353370716341384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012598 (2 * n)

end

end A012607.P9090353370716341384

/-!
# A012610: Expansion of e.g.f. exp(arcsinh(x)*tan(x)) (even powers only).

The programs for A012610, there is no canonical definition to state claims against.
-/

/-! ## A012610.P12462770728777803226

`A000069(n+1)*A161790(A053601(n))`
-/

namespace A012610.P12462770728777803226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000069 (n + 1) * A161790 (A053601 n).toNat

end

end A012610.P12462770728777803226

/-!
# A012611: sin(arcsinh(x)*tan(x))=2/2!*x^2+4/4!*x^4-10/6!*x^6-2872/8!*x^8...

The programs for A012611, there is no canonical definition to state claims against.
-/

/-! ## A012611.P16625005488984536467

`A012616(abs(A012322(n)))`
-/

namespace A012611.P16625005488984536467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012616 |A012322 n|.toNat

end

end A012611.P16625005488984536467

/-!
# A012613: tan(arcsinh(x)*tan(x))=2/2!*x^2+4/4!*x^4+350/6!*x^6+7208/8!*x^8...

The programs for A012613, there is no canonical definition to state claims against.
-/

/-! ## A012613.P4366702627536806857

`A109613(A012618(n))-1`
-/

namespace A012613.P4366702627536806857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109613 (A012618 n).toNat - 1

end

end A012613.P4366702627536806857

/-!
# A012615: cos(arcsinh(x)*tan(x))=1-12/4!*x^4-120/6!*x^6-5040/8!*x^8...

The programs for A012615, there is no canonical definition to state claims against.
-/

/-! ## A012615.P2303389279706094584

`2-A057544(A138534(n))`
-/

namespace A012615.P2303389279706094584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A057544 (A138534 n).toNat

end

end A012615.P2303389279706094584

/-!
# A012619: cosh(arcsinh(x)*tan(x))=1+12/4!*x^4+120/6!*x^6+8400/8!*x^8...

The programs for A012619, there is no canonical definition to state claims against.
-/

/-! ## A012619.P5923774670352480186

`n!*C(2*n, n)*A059882(n!*C(2*n, n))`
-/

namespace A012619.P5923774670352480186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n * Nat.choose (2 * n) n : ℤ) * A059882 (Nat.factorial n * Nat.choose (2 * n) n)

end

end A012619.P5923774670352480186

/-!
# A012620: sec(arcsinh(x)*tan(x))=1+12/4!*x^4+120/6!*x^6+15120/8!*x^8...

The programs for A012620, there is no canonical definition to state claims against.
-/

/-! ## A012620.P1001244379747139632

`A081512(∑[A134954(n)])`
-/

namespace A012620.P1001244379747139632
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134954 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081512 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A012620.P1001244379747139632

/-!
# A012621: sech(arcsinh(x)*tan(x))=1-12/4!*x^4-120/6!*x^6+1680/8!*x^8...

The programs for A012621, there is no canonical definition to state claims against.
-/

/-! ## A012621.P6236968460931348735

`∏[2-4*n]/2*A008683(A125413(n))`
-/

namespace A012621.P6236968460931348735
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (4 * n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 2 * (A008683 (A125413 n).toNat : ℚ)

end

end A012621.P6236968460931348735

/-!
# A012626: arctan(arcsinh(x)*arctan(x))=2/2!*x^2-12/4!*x^4-2/6!*x^6+10248/8!*x^8...

The programs for A012626, there is no canonical definition to state claims against.
-/

/-! ## A012626.P4487154629977381771

`A012629(n)%A000027(A001026(n))`
-/

namespace A012626.P4487154629977381771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A012629 n) (A000027 (A001026 n).toNat)

end

end A012626.P4487154629977381771

/-!
# A012634: E.g.f.: exp(arcsinh(x)*cos(x))=1+x+1/2!*x^2-3/3!*x^3-15/4!*x^4-15/5!*x^5...

The programs for A012634, there is no canonical definition to state claims against.
-/

/-! ## A012634.P17308033045697185871

`A040026(2*n!)`
-/

namespace A012634.P17308033045697185871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040026 (2 * Nat.factorial n)

end

end A012634.P17308033045697185871

/-! ## A012634.P8727406354710677134

`A040026(A004277(n!))`
-/

namespace A012634.P8727406354710677134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040026 (A004277 (Nat.factorial n)).toNat

end

end A012634.P8727406354710677134

/-! ## A012634.P13345426263181767463

`A040026(A005843(n!))`
-/

namespace A012634.P13345426263181767463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040026 (A005843 (Nat.factorial n)).toNat

end

end A012634.P13345426263181767463

/-!
# A012635: sin(arcsinh(x)*cos(x))=x-5/3!*x^3+65/5!*x^5-2221/7!*x^7+119873/9!*x^9...

The programs for A012635, there is no canonical definition to state claims against.
-/

/-! ## A012635.P11609309428732611190

`A012765(2*n+1)*A033999(n)`
-/

namespace A012635.P11609309428732611190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012765 (2 * n + 1) * A033999 n

end

end A012635.P11609309428732611190

/-!
# A012639: cos(arcsinh(x)*cos(x))=1-1/2!*x^2+17/4!*x^4-385/6!*x^6+15073/8!*x^8...

The programs for A012639, there is no canonical definition to state claims against.
-/

/-! ## A012639.P16927138885055937305

`A012765(2*n)*A033999(n)`
-/

namespace A012639.P16927138885055937305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012765 (2 * n) * A033999 n

end

end A012639.P16927138885055937305

/-! ## A012639.P485125505044227601

`(-1)^n*A012765(A004277(n))`
-/

namespace A012639.P485125505044227601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A012765 (A004277 n).toNat

end

end A012639.P485125505044227601

/-! ## A012639.P14251815937058562048

`A012765(A004277(n))/A033999(n)`
-/

namespace A012639.P14251815937058562048
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A012765 (A004277 n).toNat : ℚ) / (A033999 n : ℚ)

end

end A012639.P14251815937058562048

/-! ## A012639.P1265467257866125310

`A012765(A005843(n))/A033999(n)`
-/

namespace A012639.P1265467257866125310
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A012765 (A005843 n).toNat : ℚ) / (A033999 n : ℚ)

end

end A012639.P1265467257866125310

/-!
# A012642: arctanh(arcsinh(x)*cos(x))=x-2/3!*x^3-32/5!*x^5+152/7!*x^7+48448/9!*x^9...

The programs for A012642, there is no canonical definition to state claims against.
-/

/-! ## A012642.P9675642250250949178

`A013198(Δ[n²])`
-/

namespace A012642.P9675642250250949178
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013198 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A012642.P9675642250250949178

/-! ## A012642.P12211394701058099069

`A013198(2*n+1)-A185238(n)`
-/

namespace A012642.P12211394701058099069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013198 (2 * n + 1) - A185238 n

end

end A012642.P12211394701058099069

/-! ## A012642.P4200136763556835050

`A014963(lcm(6, n+1))*A013198(2*n+1)`
-/

namespace A012642.P4200136763556835050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (Nat.lcm 6 (n + 1)) * A013198 (2 * n + 1)

end

end A012642.P4200136763556835050

/-! ## A012642.P7372149336070163859

`A007318(∑[n])*A013198(A005408(n))`
-/

namespace A012642.P7372149336070163859
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * A013198 (A005408 n).toNat

end

end A012642.P7372149336070163859

/-!
# A012643: cosh(arcsinh(x)*cos(x))=1+1/2!*x^2-15/4!*x^4+225/6!*x^6-3423/8!*x^8...

The programs for A012643, there is no canonical definition to state claims against.
-/

/-! ## A012643.P14270436898514317874

`A012634(2*n)`
-/

namespace A012643.P14270436898514317874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012634 (2 * n)

end

end A012643.P14270436898514317874

/-! ## A012643.P10402414302523885963

`A012634(A005843(n))+char[37]`
-/

namespace A012643.P10402414302523885963
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  37

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012634 (A005843 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A012643.P10402414302523885963

/-! ## A012643.P6079213303286769814

`A012634(A005843(n))^A007318(∑[n])`
-/

namespace A012643.P6079213303286769814
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A012634 (A005843 n).toNat : ℚ) ^ (A007318 (∑ j ∈ Finset.range (n + 1), f1 j) : ℤ)

end

end A012643.P6079213303286769814

/-! ## A012643.P8501780219978712557

`A012634(A005843(n))^(-1)^A000010(n+1)`
-/

namespace A012643.P8501780219978712557
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A012634 (A005843 n).toNat : ℝ) ^ ((-1 : ℚ) ^ (A000010 (n + 1) : ℤ) : ℝ)

end

end A012643.P8501780219978712557

/-!
# A012646: exp(arcsinh(x)*sinh(x))=1+2/2!*x^2+12/4!*x^4+160/6!*x^6+2576/8!*x^8...

The programs for A012646, there is no canonical definition to state claims against.
-/

/-! ## A012646.P12442670720539809583

`∑[A033627(A095839(n))]`
-/

namespace A012646.P12442670720539809583
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033627 (A095839 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A012646.P12442670720539809583

/-!
# A012647: sin(arcsinh(x)*sinh(x))=2/2!*x^2-80/6!*x^6-1344/8!*x^8+14848/10!*x^10...

The programs for A012647, there is no canonical definition to state claims against.
-/

/-! ## A012647.P8391573003622546873

`A139158(A139333(n+3))/2`
-/

namespace A012647.P8391573003622546873
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A139158 (A139333 (n + 3)).toNat : ℚ) / 2

end

end A012647.P8391573003622546873

/-!
# A012648: exp(arcsinh(x)*arcsinh(x))=1+2/2!*x^2+4/4!*x^4+8/6!*x^6-240/8!*x^8...

The programs for A012648, there is no canonical definition to state claims against.
-/

/-! ## A012648.P1762134148657499165

`n²-(n-2)^abs(a(n-1))` with `a(0)=1`
-/

namespace A012648.P1762134148657499165
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [1] fun n a =>
  (n ^ 2 : ℝ) - ((n : ℤ) - 2 : ℝ) ^ |a (n - 1)|

end

end A012648.P1762134148657499165

/-!
# A012649: sin(arcsinh(x)*arcsinh(x))=2/2!*x^2-8/4!*x^4+8/6!*x^6+2112/8!*x^8...

The programs for A012649, there is no canonical definition to state claims against.
-/

/-! ## A012649.P9946979240586199586

`A008683(A012316(n+4))*A012346(n)`
-/

namespace A012649.P9946979240586199586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A012316 (n + 4)).toNat * A012346 n

end

end A012649.P9946979240586199586

/-!
# A012650: Expansion of e.g.f. sin(tanh(x) * log(x+1)).

The programs for A012650, there is no canonical definition to state claims against.
-/

/-! ## A012650.P3911447628602331277

`A012655(n^∑[char[10*n]])`
-/

namespace A012650.P3911447628602331277
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012655 (n ^ (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A012650.P3911447628602331277

/-! ## A012650.P4395057401300603394

`A012655(n)%record[A167556(n+1)]`
-/

namespace A012650.P4395057401300603394
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167556 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A012655 n) (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A012650.P4395057401300603394

/-! ## A012650.P10197914767723828020

`A160145(A085281(n))+A012655(n)`
-/

namespace A012650.P10197914767723828020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160145 (A085281 n).toNat + A012655 n

end

end A012650.P10197914767723828020

/-! ## A012650.P10019784802124184056

`A056170(A360714(n))+A012655(n)`
-/

namespace A012650.P10019784802124184056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056170 (A360714 n).toNat + A012655 n

end

end A012650.P10019784802124184056

/-!
# A012651: Expansion of e.g.f. arcsin(tanh(x) * log(x+1)).

The programs for A012651, there is no canonical definition to state claims against.
-/

/-! ## A012651.P6912695002658843708

`A012654(n^∑[char[10*n]])`
-/

namespace A012651.P6912695002658843708
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012654 (n ^ (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A012651.P6912695002658843708

/-! ## A012651.P3754045189489121861

`A012654(n)*A201199(∑[n])`
-/

namespace A012651.P3754045189489121861
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012654 n * A201199 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A012651.P3754045189489121861

/-! ## A012651.P1987013754216632552

`A012654(n)^A141517(n+1)`
-/

namespace A012651.P1987013754216632552
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A012654 n : ℚ) ^ (A141517 (n + 1) : ℤ)

end

end A012651.P1987013754216632552

/-! ## A012651.P11699451358553882296

`A012654(n)%A345404(n+1)`
-/

namespace A012651.P11699451358553882296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A012654 n) (A345404 (n + 1))

end

end A012651.P11699451358553882296

/-! ## A012651.P5702165132134227713

`A012654(n)*A248416(A000217(n+3))`
-/

namespace A012651.P5702165132134227713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012654 n * A248416 (A000217 (n + 3)).toNat

end

end A012651.P5702165132134227713

/-!
# A012652: Expansion of e.g.f.: tan(tanh(x) * log(x+1)).

The programs for A012652, there is no canonical definition to state claims against.
-/

/-! ## A012652.P13660696987653735793

`A012640(A172619(n+1))*A012656(n)`
-/

namespace A012652.P13660696987653735793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012640 (A172619 (n + 1)).toNat * A012656 n

end

end A012652.P13660696987653735793

/-! ## A012652.P3862751858586634854

`(1-A178926(A300974(n)))*A012656(n)`
-/

namespace A012652.P3862751858586634854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A178926 (A300974 n).toNat) * A012656 n

end

end A012652.P3862751858586634854

/-!
# A012653: Expansion of e.g.f. arctan(tanh(x) * log(x+1)).

The programs for A012653, there is no canonical definition to state claims against.
-/

/-! ## A012653.P841902208137387329

`A012656(n^∑[char[10*n]])`
-/

namespace A012653.P841902208137387329
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012656 (n ^ (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A012653.P841902208137387329

/-! ## A012653.P8809021399014720396

`A185014(n²²)+A012656(n)`
-/

namespace A012653.P8809021399014720396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185014 ((n ^ 2) ^ 2) + A012656 n

end

end A012653.P8809021399014720396

/-! ## A012653.P14470409054148655493

`A012656(n)+A000007(A000108(n))`
-/

namespace A012653.P14470409054148655493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012656 n + A000007 (A000108 n).toNat

end

end A012653.P14470409054148655493

/-! ## A012653.P16128651271376576354

`A012656(n)+A000007(A020094(n))`
-/

namespace A012653.P16128651271376576354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012656 n + A000007 (A020094 n).toNat

end

end A012653.P16128651271376576354

/-! ## A012653.P6091573152229032520

`A036632(A036632(n))+A012656(n)`
-/

namespace A012653.P6091573152229032520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036632 (A036632 n).toNat + A012656 n

end

end A012653.P6091573152229032520

/-!
# A012654: E.g.f.: sinh(tanh(x)*log(x+1))=2/2!*x^2-3/3!*x^3-10/5!*x^5+280/6!*x^6...

The programs for A012654, there is no canonical definition to state claims against.
-/

/-! ## A012654.P1528222878510481448

`A009269(n)-A009172(n)`
-/

namespace A012654.P1528222878510481448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009269 n - A009172 n

end

end A012654.P1528222878510481448

/-! ## A012654.P9849001301500939156

`A009269(n)+A009172(n)*A339791(A055377(n+4))`
-/

namespace A012654.P9849001301500939156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009269 n + A009172 n * A339791 (A055377 (n + 4)).toNat

end

end A012654.P9849001301500939156

/-!
# A012659: Expansion of e.g.f. arcsin(tanh(x) * exp(x)).

The programs for A012659, there is no canonical definition to state claims against.
-/

/-! ## A012659.P15267557919822788063

`and(n!, p?[A039864(n+1)])`
-/

namespace A012659.P15267557919822788063
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039864 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (Nat.factorial n : ℤ) (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A012659.P15267557919822788063

/-! ## A012659.P4858995308889589142

`and(n!, A133310(A180473(n+1)))`
-/

namespace A012659.P4858995308889589142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (Nat.factorial n : ℤ) (A133310 (A180473 (n + 1)).toNat)

end

end A012659.P4858995308889589142

/-! ## A012659.P16725624604675172490

`A292596(A292603(n)+A156170(n))`
-/

namespace A012659.P16725624604675172490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292596 (A292603 n + A156170 n).toNat

end

end A012659.P16725624604675172490

/-!
# A012664: arcsinh(tanh(x)*sin(x))=2/2!*x^2-12/4!*x^4+22/6!*x^6+6888/8!*x^8...

The programs for A012664, there is no canonical definition to state claims against.
-/

/-! ## A012664.P567644590332901883

`A008683(A001699(n))*A009514(n)`
-/

namespace A012664.P567644590332901883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A001699 n).toNat * A009514 n

end

end A012664.P567644590332901883

/-!
# A012665: exp(tanh(x)*arcsin(x))=1+2/2!*x^2+8/4!*x^4+110/6!*x^6+4552/8!*x^8...

The programs for A012665, there is no canonical definition to state claims against.
-/

/-! ## A012665.P506882743674910137

`A255422(∑[A000680(n)])`
-/

namespace A012665.P506882743674910137
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000680 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255422 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A012665.P506882743674910137

/-!
# A012667: Expansion of sin(tanh(x)*tan(x)).

The programs for A012667, there is no canonical definition to state claims against.
-/

/-! ## A012667.P7159504902758957662

`2*A009529(n)`
-/

namespace A012667.P7159504902758957662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A009529 n

end

end A012667.P7159504902758957662

/-!
# A012669: Expansion of tan(tanh(x)*tan(x)).

The programs for A012669, there is no canonical definition to state claims against.
-/

/-! ## A012669.P11460291623632942673

`2*A009722(n)`
-/

namespace A012669.P11460291623632942673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A009722 n

end

end A012669.P11460291623632942673

/-!
# A012670: arctan(tanh(x)*tan(x))=2/2!*x^2-128/6!*x^6+253952/10!*x^10...

The programs for A012670, there is no canonical definition to state claims against.
-/

/-! ## A012670.P7736724885648546670

`(-1)^n*2^(6*n+1)*A090681(n)`
-/

namespace A012670.P7736724885648546670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * (2 ^ (6 * n + 1) : ℤ) * A090681 n

end

end A012670.P7736724885648546670

/-! ## A012670.P16277292913654843357

`A000182(2*n+1)*A320770(A005843(2*n+1))`
-/

namespace A012670.P16277292913654843357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000182 (2 * n + 1) * A320770 (A005843 (2 * n + 1)).toNat

end

end A012670.P16277292913654843357

/-!
# A012671: sinh(tanh(x)*tan(x))=2/2!*x^2+232/6!*x^6+405152/10!*x^10...

The programs for A012671, there is no canonical definition to state claims against.
-/

/-! ## A012671.P8095110581685208175

`2*A009617(n)`
-/

namespace A012671.P8095110581685208175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A009617 n

end

end A012671.P8095110581685208175

/-! ## A012671.P6031096047151471382

`A009272(record[xor(1, n)])`
-/

namespace A012671.P6031096047151471382
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009272 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A012671.P6031096047151471382

/-! ## A012671.P7320998885381685998

`A009272(2*n+1)`
-/

namespace A012671.P7320998885381685998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009272 (2 * n + 1)

end

end A012671.P7320998885381685998

/-! ## A012671.P4418438174813264235

`lcm(A004171(n), A009617(n))`
-/

namespace A012671.P4418438174813264235
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A004171 n) (A009617 n)

end

end A012671.P4418438174813264235

/-! ## A012671.P10265017875682647687

`A009617(n)+A009617(A055648(n))`
-/

namespace A012671.P10265017875682647687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009617 n + A009617 (A055648 n).toNat

end

end A012671.P10265017875682647687

/-!
# A012673: Expansion of e.g.f. tanh(tanh(x)*tan(x)) (even powers only).

The programs for A012673, there is no canonical definition to state claims against.
-/

/-! ## A012673.P5640819724856270245

`2*A009823(n)`
-/

namespace A012673.P5640819724856270245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A009823 n

end

end A012673.P5640819724856270245

/-!
# A012681: cos(tanh(x)*arctan(x))=1-12/4!*x^4+480/6!*x^6-25200/8!*x^8...

The programs for A012681, there is no canonical definition to state claims against.
-/

/-! ## A012681.P1262739198854235409

`A142583(n+1)²*A349632((n+1)*n!²)`
-/

namespace A012681.P1262739198854235409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142583 (n + 1) ^ 2 * A349632 ((n + 1) * Nat.factorial n ^ 2)

end

end A012681.P1262739198854235409

/-!
# A012682: sinh(tanh(x)*arctan(x))=2/2!*x^2-16/4!*x^4+440/6!*x^6-25856/8!*x^8...

The programs for A012682, there is no canonical definition to state claims against.
-/

/-! ## A012682.P16223367569532163610

`A012676(n+1)-A012685(n+1)`
-/

namespace A012682.P16223367569532163610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012676 (n + 1) - A012685 (n + 1)

end

end A012682.P16223367569532163610

/-!
# A012689: arctan(tanh(x)*cos(x))=x-7/3!*x^3+165/5!*x^5-10827/7!*x^7...

The programs for A012689, there is no canonical definition to state claims against.
-/

/-! ## A012689.P7836551851322554750

`A009375(Δ[n²])/A033999(n)`
-/

namespace A012689.P7836551851322554750
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A009375 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ) / (A033999 n : ℚ)

end

end A012689.P7836551851322554750

/-! ## A012689.P15500137117339419073

`record[A009375(n+1)]/A033999(n)`
-/

namespace A012689.P15500137117339419073
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009375 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) / (A033999 n : ℚ)

end

end A012689.P15500137117339419073

/-! ## A012689.P14316262449419313208

`A009375(2*n+1)*A009385(A020639(n+1))`
-/

namespace A012689.P14316262449419313208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009375 (2 * n + 1) * A009385 (A020639 (n + 1)).toNat

end

end A012689.P14316262449419313208

/-!
# A012696: arctan(tanh(x)*tanh(x))=2/2!*x^2-16/4!*x^4+32/6!*x^6+18944/8!*x^8...

The programs for A012696, there is no canonical definition to state claims against.
-/

/-! ## A012696.P15110589609926033012

`A190392(2*(n+1))*2*A253553(A003945(n))`
-/

namespace A012696.P15110589609926033012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190392 (2 * (n + 1)) * (2 * A253553 (A003945 n).toNat)

end

end A012696.P15110589609926033012

/-!
# A012697: Expansion of e.g.f.: exp(arctanh(x)*log(x+1))=1+2/2!*x^2-3/3!*x^3+28/4!*x^4-110/5!*x^5...

The programs for A012697, there is no canonical definition to state claims against.
-/

/-! ## A012697.P9465470075019300287

`A012706(n)+A012703(n)`
-/

namespace A012697.P9465470075019300287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012706 n + A012703 n

end

end A012697.P9465470075019300287

/-! ## A012697.P12032930095219854114

`A012706(A004903(n+1))+A012699(n)`
-/

namespace A012697.P12032930095219854114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012706 (A004903 (n + 1)).toNat + A012699 n

end

end A012697.P12032930095219854114

/-!
# A012698: E.g.f.: sin(arctanh(x)*log(x+1)) = 2/2!*x^2 - 3/3!*x^3 + 16/4!*x^4 - 50/5!*x^5 + ...

The programs for A012698, there is no canonical definition to state claims against.
-/

/-! ## A012698.P2796469230736697060

`A012704(n)^(n-∑{digits}[n, #])!`
-/

namespace A012698.P2796469230736697060
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012704 n ^ Nat.factorial ((n : ℤ) - ((((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum : ℕ) : ℤ)).toNat

end

end A012698.P2796469230736697060

/-! ## A012698.P4863497507962031495

`A012704(A087036(n))`
-/

namespace A012698.P4863497507962031495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012704 (A087036 n).toNat

end

end A012698.P4863497507962031495

/-! ## A012698.P9479001419946675657

`A012704(A280658(n+1))`
-/

namespace A012698.P9479001419946675657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012704 (A280658 (n + 1)).toNat

end

end A012698.P9479001419946675657

/-! ## A012698.P13720044116044160080

`A012704(n)+A000007(A269657(n))`
-/

namespace A012698.P13720044116044160080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012704 n + A000007 (A269657 n).toNat

end

end A012698.P13720044116044160080

/-!
# A012699: Expansion of e.g.f. arcsin(arctanh(x) * log(x+1)).

The programs for A012699, there is no canonical definition to state claims against.
-/

/-! ## A012699.P3957933542607464039

`A012703(A039723(n))`
-/

namespace A012699.P3957933542607464039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012703 (A039723 n).toNat

end

end A012699.P3957933542607464039

/-! ## A012699.P13667795823487708458

`A012703(A051022(n))`
-/

namespace A012699.P13667795823487708458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012703 (A051022 n).toNat

end

end A012699.P13667795823487708458

/-! ## A012699.P402869661237076963

`A012703(n)%A301371(n)`
-/

namespace A012699.P402869661237076963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A012703 n) (A301371 n)

end

end A012699.P402869661237076963

/-! ## A012699.P17689389707470485002

`A012703(n)*A159314(∑[n])`
-/

namespace A012699.P17689389707470485002
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012703 n * A159314 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A012699.P17689389707470485002

/-! ## A012699.P107667550652663399

`A012703(n)/A253641((n²+n)²+1)`
-/

namespace A012699.P107667550652663399
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A012703 n : ℚ) / (A253641 ((n ^ 2 + n) ^ 2 + 1) : ℚ)

end

end A012699.P107667550652663399

