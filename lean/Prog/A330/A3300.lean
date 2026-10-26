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
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C022
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C037
import Seq.B000.C038
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C007
import Seq.B001.C009
import Seq.B001.C010
import Seq.B001.C011
import Seq.B001.C012
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
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
import Seq.B006.C000
import Seq.B007.C000
import Seq.B008.C000
import Seq.B009.C000
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
# A330000: Beatty sequence for sqrt(x+1), where 1/sqrt(x-1) + 1/sqrt(x+1) = 1.

The programs for A330000, there is no canonical definition to state claims against.
-/

/-! ## A330000.P3494843280452425679

`comp[floor(n*(ϕ+3))]+1+n`
-/

namespace A330000.P3494843280452425679
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) * (Real.goldenRatio + 3)⌋

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1 + n

end

end A330000.P3494843280452425679

/-! ## A330000.P535980543871355419

`abs(record[xor(3, n)]-ceil((n+1)/(3-ϕ)+n))`
-/

namespace A330000.P535980543871355419
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 3 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℤ) - ⌈(n + 1 : ℝ) / (3 - Real.goldenRatio) + (n : ℝ)⌉|

end

end A330000.P535980543871355419

/-! ## A330000.P1490523113476839404

`floor(A187393(n+1)/3)`
-/

namespace A330000.P1490523113476839404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A187393 (n + 1) : ℚ) / 3⌋

end

end A330000.P1490523113476839404

/-! ## A330000.P10656935427656274368

`∑[A221150(abs(1-n))+2]`
-/

namespace A330000.P10656935427656274368
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221150 |1 - (n : ℤ)|.toNat + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A330000.P10656935427656274368

/-! ## A330000.P3182640985034142226

`∑[char[A003231(n+1)]+2]`
-/

namespace A330000.P3182640985034142226
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003231 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = (n : ℤ) then 1 else 0) + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A330000.P3182640985034142226

/-! ## A330000.P6482431031788290467

`floor(A001952(2*(n+1))/3)`
-/

namespace A330000.P6482431031788290467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A001952 (2 * (n + 1)) : ℚ) / 3⌋

end

end A330000.P6482431031788290467

/-! ## A330000.P13154589132451114059

`round(A184922(2*(n+1))/3)`
-/

namespace A330000.P13154589132451114059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A184922 (2 * (n + 1)) : ℚ) / 3)

end

end A330000.P13154589132451114059

/-! ## A330000.P3611498771980623134

`A002264(A187393(n+1))`
-/

namespace A330000.P3611498771980623134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A187393 (n + 1)).toNat

end

end A330000.P3611498771980623134

/-! ## A330000.P11505104379131359291

`A002264(A001952(2*(n+1)))`
-/

namespace A330000.P11505104379131359291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A001952 (2 * (n + 1))).toNat

end

end A330000.P11505104379131359291

/-! ## A330000.P5944132179465692580

`A008620(A288999(2*n+1))`
-/

namespace A330000.P5944132179465692580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (A288999 (2 * n + 1)).toNat

end

end A330000.P5944132179465692580

/-!
# A330001: Number of partitions p of n such that (number of numbers in p that have multiplicity 1) < (number of numbers in p having multiplicity > 1).

The programs for A330001, there is no canonical definition to state claims against.
-/

/-! ## A330001.P10353698058734066641

`A330146(n)-A241274(n)`
-/

namespace A330001.P10353698058734066641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330146 n - A241274 n

end

end A330001.P10353698058734066641

/-! ## A330001.P8001019226265053210

`A000041(n)-(A329976(n)+A241274(n))`
-/

namespace A330001.P8001019226265053210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - (A329976 n + A241274 n)

end

end A330001.P8001019226265053210

/-! ## A330001.P1672163244565434396

`A213598(n)-(A329976(n)+A241274(n))`
-/

namespace A330001.P1672163244565434396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213598 n - (A329976 n + A241274 n)

end

end A330001.P1672163244565434396

/-! ## A330001.P8844177497192059182

`sqrt(A001255(n))-(A329976(n)+A241274(n))`
-/

namespace A330001.P8844177497192059182
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A001255 n : ℝ) - (A329976 n + A241274 n : ℝ)

end

end A330001.P8844177497192059182

/-! ## A330001.P15488508309586288233

`∑[A002865(n)]-(A329976(n)+A241274(n))`
-/

namespace A330001.P15488508309586288233
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (A329976 n + A241274 n)

end

end A330001.P15488508309586288233

/-!
# A330002: Beatty sequence for x, where 1/x + 1/(x+1)^2 = 1.

The programs for A330002, there is no canonical definition to state claims against.
-/

/-! ## A330002.P2824845678060125910

`comp[5*n]%84`
-/

namespace A330002.P2824845678060125910
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 * n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n % 84

end

end A330002.P2824845678060125910

/-! ## A330002.P5535976661307685946

`comp[lcm(5, ceil(tan(n)))]`
-/

namespace A330002.P5535976661307685946
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 5 ⌈Real.tan (n : ℝ)⌉

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A330002.P5535976661307685946

/-! ## A330002.P6230818440963504594

`and(comp[5*n], 127)`
-/

namespace A330002.P6230818440963504594
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 * n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) 127

end

end A330002.P6230818440963504594

/-! ## A330002.P16738572831050970589

`floor((n+1)*atan(3))`
-/

namespace A330002.P16738572831050970589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℝ) * Real.arctan (3 : ℝ)⌋

end

end A330002.P16738572831050970589

/-! ## A330002.P10444795265417691407

`floor(∑[gcd(2, n)^γ])`
-/

namespace A330002.P10444795265417691407
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (Nat.gcd 2 n : ℝ) ^ Real.eulerMascheroniConstant

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋

end

end A330002.P10444795265417691407

/-! ## A330002.P6667607206208935678

`round((n+γ)*atan(3))`
-/

namespace A330002.P6667607206208935678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((n : ℝ) + Real.eulerMascheroniConstant) * Real.arctan (3 : ℝ))

end

end A330002.P6667607206208935678

/-! ## A330002.P2457619130963168150

`floor((n+1)*sqrt(tan(1)))`
-/

namespace A330002.P2457619130963168150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℝ) * Real.sqrt (Real.tan (1 : ℝ))⌋

end

end A330002.P2457619130963168150

/-! ## A330002.P6741975567208589044

`floor(n*sqrt(asin(1)))+1`
-/

namespace A330002.P6741975567208589044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) * Real.sqrt (Real.arcsin (1 : ℝ))⌋ + 1

end

end A330002.P6741975567208589044

/-! ## A330002.P4776420400698204528

`floor((n+1)/sqrt(cot(1)))`
-/

namespace A330002.P4776420400698204528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℝ) / Real.sqrt (Real.cot (1 : ℝ))⌋

end

end A330002.P4776420400698204528

/-!
# A330003: Beatty sequence for (x+1)^2, where 1/x + 1/(x+1)^2 = 1.

The programs for A330003, there is no canonical definition to state claims against.
-/

/-! ## A330003.P862831179598692206

`floor(∑[sqrt(gcd(2, n)+24)])`
-/

namespace A330003.P862831179598692206
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (Nat.gcd 2 n + 24 : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋

end

end A330003.P862831179598692206

/-! ## A330003.P10104022485764894549

`floor(∑[sqrt(26-n%2)])`
-/

namespace A330003.P10104022485764894549
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (26 - ((n % 2 : ℕ) : ℤ) : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋

end

end A330003.P10104022485764894549

/-! ## A330003.P5882022769781159741

`∑[char[20*n!]+5]`
-/

namespace A330003.P5882022769781159741
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  20 * Nat.factorial n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = n then 1 else 0) + 5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A330003.P5882022769781159741

/-! ## A330003.P6003229824196210524

`floor(7*(n+1)/log(4))`
-/

namespace A330003.P6003229824196210524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(7 * (n + 1) : ℝ) / Real.log (4 : ℝ)⌋

end

end A330003.P6003229824196210524

/-! ## A330003.P8372660763269223610

`abs(floor(6*(n+1)*sin(1)))`
-/

namespace A330003.P8372660763269223610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |⌊6 * ((n + 1 : ℝ) * Real.sin (1 : ℝ))⌋|

end

end A330003.P8372660763269223610

/-! ## A330003.P16465736688298377970

`comp[A262773(n)-n]`
-/

namespace A330003.P16465736688298377970
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262773 n - (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A330003.P16465736688298377970

/-! ## A330003.P14669886656582437880

`∑[char[20*A000041(n)]+5]`
-/

namespace A330003.P14669886656582437880
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  20 * A000041 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = (n : ℤ) then 1 else 0) + 5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A330003.P14669886656582437880

/-! ## A330003.P8424307853359768103

`∑[char[20*A000108(n)]+5]`
-/

namespace A330003.P8424307853359768103
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  20 * A000108 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = (n : ℤ) then 1 else 0) + 5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A330003.P8424307853359768103

/-! ## A330003.P11240714052644270244

`∑[char[A080193(3*(n+1)+1)]+5]`
-/

namespace A330003.P11240714052644270244
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080193 (3 * (n + 1) + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = (n : ℤ) then 1 else 0) + 5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A330003.P11240714052644270244

/-! ## A330003.P16707222112088587015

`A279759(n)+A016897(n)`
-/

namespace A330003.P16707222112088587015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279759 n + A016897 n

end

end A330003.P16707222112088587015

/-!
# A330004: a(1) = 0, and for n > 0, a(n+1) = u - v where u (resp. v) is the number of terms equal to a(n) (resp. a(n)+1) among the first n terms.

The programs for A330004, there is no canonical definition to state claims against.
-/

/-! ## A330004.P284919205273330456

`or(A124764(A346305(n+1)), A253786(n))`
-/

namespace A330004.P284919205273330456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A124764 (A346305 (n + 1)).toNat) (A253786 n)

end

end A330004.P284919205273330456

/-! ## A330004.P1401082198734539541

`A124764(or(n, A056962(n+2)))`
-/

namespace A330004.P1401082198734539541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124764 (Int.lor (n : ℤ) (A056962 (n + 2))).toNat

end

end A330004.P1401082198734539541

/-! ## A330004.P3024740695566240659

`∑{e}[A001317(n), #]-A056976(n+1)`
-/

namespace A330004.P3024740695566240659
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001317 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p : ℕ) : ℤ) - A056976 (n + 1)

end

end A330004.P3024740695566240659

/-! ## A330004.P17042347768546603158

`A000120(n-A265757(A000211(n)))`
-/

namespace A330004.P17042347768546603158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 ((n : ℤ) - A265757 (A000211 n).toNat).toNat

end

end A330004.P17042347768546603158

/-! ## A330004.P18365412012703573441

`A000120(n)-A353674(A000219(n))`
-/

namespace A330004.P18365412012703573441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n - A353674 (A000219 n).toNat

end

end A330004.P18365412012703573441

/-!
# A330005: a(n) counts the square-words immediately before a(n), with a(1) = 0.

The programs for A330005, there is no canonical definition to state claims against.
-/

/-! ## A330005.P4891187021039474995

`A200270(n+1)%A320838(n+1)`
-/

namespace A330005.P4891187021039474995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A200270 (n + 1)) (A320838 (n + 1))

end

end A330005.P4891187021039474995

/-! ## A330005.P17245209832924359994

`A083896(∑[(n+1)*∑[A104706(2*(n+2))]]+1)`
-/

namespace A330005.P17245209832924359994
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104706 (2 * (n + 2))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083896 (∑ j ∈ Finset.range (n + 1), f1 j + 1).toNat

end

end A330005.P17245209832924359994

/-! ## A330005.P10499506369992573724

`A092334(n+1)-A092334(A231145(n+2))`
-/

namespace A330005.P10499506369992573724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092334 (n + 1) - A092334 (A231145 (n + 2)).toNat

end

end A330005.P10499506369992573724

/-! ## A330005.P2647510591015168228

`and(A000720(A005234(n+1)), A033264(n+3))`
-/

namespace A330005.P2647510591015168228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000720 (A005234 (n + 1)).toNat) (A033264 (n + 3))

end

end A330005.P2647510591015168228

/-! ## A330005.P5026901291248095864

`A288724(2*n+1)%A391621(A066669(2*n+5))`
-/

namespace A330005.P5026901291248095864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A288724 (2 * n + 1)) (A391621 (A066669 (2 * n + 5)).toNat)

end

end A330005.P5026901291248095864

/-!
# A330006: Numbers m such that psi(m) > psi(k) for all k < m, where psi is the Dedekind psi function (A001615).

The programs for A330006, there is no canonical definition to state claims against.
-/

/-! ## A330006.P9802427928817943849

`A032741(A002146(n))*A373320(n+1)`
-/

namespace A330006.P9802427928817943849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 (A002146 n).toNat * A373320 (n + 1)

end

end A330006.P9802427928817943849

/-! ## A330006.P9094138203101901354

`A373320(n+1)%A127024(A028310(n))`
-/

namespace A330006.P9094138203101901354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A373320 (n + 1)) (A127024 (A028310 n).toNat)

end

end A330006.P9094138203101901354

/-! ## A330006.P5159039993110878194

`A373320(n+1)+A143721(A175727(n+1))`
-/

namespace A330006.P5159039993110878194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373320 (n + 1) + A143721 (A175727 (n + 1)).toNat

end

end A330006.P5159039993110878194

/-! ## A330006.P4734461908371659052

`A176095(A342509(n+1))*A373320(n+1)`
-/

namespace A330006.P4734461908371659052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176095 (A342509 (n + 1)).toNat * A373320 (n + 1)

end

end A330006.P4734461908371659052

/-! ## A330006.P16756942743048385644

`A373320(n+1)+A186685(A039949(3*n+1))`
-/

namespace A330006.P16756942743048385644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373320 (n + 1) + A186685 (A039949 (3 * n + 1)).toNat

end

end A330006.P16756942743048385644

/-! ## A330006.P4513914672744848239

`A373320(n+1)+A000007(A016754(n))`
-/

namespace A330006.P4513914672744848239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373320 (n + 1) + A000007 (A016754 n).toNat

end

end A330006.P4513914672744848239

/-! ## A330006.P15367348140138377625

`A373320(n+1)+A000122(A343423(n+1))`
-/

namespace A330006.P15367348140138377625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373320 (n + 1) + A000122 (A343423 (n + 1)).toNat

end

end A330006.P15367348140138377625

/-!
# A330007: Base-24 integers whose substrings are primes (written in base 10).

The programs for A330007, there is no canonical definition to state claims against.
-/

/-! ## A330007.P15892726009723866747

`lt[A062584(n), A000196(A156299(n+1))]`
-/

namespace A330007.P15892726009723866747
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062584 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A156299 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A330007.P15892726009723866747

/-! ## A330007.P8077450866300289936

`p?[n*A119335(2*n)]`
-/

namespace A330007.P8077450866300289936
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A119335 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A330007.P8077450866300289936

/-! ## A330007.P16887816472871952362

`record[A006530(n+4)%A196122(n+1)]`
-/

namespace A330007.P16887816472871952362
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A006530 (n + 4)) (A196122 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A330007.P16887816472871952362

/-! ## A330007.P8552681440826705575

`lt[A184720(2*n+5), A140508(n+1)]+1`
-/

namespace A330007.P8552681440826705575
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184720 (2 * n + 5)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140508 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A330007.P8552681440826705575

/-! ## A330007.P7306673186984745157

`p?[record[A113580(n)]]`
-/

namespace A330007.P7306673186984745157
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113580 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A330007.P7306673186984745157

/-!
# A330010: Number of length-n ternary strings x with the property that if w is a subword of x and |w| >= 3, then w reversed is not a subword of x.

The programs for A330010, the canonical program `A330010.P3407223877072817178` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A330010 has offset 0).

The definition of A330010 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A330010.P3407223877072817178

`a(n-1)+a(n-2)` with `a(0)=1, a(1)=3, a(2)=9, a(3)=18, a(4)=30`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A330010

/-- `a(n-1)+a(n-2)` -/
def P3407223877072817178.Spec : Prop :=
  ∀ n, (P3407223877072817178.a n : ℤ) = A330010 n

theorem P3407223877072817178.correct : P3407223877072817178.Spec := by
  intro n
  simp only [A330010]

end A330010

/-! ## A330010.P549174404347520669

`ogf((1+2x+5x^2+6x^3+3x^4)/(1-x-x^2))`
-/

namespace A330010.P549174404347520669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 2, 5, 6, 3] [1, -1, -1] n

end

end A330010.P549174404347520669

namespace A330010

/-- `ogf((1+2x+5x^2+6x^3+3x^4)/(1-x-x^2))` -/
def P549174404347520669.Spec : Prop :=
  ∀ n, P549174404347520669.a n = A330010 n

end A330010

/-! ## A330010.P1243475457173831052

`A000007(n)+3*A084176(∑[n]+1)`
-/

namespace A330010.P1243475457173831052
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + 3 * A084176 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A330010.P1243475457173831052

namespace A330010

/-- `A000007(n)+3*A084176(∑[n]+1)` -/
def P1243475457173831052.Spec : Prop :=
  ∀ n, P1243475457173831052.a n = A330010 n

end A330010

/-! ## A330010.P15115964950743897140

`(3*A084176(∑[n]+1))^A062157(n)²`
-/

namespace A330010.P15115964950743897140
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 * A084176 (∑ j ∈ Finset.range (n + 1), f1 j + 1) : ℚ) ^ (A062157 n ^ 2 : ℤ)

end

end A330010.P15115964950743897140

namespace A330010

/-- `(3*A084176(∑[n]+1))^A062157(n)²` -/
def P15115964950743897140.Spec : Prop :=
  ∀ n, P15115964950743897140.a n = (A330010 n : ℚ)

end A330010

/-! ## A330010.P14054169766464510487

`and(1, A000084(n+1))+3*A084176(∑[n]+1)`
-/

namespace A330010.P14054169766464510487
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A000084 (n + 1)) + 3 * A084176 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A330010.P14054169766464510487

namespace A330010

/-- `and(1, A000084(n+1))+3*A084176(∑[n]+1)` -/
def P14054169766464510487.Spec : Prop :=
  ∀ n, P14054169766464510487.a n = A330010 n

end A330010

/-! ## A330010.P4365002733199682756

`log2(A014963(4*n+2))+3*A084176(∑[n]+1)`
-/

namespace A330010.P4365002733199682756
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A014963 (4 * n + 2) : ℝ) + (3 * A084176 (∑ j ∈ Finset.range (n + 1), f1 j + 1) : ℝ)

end

end A330010.P4365002733199682756

namespace A330010

/-- `log2(A014963(4*n+2))+3*A084176(∑[n]+1)` -/
def P4365002733199682756.Spec : Prop :=
  ∀ n, P4365002733199682756.a n = (A330010 n : ℝ)

end A330010

/-! ## A330010.P3385189879623208751

`A008683(A102376(n))+3*A084176(∑[n]+1)`
-/

namespace A330010.P3385189879623208751
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A102376 n).toNat + 3 * A084176 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A330010.P3385189879623208751

namespace A330010

/-- `A008683(A102376(n))+3*A084176(∑[n]+1)` -/
def P3385189879623208751.Spec : Prop :=
  ∀ n, P3385189879623208751.a n = A330010 n

end A330010

/-! ## A330010.P7200086611089380755

`A287822(∑[n])+3*A084176(∑[n]+1)`
-/

namespace A330010.P7200086611089380755
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287822 (∑ j ∈ Finset.range (n + 1), f1 j) + 3 * A084176 (∑ j ∈ Finset.range (n + 1), f2 j + 1)

end

end A330010.P7200086611089380755

namespace A330010

/-- `A287822(∑[n])+3*A084176(∑[n]+1)` -/
def P7200086611089380755.Spec : Prop :=
  ∀ n, P7200086611089380755.a n = A330010 n

end A330010

/-!
# A330011: Number of length-n strings w over a 4-letter alphabet with the property that if x is a subword of w and |x| >= 2, then x reversed is not a subword of w.

The programs for A330011, there is no canonical definition to state claims against.
-/

/-! ## A330011.P16638625008564619416

`∑[A007434(record[A035171(n+1)])]`
-/

namespace A330011.P16638625008564619416
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035171 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007434 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A330011.P16638625008564619416

/-! ## A330011.P8755317553181470206

`∑[record[A007434(A091220(n+1))]]`
-/

namespace A330011.P8755317553181470206
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007434 (A091220 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A330011.P8755317553181470206

/-! ## A330011.P16231279444073183027

`∑[A007434(record[A356233(n+1)])]`
-/

namespace A330011.P16231279444073183027
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356233 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007434 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A330011.P16231279444073183027

/-! ## A330011.P4823822742651522604

`A124815(A257640(3*n)%A118038(3*n+4))`
-/

namespace A330011.P4823822742651522604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124815 (Int.tmod (A257640 (3 * n)) (A118038 (3 * n + 4))).toNat

end

end A330011.P4823822742651522604

/-!
# A330012: Number of length-n binary strings w with the property that if x is a subword of w and |x| >= 6, then x reversed is not a subword of w.

The programs for A330012, there is no canonical definition to state claims against.
-/

/-! ## A330012.P8646396004485231587

`∏{e}[A000244(n), A329824(#)]`
-/

namespace A330012.P8646396004485231587
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000244 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A329824 (Nat.factorization (f1 n).natAbs p)

end

end A330012.P8646396004485231587

/-! ## A330012.P7378372725281569478

`∑[A287896(∏[A152983(n)])]`
-/

namespace A330012.P7378372725281569478
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152983 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287896 (∏ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A330012.P7378372725281569478

/-! ## A330012.P12211373059997669909

`record[A028710(A004523(n%2+4*C(n, 2)))]`
-/

namespace A330012.P12211373059997669909
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028710 (A004523 (n % 2 + 4 * Nat.choose n 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A330012.P12211373059997669909

/-! ## A330012.P447217452813552129

`record[A028710(A004523(2*(n²-n/2)-n))]`
-/

namespace A330012.P447217452813552129
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028710 (A004523 (SequenceMachineLib.roundAway (2 * ((n ^ 2 : ℚ) - (n : ℚ) / 2) - (n : ℚ))).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A330012.P447217452813552129

/-! ## A330012.P1635623813692215696

`A005153(eq[A051903(n+4), A126749(n+4)])`
-/

namespace A330012.P1635623813692215696
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (n + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126749 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005153 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A330012.P1635623813692215696

/-!
# A330013: a(n) is the number of solutions with nonnegative (x,y,z) to the cubic Diophantine equation x^3+y^3+z^3 - 3*x*y*z = n.

The programs for A330013, there is no canonical definition to state claims against.
-/

/-! ## A330013.P3509537495983400713

`A005882(gcd(A050231(n+2), A229615(n+2)))`
-/

namespace A330013.P3509537495983400713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005882 (Int.gcd (A050231 (n + 2)) (A229615 (n + 2)))

end

end A330013.P3509537495983400713

/-! ## A330013.P413488884526851979

`xor(A086412(A057468(n+5)), A229037(n+1))`
-/

namespace A330013.P413488884526851979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A086412 (A057468 (n + 5)).toNat) (A229037 (n + 1))

end

end A330013.P413488884526851979

/-!
# A330015: a(0) = 0; for n > 0, a(n) is the number of distinct digit strings that occur at least twice (including any overlapping occurrences) in the concatenation of all previous terms.

The programs for A330015, there is no canonical definition to state claims against.
-/

/-! ## A330015.P11626036869985385426

`A331163(n)-A025442(A358010(3*(n+1)))`
-/

namespace A330015.P11626036869985385426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331163 n - A025442 (A358010 (3 * (n + 1))).toNat

end

end A330015.P11626036869985385426

/-!
# A330016: a(n) = Sum_{k=1..n} (-1)^(n - k) * H(k) * k!, where H(k) is the k-th harmonic number.

The programs for A330016, there is no canonical definition to state claims against.
-/

/-! ## A330016.P14178166190905119905

`abs(∑[A081048(n)])`
-/

namespace A330016.P14178166190905119905
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081048 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A330016.P14178166190905119905

/-! ## A330016.P17968581027267849489

`A000254(n)-a(n-1)` with `a(0)=0`
-/

namespace A330016.P17968581027267849489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A000254 n - a (n - 1)

end

end A330016.P17968581027267849489

/-! ## A330016.P4124142703473344082

`abs(∑[A048994(∑[n+1]+2)])`
-/

namespace A330016.P4124142703473344082
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048994 (∑ j ∈ Finset.range (n + 1), f2 j + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A330016.P4124142703473344082

/-! ## A330016.P11638774908059666008

`A000774(n)-n!-a(n-1)` with `a(0)=0`
-/

namespace A330016.P11638774908059666008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A000774 n - (Nat.factorial n : ℤ) - a (n - 1)

end

end A330016.P11638774908059666008

/-! ## A330016.P18358230517317638478

`A132393(∑[n+1]+2)-a(n-1)` with `a(0)=0`
-/

namespace A330016.P18358230517317638478
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A132393 (∑ j ∈ Finset.range (n + 1), f1 j + 2) - a (n - 1)

end

end A330016.P18358230517317638478

/-!
# A330017: a(1) = 1; a(n+1) = Sum_{d|n} binomial(n,d) * a(d).

The programs for A330017, there is no canonical definition to state claims against.
-/

/-! ## A330017.P6821341183210322172

`A046700(A018115(n))`
-/

namespace A330017.P6821341183210322172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046700 (A018115 n).toNat

end

end A330017.P6821341183210322172

/-! ## A330017.P3311053697221608556

`A046700(A242551(n+1))`
-/

namespace A330017.P3311053697221608556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046700 (A242551 (n + 1)).toNat

end

end A330017.P3311053697221608556

/-! ## A330017.P17973993889072115779

`∑{d}[A290133(n), A018412(#)]`
-/

namespace A330017.P17973993889072115779
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290133 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A018412 d

end

end A330017.P17973993889072115779

/-!
# A330018: a(n) = Sum_{d|n} (bigomega(d) - omega(d)).

The programs for A330018, the canonical program `A330018.P8032385890936907680` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A330018 has offset 1).

The definition of A330018 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A062799, A069264, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A330018.P8032385890936907680

`A069264(n+1)-A062799(n+1)`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A330018

/-- `A069264(n+1)-A062799(n+1)` -/
def P8032385890936907680.Spec : Prop :=
  ∀ n, P8032385890936907680.a n = A330018 (n + 1)

theorem P8032385890936907680.correct : P8032385890936907680.Spec := by
  intro n
  simp only [A330018, Nat.add_sub_cancel]

end A330018

/-! ## A330018.P9374936700877220433

`∑{d}[n+1, A046660(#)]`
-/

namespace A330018.P9374936700877220433
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A046660 d

end

end A330018.P9374936700877220433

namespace A330018

/-- `∑{d}[n+1, A046660(#)]` -/
def P9374936700877220433.Spec : Prop :=
  ∀ n, P9374936700877220433.a n = A330018 (n + 1)

end A330018

/-! ## A330018.P363282041288071702

`∑{d}[n+1, A001222(A003557(#))]`
-/

namespace A330018.P363282041288071702
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A001222 (A003557 d).toNat

end

end A330018.P363282041288071702

namespace A330018

/-- `∑{d}[n+1, A001222(A003557(#))]` -/
def P363282041288071702.Spec : Prop :=
  ∀ n, P363282041288071702.a n = A330018 (n + 1)

end A330018

/-! ## A330018.P4912898078886832135

`∑{d}[n+1, A001222(#)-A001221(#)]`
-/

namespace A330018.P4912898078886832135
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (A001222 d - A001221 d)

end

end A330018.P4912898078886832135

namespace A330018

/-- `∑{d}[n+1, A001222(#)-A001221(#)]` -/
def P4912898078886832135.Spec : Prop :=
  ∀ n, P4912898078886832135.a n = A330018 (n + 1)

end A330018

/-! ## A330018.P16990416024463110327

`∑{d}[n+1, A000005(#)*A268340((n+1)/#)]`
-/

namespace A330018.P16990416024463110327
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000005 d * A268340 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A330018.P16990416024463110327

namespace A330018

/-- `∑{d}[n+1, A000005(#)*A268340((n+1)/#)]` -/
def P16990416024463110327.Spec : Prop :=
  ∀ n, P16990416024463110327.a n = A330018 (n + 1)

end A330018

/-!
# A330019: Expansion of e.g.f. 1 / (1 - Sum_{k>=1} binomial(k,floor(k/2)) * x^k / k!).

The programs for A330019, there is no canonical definition to state claims against.
-/

/-! ## A330019.P1002854464757822032

`A000720(lcm(2, A111533(n)))`
-/

namespace A330019.P1002854464757822032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (Int.lcm 2 (A111533 n))

end

end A330019.P1002854464757822032

/-! ## A330019.P4493077638424966710

`A261423(A025164(n)+1)-1`
-/

namespace A330019.P4493077638424966710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261423 (A025164 n + 1).toNat - 1

end

end A330019.P4493077638424966710

/-!
# A330020: Expansion of e.g.f. Sum_{k>=1} x^k / (k! * (1 - x^k)^k).

The programs for A330020, there is no canonical definition to state claims against.
-/

/-! ## A330020.P8191698037098074974

`A273670(n*A211374(n+1))`
-/

namespace A330020.P8191698037098074974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273670 ((n : ℤ) * A211374 (n + 1)).toNat

end

end A330020.P8191698037098074974

/-! ## A330020.P3092293230806125680

`A354008((n+1)*A211374(n+1))`
-/

namespace A330020.P3092293230806125680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354008 ((n + 1 : ℤ) * A211374 (n + 1)).toNat

end

end A330020.P3092293230806125680

/-!
# A330021: Expansion of e.g.f. exp(sinh(exp(x) - 1)).

The programs for A330021, there is no canonical definition to state claims against.
-/

/-! ## A330021.P16125983894254410552

`A110655(A115082(n)+n)`
-/

namespace A330021.P16125983894254410552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110655 (A115082 n + (n : ℤ)).toNat

end

end A330021.P16125983894254410552

/-! ## A330021.P10008551063670711886

`∑[A008616(∑[A066534(n)])]`
-/

namespace A330021.P10008551063670711886
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066534 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008616 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A330021.P10008551063670711886

/-! ## A330021.P13041157314699906602

`A157806(A131206(n))+n!`
-/

namespace A330021.P13041157314699906602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157806 (A131206 n).toNat + (Nat.factorial n : ℤ)

end

end A330021.P13041157314699906602

/-!
# A330023: a(n) counts the cube-words immediately before a(n), with a(1) = 0.

The programs for A330023, there is no canonical definition to state claims against.
-/

/-! ## A330023.P3906740608248804710

`val(A027379(n), A212122(n+3))`
-/

namespace A330023.P3906740608248804710
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A027379 n).toNat (A212122 (n + 3)).toNat

end

end A330023.P3906740608248804710

/-! ## A330023.P12882279995539542197

`and(A204521(n+1), A397801(n))`
-/

namespace A330023.P12882279995539542197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A204521 (n + 1)) (A397801 n)

end

end A330023.P12882279995539542197

/-! ## A330023.P15559214357758541039

`A007949(∑[A003602(3*n+4)²])`
-/

namespace A330023.P15559214357758541039
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003602 (3 * n + 4) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007949 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A330023.P15559214357758541039

/-! ## A330023.P13191426673315953411

`A093956(n+1)+A093956(A131685(n+1))`
-/

namespace A330023.P13191426673315953411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093956 (n + 1) + A093956 (A131685 (n + 1)).toNat

end

end A330023.P13191426673315953411

/-! ## A330023.P2187995989143416300

`A076875(A339811(n+1))%A091787(n+1)`
-/

namespace A330023.P2187995989143416300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A076875 (A339811 (n + 1)).toNat) (A091787 (n + 1))

end

end A330023.P2187995989143416300

/-!
# A330024: a(n) = floor(n/z) where z is the number of zeros in the decimal expansion of 2^n, and a(n)=0 when z=0.

The programs for A330024, the canonical program `A330024.P16424949572744117314` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A330024 has offset 0).

The definition of A330024 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A330024.P16424949572744117314

`val(A000079(n), A171559(A027870(n)))`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A330024

/-- `val(A000079(n), A171559(A027870(n)))` -/
def P16424949572744117314.Spec : Prop :=
  ∀ n, (P16424949572744117314.a n : ℤ) = A330024 n

theorem P16424949572744117314.correct : P16424949572744117314.Spec := by
  intro n
  simp only [A330024]

end A330024

/-! ## A330024.P10756765739037647806

`val(A016116(2*n), A171559(A027870(n)))`
-/

namespace A330024.P10756765739037647806
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A016116 (2 * n)).toNat (A171559 (A027870 n).toNat).toNat

end

end A330024.P10756765739037647806

namespace A330024

/-- `val(A016116(2*n), A171559(A027870(n)))` -/
def P10756765739037647806.Spec : Prop :=
  ∀ n, (P10756765739037647806.a n : ℤ) = A330024 n

end A330024

/-! ## A330024.P9701177967541581561

`A160638(A027870(n)*A160638(n))`
-/

namespace A330024.P9701177967541581561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160638 (A027870 n * A160638 n).toNat

end

end A330024.P9701177967541581561

namespace A330024

/-- `A160638(A027870(n)*A160638(n))` -/
def P9701177967541581561.Spec : Prop :=
  ∀ n, P9701177967541581561.a n = A330024 n

end A330024

/-! ## A330024.P17835994016364459099

`A160638(val(A028910(n), 5)*A160638(n))`
-/

namespace A330024.P17835994016364459099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160638 ((SequenceMachineLib.valuation (A028910 n).toNat 5 : ℤ) * A160638 n).toNat

end

end A330024.P17835994016364459099

namespace A330024

/-- `A160638(val(A028910(n), 5)*A160638(n))` -/
def P17835994016364459099.Spec : Prop :=
  ∀ n, P17835994016364459099.a n = A330024 n

end A330024

/-! ## A330024.P16563417119145063181

`A160638(∑{digits}[2^n, A000007(#)]*A160638(n))`
-/

namespace A330024.P16563417119145063181
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160638 (((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A000007 x).sum * A160638 n).toNat

end

end A330024.P16563417119145063181

namespace A330024

/-- `A160638(∑{digits}[2^n, A000007(#)]*A160638(n))` -/
def P16563417119145063181.Spec : Prop :=
  ∀ n, P16563417119145063181.a n = A330024 n

end A330024

/-!
# A330025: a(n) = (-1)^floor(n/5) * sign(mod(n, 5)).

The programs for A330025, the canonical program `A330025.P16976327817596103196` is in `Seq.B001.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A330025 has offset 0).

The definition of A330025 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A330025.P16976327817596103196

`(-1)^floor(n/5)*A011558(n)`

The canonical program, it is in `Seq.B001.C011`.
-/

namespace A330025

/-- `(-1)^floor(n/5)*A011558(n)` -/
def P16976327817596103196.Spec : Prop :=
  ∀ n, P16976327817596103196.a n = (A330025 n : ℚ)

end A330025

/-!
# A330026: a(n) is the number of integers k > prime(n) such that all rows (after the initial row) of the triangle of absolute differences of the (n+1)-tuple (prime(1), ..., prime(n), k) all start with 1.

The programs for A330026, there is no canonical definition to state claims against.
-/

/-! ## A330026.P8410110067382494073

`ceil(A173815(A028310(n))/2)`
-/

namespace A330026.P8410110067382494073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A173815 (A028310 n).toNat : ℚ) / 2⌉

end

end A330026.P8410110067382494073

/-! ## A330026.P15149262316538109857

`A008619(A173815(A028310(n)))`
-/

namespace A330026.P15149262316538109857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A173815 (A028310 n).toNat).toNat

end

end A330026.P15149262316538109857

/-! ## A330026.P4439056456824823125

`round(A173815(A028310(n))/2)%A014364(n)`
-/

namespace A330026.P4439056456824823125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A173815 (A028310 n).toNat : ℚ) / 2)) (A014364 n)

end

end A330026.P4439056456824823125

/-! ## A330026.P814930390243670887

`(A173815(A028310(n))+2-A057427(n+1))/2`
-/

namespace A330026.P814930390243670887
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A173815 (A028310 n).toNat + 2 - A057427 (n + 1) : ℚ) / 2

end

end A330026.P814930390243670887

/-! ## A330026.P10229109868509076030

`(or(A173815(A028310(n)), A189289(n+1))+1)/2`
-/

namespace A330026.P10229109868509076030
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lor (A173815 (A028310 n).toNat) (A189289 (n + 1)) + 1 : ℚ) / 2

end

end A330026.P10229109868509076030

/-! ## A330026.P4768281399771106700

`A173817(n+1)-A102781(n+1)`
-/

namespace A330026.P4768281399771106700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173817 (n + 1) - A102781 (n + 1)

end

end A330026.P4768281399771106700

/-! ## A330026.P6214174086209241019

`A173817(n+1)-record[A104512(n+1)]`
-/

namespace A330026.P6214174086209241019
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104512 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173817 (n + 1) - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A330026.P6214174086209241019

/-! ## A330026.P1888016119889859473

`A173817(n+1)-A004524(p?[A001057(n)])`
-/

namespace A330026.P1888016119889859473
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173817 (n + 1) - A004524 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A330026.P1888016119889859473

/-! ## A330026.P10828276450259465684

`A173817(n+1)-A004524(A000040(n+1))`
-/

namespace A330026.P10828276450259465684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173817 (n + 1) - A004524 (A000040 (n + 1)).toNat

end

end A330026.P10828276450259465684

/-! ## A330026.P7973367025458528447

`A173817(n+1)-A004526(A006093(n+1))`
-/

namespace A330026.P7973367025458528447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173817 (n + 1) - A004526 (A006093 (n + 1)).toNat

end

end A330026.P7973367025458528447

/-!
# A330027: a(0) = 0; for n > 0, a(n) is the total number of repeated strings in the concatenation of terms a(0) to a(n-1). Repeated strings can overlap.

The programs for A330027, there is no canonical definition to state claims against.
-/

/-! ## A330027.P9974080733679252803

`A004526(lt[A245092(n), 19])`
-/

namespace A330027.P9974080733679252803
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245092 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  19

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A330027.P9974080733679252803

/-! ## A330027.P4046157659710659753

`A111660(lt[A245092(n), 20])`
-/

namespace A330027.P4046157659710659753
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245092 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  20

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111660 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A330027.P4046157659710659753

/-! ## A330027.P6610365903566524709

`A004526(lt[A122651(3*n+1), 16])`
-/

namespace A330027.P6610365903566524709
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122651 (3 * n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A330027.P6610365903566524709

/-! ## A330027.P18443668551270468707

`floor(lt[A000009(n+2), A273567(n)]/2)`
-/

namespace A330027.P18443668551270468707
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273567 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(SequenceMachineLib.nth (fun j => f1 j < f2 j) n : ℚ) / 2⌋

end

end A330027.P18443668551270468707

/-! ## A330027.P4528753369030572936

`A055509(A275065(n))+A004526(n)`
-/

namespace A330027.P4528753369030572936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055509 (A275065 n).toNat + A004526 n

end

end A330027.P4528753369030572936

/-!
# A330028: Number of compositions of n with cuts-resistance <= 2.

The programs for A330028, there is no canonical definition to state claims against.
-/

/-! ## A330028.P8904576801945501006

`A329863(n)+A003242(n)`
-/

namespace A330028.P8904576801945501006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329863 n + A003242 n

end

end A330028.P8904576801945501006

/-! ## A330028.P7489729973692865645

`A329863(n)+A214249(2*n²)`
-/

namespace A330028.P7489729973692865645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329863 n + A214249 (2 * n ^ 2)

end

end A330028.P7489729973692865645

/-! ## A330028.P13938059522510885994

`A329863(n)+A214268(2*n²)`
-/

namespace A330028.P13938059522510885994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329863 n + A214268 (2 * n ^ 2)

end

end A330028.P13938059522510885994

/-! ## A330028.P11869471133780101991

`A329863(n)+A106356(C(n, 2)+1)`
-/

namespace A330028.P11869471133780101991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329863 n + A106356 (Nat.choose n 2 + 1)

end

end A330028.P11869471133780101991

/-! ## A330028.P17620742255751288873

`A329863(n)+A091613(∑[abs(1-n)])`
-/

namespace A330028.P17620742255751288873
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (n : ℤ)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329863 n + A091613 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A330028.P17620742255751288873

/-!
# A330029: Numbers whose binary expansion has cuts-resistance <= 2.

The programs for A330029, there is no canonical definition to state claims against.
-/

/-! ## A330029.P14104653523353058468

`lt[A319416(n), 3]`
-/

namespace A330029.P14104653523353058468
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319416 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A330029.P14104653523353058468

/-! ## A330029.P14769433514065057578

`∪[floor(∑[2^n/3]), A329862(n+1)]`
-/

namespace A330029.P14769433514065057578
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℚ) / 3

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f2 j⌋

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329862 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

end

end A330029.P14769433514065057578

/-! ## A330029.P3035654025301050412

`eq[0, A139353(A279645(n))]`
-/

namespace A330029.P3035654025301050412
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139353 (A279645 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A330029.P3035654025301050412

/-! ## A330029.P10628389140488520260

`eq[0, A000579(A319416(n)²)]`
-/

namespace A330029.P10628389140488520260
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000579 (A319416 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A330029.P10628389140488520260

/-! ## A330029.P11068131713195701088

`eq[1, A002852(A319416(n)²)]`
-/

namespace A330029.P11068131713195701088
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002852 (A319416 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A330029.P11068131713195701088

/-! ## A330029.P402388388611741732

`eq[1, A053633(A319416(n)²)]`
-/

namespace A330029.P402388388611741732
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053633 (A319416 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A330029.P402388388611741732

/-! ## A330029.P7041312422292807633

`eq[2, A001281(A319416(n)²)]`
-/

namespace A330029.P7041312422292807633
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A319416 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A330029.P7041312422292807633

/-! ## A330029.P772497248632661678

`eq[1, A000010(A319416(n)!)]`
-/

namespace A330029.P772497248632661678
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (Nat.factorial (A319416 n).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A330029.P772497248632661678

/-! ## A330029.P16844251922928103478

`eq[1, A000120(A319416(n)!)]`
-/

namespace A330029.P16844251922928103478
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (Nat.factorial (A319416 n).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A330029.P16844251922928103478

/-! ## A330029.P11253312970720312390

`eq[A007302(n), A057526(n+1)]`
-/

namespace A330029.P11253312970720312390
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007302 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057526 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A330029.P11253312970720312390

/-!
# A330030: Least k such that Sum_{i=0..n} k^n / i! is a positive integer.

The programs for A330030, there is no canonical definition to state claims against.
-/

/-! ## A330030.P12684360345698387952

`A007947(A061355(n))`
-/

namespace A330030.P12684360345698387952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (A061355 n).toNat

end

end A330030.P12684360345698387952

/-! ## A330030.P13439052260538135895

`gcd(A034386(n), A061355(n))`
-/

namespace A330030.P13439052260538135895
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A034386 n) (A061355 n)

end

end A330030.P13439052260538135895

/-! ## A330030.P8552910017758350285

`gcd(A061355(A028310(n)), A300951(2*n))`
-/

namespace A330030.P8552910017758350285
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A061355 (A028310 n).toNat) (A300951 (2 * n))

end

end A330030.P8552910017758350285

/-! ## A330030.P18171844051419996693

`gcd(n!/A093101(n), A002110(A065033(n)))`
-/

namespace A330030.P18171844051419996693
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (SequenceMachineLib.roundAway ((Nat.factorial n : ℚ) / (A093101 n : ℚ))) (A002110 (A065033 n).toNat)

end

end A330030.P18171844051419996693

/-! ## A330030.P10431748500970444605

`gcd(n*A061355(n), A002110(n))`
-/

namespace A330030.P10431748500970444605
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((n : ℤ) * A061355 n) (A002110 n)

end

end A330030.P10431748500970444605

/-! ## A330030.P12503889799697027344

`gcd(A002110(n), A061355(A028310(n)))`
-/

namespace A330030.P12503889799697027344
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002110 n) (A061355 (A028310 n).toNat)

end

end A330030.P12503889799697027344

/-! ## A330030.P11632950868389826619

`gcd(A061355(n)+A002110(n), A000142(n))`
-/

namespace A330030.P11632950868389826619
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A061355 n + A002110 n) (A000142 n)

end

end A330030.P11632950868389826619

/-!
# A330031: Sums of two nonzero tetrahedral numbers (A000292).

The programs for A330031, there is no canonical definition to state claims against.
-/

/-! ## A330031.P16618278258548163786

`∪[A034404(n+1), A102795(n+1)]`
-/

namespace A330031.P16618278258548163786
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034404 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102795 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A330031.P16618278258548163786

/-! ## A330031.P12687001760289265679

`lt[1, A023670(n+1)+1]+2`
-/

namespace A330031.P12687001760289265679
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023670 (n + 1) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 2

end

end A330031.P12687001760289265679

/-! ## A330031.P50010061106247084

`A051693(∑[n+3]+1)`
-/

namespace A330031.P50010061106247084
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051693 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A330031.P50010061106247084

/-! ## A330031.P14398181004572972069

`abs(A051693(A034856(n+2))-2)+2`
-/

namespace A330031.P14398181004572972069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A051693 (A034856 (n + 2)).toNat - 2| + 2

end

end A330031.P14398181004572972069

/-! ## A330031.P13653260505417938723

`record[A051693(n+1)/A225468(n+2)]`
-/

namespace A330031.P13653260505417938723
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A051693 (n + 1) : ℚ) / (A225468 (n + 2) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A330031.P13653260505417938723

/-! ## A330031.P6133964545736684845

`lcm(A051693(A034856(n+2)), A054977(n))`
-/

namespace A330031.P6133964545736684845
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A051693 (A034856 (n + 2)).toNat) (A054977 n)

end

end A330031.P6133964545736684845

/-! ## A330031.P12081923911487628428

`A154272(n+5)+A051693(A034856(n+2))`
-/

namespace A330031.P12081923911487628428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154272 (n + 5) + A051693 (A034856 (n + 2)).toNat

end

end A330031.P12081923911487628428

/-! ## A330031.P5472010699647274660

`A051693(A034856(n+2))%A000603(n+1)`
-/

namespace A330031.P5472010699647274660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A051693 (A034856 (n + 2)).toNat) (A000603 (n + 1))

end

end A330031.P5472010699647274660

/-! ## A330031.P8106536708949856992

`A051693(A034856(n+2))*A054977(3*n+1)`
-/

namespace A330031.P8106536708949856992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051693 (A034856 (n + 2)).toNat * A054977 (3 * n + 1)

end

end A330031.P8106536708949856992

/-! ## A330031.P5626492017207533620

`A020639(2*(n+1))+A051693(A034856(n+2))-2`
-/

namespace A330031.P5626492017207533620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (2 * (n + 1)) + (A051693 (A034856 (n + 2)).toNat - 2)

end

end A330031.P5626492017207533620

/-!
# A330032: The number of chains of strictly rooted upper triangular or lower triangular matrices of order n.

The programs for A330032, there is no canonical definition to state claims against.
-/

/-! ## A330032.P12944359735648616267

`A000629(∑[n])`
-/

namespace A330032.P12944359735648616267
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000629 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A330032.P12944359735648616267

/-! ## A330032.P194455947223070865

`A002050(∑[n])+1`
-/

namespace A330032.P194455947223070865
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002050 (∑ j ∈ Finset.range (n + 1), f1 j) + 1

end

end A330032.P194455947223070865

/-! ## A330032.P17998514959077758746

`A054255(A267707(n))`
-/

namespace A330032.P17998514959077758746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054255 (A267707 n).toNat

end

end A330032.P17998514959077758746

/-! ## A330032.P6339638593706965121

`A171694(A002817(n))`
-/

namespace A330032.P6339638593706965121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171694 (A002817 n).toNat

end

end A330032.P6339638593706965121

/-!
# A330033: a(n) = Kronecker(n, 5) * (-1)^floor(n/5).

The programs for A330033, the canonical program `A330033.P2038939147782472114` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A330033 has offset 0).

The definition of A330033 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A330033.P2038939147782472114

`A080891(n)*A330025(n)`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A330033

/-- `A080891(n)*A330025(n)` -/
def P2038939147782472114.Spec : Prop :=
  ∀ n, P2038939147782472114.a n = A330033 n

theorem P2038939147782472114.correct : P2038939147782472114.Spec := by
  intro n
  simp only [A330033]

end A330033

/-!
# A330034: a(n) = sign(cos(n)).

The programs for A330034, the canonical program `A330034.P9914530220557710305` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A330034 has offset 0).

The definition of A330034 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A330034.P9914530220557710305

`or(1, floor(cos(n)))`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A330034

/-- `or(1, floor(cos(n)))` -/
def P9914530220557710305.Spec : Prop :=
  ∀ n, P9914530220557710305.a n = A330034 n

theorem P9914530220557710305.correct : P9914530220557710305.Spec := by
  intro n
  simp only [A330034]

end A330034

/-!
# A330035: a(n) = sign(tan(n)).

The programs for A330035, the canonical program `A330035.P16326617382815896774` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A330035 has offset 0).

The definition of A330035 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A330035.P16326617382815896774

`(ceil(tan(n))+floor(tan(n)))%2`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A330035

/-- `(ceil(tan(n))+floor(tan(n)))%2` -/
def P16326617382815896774.Spec : Prop :=
  ∀ n, P16326617382815896774.a n = A330035 n

theorem P16326617382815896774.correct : P16326617382815896774.Spec := by
  intro n
  simp only [A330035]

end A330035

/-!
# A330036: The length of the largest run of 0's in the binary expansion of n + the length of the largest run of 1's in the binary expansion of n.

The programs for A330036, the canonical program `A330036.P2756091389627242767` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A330036 has offset 0).

The definition of A330036 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A330036.P3293088067820198710

`A087117(n)+val(A278222(n), 2)`
-/

namespace A330036.P3293088067820198710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087117 n + (SequenceMachineLib.valuation (A278222 n).toNat 2 : ℤ)

end

end A330036.P3293088067820198710

namespace A330036

/-- `A087117(n)+val(A278222(n), 2)` -/
def P3293088067820198710.Spec : Prop :=
  ∀ n, P3293088067820198710.a n = A330036 n

end A330036

/-! ## A330036.P12097828871202608058

`A087117(n)+A061395(A246029(n))`
-/

namespace A330036.P12097828871202608058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087117 n + A061395 (A246029 n).toNat

end

end A330036.P12097828871202608058

namespace A330036

/-- `A087117(n)+A061395(A246029(n))` -/
def P12097828871202608058.Spec : Prop :=
  ∀ n, P12097828871202608058.a n = A330036 n

end A330036

/-! ## A330036.P2756091389627242767

`val(A278222(A035327(n))*A278222(n), 2)`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A330036

/-- `val(A278222(A035327(n))*A278222(n), 2)` -/
def P2756091389627242767.Spec : Prop :=
  ∀ n, (P2756091389627242767.a n : ℤ) = A330036 n

theorem P2756091389627242767.correct : P2756091389627242767.Spec := by
  intro n
  simp only [A330036]

end A330036

/-! ## A330036.P10061452710957001883

`val(A278222(A036044(n))*A278222(n), 2)`
-/

namespace A330036.P10061452710957001883
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A278222 (A036044 n).toNat * A278222 n).toNat 2

end

end A330036.P10061452710957001883

namespace A330036

/-- `val(A278222(A036044(n))*A278222(n), 2)` -/
def P10061452710957001883.Spec : Prop :=
  ∀ n, (P10061452710957001883.a n : ℤ) = A330036 n

end A330036

/-! ## A330036.P14667563641935883794

`A087117(n)+A051903(A278222(n))`
-/

namespace A330036.P14667563641935883794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087117 n + A051903 (A278222 n).toNat

end

end A330036.P14667563641935883794

namespace A330036

/-- `A087117(n)+A051903(A278222(n))` -/
def P14667563641935883794.Spec : Prop :=
  ∀ n, P14667563641935883794.a n = A330036 n

end A330036

/-! ## A330036.P12687709542192569755

`A087117(2*n+1)+A038374(A028310(n))`
-/

namespace A330036.P12687709542192569755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087117 (2 * n + 1) + A038374 (A028310 n).toNat

end

end A330036.P12687709542192569755

namespace A330036

/-- `A087117(2*n+1)+A038374(A028310(n))` -/
def P12687709542192569755.Spec : Prop :=
  ∀ n, P12687709542192569755.a n = A330036 n

end A330036

/-! ## A330036.P5128891734116545044

`A087117(A010078(n+1))+A087117(n)`
-/

namespace A330036.P5128891734116545044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087117 (A010078 (n + 1)).toNat + A087117 n

end

end A330036.P5128891734116545044

namespace A330036

/-- `A087117(A010078(n+1))+A087117(n)` -/
def P5128891734116545044.Spec : Prop :=
  ∀ n, P5128891734116545044.a n = A330036 n

end A330036

/-! ## A330036.P17888368147607206357

`A087117(n)+A051903(A005940(n+1))`
-/

namespace A330036.P17888368147607206357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087117 n + A051903 (A005940 (n + 1)).toNat

end

end A330036.P17888368147607206357

namespace A330036

/-- `A087117(n)+A051903(A005940(n+1))` -/
def P17888368147607206357.Spec : Prop :=
  ∀ n, P17888368147607206357.a n = A330036 n

end A330036

/-!
# A330037: The sum of digits function modulo 2 of the natural numbers in base phi.

The programs for A330037, there is no canonical definition to state claims against.
-/

/-! ## A330037.P7443309065688187245

`A055778(n)%2`
-/

namespace A330037.P7443309065688187245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A055778 n) 2

end

end A330037.P7443309065688187245

/-! ## A330037.P6031711661342359298

`A000035(A055778(n))`
-/

namespace A330037.P6031711661342359298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A055778 n).toNat

end

end A330037.P6031711661342359298

/-! ## A330037.P4974993113533648344

`A059841(A055778(n)+1)`
-/

namespace A330037.P4974993113533648344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 (A055778 n + 1).toNat

end

end A330037.P4974993113533648344

/-! ## A330037.P467671368387274031

`A014707(2*A055778(n))`
-/

namespace A330037.P467671368387274031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014707 (2 * A055778 n).toNat

end

end A330037.P467671368387274031

/-! ## A330037.P17817016835851952043

`A059841(xor(1, A055778(n)))`
-/

namespace A330037.P17817016835851952043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 (Int.xor 1 (A055778 n)).toNat

end

end A330037.P17817016835851952043

/-! ## A330037.P3159445484593310409

`A059841(89-A055778(n))`
-/

namespace A330037.P3159445484593310409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 (89 - A055778 n).toNat

end

end A330037.P3159445484593310409

/-! ## A330037.P1782363710328418035

`and(A016760(n), A055778(n))`
-/

namespace A330037.P1782363710328418035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A016760 n) (A055778 n)

end

end A330037.P1782363710328418035

/-! ## A330037.P2631586541398239745

`and(A016820(n), A055778(n))`
-/

namespace A330037.P2631586541398239745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A016820 n) (A055778 n)

end

end A330037.P2631586541398239745

/-! ## A330037.P13999709381849703852

`and(A008417(n)², A055778(n))`
-/

namespace A330037.P13999709381849703852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A008417 n ^ 2) (A055778 n)

end

end A330037.P13999709381849703852

/-! ## A330037.P2012210252914517194

`and(A016756(n)², A055778(n))`
-/

namespace A330037.P2012210252914517194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A016756 n ^ 2) (A055778 n)

end

end A330037.P2012210252914517194

/-! ## A330037.P14609961919408320963

`and(A006686(n+1), A055778(n))`
-/

namespace A330037.P14609961919408320963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A006686 (n + 1)) (A055778 n)

end

end A330037.P14609961919408320963

/-! ## A330037.P10358601333193285719

`and(A055778(n), A179645(n+1))`
-/

namespace A330037.P10358601333193285719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A055778 n) (A179645 (n + 1))

end

end A330037.P10358601333193285719

/-! ## A330037.P16813492766909085432

`and(A016754(n)²², A055778(n))`
-/

namespace A330037.P16813492766909085432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land ((A016754 n ^ 2) ^ 2) (A055778 n)

end

end A330037.P16813492766909085432

/-! ## A330037.P16943921191232996823

`and(1, (A007204(n)*A055778(n))²)`
-/

namespace A330037.P16943921191232996823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 ((A007204 n * A055778 n) ^ 2)

end

end A330037.P16943921191232996823

/-! ## A330037.P5175659147985186895

`and(1, (A014736(n)*A055778(n))²)`
-/

namespace A330037.P5175659147985186895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 ((A014736 n * A055778 n) ^ 2)

end

end A330037.P5175659147985186895

/-! ## A330037.P10032662331513751594

`and(1, (A014769(n)*A055778(n))²)`
-/

namespace A330037.P10032662331513751594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 ((A014769 n * A055778 n) ^ 2)

end

end A330037.P10032662331513751594

/-! ## A330037.P14472494238738856497

`and(A001248(n+1)²², A055778(n))`
-/

namespace A330037.P14472494238738856497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land ((A001248 (n + 1) ^ 2) ^ 2) (A055778 n)

end

end A330037.P14472494238738856497

/-! ## A330037.P7792684401376093239

`and(A055778(n), A195744(A055778(n)²))`
-/

namespace A330037.P7792684401376093239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A055778 n) (A195744 (A055778 n ^ 2).toNat)

end

end A330037.P7792684401376093239

/-! ## A330037.P11044602666030293063

`and(A008514(2*n)², A055778(n))`
-/

namespace A330037.P11044602666030293063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A008514 (2 * n) ^ 2) (A055778 n)

end

end A330037.P11044602666030293063

/-! ## A330037.P16861216705094463328

`and(A055778(n), A286746(A284625(n+1)))`
-/

namespace A330037.P16861216705094463328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A055778 n) (A286746 (A284625 (n + 1)).toNat)

end

end A330037.P16861216705094463328

/-!
# A330038: a(1) = 1, a(n) = [n/2] + a([n/2]) + a([(n+1)/2]) for n > 1, where [x] = floor(x).

The programs for A330038, the canonical program `A330038.P8790371992120087309` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A330038 has offset 1).

The definition of A330038 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A330038.P8790371992120087309

`floor((n+1)/2)+a(floor((n+1)/2)-1)+a(floor((n+2)/2)-1)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A330038

/-- `floor((n+1)/2)+a(floor((n+1)/2)-1)+a(floor((n+2)/2)-1)` -/
def P8790371992120087309.Spec : Prop :=
  ∀ n, P8790371992120087309.a n = A330038 (n + 1)

theorem P8790371992120087309.correct : P8790371992120087309.Spec := by
  intro n
  simp only [A330038, Nat.add_sub_cancel]

end A330038

/-! ## A330038.P9025589343244636606

`A000788(n)+n+1`
-/

namespace A330038.P9025589343244636606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000788 n + (n + 1 : ℤ)

end

end A330038.P9025589343244636606

namespace A330038

/-- `A000788(n)+n+1` -/
def P9025589343244636606.Spec : Prop :=
  ∀ n, P9025589343244636606.a n = A330038 (n + 1)

end A330038

/-! ## A330038.P10027009992197933053

`∑[a(and(n, n-1))+1]` with `a(0)=1`
-/

namespace A330038.P10027009992197933053
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  f1 (Int.land (n : ℤ) ((n : ℤ) - 1)).toNat + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A330038.P10027009992197933053

namespace A330038

/-- `∑[a(and(n, n-1))+1]` -/
def P10027009992197933053.Spec : Prop :=
  ∀ n, (P10027009992197933053.a n : ℤ) = A330038 (n + 1)

end A330038

/-! ## A330038.P15871887269170290898

`∑[∑[1-∑{e}[and(n, -n), #]]]`
-/

namespace A330038.P15871887269170290898
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (-(n : ℤ))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((∑ p ∈ Nat.primeFactors (f3 n).natAbs, Nat.factorization (f3 n).natAbs p : ℕ) : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A330038.P15871887269170290898

namespace A330038

/-- `∑[∑[1-∑{e}[and(n, -n), #]]]` -/
def P15871887269170290898.Spec : Prop :=
  ∀ n, P15871887269170290898.a n = A330038 (n + 1)

end A330038

/-! ## A330038.P4778812221360329673

`∑[∑[1-∑{e}[or(n, -n), #]]]`
-/

namespace A330038.P4778812221360329673
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n : ℤ) (-(n : ℤ))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((∑ p ∈ Nat.primeFactors (f3 n).natAbs, Nat.factorization (f3 n).natAbs p : ℕ) : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A330038.P4778812221360329673

namespace A330038

/-- `∑[∑[1-∑{e}[or(n, -n), #]]]` -/
def P4778812221360329673.Spec : Prop :=
  ∀ n, P4778812221360329673.a n = A330038 (n + 1)

end A330038

/-! ## A330038.P3004083963986108267

`∑[a(floor(n/2))+n%2]` with `a(0)=1`
-/

namespace A330038.P3004083963986108267
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  f1 ⌊(n : ℚ) / 2⌋.toNat + n % 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A330038.P3004083963986108267

namespace A330038

/-- `∑[a(floor(n/2))+n%2]` -/
def P3004083963986108267.Spec : Prop :=
  ∀ n, (P3004083963986108267.a n : ℤ) = A330038 (n + 1)

end A330038

/-! ## A330038.P10045245851833894979

`∑[a(floor(n/2))+and(1, n)]` with `a(0)=1`
-/

namespace A330038.P10045245851833894979
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  f1 ⌊(n : ℚ) / 2⌋.toNat + Nat.land 1 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A330038.P10045245851833894979

namespace A330038

/-- `∑[a(floor(n/2))+and(1, n)]` -/
def P10045245851833894979.Spec : Prop :=
  ∀ n, (P10045245851833894979.a n : ℤ) = A330038 (n + 1)

end A330038

/-! ## A330038.P7918086212998709510

`∑[a(n-1)+1-val(n, 2)]` with `a(0)=1`
-/

namespace A330038.P7918086212998709510
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  f1 (n - 1) + (1 - (SequenceMachineLib.valuation n 2 : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A330038.P7918086212998709510

namespace A330038

/-- `∑[a(n-1)+1-val(n, 2)]` -/
def P7918086212998709510.Spec : Prop :=
  ∀ n, P7918086212998709510.a n = A330038 (n + 1)

end A330038

/-! ## A330038.P5505904307442694224

`∑[1-(val(n, 2)-a(n-1))]` with `a(0)=1`
-/

namespace A330038.P5505904307442694224
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  1 - ((SequenceMachineLib.valuation n 2 : ℤ) - f1 (n - 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A330038.P5505904307442694224

namespace A330038

/-- `∑[1-(val(n, 2)-a(n-1))]` -/
def P5505904307442694224.Spec : Prop :=
  ∀ n, P5505904307442694224.a n = A330038 (n + 1)

end A330038

/-! ## A330038.P2114743834834850724

`∑[a(n-2^floor(log2(n)))+1]` with `a(0)=1`
-/

namespace A330038.P2114743834834850724
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  f1 (n - 2 ^ Nat.log 2 n) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A330038.P2114743834834850724

namespace A330038

/-- `∑[a(n-2^floor(log2(n)))+1]` -/
def P2114743834834850724.Spec : Prop :=
  ∀ n, (P2114743834834850724.a n : ℤ) = A330038 (n + 1)

end A330038

/-! ## A330038.P13280766168322282929

`∑[∑{e}[2*a(and(n, n-1)), #]]` with `a(0)=2`
-/

namespace A330038.P13280766168322282929
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [2] fun n f2 =>
  2 * f2 (Int.land (n : ℤ) ((n : ℤ) - 1)).toNat

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A330038.P13280766168322282929

namespace A330038

/-- `∑[∑{e}[2*a(and(n, n-1)), #]]` -/
def P13280766168322282929.Spec : Prop :=
  ∀ n, (P13280766168322282929.a n : ℤ) = A330038 (n + 1)

end A330038

/-! ## A330038.P14295873216833109865

`∑[log2(A117973(n))]`
-/

namespace A330038.P14295873216833109865
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A117973 n : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A330038.P14295873216833109865

namespace A330038

/-- `∑[log2(A117973(n))]` -/
def P14295873216833109865.Spec : Prop :=
  ∀ n, P14295873216833109865.a n = (A330038 (n + 1) : ℝ)

end A330038

/-! ## A330038.P777237505309739753

`∑[A000120(n)+1]`
-/

namespace A330038.P777237505309739753
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A330038.P777237505309739753

namespace A330038

/-- `∑[A000120(n)+1]` -/
def P777237505309739753.Spec : Prop :=
  ∀ n, P777237505309739753.a n = A330038 (n + 1)

end A330038

/-! ## A330038.P14561166861723009219

`∑[A063787(n+1)]`
-/

namespace A330038.P14561166861723009219
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063787 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A330038.P14561166861723009219

namespace A330038

/-- `∑[A063787(n+1)]` -/
def P14561166861723009219.Spec : Prop :=
  ∀ n, P14561166861723009219.a n = A330038 (n + 1)

end A330038

/-! ## A330038.P15519540984827384336

`∑[log2(A001316(n))+1]`
-/

namespace A330038.P15519540984827384336
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A001316 n : ℝ) + 1

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A330038.P15519540984827384336

namespace A330038

/-- `∑[log2(A001316(n))+1]` -/
def P15519540984827384336.Spec : Prop :=
  ∀ n, P15519540984827384336.a n = (A330038 (n + 1) : ℝ)

end A330038

/-! ## A330038.P11660444130270850492

`∑[∑[A088705(n)]+1]`
-/

namespace A330038.P11660444130270850492
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088705 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A330038.P11660444130270850492

namespace A330038

/-- `∑[∑[A088705(n)]+1]` -/
def P11660444130270850492.Spec : Prop :=
  ∀ n, P11660444130270850492.a n = A330038 (n + 1)

end A330038

/-! ## A330038.P9801938402301742422

`(n+1)²-A122247(n)`
-/

namespace A330038.P9801938402301742422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) - A122247 n

end

end A330038.P9801938402301742422

namespace A330038

/-- `(n+1)²-A122247(n)` -/
def P9801938402301742422.Spec : Prop :=
  ∀ n, P9801938402301742422.a n = A330038 (n + 1)

end A330038

/-! ## A330038.P17894515535130759186

`sqrt(A163095(n))+n+1`
-/

namespace A330038.P17894515535130759186
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A163095 n : ℝ) + (n + 1 : ℝ)

end

end A330038.P17894515535130759186

namespace A330038

/-- `sqrt(A163095(n))+n+1` -/
def P17894515535130759186.Spec : Prop :=
  ∀ n, P17894515535130759186.a n = (A330038 (n + 1) : ℝ)

end A330038

/-! ## A330038.P3316815817458991142

`∑[1-A011371(n)+n]`
-/

namespace A330038.P3316815817458991142
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A011371 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A330038.P3316815817458991142

namespace A330038

/-- `∑[1-A011371(n)+n]` -/
def P3316815817458991142.Spec : Prop :=
  ∀ n, P3316815817458991142.a n = A330038 (n + 1)

end A330038

/-! ## A330038.P18162761034168174105

`∑[n+1]-A174605(n)`
-/

namespace A330038.P18162761034168174105
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A174605 n

end

end A330038.P18162761034168174105

namespace A330038

/-- `∑[n+1]-A174605(n)` -/
def P18162761034168174105.Spec : Prop :=
  ∀ n, P18162761034168174105.a n = A330038 (n + 1)

end A330038

/-!
# A330039: Number of essential lattice congruences of the weak order on the symmetric group S_n.

The programs for A330039, there is no canonical definition to state claims against.
-/

/-! ## A330039.P7954958531488639328

`A304442(C(A001787(n), 3))`
-/

namespace A330039.P7954958531488639328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304442 (Nat.choose (A001787 n).toNat 3)

end

end A330039.P7954958531488639328

/-!
# A330040: Number of non-isomorphic cover graphs of lattice quotients of essential lattice congruences of the weak order on the symmetric group S_n.

The programs for A330040, there is no canonical definition to state claims against.
-/

/-! ## A330040.P10304389185159805334

`A055253(ceil(ϕ*n)!)`
-/

namespace A330040.P10304389185159805334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055253 (Nat.factorial ⌈Real.goldenRatio * (n : ℝ)⌉.toNat)

end

end A330040.P10304389185159805334

/-!
# A330041: Expansion of e.g.f. exp(cosh(exp(x) - 1) - 1).

The programs for A330041, there is no canonical definition to state claims against.
-/

/-! ## A330041.P5681479254846899878

`A129165(∩[comp[2*(n+1)], ceil(n²/2)])`
-/

namespace A330041.P5681479254846899878
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n ^ 2 : ℚ) / 2⌉

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129165 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f3 j = (x : ℤ)) n)

end

end A330041.P5681479254846899878

/-! ## A330041.P15318972264997787721

`A129165(∑[record[A019425(n)]])`
-/

namespace A330041.P15318972264997787721
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019425 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129165 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A330041.P15318972264997787721

/-! ## A330041.P5747804925474841742

`A129165(∑[record[A022998(n)]])`
-/

namespace A330041.P5747804925474841742
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022998 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129165 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A330041.P5747804925474841742

/-!
# A330042: Number of non-isomorphic regular cover graphs of lattice quotients of essential lattice congruences of the weak order on the symmetric group S_n.

The programs for A330042, there is no canonical definition to state claims against.
-/

/-! ## A330042.P17687538862042877524

`A049093(n*a(n-1))` with `a(0)=1, a(1)=1, a(2)=3`
-/

namespace A330042.P17687538862042877524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 3] fun n a =>
  A049093 ((n : ℤ) * a (n - 1)).toNat

end

end A330042.P17687538862042877524

/-! ## A330042.P8331419663253780207

`A117176(A148281(n))`
-/

namespace A330042.P8331419663253780207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117176 (A148281 n).toNat

end

end A330042.P8331419663253780207

/-!
# A330043: Product of largest prime power factors of numbers <= n.

The programs for A330043, there is no canonical definition to state claims against.
-/

/-! ## A330043.P214192960345192855

`a(n-1)*A034699(n)` with `a(0)=1`
-/

namespace A330043.P214192960345192855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * A034699 n

end

end A330043.P214192960345192855

/-! ## A330043.P6964979711238035770

`gcd(n, A139082(n))*a(n-1)` with `a(0)=1`
-/

namespace A330043.P6964979711238035770
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Int.gcd (n : ℤ) (A139082 n) * a (n - 1)

end

end A330043.P6964979711238035770

/-! ## A330043.P14192159643794898809

`∏[A034699(A028310(n))]`
-/

namespace A330043.P14192159643794898809
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034699 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A330043.P14192159643794898809

/-! ## A330043.P1653915379795764087

`∏[A034699(A123108(2*n))]`
-/

namespace A330043.P1653915379795764087
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034699 (A123108 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A330043.P1653915379795764087

/-! ## A330043.P6823134248160131065

`∏[A034699(A007318(A000124(n)))]`
-/

namespace A330043.P6823134248160131065
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034699 (A007318 (A000124 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A330043.P6823134248160131065

/-! ## A330043.P3720550648557937344

`∏[A034699(n+1)]/A034699(n+1)`
-/

namespace A330043.P3720550648557937344
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034699 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (A034699 (n + 1) : ℚ)

end

end A330043.P3720550648557937344

/-!
# A330044: Expansion of e.g.f. exp(x) / (1 - x^3).

The programs for A330044, the canonical program `A330044.P7688276238918456569` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A330044 has offset 0).

The definition of A330044 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A330044.P7688276238918456569

`n*(n-1)*(n-2)*a(n-3)+1` with `a(0)=1, a(1)=1, a(2)=1`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A330044

/-- `n*(n-1)*(n-2)*a(n-3)+1` -/
def P7688276238918456569.Spec : Prop :=
  ∀ n, P7688276238918456569.a n = A330044 n

theorem P7688276238918456569.correct : P7688276238918456569.Spec := by
  intro n
  simp only [A330044]

end A330044

/-! ## A330044.P2953828433047708169

`A158757(n*(n+2))`
-/

namespace A330044.P2953828433047708169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158757 (n * (n + 2))

end

end A330044.P2953828433047708169

namespace A330044

/-- `A158757(n*(n+2))` -/
def P2953828433047708169.Spec : Prop :=
  ∀ n, P2953828433047708169.a n = A330044 n

end A330044

/-! ## A330044.P4000119271458179534

`A158785(A331952(n+1))`
-/

namespace A330044.P4000119271458179534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158785 (A331952 (n + 1)).toNat

end

end A330044.P4000119271458179534

namespace A330044

/-- `A158785(A331952(n+1))` -/
def P4000119271458179534.Spec : Prop :=
  ∀ n, P4000119271458179534.a n = A330044 n

end A330044

/-! ## A330044.P8611582114357300386

`or(1, A158757(A005563(n)))`
-/

namespace A330044.P8611582114357300386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A158757 (A005563 n).toNat)

end

end A330044.P8611582114357300386

namespace A330044

/-- `or(1, A158757(A005563(n)))` -/
def P8611582114357300386.Spec : Prop :=
  ∀ n, P8611582114357300386.a n = A330044 n

end A330044

/-! ## A330044.P14060203105893072796

`A158785(A000217(n)+∑[A004526(n)]+n)`
-/

namespace A330044.P14060203105893072796
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158785 (A000217 n + (∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ))).toNat

end

end A330044.P14060203105893072796

namespace A330044

/-- `A158785(A000217(n)+∑[A004526(n)]+n)` -/
def P14060203105893072796.Spec : Prop :=
  ∀ n, P14060203105893072796.a n = A330044 n

end A330044

/-!
# A330045: Expansion of e.g.f. exp(x) / (1 - x^4).

The programs for A330045, the canonical program `A330045.P17474105459959989621` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A330045 has offset 0).

The definition of A330045 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A330045.P17474105459959989621

`n*(n-1)*(n-2)*(n-3)*a(n-4)+1` with `a(0)=1, a(1)=1, a(2)=1, a(3)=1`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A330045

/-- `n*(n-1)*(n-2)*(n-3)*a(n-4)+1` -/
def P17474105459959989621.Spec : Prop :=
  ∀ n, P17474105459959989621.a n = A330045 n

theorem P17474105459959989621.correct : P17474105459959989621.Spec := by
  intro n
  simp only [A330045]

end A330045

/-! ## A330045.P15752786216941536689

`(A337749(n)+A087208(n))/2`
-/

namespace A330045.P15752786216941536689
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A337749 n + A087208 n : ℚ) / 2

end

end A330045.P15752786216941536689

namespace A330045

/-- `(A337749(n)+A087208(n))/2` -/
def P15752786216941536689.Spec : Prop :=
  ∀ n, P15752786216941536689.a n = (A330045 n : ℚ)

end A330045

/-! ## A330045.P3663703241083794243

`A337751(n)+A005843(A052762(n))`
-/

namespace A330045.P3663703241083794243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337751 n + A005843 (A052762 n).toNat

end

end A330045.P3663703241083794243

namespace A330045

/-- `A337751(n)+A005843(A052762(n))` -/
def P3663703241083794243.Spec : Prop :=
  ∀ n, P3663703241083794243.a n = A330045 n

end A330045

/-! ## A330045.P10899626035585499263

`Δ[A193438(A193409(n+1))]+1`
-/

namespace A330045.P10899626035585499263
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193438 (A193409 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 1

end

end A330045.P10899626035585499263

namespace A330045

/-- `Δ[A193438(A193409(n+1))]+1` -/
def P10899626035585499263.Spec : Prop :=
  ∀ n, P10899626035585499263.a n = A330045 n

end A330045

/-! ## A330045.P8160569200354968576

`Δ[A052501(n)+A029576(A087036(n))]+1`
-/

namespace A330045.P8160569200354968576
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052501 n + A029576 (A087036 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 1

end

end A330045.P8160569200354968576

namespace A330045

/-- `Δ[A052501(n)+A029576(A087036(n))]+1` -/
def P8160569200354968576.Spec : Prop :=
  ∀ n, P8160569200354968576.a n = A330045 n

end A330045

/-!
# A330046: Expansion of e.g.f. exp(x) / (1 - sinh(x)).

The programs for A330046, there is no canonical definition to state claims against.
-/

/-! ## A330046.P135968102988856424

`A330047(A028310(n))+A322623(n)`
-/

namespace A330046.P135968102988856424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330047 (A028310 n).toNat + A322623 n

end

end A330046.P135968102988856424

/-! ## A330046.P13354793060063005828

`A330047(A065033(2*n))+A322623(n)`
-/

namespace A330046.P13354793060063005828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330047 (A065033 (2 * n)).toNat + A322623 n

end

end A330046.P13354793060063005828

/-! ## A330046.P17795231757074256558

`A330047(A000007(n)+n)+A322623(n)`
-/

namespace A330046.P17795231757074256558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330047 (A000007 n + (n : ℤ)).toNat + A322623 n

end

end A330046.P17795231757074256558

/-!
# A330047: Expansion of e.g.f. exp(-x) / (1 - sinh(x)).

The programs for A330047, there is no canonical definition to state claims against.
-/

/-! ## A330047.P12311397756095927539

`A330046(A028310(n))-A322623(n)`
-/

namespace A330047.P12311397756095927539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330046 (A028310 n).toNat - A322623 n

end

end A330047.P12311397756095927539

/-! ## A330047.P1206901192727010210

`A330046(n)%A322623(A028310(n))`
-/

namespace A330047.P1206901192727010210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A330046 n) (A322623 (A028310 n).toNat)

end

end A330047.P1206901192727010210

/-! ## A330047.P12855757142043938144

`A330046(A000007(n)+n)-A322623(n)`
-/

namespace A330047.P12855757142043938144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330046 (A000007 n + (n : ℤ)).toNat - A322623 n

end

end A330047.P12855757142043938144

/-! ## A330047.P15423478579352524843

`A330046(A151933(n)+n)-A322623(n)`
-/

namespace A330047.P15423478579352524843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330046 (A151933 n + (n : ℤ)).toNat - A322623 n

end

end A330047.P15423478579352524843

/-! ## A330047.P15469552851829374078

`A000007(n)-(A322623(n)-A330046(n))`
-/

namespace A330047.P15469552851829374078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n - (A322623 n - A330046 n)

end

end A330047.P15469552851829374078

/-! ## A330047.P18243119109136448815

`A151933(n)-(A322623(n)-A330046(n))`
-/

namespace A330047.P18243119109136448815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151933 n - (A322623 n - A330046 n)

end

end A330047.P18243119109136448815

/-! ## A330047.P1761654878417670582

`A330046(n)-A322623(n)-A008683(3*(n+1)²)`
-/

namespace A330047.P1761654878417670582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330046 n - A322623 n - A008683 (3 * (n + 1) ^ 2)

end

end A330047.P1761654878417670582

/-!
# A330050: a(n) = 2*((-1)^n - 1)*(F(n) - 1) - (3*(-1)^n + 7)/2 * F(n+1) + 5*F(n+1)^2.

The programs for A330050, the canonical program `A330050.P3795152262848361729` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A330050 has offset 0).

The definition of A330050 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A329421, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A330050.P3795152262848361729

`A203976(floor(n/2)+1)*A329421(n)`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A330050

/-- `A203976(floor(n/2)+1)*A329421(n)` -/
def P3795152262848361729.Spec : Prop :=
  ∀ n, P3795152262848361729.a n = A330050 n

theorem P3795152262848361729.correct : P3795152262848361729.Spec := by
  intro n
  simp only [A330050]

end A330050

/-! ## A330050.P18230318055643593242

`∑[A002878(n)-A002878(A004526(n))]`
-/

namespace A330050.P18230318055643593242
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002878 n - A002878 (A004526 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A330050.P18230318055643593242

namespace A330050

/-- `∑[A002878(n)-A002878(A004526(n))]` -/
def P18230318055643593242.Spec : Prop :=
  ∀ n, P18230318055643593242.a n = A330050 n

end A330050

/-! ## A330050.P5601116201130799323

`∑[A002878(n)-A000032(A109613(n))]`
-/

namespace A330050.P5601116201130799323
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002878 n - A000032 (A109613 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A330050.P5601116201130799323

namespace A330050

/-- `∑[A002878(n)-A000032(A109613(n))]` -/
def P5601116201130799323.Spec : Prop :=
  ∀ n, P5601116201130799323.a n = A330050 n

end A330050

/-! ## A330050.P15426544404515265801

`∑[A162483(n)-A000211(A109613(n))]`
-/

namespace A330050.P15426544404515265801
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162483 n - A000211 (A109613 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A330050.P15426544404515265801

namespace A330050

/-- `∑[A162483(n)-A000211(A109613(n))]` -/
def P15426544404515265801.Spec : Prop :=
  ∀ n, P15426544404515265801.a n = A330050 n

end A330050

/-! ## A330050.P890961502040572416

`∑[A162483(n)-A162483(A004526(n))]`
-/

namespace A330050.P890961502040572416
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162483 n - A162483 (A004526 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A330050.P890961502040572416

namespace A330050

/-- `∑[A162483(n)-A162483(A004526(n))]` -/
def P890961502040572416.Spec : Prop :=
  ∀ n, P890961502040572416.a n = A330050 n

end A330050

/-!
# A330051: a(n) = 1 + F(2*n+1) - (F(n+4) - (-1)^n*F(n-2))/2 where F=A000045.

The programs for A330051, the canonical program `A330051.P18047981312378530323` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A330051 has offset 0).

The definition of A330051 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A329421, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A330051.P18047981312378530323

`A005013(floor(n/2))*A329421(n)`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A330051

/-- `A005013(floor(n/2))*A329421(n)` -/
def P18047981312378530323.Spec : Prop :=
  ∀ n, P18047981312378530323.a n = A330051 n

theorem P18047981312378530323.correct : P18047981312378530323.Spec := by
  intro n
  simp only [A330051]

end A330051

/-! ## A330051.P7948684048615685810

`∑[A001906(n)-A094966(n)]`
-/

namespace A330051.P7948684048615685810
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001906 n - A094966 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A330051.P7948684048615685810

namespace A330051

/-- `∑[A001906(n)-A094966(n)]` -/
def P7948684048615685810.Spec : Prop :=
  ∀ n, P7948684048615685810.a n = A330051 n

end A330051

/-! ## A330051.P11637106745135330954

`A027941(n)-∑[A094966(n)]`
-/

namespace A330051.P11637106745135330954
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094966 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027941 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A330051.P11637106745135330954

namespace A330051

/-- `A027941(n)-∑[A094966(n)]` -/
def P11637106745135330954.Spec : Prop :=
  ∀ n, P11637106745135330954.a n = A330051 n

end A330051

/-! ## A330051.P15882351217692379647

`∑[Δ[A032908(n)]-A094966(n)]`
-/

namespace A330051.P15882351217692379647
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032908 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - A094966 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A330051.P15882351217692379647

namespace A330051

/-- `∑[Δ[A032908(n)]-A094966(n)]` -/
def P15882351217692379647.Spec : Prop :=
  ∀ n, P15882351217692379647.a n = A330051 n

end A330051

/-! ## A330051.P9611000639510921433

`∑[A000045(2*n)-A094966(n)]`
-/

namespace A330051.P9611000639510921433
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (2 * n) - A094966 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A330051.P9611000639510921433

namespace A330051

/-- `∑[A000045(2*n)-A094966(n)]` -/
def P9611000639510921433.Spec : Prop :=
  ∀ n, P9611000639510921433.a n = A330051 n

end A330051

/-! ## A330051.P1419855592038959933

`∑[A094966(2*n)-A094966(n)]`
-/

namespace A330051.P1419855592038959933
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094966 (2 * n) - A094966 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A330051.P1419855592038959933

namespace A330051

/-- `∑[A094966(2*n)-A094966(n)]` -/
def P1419855592038959933.Spec : Prop :=
  ∀ n, P1419855592038959933.a n = A330051 n

end A330051

/-! ## A330051.P6850750576685089811

`∑[A212804(Δ[n²])-A094966(n)]`
-/

namespace A330051.P6850750576685089811
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat - A094966 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A330051.P6850750576685089811

namespace A330051

/-- `∑[A212804(Δ[n²])-A094966(n)]` -/
def P6850750576685089811.Spec : Prop :=
  ∀ n, P6850750576685089811.a n = A330051 n

end A330051

/-! ## A330051.P15574922687055422046

`∑[∑[A001519(n)]-1-A094966(n)]`
-/

namespace A330051.P15574922687055422046
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001519 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - 1 - A094966 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A330051.P15574922687055422046

namespace A330051

/-- `∑[∑[A001519(n)]-1-A094966(n)]` -/
def P15574922687055422046.Spec : Prop :=
  ∀ n, P15574922687055422046.a n = A330051 n

end A330051

/-! ## A330051.P6512390354306006720

`A000045(Δ[n²])-1-∑[A094966(n)]`
-/

namespace A330051.P6512390354306006720
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094966 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - 1 - ∑ j ∈ Finset.range (n + 1), f2 j

end

end A330051.P6512390354306006720

namespace A330051

/-- `A000045(Δ[n²])-1-∑[A094966(n)]` -/
def P6512390354306006720.Spec : Prop :=
  ∀ n, P6512390354306006720.a n = A330051 n

end A330051

/-! ## A330051.P12526975603424032123

`∑[A000045(2*n)-A000045(n%2+n)]`
-/

namespace A330051.P12526975603424032123
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (2 * n) - A000045 (n % 2 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A330051.P12526975603424032123

namespace A330051

/-- `∑[A000045(2*n)-A000045(n%2+n)]` -/
def P12526975603424032123.Spec : Prop :=
  ∀ n, P12526975603424032123.a n = A330051 n

end A330051

/-! ## A330051.P14679684695854914509

`∑[A000045(2*n)-A000045(∑[(2*n)%4])]`
-/

namespace A330051.P14679684695854914509
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n % 4

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (2 * n) - A000045 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A330051.P14679684695854914509

namespace A330051

/-- `∑[A000045(2*n)-A000045(∑[(2*n)%4])]` -/
def P14679684695854914509.Spec : Prop :=
  ∀ n, P14679684695854914509.a n = A330051 n

end A330051

/-! ## A330051.P12512114291861654374

`abs(A000045(n+1+n)-1)-∑[A094966(n)]`
-/

namespace A330051.P12512114291861654374
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094966 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000045 (n + 1 + n) - 1| - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A330051.P12512114291861654374

namespace A330051

/-- `abs(A000045(n+1+n)-1)-∑[A094966(n)]` -/
def P12512114291861654374.Spec : Prop :=
  ∀ n, P12512114291861654374.a n = A330051 n

end A330051

/-!
# A330052: Number of non-isomorphic set-systems of weight n with at least one endpoint.

The programs for A330052, there is no canonical definition to state claims against.
-/

/-! ## A330052.P16515953207169355397

`A283877(n)-A330054(n)`
-/

namespace A330052.P16515953207169355397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283877 n - A330054 n

end

end A330052.P16515953207169355397

/-! ## A330052.P7236148434314639566

`A306005(n)+A330053(n)-A330054(n)`
-/

namespace A330052.P7236148434314639566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306005 n + (A330053 n - A330054 n)

end

end A330052.P7236148434314639566

/-! ## A330052.P3322852527288668366

`A306005(n)-A057428(n)*A330053(n)-A330054(n)`
-/

namespace A330052.P3322852527288668366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306005 n - A057428 n * A330053 n - A330054 n

end

end A330052.P3322852527288668366

/-! ## A330052.P12888304243725848479

`A368094(n)+A368095(n)-A330054(n)`
-/

namespace A330052.P12888304243725848479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368094 n + (A368095 n - A330054 n)

end

end A330052.P12888304243725848479

/-! ## A330052.P655270340563865701

`∑[A331904(A005522(n))]`
-/

namespace A330052.P655270340563865701
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331904 (A005522 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A330052.P655270340563865701

/-!
# A330053: Number of non-isomorphic set-systems of weight n with at least one singleton.

The programs for A330053, there is no canonical definition to state claims against.
-/

/-! ## A330053.P6816061247888277259

`A283877(n)-A306005(n)`
-/

namespace A330053.P6816061247888277259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283877 n - A306005 n

end

end A330053.P6816061247888277259

/-! ## A330053.P14756181675796970419

`A330052(n)+A330054(n)-A306005(n)`
-/

namespace A330053.P14756181675796970419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330052 n + (A330054 n - A306005 n)

end

end A330053.P14756181675796970419

/-! ## A330053.P1554410302481987752

`A368094(n)+A368095(n)-A306005(n)`
-/

namespace A330053.P1554410302481987752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368094 n + (A368095 n - A306005 n)

end

end A330053.P1554410302481987752

/-! ## A330053.P15504996496703923044

`A054846(A148396(n))-A341977(n)`
-/

namespace A330053.P15504996496703923044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054846 (A148396 n).toNat - A341977 (n + 29)

end

end A330053.P15504996496703923044

/-! ## A330053.P9257030208615367693

`A283877(n)-A154129(A005202(n+2))`
-/

namespace A330053.P9257030208615367693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283877 n - A154129 (A005202 (n + 2)).toNat

end

end A330053.P9257030208615367693

/-!
# A330054: Number of non-isomorphic set-systems of weight n with no endpoints.

The programs for A330054, there is no canonical definition to state claims against.
-/

/-! ## A330054.P3464555619149135101

`A283877(n)-A330052(n)`
-/

namespace A330054.P3464555619149135101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283877 n - A330052 n

end

end A330054.P3464555619149135101

/-! ## A330054.P18410769723492250821

`A306005(n)+A330053(n)-A330052(n)`
-/

namespace A330054.P18410769723492250821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306005 n + (A330053 n - A330052 n)

end

end A330054.P18410769723492250821

/-! ## A330054.P8997021319755336088

`A306005(n)-A057428(n)*A330053(n)-A330052(n)`
-/

namespace A330054.P8997021319755336088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306005 n - A057428 n * A330053 n - A330052 n

end

end A330054.P8997021319755336088

/-! ## A330054.P17271211719236348727

`A368094(n)+A368095(n)-A330052(n)`
-/

namespace A330054.P17271211719236348727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368094 n + (A368095 n - A330052 n)

end

end A330054.P17271211719236348727

/-!
# A330056: Number of set-systems with n vertices and no singletons or endpoints.

The programs for A330056, there is no canonical definition to state claims against.
-/

/-! ## A330056.P16611322741531902869

`A202956(a(n-1))` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A330056.P16611322741531902869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1] fun n a =>
  A202956 (a (n - 1)).toNat

end

end A330056.P16611322741531902869

/-!
# A330057: Number of set-systems covering n vertices with no singletons or endpoints.

The programs for A330057, there is no canonical definition to state claims against.
-/

/-! ## A330057.P9206564963001379229

`A343342(∑[n*a(n-1)])` with `a(0)=0, a(1)=1`
-/

namespace A330057.P9206564963001379229
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  n * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343342 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A330057.P9206564963001379229

/-!
# A330058: Number of non-isomorphic multiset partitions of weight n with at least one endpoint.

The programs for A330058, there is no canonical definition to state claims against.
-/

/-! ## A330058.P11746108303606470553

`A007716(n)-A302545(n)`
-/

namespace A330058.P11746108303606470553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007716 n - A302545 n

end

end A330058.P11746108303606470553

/-! ## A330058.P4396453949456431371

`∑{d}[C(2, n+2)+n, A303546(#)]-A302545(n)`
-/

namespace A330058.P4396453949456431371
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (n + 2) + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A303546 d - A302545 n

end

end A330058.P4396453949456431371

/-! ## A330058.P11116227740236452776

`∑{d}[A028310(n), A303546(#)]-A302545(n)`
-/

namespace A330058.P11116227740236452776
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A303546 d - A302545 n

end

end A330058.P11116227740236452776

/-! ## A330058.P12312013066143978917

`2*A318395(n)-A316983(n)-A302545(n)`
-/

namespace A330058.P12312013066143978917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A318395 n - A316983 n - A302545 n

end

end A330058.P12312013066143978917

/-! ## A330058.P1510942216728840002

`A321283(n)+A320810(A028310(n))-A302545(n)`
-/

namespace A330058.P1510942216728840002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321283 n + A320810 (A028310 n).toNat - A302545 n

end

end A330058.P1510942216728840002

/-!
# A330059: Number of set-systems with n vertices and no endpoints.

The programs for A330059, there is no canonical definition to state claims against.
-/

/-! ## A330059.P2980003096748258266

`2^(2^n-1)-A327228(n)`
-/

namespace A330059.P2980003096748258266
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((2 ^ n : ℤ) - 1 : ℤ) - (A327228 n : ℚ)

end

end A330059.P2980003096748258266

/-!
# A330060: MM-numbers of VDD-normalized multisets of multisets.

The programs for A330060, there is no canonical definition to state claims against.
-/

/-! ## A330060.P6471437415386641612

`eq[1, A319627(A003963(n+1))]+1`
-/

namespace A330060.P6471437415386641612
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319627 (A003963 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A330060.P6471437415386641612

/-! ## A330060.P3139225926698678013

`lt[A319627(A003963(2*(n+1))), 2]+1`
-/

namespace A330060.P3139225926698678013
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319627 (A003963 (2 * (n + 1))).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A330060.P3139225926698678013

/-! ## A330060.P15167262799045403135

`lt[A319627(A003963(n*a(2%n))), 2]` with `a(0)=2`
-/

namespace A330060.P15167262799045403135
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f1 =>
  A319627 (A003963 ((n : ℤ) * f1 (2 % n)).toNat).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A330060.P15167262799045403135

/-! ## A330060.P15706693452125732978

`record[A000027(n+1)/A319627(A003963(n+1))]`
-/

namespace A330060.P15706693452125732978
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000027 (n + 1) : ℚ) / (A319627 (A003963 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A330060.P15706693452125732978

/-! ## A330060.P14595857530006382697

`record[A032742(n+1)/A319627(A003963(n+1))]`
-/

namespace A330060.P14595857530006382697
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A032742 (n + 1) : ℚ) / (A319627 (A003963 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A330060.P14595857530006382697

/-! ## A330060.P320408328989698817

`record[A008619(2*n)/A319627(A003963(n+1))]`
-/

namespace A330060.P320408328989698817
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008619 (2 * n) : ℚ) / (A319627 (A003963 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A330060.P320408328989698817

/-! ## A330060.P6744001343638603872

`lt[(A061799(n+1)-1)%A319627(A003963(n+1))², 1]+1`
-/

namespace A330060.P6744001343638603872
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A061799 (n + 1) - 1) (A319627 (A003963 (n + 1)).toNat ^ 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A330060.P6744001343638603872

/-!
# A330061: MM-number of the VDD-normalization of the multiset of multisets with MM-number n.

The programs for A330061, there is no canonical definition to state claims against.
-/

/-! ## A330061.P13157995412055430054

`A004197(A178977(n)-A330105(n+1))`
-/

namespace A330061.P13157995412055430054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004197 (A178977 n - A330105 (n + 1)).toNat

end

end A330061.P13157995412055430054

/-! ## A330061.P5371648900310840954

`A085735(A330105(n+1))`
-/

namespace A330061.P5371648900310840954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085735 (A330105 (n + 1)).toNat

end

end A330061.P5371648900310840954

/-! ## A330061.P12431061603695488507

`A330105(C(A031285(n), n))`
-/

namespace A330061.P12431061603695488507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330105 (Nat.choose (A031285 n).toNat n)

end

end A330061.P12431061603695488507

/-! ## A330061.P13754713583608163797

`A330105(A181672(Δ[n²]))`
-/

namespace A330061.P13754713583608163797
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330105 (A181672 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat).toNat

end

end A330061.P13754713583608163797

/-! ## A330061.P5781517410306988784

`A236674(A330105(n+1)+1)`
-/

namespace A330061.P5781517410306988784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236674 (A330105 (n + 1) + 1).toNat

end

end A330061.P5781517410306988784

/-!
# A330063: Beatty sequence for x, where 1/x + sech(x) = 1.

The programs for A330063, there is no canonical definition to state claims against.
-/

/-! ## A330063.P18423602032134654760

`floor(log2(3)+ϕ*n)`
-/

namespace A330063.P18423602032134654760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.logb 2 (3 : ℝ) + Real.goldenRatio * (n : ℝ)⌋

end

end A330063.P18423602032134654760

/-! ## A330063.P17472570473708858057

`abs(floor(ϕ*(n-cos(3))))`
-/

namespace A330063.P17472570473708858057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |⌊Real.goldenRatio * ((n : ℝ) - Real.cos (3 : ℝ))⌋|

end

end A330063.P17472570473708858057

/-! ## A330063.P3060031369818158403

`comp[floor(n*tan(45))+n]`
-/

namespace A330063.P3060031369818158403
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) * Real.tan (45 : ℝ)⌋ + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A330063.P3060031369818158403

/-! ## A330063.P17977738859767893385

`ceil(ϕ*(n-cos(3)))-1`
-/

namespace A330063.P17977738859767893385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.goldenRatio * ((n : ℝ) - Real.cos (3 : ℝ))⌉ - 1

end

end A330063.P17977738859767893385

/-! ## A330063.P15637238204131735849

`ceil(ϕ*(atan(5)+n-1))`
-/

namespace A330063.P15637238204131735849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.goldenRatio * (Real.arctan (5 : ℝ) + ((n : ℤ) - 1 : ℝ))⌉

end

end A330063.P15637238204131735849

/-! ## A330063.P2470141099970396721

`xor(floor(ϕ*(n+1)), char[33])`
-/

namespace A330063.P2470141099970396721
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  33

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor ⌊Real.goldenRatio * (n + 1 : ℝ)⌋ ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A330063.P2470141099970396721

/-! ## A330063.P16568606920661806585

`abs(floor((n+1)/log2(atan(28))))`
-/

namespace A330063.P16568606920661806585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |⌊(n + 1 : ℝ) / Real.logb 2 (Real.arctan (28 : ℝ))⌋|

end

end A330063.P16568606920661806585

/-! ## A330063.P13841260442144303072

`ceil((n+1)/log2(atan(28)))-1`
-/

namespace A330063.P13841260442144303072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n + 1 : ℝ) / Real.logb 2 (Real.arctan (28 : ℝ))⌉ - 1

end

end A330063.P13841260442144303072

/-! ## A330063.P18419391223070094928

`∑[5-A108171(n)]`
-/

namespace A330063.P18419391223070094928
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 - A108171 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A330063.P18419391223070094928

/-!
# A330064: Beatty sequence for cosh(x), where 1/x + sech(x) = 1.

The programs for A330064, there is no canonical definition to state claims against.
-/

/-! ## A330064.P5777879370204980369

`floor(55*(n+1)/21)`
-/

namespace A330064.P5777879370204980369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(55 * (n + 1) : ℚ) / 21⌋

end

end A330064.P5777879370204980369

/-! ## A330064.P16195629029091082023

`ceil((n+1)*tan(45)+n)`
-/

namespace A330064.P16195629029091082023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n + 1 : ℝ) * Real.tan (45 : ℝ) + (n : ℝ)⌉

end

end A330064.P16195629029091082023

/-! ## A330064.P17273346084413219273

`n-floor(xor(n, -1)*tan(45))`
-/

namespace A330064.P17273346084413219273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ⌊(Int.xor (n : ℤ) (-1) : ℝ) * Real.tan (45 : ℝ)⌋

end

end A330064.P17273346084413219273

/-! ## A330064.P1817589058604829573

`floor((n+1)*tan(45)+n)+1`
-/

namespace A330064.P1817589058604829573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℝ) * Real.tan (45 : ℝ) + (n : ℝ)⌋ + 1

end

end A330064.P1817589058604829573

/-! ## A330064.P3779292144442273412

`floor((sin(sqrt(6))+n)*ϕ²)+1`
-/

namespace A330064.P3779292144442273412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Real.sin (Real.sqrt (6 : ℝ)) + (n : ℝ)) * Real.goldenRatio ^ 2⌋ + 1

end

end A330064.P3779292144442273412

/-! ## A330064.P5911721764143424097

`comp[floor(1/tanh(ϕ/(n+1)))+n-12]`
-/

namespace A330064.P5911721764143424097
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊1 / Real.tanh (Real.goldenRatio / (n + 1 : ℝ))⌋ + ((n : ℤ) - 12)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A330064.P5911721764143424097

/-! ## A330064.P8854085662662459996

`A184657(n+3)-6`
-/

namespace A330064.P8854085662662459996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184657 (n + 3) - 6

end

end A330064.P8854085662662459996

/-! ## A330064.P2743863054934112489

`A007064(n+4)-7`
-/

namespace A330064.P2743863054934112489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007064 (n + 4) - 7

end

end A330064.P2743863054934112489

/-! ## A330064.P7430617410067095755

`∑[Δ[A057365(n)]+2]`
-/

namespace A330064.P7430617410067095755
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057365 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A330064.P7430617410067095755

/-! ## A330064.P9339356879139652698

`∑[abs(Δ[A007064(n+3)])]`
-/

namespace A330064.P9339356879139652698
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007064 (n + 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A330064.P9339356879139652698

/-!
# A330066: Beatty sequence for x, where 1/x + csch(x) = 1.

The programs for A330066, there is no canonical definition to state claims against.
-/

/-! ## A330066.P12457316723060322158

`comp[floor(3*n*sin(1))]`
-/

namespace A330066.P12457316723060322158
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊3 * ((n : ℝ) * Real.sin (1 : ℝ))⌋

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A330066.P12457316723060322158

/-! ## A330066.P1538148206520669963

`floor((n+1)/sin(tan(10)))`
-/

namespace A330066.P1538148206520669963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℝ) / Real.sin (Real.tan (10 : ℝ))⌋

end

end A330066.P1538148206520669963

/-! ## A330066.P11596963227473154872

`comp[floor(n/tanh(acot(1)))+n]`
-/

namespace A330066.P11596963227473154872
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) / Real.tanh (SequenceMachineLib.acot (1 : ℝ))⌋ + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A330066.P11596963227473154872

/-! ## A330066.P306309631808635975

`floor((n+1)*7^(7/27))`
-/

namespace A330066.P306309631808635975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℝ) * (7 : ℝ) ^ ((7 : ℚ) / 27 : ℝ)⌋

end

end A330066.P306309631808635975

/-! ## A330066.P14461264799231464636

`∑[comp[32*n]²%3]+n`
-/

namespace A330066.P14461264799231464636
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  32 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n ^ 2 % 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + n

end

end A330066.P14461264799231464636

/-! ## A330066.P10583504894527598041

`ceil((n+1)*tanh(atan(1))+n)`
-/

namespace A330066.P10583504894527598041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n + 1 : ℝ) * Real.tanh (Real.arctan (1 : ℝ)) + (n : ℝ)⌉

end

end A330066.P10583504894527598041

/-! ## A330066.P4924977752841123939

`abs(ceil(-((n+1)/sin(tan(10)))))`
-/

namespace A330066.P4924977752841123939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |⌈-((n + 1 : ℝ) / Real.sin (Real.tan (10 : ℝ)))⌉|

end

end A330066.P4924977752841123939

/-! ## A330066.P9885401148947930914

`comp[floor(n*(acot(1)+1)*sqrt(2))]`
-/

namespace A330066.P9885401148947930914
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) * (SequenceMachineLib.acot (1 : ℝ) + 1) * Real.sqrt (2 : ℝ)⌋

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A330066.P9885401148947930914

/-! ## A330066.P9739294833038316328

`floor((n+1)*tanh(atan(1)))+n+1`
-/

namespace A330066.P9739294833038316328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℝ) * Real.tanh (Real.arctan (1 : ℝ))⌋ + (n + 1 : ℤ)

end

end A330066.P9739294833038316328

/-! ## A330066.P1152020378861882665

`4*n+3-A329842(n+1)`
-/

namespace A330066.P1152020378861882665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * n + 3 : ℤ) - A329842 (n + 1)

end

end A330066.P1152020378861882665

/-!
# A330067: Beatty sequence for sinh(x), where 1/x + 1/sinh(x) = 1.

The programs for A330067, there is no canonical definition to state claims against.
-/

/-! ## A330067.P3502266862093781606

`floor(53*(n+1)/21)`
-/

namespace A330067.P3502266862093781606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊53 * ((n + 1 : ℚ) / 21)⌋

end

end A330067.P3502266862093781606

/-! ## A330067.P1980456103689338901

`round(n/cos(5)-(n-2))`
-/

namespace A330067.P1980456103689338901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n : ℝ) / Real.cos (5 : ℝ) - ((n : ℤ) - 2 : ℝ))

end

end A330067.P1980456103689338901

/-! ## A330067.P15139454909700271933

`comp[floor(n*tanh(acot(1)))+n]`
-/

namespace A330067.P15139454909700271933
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) * Real.tanh (SequenceMachineLib.acot (1 : ℝ))⌋ + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A330067.P15139454909700271933

/-! ## A330067.P6335817478548646903

`∑[gcd(2, (n+1)%21)+1]`
-/

namespace A330067.P6335817478548646903
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 2 ((n + 1) % 21) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A330067.P6335817478548646903

/-! ## A330067.P5218291445545828512

`abs(floor(3*(n+1)*sin(1)))`
-/

namespace A330067.P5218291445545828512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |⌊3 * ((n + 1 : ℝ) * Real.sin (1 : ℝ))⌋|

end

end A330067.P5218291445545828512

/-! ## A330067.P10007537456521154744

`ceil((n+1)/tanh(atan(1))+n)`
-/

namespace A330067.P10007537456521154744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n + 1 : ℝ) / Real.tanh (Real.arctan (1 : ℝ)) + (n : ℝ)⌉

end

end A330067.P10007537456521154744

/-! ## A330067.P4466692146726564842

`round(∑[atan((n+1)²)/3+2])`
-/

namespace A330067.P4466692146726564842
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.arctan ((n + 1) ^ 2 : ℝ) / 3 + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A330067.P4466692146726564842

/-! ## A330067.P5690476343177650752

`∑[Δ[floor(3*n*sin(1))]%5]`
-/

namespace A330067.P5690476343177650752
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊3 * ((n : ℝ) * Real.sin (1 : ℝ))⌋

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f2 (n + 1) - f2 n) 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A330067.P5690476343177650752

/-! ## A330067.P12983273915000841859

`∑[-Δ[-floor(3*n*sin(1))]]`
-/

namespace A330067.P12983273915000841859
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -⌊3 * ((n : ℝ) * Real.sin (1 : ℝ))⌋

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A330067.P12983273915000841859

/-! ## A330067.P12296741832926776909

`floor((n+1)/tanh(atan(1)))+n+1`
-/

namespace A330067.P12296741832926776909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℝ) / Real.tanh (Real.arctan (1 : ℝ))⌋ + (n + 1 : ℤ)

end

end A330067.P12296741832926776909

/-!
# A330068: 2-Sondow numbers: numbers k such that p^s divides k/p + 2 for every prime power divisor p^s of k.

The programs for A330068, there is no canonical definition to state claims against.
-/

/-! ## A330068.P17496266783544309732

`ceil(A346552(n+1)/2)`
-/

namespace A330068.P17496266783544309732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A346552 (n + 1) : ℚ) / 2⌉

end

end A330068.P17496266783544309732

/-! ## A330068.P8530668481985232345

`lcm(4, A346556(n+1))/4`
-/

namespace A330068.P8530668481985232345
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm 4 (A346556 (n + 1)) : ℚ) / 4

end

end A330068.P8530668481985232345

/-! ## A330068.P10570469787192418143

`A346556(n+1)/A058318(n+1)²`
-/

namespace A330068.P10570469787192418143
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A346556 (n + 1) : ℚ) / (A058318 (n + 1) ^ 2 : ℚ)

end

end A330068.P10570469787192418143

/-! ## A330068.P1147562253284238708

`floor((A346552(n+1)+A129186(n))/2)`
-/

namespace A330068.P1147562253284238708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A346552 (n + 1) + A129186 n : ℚ) / 2⌋

end

end A330068.P1147562253284238708

/-!
# A330072: a(n) is the sum of all integers whose binary representation is contained in the binary representation of n (with multiplicity).

The programs for A330072, there is no canonical definition to state claims against.
-/

/-! ## A330072.P17908690257449554443

`A230877(n)+2*a(floor(n/2))` with `a(0)=0`
-/

namespace A330072.P17908690257449554443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A230877 n + 2 * a ⌊(n : ℚ) / 2⌋.toNat

end

end A330072.P17908690257449554443

/-!
# A330074: Expansion of e.g.f. Product_{k>=1} (1 - log(1 - x^k)).

The programs for A330074, there is no canonical definition to state claims against.
-/

/-! ## A330074.P11711700075843315355

`A110656(((n+1)!+n)*(n+1))`
-/

namespace A330074.P11711700075843315355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110656 ((Nat.factorial (n + 1) + n) * (n + 1))

end

end A330074.P11711700075843315355

/-! ## A330074.P1486423559764981847

`A110656((n+1)*(∏[n+1]+n))`
-/

namespace A330074.P1486423559764981847
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110656 ((n + 1) * (∏ j ∈ Finset.range (n + 1), f1 j + n))

end

end A330074.P1486423559764981847

/-!
# A330075: Expansion of e.g.f. Product_{k>=1} (1 - log(1 - x^k) / k).

The programs for A330075, there is no canonical definition to state claims against.
-/

/-! ## A330075.P2111728073812211842

`A335133(A335137(n*a(n-1)))` with `a(0)=1`
-/

namespace A330075.P2111728073812211842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A335133 (A335137 ((n : ℤ) * a (n - 1)).toNat).toNat

end

end A330075.P2111728073812211842

/-! ## A330075.P11777625904062974330

`A110654(or(A052841(n), A080874(n)))`
-/

namespace A330075.P11777625904062974330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (Int.lor (A052841 n) (A080874 n)).toNat

end

end A330075.P11777625904062974330

/-!
# A330076: Numbers k such that H(k) > d(k), where H(k) = Sum_{1 <= i < j <= d(k)} 1/(d_j - d_i) is sum over ordered pairs of divisors of k, and d(k) is the number of divisors of k.

The programs for A330076, there is no canonical definition to state claims against.
-/

/-! ## A330076.P6621734561043760519

`record[lcm(4, A261476(n+2))]`
-/

namespace A330076.P6621734561043760519
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 4 (A261476 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A330076.P6621734561043760519

/-! ## A330076.P16669997069720226012

`record[lcm(12, A266228(n+1))]`
-/

namespace A330076.P16669997069720226012
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 12 (A266228 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A330076.P16669997069720226012

/-! ## A330076.P16776055876711872179

`filter[A236021(n+1), A389905(#)]`
-/

namespace A330076.P16776055876711872179
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236021 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A389905 (f1 j).toNat = 1) n)

end

end A330076.P16776055876711872179

/-! ## A330076.P11421318888734776612

`filter[A119500(n+3), A159638(#)]`
-/

namespace A330076.P11421318888734776612
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119500 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A159638 (f1 j).toNat = 1) n)

end

end A330076.P11421318888734776612

/-! ## A330076.P17051784974399753936

`filter[A236021(n+3), A267605(#)]`
-/

namespace A330076.P17051784974399753936
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236021 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A267605 (f1 j).toNat = 1) n)

end

end A330076.P17051784974399753936

/-!
# A330077: a(n) = numerator of Sum_{1 <= i < j <= d(n)} 1/(d_j - d_i), sum over ordered pairs of divisors of n, where d(n) is the number of divisors of n.

The programs for A330077, there is no canonical definition to state claims against.
-/

/-! ## A330077.P14434441967778730826

`A318577(∑[2^n]+n%2)`
-/

namespace A330077.P14434441967778730826
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318577 (∑ j ∈ Finset.range (n + 1), f1 j + n % 2)

end

end A330077.P14434441967778730826

/-! ## A330077.P11540332062710359631

`A319136(∑[2*floor(n/5)+1]²)`
-/

namespace A330077.P11540332062710359631
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ⌊(n : ℚ) / 5⌋ + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319136 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2).toNat

end

end A330077.P11540332062710359631

/-!
# A330078: a(n) = denominator of Sum_{1 <= i < j <= d(n)} 1/(d_j - d_i), sum over ordered pairs of divisors of n, where d(n) is the number of divisors of n.

The programs for A330078, there is no canonical definition to state claims against.
-/

/-! ## A330078.P11751306173329600848

`gcd(A003418(n), A153733(A085540(n)))`
-/

namespace A330078.P11751306173329600848
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A003418 n) (A153733 (A085540 n).toNat)

end

end A330078.P11751306173329600848

/-! ## A330078.P9317165227479250612

`A258324(n+1)/A057993(A058175(n))`
-/

namespace A330078.P9317165227479250612
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A258324 (n + 1) : ℚ) / (A057993 (A058175 n).toNat : ℚ)

end

end A330078.P9317165227479250612

/-!
# A330079: Number of n-step self-avoiding walks starting at the origin that are restricted to the boundary walls of the first octant of the cubic lattice.

The programs for A330079, there is no canonical definition to state claims against.
-/

/-! ## A330079.P3309734632968293245

`A110656(6*A001411(n))`
-/

namespace A330079.P3309734632968293245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110656 (6 * A001411 n).toNat

end

end A330079.P3309734632968293245

/-! ## A330079.P7684937495873611681

`A262114(9*A001411(n))`
-/

namespace A330079.P7684937495873611681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262114 (9 * A001411 n).toNat

end

end A330079.P7684937495873611681

/-! ## A330079.P15164434832125229148

`∑[record[A257684(A181565(n))]]`
-/

namespace A330079.P15164434832125229148
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257684 (A181565 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A330079.P15164434832125229148

/-!
# A330080: a(n) = floor(b(n)), where b(1) = b(2) = b(3) = 1 and b(n) = (b(n-1) + b(n-2))/b(n-3) for n > 3.

The programs for A330080, there is no canonical definition to state claims against.
-/

/-! ## A330080.P2219010482013947777

`floor(A185332(n+1)/A185341(n+1))`
-/

namespace A330080.P2219010482013947777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A185332 (n + 1) : ℚ) / (A185341 (n + 1) : ℚ)⌋

end

end A330080.P2219010482013947777

/-!
# A330081: If the binary expansion of n is (b(1), ..., b(w)), then the binary expansion of a(n) is (b(1), b(3), b(5), ..., b(6), b(4), b(2)).

The programs for A330081, there is no canonical definition to state claims against.
-/

/-! ## A330081.P2604376601368137312

`A059906(A048701(n))`
-/

namespace A330081.P2604376601368137312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059906 (A048701 n).toNat

end

end A330081.P2604376601368137312

/-! ## A330081.P17740448772314771861

`A059906(3*A048702(n))`
-/

namespace A330081.P17740448772314771861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059906 (3 * A048702 n).toNat

end

end A330081.P17740448772314771861

/-! ## A330081.P5129360879188704612

`A059906(A008585(A048702(n)))`
-/

namespace A330081.P5129360879188704612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059906 (A008585 (A048702 n).toNat).toNat

end

end A330081.P5129360879188704612

/-!
# A330082: a(n) = 5*A064038(n+1).

The programs for A330082, the canonical program `A330082.P17333305925167713200` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A330082 has offset 0).

The definition of A330082 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A330082.P17333305925167713200

`5*A064038(n+1)`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A330082

/-- `5*A064038(n+1)` -/
def P17333305925167713200.Spec : Prop :=
  ∀ n, P17333305925167713200.a n = A330082 n

theorem P17333305925167713200.correct : P17333305925167713200.Spec := by
  intro n
  simp only [A330082]

end A330082

/-! ## A330082.P1885942540920507062

`A026741(A028895(n))`
-/

namespace A330082.P1885942540920507062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A028895 n).toNat

end

end A330082.P1885942540920507062

namespace A330082

/-- `A026741(A028895(n))` -/
def P1885942540920507062.Spec : Prop :=
  ∀ n, P1885942540920507062.a n = A330082 n

end A330082

/-! ## A330082.P8134833337080547064

`lcm(2, ∑[5*n])/2`
-/

namespace A330082.P8134833337080547064
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 * n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.lcm 2 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ) / 2

end

end A330082.P8134833337080547064

namespace A330082

/-- `lcm(2, ∑[5*n])/2` -/
def P8134833337080547064.Spec : Prop :=
  ∀ n, P8134833337080547064.a n = (A330082 n : ℚ)

end A330082

/-! ## A330082.P11325232253960945910

`5/gcd(2, ∑[n])*∑[n]`
-/

namespace A330082.P11325232253960945910
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  5 / (Nat.gcd 2 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ) * ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℚ)

end

end A330082.P11325232253960945910

namespace A330082

/-- `5/gcd(2, ∑[n])*∑[n]` -/
def P11325232253960945910.Spec : Prop :=
  ∀ n, P11325232253960945910.a n = (A330082 n : ℚ)

end A330082

/-! ## A330082.P4473984896993137099

`5*lcm(4, n²+n)/4`
-/

namespace A330082.P4473984896993137099
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  5 * ((Nat.lcm 4 (n ^ 2 + n) : ℚ) / 4)

end

end A330082.P4473984896993137099

namespace A330082

/-- `5*lcm(4, n²+n)/4` -/
def P4473984896993137099.Spec : Prop :=
  ∀ n, P4473984896993137099.a n = (A330082 n : ℚ)

end A330082

/-! ## A330082.P1064477248642381861

`5*(n+1)*n/((-1)^∑[n]+3)`
-/

namespace A330082.P1064477248642381861
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  5 * ((n + 1 : ℚ) * ((n : ℚ) / ((-1) ^ (∑ j ∈ Finset.range (n + 1), f1 j) + 3 : ℚ)))

end

end A330082.P1064477248642381861

namespace A330082

/-- `5*(n+1)*n/((-1)^∑[n]+3)` -/
def P1064477248642381861.Spec : Prop :=
  ∀ n, P1064477248642381861.a n = (A330082 n : ℚ)

end A330082

/-! ## A330082.P4797665179838191144

`A178242(n)+n²*A014695(n)`
-/

namespace A330082.P4797665179838191144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178242 n + (n ^ 2 : ℤ) * A014695 n

end

end A330082.P4797665179838191144

namespace A330082

/-- `A178242(n)+n²*A014695(n)` -/
def P4797665179838191144.Spec : Prop :=
  ∀ n, P4797665179838191144.a n = A330082 n

end A330082

/-! ## A330082.P15612793439090032679

`A008587(A064038(n+1))`
-/

namespace A330082.P15612793439090032679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008587 (A064038 (n + 1)).toNat

end

end A330082.P15612793439090032679

namespace A330082

/-- `A008587(A064038(n+1))` -/
def P15612793439090032679.Spec : Prop :=
  ∀ n, P15612793439090032679.a n = A330082 n

end A330082

/-! ## A330082.P15282080268453813755

`A047203(and(2, n+1)!*∑[2*n]+1)`
-/

namespace A330082.P15282080268453813755
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047203 (Nat.factorial (Nat.land 2 (n + 1)) * (∑ j ∈ Finset.range (n + 1), f1 j) + 1)

end

end A330082.P15282080268453813755

namespace A330082

/-- `A047203(and(2, n+1)!*∑[2*n]+1)` -/
def P15282080268453813755.Spec : Prop :=
  ∀ n, P15282080268453813755.a n = A330082 n

end A330082

/-! ## A330082.P3789298128150723890

`A001068(lcm(4, A002378(n)))`
-/

namespace A330082.P3789298128150723890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001068 (Int.lcm 4 (A002378 n))

end

end A330082.P3789298128150723890

namespace A330082

/-- `A001068(lcm(4, A002378(n)))` -/
def P3789298128150723890.Spec : Prop :=
  ∀ n, P3789298128150723890.a n = A330082 n

end A330082

/-!
# A330083: a(n) is the smallest number k > 0 such that for each b = 2..n the base-b expansion of k has exactly n - b zeros.

The programs for A330083, there is no canonical definition to state claims against.
-/

/-! ## A330083.P10000548425654580632

`∑[∑[5*a(n-2)²]]` with `a(0)=1, a(1)=0, a(2)=7`
-/

namespace A330083.P10000548425654580632
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 7] fun n f2 =>
  5 * f2 (n - 2) ^ 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A330083.P10000548425654580632

/-!
# A330085: Length of longest binary word with the property that all distinct occurrences of identical-length blocks agree on at most n positions.

The programs for A330085, there is no canonical definition to state claims against.
-/

/-! ## A330085.P6236096428690010810

`floor(∑[sqrt(6)-n/59])`
-/

namespace A330085.P6236096428690010810
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (6 : ℝ) - ((n : ℚ) / 59 : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋

end

end A330085.P6236096428690010810

/-! ## A330085.P7990466359998451905

`comp[∑[n]-ceil(cos(n))]+n+1`
-/

namespace A330085.P7990466359998451905
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - ⌈Real.cos (n : ℝ)⌉

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + (n + 1)

end

end A330085.P7990466359998451905

/-! ## A330085.P10519691314295067771

`comp[∑[n-∑{e}[or(2, -n), #]]]+n`
-/

namespace A330085.P10519691314295067771
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 2 (-(n : ℤ))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ((∑ p ∈ Nat.primeFactors (f3 n).natAbs, Nat.factorization (f3 n).natAbs p : ℕ) : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + n

end

end A330085.P10519691314295067771

/-! ## A330085.P7517535935602517201

`floor(log2(C(n+2, 2)+3))+2*n`
-/

namespace A330085.P7517535935602517201
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.log 2 (Nat.choose (n + 2) 2 + 3) + 2 * n

end

end A330085.P7517535935602517201

/-! ## A330085.P8314378862862233156

`∑[char[A036702(n+1)]+2]`
-/

namespace A330085.P8314378862862233156
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036702 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = (n : ℤ) then 1 else 0) + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A330085.P8314378862862233156

/-!
# A330086: Least positive integer k such that A014577(k - 1) != A014577(n + k - 1).

The programs for A330086, there is no canonical definition to state claims against.
-/

/-! ## A330086.P13513005816580243979

`A136480(Δ[A053810(n+1)]^A000188(n+1))`
-/

namespace A330086.P13513005816580243979
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053810 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136480 (SequenceMachineLib.roundAway ((f1 (n + 1) - f1 n : ℚ) ^ (A000188 (n + 1) : ℤ))).toNat

end

end A330086.P13513005816580243979

/-! ## A330086.P18155754280506688019

`A050603(A256077(2*(n+2))-(n+2)/2^Δ[val(n+1, 2)])`
-/

namespace A330086.P18155754280506688019
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (n + 1) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050603 (SequenceMachineLib.roundAway ((A256077 (2 * (n + 2)) : ℚ) - (n + 2 : ℚ) / (2 : ℚ) ^ ((f1 (n + 1) : ℤ) - (f1 n : ℤ) : ℤ))).toNat

end

end A330086.P18155754280506688019

/-! ## A330086.P943007496199065953

`A087963(A174366(n+2))`
-/

namespace A330086.P943007496199065953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087963 (A174366 (n + 2)).toNat

end

end A330086.P943007496199065953

/-! ## A330086.P8327883503113570609

`gcd(A000415(n+1), A380867(A244711(n)))`
-/

namespace A330086.P8327883503113570609
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000415 (n + 1)) (A380867 (A244711 (n + 11)).toNat)

end

end A330086.P8327883503113570609

/-! ## A330086.P7696727849816748780

`A184762(A020492(n+1))+A005361(n+1)`
-/

namespace A330086.P7696727849816748780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184762 (A020492 (n + 1)).toNat + A005361 (n + 1)

end

end A330086.P7696727849816748780

/-!
# A330087: Permanent of a square matrix M(n) whose general element M_{i,j} is defined by i*prime(j).

The programs for A330087, there is no canonical definition to state claims against.
-/

/-! ## A330087.P16371587751356423009

`n!²*A002110(n)`
-/

namespace A330087.P16371587751356423009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n ^ 2 : ℤ) * A002110 n

end

end A330087.P16371587751356423009

/-! ## A330087.P15315288849958410664

`a(n-1)*A356868(n)` with `a(0)=1`
-/

namespace A330087.P15315288849958410664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * A356868 n

end

end A330087.P15315288849958410664

/-! ## A330087.P4787383886886717165

`n!²*∏[record[A006530(n+1)]]`
-/

namespace A330087.P4787383886886717165
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n ^ 2 : ℤ) * (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A330087.P4787383886886717165

/-! ## A330087.P12161198800601899091

`n!²*∏[record[A020639(n+1)]]`
-/

namespace A330087.P12161198800601899091
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n ^ 2 : ℤ) * (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A330087.P12161198800601899091

/-! ## A330087.P13729114295498446326

`a(n-1)*A000040(n)*n²` with `a(0)=1`
-/

namespace A330087.P13729114295498446326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * A000040 n * (n ^ 2 : ℤ)

end

end A330087.P13729114295498446326

/-!
# A330088: a(n) = Sum_{k=1..n} binomial(n,k) * sigma(k) * sigma(n - k + 1), where sigma = A000203.

The programs for A330088, there is no canonical definition to state claims against.
-/

/-! ## A330088.P1865961527368339110

`A338871(∑[n+1]+2)`
-/

namespace A330088.P1865961527368339110
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338871 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A330088.P1865961527368339110

/-! ## A330088.P12394758849215489114

`record[gcd(A264405(n), A338871(n+1))]`
-/

namespace A330088.P12394758849215489114
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A264405 n) (A338871 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A330088.P12394758849215489114

/-! ## A330088.P5268694521846518365

`record[gcd(A264428(n), A338871(n+2))]`
-/

namespace A330088.P5268694521846518365
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A264428 n) (A338871 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A330088.P5268694521846518365

/-! ## A330088.P1919447753957470040

`record[gcd(A338859(n), A338871(n+3))]`
-/

namespace A330088.P1919447753957470040
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A338859 n) (A338871 (n + 3))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A330088.P1919447753957470040

/-! ## A330088.P4338992929723099689

`record[A338871(n+3)/A338864(n+1)]`
-/

namespace A330088.P4338992929723099689
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A338871 (n + 3) : ℚ) / (A338864 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A330088.P4338992929723099689

/-!
# A330090: Inverse permutation to A330081.

The programs for A330090, there is no canonical definition to state claims against.
-/

/-! ## A330090.P13707656377463396759

`A080542(round(sqrt(n²+1)))%A282429(n+1)`
-/

namespace A330090.P13707656377463396759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A080542 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat) (A282429 (n + 1))

end

end A330090.P13707656377463396759

/-! ## A330090.P3219249314910255674

`A080542(A028310(n))%A131583(n)`
-/

namespace A330090.P3219249314910255674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A080542 (A028310 n).toNat) (A131583 n)

end

end A330090.P3219249314910255674

/-! ## A330090.P3316377372725402640

`A051903(A002523(n))*A080542(A000038(n)+n)`
-/

namespace A330090.P3316377372725402640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (A002523 n).toNat * A080542 (A000038 n + (n : ℤ)).toNat

end

end A330090.P3316377372725402640

/-! ## A330090.P14439256898543334594

`A080542(A000038(n)+n)%A000203(A000079(n))`
-/

namespace A330090.P14439256898543334594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A080542 (A000038 n + (n : ℤ)).toNat) (A000203 (A000079 n).toNat)

end

end A330090.P14439256898543334594

/-! ## A330090.P14500329220956904764

`A333777(A330081(A333777(A000120(A000225(n)))))`
-/

namespace A330090.P14500329220956904764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333777 (A330081 (A333777 (A000120 (A000225 n).toNat).toNat).toNat).toNat

end

end A330090.P14500329220956904764

/-!
# A330094: Beatty sequence for 2^x, where 1/2^x + 1/3^(x-1) = 1.

The programs for A330094, there is no canonical definition to state claims against.
-/

/-! ## A330094.P15791817265976563126

`comp[floor(51*n/32)]`
-/

namespace A330094.P15791817265976563126
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊51 * ((n : ℚ) / 32)⌋

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A330094.P15791817265976563126

/-! ## A330094.P5793363277796596852

`∑[Δ[ceil(n*sqrt(11))]%2+2]`
-/

namespace A330094.P5793363277796596852
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℝ) * Real.sqrt (11 : ℝ)⌉

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f2 (n + 1) - f2 n) 2 + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A330094.P5793363277796596852

/-! ## A330094.P8293048747881716172

`∑[(3-(Δ[ceil(n*sqrt(11))]-3)²)%5]`
-/

namespace A330094.P8293048747881716172
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℝ) * Real.sqrt (11 : ℝ)⌉

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (3 - (f2 (n + 1) - f2 n - 3) ^ 2) 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A330094.P8293048747881716172

/-! ## A330094.P17170463663209909325

`(3*(n+1)+3*(n+1))%ceil((n+1)*sqrt(11))`
-/

namespace A330094.P17170463663209909325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (3 * (n + 1) + 3 * (n + 1) : ℤ) ⌈(n + 1 : ℝ) * Real.sqrt (11 : ℝ)⌉

end

end A330094.P17170463663209909325

/-! ## A330094.P1320109510708786000

`∑[A020639(Δ[ceil(n*sqrt(11))])]`
-/

namespace A330094.P1320109510708786000
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℝ) * Real.sqrt (11 : ℝ)⌉

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A330094.P1320109510708786000

/-! ## A330094.P8923171987793573740

`∑[char[A076538(2*(n+1))]+2]`
-/

namespace A330094.P8923171987793573740
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076538 (2 * (n + 1))

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = (n : ℤ) then 1 else 0) + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A330094.P8923171987793573740

/-! ## A330094.P11486024233820160237

`A016969(n)-floor((n+1)*sqrt(11))`
-/

namespace A330094.P11486024233820160237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016969 n - ⌊(n + 1 : ℝ) * Real.sqrt (11 : ℝ)⌋

end

end A330094.P11486024233820160237

/-! ## A330094.P15715929726510350386

`∑[A006530(Δ[A198266(n)])]`
-/

namespace A330094.P15715929726510350386
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198266 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A330094.P15715929726510350386

/-! ## A330094.P8071524244055517223

`∑[A014963(Δ[A198266(n)])]`
-/

namespace A330094.P8071524244055517223
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198266 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A330094.P8071524244055517223

/-!
# A330095: Beatty sequence for 3^(x-1), where 1/2^x + 1/3^(x-1) = 1.

The programs for A330095, there is no canonical definition to state claims against.
-/

/-! ## A330095.P7803065212278399350

`comp[floor(6*n/sqrt(5))]`
-/

namespace A330095.P7803065212278399350
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(6 * n : ℝ) / Real.sqrt (5 : ℝ)⌋

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A330095.P7803065212278399350

/-! ## A330095.P2433183217007078821

`floor((n+1)*atan(π)²)`
-/

namespace A330095.P2433183217007078821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℝ) * Real.arctan Real.pi ^ 2⌋

end

end A330095.P2433183217007078821

/-! ## A330095.P16146361194495595750

`floor((n+1)*(3-atan(6)))`
-/

namespace A330095.P16146361194495595750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℝ) * (3 - Real.arctan (6 : ℝ))⌋

end

end A330095.P16146361194495595750

/-! ## A330095.P7864704655896888827

`∑[dr(Δ[floor(51*n/32)])]`
-/

namespace A330095.P7864704655896888827
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊51 * ((n : ℚ) / 32)⌋

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (f2 (n + 1) - f2 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A330095.P7864704655896888827

/-! ## A330095.P1055380073084371952

`floor((n+1)/acot(2^acot(2)))`
-/

namespace A330095.P1055380073084371952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℝ) / SequenceMachineLib.acot ((2 : ℝ) ^ (SequenceMachineLib.acot (2 : ℝ)))⌋

end

end A330095.P1055380073084371952

/-! ## A330095.P16599002973274423840

`floor(log(A183469(n+1)))`
-/

namespace A330095.P16599002973274423840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.log (A183469 (n + 1) : ℝ)⌋

end

end A330095.P16599002973274423840

/-! ## A330095.P12937272329981121001

`ceil(A072354(n+1)/3)`
-/

namespace A330095.P12937272329981121001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A072354 (n + 1) : ℚ) / 3⌉

end

end A330095.P12937272329981121001

/-! ## A330095.P17088494680536619576

`ceil(log(A367659(2*n+1)))`
-/

namespace A330095.P17088494680536619576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.log (A367659 (2 * n + 1) : ℝ)⌉

end

end A330095.P17088494680536619576

/-! ## A330095.P2523515013182824893

`round(log(A287128(2*n+1)))`
-/

namespace A330095.P2523515013182824893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.log (A287128 (2 * n + 1) : ℝ))

end

end A330095.P2523515013182824893

/-! ## A330095.P11437432619131291593

`A057364(A164086(n+1))`
-/

namespace A330095.P11437432619131291593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057364 (A164086 (n + 1)).toNat

end

end A330095.P11437432619131291593

/-!
# A330097: MM-numbers of VDD-normalized multiset partitions.

The programs for A330097, there is no canonical definition to state claims against.
-/

/-! ## A330097.P6217323859210829620

`A330122(∑[A185284(n)!])`
-/

namespace A330097.P6217323859210829620
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A185284 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330122 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A330097.P6217323859210829620

/-! ## A330097.P4615978447730429587

`A330122(∑[n^A025469(n)])`
-/

namespace A330097.P4615978447730429587
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) ^ (A025469 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330122 (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A330097.P4615978447730429587

/-! ## A330097.P7460325574304446453

`A330122(n+1)%A002764(n)`
-/

namespace A330097.P7460325574304446453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A330122 (n + 1)) (A002764 n)

end

end A330097.P7460325574304446453

/-! ## A330097.P17948241632575395638

`A330122(C(A085735(n+1), n))`
-/

namespace A330097.P17948241632575395638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330122 (Nat.choose (A085735 (n + 1)).toNat n)

end

end A330097.P17948241632575395638

/-! ## A330097.P4356903559608702451

`A330122(n+1)^A185284(n)!`
-/

namespace A330097.P4356903559608702451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330122 (n + 1) ^ Nat.factorial (A185284 n).toNat

end

end A330097.P4356903559608702451

/-!
# A330098: Number of distinct multisets of multisets that can be obtained by permuting the vertices of the multiset of multisets with MM-number n.

The programs for A330098, there is no canonical definition to state claims against.
-/

/-! ## A330098.P6615019102726576821

`A304779(A003963(n+1))`
-/

namespace A330098.P6615019102726576821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304779 (A003963 (n + 1)).toNat

end

end A330098.P6615019102726576821

/-! ## A330098.P1652944789059203730

`A320105(A228731(n+1))`
-/

namespace A330098.P1652944789059203730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320105 (A228731 (n + 1)).toNat

end

end A330098.P1652944789059203730

/-! ## A330098.P11500876523513815876

`A003652(A003963(n+1)+1)`
-/

namespace A330098.P11500876523513815876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003652 (A003963 (n + 1) + 1).toNat

end

end A330098.P11500876523513815876

/-! ## A330098.P3317617476165873482

`A003652(A228731(n+1)+1)`
-/

namespace A330098.P3317617476165873482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003652 (A228731 (n + 1) + 1).toNat

end

end A330098.P3317617476165873482

/-! ## A330098.P9851718619457690647

`A340596(A003963(2*(n+1)))`
-/

namespace A330098.P9851718619457690647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340596 (A003963 (2 * (n + 1))).toNat

end

end A330098.P9851718619457690647

/-! ## A330098.P4100276834206677731

`A049100(A003963(n+1)+5)`
-/

namespace A330098.P4100276834206677731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049100 (A003963 (n + 1) + 5).toNat

end

end A330098.P4100276834206677731

/-! ## A330098.P16941900286499134909

`A340654(A003963(2*n+2))`
-/

namespace A330098.P16941900286499134909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340654 (A003963 (2 * n + 2)).toNat

end

end A330098.P16941900286499134909

/-! ## A330098.P4126667406199182121

`A323022(7*A003963(n+1))`
-/

namespace A330098.P4126667406199182121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323022 (7 * A003963 (n + 1)).toNat

end

end A330098.P4126667406199182121

/-! ## A330098.P402260744095397831

`A062977(A003963((n+1)²))!`
-/

namespace A330098.P402260744095397831
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A062977 (A003963 ((n + 1) ^ 2)).toNat).toNat

end

end A330098.P402260744095397831

/-! ## A330098.P11403555534729389154

`∑{d}[A003963(n+1), A135767(#)]`
-/

namespace A330098.P11403555534729389154
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A135767 d

end

end A330098.P11403555534729389154

/-!
# A330099: BII-numbers of brute-force normalized set-systems.

The programs for A330099, there is no canonical definition to state claims against.
-/

/-! ## A330099.P13106145191546821841

`or(A185284(A161045(2*n+3)), A330100(n))`
-/

namespace A330099.P13106145191546821841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A185284 (A161045 (2 * n + 3)).toNat) (A330100 n)

end

end A330099.P13106145191546821841

/-! ## A330099.P9670407019076594202

`A151622(n)!*A330100(n)`
-/

namespace A330099.P9670407019076594202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A151622 n).toNat : ℤ) * A330100 n

end

end A330099.P9670407019076594202

/-! ## A330099.P7457707455925143341

`A330100(n*(A151622(n)+1))`
-/

namespace A330099.P7457707455925143341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330100 ((n : ℤ) * (A151622 n + 1)).toNat

end

end A330099.P7457707455925143341

