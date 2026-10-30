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
import Seq.B000.C013
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C038
import Seq.B000.C039
import Seq.B000.C040
import Seq.B000.C041
import Seq.B000.C042
import Seq.B000.C043
import Seq.B000.C044
import Seq.B000.C046
import Seq.B000.C048
import Seq.B000.C050
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C011
import Seq.B001.C012
import Seq.B001.C013
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
import Seq.B002.C007
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
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
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
# A316300: Number of n X 4 0..1 arrays with every element unequal to 0, 1, 2, 4, 6 or 8 king-move adjacent elements, with upper left element zero.

The programs for A316300, there is no canonical definition to state claims against.
-/

/-! ## A316300.P2136703356690102703

`A316304(∑[n+3]+7)`
-/

namespace A316300.P2136703356690102703
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316304 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A316300.P2136703356690102703

/-! ## A316300.P15055480659571087231

`record[A316304(A198464(n+1)+6)]`
-/

namespace A316300.P15055480659571087231
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316304 (A198464 (n + 1) + 6).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A316300.P15055480659571087231

/-! ## A316300.P12995834576631306911

`A316304(A141214(n)+7)+char[28]`
-/

namespace A316300.P12995834576631306911
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  28

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316304 (A141214 n + 7).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A316300.P12995834576631306911

/-! ## A316300.P1936031289639344516

`A316304(A374004(n+1))+A025438(n)`
-/

namespace A316300.P1936031289639344516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316304 (A374004 (n + 1)).toNat + A025438 n

end

end A316300.P1936031289639344516

/-! ## A316300.P11466995494590908601

`A316304(A374004(n+1))%A316301(n+1)`
-/

namespace A316300.P11466995494590908601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A316304 (A374004 (n + 1)).toNat) (A316301 (n + 1))

end

end A316300.P11466995494590908601

/-!
# A316301: Number of nX5 0..1 arrays with every element unequal to 0, 1, 2, 4, 6 or 8 king-move adjacent elements, with upper left element zero.

The programs for A316301, there is no canonical definition to state claims against.
-/

/-! ## A316301.P15881866536132652085

`A316304(∑[n+4]+11)`
-/

namespace A316301.P15881866536132652085
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316304 (∑ j ∈ Finset.range (n + 1), f1 j + 11)

end

end A316301.P15881866536132652085

/-! ## A316301.P17258495687142228361

`A316304(Δ[A023545(n+1)])+A236241(n+1)`
-/

namespace A316301.P17258495687142228361
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316304 (f1 (n + 1) - f1 n).toNat + A236241 (n + 1)

end

end A316301.P17258495687142228361

/-! ## A316301.P13938406351649858935

`A316304(Δ[A023545(n+1)])%A022723(n+1)`
-/

namespace A316301.P13938406351649858935
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A316304 (f1 (n + 1) - f1 n).toNat) (A022723 (n + 1))

end

end A316301.P13938406351649858935

/-!
# A316302: Number of nX6 0..1 arrays with every element unequal to 0, 1, 2, 4, 6 or 8 king-move adjacent elements, with upper left element zero.

The programs for A316302, there is no canonical definition to state claims against.
-/

/-! ## A316302.P8070540573413157198

`A316304(A374007(n+1))`
-/

namespace A316302.P8070540573413157198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316304 (A374007 (n + 1)).toNat

end

end A316302.P8070540573413157198

/-! ## A316302.P8325758802750253600

`A316304(A056115(n)+21)`
-/

namespace A316302.P8325758802750253600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316304 (A056115 n + 21).toNat

end

end A316302.P8325758802750253600

/-! ## A316302.P5972734909765717317

`A316304(A167499(n+4)+1)`
-/

namespace A316302.P5972734909765717317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316304 (A167499 (n + 4) + 1).toNat

end

end A316302.P5972734909765717317

/-! ## A316302.P14056519971423895367

`A316304(A167614(n+4)+3)`
-/

namespace A316302.P14056519971423895367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316304 (A167614 (n + 4) + 3).toNat

end

end A316302.P14056519971423895367

/-! ## A316302.P6638155279306554941

`A316304(A000124(n+5)+5)`
-/

namespace A316302.P6638155279306554941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316304 (A000124 (n + 5) + 5).toNat

end

end A316302.P6638155279306554941

/-!
# A316303: Number of nX7 0..1 arrays with every element unequal to 0, 1, 2, 4, 6 or 8 king-move adjacent elements, with upper left element zero.

The programs for A316303, there is no canonical definition to state claims against.
-/

/-! ## A316303.P1610942991020430741

`A316304(C(n+7, 2)+7)`
-/

namespace A316303.P1610942991020430741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316304 (Nat.choose (n + 7) 2 + 7)

end

end A316303.P1610942991020430741

/-! ## A316303.P3826599122330886661

`A316304(A374008(n+1))`
-/

namespace A316303.P3826599122330886661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316304 (A374008 (n + 1)).toNat

end

end A316303.P3826599122330886661

/-! ## A316303.P15910409471655494193

`A316304(A056119(n)+28)`
-/

namespace A316303.P15910409471655494193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316304 (A056119 n + 28).toNat

end

end A316303.P15910409471655494193

/-! ## A316303.P14235929079343924489

`A316304(eq[11, A066657(n)])`
-/

namespace A316303.P14235929079343924489
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316304 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A316303.P14235929079343924489

/-! ## A316303.P16075119220999398040

`A316304(A167499(n+5)+2)`
-/

namespace A316303.P16075119220999398040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316304 (A167499 (n + 5) + 2).toNat

end

end A316303.P16075119220999398040

/-!
# A316304: T(n,k)=Number of nXk 0..1 arrays with every element unequal to 0, 1, 2, 4, 6 or 8 king-move adjacent elements, with upper left element zero.

The programs for A316304, there is no canonical definition to state claims against.
-/

/-! ## A316304.P18131931986361101465

`A304479(n+1)+A186034(A022167(n))`
-/

namespace A316304.P18131931986361101465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304479 (n + 1) + A186034 (A022167 n).toNat

end

end A316304.P18131931986361101465

/-! ## A316304.P17329808378381285330

`A304479(n+1)+A173920(A173917(n))`
-/

namespace A316304.P17329808378381285330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304479 (n + 1) + A173920 (A173917 n).toNat

end

end A316304.P17329808378381285330

/-! ## A316304.P1288336039675410593

`A304479(n+1)+A025465(A003099(n))`
-/

namespace A316304.P1288336039675410593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304479 (n + 1) + A025465 (A003099 n).toNat

end

end A316304.P1288336039675410593

/-! ## A316304.P13530269275637914249

`A353495(A156303(n))+A304479(n+1)`
-/

namespace A316304.P13530269275637914249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353495 (A156303 n).toNat + A304479 (n + 1)

end

end A316304.P13530269275637914249

/-! ## A316304.P17369253766067718336

`A304479(n+1)+A055641(A352589(n))`
-/

namespace A316304.P17369253766067718336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304479 (n + 1) + A055641 (A352589 n).toNat

end

end A316304.P17369253766067718336

/-!
# A316305: Number of n X n 0..1 arrays with every element unequal to 0, 1, 3, 4, 6 or 8 king-move adjacent elements, with upper left element zero.

The programs for A316305, there is no canonical definition to state claims against.
-/

/-! ## A316305.P9801218318798187398

`A316311(∑[4*n]+1)`
-/

namespace A316305.P9801218318798187398
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316311 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A316305.P9801218318798187398

/-! ## A316305.P12804505827015790553

`record[A316311(Δ[A235355(n)])]`
-/

namespace A316305.P12804505827015790553
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235355 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316311 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A316305.P12804505827015790553

/-! ## A316305.P12477148939026199567

`and(-1, A316311(A001844(n)))`
-/

namespace A316305.P12477148939026199567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A316311 (A001844 n).toNat)

end

end A316305.P12477148939026199567

/-! ## A316305.P17431072820033263493

`record[A316311(A330613(n+1))]`
-/

namespace A316305.P17431072820033263493
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316311 (A330613 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A316305.P17431072820033263493

/-! ## A316305.P5683575227400796419

`record[A003982(n)*A316311(n+1)]`
-/

namespace A316305.P5683575227400796419
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A316311 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A316305.P5683575227400796419

/-!
# A316306: Number of nX3 0..1 arrays with every element unequal to 0, 1, 3, 4, 6 or 8 king-move adjacent elements, with upper left element zero.

The programs for A316306, there is no canonical definition to state claims against.
-/

/-! ## A316306.P1981261034619650665

`A316311(∑[n+2]+4)`
-/

namespace A316306.P1981261034619650665
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316311 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A316306.P1981261034619650665

/-! ## A316306.P17162389611700918966

`A316311(A167614(n+1))+char[20]`
-/

namespace A316306.P17162389611700918966
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  20

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316311 (A167614 (n + 1)).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A316306.P17162389611700918966

/-! ## A316306.P8756610546649959841

`A316311(A055998(n)+6)+char[22]`
-/

namespace A316306.P8756610546649959841
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  22

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316311 (A055998 n + 6).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A316306.P8756610546649959841

/-! ## A316306.P3359782832466426066

`record[A316311(n+4)/A027465(n)]`
-/

namespace A316306.P3359782832466426066
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A316311 (n + 4) : ℚ) / (A027465 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A316306.P3359782832466426066

/-! ## A316306.P91069640319251024

`A316311(A167499(n)+n)+char[22]`
-/

namespace A316306.P91069640319251024
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  22

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316311 (A167499 n + (n : ℤ)).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A316306.P91069640319251024

/-!
# A316307: Number of nX4 0..1 arrays with every element unequal to 0, 1, 3, 4, 6 or 8 king-move adjacent elements, with upper left element zero.

The programs for A316307, there is no canonical definition to state claims against.
-/

/-! ## A316307.P11811508300742513465

`A316311(∑[n+3]+7)`
-/

namespace A316307.P11811508300742513465
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316311 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A316307.P11811508300742513465

/-! ## A316307.P6734157409535677127

`record[root(A316311(n+5), A104734(n))]`
-/

namespace A316307.P6734157409535677127
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A316311 (n + 5) : ℝ) ^ (1 / (A104734 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A316307.P6734157409535677127

/-! ## A316307.P14500543440383626723

`A316311(A167614(n+2)+1)+char[19]`
-/

namespace A316307.P14500543440383626723
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  19

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316311 (A167614 (n + 2) + 1).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A316307.P14500543440383626723

/-! ## A316307.P10778815886902961322

`or(char[1], A316311(A167499(n+2)-1))`
-/

namespace A316307.P10778815886902961322
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A316311 (A167499 (n + 2) - 1).toNat)

end

end A316307.P10778815886902961322

/-! ## A316307.P11611528325421084548

`A007318(C(n, 2))*A316311(A167499(n+2)-1)`
-/

namespace A316307.P11611528325421084548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose n 2) * A316311 (A167499 (n + 2) - 1).toNat

end

end A316307.P11611528325421084548

/-!
# A316308: Number of nX5 0..1 arrays with every element unequal to 0, 1, 3, 4, 6 or 8 king-move adjacent elements, with upper left element zero.

The programs for A316308, there is no canonical definition to state claims against.
-/

/-! ## A316308.P6918133477832648124

`A316311(∑[n+4]+11)`
-/

namespace A316308.P6918133477832648124
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316311 (∑ j ∈ Finset.range (n + 1), f1 j + 11)

end

end A316308.P6918133477832648124

/-! ## A316308.P11664409889372646087

`A316311(A167499(n+3))+char[A092216(n+1)]`
-/

namespace A316308.P11664409889372646087
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092216 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316311 (A167499 (n + 3)).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A316308.P11664409889372646087

/-! ## A316308.P16660893006111922365

`A316311(A167499(n+3))%A017275(A131393(n+1))`
-/

namespace A316308.P16660893006111922365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A316311 (A167499 (n + 3)).toNat) (A017275 (A131393 (n + 1)).toNat)

end

end A316308.P16660893006111922365

/-!
# A316309: Number of nX6 0..1 arrays with every element unequal to 0, 1, 3, 4, 6 or 8 king-move adjacent elements, with upper left element zero.

The programs for A316309, there is no canonical definition to state claims against.
-/

/-! ## A316309.P16405998254281292788

`A316311(A374007(n+1))`
-/

namespace A316309.P16405998254281292788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316311 (A374007 (n + 1)).toNat

end

end A316309.P16405998254281292788

/-! ## A316309.P14737899318270599238

`A316311(A056115(n)+21)`
-/

namespace A316309.P14737899318270599238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316311 (A056115 n + 21).toNat

end

end A316309.P14737899318270599238

/-! ## A316309.P16587803451469359863

`A316311(A167499(n+4)+1)`
-/

namespace A316309.P16587803451469359863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316311 (A167499 (n + 4) + 1).toNat

end

end A316309.P16587803451469359863

/-! ## A316309.P7457706857307190525

`A316311(A167614(n+4)+3)`
-/

namespace A316309.P7457706857307190525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316311 (A167614 (n + 4) + 3).toNat

end

end A316309.P7457706857307190525

/-! ## A316309.P13862124759639751137

`A316311(A000124(n+5)+5)`
-/

namespace A316309.P13862124759639751137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316311 (A000124 (n + 5) + 5).toNat

end

end A316309.P13862124759639751137

/-!
# A316310: Number of nX7 0..1 arrays with every element unequal to 0, 1, 3, 4, 6 or 8 king-move adjacent elements, with upper left element zero.

The programs for A316310, there is no canonical definition to state claims against.
-/

/-! ## A316310.P1555399546416632688

`A316311(A374008(n+1))`
-/

namespace A316310.P1555399546416632688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316311 (A374008 (n + 1)).toNat

end

end A316310.P1555399546416632688

/-! ## A316310.P8407312329465924795

`A316311(eq[11, A066657(n)])`
-/

namespace A316310.P8407312329465924795
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316311 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A316310.P8407312329465924795

/-! ## A316310.P1147074886876485220

`A316311(A166136(n+5)+1)`
-/

namespace A316310.P1147074886876485220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316311 (A166136 (n + 5) + 1).toNat

end

end A316310.P1147074886876485220

/-! ## A316310.P8780055515825091462

`A316311(A000124(n+6)+6)`
-/

namespace A316310.P8780055515825091462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316311 (A000124 (n + 6) + 6).toNat

end

end A316310.P8780055515825091462

/-! ## A316310.P9019904083240776116

`A316311(A000096(n+5)+8)`
-/

namespace A316310.P9019904083240776116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316311 (A000096 (n + 5) + 8).toNat

end

end A316310.P9019904083240776116

/-!
# A316311: T(n,k)=Number of nXk 0..1 arrays with every element unequal to 0, 1, 3, 4, 6 or 8 king-move adjacent elements, with upper left element zero.

The programs for A316311, there is no canonical definition to state claims against.
-/

/-! ## A316311.P2603073085225903453

`A317266(n+1)-A309785(A299321(n+1))`
-/

namespace A316311.P2603073085225903453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317266 (n + 1) - A309785 (A299321 (n + 1)).toNat

end

end A316311.P2603073085225903453

/-! ## A316311.P11898232021203775623

`A317266(n+1)-A025466(A270890(n+1))`
-/

namespace A316311.P11898232021203775623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317266 (n + 1) - A025466 (A270890 (n + 1)).toNat

end

end A316311.P11898232021203775623

/-! ## A316311.P10970690759139942582

`A317266(n+1)-A075206(n+1)%A117358(n+1)`
-/

namespace A316311.P10970690759139942582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317266 (n + 1) - Int.tmod (A075206 (n + 1)) (A117358 (n + 1))

end

end A316311.P10970690759139942582

/-! ## A316311.P1739725564856619611

`A317266(n+1)-A285007(A035607(n))`
-/

namespace A316311.P1739725564856619611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317266 (n + 1) - A285007 (A035607 n).toNat

end

end A316311.P1739725564856619611

/-! ## A316311.P5987346431902951766

`A317266(n+1)-A285007(A270061(n))`
-/

namespace A316311.P5987346431902951766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317266 (n + 1) - A285007 (A270061 n).toNat

end

end A316311.P5987346431902951766

/-!
# A316312: Numbers k such that the sum of the digits of the numbers 1, 2, 3, ... up to (k - 1) is divisible by k.

The programs for A316312, there is no canonical definition to state claims against.
-/

/-! ## A316312.P12022290855626495104

`record[gcd(∑[∑{digits}[n, #]], n+1)]`
-/

namespace A316312.P12022290855626495104
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f3 n)).map fun (x : ℕ) => x).sum

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd (∑ j ∈ Finset.range (n + 1), f2 j) (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A316312.P12022290855626495104

/-! ## A316312.P6916048755973216455

`lt[(n*∑[∑{digits}[n, #]])%(n+1), 1]+1`
-/

namespace A316312.P6916048755973216455
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f3 n)).map fun (x : ℕ) => x).sum

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (∑ j ∈ Finset.range (n + 1), f2 j) % (n + 1)

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f4 j) n + 1

end

end A316312.P6916048755973216455

/-! ## A316312.P12628096330230882024

`record[gcd(n+1, A037123(n))]`
-/

namespace A316312.P12628096330230882024
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A037123 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A316312.P12628096330230882024

/-! ## A316312.P5912043803078893108

`record[gcd(n+2, ∑[A007953(n+1)])]`
-/

namespace A316312.P5912043803078893108
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 2 : ℤ) (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A316312.P5912043803078893108

/-! ## A316312.P16161614193914283381

`lt[lcm(A037123(n)%(n+1), A255057(n)), 1]+1`
-/

namespace A316312.P16161614193914283381
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (Int.tmod (A037123 n) (n + 1 : ℤ)) (A255057 n)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A316312.P16161614193914283381

/-!
# A316313: Number of integer partitions of n such that every distinct submultiset has a different average.

The programs for A316313, there is no canonical definition to state claims against.
-/

/-! ## A316313.P16684011126108622116

`Δ[A036469(n)]-A316399(n+1)`
-/

namespace A316313.P16684011126108622116
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036469 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A316399 (n + 1)

end

end A316313.P16684011126108622116

/-! ## A316313.P17228264194434729077

`A000009(n+1)-A316399(n+1)`
-/

namespace A316313.P17228264194434729077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 (n + 1) - A316399 (n + 1)

end

end A316313.P17228264194434729077

/-! ## A316313.P2365827258616266768

`A054242(∑[n+1])-A316399(n+1)`
-/

namespace A316313.P2365827258616266768
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054242 (∑ j ∈ Finset.range (n + 1), f1 j) - A316399 (n + 1)

end

end A316313.P2365827258616266768

/-! ## A316313.P15772221233776145745

`A318286(A000040(n+1))-A316399(n+1)`
-/

namespace A316313.P15772221233776145745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318286 (A000040 (n + 1)).toNat - A316399 (n + 1)

end

end A316313.P15772221233776145745

/-! ## A316313.P14763390581613426393

`A275972(n+1)+A316402(n+1)-A316399(n+1)`
-/

namespace A316313.P14763390581613426393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275972 (n + 1) + (A316402 (n + 1) - A316399 (n + 1))

end

end A316313.P14763390581613426393

/-!
# A316314: Number of distinct nonempty-subset-averages of the integer partition with Heinz number n.

The programs for A316314, there is no canonical definition to state claims against.
-/

/-! ## A316314.P14902363579938562255

`A316398(n+1)-1`
-/

namespace A316314.P14902363579938562255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316398 (n + 1) - 1

end

end A316314.P14902363579938562255

/-! ## A316314.P16318005762613430577

`A023443(A316398(n+1))`
-/

namespace A316314.P16318005762613430577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A316398 (n + 1)).toNat

end

end A316314.P16318005762613430577

/-! ## A316314.P17753208155264167794

`A001478(n+1)+A316398(n+1)+n`
-/

namespace A316314.P17753208155264167794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001478 (n + 1) + (A316398 (n + 1) + (n : ℤ))

end

end A316314.P17753208155264167794

/-! ## A316314.P17176890291900085673

`A001222(A000079(A316398(n+1))/2)`
-/

namespace A316314.P17176890291900085673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway ((A000079 (A316398 (n + 1)).toNat : ℚ) / 2)).toNat

end

end A316314.P17176890291900085673

/-! ## A316314.P16323012781949139320

`A117010(n+1)%A316398(n+1)`
-/

namespace A316314.P16323012781949139320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A117010 (n + 1)) (A316398 (n + 1))

end

end A316314.P16323012781949139320

/-! ## A316314.P1068403394375164501

`A001222(A000010(2^A316398(n+1)))`
-/

namespace A316314.P1068403394375164501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A000010 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A316398 (n + 1) : ℤ))).toNat).toNat

end

end A316314.P1068403394375164501

/-! ## A316314.P10129394164133934777

`A083800(n+1)%A316398(n+1)`
-/

namespace A316314.P10129394164133934777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A083800 (n + 1)) (A316398 (n + 1))

end

end A316314.P10129394164133934777

/-! ## A316314.P12689749904648563761

`A070198(n)%A316398(n+1)`
-/

namespace A316314.P12689749904648563761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A070198 n) (A316398 (n + 1))

end

end A316314.P12689749904648563761

/-! ## A316314.P1384859956351072306

`A079782(n+1)%A316398(n+1)`
-/

namespace A316314.P1384859956351072306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A079782 (n + 1)) (A316398 (n + 1))

end

end A316314.P1384859956351072306

/-! ## A316314.P10747654509060576026

`A083685(n+1)%A316398(n+1)`
-/

namespace A316314.P10747654509060576026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A083685 (n + 1)) (A316398 (n + 1))

end

end A316314.P10747654509060576026

/-! ## A316314.P1342264534671966510

`A121934(n+1)%A316398(n+1)`
-/

namespace A316314.P1342264534671966510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A121934 (n + 1)) (A316398 (n + 1))

end

end A316314.P1342264534671966510

/-! ## A316314.P5079293798151674120

`A030494(n+1)%A316398(n+1)`
-/

namespace A316314.P5079293798151674120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A030494 (n + 1)) (A316398 (n + 1))

end

end A316314.P5079293798151674120

/-! ## A316314.P2647947914257267413

`A072828(n+1)%A316398(n+1)`
-/

namespace A316314.P2647947914257267413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A072828 (n + 1)) (A316398 (n + 1))

end

end A316314.P2647947914257267413

/-! ## A316314.P18398984368322074789

`A198277(n)%A316398(n+1)`
-/

namespace A316314.P18398984368322074789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A198277 n) (A316398 (n + 1))

end

end A316314.P18398984368322074789

/-!
# A316315: Numbers k such that the product of digits of k is a power of 12.

The programs for A316315, the canonical program `A316315.P14367970576419321925` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A316315 has offset 1).

The definition of A316315 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 249 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A316315.P14367970576419321925

`eq[1, A053832(A007954(n))]`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A316315

/-- `eq[1, A053832(A007954(n))]` -/
def P14367970576419321925.Spec : Prop :=
  ∀ n, (P14367970576419321925.a n : ℤ) = A316315 (n + 1)

theorem P14367970576419321925.correct : P14367970576419321925.Spec := by
  intro n
  simp only [A316315, Nat.add_sub_cancel]

end A316315

/-! ## A316315.P7687375269393679953

`eq[A054977(n), A190600(A007954(n))]`
-/

namespace A316315.P7687375269393679953
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190600 (A007954 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A316315.P7687375269393679953

namespace A316315

/-- `eq[A054977(n), A190600(A007954(n))]` -/
def P7687375269393679953.Spec : Prop :=
  ∀ n, (P7687375269393679953.a n : ℤ) = A316315 (n + 1)

end A316315

/-! ## A316315.P6888564282121343093

`eq[A053832(A051801(n)), A168046(n)]`
-/

namespace A316315.P6888564282121343093
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053832 (A051801 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168046 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A316315.P6888564282121343093

namespace A316315

/-- `eq[A053832(A051801(n)), A168046(n)]` -/
def P6888564282121343093.Spec : Prop :=
  ∀ n, (P6888564282121343093.a n : ℤ) = A316315 (n + 1)

end A316315

/-! ## A316315.P666898564732336798

`eq[A000045(((-1)^n)²), A190600(A007954(n))]`
-/

namespace A316315.P666898564732336798
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (((-1) ^ n) ^ 2).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190600 (A007954 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A316315.P666898564732336798

namespace A316315

/-- `eq[A000045(((-1)^n)²), A190600(A007954(n))]` -/
def P666898564732336798.Spec : Prop :=
  ∀ n, (P666898564732336798.a n : ℤ) = A316315 (n + 1)

end A316315

/-! ## A316315.P1380824176875701926

`eq[1, A007895(A007954(n)²)]`
-/

namespace A316315.P1380824176875701926
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007895 (A007954 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A316315.P1380824176875701926

namespace A316315

/-- `eq[1, A007895(A007954(n)²)]` -/
def P1380824176875701926.Spec : Prop :=
  ∀ n, (P1380824176875701926.a n : ℤ) = A316315 (n + 1)

end A316315

/-!
# A316316: Coordination sequence for tetravalent node in chamfered version of square grid.

The programs for A316316, the canonical program `A316316.P1054922528990642935` is in `Seq.B000.C043`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A316316 has offset 0).

The definition of A316316 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A316316.P8567243874877518614

`ogf((1+3x+5x^2+2x^3+5x^4+3x^5+x^6)/(1-x+x^2-2x^3+x^4-x^5+x^6))`
-/

namespace A316316.P8567243874877518614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 3, 5, 2, 5, 3, 1] [1, -1, 1, -2, 1, -1, 1] n

end

end A316316.P8567243874877518614

namespace A316316

/-- `ogf((1+3x+5x^2+2x^3+5x^4+3x^5+x^6)/(1-x+x^2-2x^3+x^4-x^5+x^6))` -/
def P8567243874877518614.Spec : Prop :=
  ∀ n, P8567243874877518614.a n = A316316 n

end A316316

/-! ## A316316.P1054922528990642935

`a(n-1)-a(n-2)+2*a(n-3)-a(n-4)+a(n-5)-a(n-6)` with `a(0)=1, a(1)=4, a(2)=8, a(3)=8, a(4)=12, a(5)=20, a(6)=20`

The canonical program, it is in `Seq.B000.C043`.
-/

namespace A316316

/-- `a(n-1)-a(n-2)+2*a(n-3)-a(n-4)+a(n-5)-a(n-6)` -/
def P1054922528990642935.Spec : Prop :=
  ∀ n, P1054922528990642935.a n = A316316 n

theorem P1054922528990642935.correct : P1054922528990642935.Spec := by
  intro n
  simp only [A316316]

end A316316

/-! ## A316316.P13700770219460718716

`A008574(A219529(n)-A301293(n))`
-/

namespace A316316.P13700770219460718716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 (A219529 n - A301293 n).toNat

end

end A316316.P13700770219460718716

namespace A316316

/-- `A008574(A219529(n)-A301293(n))` -/
def P13700770219460718716.Spec : Prop :=
  ∀ n, P13700770219460718716.a n = A316316 n

end A316316

/-! ## A316316.P8563131407433972981

`A008574(A047229(n+1)-A004396(n))`
-/

namespace A316316.P8563131407433972981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 (A047229 (n + 1) - A004396 n).toNat

end

end A316316.P8563131407433972981

namespace A316316

/-- `A008574(A047229(n+1)-A004396(n))` -/
def P8563131407433972981.Spec : Prop :=
  ∀ n, P8563131407433972981.a n = A316316 n

end A316316

/-! ## A316316.P4544059828499459376

`A008574(A004525(n)+n-A004396(n))`
-/

namespace A316316.P4544059828499459376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 (A004525 n + ((n : ℤ) - A004396 n)).toNat

end

end A316316.P4544059828499459376

namespace A316316

/-- `A008574(A004525(n)+n-A004396(n))` -/
def P4544059828499459376.Spec : Prop :=
  ∀ n, P4544059828499459376.a n = A316316 n

end A316316

/-! ## A316316.P5992125028886410896

`A008574(n-(A004396(n)-A004525(n)))`
-/

namespace A316316.P5992125028886410896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 ((n : ℤ) - (A004396 n - A004525 n)).toNat

end

end A316316.P5992125028886410896

namespace A316316

/-- `A008574(n-(A004396(n)-A004525(n)))` -/
def P5992125028886410896.Spec : Prop :=
  ∀ n, P5992125028886410896.a n = A316316 n

end A316316

/-! ## A316316.P15966063102187158427

`A008574(A004396(2*n)-A004524(n+1))`
-/

namespace A316316.P15966063102187158427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 (A004396 (2 * n) - A004524 (n + 1)).toNat

end

end A316316.P15966063102187158427

namespace A316316

/-- `A008574(A004396(2*n)-A004524(n+1))` -/
def P15966063102187158427.Spec : Prop :=
  ∀ n, P15966063102187158427.a n = A316316 n

end A316316

/-! ## A316316.P10440389835125216345

`A008574((5*n)%A301672(n))`
-/

namespace A316316.P10440389835125216345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 (Int.tmod (5 * n : ℤ) (A301672 n)).toNat

end

end A316316.P10440389835125216345

namespace A316316

/-- `A008574((5*n)%A301672(n))` -/
def P10440389835125216345.Spec : Prop :=
  ∀ n, P10440389835125216345.a n = A316316 n

end A316316

/-! ## A316316.P1040773260705282566

`A004277(A008592(n)%A301672(n))`
-/

namespace A316316.P1040773260705282566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (Int.tmod (A008592 n) (A301672 n)).toNat

end

end A316316.P1040773260705282566

namespace A316316

/-- `A004277(A008592(n)%A301672(n))` -/
def P1040773260705282566.Spec : Prop :=
  ∀ n, P1040773260705282566.a n = A316316 n

end A316316

/-! ## A316316.P4620967172977492308

`A008574(A008574(n)+n-A301672(n))`
-/

namespace A316316.P4620967172977492308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 (A008574 n + ((n : ℤ) - A301672 n)).toNat

end

end A316316.P4620967172977492308

namespace A316316

/-- `A008574(A008574(n)+n-A301672(n))` -/
def P4620967172977492308.Spec : Prop :=
  ∀ n, P4620967172977492308.a n = A316316 n

end A316316

/-! ## A316316.P7803602313122816715

`A008574(n-(A301672(n)-A008574(n)))`
-/

namespace A316316.P7803602313122816715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 ((n : ℤ) - (A301672 n - A008574 n)).toNat

end

end A316316.P7803602313122816715

namespace A316316

/-- `A008574(n-(A301672(n)-A008574(n)))` -/
def P7803602313122816715.Spec : Prop :=
  ∀ n, P7803602313122816715.a n = A316316 n

end A316316

/-! ## A316316.P14722691897928452844

`A008574(A315688(n)-A313680(n))`
-/

namespace A316316.P14722691897928452844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 (A315688 n - A313680 n).toNat

end

end A316316.P14722691897928452844

namespace A316316

/-- `A008574(A315688(n)-A313680(n))` -/
def P14722691897928452844.Spec : Prop :=
  ∀ n, P14722691897928452844.a n = A316316 n

end A316316

/-! ## A316316.P5725690503330740951

`A008574(A313575(n)-A008574(n))`
-/

namespace A316316.P5725690503330740951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 (A313575 n - A008574 n).toNat

end

end A316316.P5725690503330740951

namespace A316316

/-- `A008574(A313575(n)-A008574(n))` -/
def P5725690503330740951.Spec : Prop :=
  ∀ n, P5725690503330740951.a n = A316316 n

end A316316

/-! ## A316316.P2665291674843270443

`2*A313416(n)-A008458(n)`
-/

namespace A316316.P2665291674843270443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A313416 n - A008458 n

end

end A316316.P2665291674843270443

namespace A316316

/-- `2*A313416(n)-A008458(n)` -/
def P2665291674843270443.Spec : Prop :=
  ∀ n, P2665291674843270443.a n = A316316 n

end A316316

/-! ## A316316.P1545434348889957527

`A008574(A008458(n)-A313862(n))`
-/

namespace A316316.P1545434348889957527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 (A008458 n - A313862 n).toNat

end

end A316316.P1545434348889957527

namespace A316316

/-- `A008574(A008458(n)-A313862(n))` -/
def P1545434348889957527.Spec : Prop :=
  ∀ n, P1545434348889957527.a n = A316316 n

end A316316

/-! ## A316316.P17545063606409678112

`A008574(A219529(n)+n-A301710(n))`
-/

namespace A316316.P17545063606409678112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 (A219529 n + ((n : ℤ) - A301710 n)).toNat

end

end A316316.P17545063606409678112

namespace A316316

/-- `A008574(A219529(n)+n-A301710(n))` -/
def P17545063606409678112.Spec : Prop :=
  ∀ n, P17545063606409678112.a n = A316316 n

end A316316

/-! ## A316316.P14199772922640321357

`A008574(n-(A301710(n)-A219529(n)))`
-/

namespace A316316.P14199772922640321357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 ((n : ℤ) - (A301710 n - A219529 n)).toNat

end

end A316316.P14199772922640321357

namespace A316316

/-- `A008574(n-(A301710(n)-A219529(n)))` -/
def P14199772922640321357.Spec : Prop :=
  ∀ n, P14199772922640321357.a n = A316316 n

end A316316

/-! ## A316316.P5907680994325124336

`A008574(A314247(n)-A313237(n))`
-/

namespace A316316.P5907680994325124336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 (A314247 n - A313237 n).toNat

end

end A316316.P5907680994325124336

namespace A316316

/-- `A008574(A314247(n)-A313237(n))` -/
def P5907680994325124336.Spec : Prop :=
  ∀ n, P5907680994325124336.a n = A316316 n

end A316316

/-! ## A316316.P11521636733691504336

`A005843(A313416(n))-(A008706(n)+n)`
-/

namespace A316316.P11521636733691504336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A313416 n).toNat - (A008706 n + (n : ℤ))

end

end A316316.P11521636733691504336

namespace A316316

/-- `A005843(A313416(n))-(A008706(n)+n)` -/
def P11521636733691504336.Spec : Prop :=
  ∀ n, P11521636733691504336.a n = A316316 n

end A316316

/-! ## A316316.P9477104660647428462

`A008574(A112689(5*n+4)-1)`
-/

namespace A316316.P9477104660647428462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 (A112689 (5 * n + 4) - 1).toNat

end

end A316316.P9477104660647428462

namespace A316316

/-- `A008574(A112689(5*n+4)-1)` -/
def P9477104660647428462.Spec : Prop :=
  ∀ n, P9477104660647428462.a n = A316316 n

end A316316

/-!
# A316317: Coordination sequence for trivalent node in chamfered version of square grid.

The programs for A316317, the canonical program `A316317.P4616381369030779267` is in `Seq.B001.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A316317 has offset 0).

The definition of A316317 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A316317.P5256742624209471345

`A298784(n)-A101455(n)`
-/

namespace A316317.P5256742624209471345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298784 n - A101455 n

end

end A316317.P5256742624209471345

namespace A316317

/-- `A298784(n)-A101455(n)` -/
def P5256742624209471345.Spec : Prop :=
  ∀ n, P5256742624209471345.a n = A316317 n

end A316317

/-! ## A316317.P4616381369030779267

`A301694(n)-A047599(n+1)`

The canonical program, it is in `Seq.B001.C012`.
-/

namespace A316317

/-- `A301694(n)-A047599(n+1)` -/
def P4616381369030779267.Spec : Prop :=
  ∀ n, P4616381369030779267.a n = A316317 n

theorem P4616381369030779267.correct : P4616381369030779267.Spec := by
  intro n
  simp only [A316317]

end A316317

/-! ## A316317.P5369164898244876113

`A201629(n)+A298784(n)-n`
-/

namespace A316317.P5369164898244876113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201629 n + (A298784 n - (n : ℤ))

end

end A316317.P5369164898244876113

namespace A316317

/-- `A201629(n)+A298784(n)-n` -/
def P5369164898244876113.Spec : Prop :=
  ∀ n, P5369164898244876113.a n = A316317 n

end A316317

/-! ## A316317.P11000394260740223963

`A298784(n)+A056594(n+1)`
-/

namespace A316317.P11000394260740223963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298784 n + A056594 (n + 1)

end

end A316317.P11000394260740223963

namespace A316317

/-- `A298784(n)+A056594(n+1)` -/
def P11000394260740223963.Spec : Prop :=
  ∀ n, P11000394260740223963.a n = A316317 n

end A316317

/-! ## A316317.P16981631853534537923

`A008706(n)-A004524(A316316(n))`
-/

namespace A316317.P16981631853534537923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008706 n - A004524 (A316316 n).toNat

end

end A316317.P16981631853534537923

namespace A316317

/-- `A008706(n)-A004524(A316316(n))` -/
def P16981631853534537923.Spec : Prop :=
  ∀ n, P16981631853534537923.a n = A316317 n

end A316317

/-! ## A316317.P3281506138383385359

`2*A301672(n)-A008706(n)`
-/

namespace A316317.P3281506138383385359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A301672 n - A008706 n

end

end A316317.P3281506138383385359

namespace A316317

/-- `2*A301672(n)-A008706(n)` -/
def P3281506138383385359.Spec : Prop :=
  ∀ n, P3281506138383385359.a n = A316317 n

end A316317

/-! ## A316317.P6063628283968307216

`A301293(n)+A301672(n)-A219529(n)`
-/

namespace A316317.P6063628283968307216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301293 n + (A301672 n - A219529 n)

end

end A316317.P6063628283968307216

namespace A316317

/-- `A301293(n)+A301672(n)-A219529(n)` -/
def P6063628283968307216.Spec : Prop :=
  ∀ n, P6063628283968307216.a n = A316317 n

end A316317

/-! ## A316317.P5948912965011732893

`A008706(n)-A005843(A008706(n)-A301672(n))`
-/

namespace A316317.P5948912965011732893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008706 n - A005843 (A008706 n - A301672 n).toNat

end

end A316317.P5948912965011732893

namespace A316317

/-- `A008706(n)-A005843(A008706(n)-A301672(n))` -/
def P5948912965011732893.Spec : Prop :=
  ∀ n, P5948912965011732893.a n = A316317 n

end A316317

/-! ## A316317.P1337924144444599449

`A313193(n)-A042965(n+1)`
-/

namespace A316317.P1337924144444599449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313193 n - A042965 (n + 1)

end

end A316317.P1337924144444599449

namespace A316317

/-- `A313193(n)-A042965(n+1)` -/
def P1337924144444599449.Spec : Prop :=
  ∀ n, P1337924144444599449.a n = A316317 n

end A316317

/-! ## A316317.P6387823513760630403

`A008576(n)+A313193(n)-A008574(n)`
-/

namespace A316317.P6387823513760630403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008576 n + (A313193 n - A008574 n)

end

end A316317.P6387823513760630403

namespace A316317

/-- `A008576(n)+A313193(n)-A008574(n)` -/
def P6387823513760630403.Spec : Prop :=
  ∀ n, P6387823513760630403.a n = A316317 n

end A316317

/-! ## A316317.P12492492581737353229

`2*A008574(n)-A313416(n)`
-/

namespace A316317.P12492492581737353229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008574 n - A313416 n

end

end A316317.P12492492581737353229

namespace A316317

/-- `2*A008574(n)-A313416(n)` -/
def P12492492581737353229.Spec : Prop :=
  ∀ n, P12492492581737353229.a n = A316317 n

end A316317

/-! ## A316317.P7316153500416092174

`A005843(A008706(n)-n)-A313416(n)`
-/

namespace A316317.P7316153500416092174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008706 n - (n : ℤ)).toNat - A313416 n

end

end A316317.P7316153500416092174

namespace A316317

/-- `A005843(A008706(n)-n)-A313416(n)` -/
def P7316153500416092174.Spec : Prop :=
  ∀ n, P7316153500416092174.a n = A316317 n

end A316317

/-! ## A316317.P14498483380379000108

`A005843(A301672(n))-A008706(n)`
-/

namespace A316317.P14498483380379000108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A301672 n).toNat - A008706 n

end

end A316317.P14498483380379000108

namespace A316317

/-- `A005843(A301672(n))-A008706(n)` -/
def P14498483380379000108.Spec : Prop :=
  ∀ n, P14498483380379000108.a n = A316317 n

end A316317

/-! ## A316317.P8683538086430949813

`A310498(n)-A008854(n+1)`
-/

namespace A316317.P8683538086430949813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310498 n - A008854 (n + 1)

end

end A316317.P8683538086430949813

namespace A316317

/-- `A310498(n)-A008854(n+1)` -/
def P8683538086430949813.Spec : Prop :=
  ∀ n, P8683538086430949813.a n = A316317 n

end A316317

/-! ## A316317.P7854167667382970592

`A301298(A301293(n))%(A301672(n)+A298024(n))`
-/

namespace A316317.P7854167667382970592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A301298 (A301293 n).toNat) (A301672 n + A298024 n)

end

end A316317.P7854167667382970592

namespace A316317

/-- `A301298(A301293(n))%(A301672(n)+A298024(n))` -/
def P7854167667382970592.Spec : Prop :=
  ∀ n, P7854167667382970592.a n = A316317 n

end A316317

/-! ## A316317.P4054771627052577087

`A311233(2*n)-5*n`
-/

namespace A316317.P4054771627052577087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311233 (2 * n) - (5 * n : ℤ)

end

end A316317.P4054771627052577087

namespace A316317

/-- `A311233(2*n)-5*n` -/
def P4054771627052577087.Spec : Prop :=
  ∀ n, P4054771627052577087.a n = A316317 n

end A316317

/-!
# A316319: Coordination sequence for a trivalent node in a chamfered version of the 3^6 triangular tiling of the plane.

The programs for A316319, the canonical program `A316319.P13183643772685083254` is in `Seq.B000.C043`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A316319 has offset 0).

The definition of A316319 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A316319.P13183643772685083254

`ogf((1+x+2x^2+3x^3+4x^4+2x^5-x^7)/(1-2x+x^2))`

The canonical program, it is in `Seq.B000.C043`.
-/

namespace A316319

/-- `ogf((1+x+2x^2+3x^3+4x^4+2x^5-x^7)/(1-2x+x^2))` -/
def P13183643772685083254.Spec : Prop :=
  ∀ n, P13183643772685083254.a n = A316319 n

theorem P13183643772685083254.correct : P13183643772685083254.Spec := by
  intro n
  simp only [A316319]

end A316319

/-!
# A316320: Coordination sequence for a hexavalent node in a chamfered version of the 3^6 triangular tiling of the plane.

The programs for A316320, the canonical program `A316320.P10287880958844604666` is in `Seq.B000.C043`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A316320 has offset 0).

The definition of A316320 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A316320.P10287880958844604666

`ogf((1+4x+4x^2+3x^3)/(1-2x+x^2))`

The canonical program, it is in `Seq.B000.C043`.
-/

namespace A316320

/-- `ogf((1+4x+4x^2+3x^3)/(1-2x+x^2))` -/
def P10287880958844604666.Spec : Prop :=
  ∀ n, P10287880958844604666.a n = A316320 n

theorem P10287880958844604666.correct : P10287880958844604666.Spec := by
  intro n
  simp only [A316320]

end A316320

/-!
# A316321: Number of "nonlinear" trees on n nodes.

The programs for A316321, there is no canonical definition to state claims against.
-/

/-! ## A316321.P3246568519681610181

`∑[A174145(n)]-ceil(2^(n-1))`
-/

namespace A316321.P3246568519681610181
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174145 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉

end

end A316321.P3246568519681610181

/-! ## A316321.P13998535837833090185

`floor(A000081(n+1)-2^(n-1))`
-/

namespace A316321.P13998535837833090185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000081 (n + 1) : ℚ) - (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋

end

end A316321.P13998535837833090185

/-! ## A316321.P7431175323802258821

`A038001(Δ[n²])-ceil(2^(n-1))`
-/

namespace A316321.P7431175323802258821
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038001 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉

end

end A316321.P7431175323802258821

/-! ## A316321.P17287795515879311849

`floor(A339067(∑[n]+1)-2^(n-1))`
-/

namespace A316321.P17287795515879311849
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A339067 (∑ j ∈ Finset.range (n + 1), f1 j + 1) : ℚ) - (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋

end

end A316321.P17287795515879311849

/-! ## A316321.P5636919837966259405

`A000081(C(2, C(3, n²))+n)-ceil(2^(n-1))`
-/

namespace A316321.P5636919837966259405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000081 (Nat.choose 2 (Nat.choose 3 (n ^ 2)) + n) - ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉

end

end A316321.P5636919837966259405

/-!
# A316322: Sum of piles of first n primes: a(n) = Sum(prime(i)*(2*i-1): 1<=i<=n).

The programs for A316322, the canonical program `A316322.P16038970231065936341` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A316322 has offset 1).

The definition of A316322 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A062020, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A316322.P16038970231065936341

`A167214(n+1)+A062020(n+1)`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A316322

/-- `A167214(n+1)+A062020(n+1)` -/
def P16038970231065936341.Spec : Prop :=
  ∀ n, P16038970231065936341.a n = A316322 (n + 1)

theorem P16038970231065936341.correct : P16038970231065936341.Spec := by
  intro n
  simp only [A316322, Nat.add_sub_cancel]

end A316322

/-! ## A316322.P3922503582286730704

`2*A014285(n+1)-A007504(n+1)`
-/

namespace A316322.P3922503582286730704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A014285 (n + 1) - A007504 (n + 1)

end

end A316322.P3922503582286730704

namespace A316322

/-- `2*A014285(n+1)-A007504(n+1)` -/
def P3922503582286730704.Spec : Prop :=
  ∀ n, P3922503582286730704.a n = A316322 (n + 1)

theorem P3922503582286730704.correct : P3922503582286730704.Spec := by
  intro n
  simp only [A316322, Nat.add_sub_cancel, A316322.P3922503582286730704.a, A316322.P16038970231065936341.a, A007504, A007504.P14310834286015847203.a, A014285, A014285.P2422315619309490149.f1, A014285.P2422315619309490149.a, A062020, A062020.P11042138404562219295.a, A167214, A167214.P9697442408688225616.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A014284, A014284.P18183547548072881472.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A316322

/-! ## A316322.P3513115938313874816

`2*A167214(n+1)-A023662(n+1)`
-/

namespace A316322.P3513115938313874816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A167214 (n + 1) - A023662 (n + 1)

end

end A316322.P3513115938313874816

namespace A316322

/-- `2*A167214(n+1)-A023662(n+1)` -/
def P3513115938313874816.Spec : Prop :=
  ∀ n, P3513115938313874816.a n = A316322 (n + 1)

theorem P3513115938313874816.correct : P3513115938313874816.Spec := by
  intro n
  simp only [A316322, Nat.add_sub_cancel, A316322.P3513115938313874816.a, A316322.P16038970231065936341.a, A023662, A023662.P10648617195950893557.a, A062020, A062020.P11042138404562219295.a, A167214, A167214.P9697442408688225616.a, A007504, A007504.P14310834286015847203.a, A014285, A014285.P2422315619309490149.f1, A014285.P2422315619309490149.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A014284, A014284.P18183547548072881472.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A316322

/-! ## A316322.P4024831050993974777

`A083215(n+1)-1`
-/

namespace A316322.P4024831050993974777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083215 (n + 1) - 1

end

end A316322.P4024831050993974777

namespace A316322

/-- `A083215(n+1)-1` -/
def P4024831050993974777.Spec : Prop :=
  ∀ n, P4024831050993974777.a n = A316322 (n + 1)

end A316322

/-! ## A316322.P14000735608465687542

`∑[A000040(n+1)*Δ[n²]]`
-/

namespace A316322.P14000735608465687542
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * ((f2 (n + 1) : ℤ) - (f2 n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A316322.P14000735608465687542

namespace A316322

/-- `∑[A000040(n+1)*Δ[n²]]` -/
def P14000735608465687542.Spec : Prop :=
  ∀ n, P14000735608465687542.a n = A316322 (n + 1)

end A316322

/-! ## A316322.P3594439503087641737

`∑[(2*n+1)*abs(Δ[A022837(n)])]`
-/

namespace A316322.P3594439503087641737
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022837 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) * |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A316322.P3594439503087641737

namespace A316322

/-- `∑[(2*n+1)*abs(Δ[A022837(n)])]` -/
def P3594439503087641737.Spec : Prop :=
  ∀ n, P3594439503087641737.a n = A316322 (n + 1)

end A316322

/-! ## A316322.P14727819724406691871

`∑[(2*n+1)*abs(Δ[A117128(n)])]`
-/

namespace A316322.P14727819724406691871
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117128 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) * |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A316322.P14727819724406691871

namespace A316322

/-- `∑[(2*n+1)*abs(Δ[A117128(n)])]` -/
def P14727819724406691871.Spec : Prop :=
  ∀ n, P14727819724406691871.a n = A316322 (n + 1)

end A316322

/-! ## A316322.P2634559571766119727

`∑[(2*n+1)*A000040(C(n+1, n))]`
-/

namespace A316322.P2634559571766119727
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) * A000040 (Nat.choose (n + 1) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A316322.P2634559571766119727

namespace A316322

/-- `∑[(2*n+1)*A000040(C(n+1, n))]` -/
def P2634559571766119727.Spec : Prop :=
  ∀ n, P2634559571766119727.a n = A316322 (n + 1)

end A316322

/-! ## A316322.P2003839371734563885

`∑[(2*n+1)*A000040(2*n+1-n)]`
-/

namespace A316322.P2003839371734563885
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) * A000040 ((2 * n : ℤ) + (1 - (n : ℤ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A316322.P2003839371734563885

namespace A316322

/-- `∑[(2*n+1)*A000040(2*n+1-n)]` -/
def P2003839371734563885.Spec : Prop :=
  ∀ n, P2003839371734563885.a n = A316322 (n + 1)

end A316322

/-! ## A316322.P8481341943957331257

`a(n-1)+(2*n+1)*A000040(2*n-(n-1))` with `a(0)=2`
-/

namespace A316322.P8481341943957331257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  a (n - 1) + (2 * n + 1 : ℤ) * A000040 ((2 * n : ℤ) - ((n : ℤ) - 1)).toNat

end

end A316322.P8481341943957331257

namespace A316322

/-- `a(n-1)+(2*n+1)*A000040(2*n-(n-1))` -/
def P8481341943957331257.Spec : Prop :=
  ∀ n, P8481341943957331257.a n = A316322 (n + 1)

end A316322

/-! ## A316322.P8874182683604164602

`∑[Δ[A007504(n)]*A005408(n)]`
-/

namespace A316322.P8874182683604164602
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n) * A005408 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A316322.P8874182683604164602

namespace A316322

/-- `∑[Δ[A007504(n)]*A005408(n)]` -/
def P8874182683604164602.Spec : Prop :=
  ∀ n, P8874182683604164602.a n = A316322 (n + 1)

end A316322

/-! ## A316322.P13801390157213152571

`∑[A000040(n+1)/2*A016825(n)]`
-/

namespace A316322.P13801390157213152571
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000040 (n + 1) : ℚ) / 2 * (A016825 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A316322.P13801390157213152571

namespace A316322

/-- `∑[A000040(n+1)/2*A016825(n)]` -/
def P13801390157213152571.Spec : Prop :=
  ∀ n, P13801390157213152571.a n = (A316322 (n + 1) : ℚ)

end A316322

/-! ## A316322.P13785323743130345813

`A023662(n+1)+2*A062020(n+1)`
-/

namespace A316322.P13785323743130345813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023662 (n + 1) + 2 * A062020 (n + 1)

end

end A316322.P13785323743130345813

namespace A316322

/-- `A023662(n+1)+2*A062020(n+1)` -/
def P13785323743130345813.Spec : Prop :=
  ∀ n, P13785323743130345813.a n = A316322 (n + 1)

theorem P13785323743130345813.correct : P13785323743130345813.Spec := by
  intro n
  simp only [A316322, Nat.add_sub_cancel, A316322.P13785323743130345813.a, A316322.P16038970231065936341.a, A023662, A023662.P10648617195950893557.a, A062020, A062020.P11042138404562219295.a, A167214, A167214.P9697442408688225616.a, A007504, A007504.P14310834286015847203.a, A014285, A014285.P2422315619309490149.f1, A014285.P2422315619309490149.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A014284, A014284.P18183547548072881472.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A316322

/-! ## A316322.P15250748794303938214

`2*A014285(n+1)-∑[A000040(n+1)]`
-/

namespace A316322.P15250748794303938214
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A014285 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A316322.P15250748794303938214

namespace A316322

/-- `2*A014285(n+1)-∑[A000040(n+1)]` -/
def P15250748794303938214.Spec : Prop :=
  ∀ n, P15250748794303938214.a n = A316322 (n + 1)

end A316322

/-! ## A316322.P981147350942547982

`∑[2*A033286(n+1)-A000040(n+1)]`
-/

namespace A316322.P981147350942547982
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A033286 (n + 1) - A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A316322.P981147350942547982

namespace A316322

/-- `∑[2*A033286(n+1)-A000040(n+1)]` -/
def P981147350942547982.Spec : Prop :=
  ∀ n, P981147350942547982.a n = A316322 (n + 1)

end A316322

/-! ## A316322.P10173685741650310950

`∑[A000040(n+1)+n*A100484(n+1)]`
-/

namespace A316322.P10173685741650310950
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) + (n : ℤ) * A100484 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A316322.P10173685741650310950

namespace A316322

/-- `∑[A000040(n+1)+n*A100484(n+1)]` -/
def P10173685741650310950.Spec : Prop :=
  ∀ n, P10173685741650310950.a n = A316322 (n + 1)

end A316322

/-! ## A316322.P17292278323506204671

`∑[(2*n+1)*A008578(n+2)]`
-/

namespace A316322.P17292278323506204671
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) * A008578 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A316322.P17292278323506204671

namespace A316322

/-- `∑[(2*n+1)*A008578(n+2)]` -/
def P17292278323506204671.Spec : Prop :=
  ∀ n, P17292278323506204671.a n = A316322 (n + 1)

end A316322

/-! ## A316322.P3547619230281491342

`∑[(2*n+1)*A158611(n+3)]`
-/

namespace A316322.P3547619230281491342
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) * A158611 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A316322.P3547619230281491342

namespace A316322

/-- `∑[(2*n+1)*A158611(n+3)]` -/
def P3547619230281491342.Spec : Prop :=
  ∀ n, P3547619230281491342.a n = A316322 (n + 1)

end A316322

/-! ## A316322.P3705714689248050321

`∑[(2*n+1)*record[A006530(n+2)]]`
-/

namespace A316322.P3705714689248050321
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) * f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A316322.P3705714689248050321

namespace A316322

/-- `∑[(2*n+1)*record[A006530(n+2)]]` -/
def P3705714689248050321.Spec : Prop :=
  ∀ n, P3705714689248050321.a n = A316322 (n + 1)

end A316322

/-! ## A316322.P11780949773515518574

`∑[(2*n+1)*record[A020639(n+2)]]`
-/

namespace A316322.P11780949773515518574
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) * f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A316322.P11780949773515518574

namespace A316322

/-- `∑[(2*n+1)*record[A020639(n+2)]]` -/
def P11780949773515518574.Spec : Prop :=
  ∀ n, P11780949773515518574.a n = A316322 (n + 1)

end A316322

/-!
# A316323: The square array in A305615 read by antidiagonals.

The programs for A316323, there is no canonical definition to state claims against.
-/

/-! ## A316323.P10509949631827876581

`A269780(n+1)-1`
-/

namespace A316323.P10509949631827876581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269780 (n + 1) - 1

end

end A316323.P10509949631827876581

/-! ## A316323.P12167091761704317226

`A023443(A269780(n+1))`
-/

namespace A316323.P12167091761704317226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A269780 (n + 1)).toNat

end

end A316323.P12167091761704317226

/-! ## A316323.P4485120571363454926

`A023444(A269780(n+1)+1)`
-/

namespace A316323.P4485120571363454926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 (A269780 (n + 1) + 1).toNat

end

end A316323.P4485120571363454926

/-! ## A316323.P11349900349477907083

`A289207(A269780(n+1)+1)`
-/

namespace A316323.P11349900349477907083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289207 (A269780 (n + 1) + 1).toNat

end

end A316323.P11349900349477907083

/-! ## A316323.P330494609668140717

`A023445(A269780(n+1)+2)`
-/

namespace A316323.P330494609668140717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023445 (A269780 (n + 1) + 2).toNat

end

end A316323.P330494609668140717

/-! ## A316323.P15203798373129432591

`A023446(A269780(n+1)+3)`
-/

namespace A316323.P15203798373129432591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023446 (A269780 (n + 1) + 3).toNat

end

end A316323.P15203798373129432591

/-! ## A316323.P8957482087558944834

`A023448(A269780(n+1)+5)`
-/

namespace A316323.P8957482087558944834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023448 (A269780 (n + 1) + 5).toNat

end

end A316323.P8957482087558944834

/-! ## A316323.P8187802132479158570

`A065423(2*A269780(n+1))`
-/

namespace A316323.P8187802132479158570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065423 (2 * A269780 (n + 1)).toNat

end

end A316323.P8187802132479158570

/-! ## A316323.P10544541631954175561

`A140106(2*A269780(n+1))`
-/

namespace A316323.P10544541631954175561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140106 (2 * A269780 (n + 1)).toNat

end

end A316323.P10544541631954175561

/-! ## A316323.P15593313304563237555

`abs(A269780(n+1)+A008683(A062584(n)))`
-/

namespace A316323.P15593313304563237555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A269780 (n + 1) + A008683 (A062584 n).toNat|

end

end A316323.P15593313304563237555

/-!
# A316324: Indices of 1's in A305389.

The programs for A316324, there is no canonical definition to state claims against.
-/

/-! ## A316324.P9842560134883420153

`A287114(n+1)-1+n`
-/

namespace A316324.P9842560134883420153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287114 (n + 1) - 1 + (n : ℤ)

end

end A316324.P9842560134883420153

/-! ## A316324.P13038902668498297002

`a(n-1)+5-A287174(n+1)` with `a(0)=0`
-/

namespace A316324.P13038902668498297002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + 5 - A287174 (n + 1)

end

end A316324.P13038902668498297002

/-! ## A316324.P267238043402508709

`∑[A316327(n)]-A316327(n)`
-/

namespace A316324.P267238043402508709
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316327 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A316327 n

end

end A316324.P267238043402508709

/-! ## A316324.P8217478713499817737

`A287114(n+1)+A023443(n)`
-/

namespace A316324.P8217478713499817737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287114 (n + 1) + A023443 n

end

end A316324.P8217478713499817737

/-! ## A316324.P18312786487123352852

`A287114(n+1)-A024000(n)`
-/

namespace A316324.P18312786487123352852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287114 (n + 1) - A024000 n

end

end A316324.P18312786487123352852

/-! ## A316324.P15190746305856726344

`A287177(n+1)-A286999(n+1)`
-/

namespace A316324.P15190746305856726344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287177 (n + 1) - A286999 (n + 1)

end

end A316324.P15190746305856726344

/-! ## A316324.P1614764007249259515

`eq[1, A305389(n)]`
-/

namespace A316324.P1614764007249259515
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305389 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A316324.P1614764007249259515

/-! ## A316324.P11718046113637029183

`record[(n+1)*(2-A305389(n+1))]`
-/

namespace A316324.P11718046113637029183
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (2 - A305389 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A316324.P11718046113637029183

/-! ## A316324.P18231639884124530345

`eq[1, A287112(n+1)]+n`
-/

namespace A316324.P18231639884124530345
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287112 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + n

end

end A316324.P18231639884124530345

/-!
# A316325: Indices of 2's in A305389.

The programs for A316325, there is no canonical definition to state claims against.
-/

/-! ## A316325.P8608454272256514672

`A107791(1+n)-1`
-/

namespace A316325.P8608454272256514672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107791 (1 + n) - 1

end

end A316325.P8608454272256514672

/-! ## A316325.P12922328711938534664

`∑[A107795(abs(1-n))]-2`
-/

namespace A316325.P12922328711938534664
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107795 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 2

end

end A316325.P12922328711938534664

/-! ## A316325.P13301042361063012321

`A107795(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A316325.P13301042361063012321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A107795 (n - 1) + a (n - 1)

end

end A316325.P13301042361063012321

/-! ## A316325.P2764485939712953983

`∑[A107795(A004273(n)-n)-A000007(n)]`
-/

namespace A316325.P2764485939712953983
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107795 (A004273 n - (n : ℤ)).toNat - A000007 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A316325.P2764485939712953983

/-! ## A316325.P8034547243610276490

`∑[A107795(A004273(n)-n)^A057428(n)²]`
-/

namespace A316325.P8034547243610276490
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A107795 (A004273 n - (n : ℤ)).toNat : ℚ) ^ (A057428 n ^ 2 : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A316325.P8034547243610276490

/-! ## A316325.P5232096056328695402

`eq[2, A305389(n)]`
-/

namespace A316325.P5232096056328695402
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305389 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A316325.P5232096056328695402

/-! ## A316325.P13548946431295276988

`record[2-C(A305389(n+1), 2)+n]`
-/

namespace A316325.P13548946431295276988
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (Nat.choose (A305389 (n + 1)).toNat 2 : ℤ) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A316325.P13548946431295276988

/-! ## A316325.P16816441932581085426

`A020725(∑[A107795(floor(n²/(n+1)))])-2`
-/

namespace A316325.P16816441932581085426
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107795 ⌊(n ^ 2 : ℚ) / (n + 1 : ℚ)⌋.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (∑ j ∈ Finset.range (n + 1), f1 j).toNat - 2

end

end A316325.P16816441932581085426

/-! ## A316325.P14045483754795948598

`A023443(A107791(n+1))`
-/

namespace A316325.P14045483754795948598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A107791 (n + 1)).toNat

end

end A316325.P14045483754795948598

/-! ## A316325.P9873434090560232532

`lt[A073272(A305389(n)+A024155(2*n+5)+1), 1]`
-/

namespace A316325.P9873434090560232532
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073272 (A305389 n + A024155 (2 * n + 5) + 1).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A316325.P9873434090560232532

/-!
# A316326: Indices of 3's in A305389.

The programs for A316326, there is no canonical definition to state claims against.
-/

/-! ## A316326.P13341525140422819487

`lt[2, A305389(n)]`
-/

namespace A316326.P13341525140422819487
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305389 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A316326.P13341525140422819487

/-! ## A316326.P14068749840335302216

`A107792(n+1)-1`
-/

namespace A316326.P14068749840335302216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107792 (n + 1) - 1

end

end A316326.P14068749840335302216

/-! ## A316326.P13793743670964839416

`eq[3, A305389(n+1)]+1`
-/

namespace A316326.P13793743670964839416
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305389 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A316326.P13793743670964839416

/-! ## A316326.P10406794172066183270

`A287176(n+1)-(n+1)`
-/

namespace A316326.P10406794172066183270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287176 (n + 1) - (n + 1 : ℤ)

end

end A316326.P10406794172066183270

/-! ## A316326.P15558717755830506361

`∑[A107796(abs(1-n))]-1`
-/

namespace A316326.P15558717755830506361
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107796 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A316326.P15558717755830506361

/-! ## A316326.P5771612960902646685

`A107790(n+1)-Δ[n²]`
-/

namespace A316326.P5771612960902646685
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107790 (n + 1) - ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A316326.P5771612960902646685

/-! ## A316326.P16512156738553043864

`∑[3-A286998(n+1)]-1`
-/

namespace A316326.P16512156738553043864
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - A286998 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A316326.P16512156738553043864

/-! ## A316326.P728800698588029368

`A107796(n-1)+a(n-1)` with `a(0)=2`
-/

namespace A316326.P728800698588029368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A107796 (n - 1) + a (n - 1)

end

end A316326.P728800698588029368

/-! ## A316326.P13275074938178689957

`A016789(n)-∑[A286998(n+1)]`
-/

namespace A316326.P13275074938178689957
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286998 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016789 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A316326.P13275074938178689957

/-! ## A316326.P7161834028923881809

`eq[3, A305389(n)]%(1-A016839(n))`
-/

namespace A316326.P7161834028923881809
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305389 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ) (1 - A016839 n)

end

end A316326.P7161834028923881809

/-! ## A316326.P9134588950392745447

`∑[xor(A157532(n+1), A286998(n+1))]`
-/

namespace A316326.P9134588950392745447
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A157532 (n + 1)) (A286998 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A316326.P9134588950392745447

/-! ## A316326.P13735447586056328137

`eq[1, A305390(n)]-2*n`
-/

namespace A316326.P13735447586056328137
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305390 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ) - (2 * n : ℤ)

end

end A316326.P13735447586056328137

/-! ## A316326.P13423332253281909067

`A287175(A287113(n+1)-1)-n`
-/

namespace A316326.P13423332253281909067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287175 (A287113 (n + 1) - 1).toNat - (n : ℤ)

end

end A316326.P13423332253281909067

/-! ## A316326.P15658318443937117406

`A023443(A107792(n+1))`
-/

namespace A316326.P15658318443937117406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A107792 (n + 1)).toNat

end

end A316326.P15658318443937117406

/-! ## A316326.P17162161807246748346

`eq[A113923(n), A305389(n)]`
-/

namespace A316326.P17162161807246748346
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113923 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305389 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A316326.P17162161807246748346

/-! ## A316326.P12724473872128851565

`eq[A157532(n+1), A305389(n)]`
-/

namespace A316326.P12724473872128851565
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157532 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305389 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A316326.P12724473872128851565

/-!
# A316327: First differences of indices of 1's in A305389.

The programs for A316327, there is no canonical definition to state claims against.
-/

/-! ## A316327.P16082079409651343989

`Δ[A316324(n+1)]`
-/

namespace A316327.P16082079409651343989
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316324 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A316327.P16082079409651343989

/-! ## A316327.P806722404984837512

`5-A287174(n+2)`
-/

namespace A316327.P806722404984837512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 - A287174 (n + 2)

end

end A316327.P806722404984837512

/-! ## A316327.P413992594941492147

`Δ[A287114(1+n)]+1`
-/

namespace A316327.P413992594941492147
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287114 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 1

end

end A316327.P413992594941492147

/-! ## A316327.P8082842246254320729

`A005185(Δ[A287177(n+1)])`
-/

namespace A316327.P8082842246254320729
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287177 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005185 (f1 (n + 1) - f1 n).toNat

end

end A316327.P8082842246254320729

/-! ## A316327.P2702275453911774742

`A316324(n+2)-A316324(n+1)`
-/

namespace A316327.P2702275453911774742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316324 (n + 2) - A316324 (n + 1)

end

end A316327.P2702275453911774742

/-! ## A316327.P9820962167606290488

`Δ[eq[1, A305389(n)]]`
-/

namespace A316327.P9820962167606290488
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305389 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A316327.P9820962167606290488

/-! ## A316327.P15140362638143080331

`A107793(A327374(n+2))`
-/

namespace A316327.P15140362638143080331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107793 (A327374 (n + 2)).toNat

end

end A316327.P15140362638143080331

/-!
# A316328: Lexicographically earliest knight's path on spiral on infinite chessboard.

The programs for A316328, there is no canonical definition to state claims against.
-/

/-! ## A316328.P7787204598803396099

`A316667(n+1)-1`
-/

namespace A316328.P7787204598803396099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316667 (n + 1) - 1

end

end A316328.P7787204598803396099

/-! ## A316328.P17855038383708286830

`A377015(n+1)-1`
-/

namespace A316328.P17855038383708286830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377015 (n + 1) - 1

end

end A316328.P17855038383708286830

/-! ## A316328.P350847974255884482

`A023443(A377015(n+1))`
-/

namespace A316328.P350847974255884482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A377015 (n + 1)).toNat

end

end A316328.P350847974255884482

/-! ## A316328.P3424488327209002402

`A329518(n+1)-A347955(A000040(n+1))`
-/

namespace A316328.P3424488327209002402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329518 (n + 1) - A347955 (A000040 (n + 1)).toNat

end

end A316328.P3424488327209002402

/-! ## A316328.P11954438355484567192

`A329518(n+1)-A001221(A000928(2*n+1))`
-/

namespace A316328.P11954438355484567192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329518 (n + 1) - A001221 (A000928 (2 * n + 1)).toNat

end

end A316328.P11954438355484567192

/-! ## A316328.P1369375512863688026

`A329518(n+1)-A105395(A000069(3*n+2))`
-/

namespace A316328.P1369375512863688026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329518 (n + 1) - A105395 (A000069 (3 * n + 2)).toNat

end

end A316328.P1369375512863688026

/-! ## A316328.P11155347432297090654

`A329518(n+1)-A294901(A225039(n+1))`
-/

namespace A316328.P11155347432297090654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329518 (n + 1) - A294901 (A225039 (n + 1)).toNat

end

end A316328.P11155347432297090654

/-! ## A316328.P10455062252279862069

`A329518(n+1)-A294901(A000040(2*(n+1)))`
-/

namespace A316328.P10455062252279862069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329518 (n + 1) - A294901 (A000040 (2 * (n + 1))).toNat

end

end A316328.P10455062252279862069

/-! ## A316328.P6060748415437135322

`A323809(n)%A004406(n)`
-/

namespace A316328.P6060748415437135322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A323809 n) (A004406 n)

end

end A316328.P6060748415437135322

/-! ## A316328.P4328452158141870210

`A323809(and(n, A171389(n)))`
-/

namespace A316328.P4328452158141870210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323809 (Int.land (n : ℤ) (A171389 n)).toNat

end

end A316328.P4328452158141870210

/-! ## A316328.P2835325561086727968

`A323809(and(n, A291557(n)))`
-/

namespace A316328.P2835325561086727968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323809 (Int.land (n : ℤ) (A291557 n)).toNat

end

end A316328.P2835325561086727968

/-! ## A316328.P5038487839247499796

`and(A171390(n+1), A323809(n))`
-/

namespace A316328.P5038487839247499796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A171390 (n + 1)) (A323809 n)

end

end A316328.P5038487839247499796

/-! ## A316328.P8007377603242057495

`A323809(and(n, A107392(n)))`
-/

namespace A316328.P8007377603242057495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323809 (Int.land (n : ℤ) (A107392 n)).toNat

end

end A316328.P8007377603242057495

/-! ## A316328.P8977405489357110417

`A323808(n+1)-and(1, A107392(n))`
-/

namespace A316328.P8977405489357110417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323808 (n + 1) - Int.land 1 (A107392 n)

end

end A316328.P8977405489357110417

/-! ## A316328.P5997757022320246721

`A329518(n+1)-and(1, A107392(n))`
-/

namespace A316328.P5997757022320246721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329518 (n + 1) - Int.land 1 (A107392 n)

end

end A316328.P5997757022320246721

/-! ## A316328.P5933018992540920949

`A329519(n+1)-and(1, A107392(n))`
-/

namespace A316328.P5933018992540920949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329519 (n + 1) - Int.land 1 (A107392 n)

end

end A316328.P5933018992540920949

/-! ## A316328.P15016817781034937892

`A323809(and(n, A107953(n)))`
-/

namespace A316328.P15016817781034937892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323809 (Int.land (n : ℤ) (A107953 n)).toNat

end

end A316328.P15016817781034937892

/-! ## A316328.P12821882296306592752

`A323808(n+1)-and(1, A107953(n))`
-/

namespace A316328.P12821882296306592752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323808 (n + 1) - Int.land 1 (A107953 n)

end

end A316328.P12821882296306592752

/-! ## A316328.P4249351458966436497

`A329518(n+1)-and(1, A107953(n))`
-/

namespace A316328.P4249351458966436497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329518 (n + 1) - Int.land 1 (A107953 n)

end

end A316328.P4249351458966436497

/-! ## A316328.P12619551201038859883

`A329519(n+1)-and(1, A107953(n))`
-/

namespace A316328.P12619551201038859883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329519 (n + 1) - Int.land 1 (A107953 n)

end

end A316328.P12619551201038859883

/-!
# A316330: a(n) = A000085(4*n)/2^n.

The programs for A316330, the canonical program `A316330.P8617574929361590466` is in `Seq.B001.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A316330 has offset 0).

The definition of A316330 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A316330.P8617574929361590466

`A000085(4*n)/2^n`

The canonical program, it is in `Seq.B001.C012`.
-/

namespace A316330

/-- `A000085(4*n)/2^n` -/
def P8617574929361590466.Spec : Prop :=
  ∀ n, P8617574929361590466.a n = (A316330 n : ℚ)

end A316330

/-! ## A316330.P11619590225867545780

`A072898(4*n)`
-/

namespace A316330.P11619590225867545780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072898 (4 * n)

end

end A316330.P11619590225867545780

namespace A316330

/-- `A072898(4*n)` -/
def P11619590225867545780.Spec : Prop :=
  ∀ n, P11619590225867545780.a n = A316330 n

end A316330

/-! ## A316330.P1188354731832298599

`A072899(3*n+n+1)`
-/

namespace A316330.P1188354731832298599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072899 (3 * n + (n + 1))

end

end A316330.P1188354731832298599

namespace A316330

/-- `A072899(3*n+n+1)` -/
def P1188354731832298599.Spec : Prop :=
  ∀ n, P1188354731832298599.a n = A316330 n

end A316330

/-! ## A316330.P3969023938354604545

`A066223(2*n)/A000079(n)`
-/

namespace A316330.P3969023938354604545
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A066223 (2 * n) : ℚ) / (A000079 n : ℚ)

end

end A316330.P3969023938354604545

namespace A316330

/-- `A066223(2*n)/A000079(n)` -/
def P3969023938354604545.Spec : Prop :=
  ∀ n, P3969023938354604545.a n = (A316330 n : ℚ)

end A316330

/-! ## A316330.P4161066067984748278

`ceil(A000085(4*n)/A000079(n))`
-/

namespace A316330.P4161066067984748278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A000085 (4 * n) : ℚ) / (A000079 n : ℚ)⌉

end

end A316330.P4161066067984748278

namespace A316330

/-- `ceil(A000085(4*n)/A000079(n))` -/
def P4161066067984748278.Spec : Prop :=
  ∀ n, P4161066067984748278.a n = A316330 n

end A316330

/-!
# A316331: a(n) = A000085(4*n+1)/2^n.

The programs for A316331, the canonical program `A316331.P5925976260589872909` is in `Seq.B001.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A316331 has offset 0).

The definition of A316331 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A316331.P5925976260589872909

`A000085(4*n+1)/2^n`

The canonical program, it is in `Seq.B001.C012`.
-/

namespace A316331

/-- `A000085(4*n+1)/2^n` -/
def P5925976260589872909.Spec : Prop :=
  ∀ n, P5925976260589872909.a n = (A316331 n : ℚ)

end A316331

/-! ## A316331.P7244323380604980028

`A072898(4*n+1)`
-/

namespace A316331.P7244323380604980028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072898 (4 * n + 1)

end

end A316331.P7244323380604980028

namespace A316331

/-- `A072898(4*n+1)` -/
def P7244323380604980028.Spec : Prop :=
  ∀ n, P7244323380604980028.a n = A316331 n

end A316331

/-! ## A316331.P8164953350531927939

`A072899(4*n+2)`
-/

namespace A316331.P8164953350531927939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072899 (4 * n + 2)

end

end A316331.P8164953350531927939

namespace A316331

/-- `A072899(4*n+2)` -/
def P8164953350531927939.Spec : Prop :=
  ∀ n, P8164953350531927939.a n = A316331 n

end A316331

/-! ## A316331.P10153917368073155749

`A001475(A008574(n))/A011782(n)`
-/

namespace A316331.P10153917368073155749
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001475 (A008574 n).toNat : ℚ) / (A011782 n : ℚ)

end

end A316331.P10153917368073155749

namespace A316331

/-- `A001475(A008574(n))/A011782(n)` -/
def P10153917368073155749.Spec : Prop :=
  ∀ n, P10153917368073155749.a n = (A316331 n : ℚ)

end A316331

/-! ## A316331.P5644112630452824644

`A066224(2*n)/A000079(n)`
-/

namespace A316331.P5644112630452824644
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A066224 (2 * n) : ℚ) / (A000079 n : ℚ)

end

end A316331.P5644112630452824644

namespace A316331

/-- `A066224(2*n)/A000079(n)` -/
def P5644112630452824644.Spec : Prop :=
  ∀ n, P5644112630452824644.a n = (A316331 n : ℚ)

end A316331

/-!
# A316332: a(n) = A000085(4*n+2)/2^(n+1).

The programs for A316332, the canonical program `A316332.P4722965833346480592` is in `Seq.B001.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A316332 has offset 0).

The definition of A316332 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A316332.P4722965833346480592

`A000085(4*n+2)/2^(n+1)`

The canonical program, it is in `Seq.B001.C012`.
-/

namespace A316332

/-- `A000085(4*n+2)/2^(n+1)` -/
def P4722965833346480592.Spec : Prop :=
  ∀ n, P4722965833346480592.a n = (A316332 n : ℚ)

end A316332

/-! ## A316332.P1623437065687860233

`A072899(3*(n+1)+n)`
-/

namespace A316332.P1623437065687860233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072899 (3 * (n + 1) + n)

end

end A316332.P1623437065687860233

namespace A316332

/-- `A072899(3*(n+1)+n)` -/
def P1623437065687860233.Spec : Prop :=
  ∀ n, P1623437065687860233.a n = A316332 n

end A316332

/-! ## A316332.P12380668720415917997

`A001475(4*n+1)/2^n`
-/

namespace A316332.P12380668720415917997
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001475 (4 * n + 1) : ℚ) / (2 ^ n : ℚ)

end

end A316332.P12380668720415917997

namespace A316332

/-- `A001475(4*n+1)/2^n` -/
def P12380668720415917997.Spec : Prop :=
  ∀ n, P12380668720415917997.a n = (A316332 n : ℚ)

end A316332

/-! ## A316332.P1400986746230041009

`A066223(2*n+1)/A000079(n+1)`
-/

namespace A316332.P1400986746230041009
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A066223 (2 * n + 1) : ℚ) / (A000079 (n + 1) : ℚ)

end

end A316332.P1400986746230041009

namespace A316332

/-- `A066223(2*n+1)/A000079(n+1)` -/
def P1400986746230041009.Spec : Prop :=
  ∀ n, P1400986746230041009.a n = (A316332 n : ℚ)

end A316332

/-! ## A316332.P1486091316724751452

`A066223(2*n+1)/A060546(2*(n+1))`
-/

namespace A316332.P1486091316724751452
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A066223 (2 * n + 1) : ℚ) / (A060546 (2 * (n + 1)) : ℚ)

end

end A316332.P1486091316724751452

namespace A316332

/-- `A066223(2*n+1)/A060546(2*(n+1))` -/
def P1486091316724751452.Spec : Prop :=
  ∀ n, P1486091316724751452.a n = (A316332 n : ℚ)

end A316332

/-!
# A316333: a(n) = A000085(4*n+3)/2^(n+2).

The programs for A316333, the canonical program `A316333.P17369199407234623873` is in `Seq.B001.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A316333 has offset 0).

The definition of A316333 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A316333.P17369199407234623873

`A000085(4*n+3)/2^(n+2)`

The canonical program, it is in `Seq.B001.C012`.
-/

namespace A316333

/-- `A000085(4*n+3)/2^(n+2)` -/
def P17369199407234623873.Spec : Prop :=
  ∀ n, P17369199407234623873.a n = (A316333 n : ℚ)

end A316333

/-! ## A316333.P10013967916061604433

`A072898(A189787(n+1))/2`
-/

namespace A316333.P10013967916061604433
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A072898 (A189787 (n + 1)).toNat : ℚ) / 2

end

end A316333.P10013967916061604433

namespace A316333

/-- `A072898(A189787(n+1))/2` -/
def P10013967916061604433.Spec : Prop :=
  ∀ n, P10013967916061604433.a n = (A316333 n : ℚ)

end A316333

/-! ## A316333.P7773470198445284847

`A066224(2*n+1)/A000079(n+2)`
-/

namespace A316333.P7773470198445284847
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A066224 (2 * n + 1) : ℚ) / (A000079 (n + 2) : ℚ)

end

end A316333.P7773470198445284847

namespace A316333

/-- `A066224(2*n+1)/A000079(n+2)` -/
def P7773470198445284847.Spec : Prop :=
  ∀ n, P7773470198445284847.a n = (A316333 n : ℚ)

end A316333

/-! ## A316333.P15392208506635442169

`A066224(2*n+1)/A017911(2*(n+2))`
-/

namespace A316333.P15392208506635442169
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A066224 (2 * n + 1) : ℚ) / (A017911 (2 * (n + 2)) : ℚ)

end

end A316333.P15392208506635442169

namespace A316333

/-- `A066224(2*n+1)/A017911(2*(n+2))` -/
def P15392208506635442169.Spec : Prop :=
  ∀ n, P15392208506635442169.a n = (A316333 n : ℚ)

end A316333

/-!
# A316334: Same as A316588, except number the squares starting at 0 rather than 1.

The programs for A316334, there is no canonical definition to state claims against.
-/

/-! ## A316334.P17591382677142473749

`A316588(n+1)-1`
-/

namespace A316334.P17591382677142473749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316588 (n + 1) - 1

end

end A316334.P17591382677142473749

/-! ## A316334.P13146583419518604524

`A023443(A316588(n+1))`
-/

namespace A316334.P13146583419518604524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A316588 (n + 1)).toNat

end

end A316334.P13146583419518604524

/-! ## A316334.P3289629473772793672

`A023446(A316588(n+1)+3)`
-/

namespace A316334.P3289629473772793672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023446 (A316588 (n + 1) + 3).toNat

end

end A316334.P3289629473772793672

/-! ## A316334.P10063106867670177597

`A323811(n)%A004406(n)`
-/

namespace A316334.P10063106867670177597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A323811 n) (A004406 n)

end

end A316334.P10063106867670177597

/-! ## A316334.P780162611131017859

`A323811(and(n, A375155(n+1)))`
-/

namespace A316334.P780162611131017859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323811 (Int.land (n : ℤ) (A375155 (n + 1))).toNat

end

end A316334.P780162611131017859

/-! ## A316334.P7560525242279553406

`and(A003261(n+1), A323811(n))`
-/

namespace A316334.P7560525242279553406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A003261 (n + 1)) (A323811 n)

end

end A316334.P7560525242279553406

/-! ## A316334.P2969264898803134571

`A323811(and(n, A055580(n)))`
-/

namespace A316334.P2969264898803134571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323811 (Int.land (n : ℤ) (A055580 n)).toNat

end

end A316334.P2969264898803134571

/-! ## A316334.P4385457186202391043

`A323811(and(n, A107392(n)))`
-/

namespace A316334.P4385457186202391043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323811 (Int.land (n : ℤ) (A107392 n)).toNat

end

end A316334.P4385457186202391043

/-! ## A316334.P14108637917580460775

`A323810(n+1)-and(1, A107392(n))`
-/

namespace A316334.P14108637917580460775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323810 (n + 1) - Int.land 1 (A107392 n)

end

end A316334.P14108637917580460775

/-! ## A316334.P1597896892613166984

`A323811(and(n, A107953(n)))`
-/

namespace A316334.P1597896892613166984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323811 (Int.land (n : ℤ) (A107953 n)).toNat

end

end A316334.P1597896892613166984

/-! ## A316334.P11533070587780098019

`A323810(n+1)-and(1, A107953(n))`
-/

namespace A316334.P11533070587780098019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323810 (n + 1) - Int.land 1 (A107953 n)

end

end A316334.P11533070587780098019

/-! ## A316334.P4982293526205856735

`A323810(n+1)-and(1, A211386(n))`
-/

namespace A316334.P4982293526205856735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323810 (n + 1) - Int.land 1 (A211386 n)

end

end A316334.P4982293526205856735

/-! ## A316334.P2648908569686797680

`A323811(n)%A001816(n)`
-/

namespace A316334.P2648908569686797680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A323811 n) (A001816 n)

end

end A316334.P2648908569686797680

/-! ## A316334.P6599201105436156819

`A323811(and(n, A107954(n)))`
-/

namespace A316334.P6599201105436156819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323811 (Int.land (n : ℤ) (A107954 n)).toNat

end

end A316334.P6599201105436156819

/-! ## A316334.P7354189598570251228

`A323810(n+1)-and(1, A107954(n))`
-/

namespace A316334.P7354189598570251228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323810 (n + 1) - Int.land 1 (A107954 n)

end

end A316334.P7354189598570251228

/-! ## A316334.P18371317682372885420

`A323811(and(n, A107955(n)))`
-/

namespace A316334.P18371317682372885420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323811 (Int.land (n : ℤ) (A107955 n)).toNat

end

end A316334.P18371317682372885420

/-! ## A316334.P7941698634392442110

`A323810(n+1)-and(1, A107955(n))`
-/

namespace A316334.P7941698634392442110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323810 (n + 1) - Int.land 1 (A107955 n)

end

end A316334.P7941698634392442110

/-! ## A316334.P7977318666022903440

`A323811(n)%A001360(n)`
-/

namespace A316334.P7977318666022903440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A323811 n) (A001360 n)

end

end A316334.P7977318666022903440

/-! ## A316334.P16330125090006560189

`and(A018886(n+1), A323811(n))`
-/

namespace A316334.P16330125090006560189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A018886 (n + 1)) (A323811 n)

end

end A316334.P16330125090006560189

/-! ## A316334.P396356331734000300

`and(A060160(n+1), A323810(n+1))-1`
-/

namespace A316334.P396356331734000300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A060160 (n + 1)) (A323810 (n + 1)) - 1

end

end A316334.P396356331734000300

/-!
# A316335: Numbers missing from A316588.

The programs for A316335, there is no canonical definition to state claims against.
-/

/-! ## A316335.P14269305174292006391

`A316336(n+1)+1`
-/

namespace A316335.P14269305174292006391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316336 (n + 1) + 1

end

end A316335.P14269305174292006391

/-! ## A316335.P7824487227656439453

`A004830(A316336(n+1))`
-/

namespace A316335.P7824487227656439453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004830 (A316336 (n + 1)).toNat

end

end A316335.P7824487227656439453

/-! ## A316335.P15952167772811153575

`A153152(A316336(1-(n-2*n)))`
-/

namespace A316335.P15952167772811153575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153152 (A316336 (1 - ((n : ℤ) - (2 * n : ℤ))).toNat).toNat

end

end A316335.P15952167772811153575

/-!
# A316336: Numbers missing from A316334.

The programs for A316336, there is no canonical definition to state claims against.
-/

/-! ## A316336.P18029438444188931199

`A316335(n+1)-1`
-/

namespace A316336.P18029438444188931199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316335 (n + 1) - 1

end

end A316336.P18029438444188931199

/-! ## A316336.P13698419755721705953

`A023443(A316335(n+1))`
-/

namespace A316336.P13698419755721705953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A316335 (n + 1)).toNat

end

end A316336.P13698419755721705953

/-! ## A316336.P7321763554630656339

`record[A316335(A134478(n))-1]`
-/

namespace A316336.P7321763554630656339
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316335 (A134478 n).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A316336.P7321763554630656339

/-! ## A316336.P17346140240778828604

`record[A316335(A152271(n))-1]`
-/

namespace A316336.P17346140240778828604
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316335 (A152271 n).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A316336.P17346140240778828604

/-! ## A316336.P12864420413113946127

`A023444(A316335(n+1)+1)`
-/

namespace A316336.P12864420413113946127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 (A316335 (n + 1) + 1).toNat

end

end A316336.P12864420413113946127

/-! ## A316336.P14201153438027907252

`A289207(A316335(n+1)+1)`
-/

namespace A316336.P14201153438027907252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289207 (A316335 (n + 1) + 1).toNat

end

end A316336.P14201153438027907252

/-! ## A316336.P14101484095192813413

`A023445(A316335(n+1)+2)`
-/

namespace A316336.P14101484095192813413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023445 (A316335 (n + 1) + 2).toNat

end

end A316336.P14101484095192813413

/-! ## A316336.P8752554280342371007

`A023446(A316335(n+1)+3)`
-/

namespace A316336.P8752554280342371007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023446 (A316335 (n + 1) + 3).toNat

end

end A316336.P8752554280342371007

/-! ## A316336.P15309997305878031386

`A343785(A167499(n))+A316335(n+1)`
-/

namespace A316336.P15309997305878031386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343785 (A167499 n).toNat + A316335 (n + 1)

end

end A316336.P15309997305878031386

/-! ## A316336.P6233923390309129464

`lcm(A008683(n+1)²!, A024000(A316335(n+1)))`
-/

namespace A316336.P6233923390309129464
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (Nat.factorial (A008683 (n + 1) ^ 2).toNat : ℤ) (A024000 (A316335 (n + 1)).toNat)

end

end A316336.P6233923390309129464

/-!
# A316337: Numbers missing from A316667.

The programs for A316337, there is no canonical definition to state claims against.
-/

/-! ## A316337.P13011366251916627156

`A316338(n+1)+1`
-/

namespace A316337.P13011366251916627156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316338 (n + 1) + 1

end

end A316337.P13011366251916627156

/-! ## A316337.P14889287881265960660

`A004830(A316338(n+1))`
-/

namespace A316337.P14889287881265960660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004830 (A316338 (n + 1)).toNat

end

end A316337.P14889287881265960660

/-!
# A316338: Numbers missing from A316328.

The programs for A316338, there is no canonical definition to state claims against.
-/

/-! ## A316338.P12582491605820988942

`A316337(1+n)-1`
-/

namespace A316338.P12582491605820988942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316337 (1 + n) - 1

end

end A316338.P12582491605820988942

/-! ## A316338.P17810645174975605947

`A023443(A316337(n+1))`
-/

namespace A316338.P17810645174975605947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A316337 (n + 1)).toNat

end

end A316338.P17810645174975605947

/-! ## A316338.P13505174257724976559

`record[A316337(A065648(n))-1]`
-/

namespace A316338.P13505174257724976559
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316337 (A065648 n).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A316338.P13505174257724976559

/-! ## A316338.P12329471612247040740

`A023444(A316337(n+1)+1)`
-/

namespace A316338.P12329471612247040740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 (A316337 (n + 1) + 1).toNat

end

end A316338.P12329471612247040740

/-! ## A316338.P6498325822496995823

`A289207(A316337(n+1)+1)`
-/

namespace A316338.P6498325822496995823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289207 (A316337 (n + 1) + 1).toNat

end

end A316338.P6498325822496995823

/-! ## A316338.P15129947388936297479

`A023445(A316337(n+1)+2)`
-/

namespace A316338.P15129947388936297479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023445 (A316337 (n + 1) + 2).toNat

end

end A316338.P15129947388936297479

/-! ## A316338.P7796141871627432137

`A023446(A316337(n+1)+3)`
-/

namespace A316338.P7796141871627432137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023446 (A316337 (n + 1) + 3).toNat

end

end A316338.P7796141871627432137

/-! ## A316338.P15071900150227263381

`A023449(A316337(n+1)+6)`
-/

namespace A316338.P15071900150227263381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023449 (A316337 (n + 1) + 6).toNat

end

end A316338.P15071900150227263381

/-! ## A316338.P9812730685021746508

`abs(A316337(n+1)+A134824(A007918(n)))`
-/

namespace A316338.P9812730685021746508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A316337 (n + 1) + A134824 (A007918 n).toNat|

end

end A316338.P9812730685021746508

/-! ## A316338.P17771633492352332621

`abs(A316337(n+1)+A008683(A064740(n+2)))`
-/

namespace A316338.P17771633492352332621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A316337 (n + 1) + A008683 (A064740 (n + 2)).toNat|

end

end A316338.P17771633492352332621

/-!
# A316339: An example of a morphically imprimitive word.

The programs for A316339, there is no canonical definition to state claims against.
-/

/-! ## A316339.P3272841120217316148

`A000120(xor(2, A345382(n+4)))`
-/

namespace A316339.P3272841120217316148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (Int.xor 2 (A345382 (n + 4))).toNat

end

end A316339.P3272841120217316148

/-!
# A316340: Image of 1 under repeated application of the morphism 1 -> 12312, 2 -> 341, 3 -> 34134, 4 -> 123.

The programs for A316340, the canonical program `A316340.P16686177254776734771` is in `Seq.B001.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A316340 has offset 0).

The definition of A316340 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A316340.P3211480196310226919

`comp[A075318(n+1)]%4+1`
-/

namespace A316340.P3211480196310226919
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075318 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n % 4 + 1

end

end A316340.P3211480196310226919

namespace A316340

/-- `comp[A075318(n+1)]%4+1` -/
def P3211480196310226919.Spec : Prop :=
  ∀ n, (P3211480196310226919.a n : ℤ) = A316340 n

end A316340

/-! ## A316340.P16686177254776734771

`A005206(n)-xor(1, A005206(n+1)-3)`

The canonical program, it is in `Seq.B001.C012`.
-/

namespace A316340

/-- `A005206(n)-xor(1, A005206(n+1)-3)` -/
def P16686177254776734771.Spec : Prop :=
  ∀ n, P16686177254776734771.a n = A316340 n

theorem P16686177254776734771.correct : P16686177254776734771.Spec := by
  intro n
  simp only [A316340]

end A316340

/-! ## A316340.P18283855876780314872

`dr(Δ[A228826(A001950(n+1))])`
-/

namespace A316340.P18283855876780314872
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228826 (A001950 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (f1 (n + 1) - f1 n)

end

end A316340.P18283855876780314872

namespace A316340

/-- `dr(Δ[A228826(A001950(n+1))])` -/
def P18283855876780314872.Spec : Prop :=
  ∀ n, (P18283855876780314872.a n : ℤ) = A316340 n

end A316340

/-!
# A316341: Characteristic function of the factorials 1!, 2!, 3!, ...

The programs for A316341, the canonical program `A316341.P8015023514485529273` is in `Seq.B000.C043`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A316341 has offset 0).

The definition of A316341 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A316341.P8015023514485529273

`char[n!]`

The canonical program, it is in `Seq.B000.C043`.
-/

namespace A316341

/-- `char[n!]` -/
def P8015023514485529273.Spec : Prop :=
  ∀ n, (P8015023514485529273.a n : ℤ) = A316341 n

theorem P8015023514485529273.correct : P8015023514485529273.Spec := by
  intro n
  simp only [A316341]

end A316341

/-! ## A316341.P11457647935849969558

`and(1, char[∏[n+1]])`
-/

namespace A316341.P11457647935849969558
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 (if ∃ j, f1 j = n then 1 else 0)

end

end A316341.P11457647935849969558

namespace A316341

/-- `and(1, char[∏[n+1]])` -/
def P11457647935849969558.Spec : Prop :=
  ∀ n, (P11457647935849969558.a n : ℤ) = A316341 n

end A316341

/-! ## A316341.P8130681338865030530

`char[abs(∏[-(n+1)])]`
-/

namespace A316341.P8130681338865030530
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(n + 1 : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∏ j ∈ Finset.range (n + 1), f2 j|

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A316341.P8130681338865030530

namespace A316341

/-- `char[abs(∏[-(n+1)])]` -/
def P8130681338865030530.Spec : Prop :=
  ∀ n, (P8130681338865030530.a n : ℤ) = A316341 n

end A316341

/-! ## A316341.P14760384682825050067

`ceil(sin(char[∏[n+1]]))`
-/

namespace A316341.P14760384682825050067
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sin ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℝ)⌉

end

end A316341.P14760384682825050067

namespace A316341

/-- `ceil(sin(char[∏[n+1]]))` -/
def P14760384682825050067.Spec : Prop :=
  ∀ n, P14760384682825050067.a n = A316341 n

end A316341

/-! ## A316341.P2425697346533279170

`floor(tan(char[∏[n+1]]))`
-/

namespace A316341.P2425697346533279170
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.tan ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℝ)⌋

end

end A316341.P2425697346533279170

namespace A316341

/-- `floor(tan(char[∏[n+1]]))` -/
def P2425697346533279170.Spec : Prop :=
  ∀ n, P2425697346533279170.a n = A316341 n

end A316341

/-! ## A316341.P13531452143750725621

`round(sin(char[∏[n+1]]))`
-/

namespace A316341.P13531452143750725621
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sin ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℝ))

end

end A316341.P13531452143750725621

namespace A316341

/-- `round(sin(char[∏[n+1]]))` -/
def P13531452143750725621.Spec : Prop :=
  ∀ n, P13531452143750725621.a n = A316341 n

end A316341

/-! ## A316341.P6780652622629497448

`floor(asin(char[∏[n+1]]))`
-/

namespace A316341.P6780652622629497448
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.arcsin ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℝ)⌋

end

end A316341.P6780652622629497448

namespace A316341

/-- `floor(asin(char[∏[n+1]]))` -/
def P6780652622629497448.Spec : Prop :=
  ∀ n, P6780652622629497448.a n = A316341 n

end A316341

/-! ## A316341.P13695774955861647959

`ceil(atan(char[∏[n+1]]))`
-/

namespace A316341.P13695774955861647959
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.arctan ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℝ)⌉

end

end A316341.P13695774955861647959

namespace A316341

/-- `ceil(atan(char[∏[n+1]]))` -/
def P13695774955861647959.Spec : Prop :=
  ∀ n, P13695774955861647959.a n = A316341 n

end A316341

/-! ## A316341.P2832771346361623681

`round(atan(char[∏[n+1]]))`
-/

namespace A316341.P2832771346361623681
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.arctan ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℝ))

end

end A316341.P2832771346361623681

namespace A316341

/-- `round(atan(char[∏[n+1]]))` -/
def P2832771346361623681.Spec : Prop :=
  ∀ n, P2832771346361623681.a n = A316341 n

end A316341

/-! ## A316341.P184332209072388052

`floor(sinh(char[∏[n+1]]))`
-/

namespace A316341.P184332209072388052
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sinh ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℝ)⌋

end

end A316341.P184332209072388052

namespace A316341

/-- `floor(sinh(char[∏[n+1]]))` -/
def P184332209072388052.Spec : Prop :=
  ∀ n, P184332209072388052.a n = A316341 n

end A316341

/-! ## A316341.P17585052484563395134

`round(sinh(char[∏[n+1]]))`
-/

namespace A316341.P17585052484563395134
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sinh ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℝ))

end

end A316341.P17585052484563395134

namespace A316341

/-- `round(sinh(char[∏[n+1]]))` -/
def P17585052484563395134.Spec : Prop :=
  ∀ n, P17585052484563395134.a n = A316341 n

end A316341

/-! ## A316341.P7715862476684079179

`ceil(tanh(char[∏[n+1]]))`
-/

namespace A316341.P7715862476684079179
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.tanh ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℝ)⌉

end

end A316341.P7715862476684079179

namespace A316341

/-- `ceil(tanh(char[∏[n+1]]))` -/
def P7715862476684079179.Spec : Prop :=
  ∀ n, P7715862476684079179.a n = A316341 n

end A316341

/-! ## A316341.P16078309061572663190

`round(tanh(char[∏[n+1]]))`
-/

namespace A316341.P16078309061572663190
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.tanh ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℝ))

end

end A316341.P16078309061572663190

namespace A316341

/-- `round(tanh(char[∏[n+1]]))` -/
def P16078309061572663190.Spec : Prop :=
  ∀ n, P16078309061572663190.a n = A316341 n

end A316341

/-! ## A316341.P1085943523129818220

`acos(cos(char[∏[n+1]]))`
-/

namespace A316341.P1085943523129818220
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.arccos (Real.cos ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℝ))

end

end A316341.P1085943523129818220

namespace A316341

/-- `acos(cos(char[∏[n+1]]))` -/
def P1085943523129818220.Spec : Prop :=
  ∀ n, P1085943523129818220.a n = (A316341 n : ℝ)

end A316341

/-! ## A316341.P9367540401360798765

`asin(sin(char[∏[n+1]]))`
-/

namespace A316341.P9367540401360798765
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.arcsin (Real.sin ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℝ))

end

end A316341.P9367540401360798765

namespace A316341

/-- `asin(sin(char[∏[n+1]]))` -/
def P9367540401360798765.Spec : Prop :=
  ∀ n, P9367540401360798765.a n = (A316341 n : ℝ)

end A316341

/-! ## A316341.P13039878730642089122

`ceil(char[n*a(n-1)]/2)` with `a(0)=1`
-/

namespace A316341.P13039878730642089122
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  n * f1 (n - 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℚ) / 2⌉

end

end A316341.P13039878730642089122

namespace A316341

/-- `ceil(char[n*a(n-1)]/2)` -/
def P13039878730642089122.Spec : Prop :=
  ∀ n, P13039878730642089122.a n = A316341 n

end A316341

/-! ## A316341.P1668972538290960209

`col(char[n*a(n-1)]+1)` with `a(0)=1`
-/

namespace A316341.P1668972538290960209
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  n * f1 (n - 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.triCol ((if ∃ j, f1 j = n then 1 else 0) + 1)

end

end A316341.P1668972538290960209

namespace A316341

/-- `col(char[n*a(n-1)]+1)` -/
def P1668972538290960209.Spec : Prop :=
  ∀ n, (P1668972538290960209.a n : ℤ) = A316341 n

end A316341

/-! ## A316341.P12511554807107533222

`1-xor(1, char[n*a(n-1)])` with `a(0)=1`
-/

namespace A316341.P12511554807107533222
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  n * f1 (n - 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (Nat.xor 1 (if ∃ j, f1 j = n then 1 else 0) : ℤ)

end

end A316341.P12511554807107533222

namespace A316341

/-- `1-xor(1, char[n*a(n-1)])` -/
def P12511554807107533222.Spec : Prop :=
  ∀ n, P12511554807107533222.a n = A316341 n

end A316341

/-! ## A316341.P10287757415507245555

`Δ[A090529(n)]`
-/

namespace A316341.P10287757415507245555
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090529 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A316341.P10287757415507245555

namespace A316341

/-- `Δ[A090529(n)]` -/
def P10287757415507245555.Spec : Prop :=
  ∀ n, P10287757415507245555.a n = A316341 n

end A316341

/-! ## A316341.P3987151767049025124

`11%(char[A000142(n)]+1)`
-/

namespace A316341.P3987151767049025124
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11 % ((if ∃ j, f1 j = (n : ℤ) then 1 else 0) + 1)

end

end A316341.P3987151767049025124

namespace A316341

/-- `11%(char[A000142(n)]+1)` -/
def P3987151767049025124.Spec : Prop :=
  ∀ n, (P3987151767049025124.a n : ℤ) = A316341 n

end A316341

/-!
# A316342: Fibonacci word A003849 with first two terms replaced by 2's.

The programs for A316342, the canonical program `A316342.P7529565621143212151` is in `Seq.B000.C043`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A316342 has offset 0).

The definition of A316342 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A316342.P12795581176087404035

`abs(Δ[(2*n)%floor(ϕ*(n+1))])`
-/

namespace A316342.P12795581176087404035
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (2 * n : ℤ) ⌊Real.goldenRatio * (n + 1 : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A316342.P12795581176087404035

namespace A316342

/-- `abs(Δ[(2*n)%floor(ϕ*(n+1))])` -/
def P12795581176087404035.Spec : Prop :=
  ∀ n, P12795581176087404035.a n = A316342 n

end A316342

/-! ## A316342.P2728730422766542239

`ceil(Δ[3*n/ceil((n+1)/ϕ)])`
-/

namespace A316342.P2728730422766542239
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 * n : ℚ) / (⌈(n + 1 : ℝ) / Real.goldenRatio⌉ : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈f1 (n + 1) - f1 n⌉

end

end A316342.P2728730422766542239

namespace A316342

/-- `ceil(Δ[3*n/ceil((n+1)/ϕ)])` -/
def P2728730422766542239.Spec : Prop :=
  ∀ n, P2728730422766542239.a n = A316342 n

end A316342

/-! ## A316342.P14664258839478157352

`char[1]+C(2, Δ[floor((n+1)/ϕ)²])`
-/

namespace A316342.P14664258839478157352
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℝ) / Real.goldenRatio⌋ ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f1 j = n then 1 else 0) + Nat.choose 2 (f2 (n + 1) - f2 n).toNat

end

end A316342.P14664258839478157352

namespace A316342

/-- `char[1]+C(2, Δ[floor((n+1)/ϕ)²])` -/
def P14664258839478157352.Spec : Prop :=
  ∀ n, (P14664258839478157352.a n : ℤ) = A316342 n

end A316342

/-! ## A316342.P7529565621143212151

`1-Δ[n-a(a(n-1))]` with `a(0)=3, a(1)=2, a(2)=1, a(3)=2`

The canonical program, it is in `Seq.B000.C043`.
-/

namespace A316342

/-- `1-Δ[n-a(a(n-1))]` -/
def P7529565621143212151.Spec : Prop :=
  ∀ n, P7529565621143212151.a n = A316342 n

theorem P7529565621143212151.correct : P7529565621143212151.Spec := by
  intro n
  simp only [A316342]

end A316342

/-! ## A316342.P17475523199722363437

`C(2, n+1)+Δ[floor(ϕ*(n+1))]%2`
-/

namespace A316342.P17475523199722363437
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.goldenRatio * (n + 1 : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose 2 (n + 1) : ℤ) + Int.tmod (f1 (n + 1) - f1 n) 2

end

end A316342.P17475523199722363437

namespace A316342

/-- `C(2, n+1)+Δ[floor(ϕ*(n+1))]%2` -/
def P17475523199722363437.Spec : Prop :=
  ∀ n, P17475523199722363437.a n = A316342 n

end A316342

/-! ## A316342.P15251833418688591041

`A316825(n)+char[1]`
-/

namespace A316342.P15251833418688591041
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316825 n + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A316342.P15251833418688591041

namespace A316342

/-- `A316825(n)+char[1]` -/
def P15251833418688591041.Spec : Prop :=
  ∀ n, P15251833418688591041.a n = A316342 n

end A316342

/-! ## A316342.P18306475234220431678

`A316825(n-char[1])`
-/

namespace A316342.P18306475234220431678
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316825 (n - (if ∃ j, f1 j = n then 1 else 0))

end

end A316342.P18306475234220431678

namespace A316342

/-- `A316825(n-char[1])` -/
def P18306475234220431678.Spec : Prop :=
  ∀ n, P18306475234220431678.a n = A316342 n

end A316342

/-! ## A316342.P16443507756256905135

`round(A003849(n)+acot(n))`
-/

namespace A316342.P16443507756256905135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A003849 n : ℝ) + SequenceMachineLib.acot (n : ℝ))

end

end A316342.P16443507756256905135

namespace A316342

/-- `round(A003849(n)+acot(n))` -/
def P16443507756256905135.Spec : Prop :=
  ∀ n, P16443507756256905135.a n = A316342 n

end A316342

/-! ## A316342.P1076518647191562560

`A316825(n)*A373565(n)`
-/

namespace A316342.P1076518647191562560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316825 n * A373565 n

end

end A316342.P1076518647191562560

namespace A316342

/-- `A316825(n)*A373565(n)` -/
def P1076518647191562560.Spec : Prop :=
  ∀ n, P1076518647191562560.a n = A316342 n

end A316342

/-! ## A316342.P5136971536512264487

`A033322(n+1)+A003849(n)`
-/

namespace A316342.P5136971536512264487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033322 (n + 1) + A003849 n

end

end A316342.P5136971536512264487

namespace A316342

/-- `A033322(n+1)+A003849(n)` -/
def P5136971536512264487.Spec : Prop :=
  ∀ n, P5136971536512264487.a n = A316342 n

end A316342

/-! ## A316342.P10602221524360933667

`A171624(n+1)*A316825(n)`
-/

namespace A316342.P10602221524360933667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171624 (n + 1) * A316825 n

end

end A316342.P10602221524360933667

namespace A316342

/-- `A171624(n+1)*A316825(n)` -/
def P10602221524360933667.Spec : Prop :=
  ∀ n, P10602221524360933667.a n = A316342 n

end A316342

/-! ## A316342.P7713279943467636969

`A171905(n+1)*A316825(n)`
-/

namespace A316342.P7713279943467636969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171905 (n + 1) * A316825 n

end

end A316342.P7713279943467636969

namespace A316342

/-- `A171905(n+1)*A316825(n)` -/
def P7713279943467636969.Spec : Prop :=
  ∀ n, P7713279943467636969.a n = A316342 n

end A316342

/-! ## A316342.P17554890856102125644

`A316825(n)*A352177(n+1)`
-/

namespace A316342.P17554890856102125644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316825 n * A352177 (n + 1)

end

end A316342.P17554890856102125644

namespace A316342

/-- `A316825(n)*A352177(n+1)` -/
def P17554890856102125644.Spec : Prop :=
  ∀ n, P17554890856102125644.a n = A316342 n

end A316342

/-! ## A316342.P15257370858692580475

`and(A141044(n), A287659(n+1))`
-/

namespace A316342.P15257370858692580475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A141044 n) (A287659 (n + 1))

end

end A316342.P15257370858692580475

namespace A316342

/-- `and(A141044(n), A287659(n+1))` -/
def P15257370858692580475.Spec : Prop :=
  ∀ n, P15257370858692580475.a n = A316342 n

end A316342

/-! ## A316342.P9528821463164629666

`and(A141044(n), A319432(n+1))`
-/

namespace A316342.P9528821463164629666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A141044 n) (A319432 (n + 1))

end

end A316342.P9528821463164629666

namespace A316342

/-- `and(A141044(n), A319432(n+1))` -/
def P9528821463164629666.Spec : Prop :=
  ∀ n, P9528821463164629666.a n = A316342 n

end A316342

/-! ## A316342.P18293613584664735638

`A316344(n)+A316825(n)-A316826(n+1)`
-/

namespace A316342.P18293613584664735638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316344 n + (A316825 n - A316826 (n + 1))

end

end A316342.P18293613584664735638

namespace A316342

/-- `A316344(n)+A316825(n)-A316826(n+1)` -/
def P18293613584664735638.Spec : Prop :=
  ∀ n, P18293613584664735638.a n = A316342 n

end A316342

/-! ## A316342.P11268373885733298013

`char[1]+(3-record[xor(n, 2*n)])%2+1`
-/

namespace A316342.P11268373885733298013
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * n)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) + (Int.tmod (3 - (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n) : ℤ)) 2 + 1)

end

end A316342.P11268373885733298013

namespace A316342

/-- `char[1]+(3-record[xor(n, 2*n)])%2+1` -/
def P11268373885733298013.Spec : Prop :=
  ∀ n, P11268373885733298013.a n = A316342 n

end A316342

/-! ## A316342.P8131232729884767537

`A124779(n)*A316825(n)`
-/

namespace A316342.P8131232729884767537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124779 n * A316825 n

end

end A316342.P8131232729884767537

namespace A316342

/-- `A124779(n)*A316825(n)` -/
def P8131232729884767537.Spec : Prop :=
  ∀ n, P8131232729884767537.a n = A316342 n

end A316342

/-! ## A316342.P14793902230319972319

`and(A140590(n), A287659(n+1))`
-/

namespace A316342.P14793902230319972319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A140590 n) (A287659 (n + 1))

end

end A316342.P14793902230319972319

namespace A316342

/-- `and(A140590(n), A287659(n+1))` -/
def P14793902230319972319.Spec : Prop :=
  ∀ n, P14793902230319972319.a n = A316342 n

end A316342

/-!
# A316343: Concatenation of S[1], S[2], S[3], ..., where S[k] = 0 followed by m 1's, where m = (v+1)^2, v = exponent of highest power of 2 dividing k.

The programs for A316343, there is no canonical definition to state claims against.
-/

/-! ## A316343.P4222977595349555693

`A316824(A382858(2*n+1)+A121282(n))`
-/

namespace A316343.P4222977595349555693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316824 (A382858 (2 * n + 1) + A121282 n).toNat

end

end A316343.P4222977595349555693

/-! ## A316343.P15592302670717379020

`A340607(p?[A289815(n)-1]%A340624(n+1))`
-/

namespace A316343.P15592302670717379020
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289815 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340607 (Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A340624 (n + 1))).toNat

end

end A316343.P15592302670717379020

/-! ## A316343.P13158779498163228134

`A305387(∑[A305390(xor(n, n+1))])`
-/

namespace A316343.P13158779498163228134
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305390 (Nat.xor n (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305387 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A316343.P13158779498163228134

/-! ## A316343.P7112434162001250875

`A316824(A346126(n+1)+A032775(n+1))`
-/

namespace A316343.P7112434162001250875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316824 (A346126 (n + 1) + A032775 (n + 1)).toNat

end

end A316343.P7112434162001250875

/-! ## A316343.P18112053152594315695

`p?[A033619(A289815(n))]%2`
-/

namespace A316343.P18112053152594315695
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033619 (A289815 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) 2

end

end A316343.P18112053152594315695

/-!
# A316344: An example of a word that is uniform morphic, but neither pure morphic, primitive morphic, nor recurrent.

The programs for A316344, the canonical program `A316344.P12222898114171771494` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A316344 has offset 0).

The definition of A316344 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A316344.P17255643562560730524

`A036577(n+1)+char[1]`
-/

namespace A316344.P17255643562560730524
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036577 (n + 1) + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A316344.P17255643562560730524

namespace A316344

/-- `A036577(n+1)+char[1]` -/
def P17255643562560730524.Spec : Prop :=
  ∀ n, P17255643562560730524.a n = A316344 n

end A316344

/-! ## A316344.P15271370609247239379

`A316826(n+1)+char[1]`
-/

namespace A316344.P15271370609247239379
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316826 (n + 1) + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A316344.P15271370609247239379

namespace A316344

/-- `A316826(n+1)+char[1]` -/
def P15271370609247239379.Spec : Prop :=
  ∀ n, P15271370609247239379.a n = A316344 n

end A316344

/-! ## A316344.P5728974483985053770

`char[1]+A029883(n+1)+1`
-/

namespace A316344.P5728974483985053770
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) + (A029883 (n + 1) + 1)

end

end A316344.P5728974483985053770

namespace A316344

/-- `char[1]+A029883(n+1)+1` -/
def P5728974483985053770.Spec : Prop :=
  ∀ n, P5728974483985053770.a n = A316344 n

end A316344

/-! ## A316344.P12198110375334793485

`char[1]+A036585(n+1)-1`
-/

namespace A316344.P12198110375334793485
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) + (A036585 (n + 1) - 1)

end

end A316344.P12198110375334793485

namespace A316344

/-- `char[1]+A036585(n+1)-1` -/
def P12198110375334793485.Spec : Prop :=
  ∀ n, P12198110375334793485.a n = A316344 n

end A316344

/-! ## A316344.P18173621597436067799

`Δ[A000120(n)%2]+char[1]+1`
-/

namespace A316344.P18173621597436067799
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000120 n) 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (((if ∃ j, f2 j = n then 1 else 0) + 1 : ℕ) : ℤ)

end

end A316344.P18173621597436067799

namespace A316344

/-- `Δ[A000120(n)%2]+char[1]+1` -/
def P18173621597436067799.Spec : Prop :=
  ∀ n, P18173621597436067799.a n = A316344 n

end A316344

/-! ## A316344.P12222898114171771494

`A316826((C(3, n+2)+1)*(n+1))`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A316344

/-- `A316826((C(3, n+2)+1)*(n+1))` -/
def P12222898114171771494.Spec : Prop :=
  ∀ n, P12222898114171771494.a n = A316344 n

theorem P12222898114171771494.correct : P12222898114171771494.Spec := by
  intro n
  simp only [A316344]

end A316344

/-! ## A316344.P11593940850757497545

`A063524(n)+A036577(n+1)`
-/

namespace A316344.P11593940850757497545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063524 n + A036577 (n + 1)

end

end A316344.P11593940850757497545

namespace A316344

/-- `A063524(n)+A036577(n+1)` -/
def P11593940850757497545.Spec : Prop :=
  ∀ n, P11593940850757497545.a n = A316344 n

end A316344

/-! ## A316344.P12220426074788153212

`A036577(A159075(n)+1+n)`
-/

namespace A316344.P12220426074788153212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036577 (A159075 n + 1 + (n : ℤ)).toNat

end

end A316344.P12220426074788153212

namespace A316344

/-- `A036577(A159075(n)+1+n)` -/
def P12220426074788153212.Spec : Prop :=
  ∀ n, P12220426074788153212.a n = A316344 n

end A316344

/-! ## A316344.P7856249856433155409

`A373565(n)+A029883(n+1)`
-/

namespace A316344.P7856249856433155409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373565 n + A029883 (n + 1)

end

end A316344.P7856249856433155409

namespace A316344

/-- `A373565(n)+A029883(n+1)` -/
def P7856249856433155409.Spec : Prop :=
  ∀ n, P7856249856433155409.a n = A316344 n

end A316344

/-! ## A316344.P3854620504323931105

`A036585(n+1)-A060576(n)`
-/

namespace A316344.P3854620504323931105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036585 (n + 1) - A060576 n

end

end A316344.P3854620504323931105

namespace A316344

/-- `A036585(n+1)-A060576(n)` -/
def P3854620504323931105.Spec : Prop :=
  ∀ n, P3854620504323931105.a n = A316344 n

end A316344

/-! ## A316344.P7650836219005940287

`A036577(1-(A063524(n)-n))`
-/

namespace A316344.P7650836219005940287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036577 (1 - (A063524 n - (n : ℤ))).toNat

end

end A316344.P7650836219005940287

namespace A316344

/-- `A036577(1-(A063524(n)-n))` -/
def P7650836219005940287.Spec : Prop :=
  ∀ n, P7650836219005940287.a n = A316344 n

end A316344

/-! ## A316344.P16275058593423683821

`A036577(n+1)*A293668(n)`
-/

namespace A316344.P16275058593423683821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036577 (n + 1) * A293668 n

end

end A316344.P16275058593423683821

namespace A316344

/-- `A036577(n+1)*A293668(n)` -/
def P16275058593423683821.Spec : Prop :=
  ∀ n, P16275058593423683821.a n = A316344 n

end A316344

/-! ## A316344.P5927827873475878132

`A036577(n+1)*A373565(n)`
-/

namespace A316344.P5927827873475878132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036577 (n + 1) * A373565 n

end

end A316344.P5927827873475878132

namespace A316344

/-- `A036577(n+1)*A373565(n)` -/
def P5927827873475878132.Spec : Prop :=
  ∀ n, P5927827873475878132.a n = A316344 n

end A316344

/-! ## A316344.P10398812763718738280

`lcm(A036577(n+1), A141044(n))`
-/

namespace A316344.P10398812763718738280
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A036577 (n + 1)) (A141044 n)

end

end A316344.P10398812763718738280

namespace A316344

/-- `lcm(A036577(n+1), A141044(n))` -/
def P10398812763718738280.Spec : Prop :=
  ∀ n, (P10398812763718738280.a n : ℤ) = A316344 n

end A316344

/-! ## A316344.P7019487283756884295

`A036577(n+1)*A171905(n+1)`
-/

namespace A316344.P7019487283756884295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036577 (n + 1) * A171905 (n + 1)

end

end A316344.P7019487283756884295

namespace A316344

/-- `A036577(n+1)*A171905(n+1)` -/
def P7019487283756884295.Spec : Prop :=
  ∀ n, P7019487283756884295.a n = A316344 n

end A316344

/-! ## A316344.P8034678017688826742

`A316826(n+1)*A369030(2*n)`
-/

namespace A316344.P8034678017688826742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316826 (n + 1) * A369030 (2 * n)

end

end A316344.P8034678017688826742

namespace A316344

/-- `A316826(n+1)*A369030(2*n)` -/
def P8034678017688826742.Spec : Prop :=
  ∀ n, P8034678017688826742.a n = A316344 n

end A316344

/-! ## A316344.P8991421750301100960

`A036577(A171905(n+2)²+n)`
-/

namespace A316344.P8991421750301100960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036577 (A171905 (n + 2) ^ 2 + (n : ℤ)).toNat

end

end A316344.P8991421750301100960

namespace A316344

/-- `A036577(A171905(n+2)²+n)` -/
def P8991421750301100960.Spec : Prop :=
  ∀ n, P8991421750301100960.a n = A316344 n

end A316344

/-! ## A316344.P6960721665327790244

`A316826(A339597(n-char[1]))`
-/

namespace A316344.P6960721665327790244
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316826 (A339597 (n - (if ∃ j, f1 j = n then 1 else 0))).toNat

end

end A316344.P6960721665327790244

namespace A316344

/-- `A316826(A339597(n-char[1]))` -/
def P6960721665327790244.Spec : Prop :=
  ∀ n, P6960721665327790244.a n = A316344 n

end A316344

/-! ## A316344.P14650941553955841208

`A036581(A026147(n+1)+char[1])`
-/

namespace A316344.P14650941553955841208
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036581 (A026147 (n + 1) + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)).toNat

end

end A316344.P14650941553955841208

namespace A316344

/-- `A036581(A026147(n+1)+char[1])` -/
def P14650941553955841208.Spec : Prop :=
  ∀ n, P14650941553955841208.a n = A316344 n

end A316344

/-! ## A316344.P9867045491968491399

`A091297(A000069(n+1)+1)+char[1]`
-/

namespace A316344.P9867045491968491399
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091297 (A000069 (n + 1) + 1).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A316344.P9867045491968491399

namespace A316344

/-- `A091297(A000069(n+1)+1)+char[1]` -/
def P9867045491968491399.Spec : Prop :=
  ∀ n, P9867045491968491399.a n = A316344 n

end A316344

/-!
# A316345: An example of a word that is uniform morphic and recurrent, but neither pure morphic nor primitive morphic.

The programs for A316345, the canonical program `A316345.P14622171126567751218` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A316345 has offset 0).

The definition of A316345 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A316345.P14622171126567751218

`1-A151666(A246159(n))`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A316345

/-- `1-A151666(A246159(n))` -/
def P14622171126567751218.Spec : Prop :=
  ∀ n, P14622171126567751218.a n = A316345 n

theorem P14622171126567751218.correct : P14622171126567751218.Spec := by
  intro n
  simp only [A316345]

end A316345

/-! ## A316345.P13261688804654786406

`and(1, A038558(A309952(n)))`
-/

namespace A316345.P13261688804654786406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A038558 (A309952 n).toNat)

end

end A316345.P13261688804654786406

namespace A316345

/-- `and(1, A038558(A309952(n)))` -/
def P13261688804654786406.Spec : Prop :=
  ∀ n, P13261688804654786406.a n = A316345 n

end A316345

/-! ## A316345.P13980701614128898034

`and(A010059(n), A356352(n))`
-/

namespace A316345.P13980701614128898034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A010059 n) (A356352 n)

end

end A316345.P13980701614128898034

namespace A316345

/-- `and(A010059(n), A356352(n))` -/
def P13980701614128898034.Spec : Prop :=
  ∀ n, P13980701614128898034.a n = A316345 n

end A316345

/-! ## A316345.P10130060031908040164

`A010059(char[A001196(n)]+n)`
-/

namespace A316345.P10130060031908040164
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001196 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010059 ((if ∃ j, f1 j = (n : ℤ) then 1 else 0) + n)

end

end A316345.P10130060031908040164

namespace A316345

/-- `A010059(char[A001196(n)]+n)` -/
def P10130060031908040164.Spec : Prop :=
  ∀ n, P10130060031908040164.a n = A316345 n

end A316345

/-! ## A316345.P12605822981049898567

`A010059(n)-char[A001196(n)]`
-/

namespace A316345.P12605822981049898567
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001196 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010059 n - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A316345.P12605822981049898567

namespace A316345

/-- `A010059(n)-char[A001196(n)]` -/
def P12605822981049898567.Spec : Prop :=
  ∀ n, P12605822981049898567.a n = A316345 n

end A316345

/-! ## A316345.P9216682684223802318

`and(A000051(A309952(n)), A010059(n))`
-/

namespace A316345.P9216682684223802318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000051 (A309952 n).toNat) (A010059 n)

end

end A316345.P9216682684223802318

namespace A316345

/-- `and(A000051(A309952(n)), A010059(n))` -/
def P9216682684223802318.Spec : Prop :=
  ∀ n, P9216682684223802318.a n = A316345 n

end A316345

/-! ## A316345.P7349610322719232333

`∑{p}[A059905(A300839(n)), A080116(#)]`
-/

namespace A316345.P7349610322719232333
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059905 (A300839 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A080116 p

end

end A316345.P7349610322719232333

namespace A316345

/-- `∑{p}[A059905(A300839(n)), A080116(#)]` -/
def P7349610322719232333.Spec : Prop :=
  ∀ n, P7349610322719232333.a n = A316345 n

end A316345

/-! ## A316345.P16354961420777869477

`∑{p}[A300839(A309952(n)), A080116(#)]`
-/

namespace A316345.P16354961420777869477
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300839 (A309952 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A080116 p

end

end A316345.P16354961420777869477

namespace A316345

/-- `∑{p}[A300839(A309952(n)), A080116(#)]` -/
def P16354961420777869477.Spec : Prop :=
  ∀ n, P16354961420777869477.a n = A316345 n

end A316345

/-! ## A316345.P6438337863877763040

`A038558(A309952(n))%xor(3, A014963(2*(n+1)))`
-/

namespace A316345.P6438337863877763040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A038558 (A309952 n).toNat) (Int.xor 3 (A014963 (2 * (n + 1))))

end

end A316345.P6438337863877763040

namespace A316345

/-- `A038558(A309952(n))%xor(3, A014963(2*(n+1)))` -/
def P6438337863877763040.Spec : Prop :=
  ∀ n, P6438337863877763040.a n = A316345 n

end A316345

/-! ## A316345.P4049122572232391719

`A353514(A276190(n))`
-/

namespace A316345.P4049122572232391719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353514 (A276190 n).toNat

end

end A316345.P4049122572232391719

namespace A316345

/-- `A353514(A276190(n))` -/
def P4049122572232391719.Spec : Prop :=
  ∀ n, P4049122572232391719.a n = A316345 n

end A316345

/-!
# A316346: a(n) = A316297(n+1)/A316297(n).

The programs for A316346, the canonical program `A316346.P17873710853413127166` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A316346 has offset 1).

The definition of A316346 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A316346.P17873710853413127166

`A316297(n+2)/A316297(n+1)`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A316346

/-- `A316297(n+2)/A316297(n+1)` -/
def P17873710853413127166.Spec : Prop :=
  ∀ n, P17873710853413127166.a n = (A316346 (n + 1) : ℚ)

end A316346

/-! ## A316346.P12886429158929260810

`(n+2)²/A335024(n+1)`
-/

namespace A316346.P12886429158929260810
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 2) ^ 2 : ℚ) / (A335024 (n + 1) : ℚ)

end

end A316346.P12886429158929260810

namespace A316346

/-- `(n+2)²/A335024(n+1)` -/
def P12886429158929260810.Spec : Prop :=
  ∀ n, P12886429158929260810.a n = (A316346 (n + 1) : ℚ)

end A316346

/-! ## A316346.P7009392683450393292

`A020725(n+1)/A335024(n+1)*A020725(n+1)`
-/

namespace A316346.P7009392683450393292
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A020725 (n + 1) : ℚ) / (A335024 (n + 1) : ℚ) * (A020725 (n + 1) : ℚ)

end

end A316346.P7009392683450393292

namespace A316346

/-- `A020725(n+1)/A335024(n+1)*A020725(n+1)` -/
def P7009392683450393292.Spec : Prop :=
  ∀ n, P7009392683450393292.a n = (A316346 (n + 1) : ℚ)

end A316346

/-! ## A316346.P13835389263776591987

`ceil(A308217(2*(n+1))^2/A335024(n+1))`
-/

namespace A316346.P13835389263776591987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A308217 (2 * (n + 1)) ^ 2 : ℚ) / (A335024 (n + 1) : ℚ)⌉

end

end A316346.P13835389263776591987

namespace A316346

/-- `ceil(A308217(2*(n+1))^2/A335024(n+1))` -/
def P13835389263776591987.Spec : Prop :=
  ∀ n, P13835389263776591987.a n = A316346 (n + 1)

end A316346

/-! ## A316346.P7003123333505306677

`A000027(A008794(2*(n+2))/A335024(n+1))`
-/

namespace A316346.P7003123333505306677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (SequenceMachineLib.roundAway ((A008794 (2 * (n + 2)) : ℚ) / (A335024 (n + 1) : ℚ))).toNat

end

end A316346.P7003123333505306677

namespace A316346

/-- `A000027(A008794(2*(n+2))/A335024(n+1))` -/
def P7003123333505306677.Spec : Prop :=
  ∀ n, P7003123333505306677.a n = A316346 (n + 1)

end A316346

/-! ## A316346.P11786649395548599003

`(n+2)*ratio[A002805(n+1)]`
-/

namespace A316346.P11786649395548599003
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002805 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℚ) * ((f1 (n + 1) : ℚ) / (f1 n : ℚ))

end

end A316346.P11786649395548599003

namespace A316346

/-- `(n+2)*ratio[A002805(n+1)]` -/
def P11786649395548599003.Spec : Prop :=
  ∀ n, P11786649395548599003.a n = (A316346 (n + 1) : ℚ)

end A316346

/-! ## A316346.P7080163943001668853

`(A187487(n+2)+A001008(n+2))/A002805(n+1)`
-/

namespace A316346.P7080163943001668853
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A187487 (n + 2) + A001008 (n + 2) : ℚ) / (A002805 (n + 1) : ℚ)

end

end A316346.P7080163943001668853

namespace A316346

/-- `(A187487(n+2)+A001008(n+2))/A002805(n+1)` -/
def P7080163943001668853.Spec : Prop :=
  ∀ n, P7080163943001668853.a n = (A316346 (n + 1) : ℚ)

end A316346

/-! ## A316346.P5674453423947507301

`ratio[A316297(n+1)]`
-/

namespace A316346.P5674453423947507301
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316297 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℚ) / (f1 n : ℚ)

end

end A316346.P5674453423947507301

namespace A316346

/-- `ratio[A316297(n+1)]` -/
def P5674453423947507301.Spec : Prop :=
  ∀ n, P5674453423947507301.a n = (A316346 (n + 1) : ℚ)

end A316346

/-!
# A316347: a(n) = n^2 mod(10^m), where m is the number of digits in n (written in base 10).

The programs for A316347, the canonical program `A316347.P10556341811783083383` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A316347 has offset 0).

The definition of A316347 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A316347.P10674138245822225004

`n²%(10^A055642(n))`
-/

namespace A316347.P10674138245822225004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n ^ 2 : ℤ) (SequenceMachineLib.roundAway ((10 : ℚ) ^ (A055642 n : ℤ)))

end

end A316347.P10674138245822225004

namespace A316347

/-- `n²%(10^A055642(n))` -/
def P10674138245822225004.Spec : Prop :=
  ∀ n, P10674138245822225004.a n = A316347 n

end A316347

/-! ## A316347.P10556341811783083383

`A000290(n)%(A178914(n)+n)`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A316347

/-- `A000290(n)%(A178914(n)+n)` -/
def P10556341811783083383.Spec : Prop :=
  ∀ n, P10556341811783083383.a n = A316347 n

theorem P10556341811783083383.correct : P10556341811783083383.Spec := by
  intro n
  simp only [A316347]

end A316347

/-! ## A316347.P4311523171480573376

`A038608(n)²%(A061601(n)+1+n)`
-/

namespace A316347.P4311523171480573376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A038608 n ^ 2) (A061601 n + 1 + (n : ℤ))

end

end A316347.P4311523171480573376

namespace A316347

/-- `A038608(n)²%(A061601(n)+1+n)` -/
def P4311523171480573376.Spec : Prop :=
  ∀ n, P4311523171480573376.a n = A316347 n

end A316347

/-! ## A316347.P7135026405319444826

`∑[A004273(n)]%(A061601(n)+1+n)`
-/

namespace A316347.P7135026405319444826
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A061601 n + 1 + (n : ℤ))

end

end A316347.P7135026405319444826

namespace A316347

/-- `∑[A004273(n)]%(A061601(n)+1+n)` -/
def P7135026405319444826.Spec : Prop :=
  ∀ n, P7135026405319444826.a n = A316347 n

end A316347

/-! ## A316347.P18202922887855255650

`A004525(2*n)²%(A061601(n)+1+n)`
-/

namespace A316347.P18202922887855255650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004525 (2 * n) ^ 2) (A061601 n + 1 + (n : ℤ))

end

end A316347.P18202922887855255650

namespace A316347

/-- `A004525(2*n)²%(A061601(n)+1+n)` -/
def P18202922887855255650.Spec : Prop :=
  ∀ n, P18202922887855255650.a n = A316347 n

end A316347

/-!
# A316348: a(n) is the smallest k > 1 such that gcd(k, m^k - m) = 1 for all m = 2,...,n.

The programs for A316348, there is no canonical definition to state claims against.
-/

/-! ## A316348.P10967823696378889226

`A205149(A088524(n+3)!)`
-/

namespace A316348.P10967823696378889226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205149 (Nat.factorial (A088524 (n + 3)).toNat)

end

end A316348.P10967823696378889226

/-! ## A316348.P4761191033949471390

`A360573(A281469(or(3, 2*n)))`
-/

namespace A316348.P4761191033949471390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360573 (A281469 (Nat.lor 3 (2 * n))).toNat

end

end A316348.P4761191033949471390

/-! ## A316348.P5730525337313257382

`filter[A212792(n+1), A011676(#)]`
-/

namespace A316348.P5730525337313257382
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212792 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A011676 (f1 j).toNat = 1) n)

end

end A316348.P5730525337313257382

/-! ## A316348.P16335765818189732518

`filter[A212792(n+1), A064911(#)]`
-/

namespace A316348.P16335765818189732518
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212792 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A064911 (f1 j).toNat = 1) n)

end

end A316348.P16335765818189732518

/-!
# A316350: Positive integers x that are x/log(x) smooth, that is, if a prime p divides x, then p <= x/log(x).

The programs for A316350, the canonical program `A316350.P8002183459827598923` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A316350 has offset 1).

The definition of A316350 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6390 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A316350.P8002183459827598923

`lt[log(n+1), A052126(n+1)]+1`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A316350

/-- `lt[log(n+1), A052126(n+1)]+1` -/
def P8002183459827598923.Spec : Prop :=
  ∀ n, (P8002183459827598923.a n : ℤ) = A316350 (n + 1)

theorem P8002183459827598923.correct : P8002183459827598923.Spec := by
  intro n
  simp only [A316350, Nat.add_sub_cancel]

end A316350

/-! ## A316350.P15799863133570925275

`lt[∏{p}[n, #!], ϕ^n]`
-/

namespace A316350.P15799863133570925275
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), Nat.factorial p

def f3 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.goldenRatio ^ n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f3 j) n

end

end A316350.P15799863133570925275

namespace A316350

/-- `lt[∏{p}[n, #!], ϕ^n]` -/
def P15799863133570925275.Spec : Prop :=
  ∀ n, (P15799863133570925275.a n : ℤ) = A316350 (n + 1)

end A316350

/-! ## A316350.P12530052859453783737

`record[gcd(n, A283052(n+1))]`
-/

namespace A316350.P12530052859453783737
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A283052 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A316350.P12530052859453783737

namespace A316350

/-- `record[gcd(n, A283052(n+1))]` -/
def P12530052859453783737.Spec : Prop :=
  ∀ n, (P12530052859453783737.a n : ℤ) = A316350 (n + 1)

end A316350

/-! ## A316350.P9990431876765538933

`lt[A334486(n), A335125(2*(n+1))]+1`
-/

namespace A316350.P9990431876765538933
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334486 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335125 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A316350.P9990431876765538933

namespace A316350

/-- `lt[A334486(n), A335125(2*(n+1))]+1` -/
def P9990431876765538933.Spec : Prop :=
  ∀ n, (P9990431876765538933.a n : ℤ) = A316350 (n + 1)

end A316350

/-! ## A316350.P10219236540189957444

`comp[A325163(n+1)%A022559(n+2)]`
-/

namespace A316350.P10219236540189957444
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A325163 (n + 1)) (A022559 (n + 2))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A316350.P10219236540189957444

namespace A316350

/-- `comp[A325163(n+1)%A022559(n+2)]` -/
def P10219236540189957444.Spec : Prop :=
  ∀ n, (P10219236540189957444.a n : ℤ) = A316350 (n + 1)

end A316350

/-!
# A316351: Numbers k such that k^2 + 1 has exactly four distinct prime factors.

The programs for A316351, the canonical program `A316351.P4823434394101690844` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A316351 has offset 1).

The definition of A316351 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2041 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A316351.P4823434394101690844

`eq[4, A128428(n+1)]+1`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A316351

/-- `eq[4, A128428(n+1)]+1` -/
def P4823434394101690844.Spec : Prop :=
  ∀ n, (P4823434394101690844.a n : ℤ) = A316351 (n + 1)

theorem P4823434394101690844.correct : P4823434394101690844.Spec := by
  intro n
  simp only [A316351, Nat.add_sub_cancel]

end A316351

/-! ## A316351.P9762847768284371153

`eq[4, A128428(A028310(n))]`
-/

namespace A316351.P9762847768284371153
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128428 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A316351.P9762847768284371153

namespace A316351

/-- `eq[4, A128428(A028310(n))]` -/
def P9762847768284371153.Spec : Prop :=
  ∀ n, (P9762847768284371153.a n : ℤ) = A316351 (n + 1)

end A316351

/-! ## A316351.P11697884409557194479

`eq[4, A001221(A278162(n))]`
-/

namespace A316351.P11697884409557194479
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A278162 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A316351.P11697884409557194479

namespace A316351

/-- `eq[4, A001221(A278162(n))]` -/
def P11697884409557194479.Spec : Prop :=
  ∀ n, (P11697884409557194479.a n : ℤ) = A316351 (n + 1)

end A316351

/-! ## A316351.P6707770041589155818

`A020725(eq[4, A128428(n+1)])`
-/

namespace A316351.P6707770041589155818
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128428 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A316351.P6707770041589155818

namespace A316351

/-- `A020725(eq[4, A128428(n+1)])` -/
def P6707770041589155818.Spec : Prop :=
  ∀ n, P6707770041589155818.a n = A316351 (n + 1)

end A316351

/-! ## A316351.P7730772043072313901

`A065475(eq[4, A128428(n+1)])`
-/

namespace A316351.P7730772043072313901
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128428 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A316351.P7730772043072313901

namespace A316351

/-- `A065475(eq[4, A128428(n+1)])` -/
def P7730772043072313901.Spec : Prop :=
  ∀ n, P7730772043072313901.a n = A316351 (n + 1)

end A316351

/-! ## A316351.P13947029300225836387

`eq[4, A128428(A233583(n+1))]`
-/

namespace A316351.P13947029300225836387
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128428 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A316351.P13947029300225836387

namespace A316351

/-- `eq[4, A128428(A233583(n+1))]` -/
def P13947029300225836387.Spec : Prop :=
  ∀ n, (P13947029300225836387.a n : ℤ) = A316351 (n + 1)

end A316351

/-!
# A316354: Triangle read by rows: T(1,1)=1, T(n,k) = T(n,k+1)+T(n-k,max(2*floor(k/2)-1,1)) and T(n,k) = 0 if k > A316355(n).

The programs for A316354, there is no canonical definition to state claims against.
-/

/-! ## A316354.P11803322195474266275

`A048766(A048766(n+1)*A104980(2*(n+1)))`
-/

namespace A316354.P11803322195474266275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 (A048766 (n + 1) * A104980 (2 * (n + 1))).toNat

end

end A316354.P11803322195474266275

/-!
# A316355: 2k-1 appears 2k times after 2k-2 appears once.

The programs for A316355, the canonical program `A316355.P6644184729398382473` is in `Seq.B001.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A316355 has offset 0).

The definition of A316355 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A316355.P6644184729398382473

`A161205(n+1)-1`

The canonical program, it is in `Seq.B001.C012`.
-/

namespace A316355

/-- `A161205(n+1)-1` -/
def P6644184729398382473.Spec : Prop :=
  ∀ n, P6644184729398382473.a n = A316355 n

theorem P6644184729398382473.correct : P6644184729398382473.Spec := by
  intro n
  simp only [A316355]

end A316355

/-! ## A316355.P18089426785037520024

`∑[abs(Δ[char[n²]])]`
-/

namespace A316355.P18089426785037520024
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = n then 1 else 0

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(f2 (n + 1) : ℤ) - (f2 n : ℤ)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A316355.P18089426785037520024

namespace A316355

/-- `∑[abs(Δ[char[n²]])]` -/
def P18089426785037520024.Spec : Prop :=
  ∀ n, P18089426785037520024.a n = A316355 n

end A316355

/-! ## A316355.P2505008291838735658

`row(comp[round(sqrt(n))²+n])-1`
-/

namespace A316355.P2505008291838735658
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (n : ℝ)) ^ 2 + (n : ℤ)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.triRow (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n) : ℤ) - 1

end

end A316355.P2505008291838735658

namespace A316355

/-- `row(comp[round(sqrt(n))²+n])-1` -/
def P2505008291838735658.Spec : Prop :=
  ∀ n, P2505008291838735658.a n = A316355 n

end A316355

/-! ## A316355.P4655419770564185703

`a(n-(a(n-2)+2))+2` with `a(0)=0, a(1)=1, a(2)=1`
-/

namespace A316355.P4655419770564185703
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 1] fun n a =>
  a (n - (a (n - 2) + 2)) + 2

end

end A316355.P4655419770564185703

namespace A316355

/-- `a(n-(a(n-2)+2))+2` -/
def P4655419770564185703.Spec : Prop :=
  ∀ n, (P4655419770564185703.a n : ℤ) = A316355 n

end A316355

/-! ## A316355.P10361802738912851590

`2*n-∪[2*n+1, 4*∑[n]]`
-/

namespace A316355.P10361802738912851590
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * (∑ j ∈ Finset.range (n + 1), f3 j)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - (SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f2 j = x) n : ℤ)

end

end A316355.P10361802738912851590

namespace A316355

/-- `2*n-∪[2*n+1, 4*∑[n]]` -/
def P10361802738912851590.Spec : Prop :=
  ∀ n, P10361802738912851590.a n = A316355 n

end A316355

/-! ## A316355.P6150572981308049683

`abs(∪[2*n+1, (n+1)*2*n]-2*n)`
-/

namespace A316355.P6150572981308049683
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * (2 * n)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f2 j = x) n : ℤ) - (2 * n : ℤ)|

end

end A316355.P6150572981308049683

namespace A316355

/-- `abs(∪[2*n+1, (n+1)*2*n]-2*n)` -/
def P6150572981308049683.Spec : Prop :=
  ∀ n, P6150572981308049683.a n = A316355 n

end A316355

/-! ## A316355.P8499042827158987379

`A049206(A265359(n+1))`
-/

namespace A316355.P8499042827158987379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049206 (A265359 (n + 1)).toNat

end

end A316355.P8499042827158987379

namespace A316355

/-- `A049206(A265359(n+1))` -/
def P8499042827158987379.Spec : Prop :=
  ∀ n, P8499042827158987379.a n = A316355 n

end A316355

/-! ## A316355.P10467189490974918430

`∑[A266298(n+1)]-1`
-/

namespace A316355.P10467189490974918430
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266298 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A316355.P10467189490974918430

namespace A316355

/-- `∑[A266298(n+1)]-1` -/
def P10467189490974918430.Spec : Prop :=
  ∀ n, P10467189490974918430.a n = A316355 n

end A316355

/-! ## A316355.P2368253242572881786

`A174805(n+1)-(n+3)`
-/

namespace A316355.P2368253242572881786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174805 (n + 1) - (n + 3 : ℤ)

end

end A316355.P2368253242572881786

namespace A316355

/-- `A174805(n+1)-(n+3)` -/
def P2368253242572881786.Spec : Prop :=
  ∀ n, P2368253242572881786.a n = A316355 n

end A316355

/-!
# A316356: a(0) = 1 and a(n) = A224704(n) - A224704(n-1).

The programs for A316356, there is no canonical definition to state claims against.
-/

/-! ## A316356.P13566103540921601033

`A256502(A049870(n))-A049858(n)`
-/

namespace A316356.P13566103540921601033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256502 (A049870 n).toNat - A049858 n

end

end A316356.P13566103540921601033

/-! ## A316356.P13299815074559185068

`A000194(A099773(n²))`
-/

namespace A316356.P13299815074559185068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (A099773 (n ^ 2)).toNat

end

end A316356.P13299815074559185068

/-! ## A316356.P12177722253043881229

`A137735(A114464(n))-A057427(n)`
-/

namespace A316356.P12177722253043881229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137735 (A114464 n).toNat - A057427 n

end

end A316356.P12177722253043881229

/-! ## A316356.P2175694199539255413

`A000196(A127384(n))-A195174(n)`
-/

namespace A316356.P2175694199539255413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A127384 n).toNat - A195174 n

end

end A316356.P2175694199539255413

/-! ## A316356.P8307664510779674261

`A137735(A114464(n))-A178334(n)`
-/

namespace A316356.P8307664510779674261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137735 (A114464 n).toNat - A178334 n

end

end A316356.P8307664510779674261

/-!
# A316357: Partial sums of A316316.

The programs for A316357, the canonical program `A316357.P9502573526371032130` is in `Seq.B001.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A316357 has offset 0).

The definition of A316357 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A316357.P9049538364037346343

`ogf((1+3x+5x^2+2x^3+5x^4+3x^5+x^6)/(1-2x+2x^2-3x^3+3x^4-2x^5+2x^6-x^7))`
-/

namespace A316357.P9049538364037346343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 3, 5, 2, 5, 3, 1] [1, -2, 2, -3, 3, -2, 2, -1] n

end

end A316357.P9049538364037346343

namespace A316357

/-- `ogf((1+3x+5x^2+2x^3+5x^4+3x^5+x^6)/(1-2x+2x^2-3x^3+3x^4-2x^5+2x^6-x^7))` -/
def P9049538364037346343.Spec : Prop :=
  ∀ n, P9049538364037346343.a n = A316357 n

end A316357

/-! ## A316357.P9502573526371032130

`∑[A316316(n)]`

The canonical program, it is in `Seq.B001.C012`.
-/

namespace A316357

/-- `∑[A316316(n)]` -/
def P9502573526371032130.Spec : Prop :=
  ∀ n, P9502573526371032130.a n = A316357 n

theorem P9502573526371032130.correct : P9502573526371032130.Spec := by
  intro n
  simp only [A316357]

end A316357

/-! ## A316357.P8517348477483444745

`a(n-1)+4*(A008574(n)+n-A301672(n))` with `a(0)=1`
-/

namespace A316357.P8517348477483444745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + 4 * (A008574 n + ((n : ℤ) - A301672 n))

end

end A316357.P8517348477483444745

namespace A316357

/-- `a(n-1)+4*(A008574(n)+n-A301672(n))` -/
def P8517348477483444745.Spec : Prop :=
  ∀ n, P8517348477483444745.a n = A316357 n

end A316357

/-! ## A316357.P15581851599232572641

`∑[A008574(A315688(n)-A313680(n))]`
-/

namespace A316357.P15581851599232572641
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 (A315688 n - A313680 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A316357.P15581851599232572641

namespace A316357

/-- `∑[A008574(A315688(n)-A313680(n))]` -/
def P15581851599232572641.Spec : Prop :=
  ∀ n, P15581851599232572641.a n = A316357 n

end A316357

/-! ## A316357.P11881678776743482810

`∑[A008574(A313575(n)-A008574(n))]`
-/

namespace A316357.P11881678776743482810
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 (A313575 n - A008574 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A316357.P11881678776743482810

namespace A316357

/-- `∑[A008574(A313575(n)-A008574(n))]` -/
def P11881678776743482810.Spec : Prop :=
  ∀ n, P11881678776743482810.a n = A316357 n

end A316357

/-! ## A316357.P14641406494352575832

`∑[A008574(A314247(n)-A313237(n))]`
-/

namespace A316357.P14641406494352575832
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 (A314247 n - A313237 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A316357.P14641406494352575832

namespace A316357

/-- `∑[A008574(A314247(n)-A313237(n))]` -/
def P14641406494352575832.Spec : Prop :=
  ∀ n, P14641406494352575832.a n = A316357 n

end A316357

/-! ## A316357.P455439032573305346

`∑[A005843(A313416(n))-A008458(n)]`
-/

namespace A316357.P455439032573305346
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A313416 n).toNat - A008458 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A316357.P455439032573305346

namespace A316357

/-- `∑[A005843(A313416(n))-A008458(n)]` -/
def P455439032573305346.Spec : Prop :=
  ∀ n, P455439032573305346.a n = A316357 n

end A316357

/-! ## A316357.P16208725530217046847

`A063227(A000217(n)+2)-3`
-/

namespace A316357.P16208725530217046847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063227 (A000217 n + 2).toNat - 3

end

end A316357.P16208725530217046847

namespace A316357

/-- `A063227(A000217(n)+2)-3` -/
def P16208725530217046847.Spec : Prop :=
  ∀ n, P16208725530217046847.a n = A316357 n

end A316357

/-! ## A316357.P18208048472256898877

`A016813(A010761(A000124(n)))`
-/

namespace A316357.P18208048472256898877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016813 (A010761 (A000124 n).toNat).toNat

end

end A316357.P18208048472256898877

namespace A316357

/-- `A016813(A010761(A000124(n)))` -/
def P18208048472256898877.Spec : Prop :=
  ∀ n, P18208048472256898877.a n = A316357 n

end A316357

/-! ## A316357.P7922675965330202140

`A163980(A194275(n)+1)`
-/

namespace A316357.P7922675965330202140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163980 (A194275 n + 1).toNat

end

end A316357.P7922675965330202140

namespace A316357

/-- `A163980(A194275(n)+1)` -/
def P7922675965330202140.Spec : Prop :=
  ∀ n, P7922675965330202140.a n = A316357 n

end A316357

/-! ## A316357.P15502271439557457883

`A016813(A110654(A194275(n)))`
-/

namespace A316357.P15502271439557457883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016813 (A110654 (A194275 n).toNat).toNat

end

end A316357.P15502271439557457883

namespace A316357

/-- `A016813(A110654(A194275(n)))` -/
def P15502271439557457883.Spec : Prop :=
  ∀ n, P15502271439557457883.a n = A316357 n

end A316357

/-!
# A316358: Partial sums of A316317.

The programs for A316358, the canonical program `A316358.P13611071404692944280` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A316358 has offset 0).

The definition of A316358 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A316358.P13611071404692944280

`∑[A316317(n)]`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A316358

/-- `∑[A316317(n)]` -/
def P13611071404692944280.Spec : Prop :=
  ∀ n, P13611071404692944280.a n = A316358 n

theorem P13611071404692944280.correct : P13611071404692944280.Spec := by
  intro n
  simp only [A316358]

end A316358

/-! ## A316358.P18148282687014937481

`A398855(n)+A047541(n+1)`
-/

namespace A316358.P18148282687014937481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398855 n + A047541 (n + 1)

end

end A316358.P18148282687014937481

namespace A316358

/-- `A398855(n)+A047541(n+1)` -/
def P18148282687014937481.Spec : Prop :=
  ∀ n, P18148282687014937481.a n = A316358 n

end A316358

/-! ## A316358.P12966167641143166232

`Δ[A004525(n)]+A298785(n)-1`
-/

namespace A316358.P12966167641143166232
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (A298785 n - 1)

end

end A316358.P12966167641143166232

namespace A316358

/-- `Δ[A004525(n)]+A298785(n)-1` -/
def P12966167641143166232.Spec : Prop :=
  ∀ n, P12966167641143166232.a n = A316358 n

end A316358

/-! ## A316358.P625825801993286078

`A298785(n)-A267870(Δ[A004525(n)])`
-/

namespace A316358.P625825801993286078
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298785 n - A267870 (f1 (n + 1) - f1 n).toNat

end

end A316358.P625825801993286078

namespace A316358

/-- `A298785(n)-A267870(Δ[A004525(n)])` -/
def P625825801993286078.Spec : Prop :=
  ∀ n, P625825801993286078.a n = A316358 n

end A316358

/-! ## A316358.P13266428789244211096

`A298785(n)-A000035(A003188(n))`
-/

namespace A316358.P13266428789244211096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298785 n - A000035 (A003188 n).toNat

end

end A316358.P13266428789244211096

namespace A316358

/-- `A298785(n)-A000035(A003188(n))` -/
def P13266428789244211096.Spec : Prop :=
  ∀ n, P13266428789244211096.a n = A316358 n

end A316358

/-! ## A316358.P12957357752310892702

`∑[A310498(n)]-A194275(n)`
-/

namespace A316358.P12957357752310892702
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310498 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A194275 n

end

end A316358.P12957357752310892702

namespace A316358

/-- `∑[A310498(n)]-A194275(n)` -/
def P12957357752310892702.Spec : Prop :=
  ∀ n, P12957357752310892702.a n = A316358 n

end A316358

/-! ## A316358.P11916657801898946680

`∑[A310498(n)-A008854(n+1)]`
-/

namespace A316358.P11916657801898946680
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310498 n - A008854 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A316358.P11916657801898946680

namespace A316358

/-- `∑[A310498(n)-A008854(n+1)]` -/
def P11916657801898946680.Spec : Prop :=
  ∀ n, P11916657801898946680.a n = A316358 n

end A316358

/-! ## A316358.P14155943192293907036

`A304816(A268810(n))`
-/

namespace A316358.P14155943192293907036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304816 (A268810 n).toNat

end

end A316358.P14155943192293907036

namespace A316358

/-- `A304816(A268810(n))` -/
def P14155943192293907036.Spec : Prop :=
  ∀ n, P14155943192293907036.a n = A316358 n

end A316358

/-!
# A316359: a(n) is the number of solutions to the Diophantine equation i^3 + j^3 + k^3 = n^3, where 0 < i <= j <= k.

The programs for A316359, there is no canonical definition to state claims against.
-/

/-! ## A316359.P3067073873542653871

`Δ[A212100(n)-A212099(n)]/6`
-/

namespace A316359.P3067073873542653871
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212100 n - A212099 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) / 6

end

end A316359.P3067073873542653871

/-! ## A316359.P7261504171321785506

`Δ[A212096(n)/6]`
-/

namespace A316359.P7261504171321785506
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A212096 n : ℚ) / 6

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A316359.P7261504171321785506

/-! ## A316359.P17137037841048357375

`Δ[A008612(A212096(n))]`
-/

namespace A316359.P17137037841048357375
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008612 (A212096 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A316359.P17137037841048357375

/-! ## A316359.P12650155720626775179

`dr(A000330(Δ[A212096(n)]))`
-/

namespace A316359.P12650155720626775179
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212096 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A000330 (f1 (n + 1) - f1 n).toNat)

end

end A316359.P12650155720626775179

/-! ## A316359.P1397388922012636545

`A025465(Δ[∑[n]²])`
-/

namespace A316359.P1397388922012636545
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025465 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A316359.P1397388922012636545

/-!
# A316360: Numbers k such that (2^k-2)^2-3 is prime.

The programs for A316360, there is no canonical definition to state claims against.
-/

/-! ## A316360.P5200333007617562016

`A400825(n+1)+2`
-/

namespace A316360.P5200333007617562016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A400825 (n + 1) + 2

end

end A316360.P5200333007617562016

/-! ## A316360.P16709930386254461423

`A009056(A400825(n+1))`
-/

namespace A316360.P16709930386254461423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009056 (A400825 (n + 1)).toNat

end

end A316360.P16709930386254461423

/-!
# A316361: FDH numbers of strict integer partitions such that not every distinct subset has a different average.

The programs for A316361, there is no canonical definition to state claims against.
-/

/-! ## A316361.P5361664433554311633

`A107687(A095287(n+2)+1)`
-/

namespace A316361.P5361664433554311633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107687 (A095287 (n + 2) + 1).toNat

end

end A316361.P5361664433554311633

/-!
# A316362: Heinz numbers of strict integer partitions such that not every distinct subset has a different average.

The programs for A316362, there is no canonical definition to state claims against.
-/

/-! ## A316362.P14670092456564500581

`record[∏{p}[A325992(n+1), #]]`
-/

namespace A316362.P14670092456564500581
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325992 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n).natAbs, p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A316362.P14670092456564500581

/-! ## A316362.P3124024990131112801

`record[A007913(A325992(n+1))]`
-/

namespace A316362.P3124024990131112801
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (A325992 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A316362.P3124024990131112801

/-! ## A316362.P3200189859021821409

`record[A019555(A325992(n+2))]`
-/

namespace A316362.P3200189859021821409
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019555 (A325992 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A316362.P3200189859021821409

/-! ## A316362.P2690068496808425125

`record[A007947(A325992(n+3))]`
-/

namespace A316362.P2690068496808425125
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (A325992 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A316362.P2690068496808425125

/-! ## A316362.P7770134315849463287

`filter[A325992(n+1), A008966(#)]`
-/

namespace A316362.P7770134315849463287
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325992 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A316362.P7770134315849463287

/-!
# A316363: O.g.f. A(x) satisfies: Sum_{n>=1} (x + (-1)^n*A(x))^n / n = 0.

The programs for A316363, there is no canonical definition to state claims against.
-/

/-! ## A316363.P7082917337902960309

`A040000(n)*A307413(n)`
-/

namespace A316363.P7082917337902960309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040000 n * A307413 n

end

end A316363.P7082917337902960309

/-! ## A316363.P1054388767837434651

`abs(A040000(n)*A326564(n))`
-/

namespace A316363.P1054388767837434651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A040000 n * A326564 n|

end

end A316363.P1054388767837434651

/-! ## A316363.P2326228842887906912

`A036453(n+1)*A307413(n)`
-/

namespace A316363.P2326228842887906912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036453 (n + 1) * A307413 n

end

end A316363.P2326228842887906912

/-! ## A316363.P14241960835959846725

`A040001(2*n)*A307413(n)`
-/

namespace A316363.P14241960835959846725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040001 (2 * n) * A307413 n

end

end A316363.P14241960835959846725

/-! ## A316363.P198776285882888115

`A036452(2*n+1)*A307413(n)`
-/

namespace A316363.P198776285882888115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036452 (2 * n + 1) * A307413 n

end

end A316363.P198776285882888115

/-! ## A316363.P2318212220217107142

`A020639(A306645(n+1))*A307413(n)`
-/

namespace A316363.P2318212220217107142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A306645 (n + 1)).toNat * A307413 n

end

end A316363.P2318212220217107142

/-!
# A316364: Number of factorizations of n into factors > 1 such that every distinct submultiset of the factors has a different average.

The programs for A316364, there is no canonical definition to state claims against.
-/

/-! ## A316364.P16749389642958756007

`A045778(n+1)-A126010(2*n+3)`
-/

namespace A316364.P16749389642958756007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045778 (n + 1) - A126010 (2 * n + 3)

end

end A316364.P16749389642958756007

/-! ## A316364.P8992752030998972838

`A084558(A084558(n)^A088434(n+1))`
-/

namespace A316364.P8992752030998972838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084558 (SequenceMachineLib.roundAway ((A084558 n : ℚ) ^ (A088434 (n + 1) : ℤ))).toNat

end

end A316364.P8992752030998972838

/-! ## A316364.P7328610624884647132

`A045778(1+n)-A025465(A183135(n))`
-/

namespace A316364.P7328610624884647132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045778 (1 + n) - A025465 (A183135 n).toNat

end

end A316364.P7328610624884647132

/-! ## A316364.P5540965929507779304

`or(A335462(2*(n+1)), A381452(n+1))`
-/

namespace A316364.P5540965929507779304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A335462 (2 * (n + 1))) (A381452 (n + 1))

end

end A316364.P5540965929507779304

/-! ## A316364.P2026117945043900100

`A045778(n+1)-A129251(A186424(2*n))`
-/

namespace A316364.P2026117945043900100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045778 (n + 1) - A129251 (A186424 (2 * n)).toNat

end

end A316364.P2026117945043900100

/-!
# A316365: Number of factorizations of n into factors > 1 such that every distinct subset of the factors has a different sum.

The programs for A316365, there is no canonical definition to state claims against.
-/

/-! ## A316365.P18353974728213233252

`A350656(A218320(n+1)%A218289(n))`
-/

namespace A316365.P18353974728213233252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350656 (Int.tmod (A218320 (n + 1)) (A218289 n)).toNat

end

end A316365.P18353974728213233252

/-! ## A316365.P11689385513873363294

`∑{d}[A002033(n), A001221(A014739(#))]`
-/

namespace A316365.P11689385513873363294
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002033 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A001221 (A014739 d).toNat

end

end A316365.P11689385513873363294

/-! ## A316365.P5172473426138935307

`A364674(A001055(n+1)%A114281(n))`
-/

namespace A316365.P5172473426138935307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364674 (Int.tmod (A001055 (n + 1)) (A114281 n)).toNat

end

end A316365.P5172473426138935307

/-! ## A316365.P1982207059370618598

`A364675(A317141(n+1)%A119034(n+1))`
-/

namespace A316365.P1982207059370618598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364675 (Int.tmod (A317141 (n + 1)) (A119034 (n + 1))).toNat

end

end A316365.P1982207059370618598

/-!
# A316367: G.f. satisfies: A(x) = Sum_{n>=0} x^n / (1 - (n+1)*x*A(x)^2).

The programs for A316367, there is no canonical definition to state claims against.
-/

/-! ## A316367.P5717588448769878919

`A109964(A002866(n))+A001109(n)`
-/

namespace A316367.P5717588448769878919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109964 (A002866 n).toNat + A001109 n

end

end A316367.P5717588448769878919

/-! ## A316367.P5339675184252572634

`A219661(n+1)+A057367(A023001(n))`
-/

namespace A316367.P5339675184252572634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219661 (n + 1) + A057367 (A023001 n).toNat

end

end A316367.P5339675184252572634

/-!
# A316370: E.g.f.: Sum_{n>=0} x^n/n! * Product_{k=1..n} (n+1-k) + k*x.

The programs for A316370, there is no canonical definition to state claims against.
-/

/-! ## A316370.P14954040360476619133

`A008277(n+1)+floor(A005206((7*n-5)*a(n-1))/2)` with `a(0)=1`
-/

namespace A316370.P14954040360476619133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A008277 (n + 1) + ⌊(A005206 (((7 * n : ℤ) - 5) * a (n - 1)).toNat : ℚ) / 2⌋

end

end A316370.P14954040360476619133

/-! ## A316370.P10779545475150484095

`A007889(n)+A004526(A000354(n))`
-/

namespace A316370.P10779545475150484095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007889 n + A004526 (A000354 n).toNat

end

end A316370.P10779545475150484095

/-!
# A316371: G.f.: A(x) = Sum_{n>=0} binomial(3*(n+1), n)/(n+1) * x^n / (1+x)^(2*(n+1)).

The programs for A316371, the canonical program `A316371.P10661972529776802740` is in `Seq.B001.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A316371 has offset 0).

The definition of A316371 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 158 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A316371.P10661972529776802740

`A346627(n+1)+A346627(n)`

The canonical program, it is in `Seq.B001.C012`.
-/

namespace A316371

/-- `A346627(n+1)+A346627(n)` -/
def P10661972529776802740.Spec : Prop :=
  ∀ n, P10661972529776802740.a n = A316371 n

theorem P10661972529776802740.correct : P10661972529776802740.Spec := by
  intro n
  simp only [A316371]

end A316371

/-! ## A316371.P11482861948166436211

`A244225(A219651(n)+A121655(n))`
-/

namespace A316371.P11482861948166436211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244225 (A219651 n + A121655 n).toNat

end

end A316371.P11482861948166436211

namespace A316371

/-- `A244225(A219651(n)+A121655(n))` -/
def P11482861948166436211.Spec : Prop :=
  ∀ n, P11482861948166436211.a n = A316371 n

end A316371

/-! ## A316371.P13464485962837921939

`A277193(A243156(n))`
-/

namespace A316371.P13464485962837921939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277193 (A243156 n).toNat

end

end A316371.P13464485962837921939

namespace A316371

/-- `A277193(A243156(n))` -/
def P13464485962837921939.Spec : Prop :=
  ∀ n, P13464485962837921939.a n = A316371 n

end A316371

/-!
# A316372: Number of nXn 0..1 arrays with every element unequal to 0, 2, 3, 4, 6 or 8 king-move adjacent elements, with upper left element zero.

The programs for A316372, there is no canonical definition to state claims against.
-/

/-! ## A316372.P2307330556349497778

`A316376(∑[4*n]+1)`
-/

namespace A316372.P2307330556349497778
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316376 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A316372.P2307330556349497778

/-! ## A316372.P14953235816310518288

`record[A316376(∑[A266981(n)])]`
-/

namespace A316372.P14953235816310518288
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266981 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316376 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A316372.P14953235816310518288

/-! ## A316372.P17998240367521231991

`record[A316376(Δ[A235355(n)])]`
-/

namespace A316372.P17998240367521231991
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235355 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316376 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A316372.P17998240367521231991

/-! ## A316372.P14471776313897853128

`record[A316376(A330613(n+1))]`
-/

namespace A316372.P14471776313897853128
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316376 (A330613 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A316372.P14471776313897853128

/-! ## A316372.P11816584379124693869

`A316376(A001844(n))+char[17]`
-/

namespace A316372.P11816584379124693869
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  17

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316376 (A001844 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A316372.P11816584379124693869

/-!
# A316373: Number of nX5 0..1 arrays with every element unequal to 0, 2, 3, 4, 6 or 8 king-move adjacent elements, with upper left element zero.

The programs for A316373, there is no canonical definition to state claims against.
-/

/-! ## A316373.P9898392527742389988

`A316376(A374005(n+1))`
-/

namespace A316373.P9898392527742389988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316376 (A374005 (n + 1)).toNat

end

end A316373.P9898392527742389988

/-! ## A316373.P18248519881192556365

`A316376(A167499(n+3))`
-/

namespace A316373.P18248519881192556365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316376 (A167499 (n + 3)).toNat

end

end A316373.P18248519881192556365

/-! ## A316373.P13504534433392221828

`A316376(A155212(n)+13)`
-/

namespace A316373.P13504534433392221828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316376 (A155212 n + 13).toNat

end

end A316373.P13504534433392221828

/-! ## A316373.P6213140282207486238

`A316376(A056000(n)+15)`
-/

namespace A316373.P6213140282207486238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316376 (A056000 n + 15).toNat

end

end A316373.P6213140282207486238

/-! ## A316373.P209065807729174621

`A316376(eq[7, A066657(n)])`
-/

namespace A316373.P209065807729174621
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316376 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A316373.P209065807729174621

/-!
# A316374: Number of nX6 0..1 arrays with every element unequal to 0, 2, 3, 4, 6 or 8 king-move adjacent elements, with upper left element zero.

The programs for A316374, there is no canonical definition to state claims against.
-/

/-! ## A316374.P14862058187787268886

`A316376(A374007(n+1))`
-/

namespace A316374.P14862058187787268886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316376 (A374007 (n + 1)).toNat

end

end A316374.P14862058187787268886

/-! ## A316374.P1594308640776674707

`A316376(A166136(n+4))`
-/

namespace A316374.P1594308640776674707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316376 (A166136 (n + 4)).toNat

end

end A316374.P1594308640776674707

/-! ## A316374.P720139314131996989

`A316376(A056115(n)+21)`
-/

namespace A316374.P720139314131996989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316376 (A056115 n + 21).toNat

end

end A316374.P720139314131996989

/-! ## A316374.P6811623426652969837

`A316376(∑[A020710(n)]+16)`
-/

namespace A316374.P6811623426652969837
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020710 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316376 (∑ j ∈ Finset.range (n + 1), f1 j + 16).toNat

end

end A316374.P6811623426652969837

/-! ## A316374.P15873965350526478081

`A316376(A167614(n+4)+3)`
-/

namespace A316374.P15873965350526478081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316376 (A167614 (n + 4) + 3).toNat

end

end A316374.P15873965350526478081

/-!
# A316375: Number of nX7 0..1 arrays with every element unequal to 0, 2, 3, 4, 6 or 8 king-move adjacent elements, with upper left element zero.

The programs for A316375, there is no canonical definition to state claims against.
-/

/-! ## A316375.P12116102661230562168

`A316376(A374008(n+1))`
-/

namespace A316375.P12116102661230562168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316376 (A374008 (n + 1)).toNat

end

end A316375.P12116102661230562168

/-! ## A316375.P8377650420458710521

`A316376(A056119(n)+28)`
-/

namespace A316375.P8377650420458710521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316376 (A056119 n + 28).toNat

end

end A316375.P8377650420458710521

/-! ## A316375.P7309899986824018539

`A316376(eq[11, A066657(n)])`
-/

namespace A316375.P7309899986824018539
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316376 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A316375.P7309899986824018539

/-! ## A316375.P737541126841048569

`A316376(A167614(n+5)+4)`
-/

namespace A316375.P737541126841048569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316376 (A167614 (n + 5) + 4).toNat

end

end A316375.P737541126841048569

/-! ## A316375.P3310051608664857362

`A316376(A052905(n+3)+12)`
-/

namespace A316375.P3310051608664857362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316376 (A052905 (n + 3) + 12).toNat

end

end A316375.P3310051608664857362

/-!
# A316377: Number of nXn 0..1 arrays with every element unequal to 1, 2, 3, 4, 6 or 8 king-move adjacent elements, with upper left element zero.

The programs for A316377, there is no canonical definition to state claims against.
-/

/-! ## A316377.P2576377784082023514

`A316383(∑[4*n]+1)`
-/

namespace A316377.P2576377784082023514
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316383 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A316377.P2576377784082023514

/-! ## A316377.P9846546984699550453

`A316383(A001844(n))+A011736(n)`
-/

namespace A316377.P9846546984699550453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316383 (A001844 n).toNat + A011736 n

end

end A316377.P9846546984699550453

/-! ## A316377.P11445792839357603205

`A316383(A001844(n))+A185284(n)`
-/

namespace A316377.P11445792839357603205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316383 (A001844 n).toNat + A185284 n

end

end A316377.P11445792839357603205

/-! ## A316377.P1455082254157672935

`A145568(n)*A316383(A001844(n))`
-/

namespace A316377.P1455082254157672935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145568 n * A316383 (A001844 n).toNat

end

end A316377.P1455082254157672935

/-! ## A316377.P15044274576300275684

`A178334(n)*A316383(A001844(n))`
-/

namespace A316377.P15044274576300275684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178334 n * A316383 (A001844 n).toNat

end

end A316377.P15044274576300275684

/-!
# A316378: Number of nX3 0..1 arrays with every element unequal to 1, 2, 3, 4, 6 or 8 king-move adjacent elements, with upper left element zero.

The programs for A316378, there is no canonical definition to state claims against.
-/

/-! ## A316378.P17468756302982100822

`A316383(∑[n+2]+4)`
-/

namespace A316378.P17468756302982100822
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316383 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A316378.P17468756302982100822

/-! ## A316378.P9865329734333741502

`A316383(A167614(n+1))+A185284(n)`
-/

namespace A316378.P9865329734333741502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316383 (A167614 (n + 1)).toNat + A185284 n

end

end A316378.P9865329734333741502

/-! ## A316378.P15625801100439284473

`A096811(n)*A316383(A167614(n+1))`
-/

namespace A316378.P15625801100439284473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096811 n * A316383 (A167614 (n + 1)).toNat

end

end A316378.P15625801100439284473

/-! ## A316378.P4925734056952758051

`A291168(n)*A316383(A167614(n+1))`
-/

namespace A316378.P4925734056952758051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291168 n * A316383 (A167614 (n + 1)).toNat

end

end A316378.P4925734056952758051

/-! ## A316378.P7859323077941275775

`gcd(A000038(n), A316383(A167614(n+1)))`
-/

namespace A316378.P7859323077941275775
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A316383 (A167614 (n + 1)).toNat)

end

end A316378.P7859323077941275775

/-!
# A316379: Number of nX4 0..1 arrays with every element unequal to 1, 2, 3, 4, 6 or 8 king-move adjacent elements, with upper left element zero.

The programs for A316379, there is no canonical definition to state claims against.
-/

/-! ## A316379.P8135234203400620206

`A316383(A374004(n+1))`
-/

namespace A316379.P8135234203400620206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316383 (A374004 (n + 1)).toNat

end

end A316379.P8135234203400620206

/-! ## A316379.P13328883312716474724

`A316383(A052905(n)+9)`
-/

namespace A316379.P13328883312716474724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316383 (A052905 n + 9).toNat

end

end A316379.P13328883312716474724

/-! ## A316379.P11756635890986805208

`A316383(A055999(n)+10)`
-/

namespace A316379.P11756635890986805208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316383 (A055999 n + 10).toNat

end

end A316379.P11756635890986805208

/-! ## A316379.P14495044988341227158

`A316383(A167614(n+2)+1)`
-/

namespace A316379.P14495044988341227158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316383 (A167614 (n + 2) + 1).toNat

end

end A316379.P14495044988341227158

/-! ## A316379.P16758438756712582404

`A316383(A166136(n+2)-2)`
-/

namespace A316379.P16758438756712582404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316383 (A166136 (n + 2) - 2).toNat

end

end A316379.P16758438756712582404

/-!
# A316380: Number of nX5 0..1 arrays with every element unequal to 1, 2, 3, 4, 6 or 8 king-move adjacent elements, with upper left element zero.

The programs for A316380, there is no canonical definition to state claims against.
-/

/-! ## A316380.P6419440163316741314

`A316383(A374005(n+1))`
-/

namespace A316380.P6419440163316741314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316383 (A374005 (n + 1)).toNat

end

end A316380.P6419440163316741314

/-! ## A316380.P10657137307281297163

`A316383(A167499(n+3))`
-/

namespace A316380.P10657137307281297163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316383 (A167499 (n + 3)).toNat

end

end A316380.P10657137307281297163

/-! ## A316380.P5585632744039200929

`A316383(A155212(n)+13)`
-/

namespace A316380.P5585632744039200929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316383 (A155212 n + 13).toNat

end

end A316380.P5585632744039200929

/-! ## A316380.P1767230006484360376

`A316383(eq[6, A131818(n+1)])`
-/

namespace A316380.P1767230006484360376
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316383 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A316380.P1767230006484360376

/-! ## A316380.P13253225956738492480

`A316383(Δ[A264443(n)])`
-/

namespace A316380.P13253225956738492480
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316383 (f1 (n + 1) - f1 n).toNat

end

end A316380.P13253225956738492480

/-!
# A316381: Number of n X 6 0..1 arrays with every element unequal to 1, 2, 3, 4, 6 or 8 king-move adjacent elements, with upper left element zero.

The programs for A316381, there is no canonical definition to state claims against.
-/

/-! ## A316381.P9530831242098296198

`A316383(A374007(n+1))`
-/

namespace A316381.P9530831242098296198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316383 (A374007 (n + 1)).toNat

end

end A316381.P9530831242098296198

/-! ## A316381.P11100207859440853983

`A316383(A166136(n+4))`
-/

namespace A316381.P11100207859440853983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316383 (A166136 (n + 4)).toNat

end

end A316381.P11100207859440853983

/-! ## A316381.P15981306680816512358

`A316383(eq[7, A131818(n+1)])`
-/

namespace A316381.P15981306680816512358
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316383 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A316381.P15981306680816512358

/-! ## A316381.P5237564635714013470

`A316383(A052905(n+3))`
-/

namespace A316381.P5237564635714013470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316383 (A052905 (n + 3)).toNat

end

end A316381.P5237564635714013470

/-! ## A316381.P2265351995318790646

`A316383(A056119(n)+16)`
-/

namespace A316381.P2265351995318790646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316383 (A056119 n + 16).toNat

end

end A316381.P2265351995318790646

/-!
# A316382: Number of nX7 0..1 arrays with every element unequal to 1, 2, 3, 4, 6 or 8 king-move adjacent elements, with upper left element zero.

The programs for A316382, there is no canonical definition to state claims against.
-/

/-! ## A316382.P13241130982726450194

`A316383(A374008(n+1))`
-/

namespace A316382.P13241130982726450194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316383 (A374008 (n + 1)).toNat

end

end A316382.P13241130982726450194

/-! ## A316382.P14157175470911650976

`A316383(eq[11, A066657(n)])`
-/

namespace A316382.P14157175470911650976
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316383 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A316382.P14157175470911650976

/-! ## A316382.P17472906616789907570

`A316383(A166136(n+5)+1)`
-/

namespace A316382.P17472906616789907570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316383 (A166136 (n + 5) + 1).toNat

end

end A316382.P17472906616789907570

/-! ## A316382.P10526304508146944475

`A316383(eq[8, A131818(n+1)])`
-/

namespace A316382.P10526304508146944475
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316383 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A316382.P10526304508146944475

/-! ## A316382.P11795238001724315186

`A316383(A055999(n+4))`
-/

namespace A316382.P11795238001724315186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316383 (A055999 (n + 4)).toNat

end

end A316382.P11795238001724315186

/-!
# A316383: T(n,k)=Number of nXk 0..1 arrays with every element unequal to 1, 2, 3, 4, 6 or 8 king-move adjacent elements, with upper left element zero.

The programs for A316383, there is no canonical definition to state claims against.
-/

/-! ## A316383.P10210653175395320079

`A304597(n+1)+A116087(A250486(n))`
-/

namespace A316383.P10210653175395320079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304597 (n + 1) + A116087 (A250486 n).toNat

end

end A316383.P10210653175395320079

/-! ## A316383.P6801014944244485701

`A304597(n+1)+A014707(A022171(n))`
-/

namespace A316383.P6801014944244485701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304597 (n + 1) + A014707 (A022171 n).toNat

end

end A316383.P6801014944244485701

/-! ## A316383.P14777399115640958291

`A304597(n+1)+A037824(A022173(n))`
-/

namespace A316383.P14777399115640958291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304597 (n + 1) + A037824 (A022173 n).toNat

end

end A316383.P14777399115640958291

/-! ## A316383.P9008108158564672256

`A304597(n+1)+A094186(A174674(n))`
-/

namespace A316383.P9008108158564672256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304597 (n + 1) + A094186 (A174674 n).toNat

end

end A316383.P9008108158564672256

/-! ## A316383.P10908115792176610113

`A304597(n+1)-A016389(A022166(n))`
-/

namespace A316383.P10908115792176610113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304597 (n + 1) - A016389 (A022166 n).toNat

end

end A316383.P10908115792176610113

/-!
# A316384: Number of ways to stack n triangles symmetrically in a valley (pointing upwards or downwards depending on row parity).

The programs for A316384, there is no canonical definition to state claims against.
-/

/-! ## A316384.P2537387847382506092

`abs(A029838(n))`
-/

namespace A316384.P2537387847382506092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A029838 n|

end

end A316384.P2537387847382506092

/-! ## A316384.P428796048103656401

`abs(A082303(n))`
-/

namespace A316384.P428796048103656401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A082303 n|

end

end A316384.P428796048103656401

/-! ## A316384.P10308935091812882352

`A029838(n)*A057077(n)`
-/

namespace A316384.P10308935091812882352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029838 n * A057077 n

end

end A316384.P10308935091812882352

/-! ## A316384.P13168795778463798788

`A082303(n)*A087960(n)`
-/

namespace A316384.P13168795778463798788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082303 n * A087960 n

end

end A316384.P13168795778463798788

/-! ## A316384.P6352175273295244855

`gcd(A000038(n), A029838(n))`
-/

namespace A316384.P6352175273295244855
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A029838 n)

end

end A316384.P6352175273295244855

/-! ## A316384.P4940599176691470788

`lcm(A020985(n), A029838(n))`
-/

namespace A316384.P4940599176691470788
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 n) (A029838 n)

end

end A316384.P4940599176691470788

/-! ## A316384.P4805175037649209512

`lcm(A033999(n), A082303(n))`
-/

namespace A316384.P4805175037649209512
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A082303 n)

end

end A316384.P4805175037649209512

/-! ## A316384.P10737686609572551316

`gcd(A033322(n+1), A082303(n))`
-/

namespace A316384.P10737686609572551316
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A033322 (n + 1)) (A082303 n)

end

end A316384.P10737686609572551316

/-! ## A316384.P8369491520954308035

`lcm(A065357(n)*A082303(n), A065357(n))`
-/

namespace A316384.P8369491520954308035
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A065357 n * A082303 n) (A065357 n)

end

end A316384.P8369491520954308035

/-! ## A316384.P11742895917273816532

`A057077(n+1)*A082303(n)`
-/

namespace A316384.P11742895917273816532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057077 (n + 1) * A082303 n

end

end A316384.P11742895917273816532

/-! ## A316384.P16541570275360308787

`abs(A283000(2*n))`
-/

namespace A316384.P16541570275360308787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A283000 (2 * n)|

end

end A316384.P16541570275360308787

/-! ## A316384.P12719818720008532897

`abs(A093085(4*n))`
-/

namespace A316384.P12719818720008532897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A093085 (4 * n)|

end

end A316384.P12719818720008532897

/-! ## A316384.P16800470570592794803

`abs(A112171(4*n))`
-/

namespace A316384.P16800470570592794803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A112171 (4 * n)|

end

end A316384.P16800470570592794803

/-! ## A316384.P14493999399118359727

`abs(A208589(4*n))`
-/

namespace A316384.P14493999399118359727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A208589 (4 * n)|

end

end A316384.P14493999399118359727

/-!
# A316385: Lexicographically earliest sequence of distinct positive terms such that for any n > 0, a(n) AND a(2*n) = a(n) (where AND denotes the binary AND operator).

The programs for A316385, the canonical program `A316385.P15918225833941816828` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A316385 has offset 1).

The definition of A316385 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8191 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A316385.P4305082142980796287

`A059894(A316472(A059894(n+1)))`
-/

namespace A316385.P4305082142980796287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059894 (A316472 (A059894 (n + 1)).toNat).toNat

end

end A316385.P4305082142980796287

namespace A316385

/-- `A059894(A316472(A059894(n+1)))` -/
def P4305082142980796287.Spec : Prop :=
  ∀ n, P4305082142980796287.a n = A316385 (n + 1)

end A316385

/-! ## A316385.P1089216815602530828

`A003817(n+1)-A025480(A054429(n+1))`
-/

namespace A316385.P1089216815602530828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003817 (n + 1) - A025480 (A054429 (n + 1)).toNat

end

end A316385.P1089216815602530828

namespace A316385

/-- `A003817(n+1)-A025480(A054429(n+1))` -/
def P1089216815602530828.Spec : Prop :=
  ∀ n, P1089216815602530828.a n = A316385 (n + 1)

end A316385

/-! ## A316385.P8150004171932576019

`A003817(n+1)-A025480(A346306(Δ[n²])/2)`
-/

namespace A316385.P8150004171932576019
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003817 (n + 1) - A025480 (SequenceMachineLib.roundAway ((A346306 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ) / 2)).toNat

end

end A316385.P8150004171932576019

namespace A316385

/-- `A003817(n+1)-A025480(A346306(Δ[n²])/2)` -/
def P8150004171932576019.Spec : Prop :=
  ∀ n, P8150004171932576019.a n = A316385 (n + 1)

end A316385

/-! ## A316385.P15918225833941816828

`A003817(n+1)-A025480((A035327(n+1)+A010078(n+2))/2)`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A316385

/-- `A003817(n+1)-A025480((A035327(n+1)+A010078(n+2))/2)` -/
def P15918225833941816828.Spec : Prop :=
  ∀ n, P15918225833941816828.a n = A316385 (n + 1)

theorem P15918225833941816828.correct : P15918225833941816828.Spec := by
  intro n
  simp only [A316385, Nat.add_sub_cancel]

end A316385

/-! ## A316385.P17851078767613546547

`A059893(A153151(A316472(A059893(A153151(n+1)))))`
-/

namespace A316385.P17851078767613546547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059893 (A153151 (A316472 (A059893 (A153151 (n + 1)).toNat).toNat).toNat).toNat

end

end A316385.P17851078767613546547

namespace A316385

/-- `A059893(A153151(A316472(A059893(A153151(n+1)))))` -/
def P17851078767613546547.Spec : Prop :=
  ∀ n, P17851078767613546547.a n = A316385 (n + 1)

end A316385

/-! ## A316385.P15241752390086449663

`A062383(n+1)-A110963(A054429(2*(n+1)))`
-/

namespace A316385.P15241752390086449663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062383 (n + 1) - A110963 (A054429 (2 * (n + 1))).toNat

end

end A316385.P15241752390086449663

namespace A316385

/-- `A062383(n+1)-A110963(A054429(2*(n+1)))` -/
def P15241752390086449663.Spec : Prop :=
  ∀ n, P15241752390086449663.a n = A316385 (n + 1)

end A316385

/-! ## A316385.P5026125078202240256

`A062383(n+1)-A003602(A054429(2*n+1))`
-/

namespace A316385.P5026125078202240256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062383 (n + 1) - A003602 (A054429 (2 * n + 1)).toNat

end

end A316385.P5026125078202240256

namespace A316385

/-- `A062383(n+1)-A003602(A054429(2*n+1))` -/
def P5026125078202240256.Spec : Prop :=
  ∀ n, P5026125078202240256.a n = A316385 (n + 1)

end A316385

/-! ## A316385.P12468785916676235455

`xor(A003817(n+1), A025480(A054429(2*(n+1))))`
-/

namespace A316385.P12468785916676235455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A003817 (n + 1)) (A025480 (A054429 (2 * (n + 1))).toNat)

end

end A316385.P12468785916676235455

namespace A316385

/-- `xor(A003817(n+1), A025480(A054429(2*(n+1))))` -/
def P12468785916676235455.Spec : Prop :=
  ∀ n, P12468785916676235455.a n = A316385 (n + 1)

end A316385

/-! ## A316385.P11376902414738220867

`A153141(A139706(n+1))`
-/

namespace A316385.P11376902414738220867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153141 (A139706 (n + 1)).toNat

end

end A316385.P11376902414738220867

namespace A316385

/-- `A153141(A139706(n+1))` -/
def P11376902414738220867.Spec : Prop :=
  ∀ n, P11376902414738220867.a n = A316385 (n + 1)

end A316385

/-! ## A316385.P12644953251294972326

`A153141(A004754(n+1)-A225381(n+1))`
-/

namespace A316385.P12644953251294972326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153141 (A004754 (n + 1) - A225381 (n + 1)).toNat

end

end A316385.P12644953251294972326

namespace A316385

/-- `A153141(A004754(n+1)-A225381(n+1))` -/
def P12644953251294972326.Spec : Prop :=
  ∀ n, P12644953251294972326.a n = A316385 (n + 1)

end A316385

/-! ## A316385.P8343342704783679949

`A153141(A059893(A316472(A153141(A059893(n+1)))))`
-/

namespace A316385.P8343342704783679949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153141 (A059893 (A316472 (A153141 (A059893 (n + 1)).toNat).toNat).toNat).toNat

end

end A316385.P8343342704783679949

namespace A316385

/-- `A153141(A059893(A316472(A153141(A059893(n+1)))))` -/
def P8343342704783679949.Spec : Prop :=
  ∀ n, P8343342704783679949.a n = A316385 (n + 1)

end A316385

/-! ## A316385.P17065066979477466863

`A132226(n+2)-A132223(2*n+1)+n`
-/

namespace A316385.P17065066979477466863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132226 (n + 2) - A132223 (2 * n + 1) + (n : ℤ)

end

end A316385.P17065066979477466863

namespace A316385

/-- `A132226(n+2)-A132223(2*n+1)+n` -/
def P17065066979477466863.Spec : Prop :=
  ∀ n, P17065066979477466863.a n = A316385 (n + 1)

end A316385

/-!
# A316386: Binomial transform of [0, 1, 2, -3, -4, 5, 6, -7, -8, ...].

The programs for A316386, the canonical program `A316386.P3567086635132274071` is in `Seq.B001.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A316386 has offset 0).

The definition of A316386 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A316386.P3567086635132274071

`n*A009545(n)`

The canonical program, it is in `Seq.B001.C012`.
-/

namespace A316386

/-- `n*A009545(n)` -/
def P3567086635132274071.Spec : Prop :=
  ∀ n, P3567086635132274071.a n = A316386 n

theorem P3567086635132274071.correct : P3567086635132274071.Spec := by
  intro n
  simp only [A316386]

end A316386

/-! ## A316386.P922090246157041309

`ogf((x-2x^3)/(1-4x+8x^2-8x^3+4x^4))`
-/

namespace A316386.P922090246157041309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, 0, -2] [1, -4, 8, -8, 4] n

end

end A316386.P922090246157041309

namespace A316386

/-- `ogf((x-2x^3)/(1-4x+8x^2-8x^3+4x^4))` -/
def P922090246157041309.Spec : Prop :=
  ∀ n, P922090246157041309.a n = A316386 n

end A316386

/-! ## A316386.P10984498004689984117

`4*a(n-1)-8*a(n-2)+8*a(n-3)-4*a(n-4)` with `a(0)=0, a(1)=1, a(2)=4, a(3)=6`
-/

namespace A316386.P10984498004689984117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 4, 6] fun n a =>
  4 * a (n - 1) - 8 * a (n - 2) + 8 * a (n - 3) - 4 * a (n - 4)

end

end A316386.P10984498004689984117

namespace A316386

/-- `4*a(n-1)-8*a(n-2)+8*a(n-3)-4*a(n-4)` -/
def P10984498004689984117.Spec : Prop :=
  ∀ n, P10984498004689984117.a n = A316386 n

end A316386

/-! ## A316386.P9181892295292359793

`n*A138231(2*n)`
-/

namespace A316386.P9181892295292359793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A138231 (2 * n)

end

end A316386.P9181892295292359793

namespace A316386

/-- `n*A138231(2*n)` -/
def P9181892295292359793.Spec : Prop :=
  ∀ n, P9181892295292359793.a n = A316386 n

end A316386

/-! ## A316386.P13531445485153974339

`n*Δ[-A146559(n)]`
-/

namespace A316386.P13531445485153974339
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A146559 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (f1 (n + 1) - f1 n)

end

end A316386.P13531445485153974339

namespace A316386

/-- `n*Δ[-A146559(n)]` -/
def P13531445485153974339.Spec : Prop :=
  ∀ n, P13531445485153974339.a n = A316386 n

end A316386

/-! ## A316386.P8460633757643355786

`n*A138232(Δ[n²])`
-/

namespace A316386.P8460633757643355786
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A138232 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A316386.P8460633757643355786

namespace A316386

/-- `n*A138232(Δ[n²])` -/
def P8460633757643355786.Spec : Prop :=
  ∀ n, P8460633757643355786.a n = A316386 n

end A316386

/-! ## A316386.P4306792113814091136

`A046978(n)*A132344(n)`
-/

namespace A316386.P4306792113814091136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046978 n * A132344 n

end

end A316386.P4306792113814091136

namespace A316386

/-- `A046978(n)*A132344(n)` -/
def P4306792113814091136.Spec : Prop :=
  ∀ n, P4306792113814091136.a n = A316386 n

end A316386

/-! ## A316386.P1750047305639277197

`n*A099087(A263313(n))`
-/

namespace A316386.P1750047305639277197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A099087 (A263313 n).toNat

end

end A316386.P1750047305639277197

namespace A316386

/-- `n*A099087(A263313(n))` -/
def P1750047305639277197.Spec : Prop :=
  ∀ n, P1750047305639277197.a n = A316386 n

end A316386

/-! ## A316386.P6914930738365763990

`A190621(n)*A320770(n)`
-/

namespace A316386.P6914930738365763990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190621 n * A320770 n

end

end A316386.P6914930738365763990

namespace A316386

/-- `A190621(n)*A320770(n)` -/
def P6914930738365763990.Spec : Prop :=
  ∀ n, P6914930738365763990.a n = A316386 n

end A316386

/-! ## A316386.P12599177602531350390

`n*A099087(A028310(n)-1)`
-/

namespace A316386.P12599177602531350390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A099087 (A028310 n - 1).toNat

end

end A316386.P12599177602531350390

namespace A316386

/-- `n*A099087(A028310(n)-1)` -/
def P12599177602531350390.Spec : Prop :=
  ∀ n, P12599177602531350390.a n = A316386 n

end A316386

/-! ## A316386.P9302528900951947992

`n*(A118434(n)-A009116(n))`
-/

namespace A316386.P9302528900951947992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A118434 n - A009116 n)

end

end A316386.P9302528900951947992

namespace A316386

/-- `n*(A118434(n)-A009116(n))` -/
def P9302528900951947992.Spec : Prop :=
  ∀ n, P9302528900951947992.a n = A316386 n

end A316386

/-! ## A316386.P13261563086414599747

`n*(A090131(n)-A099087(n))`
-/

namespace A316386.P13261563086414599747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A090131 n - A099087 n)

end

end A316386.P13261563086414599747

namespace A316386

/-- `n*(A090131(n)-A099087(n))` -/
def P13261563086414599747.Spec : Prop :=
  ∀ n, P13261563086414599747.a n = A316386 n

end A316386

/-! ## A316386.P7295604408343872261

`n*(A137444(n)-A090131(n))`
-/

namespace A316386.P7295604408343872261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A137444 n - A090131 n)

end

end A316386.P7295604408343872261

namespace A316386

/-- `n*(A137444(n)-A090131(n))` -/
def P7295604408343872261.Spec : Prop :=
  ∀ n, P7295604408343872261.a n = A316386 n

end A316386

/-! ## A316386.P12602348390288010738

`n*(A099087(n)-A146559(n))`
-/

namespace A316386.P12602348390288010738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A099087 n - A146559 n)

end

end A316386.P12602348390288010738

namespace A316386

/-- `n*(A099087(n)-A146559(n))` -/
def P12602348390288010738.Spec : Prop :=
  ∀ n, P12602348390288010738.a n = A316386 n

end A316386

/-! ## A316386.P16691169581386992256

`n*(A136258(n)-A137444(n))`
-/

namespace A316386.P16691169581386992256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A136258 n - A137444 n)

end

end A316386.P16691169581386992256

namespace A316386

/-- `n*(A136258(n)-A137444(n))` -/
def P16691169581386992256.Spec : Prop :=
  ∀ n, P16691169581386992256.a n = A316386 n

end A316386

/-! ## A316386.P415552837462496785

`n*A016116(n)*A046978(n)`
-/

namespace A316386.P415552837462496785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A016116 n * A046978 n)

end

end A316386.P415552837462496785

namespace A316386

/-- `n*A016116(n)*A046978(n)` -/
def P415552837462496785.Spec : Prop :=
  ∀ n, P415552837462496785.a n = A316386 n

end A316386

/-! ## A316386.P17085662865926411045

`n*A046978(n)*A131572(n)`
-/

namespace A316386.P17085662865926411045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A046978 n * A131572 n)

end

end A316386.P17085662865926411045

namespace A316386

/-- `n*A046978(n)*A131572(n)` -/
def P17085662865926411045.Spec : Prop :=
  ∀ n, P17085662865926411045.a n = A316386 n

end A316386

/-! ## A316386.P16806357650027468565

`n*A166486(n)*A320770(n)`
-/

namespace A316386.P16806357650027468565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A166486 n * A320770 n)

end

end A316386.P16806357650027468565

namespace A316386

/-- `n*A166486(n)*A320770(n)` -/
def P16806357650027468565.Spec : Prop :=
  ∀ n, P16806357650027468565.a n = A316386 n

end A316386

/-! ## A316386.P9094140962422025350

`n*A320770(n)%A279676(n)`
-/

namespace A316386.P9094140962422025350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * Int.tmod (A320770 n) (A279676 n)

end

end A316386.P9094140962422025350

namespace A316386

/-- `n*A320770(n)%A279676(n)` -/
def P9094140962422025350.Spec : Prop :=
  ∀ n, P9094140962422025350.a n = A316386 n

end A316386

/-! ## A316386.P3586831694394914815

`n*(A146559(n)-A146559(n+1))`
-/

namespace A316386.P3586831694394914815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A146559 n - A146559 (n + 1))

end

end A316386.P3586831694394914815

namespace A316386

/-- `n*(A146559(n)-A146559(n+1))` -/
def P3586831694394914815.Spec : Prop :=
  ∀ n, P3586831694394914815.a n = A316386 n

end A316386

/-!
# A316388: a(n) = a(phi(n)) + a(n-phi(n)) with a(1) = a(2) = a(3) = 1.

The programs for A316388, the canonical program `A316388.P10220908694329927643` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A316388 has offset 1).

The definition of A316388 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(A000010(n+1)-1)+a(n-A000010(n+1))` (program `A316388.P10220908694329927643`, by `A316388.P10220908694329927643.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A316388.P4019904871240066925

`a(A000010(n+1)-1)+a(A051953(n+1)-1)` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A316388.P4019904871240066925
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 1] fun n a =>
  a (A000010 (n + 1) - 1).toNat + a (A051953 (n + 1) - 1).toNat

end

end A316388.P4019904871240066925

namespace A316388

/-- `a(A000010(n+1)-1)+a(A051953(n+1)-1)` -/
def P4019904871240066925.Spec : Prop :=
  ∀ n, (P4019904871240066925.a n : ℤ) = A316388 (n + 1)

theorem P4019904871240066925.correct : P4019904871240066925.Spec := by
  intro n
  simp only [A316388, Nat.add_sub_cancel, A316388.P4019904871240066925.a, A316388.P10220908694329927643.a, A000010, A000010.P4673923239450215316.a, A051953, A051953.P11179276897610979764.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A316388

/-! ## A316388.P10220908694329927643

`a(A000010(n+1)-1)+a(n-A000010(n+1))` with `a(0)=1, a(1)=1, a(2)=1`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A316388

/-- `a(A000010(n+1)-1)+a(n-A000010(n+1))` -/
def P10220908694329927643.Spec : Prop :=
  ∀ n, (P10220908694329927643.a n : ℤ) = A316388 (n + 1)

theorem P10220908694329927643.correct : P10220908694329927643.Spec := by
  intro n
  simp only [A316388, Nat.add_sub_cancel]

end A316388

/-! ## A316388.P15088016455382854974

`A008621(A127254(A024656(n))+A004273(n))`
-/

namespace A316388.P15088016455382854974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 (A127254 (A024656 n).toNat + A004273 n).toNat

end

end A316388.P15088016455382854974

namespace A316388

/-- `A008621(A127254(A024656(n))+A004273(n))` -/
def P15088016455382854974.Spec : Prop :=
  ∀ n, P15088016455382854974.a n = A316388 (n + 1)

end A316388

/-! ## A316388.P1999168781895681037

`∑[char[2*n]]-A118553(A047233(n+2))`
-/

namespace A316388.P1999168781895681037
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A118553 (A047233 (n + 2)).toNat

end

end A316388.P1999168781895681037

namespace A316388

/-- `∑[char[2*n]]-A118553(A047233(n+2))` -/
def P1999168781895681037.Spec : Prop :=
  ∀ n, P1999168781895681037.a n = A316388 (n + 1)

end A316388

/-! ## A316388.P6178201862734929888

`A008619(n)-A118553(A047233(n+2))²`
-/

namespace A316388.P6178201862734929888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n - A118553 (A047233 (n + 2)).toNat ^ 2

end

end A316388.P6178201862734929888

namespace A316388

/-- `A008619(n)-A118553(A047233(n+2))²` -/
def P6178201862734929888.Spec : Prop :=
  ∀ n, P6178201862734929888.a n = A316388 (n + 1)

end A316388

/-!
# A316389: Continued fraction expansion of largest root of x^3 - 7*x + 7.

The programs for A316389, there is no canonical definition to state claims against.
-/

/-! ## A316389.P2369372395915841576

`A039921(a(2-A049710(n))+n-2)` with `a(0)=1, a(1)=1, a(2)=2`
-/

namespace A316389.P2369372395915841576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2] fun n a =>
  A039921 (a (2 - A049710 n).toNat + ((n : ℤ) - 2)).toNat

end

end A316389.P2369372395915841576

/-!
# A316390: Number of permutations p of [n] such that the up-down signature of 0,p has nonnegative partial sums with a maximal value of three.

The programs for A316390, there is no canonical definition to state claims against.
-/

/-! ## A316390.P13979189640058305841

`A262165(n+3)-A262164(n+3)`
-/

namespace A316390.P13979189640058305841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262165 (n + 3) - A262164 (n + 3)

end

end A316390.P13979189640058305841

/-! ## A316390.P16037781957645775513

`A258829(A167614(n+2))`
-/

namespace A316390.P16037781957645775513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258829 (A167614 (n + 2)).toNat

end

end A316390.P16037781957645775513

/-! ## A316390.P9914206901761862844

`A258829(A152950(n+4))`
-/

namespace A316390.P9914206901761862844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258829 (A152950 (n + 4)).toNat

end

end A316390.P9914206901761862844

/-! ## A316390.P8633620264373474549

`A258829(A052905(n)+8)`
-/

namespace A316390.P8633620264373474549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258829 (A052905 n + 8).toNat

end

end A316390.P8633620264373474549

/-! ## A316390.P13441966533398718750

`A258829(A055999(n)+9)`
-/

namespace A316390.P13441966533398718750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258829 (A055999 n + 9).toNat

end

end A316390.P13441966533398718750

/-! ## A316390.P11661034536994431203

`A258829(eq[2, A141169(n)])`
-/

namespace A316390.P11661034536994431203
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141169 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258829 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A316390.P11661034536994431203

/-! ## A316390.P7165205494276954760

`A258829(eq[3, A002262(n)])`
-/

namespace A316390.P7165205494276954760
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258829 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A316390.P7165205494276954760

/-! ## A316390.P2137269251302205492

`A258829(eq[4, A166918(n)])`
-/

namespace A316390.P2137269251302205492
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166918 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258829 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A316390.P2137269251302205492

/-! ## A316390.P9114373818923346680

`record[A258829(A000096(n)+4)]`
-/

namespace A316390.P9114373818923346680
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258829 (A000096 n + 4).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A316390.P9114373818923346680

/-! ## A316390.P17072498638895970496

`A258829(A000217(n+3)+3)`
-/

namespace A316390.P17072498638895970496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258829 (A000217 (n + 3) + 3).toNat

end

end A316390.P17072498638895970496

/-!
# A316391: Number of permutations p of [n] such that the up-down signature of 0,p has nonnegative partial sums with a maximal value of four.

The programs for A316391, there is no canonical definition to state claims against.
-/

/-! ## A316391.P5930928640747402277

`A262166(n+4)-A262165(n+4)`
-/

namespace A316391.P5930928640747402277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262166 (n + 4) - A262165 (n + 4)

end

end A316391.P5930928640747402277

/-! ## A316391.P7533931302318993467

`A258829(abs(∑[n+5]+5-n)+4)`
-/

namespace A316391.P7533931302318993467
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258829 (|((∑ j ∈ Finset.range (n + 1), f1 j + 5 : ℕ) : ℤ) - (n : ℤ)| + 4).toNat

end

end A316391.P7533931302318993467

/-!
# A316392: Number of permutations p of [n] such that the up-down signature of 0,p has nonnegative partial sums with a maximal value of five.

The programs for A316392, there is no canonical definition to state claims against.
-/

/-! ## A316392.P3715195016999347190

`A262167(n+5)-A262166(n+5)`
-/

namespace A316392.P3715195016999347190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262167 (n + 5) - A262166 (n + 5)

end

end A316392.P3715195016999347190

/-! ## A316392.P10526216592143339461

`A258829(A167499(n+4))`
-/

namespace A316392.P10526216592143339461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258829 (A167499 (n + 4)).toNat

end

end A316392.P10526216592143339461

/-! ## A316392.P5255049396269167512

`A258829(eq[5, A002262(n)])`
-/

namespace A316392.P5255049396269167512
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258829 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A316392.P5255049396269167512

/-! ## A316392.P16504885545663601146

`A258829(eq[5, A141169(n)])`
-/

namespace A316392.P16504885545663601146
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141169 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258829 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A316392.P16504885545663601146

/-! ## A316392.P9934586694440092853

`A258829(eq[32, A059268(n)])`
-/

namespace A316392.P9934586694440092853
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  32

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258829 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A316392.P9934586694440092853

/-! ## A316392.P18051358151659187586

`A258829(A052905(n+2)+10)`
-/

namespace A316392.P18051358151659187586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258829 (A052905 (n + 2) + 10).toNat

end

end A316392.P18051358151659187586

/-! ## A316392.P14648678141975204262

`A258829(eq[6, A002260(n+1)])`
-/

namespace A316392.P14648678141975204262
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258829 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A316392.P14648678141975204262

/-!
# A316393: Number of permutations p of [n] such that the up-down signature of 0,p has nonnegative partial sums with a maximal value of six.

The programs for A316393, there is no canonical definition to state claims against.
-/

/-! ## A316393.P10682321444813989857

`A262168(n+6)-A262167(n+6)`
-/

namespace A316393.P10682321444813989857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262168 (n + 6) - A262167 (n + 6)

end

end A316393.P10682321444813989857

/-! ## A316393.P1447621765372614872

`A258829(eq[6, A002262(n)])`
-/

namespace A316393.P1447621765372614872
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258829 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A316393.P1447621765372614872

/-! ## A316393.P15159771156774222913

`A258829(eq[8, A141169(n)])`
-/

namespace A316393.P15159771156774222913
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141169 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258829 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A316393.P15159771156774222913

/-! ## A316393.P5959725619648500201

`A258829(eq[32, A166918(n)])`
-/

namespace A316393.P5959725619648500201
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  32

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166918 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258829 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A316393.P5959725619648500201

/-! ## A316393.P3163400118358267154

`A258829(A000096(n+5)+7)`
-/

namespace A316393.P3163400118358267154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258829 (A000096 (n + 5) + 7).toNat

end

end A316393.P3163400118358267154

/-! ## A316393.P10689651662183700724

`A258829(eq[7, A002260(n+1)])`
-/

namespace A316393.P10689651662183700724
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258829 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A316393.P10689651662183700724

/-! ## A316393.P2053727108277867650

`A258829(eq[7, A135223(n+1)])`
-/

namespace A316393.P2053727108277867650
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135223 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258829 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A316393.P2053727108277867650

/-!
# A316394: Number of permutations p of [n] such that the up-down signature of 0,p has nonnegative partial sums with a maximal value of seven.

The programs for A316394, there is no canonical definition to state claims against.
-/

/-! ## A316394.P2397291653627181063

`A262169(n+7)-A262168(n+7)`
-/

namespace A316394.P2397291653627181063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262169 (n + 7) - A262168 (n + 7)

end

end A316394.P2397291653627181063

/-! ## A316394.P17479418185367431065

`A258829(eq[7, A002262(n)])`
-/

namespace A316394.P17479418185367431065
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258829 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A316394.P17479418185367431065

/-! ## A316394.P10182527568569534611

`A258829(A167499(n+6)+2)`
-/

namespace A316394.P10182527568569534611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258829 (A167499 (n + 6) + 2).toNat

end

end A316394.P10182527568569534611

/-! ## A316394.P11961975443294201398

`A258829(A000096(n+6)+8)`
-/

namespace A316394.P11961975443294201398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258829 (A000096 (n + 6) + 8).toNat

end

end A316394.P11961975443294201398

/-! ## A316394.P3249519995300139350

`A258829(A000217(n+7)+7)`
-/

namespace A316394.P3249519995300139350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258829 (A000217 (n + 7) + 7).toNat

end

end A316394.P3249519995300139350

/-! ## A316394.P17254461929676120173

`A258829(eq[7, A144328(n+1)])`
-/

namespace A316394.P17254461929676120173
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258829 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A316394.P17254461929676120173

/-! ## A316394.P6779279041811742044

`A258829(eq[8, A002260(n+1)])`
-/

namespace A316394.P6779279041811742044
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258829 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A316394.P6779279041811742044

/-! ## A316394.P12708682306428173301

`A258829(eq[8, A135223(n+1)])`
-/

namespace A316394.P12708682306428173301
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135223 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258829 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A316394.P12708682306428173301

/-!
# A316395: Number of permutations p of [n] such that the up-down signature of 0,p has nonnegative partial sums with a maximal value of eight.

The programs for A316395, there is no canonical definition to state claims against.
-/

/-! ## A316395.P18368870310414108676

`A262170(n+8)-A262169(n+8)`
-/

namespace A316395.P18368870310414108676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262170 (n + 8) - A262169 (n + 8)

end

end A316395.P18368870310414108676

/-! ## A316395.P15002980963633901280

`A258829(eq[8, A002262(n)])`
-/

namespace A316395.P15002980963633901280
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258829 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A316395.P15002980963633901280

/-! ## A316395.P12329747947704440622

`A258829(A000096(n+7)+9)`
-/

namespace A316395.P12329747947704440622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258829 (A000096 (n + 7) + 9).toNat

end

end A316395.P12329747947704440622

/-! ## A316395.P1908342900116133212

`A258829(eq[9, A002260(n+1)])`
-/

namespace A316395.P1908342900116133212
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258829 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A316395.P1908342900116133212

/-! ## A316395.P98970162817552601

`A258829(eq[17, A158405(n+1)])`
-/

namespace A316395.P98970162817552601
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  17

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158405 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258829 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A316395.P98970162817552601

/-! ## A316395.P6659574188025671894

`A258829(eq[23, A037126(n+1)])`
-/

namespace A316395.P6659574188025671894
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  23

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037126 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258829 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A316395.P6659574188025671894

/-!
# A316396: Number of permutations p of [n] such that the up-down signature of 0,p has nonnegative partial sums with a maximal value of nine.

The programs for A316396, there is no canonical definition to state claims against.
-/

/-! ## A316396.P13927747859709507952

`A262171(n+9)-A262170(n+9)`
-/

namespace A316396.P13927747859709507952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262171 (n + 9) - A262170 (n + 9)

end

end A316396.P13927747859709507952

/-! ## A316396.P6665906931979332826

`A258829(eq[9, A002262(n)])`
-/

namespace A316396.P6665906931979332826
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258829 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A316396.P6665906931979332826

/-! ## A316396.P16409414889361113638

`A258829(eq[9, A144328(n+1)])`
-/

namespace A316396.P16409414889361113638
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258829 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A316396.P16409414889361113638

/-! ## A316396.P564562929012537290

`A258829(eq[10, A002260(n+1)])`
-/

namespace A316396.P564562929012537290
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258829 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A316396.P564562929012537290

/-! ## A316396.P18430918375395258458

`A258829(eq[19, A158405(n+1)])`
-/

namespace A316396.P18430918375395258458
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  19

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158405 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258829 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A316396.P18430918375395258458

/-! ## A316396.P12523673057549323928

`A258829(eq[29, A037126(n+1)])`
-/

namespace A316396.P12523673057549323928
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  29

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037126 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258829 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A316396.P12523673057549323928

/-!
# A316397: Number of permutations p of [n] such that the up-down signature of 0,p has nonnegative partial sums with a maximal value of ten.

The programs for A316397, there is no canonical definition to state claims against.
-/

/-! ## A316397.P13040723115171383723

`A262172(n+10)-A262171(n+10)`
-/

namespace A316397.P13040723115171383723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262172 (n + 10) - A262171 (n + 10)

end

end A316397.P13040723115171383723

/-! ## A316397.P10871317329883191618

`A258829(eq[10, A002262(n)])`
-/

namespace A316397.P10871317329883191618
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258829 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A316397.P10871317329883191618

/-! ## A316397.P17699133009654116141

`A258829(eq[10, A144328(n+1)])`
-/

namespace A316397.P17699133009654116141
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258829 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A316397.P17699133009654116141

/-! ## A316397.P8332903582933060097

`A258829(eq[10, A327844(n+1)])`
-/

namespace A316397.P8332903582933060097
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327844 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258829 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A316397.P8332903582933060097

/-! ## A316397.P13824198572919899687

`A258829(eq[11, A002260(n+1)])`
-/

namespace A316397.P13824198572919899687
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258829 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A316397.P13824198572919899687

/-! ## A316397.P6751541684452410097

`A258829(eq[11, A135223(n+1)])`
-/

namespace A316397.P6751541684452410097
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135223 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258829 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A316397.P6751541684452410097

/-!
# A316398: Number of distinct subset-averages of the integer partition with Heinz number n.

The programs for A316398, there is no canonical definition to state claims against.
-/

/-! ## A316398.P13795343586170536931

`A316314(n+1)+1`
-/

namespace A316398.P13795343586170536931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316314 (n + 1) + 1

end

end A316398.P13795343586170536931

/-! ## A316398.P1939370335479534523

`A000005(A295557(n+1)%A267983(2*n+3))`
-/

namespace A316398.P1939370335479534523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (Int.tmod (A295557 (n + 1)) (A267983 (2 * n + 3))).toNat

end

end A316398.P1939370335479534523

/-! ## A316398.P9026313719574928023

`A358525(A322993(n+1))+A001221(n+1)`
-/

namespace A316398.P9026313719574928023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358525 (A322993 (n + 1)).toNat + A001221 (n + 1)

end

end A316398.P9026313719574928023

/-! ## A316398.P1160083526143621020

`A134665(A183095(n+1)%A231014(2*n+3))+1`
-/

namespace A316398.P1160083526143621020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134665 (Int.tmod (A183095 (n + 1)) (A231014 (2 * n + 3))).toNat + 1

end

end A316398.P1160083526143621020

/-! ## A316398.P13053928636091439249

`A008479(∏{e}[n+1, A033844(#)]²)`
-/

namespace A316398.P13053928636091439249
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008479 ((∏ p ∈ Nat.primeFactors (f1 n), A033844 (Nat.factorization (f1 n) p)) ^ 2).toNat

end

end A316398.P13053928636091439249

/-!
# A316399: Number of strict integer partitions of n such that not every subset has a different average.

The programs for A316399, there is no canonical definition to state claims against.
-/

/-! ## A316399.P9399140065636067827

`A000009(n+1)-A316313(n+1)`
-/

namespace A316399.P9399140065636067827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 (n + 1) - A316313 (n + 1)

end

end A316399.P9399140065636067827

/-! ## A316399.P14912574066536729218

`Δ[A036469(n)]-A316313(n+1)`
-/

namespace A316399.P14912574066536729218
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036469 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A316313 (n + 1)

end

end A316399.P14912574066536729218

/-! ## A316399.P609538824207185430

`A318286(A000040(n+1))-A316313(n+1)`
-/

namespace A316399.P609538824207185430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318286 (A000040 (n + 1)).toNat - A316313 (n + 1)

end

end A316399.P609538824207185430

