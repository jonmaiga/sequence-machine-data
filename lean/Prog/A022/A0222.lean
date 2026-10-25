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
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C039
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C008
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B010.C000
import Seq.B011.C000
import Seq.Opaque.C000
import Seq.Opaque.C001
import Seq.Opaque.C002
import Seq.Opaque.C003
import Seq.Opaque.C004
import Seq.Opaque.C005
import Seq.Opaque.C008
import Seq.Opaque.C011
import Seq.Opaque.C012
import Seq.Opaque.C013
import Seq.Opaque.C019
import Seq.Opaque.C022

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A022200: 

The programs for A022200, there is no canonical definition to state claims against.
-/

/-! ## A022200.P5673153157674723566

`A022167(eq[9, A002262(n)])`
-/

namespace A022200.P5673153157674723566
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022167 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A022200.P5673153157674723566

/-! ## A022200.P9455454629585330019

`A022167(A000124(n+9)+8)`
-/

namespace A022200.P9455454629585330019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022167 (A000124 (n + 9) + 8).toNat

end

end A022200.P9455454629585330019

/-! ## A022200.P14851434724870696234

`A022167(A000217(n+10)-(n+1))`
-/

namespace A022200.P14851434724870696234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022167 (A000217 (n + 10) - (n + 1 : ℤ)).toNat

end

end A022200.P14851434724870696234

/-! ## A022200.P4279618636461958885

`A038997(3^n)`
-/

namespace A022200.P4279618636461958885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038997 (3 ^ n)

end

end A022200.P4279618636461958885

/-!
# A022201: 

The programs for A022201, there is no canonical definition to state claims against.
-/

/-! ## A022201.P12401388905878236897

`A022167(eq[10, A002262(n)])`
-/

namespace A022201.P12401388905878236897
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022167 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A022201.P12401388905878236897

/-! ## A022201.P6965944173999125193

`A022167(A000217(n+11)-(n+1))`
-/

namespace A022201.P6965944173999125193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022167 (A000217 (n + 11) - (n + 1 : ℤ)).toNat

end

end A022201.P6965944173999125193

/-! ## A022201.P11195218393022364747

`A038998(3^n)`
-/

namespace A022201.P11195218393022364747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038998 (3 ^ n)

end

end A022201.P11195218393022364747

/-!
# A022202: 

The programs for A022202, there is no canonical definition to state claims against.
-/

/-! ## A022202.P15260992898675315259

`A022167(eq[11, A002262(n)])`
-/

namespace A022202.P15260992898675315259
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022167 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A022202.P15260992898675315259

/-! ## A022202.P6662261265982819441

`A022167(A000217(n+11)+n)`
-/

namespace A022202.P6662261265982819441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022167 (A000217 (n + 11) + (n : ℤ)).toNat

end

end A022202.P6662261265982819441

/-! ## A022202.P7001654791509692706

`A038999(3^n)`
-/

namespace A022202.P7001654791509692706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038999 (3 ^ n)

end

end A022202.P7001654791509692706

/-!
# A022203: 

The programs for A022203, there is no canonical definition to state claims against.
-/

/-! ## A022203.P11072790164515485128

`A022167(eq[6, A002262(n)/2])`
-/

namespace A022203.P11072790164515485128
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002262 n : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022167 (SequenceMachineLib.nth (fun j => (f1 j : ℚ) = f2 j) n)

end

end A022203.P11072790164515485128

/-!
# A022204: Gaussian binomial coefficients [ n,5 ] for q = 4.

The programs for A022204, there is no canonical definition to state claims against.
-/

/-! ## A022204.P9942986449656317459

`A022168(A167499(n+4))`
-/

namespace A022204.P9942986449656317459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022168 (A167499 (n + 4)).toNat

end

end A022204.P9942986449656317459

/-! ## A022204.P16453450208408113334

`A022168(eq[5, A002262(n)])`
-/

namespace A022204.P16453450208408113334
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022168 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A022204.P16453450208408113334

/-! ## A022204.P17274418157408933113

`A022168(Δ[A111396(n)]+8)`
-/

namespace A022204.P17274418157408933113
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111396 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022168 (f1 (n + 1) - f1 n + 8).toNat

end

end A022204.P17274418157408933113

/-! ## A022204.P9691819016361921535

`A022168(A134869(n+5)+4)`
-/

namespace A022204.P9691819016361921535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022168 (A134869 (n + 5) + 4).toNat

end

end A022204.P9691819016361921535

/-! ## A022204.P16952980374511593211

`A022168(A000096(n+4)+6)`
-/

namespace A022204.P16952980374511593211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022168 (A000096 (n + 4) + 6).toNat

end

end A022204.P16952980374511593211

/-!
# A022205: Gaussian binomial coefficients [ n,6 ] for q = 4.

The programs for A022205, there is no canonical definition to state claims against.
-/

/-! ## A022205.P13973402644040047252

`A022168(A161680(n+7)+6)`
-/

namespace A022205.P13973402644040047252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022168 (A161680 (n + 7) + 6).toNat

end

end A022205.P13973402644040047252

/-! ## A022205.P6809487828317187365

`A022168(A056115(n+1)+21)`
-/

namespace A022205.P6809487828317187365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022168 (A056115 (n + 1) + 21).toNat

end

end A022205.P6809487828317187365

/-! ## A022205.P8736873489105778993

`A022168(eq[7, A002260(n+1)])`
-/

namespace A022205.P8736873489105778993
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022168 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A022205.P8736873489105778993

/-! ## A022205.P11174870856712431822

`A022168(eq[8, A004736(n+1)]-A005408(n))`
-/

namespace A022205.P11174870856712431822
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022168 ((SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ) - A005408 n).toNat

end

end A022205.P11174870856712431822

/-!
# A022206: 

The programs for A022206, there is no canonical definition to state claims against.
-/

/-! ## A022206.P4444040975111094213

`A022168(A167487(n+6))`
-/

namespace A022206.P4444040975111094213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022168 (A167487 (n + 6)).toNat

end

end A022206.P4444040975111094213

/-! ## A022206.P6699560138372246096

`A022168(eq[8, A002260(n+1)])`
-/

namespace A022206.P6699560138372246096
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022168 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A022206.P6699560138372246096

/-! ## A022206.P7413648057763868879

`A022168(eq[8, A348268(A002262(n))])`
-/

namespace A022206.P7413648057763868879
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348268 (A002262 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022168 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A022206.P7413648057763868879

/-! ## A022206.P7009427422678904345

`A022168(eq[7, A025581(n)])`
-/

namespace A022206.P7009427422678904345
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022168 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A022206.P7009427422678904345

/-! ## A022206.P9897672099895175709

`A022168(eq[8, A004736(n+1)])`
-/

namespace A022206.P9897672099895175709
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022168 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A022206.P9897672099895175709

/-!
# A022208: 

The programs for A022208, there is no canonical definition to state claims against.
-/

/-! ## A022208.P17381319712929841987

`A022168(A000217(n+9)+n)`
-/

namespace A022208.P17381319712929841987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022168 (A000217 (n + 9) + (n : ℤ)).toNat

end

end A022208.P17381319712929841987

/-!
# A022212: Gaussian binomial coefficients [ n,5 ] for q = 5.

The programs for A022212, there is no canonical definition to state claims against.
-/

/-! ## A022212.P10693316670676028107

`A022169(A167499(n+4))`
-/

namespace A022212.P10693316670676028107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022169 (A167499 (n + 4)).toNat

end

end A022212.P10693316670676028107

/-! ## A022212.P16759211538365399264

`A022169(A167614(n+4)+2)`
-/

namespace A022212.P16759211538365399264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022169 (A167614 (n + 4) + 2).toNat

end

end A022212.P16759211538365399264

/-! ## A022212.P4155978828502014327

`A022169(eq[6, A002260(n+1)])`
-/

namespace A022212.P4155978828502014327
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022169 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A022212.P4155978828502014327

/-! ## A022212.P16764555569532893301

`A022169(A000217(n+6)-n-1)`
-/

namespace A022212.P16764555569532893301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022169 (A000217 (n + 6) - (n : ℤ) - 1).toNat

end

end A022212.P16764555569532893301

/-! ## A022212.P9652944037025178874

`A022169(A055999(n+3))`
-/

namespace A022212.P9652944037025178874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022169 (A055999 (n + 3)).toNat

end

end A022212.P9652944037025178874

/-!
# A022213: 

The programs for A022213, there is no canonical definition to state claims against.
-/

/-! ## A022213.P9190132887889224456

`A022169(eq[7, A002260(n+1)])`
-/

namespace A022213.P9190132887889224456
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022169 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A022213.P9190132887889224456

/-! ## A022213.P7617195450868826474

`A022169(A000217(n+7)-n-1)`
-/

namespace A022213.P7617195450868826474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022169 (A000217 (n + 7) - (n : ℤ) - 1).toNat

end

end A022213.P7617195450868826474

/-! ## A022213.P5135558152391014503

`A022169(eq[6, A025581(n)])`
-/

namespace A022213.P5135558152391014503
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022169 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A022213.P5135558152391014503

/-! ## A022213.P6376837555495142530

`A022169(eq[13, A099375(n)])`
-/

namespace A022213.P6376837555495142530
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099375 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022169 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A022213.P6376837555495142530

/-! ## A022213.P16048262984843476810

`A022169(A052905(n+4)-2)`
-/

namespace A022213.P16048262984843476810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022169 (A052905 (n + 4) - 2).toNat

end

end A022213.P16048262984843476810

/-!
# A022214: 

The programs for A022214, there is no canonical definition to state claims against.
-/

/-! ## A022214.P15620217816556450550

`A022169(eq[8, A002260(n+1)])`
-/

namespace A022214.P15620217816556450550
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022169 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A022214.P15620217816556450550

/-! ## A022214.P15665911067666775005

`A022169(eq[7, A025581(n)])`
-/

namespace A022214.P15665911067666775005
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022169 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A022214.P15665911067666775005

/-!
# A022215: 

The programs for A022215, there is no canonical definition to state claims against.
-/

/-! ## A022215.P1529341914460047281

`A038996(5^n)`
-/

namespace A022215.P1529341914460047281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038996 (5 ^ n)

end

end A022215.P1529341914460047281

/-!
# A022216: 

The programs for A022216, there is no canonical definition to state claims against.
-/

/-! ## A022216.P1073870865890559259

`A038997(5^n)`
-/

namespace A022216.P1073870865890559259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038997 (5 ^ n)

end

end A022216.P1073870865890559259

/-!
# A022217: 

The programs for A022217, there is no canonical definition to state claims against.
-/

/-! ## A022217.P11277246959454543592

`A038998(5^n)`
-/

namespace A022217.P11277246959454543592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038998 (5 ^ n)

end

end A022217.P11277246959454543592

/-!
# A022218: 

The programs for A022218, there is no canonical definition to state claims against.
-/

/-! ## A022218.P13821244033909131095

`A038999(5^n)`
-/

namespace A022218.P13821244033909131095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038999 (5 ^ n)

end

end A022218.P13821244033909131095

/-!
# A022220: Gaussian binomial coefficients [ n,2 ] for q = 6.

The programs for A022220, there is no canonical definition to state claims against.
-/

/-! ## A022220.P13478451667320396391

`∑[6^n*∑[6^n]]`
-/

namespace A022220.P13478451667320396391
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 ^ n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 ^ n * (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A022220.P13478451667320396391

/-! ## A022220.P479978796132876850

`A022170(∑[n+2]+3)`
-/

namespace A022220.P479978796132876850
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022170 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A022220.P479978796132876850

/-! ## A022220.P12388738125549145968

`record[ratio[A022170(A080036(n))]]`
-/

namespace A022220.P12388738125549145968
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022170 (A080036 n).toNat

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℚ) / (f2 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A022220.P12388738125549145968

/-! ## A022220.P5387496174421233770

`or(1, A022170(A141214(n)))`
-/

namespace A022220.P5387496174421233770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A022170 (A141214 n).toNat)

end

end A022220.P5387496174421233770

/-! ## A022220.P5021203028758218758

`record[A022170(A055998(∑{e}[n, #]))]`
-/

namespace A022220.P5021203028758218758
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022170 (A055998 (∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A022220.P5021203028758218758

/-!
# A022221: Gaussian binomial coefficients [ n,3 ] for q = 6.

The programs for A022221, there is no canonical definition to state claims against.
-/

/-! ## A022221.P7126796881881788237

`∑[A000400(n)*A022220(n+2)]`
-/

namespace A022221.P7126796881881788237
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000400 n * A022220 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A022221.P7126796881881788237

/-! ## A022221.P11528866898603572381

`A022170(A167614(n+2))`
-/

namespace A022221.P11528866898603572381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022170 (A167614 (n + 2)).toNat

end

end A022221.P11528866898603572381

/-! ## A022221.P10894626885241788319

`A022170(A052905(n)+8)`
-/

namespace A022221.P10894626885241788319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022170 (A052905 n + 8).toNat

end

end A022221.P10894626885241788319

/-! ## A022221.P9553690308868824576

`A022170(A055999(n)+9)`
-/

namespace A022221.P9553690308868824576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022170 (A055999 n + 9).toNat

end

end A022221.P9553690308868824576

/-! ## A022221.P8516015014186475482

`A022170(eq[3, A002262(n)])`
-/

namespace A022221.P8516015014186475482
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022170 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A022221.P8516015014186475482

/-!
# A022222: Gaussian binomial coefficients [ n,4 ] for q = 6.

The programs for A022222, there is no canonical definition to state claims against.
-/

/-! ## A022222.P17838733075745049236

`∑[A000400(n)*A022221(n+3)]`
-/

namespace A022222.P17838733075745049236
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000400 n * A022221 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A022222.P17838733075745049236

/-! ## A022222.P13178774910846670999

`A022170(A167614(n+3)+1)`
-/

namespace A022222.P13178774910846670999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022170 (A167614 (n + 3) + 1).toNat

end

end A022222.P13178774910846670999

/-! ## A022222.P2623848725960566648

`A022170(A055998(n+2)+7)`
-/

namespace A022222.P2623848725960566648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022170 (A055998 (n + 2) + 7).toNat

end

end A022222.P2623848725960566648

/-! ## A022222.P17308323430789005959

`A022170(A046691(n+2)+8)`
-/

namespace A022222.P17308323430789005959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022170 (A046691 (n + 2) + 8).toNat

end

end A022222.P17308323430789005959

/-! ## A022222.P4545970773390316228

`A022170(eq[5, A002260(n+1)])`
-/

namespace A022222.P4545970773390316228
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022170 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A022222.P4545970773390316228

/-!
# A022223: Gaussian binomial coefficients [ n,5 ] for q = 6.

The programs for A022223, there is no canonical definition to state claims against.
-/

/-! ## A022223.P2526916346306531920

`A022170(eq[5, A002262(n)])`
-/

namespace A022223.P2526916346306531920
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022170 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A022223.P2526916346306531920

/-! ## A022223.P2303197717046019477

`A022170(eq[6, A002260(n+1)])`
-/

namespace A022223.P2303197717046019477
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022170 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A022223.P2303197717046019477

/-! ## A022223.P4681436035127955213

`A022170(eq[6, A208234(n+1)])`
-/

namespace A022223.P4681436035127955213
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208234 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022170 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A022223.P4681436035127955213

/-! ## A022223.P15536868370284554991

`A022170(A000217(n+6)-(n+1))`
-/

namespace A022223.P15536868370284554991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022170 (A000217 (n + 6) - (n + 1 : ℤ)).toNat

end

end A022223.P15536868370284554991

/-! ## A022223.P5187412788295368716

`A022170(A000124(n+5)+n-1)`
-/

namespace A022223.P5187412788295368716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022170 (A000124 (n + 5) + (n : ℤ) - 1).toNat

end

end A022223.P5187412788295368716

/-!
# A022224: 

The programs for A022224, there is no canonical definition to state claims against.
-/

/-! ## A022224.P10375781298359816334

`A022170(eq[6, A002262(n)])`
-/

namespace A022224.P10375781298359816334
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022170 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A022224.P10375781298359816334

/-! ## A022224.P9671793707775013082

`A022170(A000217(n+6)+6)`
-/

namespace A022224.P9671793707775013082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022170 (A000217 (n + 6) + 6).toNat

end

end A022224.P9671793707775013082

/-! ## A022224.P17180488735409363403

`A022170(eq[7, A002260(n+1)])`
-/

namespace A022224.P17180488735409363403
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022170 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A022224.P17180488735409363403

/-! ## A022224.P16114629151061600117

`A022170(A027379(n+5)-(n-2))`
-/

namespace A022224.P16114629151061600117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022170 (A027379 (n + 5) - ((n : ℤ) - 2)).toNat

end

end A022224.P16114629151061600117

/-! ## A022224.P3419175184720756412

`A022170(eq[7, A208234(n+1)])`
-/

namespace A022224.P3419175184720756412
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208234 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022170 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A022224.P3419175184720756412

/-!
# A022225: 

The programs for A022225, there is no canonical definition to state claims against.
-/

/-! ## A022225.P7133315200291376274

`A022170(eq[7, A002262(n)])`
-/

namespace A022225.P7133315200291376274
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022170 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A022225.P7133315200291376274

/-! ## A022225.P4306647300959079657

`A022170(A000217(n+7)+7)`
-/

namespace A022225.P4306647300959079657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022170 (A000217 (n + 7) + 7).toNat

end

end A022225.P4306647300959079657

/-! ## A022225.P4977337858974802110

`A022170(eq[8, A002260(n+1)])`
-/

namespace A022225.P4977337858974802110
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022170 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A022225.P4977337858974802110

/-! ## A022225.P16393907768573044092

`A022170(eq[8, A208234(n+1)])`
-/

namespace A022225.P16393907768573044092
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208234 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022170 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A022225.P16393907768573044092

/-!
# A022231: Gaussian binomial coefficients [ n,2 ] for q = 7.

The programs for A022231, the canonical program `A022231.P17502034876521126123` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A022231 has offset 2).

The definition of A022231 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A022231.P17502034876521126123

`(7^(n+1)-1)*(7^(n+2)-1)/288`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A022231

/-- `(7^(n+1)-1)*(7^(n+2)-1)/288` -/
def P17502034876521126123.Spec : Prop :=
  ∀ n, P17502034876521126123.a n = (A022231 (n + 2) : ℚ)

end A022231

/-! ## A022231.P12038418943545152149

`A022171(∑[n+2]+3)`
-/

namespace A022231.P12038418943545152149
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022171 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A022231.P12038418943545152149

namespace A022231

/-- `A022171(∑[n+2]+3)` -/
def P12038418943545152149.Spec : Prop :=
  ∀ n, P12038418943545152149.a n = A022231 (n + 2)

end A022231

/-! ## A022231.P3438380730770201710

`record[gcd(A022171(n), A303913(n))]`
-/

namespace A022231.P3438380730770201710
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A022171 n) (A303913 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A022231.P3438380730770201710

namespace A022231

/-- `record[gcd(A022171(n), A303913(n))]` -/
def P3438380730770201710.Spec : Prop :=
  ∀ n, (P3438380730770201710.a n : ℤ) = A022231 (n + 2)

end A022231

/-! ## A022231.P6403750001382233477

`lcm((-1)^n, A022171(A055998(n)+5))`
-/

namespace A022231.P6403750001382233477
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((-1) ^ n) (A022171 (A055998 n + 5).toNat)

end

end A022231.P6403750001382233477

namespace A022231

/-- `lcm((-1)^n, A022171(A055998(n)+5))` -/
def P6403750001382233477.Spec : Prop :=
  ∀ n, (P6403750001382233477.a n : ℤ) = A022231 (n + 2)

end A022231

/-! ## A022231.P2647994854104434447

`A022171(A141214(n))^ceil(acot(n))`
-/

namespace A022231.P2647994854104434447
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A022171 (A141214 n).toNat : ℚ) ^ (⌈SequenceMachineLib.acot (n : ℝ)⌉ : ℤ)

end

end A022231.P2647994854104434447

namespace A022231

/-- `A022171(A141214(n))^ceil(acot(n))` -/
def P2647994854104434447.Spec : Prop :=
  ∀ n, P2647994854104434447.a n = (A022231 (n + 2) : ℚ)

end A022231

/-!
# A022232: Gaussian binomial coefficients [ n,3 ] for q = 7.

The programs for A022232, there is no canonical definition to state claims against.
-/

/-! ## A022232.P774456590197343000

`∑[Δ[A023000(n)]*A022231(n+2)]`
-/

namespace A022232.P774456590197343000
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023000 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n) * A022231 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A022232.P774456590197343000

/-! ## A022232.P9393366659853312115

`A022171(∑[n+3]+6)`
-/

namespace A022232.P9393366659853312115
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022171 (∑ j ∈ Finset.range (n + 1), f1 j + 6)

end

end A022232.P9393366659853312115

/-! ## A022232.P16924268588164390185

`record[gcd(A022171(n+1), A303913(n))]`
-/

namespace A022232.P16924268588164390185
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A022171 (n + 1)) (A303913 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A022232.P16924268588164390185

/-! ## A022232.P13747076310978496776

`A025466(n)+A022171(A167614(n+2))`
-/

namespace A022232.P13747076310978496776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025466 n + A022171 (A167614 (n + 2)).toNat

end

end A022232.P13747076310978496776

/-! ## A022232.P378099241121412328

`gcd(A000038(n), A022171(A167614(n+2)))`
-/

namespace A022232.P378099241121412328
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A022171 (A167614 (n + 2)).toNat)

end

end A022232.P378099241121412328

/-!
# A022233: Gaussian binomial coefficients [ n,4 ] for q = 7.

The programs for A022233, there is no canonical definition to state claims against.
-/

/-! ## A022233.P808420095527076817

`A022171(A056000(n)+14)`
-/

namespace A022233.P808420095527076817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022171 (A056000 n + 14).toNat

end

end A022233.P808420095527076817

/-! ## A022233.P13909405891118713728

`A022171(eq[3, A141169(n)])`
-/

namespace A022233.P13909405891118713728
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141169 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022171 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A022233.P13909405891118713728

/-! ## A022233.P7821591274605175339

`A022171(eq[16, A059268(n)])`
-/

namespace A022233.P7821591274605175339
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022171 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A022233.P7821591274605175339

/-! ## A022233.P13277976763017566868

`A022171(A167499(n+3)-1)`
-/

namespace A022233.P13277976763017566868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022171 (A167499 (n + 3) - 1).toNat

end

end A022233.P13277976763017566868

/-! ## A022233.P12172586185966000291

`A022171(A055998(n+2)+7)`
-/

namespace A022233.P12172586185966000291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022171 (A055998 (n + 2) + 7).toNat

end

end A022233.P12172586185966000291

/-!
# A022234: 

The programs for A022234, there is no canonical definition to state claims against.
-/

/-! ## A022234.P3100460320142751754

`A022171(A167499(n+4))`
-/

namespace A022234.P3100460320142751754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022171 (A167499 (n + 4)).toNat

end

end A022234.P3100460320142751754

/-! ## A022234.P4160709267068185174

`A022171(eq[5, A002262(n)])`
-/

namespace A022234.P4160709267068185174
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022171 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A022234.P4160709267068185174

/-! ## A022234.P13219289228330718023

`A022171(eq[5, A191532(n)])`
-/

namespace A022234.P13219289228330718023
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191532 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022171 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A022234.P13219289228330718023

/-! ## A022234.P14017820824372129589

`A022171(A052905(n+2)+10)`
-/

namespace A022234.P14017820824372129589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022171 (A052905 (n + 2) + 10).toNat

end

end A022234.P14017820824372129589

/-!
# A022235: 

The programs for A022235, there is no canonical definition to state claims against.
-/

/-! ## A022235.P912520962967143500

`A022171(eq[6, A002262(n)])`
-/

namespace A022235.P912520962967143500
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022171 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A022235.P912520962967143500

/-! ## A022235.P15789218914547771230

`A022171(A056115(n+1)+21)`
-/

namespace A022235.P15789218914547771230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022171 (A056115 (n + 1) + 21).toNat

end

end A022235.P15789218914547771230

/-! ## A022235.P3799671188964556955

`A022171(eq[7, A002260(n+1)])`
-/

namespace A022235.P3799671188964556955
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022171 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A022235.P3799671188964556955

/-!
# A022236: 

The programs for A022236, there is no canonical definition to state claims against.
-/

/-! ## A022236.P8875149124377128355

`A022171(eq[7, A002262(n)])`
-/

namespace A022236.P8875149124377128355
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022171 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A022236.P8875149124377128355

/-! ## A022236.P1390631853653616411

`A022171(eq[7, A191532(n)])`
-/

namespace A022236.P1390631853653616411
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191532 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022171 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A022236.P1390631853653616411

/-! ## A022236.P10316077766936848097

`A022171(eq[7, A025675(n+1)])`
-/

namespace A022236.P10316077766936848097
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025675 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022171 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A022236.P10316077766936848097

/-!
# A022237: 

The programs for A022237, there is no canonical definition to state claims against.
-/

/-! ## A022237.P2911341719534530407

`A022171(eq[8, A002262(n)])`
-/

namespace A022237.P2911341719534530407
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022171 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A022237.P2911341719534530407

/-! ## A022237.P17385546400547854505

`A022171(eq[8, A025675(n+1)])`
-/

namespace A022237.P17385546400547854505
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025675 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022171 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A022237.P17385546400547854505

/-! ## A022237.P13650035064330388187

`A022171(eq[8, A130270(n+1)])`
-/

namespace A022237.P13650035064330388187
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130270 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022171 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A022237.P13650035064330388187

/-!
# A022238: 

The programs for A022238, there is no canonical definition to state claims against.
-/

/-! ## A022238.P16429342017997493907

`A022171(eq[9, A002262(n)])`
-/

namespace A022238.P16429342017997493907
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022171 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A022238.P16429342017997493907

/-! ## A022238.P2374037255601511912

`A022171(eq[10, A002260(n+1)])`
-/

namespace A022238.P2374037255601511912
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022171 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A022238.P2374037255601511912

/-! ## A022238.P12942821442522822351

`A022171(eq[10, A004736(n+1)])`
-/

namespace A022238.P12942821442522822351
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022171 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A022238.P12942821442522822351

/-!
# A022239: 

The programs for A022239, there is no canonical definition to state claims against.
-/

/-! ## A022239.P17676539028633243647

`A022171(eq[10, A002262(n)])`
-/

namespace A022239.P17676539028633243647
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022171 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A022239.P17676539028633243647

/-! ## A022239.P5638196898712393828

`A022171(A034856(n+10)-9)`
-/

namespace A022239.P5638196898712393828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022171 (A034856 (n + 10) - 9).toNat

end

end A022239.P5638196898712393828

/-! ## A022239.P12409378854703647819

`A022171(eq[10, A025668(n+1)])`
-/

namespace A022239.P12409378854703647819
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025668 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022171 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A022239.P12409378854703647819

/-! ## A022239.P5806300203063525312

`A022171(eq[10, A025675(n+1)])`
-/

namespace A022239.P5806300203063525312
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025675 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022171 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A022239.P5806300203063525312

/-!
# A022240: 

The programs for A022240, there is no canonical definition to state claims against.
-/

/-! ## A022240.P6834556027707087643

`A022171(eq[11, A002262(n)])`
-/

namespace A022240.P6834556027707087643
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022171 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A022240.P6834556027707087643

/-! ## A022240.P13258613453129237196

`A022171(eq[11, A191532(n)])`
-/

namespace A022240.P13258613453129237196
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191532 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022171 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A022240.P13258613453129237196

/-! ## A022240.P17692587944777534552

`A022171(eq[11, A025668(n+1)])`
-/

namespace A022240.P17692587944777534552
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025668 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022171 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A022240.P17692587944777534552

/-! ## A022240.P4217497734535696412

`A022171(eq[11, A025675(n+1)])`
-/

namespace A022240.P4217497734535696412
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025675 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022171 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A022240.P4217497734535696412

/-!
# A022241: 

The programs for A022241, there is no canonical definition to state claims against.
-/

/-! ## A022241.P5735004500512913360

`A022171(eq[12, A002262(n)])`
-/

namespace A022241.P5735004500512913360
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022171 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A022241.P5735004500512913360

/-! ## A022241.P16297086758406222187

`A022171(eq[12, A025675(n+1)])`
-/

namespace A022241.P16297086758406222187
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025675 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022171 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A022241.P16297086758406222187

/-! ## A022241.P16038685488212376273

`A022171(eq[12, A130270(n+1)])`
-/

namespace A022241.P16038685488212376273
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130270 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022171 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A022241.P16038685488212376273

/-!
# A022242: Gaussian binomial coefficients [ n,2 ] for q = 8.

The programs for A022242, there is no canonical definition to state claims against.
-/

/-! ## A022242.P4464850033173078876

`∑[8^n*∑[8^n]]`
-/

namespace A022242.P4464850033173078876
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8 ^ n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8 ^ n * (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A022242.P4464850033173078876

/-! ## A022242.P5763648307772312012

`A022172(∑[n+2]+3)`
-/

namespace A022242.P5763648307772312012
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022172 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A022242.P5763648307772312012

/-! ## A022242.P585118000476685667

`or(1, A022172(A141214(n)))`
-/

namespace A022242.P585118000476685667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A022172 (A141214 n).toNat)

end

end A022242.P585118000476685667

/-! ## A022242.P4731391550918338243

`A022172(A141214(n))%A223101(n+1)`
-/

namespace A022242.P4731391550918338243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A022172 (A141214 n).toNat) (A223101 (n + 1))

end

end A022242.P4731391550918338243

/-! ## A022242.P12372119033233115624

`∑{d}[A000079(n), A282213(#)]`
-/

namespace A022242.P12372119033233115624
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A282213 d

end

end A022242.P12372119033233115624

/-!
# A022243: Gaussian binomial coefficients [ n,3 ] for q = 8.

The programs for A022243, there is no canonical definition to state claims against.
-/

/-! ## A022243.P13767050127639704137

`A022172(A167614(n+2))`
-/

namespace A022243.P13767050127639704137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022172 (A167614 (n + 2)).toNat

end

end A022243.P13767050127639704137

/-! ## A022243.P293087044464656015

`A022172(A141214(n)+6)`
-/

namespace A022243.P293087044464656015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022172 (A141214 n + 6).toNat

end

end A022243.P293087044464656015

/-! ## A022243.P17266624267088843811

`record[A022172(A167614(A134478(n)))]`
-/

namespace A022243.P17266624267088843811
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022172 (A167614 (A134478 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A022243.P17266624267088843811

/-! ## A022243.P6841517134859677299

`A022172(∑[n+3]+n+3)`
-/

namespace A022243.P6841517134859677299
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022172 (∑ j ∈ Finset.range (n + 1), f1 j + (n + 3))

end

end A022243.P6841517134859677299

/-!
# A022244: Gaussian binomial coefficients [ n,4 ] for q = 8.

The programs for A022244, there is no canonical definition to state claims against.
-/

/-! ## A022244.P74583083106126201

`A022172(eq[5, A004736(n+1)])`
-/

namespace A022244.P74583083106126201
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022172 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A022244.P74583083106126201

/-!
# A022245: 

The programs for A022245, there is no canonical definition to state claims against.
-/

/-! ## A022245.P2819199451797491441

`A022172(A167499(Δ[A141214(n)]))`
-/

namespace A022245.P2819199451797491441
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141214 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022172 (A167499 (f1 (n + 1) - f1 n).toNat).toNat

end

end A022245.P2819199451797491441

/-! ## A022245.P6299150871491711121

`A022172(eq[5, A025581(n)])`
-/

namespace A022245.P6299150871491711121
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022172 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A022245.P6299150871491711121

/-! ## A022245.P17476174630139638098

`A022172(eq[6, A004736(n+1)])`
-/

namespace A022245.P17476174630139638098
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022172 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A022245.P17476174630139638098

/-!
# A022246: 

The programs for A022246, there is no canonical definition to state claims against.
-/

/-! ## A022246.P6264761899043123079

`A022172(eq[7, A004736(n+1)])`
-/

namespace A022246.P6264761899043123079
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022172 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A022246.P6264761899043123079

/-!
# A022247: 

The programs for A022247, there is no canonical definition to state claims against.
-/

/-! ## A022247.P9433263976120548993

`A022172(eq[7, A025581(n)])`
-/

namespace A022247.P9433263976120548993
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022172 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A022247.P9433263976120548993

/-! ## A022247.P2987819747203103953

`A022172(eq[8, A004736(n+1)])`
-/

namespace A022247.P2987819747203103953
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022172 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A022247.P2987819747203103953

/-!
# A022249: 

The programs for A022249, there is no canonical definition to state claims against.
-/

/-! ## A022249.P14815366942251632156

`A022172(eq[9, A025581(n)])`
-/

namespace A022249.P14815366942251632156
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022172 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A022249.P14815366942251632156

/-!
# A022253: Gaussian binomial coefficients [ n,2 ] for q = 9.

The programs for A022253, there is no canonical definition to state claims against.
-/

/-! ## A022253.P4817859111839747062

`∑[9^n*∑[9^n]]`
-/

namespace A022253.P4817859111839747062
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9 ^ n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9 ^ n * (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A022253.P4817859111839747062

/-! ## A022253.P16145360980167925576

`∑[A053535(2*n+1)]/6`
-/

namespace A022253.P16145360980167925576
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053535 (2 * n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 6

end

end A022253.P16145360980167925576

/-! ## A022253.P12805208327537055926

`∑[A016142(2*n+1)]/12`
-/

namespace A022253.P12805208327537055926
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016142 (2 * n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 12

end

end A022253.P12805208327537055926

/-! ## A022253.P1058617948445383838

`A022173(∑[n+2]+3)`
-/

namespace A022253.P1058617948445383838
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022173 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A022253.P1058617948445383838

/-! ## A022253.P11483787597296034311

`record[A022173(A198464(n+1)-1)]`
-/

namespace A022253.P11483787597296034311
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022173 (A198464 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A022253.P11483787597296034311

/-!
# A022254: Gaussian binomial coefficients [ n,3 ] for q = 9.

The programs for A022254, there is no canonical definition to state claims against.
-/

/-! ## A022254.P17939582213413314291

`A022173(A167614(n+2))`
-/

namespace A022254.P17939582213413314291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022173 (A167614 (n + 2)).toNat

end

end A022254.P17939582213413314291

/-! ## A022254.P4812263957032316809

`A022173(A141214(n)+6)`
-/

namespace A022254.P4812263957032316809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022173 (A141214 n + 6).toNat

end

end A022254.P4812263957032316809

/-! ## A022254.P3838221829460212751

`A022173(A052905(n)+8)`
-/

namespace A022254.P3838221829460212751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022173 (A052905 n + 8).toNat

end

end A022254.P3838221829460212751

/-! ## A022254.P7455762063377988616

`A022173(A055999(n)+9)`
-/

namespace A022254.P7455762063377988616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022173 (A055999 n + 9).toNat

end

end A022254.P7455762063377988616

/-! ## A022254.P9296108885511817687

`A022173(eq[2, A141169(n)])`
-/

namespace A022254.P9296108885511817687
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141169 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022173 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A022254.P9296108885511817687

/-!
# A022255: Gaussian binomial coefficients [ n,4 ] for q = 9.

The programs for A022255, there is no canonical definition to state claims against.
-/

/-! ## A022255.P6393577967220569155

`A022173(A056000(n)+14)`
-/

namespace A022255.P6393577967220569155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022173 (A056000 n + 14).toNat

end

end A022255.P6393577967220569155

/-! ## A022255.P3067359110663690417

`A022173(eq[3, A141169(n)])`
-/

namespace A022255.P3067359110663690417
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141169 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022173 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A022255.P3067359110663690417

/-! ## A022255.P9767060980138834166

`A022173(eq[4, A002262(n)])`
-/

namespace A022255.P9767060980138834166
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022173 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A022255.P9767060980138834166

/-! ## A022255.P8263193309358539064

`A022173(A141214(n+1)+7)`
-/

namespace A022255.P8263193309358539064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022173 (A141214 (n + 1) + 7).toNat

end

end A022255.P8263193309358539064

/-! ## A022255.P16487211654664978832

`A022173(A046691(n+2)+8)`
-/

namespace A022255.P16487211654664978832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022173 (A046691 (n + 2) + 8).toNat

end

end A022255.P16487211654664978832

/-!
# A022256: 

The programs for A022256, there is no canonical definition to state claims against.
-/

/-! ## A022256.P2188657584757313659

`A022173(A167499(n+4))`
-/

namespace A022256.P2188657584757313659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022173 (A167499 (n + 4)).toNat

end

end A022256.P2188657584757313659

/-! ## A022256.P7337121414167729821

`A022173(eq[5, A002262(n)])`
-/

namespace A022256.P7337121414167729821
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022173 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A022256.P7337121414167729821

/-! ## A022256.P6099865764793419697

`A022173(eq[5, A141169(n)])`
-/

namespace A022256.P6099865764793419697
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141169 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022173 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A022256.P6099865764793419697

/-! ## A022256.P17870634365436881510

`A022173(A000096(n+4)+6)`
-/

namespace A022256.P17870634365436881510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022173 (A000096 (n + 4) + 6).toNat

end

end A022256.P17870634365436881510

/-! ## A022256.P11581851457257541587

`A022173(A141214(n+2)+8)`
-/

namespace A022256.P11581851457257541587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022173 (A141214 (n + 2) + 8).toNat

end

end A022256.P11581851457257541587

/-!
# A022257: 

The programs for A022257, there is no canonical definition to state claims against.
-/

/-! ## A022257.P3162168729962383902

`A022173(eq[6, A002262(n)])`
-/

namespace A022257.P3162168729962383902
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022173 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A022257.P3162168729962383902

/-! ## A022257.P16354658240392882715

`A022173(eq[8, A141169(n)])`
-/

namespace A022257.P16354658240392882715
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141169 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022173 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A022257.P16354658240392882715

/-! ## A022257.P4356115196945340981

`A022173(eq[8, A131818(n+2)])`
-/

namespace A022257.P4356115196945340981
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022173 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A022257.P4356115196945340981

/-! ## A022257.P17993935362396531211

`A022173(A000096(n+6)-n)`
-/

namespace A022257.P17993935362396531211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022173 (A000096 (n + 6) - (n : ℤ)).toNat

end

end A022257.P17993935362396531211

/-! ## A022257.P13974310273761123820

`A022173(eq[6, A025581(n)])`
-/

namespace A022257.P13974310273761123820
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022173 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A022257.P13974310273761123820

/-!
# A022258: 

The programs for A022258, there is no canonical definition to state claims against.
-/

/-! ## A022258.P523052161328387990

`A022173(eq[7, A002262(n)])`
-/

namespace A022258.P523052161328387990
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022173 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A022258.P523052161328387990

/-! ## A022258.P5285769836492483011

`A022173(eq[8, A002260(n+1)])`
-/

namespace A022258.P5285769836492483011
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022173 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A022258.P5285769836492483011

/-! ## A022258.P13130713545849029613

`A022173(eq[9, A131818(n+2)])`
-/

namespace A022258.P13130713545849029613
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022173 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A022258.P13130713545849029613

/-! ## A022258.P14125730810745491866

`A022173(eq[8, A193739(n)])`
-/

namespace A022258.P14125730810745491866
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193739 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022173 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A022258.P14125730810745491866

/-! ## A022258.P3985965511900622032

`A022173(A055998(n+6)-5)`
-/

namespace A022258.P3985965511900622032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022173 (A055998 (n + 6) - 5).toNat

end

end A022258.P3985965511900622032

/-!
# A022259: 

The programs for A022259, there is no canonical definition to state claims against.
-/

/-! ## A022259.P6719785909679564290

`A022173(eq[10, A131818(n+2)])`
-/

namespace A022259.P6719785909679564290
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022173 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A022259.P6719785909679564290

/-! ## A022259.P5511075543743849869

`A022173(eq[6, A219347(n+1)])`
-/

namespace A022259.P5511075543743849869
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022173 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A022259.P5511075543743849869

/-! ## A022259.P3950121476730900508

`A022173(eq[9, A004736(n+1)])`
-/

namespace A022259.P3950121476730900508
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022173 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A022259.P3950121476730900508

/-!
# A022260: 

The programs for A022260, there is no canonical definition to state claims against.
-/

/-! ## A022260.P71538779255465567

`A022173(A000124(n+9)+8)`
-/

namespace A022260.P71538779255465567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022173 (A000124 (n + 9) + 8).toNat

end

end A022260.P71538779255465567

/-!
# A022261: 

The programs for A022261, there is no canonical definition to state claims against.
-/

/-! ## A022261.P3952774697595795141

`A022173(eq[10, A002262(n)])`
-/

namespace A022261.P3952774697595795141
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022173 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A022261.P3952774697595795141

/-! ## A022261.P2866453487549964561

`A022173(A000217(n+11)-11)`
-/

namespace A022261.P2866453487549964561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022173 (A000217 (n + 11) - 11).toNat

end

end A022261.P2866453487549964561

/-! ## A022261.P15351677265067013803

`A022173(eq[11, A002260(n+1)])`
-/

namespace A022261.P15351677265067013803
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022173 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A022261.P15351677265067013803

/-!
# A022264: a(n) = n*(7*n - 1)/2.

The programs for A022264, the canonical program `A022264.P2699644023608496467` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A022264 has offset 0).

The definition of A022264 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(7*n-1)/2` (program `A022264.P2444227580264785769`, by `A022264.P2444227580264785769.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A022264.P8997997537171601633

`C(7*n, 2)/7`
-/

namespace A022264.P8997997537171601633
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose (7 * n) 2 : ℚ) / 7

end

end A022264.P8997997537171601633

namespace A022264

/-- `C(7*n, 2)/7` -/
def P8997997537171601633.Spec : Prop :=
  ∀ n, P8997997537171601633.a n = (A022264 n : ℚ)

end A022264

/-! ## A022264.P2444227580264785769

`n*(7*n-1)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A022264.P2444227580264785769
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) * ((7 * n : ℤ) - 1) : ℚ) / 2

end

end A022264.P2444227580264785769

namespace A022264

/-- `n*(7*n-1)/2` -/
def P2444227580264785769.Spec : Prop :=
  ∀ n, P2444227580264785769.a n = (A022264 n : ℚ)

theorem P2444227580264785769.correct : P2444227580264785769.Spec := by
  intro n
  induction n with
  | zero => simp [A022264, A022264.P2444227580264785769.a, A022264.P2699644023608496467.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
  | succ m ih =>
    simp only [A022264, Nat.add_sub_cancel, A022264.P2444227580264785769.a, A022264.P2699644023608496467.a, SequenceMachineLib.memo_apply] at ih ⊢
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    try simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
    try push_cast at ih ⊢
    try linarith

end A022264

/-! ## A022264.P2699644023608496467

`7*n+a(n-1)-4` with `a(0)=0`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A022264

/-- `7*n+a(n-1)-4` -/
def P2699644023608496467.Spec : Prop :=
  ∀ n, P2699644023608496467.a n = A022264 n

theorem P2699644023608496467.correct : P2699644023608496467.Spec := by
  intro n
  simp only [A022264]

end A022264

/-! ## A022264.P9855487028690322494

`A005449(n)+A000384(n)`
-/

namespace A022264.P9855487028690322494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005449 n + A000384 n

end

end A022264.P9855487028690322494

namespace A022264

/-- `A005449(n)+A000384(n)` -/
def P9855487028690322494.Spec : Prop :=
  ∀ n, P9855487028690322494.a n = A022264 n

end A022264

/-! ## A022264.P4950036505768868484

`A049450(n)+A000217(n)`
-/

namespace A022264.P4950036505768868484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049450 n + A000217 n

end

end A022264.P4950036505768868484

namespace A022264

/-- `A049450(n)+A000217(n)` -/
def P4950036505768868484.Spec : Prop :=
  ∀ n, P4950036505768868484.a n = A022264 n

end A022264

/-! ## A022264.P18175926285971373460

`A016742(n)-A000217(n)`
-/

namespace A022264.P18175926285971373460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016742 n - A000217 n

end

end A022264.P18175926285971373460

namespace A022264

/-- `A016742(n)-A000217(n)` -/
def P18175926285971373460.Spec : Prop :=
  ∀ n, P18175926285971373460.a n = A022264 n

end A022264

/-! ## A022264.P5528714857683365575

`A174738(7*n+2)`
-/

namespace A022264.P5528714857683365575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174738 (7 * n + 2)

end

end A022264.P5528714857683365575

namespace A022264

/-- `A174738(7*n+2)` -/
def P5528714857683365575.Spec : Prop :=
  ∀ n, P5528714857683365575.a n = A022264 n

end A022264

/-! ## A022264.P13299216835722889366

`∑[a(n-1)+7]` with `a(0)=0, a(1)=3`
-/

namespace A022264.P13299216835722889366
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 3] fun n f1 =>
  f1 (n - 1) + 7

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A022264.P13299216835722889366

namespace A022264

/-- `∑[a(n-1)+7]` -/
def P13299216835722889366.Spec : Prop :=
  ∀ n, (P13299216835722889366.a n : ℤ) = A022264 n

end A022264

/-! ## A022264.P9841670406308315197

`∑[ogf((3x+4x^2)/(1-2x+x^2))]`
-/

namespace A022264.P9841670406308315197
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 3, 4] [1, -2, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A022264.P9841670406308315197

namespace A022264

/-- `∑[ogf((3x+4x^2)/(1-2x+x^2))]` -/
def P9841670406308315197.Spec : Prop :=
  ∀ n, P9841670406308315197.a n = A022264 n

end A022264

/-! ## A022264.P7584641307747255535

`ogf((3x+4x^2)/(1-3x+3x^2-x^3))`
-/

namespace A022264.P7584641307747255535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 3, 4] [1, -3, 3, -1] n

end

end A022264.P7584641307747255535

namespace A022264

/-- `ogf((3x+4x^2)/(1-3x+3x^2-x^3))` -/
def P7584641307747255535.Spec : Prop :=
  ∀ n, P7584641307747255535.a n = A022264 n

end A022264

/-! ## A022264.P16087725504554789119

`(2*n)²-C(n+1, 2)`
-/

namespace A022264.P16087725504554789119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 * n) ^ 2 : ℤ) - (Nat.choose (n + 1) 2 : ℤ)

end

end A022264.P16087725504554789119

namespace A022264

/-- `(2*n)²-C(n+1, 2)` -/
def P16087725504554789119.Spec : Prop :=
  ∀ n, P16087725504554789119.a n = A022264 n

end A022264

/-! ## A022264.P15010632872049187420

`7*n-(4-a(n-1))` with `a(0)=0`
-/

namespace A022264.P15010632872049187420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (7 * n : ℤ) - (4 - a (n - 1))

end

end A022264.P15010632872049187420

namespace A022264

/-- `7*n-(4-a(n-1))` -/
def P15010632872049187420.Spec : Prop :=
  ∀ n, P15010632872049187420.a n = A022264 n

theorem P15010632872049187420.correct : P15010632872049187420.Spec := by
  intro n
  simp only [A022264, Nat.add_sub_cancel, A022264.P15010632872049187420.a, A022264.P2699644023608496467.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A022264

/-! ## A022264.P8573235796097671605

`∑[lcm(2, Δ[(2*n+1)*(n-2)])-(n+2)]`
-/

namespace A022264.P8573235796097671605
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) * ((n : ℤ) - 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.lcm 2 (f2 (n + 1) - f2 n) : ℤ) - (n + 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A022264.P8573235796097671605

namespace A022264

/-- `∑[lcm(2, Δ[(2*n+1)*(n-2)])-(n+2)]` -/
def P8573235796097671605.Spec : Prop :=
  ∀ n, P8573235796097671605.a n = A022264 n

end A022264

/-! ## A022264.P2751264683553044657

`A140063(n)-1`
-/

namespace A022264.P2751264683553044657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140063 n - 1

end

end A022264.P2751264683553044657

namespace A022264

/-- `A140063(n)-1` -/
def P2751264683553044657.Spec : Prop :=
  ∀ n, P2751264683553044657.a n = A022264 n

end A022264

/-! ## A022264.P9639564461215382176

`A218471(n)+n`
-/

namespace A022264.P9639564461215382176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218471 n + (n : ℤ)

end

end A022264.P9639564461215382176

namespace A022264

/-- `A218471(n)+n` -/
def P9639564461215382176.Spec : Prop :=
  ∀ n, P9639564461215382176.a n = A022264 n

end A022264

/-! ## A022264.P8963031731657942785

`A022265(n)-n`
-/

namespace A022264.P8963031731657942785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022265 n - (n : ℤ)

end

end A022264.P8963031731657942785

namespace A022264

/-- `A022265(n)-n` -/
def P8963031731657942785.Spec : Prop :=
  ∀ n, P8963031731657942785.a n = A022264 n

end A022264

/-! ## A022264.P13203325306633692135

`A005476(n)+n²`
-/

namespace A022264.P13203325306633692135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005476 n + (n ^ 2 : ℤ)

end

end A022264.P13203325306633692135

namespace A022264

/-- `A005476(n)+n²` -/
def P13203325306633692135.Spec : Prop :=
  ∀ n, P13203325306633692135.a n = A022264 n

end A022264

/-! ## A022264.P10248683874238207119

`A022266(n)-n²`
-/

namespace A022264.P10248683874238207119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022266 n - (n ^ 2 : ℤ)

end

end A022264.P10248683874238207119

namespace A022264

/-- `A022266(n)-n²` -/
def P10248683874238207119.Spec : Prop :=
  ∀ n, P10248683874238207119.a n = A022264 n

end A022264

/-! ## A022264.P12146402013733857444

`A001106(n)+2*n`
-/

namespace A022264.P12146402013733857444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001106 n + (2 * n : ℤ)

end

end A022264.P12146402013733857444

namespace A022264

/-- `A001106(n)+2*n` -/
def P12146402013733857444.Spec : Prop :=
  ∀ n, P12146402013733857444.a n = A022264 n

end A022264

/-! ## A022264.P6280074869158543154

`A006124(n)-(n+3)`
-/

namespace A022264.P6280074869158543154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006124 n - (n + 3 : ℤ)

end

end A022264.P6280074869158543154

namespace A022264

/-- `A006124(n)-(n+3)` -/
def P6280074869158543154.Spec : Prop :=
  ∀ n, P6280074869158543154.a n = A022264 n

end A022264

/-!
# A022265: a(n) = n*(7*n + 1)/2.

The programs for A022265, the canonical program `A022265.P16574911985288338222` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A022265 has offset 0).

The definition of A022265 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(7*n+1)/2` (program `A022265.P1507790066662011827`, by `A022265.P1507790066662011827.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A022265.P16630272814952323157

`C(7*n+1, 2)/7`
-/

namespace A022265.P16630272814952323157
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose (7 * n + 1) 2 : ℚ) / 7

end

end A022265.P16630272814952323157

namespace A022265

/-- `C(7*n+1, 2)/7` -/
def P16630272814952323157.Spec : Prop :=
  ∀ n, P16630272814952323157.a n = (A022265 n : ℚ)

end A022265

/-! ## A022265.P1507790066662011827

`n*(7*n+1)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A022265.P1507790066662011827
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n * (7 * n + 1) : ℚ) / 2

end

end A022265.P1507790066662011827

namespace A022265

/-- `n*(7*n+1)/2` -/
def P1507790066662011827.Spec : Prop :=
  ∀ n, P1507790066662011827.a n = (A022265 n : ℚ)

theorem P1507790066662011827.correct : P1507790066662011827.Spec := by
  intro n
  induction n with
  | zero => simp [A022265, A022265.P1507790066662011827.a, A022265.P16574911985288338222.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
  | succ m ih =>
    simp only [A022265, Nat.add_sub_cancel, A022265.P1507790066662011827.a, A022265.P16574911985288338222.a, SequenceMachineLib.memo_apply] at ih ⊢
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    try simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
    try push_cast at ih ⊢
    try linarith

end A022265

/-! ## A022265.P16574911985288338222

`7*n+a(n-1)-3` with `a(0)=0`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A022265

/-- `7*n+a(n-1)-3` -/
def P16574911985288338222.Spec : Prop :=
  ∀ n, P16574911985288338222.a n = A022265 n

theorem P16574911985288338222.correct : P16574911985288338222.Spec := by
  intro n
  simp only [A022265]

end A022265

/-! ## A022265.P8242181877183053874

`A049453(n)-A005475(n)`
-/

namespace A022265.P8242181877183053874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049453 n - A005475 n

end

end A022265.P8242181877183053874

namespace A022265

/-- `A049453(n)-A005475(n)` -/
def P8242181877183053874.Spec : Prop :=
  ∀ n, P8242181877183053874.a n = A022265 n

end A022265

/-! ## A022265.P13287121107740525509

`A000217(n)+3*A000290(n)`
-/

namespace A022265.P13287121107740525509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n + 3 * A000290 n

end

end A022265.P13287121107740525509

namespace A022265

/-- `A000217(n)+3*A000290(n)` -/
def P13287121107740525509.Spec : Prop :=
  ∀ n, P13287121107740525509.a n = A022265 n

end A022265

/-! ## A022265.P17802468061077359832

`A000217(4*n)-A000217(3*n)`
-/

namespace A022265.P17802468061077359832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (4 * n) - A000217 (3 * n)

end

end A022265.P17802468061077359832

namespace A022265

/-- `A000217(4*n)-A000217(3*n)` -/
def P17802468061077359832.Spec : Prop :=
  ∀ n, P17802468061077359832.a n = A022265 n

end A022265

/-! ## A022265.P5248503134717904338

`A174738(7*n+3)`
-/

namespace A022265.P5248503134717904338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174738 (7 * n + 3)

end

end A022265.P5248503134717904338

namespace A022265

/-- `A174738(7*n+3)` -/
def P5248503134717904338.Spec : Prop :=
  ∀ n, P5248503134717904338.a n = A022265 n

end A022265

/-! ## A022265.P8506838782335002606

`(2*n)²-C(n, 2)`
-/

namespace A022265.P8506838782335002606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 * n) ^ 2 : ℤ) - (Nat.choose n 2 : ℤ)

end

end A022265.P8506838782335002606

namespace A022265

/-- `(2*n)²-C(n, 2)` -/
def P8506838782335002606.Spec : Prop :=
  ∀ n, P8506838782335002606.a n = A022265 n

end A022265

/-! ## A022265.P11208135112464250838

`∑[a(n-1)+7]` with `a(0)=0, a(1)=4`
-/

namespace A022265.P11208135112464250838
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 4] fun n f1 =>
  f1 (n - 1) + 7

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A022265.P11208135112464250838

namespace A022265

/-- `∑[a(n-1)+7]` -/
def P11208135112464250838.Spec : Prop :=
  ∀ n, (P11208135112464250838.a n : ℤ) = A022265 n

end A022265

/-! ## A022265.P18332097514165181383

`∑[ogf((4x+3x^2)/(1-2x+x^2))]`
-/

namespace A022265.P18332097514165181383
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 4, 3] [1, -2, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A022265.P18332097514165181383

namespace A022265

/-- `∑[ogf((4x+3x^2)/(1-2x+x^2))]` -/
def P18332097514165181383.Spec : Prop :=
  ∀ n, P18332097514165181383.a n = A022265 n

end A022265

/-! ## A022265.P14676358635531443343

`ogf((4x+3x^2)/(1-3x+3x^2-x^3))`
-/

namespace A022265.P14676358635531443343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 4, 3] [1, -3, 3, -1] n

end

end A022265.P14676358635531443343

namespace A022265

/-- `ogf((4x+3x^2)/(1-3x+3x^2-x^3))` -/
def P14676358635531443343.Spec : Prop :=
  ∀ n, P14676358635531443343.a n = A022265 n

end A022265

/-! ## A022265.P5954367864725247281

`7*n-(3-a(n-1))` with `a(0)=0`
-/

namespace A022265.P5954367864725247281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (7 * n : ℤ) - (3 - a (n - 1))

end

end A022265.P5954367864725247281

namespace A022265

/-- `7*n-(3-a(n-1))` -/
def P5954367864725247281.Spec : Prop :=
  ∀ n, P5954367864725247281.a n = A022265 n

theorem P5954367864725247281.correct : P5954367864725247281.Spec := by
  intro n
  simp only [A022265, Nat.add_sub_cancel, A022265.P5954367864725247281.a, A022265.P16574911985288338222.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A022265

/-! ## A022265.P13374799400351940104

`(2*n)²-lcm(n, n-1)/2`
-/

namespace A022265.P13374799400351940104
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((2 * n) ^ 2 : ℚ) - (Int.lcm (n : ℤ) ((n : ℤ) - 1) : ℚ) / 2

end

end A022265.P13374799400351940104

namespace A022265

/-- `(2*n)²-lcm(n, n-1)/2` -/
def P13374799400351940104.Spec : Prop :=
  ∀ n, P13374799400351940104.a n = (A022265 n : ℚ)

end A022265

/-! ## A022265.P14522199861658987836

`xor(∑[n-1]-(2*n)², -1)`
-/

namespace A022265.P14522199861658987836
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (∑ j ∈ Finset.range (n + 1), f1 j - ((2 * n) ^ 2 : ℤ)) (-1)

end

end A022265.P14522199861658987836

namespace A022265

/-- `xor(∑[n-1]-(2*n)², -1)` -/
def P14522199861658987836.Spec : Prop :=
  ∀ n, P14522199861658987836.a n = A022265 n

end A022265

/-! ## A022265.P16879546715972052141

`A006124(n)-3`
-/

namespace A022265.P16879546715972052141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006124 n - 3

end

end A022265.P16879546715972052141

namespace A022265

/-- `A006124(n)-3` -/
def P16879546715972052141.Spec : Prop :=
  ∀ n, P16879546715972052141.a n = A022265 n

end A022265

/-! ## A022265.P14349652730317413997

`A022264(n)+n`
-/

namespace A022265.P14349652730317413997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022264 n + (n : ℤ)

end

end A022265.P14349652730317413997

namespace A022265

/-- `A022264(n)+n` -/
def P14349652730317413997.Spec : Prop :=
  ∀ n, P14349652730317413997.a n = A022265 n

end A022265

/-! ## A022265.P2983814250133518028

`A186029(n)-n`
-/

namespace A022265.P2983814250133518028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186029 n - (n : ℤ)

end

end A022265.P2983814250133518028

namespace A022265

/-- `A186029(n)-n` -/
def P2983814250133518028.Spec : Prop :=
  ∀ n, P2983814250133518028.a n = A022265 n

end A022265

/-! ## A022265.P8919405879504013

`A022267(n)-n²`
-/

namespace A022265.P8919405879504013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022267 n - (n ^ 2 : ℤ)

end

end A022265.P8919405879504013

namespace A022265

/-- `A022267(n)-n²` -/
def P8919405879504013.Spec : Prop :=
  ∀ n, P8919405879504013.a n = A022265 n

end A022265

/-! ## A022265.P12710209003597625967

`A033428(n)+∑[n]`
-/

namespace A022265.P12710209003597625967
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033428 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A022265.P12710209003597625967

namespace A022265

/-- `A033428(n)+∑[n]` -/
def P12710209003597625967.Spec : Prop :=
  ∀ n, P12710209003597625967.a n = A022265 n

end A022265

/-! ## A022265.P14952511464549428950

`A007742(n)-∑[n]`
-/

namespace A022265.P14952511464549428950
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007742 n - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A022265.P14952511464549428950

namespace A022265

/-- `A007742(n)-∑[n]` -/
def P14952511464549428950.Spec : Prop :=
  ∀ n, P14952511464549428950.a n = A022265 n

end A022265

/-!
# A022266: a(n) = n*(9*n - 1)/2.

The programs for A022266, the canonical program `A022266.P7379945511447748601` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A022266 has offset 0).

The definition of A022266 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(9*n-1)/2` (program `A022266.P15142665201138217865`, by `A022266.P15142665201138217865.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A022266.P17036417405594876715

`C(9*n, 2)/9`
-/

namespace A022266.P17036417405594876715
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose (9 * n) 2 : ℚ) / 9

end

end A022266.P17036417405594876715

namespace A022266

/-- `C(9*n, 2)/9` -/
def P17036417405594876715.Spec : Prop :=
  ∀ n, P17036417405594876715.a n = (A022266 n : ℚ)

end A022266

/-! ## A022266.P15142665201138217865

`n*(9*n-1)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A022266.P15142665201138217865
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) * ((9 * n : ℤ) - 1) : ℚ) / 2

end

end A022266.P15142665201138217865

namespace A022266

/-- `n*(9*n-1)/2` -/
def P15142665201138217865.Spec : Prop :=
  ∀ n, P15142665201138217865.a n = (A022266 n : ℚ)

theorem P15142665201138217865.correct : P15142665201138217865.Spec := by
  intro n
  induction n with
  | zero => simp [A022266, A022266.P15142665201138217865.a, A022266.P7379945511447748601.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
  | succ m ih =>
    simp only [A022266, Nat.add_sub_cancel, A022266.P15142665201138217865.a, A022266.P7379945511447748601.a, SequenceMachineLib.memo_apply] at ih ⊢
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    try simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
    try push_cast at ih ⊢
    try linarith

end A022266

/-! ## A022266.P7379945511447748601

`9*n+a(n-1)-5` with `a(0)=0`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A022266

/-- `9*n+a(n-1)-5` -/
def P7379945511447748601.Spec : Prop :=
  ∀ n, P7379945511447748601.a n = A022266 n

theorem P7379945511447748601.correct : P7379945511447748601.Spec := by
  intro n
  simp only [A022266]

end A022266

/-! ## A022266.P682918024224344804

`A049452(n)-A000326(n)`
-/

namespace A022266.P682918024224344804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049452 n - A000326 n

end

end A022266.P682918024224344804

namespace A022266

/-- `A049452(n)-A000326(n)` -/
def P682918024224344804.Spec : Prop :=
  ∀ n, P682918024224344804.a n = A022266 n

end A022266

/-! ## A022266.P1191373314598551702

`A218470(9*n+3)`
-/

namespace A022266.P1191373314598551702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218470 (9 * n + 3)

end

end A022266.P1191373314598551702

namespace A022266

/-- `A218470(9*n+3)` -/
def P1191373314598551702.Spec : Prop :=
  ∀ n, P1191373314598551702.a n = A022266 n

end A022266

/-! ## A022266.P16268611495928545964

`C(3*n, 2)+n`
-/

namespace A022266.P16268611495928545964
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (3 * n) 2 + n

end

end A022266.P16268611495928545964

namespace A022266

/-- `C(3*n, 2)+n` -/
def P16268611495928545964.Spec : Prop :=
  ∀ n, (P16268611495928545964.a n : ℤ) = A022266 n

end A022266

/-! ## A022266.P3773394276876932352

`∑[a(n-1)+9]` with `a(0)=0, a(1)=4`
-/

namespace A022266.P3773394276876932352
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 4] fun n f1 =>
  f1 (n - 1) + 9

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A022266.P3773394276876932352

namespace A022266

/-- `∑[a(n-1)+9]` -/
def P3773394276876932352.Spec : Prop :=
  ∀ n, (P3773394276876932352.a n : ℤ) = A022266 n

end A022266

/-! ## A022266.P10041165019834893219

`∑[ogf((4x+5x^2)/(1-2x+x^2))]`
-/

namespace A022266.P10041165019834893219
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 4, 5] [1, -2, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A022266.P10041165019834893219

namespace A022266

/-- `∑[ogf((4x+5x^2)/(1-2x+x^2))]` -/
def P10041165019834893219.Spec : Prop :=
  ∀ n, P10041165019834893219.a n = A022266 n

end A022266

/-! ## A022266.P8183953487434596699

`ogf((4x+5x^2)/(1-3x+3x^2-x^3))`
-/

namespace A022266.P8183953487434596699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 4, 5] [1, -3, 3, -1] n

end

end A022266.P8183953487434596699

namespace A022266

/-- `ogf((4x+5x^2)/(1-3x+3x^2-x^3))` -/
def P8183953487434596699.Spec : Prop :=
  ∀ n, P8183953487434596699.a n = A022266 n

end A022266

/-! ## A022266.P10951774607142217976

`A276819(n)-1`
-/

namespace A022266.P10951774607142217976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276819 n - 1

end

end A022266.P10951774607142217976

namespace A022266

/-- `A276819(n)-1` -/
def P10951774607142217976.Spec : Prop :=
  ∀ n, P10951774607142217976.a n = A022266 n

end A022266

/-! ## A022266.P10136974188616127385

`A062741(n)+n`
-/

namespace A022266.P10136974188616127385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062741 n + (n : ℤ)

end

end A022266.P10136974188616127385

namespace A022266

/-- `A062741(n)+n` -/
def P10136974188616127385.Spec : Prop :=
  ∀ n, P10136974188616127385.a n = A022266 n

end A022266

/-! ## A022266.P17300949381072542720

`A022267(n)-n`
-/

namespace A022266.P17300949381072542720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022267 n - (n : ℤ)

end

end A022266.P17300949381072542720

namespace A022266

/-- `A022267(n)-n` -/
def P17300949381072542720.Spec : Prop :=
  ∀ n, P17300949381072542720.a n = A022266 n

end A022266

/-! ## A022266.P684713075237459249

`A022264(n)+n²`
-/

namespace A022266.P684713075237459249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022264 n + (n ^ 2 : ℤ)

end

end A022266.P684713075237459249

namespace A022266

/-- `A022264(n)+n²` -/
def P684713075237459249.Spec : Prop :=
  ∀ n, P684713075237459249.a n = A022266 n

end A022266

/-! ## A022266.P1302082691716824995

`A022268(n)-n²`
-/

namespace A022266.P1302082691716824995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022268 n - (n ^ 2 : ℤ)

end

end A022266.P1302082691716824995

namespace A022266

/-- `A022268(n)-n²` -/
def P1302082691716824995.Spec : Prop :=
  ∀ n, P1302082691716824995.a n = A022266 n

end A022266

/-! ## A022266.P11894759990777133211

`A033991(n)+∑[n]`
-/

namespace A022266.P11894759990777133211
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033991 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A022266.P11894759990777133211

namespace A022266

/-- `A033991(n)+∑[n]` -/
def P11894759990777133211.Spec : Prop :=
  ∀ n, P11894759990777133211.a n = A022266 n

end A022266

/-! ## A022266.P5840671241116976119

`A033429(n)-∑[n]`
-/

namespace A022266.P5840671241116976119
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033429 n - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A022266.P5840671241116976119

namespace A022266

/-- `A033429(n)-∑[n]` -/
def P5840671241116976119.Spec : Prop :=
  ∀ n, P5840671241116976119.a n = A022266 n

end A022266

/-! ## A022266.P5545931848318744192

`A006137(n)-(n+1)`
-/

namespace A022266.P5545931848318744192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006137 n - (n + 1 : ℤ)

end

end A022266.P5545931848318744192

namespace A022266

/-- `A006137(n)-(n+1)` -/
def P5545931848318744192.Spec : Prop :=
  ∀ n, P5545931848318744192.a n = A022266 n

end A022266

/-! ## A022266.P12284212805367853583

`A080855(n)-1+n`
-/

namespace A022266.P12284212805367853583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080855 n - 1 + (n : ℤ)

end

end A022266.P12284212805367853583

namespace A022266

/-- `A080855(n)-1+n` -/
def P12284212805367853583.Spec : Prop :=
  ∀ n, P12284212805367853583.a n = A022266 n

end A022266

/-! ## A022266.P17003120034640298318

`A062708(n)+2*n`
-/

namespace A022266.P17003120034640298318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062708 n + (2 * n : ℤ)

end

end A022266.P17003120034640298318

namespace A022266

/-- `A062708(n)+2*n` -/
def P17003120034640298318.Spec : Prop :=
  ∀ n, P17003120034640298318.a n = A022266 n

end A022266

/-! ## A022266.P233707488700608927

`A051682(n)+3*n`
-/

namespace A022266.P233707488700608927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051682 n + (3 * n : ℤ)

end

end A022266.P233707488700608927

namespace A022266

/-- `A051682(n)+3*n` -/
def P233707488700608927.Spec : Prop :=
  ∀ n, P233707488700608927.a n = A022266 n

end A022266

/-!
# A022267: a(n) = n*(9*n + 1)/2.

The programs for A022267, the canonical program `A022267.P13664173545083149253` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A022267 has offset 0).

The definition of A022267 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(9*n+1)/2` (program `A022267.P16926893697860587047`, by `A022267.P16926893697860587047.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A022267.P12699257515948345652

`C(9*n+1, 2)/9`
-/

namespace A022267.P12699257515948345652
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose (9 * n + 1) 2 : ℚ) / 9

end

end A022267.P12699257515948345652

namespace A022267

/-- `C(9*n+1, 2)/9` -/
def P12699257515948345652.Spec : Prop :=
  ∀ n, P12699257515948345652.a n = (A022267 n : ℚ)

end A022267

/-! ## A022267.P16926893697860587047

`n*(9*n+1)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A022267.P16926893697860587047
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n * (9 * n + 1) : ℚ) / 2

end

end A022267.P16926893697860587047

namespace A022267

/-- `n*(9*n+1)/2` -/
def P16926893697860587047.Spec : Prop :=
  ∀ n, P16926893697860587047.a n = (A022267 n : ℚ)

theorem P16926893697860587047.correct : P16926893697860587047.Spec := by
  intro n
  induction n with
  | zero => simp [A022267, A022267.P16926893697860587047.a, A022267.P13664173545083149253.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
  | succ m ih =>
    simp only [A022267, Nat.add_sub_cancel, A022267.P16926893697860587047.a, A022267.P13664173545083149253.a, SequenceMachineLib.memo_apply] at ih ⊢
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    try simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
    try push_cast at ih ⊢
    try linarith

end A022267

/-! ## A022267.P13664173545083149253

`9*n+a(n-1)-4` with `a(0)=0`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A022267

/-- `9*n+a(n-1)-4` -/
def P13664173545083149253.Spec : Prop :=
  ∀ n, P13664173545083149253.a n = A022267 n

theorem P13664173545083149253.correct : P13664173545083149253.Spec := by
  intro n
  simp only [A022267]

end A022267

/-! ## A022267.P3478724111961155470

`A060544(n+1)-A016813(n)`
-/

namespace A022267.P3478724111961155470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060544 (n + 1) - A016813 n

end

end A022267.P3478724111961155470

namespace A022267

/-- `A060544(n+1)-A016813(n)` -/
def P3478724111961155470.Spec : Prop :=
  ∀ n, P3478724111961155470.a n = A022267 n

end A022267

/-! ## A022267.P72904052607513666

`4*A000217(n)+A000566(n)`
-/

namespace A022267.P72904052607513666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A000217 n + A000566 n

end

end A022267.P72904052607513666

namespace A022267

/-- `4*A000217(n)+A000566(n)` -/
def P72904052607513666.Spec : Prop :=
  ∀ n, P72904052607513666.a n = A022267 n

end A022267

/-! ## A022267.P96163814065845413

`A000217(5*n)-A000217(4*n)`
-/

namespace A022267.P96163814065845413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (5 * n) - A000217 (4 * n)

end

end A022267.P96163814065845413

namespace A022267

/-- `A000217(5*n)-A000217(4*n)` -/
def P96163814065845413.Spec : Prop :=
  ∀ n, P96163814065845413.a n = A022267 n

end A022267

/-! ## A022267.P10850584814433508807

`A218470(9*n+4)`
-/

namespace A022267.P10850584814433508807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218470 (9 * n + 4)

end

end A022267.P10850584814433508807

namespace A022267

/-- `A218470(9*n+4)` -/
def P10850584814433508807.Spec : Prop :=
  ∀ n, P10850584814433508807.a n = A022267 n

end A022267

/-! ## A022267.P2527361663779526092

`5*n²-C(n, 2)`
-/

namespace A022267.P2527361663779526092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (5 * n ^ 2 : ℤ) - (Nat.choose n 2 : ℤ)

end

end A022267.P2527361663779526092

namespace A022267

/-- `5*n²-C(n, 2)` -/
def P2527361663779526092.Spec : Prop :=
  ∀ n, P2527361663779526092.a n = A022267 n

end A022267

/-! ## A022267.P5794876886782675445

`∑[a(n-1)+9]` with `a(0)=0, a(1)=5`
-/

namespace A022267.P5794876886782675445
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 5] fun n f1 =>
  f1 (n - 1) + 9

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A022267.P5794876886782675445

namespace A022267

/-- `∑[a(n-1)+9]` -/
def P5794876886782675445.Spec : Prop :=
  ∀ n, (P5794876886782675445.a n : ℤ) = A022267 n

end A022267

/-! ## A022267.P17040095022507204878

`C(3*n+1, 2)-n`
-/

namespace A022267.P17040095022507204878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (3 * n + 1) 2 : ℤ) - (n : ℤ)

end

end A022267.P17040095022507204878

namespace A022267

/-- `C(3*n+1, 2)-n` -/
def P17040095022507204878.Spec : Prop :=
  ∀ n, P17040095022507204878.a n = A022267 n

end A022267

/-! ## A022267.P5223879023217211841

`∑[ogf((5x+4x^2)/(1-2x+x^2))]`
-/

namespace A022267.P5223879023217211841
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 5, 4] [1, -2, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A022267.P5223879023217211841

namespace A022267

/-- `∑[ogf((5x+4x^2)/(1-2x+x^2))]` -/
def P5223879023217211841.Spec : Prop :=
  ∀ n, P5223879023217211841.a n = A022267 n

end A022267

/-! ## A022267.P6857507584972726413

`ogf((5x+4x^2)/(1-3x+3x^2-x^3))`
-/

namespace A022267.P6857507584972726413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 5, 4] [1, -3, 3, -1] n

end

end A022267.P6857507584972726413

namespace A022267

/-- `ogf((5x+4x^2)/(1-3x+3x^2-x^3))` -/
def P6857507584972726413.Spec : Prop :=
  ∀ n, P6857507584972726413.a n = A022267 n

end A022267

/-! ## A022267.P13833229935377889077

`9*n-(4-a(n-1))` with `a(0)=0`
-/

namespace A022267.P13833229935377889077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (9 * n : ℤ) - (4 - a (n - 1))

end

end A022267.P13833229935377889077

namespace A022267

/-- `9*n-(4-a(n-1))` -/
def P13833229935377889077.Spec : Prop :=
  ∀ n, P13833229935377889077.a n = A022267 n

theorem P13833229935377889077.correct : P13833229935377889077.Spec := by
  intro n
  simp only [A022267, Nat.add_sub_cancel, A022267.P13833229935377889077.a, A022267.P13664173545083149253.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A022267

/-! ## A022267.P1570361355591439660

`A006137(n)-1`
-/

namespace A022267.P1570361355591439660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006137 n - 1

end

end A022267.P1570361355591439660

namespace A022267

/-- `A006137(n)-1` -/
def P1570361355591439660.Spec : Prop :=
  ∀ n, P1570361355591439660.a n = A022267 n

end A022267

/-! ## A022267.P14346256460829148867

`A022266(n)+n`
-/

namespace A022267.P14346256460829148867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022266 n + (n : ℤ)

end

end A022267.P14346256460829148867

namespace A022267

/-- `A022266(n)+n` -/
def P14346256460829148867.Spec : Prop :=
  ∀ n, P14346256460829148867.a n = A022267 n

end A022267

/-! ## A022267.P9392747159076712587

`A081266(n)-n`
-/

namespace A022267.P9392747159076712587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081266 n - (n : ℤ)

end

end A022267.P9392747159076712587

namespace A022267

/-- `A081266(n)-n` -/
def P9392747159076712587.Spec : Prop :=
  ∀ n, P9392747159076712587.a n = A022267 n

end A022267

/-! ## A022267.P1862566390542901836

`∑[A122709(n)-1]`
-/

namespace A022267.P1862566390542901836
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122709 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A022267.P1862566390542901836

namespace A022267

/-- `∑[A122709(n)-1]` -/
def P1862566390542901836.Spec : Prop :=
  ∀ n, P1862566390542901836.a n = A022267 n

end A022267

/-! ## A022267.P15564738499756966627

`A022265(n)+n²`
-/

namespace A022267.P15564738499756966627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022265 n + (n ^ 2 : ℤ)

end

end A022267.P15564738499756966627

namespace A022267

/-- `A022265(n)+n²` -/
def P15564738499756966627.Spec : Prop :=
  ∀ n, P15564738499756966627.a n = A022267 n

end A022267

/-! ## A022267.P5417414427358156485

`A022269(n)-n²`
-/

namespace A022267.P5417414427358156485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022269 n - (n ^ 2 : ℤ)

end

end A022267.P5417414427358156485

namespace A022267

/-- `A022269(n)-n²` -/
def P5417414427358156485.Spec : Prop :=
  ∀ n, P5417414427358156485.a n = A022267 n

end A022267

/-! ## A022267.P7496568320987483023

`A016742(n)+∑[n]`
-/

namespace A022267.P7496568320987483023
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016742 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A022267.P7496568320987483023

namespace A022267

/-- `A016742(n)+∑[n]` -/
def P7496568320987483023.Spec : Prop :=
  ∀ n, P7496568320987483023.a n = A022267 n

end A022267

/-!
# A022268: a(n) = n*(11*n - 1)/2.

The programs for A022268, the canonical program `A022268.P10958892736804617201` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A022268 has offset 0).

The definition of A022268 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(11*n-1)/2` (program `A022268.P7631669911160276569`, by `A022268.P7631669911160276569.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A022268.P7631669911160276569

`n*(11*n-1)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A022268.P7631669911160276569
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) * ((11 * n : ℤ) - 1) : ℚ) / 2

end

end A022268.P7631669911160276569

namespace A022268

/-- `n*(11*n-1)/2` -/
def P7631669911160276569.Spec : Prop :=
  ∀ n, P7631669911160276569.a n = (A022268 n : ℚ)

theorem P7631669911160276569.correct : P7631669911160276569.Spec := by
  intro n
  induction n with
  | zero => simp [A022268, A022268.P7631669911160276569.a, A022268.P10958892736804617201.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
  | succ m ih =>
    simp only [A022268, Nat.add_sub_cancel, A022268.P7631669911160276569.a, A022268.P10958892736804617201.a, SequenceMachineLib.memo_apply] at ih ⊢
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    try simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
    try push_cast at ih ⊢
    try linarith

end A022268

/-! ## A022268.P10958892736804617201

`11*n+a(n-1)-6` with `a(0)=0`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A022268

/-- `11*n+a(n-1)-6` -/
def P10958892736804617201.Spec : Prop :=
  ∀ n, P10958892736804617201.a n = A022268 n

theorem P10958892736804617201.correct : P10958892736804617201.Spec := by
  intro n
  simp only [A022268]

end A022268

/-! ## A022268.P1751680171683625376

`1/11*C(11*n, 2)`
-/

namespace A022268.P1751680171683625376
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 11 * (Nat.choose (11 * n) 2 : ℚ)

end

end A022268.P1751680171683625376

namespace A022268

/-- `1/11*C(11*n, 2)` -/
def P1751680171683625376.Spec : Prop :=
  ∀ n, P1751680171683625376.a n = (A022268 n : ℚ)

end A022268

/-! ## A022268.P7010563969553295900

`∑[a(n-1)+11]` with `a(0)=0, a(1)=5`
-/

namespace A022268.P7010563969553295900
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 5] fun n f1 =>
  f1 (n - 1) + 11

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A022268.P7010563969553295900

namespace A022268

/-- `∑[a(n-1)+11]` -/
def P7010563969553295900.Spec : Prop :=
  ∀ n, (P7010563969553295900.a n : ℤ) = A022268 n

end A022268

/-! ## A022268.P10350452934330753206

`∑[ogf((5x+6x^2)/(1-2x+x^2))]`
-/

namespace A022268.P10350452934330753206
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 5, 6] [1, -2, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A022268.P10350452934330753206

namespace A022268

/-- `∑[ogf((5x+6x^2)/(1-2x+x^2))]` -/
def P10350452934330753206.Spec : Prop :=
  ∀ n, P10350452934330753206.a n = A022268 n

end A022268

/-! ## A022268.P5576740772171615712

`ogf((5x+6x^2)/(1-3x+3x^2-x^3))`
-/

namespace A022268.P5576740772171615712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 5, 6] [1, -3, 3, -1] n

end

end A022268.P5576740772171615712

namespace A022268

/-- `ogf((5x+6x^2)/(1-3x+3x^2-x^3))` -/
def P5576740772171615712.Spec : Prop :=
  ∀ n, P5576740772171615712.a n = A022268 n

end A022268

/-! ## A022268.P12082911958335657298

`∑[2*n]+C(3*n, 2)`
-/

namespace A022268.P12082911958335657298
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + Nat.choose (3 * n) 2

end

end A022268.P12082911958335657298

namespace A022268

/-- `∑[2*n]+C(3*n, 2)` -/
def P12082911958335657298.Spec : Prop :=
  ∀ n, (P12082911958335657298.a n : ℤ) = A022268 n

end A022268

/-! ## A022268.P2798490759370291674

`(5*n-3)*3*n-(19*C(n, 2)+n)`
-/

namespace A022268.P2798490759370291674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((5 * n : ℤ) - 3) * (3 * n : ℤ) - (19 * Nat.choose n 2 + n : ℤ)

end

end A022268.P2798490759370291674

namespace A022268

/-- `(5*n-3)*3*n-(19*C(n, 2)+n)` -/
def P2798490759370291674.Spec : Prop :=
  ∀ n, P2798490759370291674.a n = A022268 n

end A022268

/-! ## A022268.P6397007531710661602

`A022269(n)-n`
-/

namespace A022268.P6397007531710661602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022269 n - (n : ℤ)

end

end A022268.P6397007531710661602

namespace A022268

/-- `A022269(n)-n` -/
def P6397007531710661602.Spec : Prop :=
  ∀ n, P6397007531710661602.a n = A022268 n

end A022268

/-! ## A022268.P13738908302100908901

`A022266(n)+n²`
-/

namespace A022268.P13738908302100908901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022266 n + (n ^ 2 : ℤ)

end

end A022268.P13738908302100908901

namespace A022268

/-- `A022266(n)+n²` -/
def P13738908302100908901.Spec : Prop :=
  ∀ n, P13738908302100908901.a n = A022268 n

end A022268

/-! ## A022268.P4319089291061597295

`A022270(n)-n²`
-/

namespace A022268.P4319089291061597295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022270 n - (n ^ 2 : ℤ)

end

end A022268.P4319089291061597295

namespace A022268

/-- `A022270(n)-n²` -/
def P4319089291061597295.Spec : Prop :=
  ∀ n, P4319089291061597295.a n = A022268 n

end A022268

/-! ## A022268.P15421803156692296074

`A033581(n)-∑[n]`
-/

namespace A022268.P15421803156692296074
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033581 n - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A022268.P15421803156692296074

namespace A022268

/-- `A033581(n)-∑[n]` -/
def P15421803156692296074.Spec : Prop :=
  ∀ n, P15421803156692296074.a n = A022268 n

end A022268

/-! ## A022268.P796594750883028893

`A226492(n)+2*n`
-/

namespace A022268.P796594750883028893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226492 n + (2 * n : ℤ)

end

end A022268.P796594750883028893

namespace A022268

/-- `A226492(n)+2*n` -/
def P796594750883028893.Spec : Prop :=
  ∀ n, P796594750883028893.a n = A022268 n

end A022268

/-! ## A022268.P15463217744668029910

`A180223(n)+3*n`
-/

namespace A022268.P15463217744668029910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180223 n + (3 * n : ℤ)

end

end A022268.P15463217744668029910

namespace A022268

/-- `A180223(n)+3*n` -/
def P15463217744668029910.Spec : Prop :=
  ∀ n, P15463217744668029910.a n = A022268 n

end A022268

/-! ## A022268.P11832330437522608246

`A254963(n)-2*n`
-/

namespace A022268.P11832330437522608246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254963 n - (2 * n : ℤ)

end

end A022268.P11832330437522608246

namespace A022268

/-- `A254963(n)-2*n` -/
def P11832330437522608246.Spec : Prop :=
  ∀ n, P11832330437522608246.a n = A022268 n

end A022268

/-! ## A022268.P16083766945192703640

`A051865(n)+4*n`
-/

namespace A022268.P16083766945192703640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051865 n + (4 * n : ℤ)

end

end A022268.P16083766945192703640

namespace A022268

/-- `A051865(n)+4*n` -/
def P16083766945192703640.Spec : Prop :=
  ∀ n, P16083766945192703640.a n = A022268 n

end A022268

/-! ## A022268.P18231974533142640964

`A211013(n)-5*n`
-/

namespace A022268.P18231974533142640964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211013 n - (5 * n : ℤ)

end

end A022268.P18231974533142640964

namespace A022268

/-- `A211013(n)-5*n` -/
def P18231974533142640964.Spec : Prop :=
  ∀ n, P18231974533142640964.a n = A022268 n

end A022268

/-! ## A022268.P7610151107095543628

`A062741(n)+n²+n`
-/

namespace A022268.P7610151107095543628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062741 n + (n ^ 2 + n : ℤ)

end

end A022268.P7610151107095543628

namespace A022268

/-- `A062741(n)+n²+n` -/
def P7610151107095543628.Spec : Prop :=
  ∀ n, P7610151107095543628.a n = A022268 n

end A022268

/-! ## A022268.P8685680401557318675

`A022271(n)-(n²+n)`
-/

namespace A022268.P8685680401557318675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022271 n - (n ^ 2 + n : ℤ)

end

end A022268.P8685680401557318675

namespace A022268

/-- `A022271(n)-(n²+n)` -/
def P8685680401557318675.Spec : Prop :=
  ∀ n, P8685680401557318675.a n = A022268 n

end A022268

/-! ## A022268.P18320572690815823417

`A016742(n)+A000326(n)`
-/

namespace A022268.P18320572690815823417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016742 n + A000326 n

end

end A022268.P18320572690815823417

namespace A022268

/-- `A016742(n)+A000326(n)` -/
def P18320572690815823417.Spec : Prop :=
  ∀ n, P18320572690815823417.a n = A022268 n

end A022268

/-!
# A022269: a(n) = n*(11*n+1)/2.

The programs for A022269, the canonical program `A022269.P5798965338642264025` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A022269 has offset 0).

The definition of A022269 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(11*n+1)/2` (program `A022269.P3896963725451025286`, by `A022269.P3896963725451025286.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A022269.P3896963725451025286

`n*(11*n+1)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A022269.P3896963725451025286
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n * (11 * n + 1) : ℚ) / 2

end

end A022269.P3896963725451025286

namespace A022269

/-- `n*(11*n+1)/2` -/
def P3896963725451025286.Spec : Prop :=
  ∀ n, P3896963725451025286.a n = (A022269 n : ℚ)

theorem P3896963725451025286.correct : P3896963725451025286.Spec := by
  intro n
  induction n with
  | zero => simp [A022269, A022269.P3896963725451025286.a, A022269.P5798965338642264025.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
  | succ m ih =>
    simp only [A022269, Nat.add_sub_cancel, A022269.P3896963725451025286.a, A022269.P5798965338642264025.a, SequenceMachineLib.memo_apply] at ih ⊢
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    try simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
    try push_cast at ih ⊢
    try linarith

end A022269

/-! ## A022269.P5798965338642264025

`11*n+a(n-1)-5` with `a(0)=0`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A022269

/-- `11*n+a(n-1)-5` -/
def P5798965338642264025.Spec : Prop :=
  ∀ n, P5798965338642264025.a n = A022269 n

theorem P5798965338642264025.correct : P5798965338642264025.Spec := by
  intro n
  simp only [A022269]

end A022269

/-! ## A022269.P6908441761776710343

`A000217(6*n)-A000217(5*n)`
-/

namespace A022269.P6908441761776710343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (6 * n) - A000217 (5 * n)

end

end A022269.P6908441761776710343

namespace A022269

/-- `A000217(6*n)-A000217(5*n)` -/
def P6908441761776710343.Spec : Prop :=
  ∀ n, P6908441761776710343.a n = A022269 n

end A022269

/-! ## A022269.P6323008707648252172

`A218530(11*n+5)`
-/

namespace A022269.P6323008707648252172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218530 (11 * n + 5)

end

end A022269.P6323008707648252172

namespace A022269

/-- `A218530(11*n+5)` -/
def P6323008707648252172.Spec : Prop :=
  ∀ n, P6323008707648252172.a n = A022269 n

end A022269

/-! ## A022269.P6721490077750756814

`∑[a(n-1)+11]` with `a(0)=0, a(1)=6`
-/

namespace A022269.P6721490077750756814
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 6] fun n f1 =>
  f1 (n - 1) + 11

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A022269.P6721490077750756814

namespace A022269

/-- `∑[a(n-1)+11]` -/
def P6721490077750756814.Spec : Prop :=
  ∀ n, (P6721490077750756814.a n : ℤ) = A022269 n

end A022269

/-! ## A022269.P13561732555251377128

`6*n+11*C(n, 2)`
-/

namespace A022269.P13561732555251377128
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 * n + 11 * Nat.choose n 2

end

end A022269.P13561732555251377128

namespace A022269

/-- `6*n+11*C(n, 2)` -/
def P13561732555251377128.Spec : Prop :=
  ∀ n, (P13561732555251377128.a n : ℤ) = A022269 n

end A022269

/-! ## A022269.P2862749418051129440

`∑[ogf((6x+5x^2)/(1-2x+x^2))]`
-/

namespace A022269.P2862749418051129440
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 6, 5] [1, -2, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A022269.P2862749418051129440

namespace A022269

/-- `∑[ogf((6x+5x^2)/(1-2x+x^2))]` -/
def P2862749418051129440.Spec : Prop :=
  ∀ n, P2862749418051129440.a n = A022269 n

end A022269

/-! ## A022269.P11832172397989060124

`ogf((6x+5x^2)/(1-3x+3x^2-x^3))`
-/

namespace A022269.P11832172397989060124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 6, 5] [1, -3, 3, -1] n

end

end A022269.P11832172397989060124

namespace A022269

/-- `ogf((6x+5x^2)/(1-3x+3x^2-x^3))` -/
def P11832172397989060124.Spec : Prop :=
  ∀ n, P11832172397989060124.a n = A022269 n

end A022269

/-! ## A022269.P15452507326185757431

`abs(C(2*n, 2)-(8*n²-∑[n]))`
-/

namespace A022269.P15452507326185757431
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(Nat.choose (2 * n) 2 : ℤ) - ((8 * n ^ 2 : ℤ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ))|

end

end A022269.P15452507326185757431

namespace A022269

/-- `abs(C(2*n, 2)-(8*n²-∑[n]))` -/
def P15452507326185757431.Spec : Prop :=
  ∀ n, P15452507326185757431.a n = A022269 n

end A022269

/-! ## A022269.P6144776691644773212

`A022268(n)+n`
-/

namespace A022269.P6144776691644773212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022268 n + (n : ℤ)

end

end A022269.P6144776691644773212

namespace A022269

/-- `A022268(n)+n` -/
def P6144776691644773212.Spec : Prop :=
  ∀ n, P6144776691644773212.a n = A022269 n

end A022269

/-! ## A022269.P12929797543957526627

`A254963(n)-n`
-/

namespace A022269.P12929797543957526627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254963 n - (n : ℤ)

end

end A022269.P12929797543957526627

namespace A022269

/-- `A254963(n)-n` -/
def P12929797543957526627.Spec : Prop :=
  ∀ n, P12929797543957526627.a n = A022269 n

end A022269

/-! ## A022269.P17320231870151478855

`A022267(n)+n²`
-/

namespace A022269.P17320231870151478855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022267 n + (n ^ 2 : ℤ)

end

end A022269.P17320231870151478855

namespace A022269

/-- `A022267(n)+n²` -/
def P17320231870151478855.Spec : Prop :=
  ∀ n, P17320231870151478855.a n = A022269 n

end A022269

/-! ## A022269.P12725912758183976007

`A022271(n)-n²`
-/

namespace A022269.P12725912758183976007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022271 n - (n ^ 2 : ℤ)

end

end A022269.P12725912758183976007

namespace A022269

/-- `A022271(n)-n²` -/
def P12725912758183976007.Spec : Prop :=
  ∀ n, P12725912758183976007.a n = A022269 n

end A022269

/-! ## A022269.P10008508371970775435

`A033429(n)+∑[n]`
-/

namespace A022269.P10008508371970775435
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033429 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A022269.P10008508371970775435

namespace A022269

/-- `A033429(n)+∑[n]` -/
def P10008508371970775435.Spec : Prop :=
  ∀ n, P10008508371970775435.a n = A022269 n

end A022269

/-! ## A022269.P7655631083382033581

`A049453(n)-∑[n]`
-/

namespace A022269.P7655631083382033581
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049453 n - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A022269.P7655631083382033581

namespace A022269

/-- `A049453(n)-∑[n]` -/
def P7655631083382033581.Spec : Prop :=
  ∀ n, P7655631083382033581.a n = A022269 n

end A022269

/-! ## A022269.P10495967894851112361

`A226492(n)+3*n`
-/

namespace A022269.P10495967894851112361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226492 n + (3 * n : ℤ)

end

end A022269.P10495967894851112361

namespace A022269

/-- `A226492(n)+3*n` -/
def P10495967894851112361.Spec : Prop :=
  ∀ n, P10495967894851112361.a n = A022269 n

end A022269

/-! ## A022269.P9467536906610492207

`A180223(n)+4*n`
-/

namespace A022269.P9467536906610492207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180223 n + (4 * n : ℤ)

end

end A022269.P9467536906610492207

namespace A022269

/-- `A180223(n)+4*n` -/
def P9467536906610492207.Spec : Prop :=
  ∀ n, P9467536906610492207.a n = A022269 n

end A022269

/-! ## A022269.P11293402705225322730

`n/2*A017401(n)`
-/

namespace A022269.P11293402705225322730
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / 2 * (A017401 n : ℚ)

end

end A022269.P11293402705225322730

namespace A022269

/-- `n/2*A017401(n)` -/
def P11293402705225322730.Spec : Prop :=
  ∀ n, P11293402705225322730.a n = (A022269 n : ℚ)

theorem P11293402705225322730.correct : P11293402705225322730.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A022269, Nat.add_sub_cancel, A022269.P11293402705225322730.a, A022269.P5798965338642264025.a, A017401, A017401.P13777489390994228607.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf)
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A022269, Nat.add_sub_cancel, A022269.P11293402705225322730.a, A022269.P5798965338642264025.a, A017401, A017401.P13777489390994228607.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith | ((try field_simp); ring_nf)

end A022269

/-! ## A022269.P14638377648601356336

`A051865(n)+5*n`
-/

namespace A022269.P14638377648601356336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051865 n + (5 * n : ℤ)

end

end A022269.P14638377648601356336

namespace A022269

/-- `A051865(n)+5*n` -/
def P14638377648601356336.Spec : Prop :=
  ∀ n, P14638377648601356336.a n = A022269 n

end A022269

/-! ## A022269.P6141280316648226063

`A211013(n)-4*n`
-/

namespace A022269.P6141280316648226063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211013 n - (4 * n : ℤ)

end

end A022269.P6141280316648226063

namespace A022269

/-- `A211013(n)-4*n` -/
def P6141280316648226063.Spec : Prop :=
  ∀ n, P6141280316648226063.a n = A022269 n

end A022269

/-!
# A022270: a(n) = n*(13*n - 1)/2.

The programs for A022270, the canonical program `A022270.P2547502979335075585` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A022270 has offset 0).

The definition of A022270 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(13*n-1)/2` (program `A022270.P120090510297821205`, by `A022270.P120090510297821205.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A022270.P120090510297821205

`n*(13*n-1)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A022270.P120090510297821205
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) * ((13 * n : ℤ) - 1) : ℚ) / 2

end

end A022270.P120090510297821205

namespace A022270

/-- `n*(13*n-1)/2` -/
def P120090510297821205.Spec : Prop :=
  ∀ n, P120090510297821205.a n = (A022270 n : ℚ)

theorem P120090510297821205.correct : P120090510297821205.Spec := by
  intro n
  induction n with
  | zero => simp [A022270, A022270.P120090510297821205.a, A022270.P2547502979335075585.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
  | succ m ih =>
    simp only [A022270, Nat.add_sub_cancel, A022270.P120090510297821205.a, A022270.P2547502979335075585.a, SequenceMachineLib.memo_apply] at ih ⊢
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    try simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
    try push_cast at ih ⊢
    try linarith

end A022270

/-! ## A022270.P2547502979335075585

`13*n+a(n-1)-7` with `a(0)=0`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A022270

/-- `13*n+a(n-1)-7` -/
def P2547502979335075585.Spec : Prop :=
  ∀ n, P2547502979335075585.a n = A022270 n

theorem P2547502979335075585.correct : P2547502979335075585.Spec := by
  intro n
  simp only [A022270]

end A022270

/-! ## A022270.P14191002486980998581

`1/13*C(13*n, 2)`
-/

namespace A022270.P14191002486980998581
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 13 * (Nat.choose (13 * n) 2 : ℚ)

end

end A022270.P14191002486980998581

namespace A022270

/-- `1/13*C(13*n, 2)` -/
def P14191002486980998581.Spec : Prop :=
  ∀ n, P14191002486980998581.a n = (A022270 n : ℚ)

end A022270

/-! ## A022270.P10160164400169378139

`∑[a(n-1)+13]` with `a(0)=0, a(1)=6`
-/

namespace A022270.P10160164400169378139
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 6] fun n f1 =>
  f1 (n - 1) + 13

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A022270.P10160164400169378139

namespace A022270

/-- `∑[a(n-1)+13]` -/
def P10160164400169378139.Spec : Prop :=
  ∀ n, (P10160164400169378139.a n : ℤ) = A022270 n

end A022270

/-! ## A022270.P18197946144373545150

`∑[ogf((6x+7x^2)/(1-2x+x^2))]`
-/

namespace A022270.P18197946144373545150
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 6, 7] [1, -2, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A022270.P18197946144373545150

namespace A022270

/-- `∑[ogf((6x+7x^2)/(1-2x+x^2))]` -/
def P18197946144373545150.Spec : Prop :=
  ∀ n, P18197946144373545150.a n = A022270 n

end A022270

/-! ## A022270.P17303222734422876827

`ogf((6x+7x^2)/(1-3x+3x^2-x^3))`
-/

namespace A022270.P17303222734422876827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 6, 7] [1, -3, 3, -1] n

end

end A022270.P17303222734422876827

namespace A022270

/-- `ogf((6x+7x^2)/(1-3x+3x^2-x^3))` -/
def P17303222734422876827.Spec : Prop :=
  ∀ n, P17303222734422876827.a n = A022270 n

end A022270

/-! ## A022270.P806266842767892429

`7*n²-C(n+1, 2)`
-/

namespace A022270.P806266842767892429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (7 * n ^ 2 : ℤ) - (Nat.choose (n + 1) 2 : ℤ)

end

end A022270.P806266842767892429

namespace A022270

/-- `7*n²-C(n+1, 2)` -/
def P806266842767892429.Spec : Prop :=
  ∀ n, P806266842767892429.a n = A022270 n

end A022270

/-! ## A022270.P8733905854551263302

`A186030(n)+n`
-/

namespace A022270.P8733905854551263302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186030 n + (n : ℤ)

end

end A022270.P8733905854551263302

namespace A022270

/-- `A186030(n)+n` -/
def P8733905854551263302.Spec : Prop :=
  ∀ n, P8733905854551263302.a n = A022270 n

end A022270

/-! ## A022270.P4439301128123509620

`A022271(n)-n`
-/

namespace A022270.P4439301128123509620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022271 n - (n : ℤ)

end

end A022270.P4439301128123509620

namespace A022270

/-- `A022271(n)-n` -/
def P4439301128123509620.Spec : Prop :=
  ∀ n, P4439301128123509620.a n = A022270 n

end A022270

/-! ## A022270.P3436338576954085270

`A022268(n)+n²`
-/

namespace A022270.P3436338576954085270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022268 n + (n ^ 2 : ℤ)

end

end A022270.P3436338576954085270

namespace A022270

/-- `A022268(n)+n²` -/
def P3436338576954085270.Spec : Prop :=
  ∀ n, P3436338576954085270.a n = A022270 n

end A022270

/-! ## A022270.P2323868320411700108

`A022272(n)-n²`
-/

namespace A022270.P2323868320411700108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022272 n - (n ^ 2 : ℤ)

end

end A022270.P2323868320411700108

namespace A022270

/-- `A022272(n)-n²` -/
def P2323868320411700108.Spec : Prop :=
  ∀ n, P2323868320411700108.a n = A022270 n

end A022270

/-! ## A022270.P10826951295175488452

`A049452(n)+∑[n]`
-/

namespace A022270.P10826951295175488452
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049452 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A022270.P10826951295175488452

namespace A022270

/-- `A049452(n)+∑[n]` -/
def P10826951295175488452.Spec : Prop :=
  ∀ n, P10826951295175488452.a n = A022270 n

end A022270

/-! ## A022270.P9626331249039931304

`A033582(n)-∑[n]`
-/

namespace A022270.P9626331249039931304
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033582 n - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A022270.P9626331249039931304

namespace A022270

/-- `A033582(n)-∑[n]` -/
def P9626331249039931304.Spec : Prop :=
  ∀ n, P9626331249039931304.a n = A022270 n

end A022270

/-! ## A022270.P526658210416619089

`A226488(n)+4*n`
-/

namespace A022270.P526658210416619089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226488 n + (4 * n : ℤ)

end

end A022270.P526658210416619089

namespace A022270

/-- `A226488(n)+4*n` -/
def P526658210416619089.Spec : Prop :=
  ∀ n, P526658210416619089.a n = A022270 n

end A022270

/-! ## A022270.P8272860382309747618

`A051867(n)+5*n`
-/

namespace A022270.P8272860382309747618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051867 n + (5 * n : ℤ)

end

end A022270.P8272860382309747618

namespace A022270

/-- `A051867(n)+5*n` -/
def P8272860382309747618.Spec : Prop :=
  ∀ n, P8272860382309747618.a n = A022270 n

end A022270

/-! ## A022270.P282689050252120828

`7*n²-A000217(n)`
-/

namespace A022270.P282689050252120828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (7 * n ^ 2 : ℤ) - A000217 n

end

end A022270.P282689050252120828

namespace A022270

/-- `7*n²-A000217(n)` -/
def P282689050252120828.Spec : Prop :=
  ∀ n, P282689050252120828.a n = A022270 n

end A022270

/-! ## A022270.P702451379177270008

`A022273(n)-(n²+n)`
-/

namespace A022270.P702451379177270008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022273 n - (n ^ 2 + n : ℤ)

end

end A022270.P702451379177270008

namespace A022270

/-- `A022273(n)-(n²+n)` -/
def P702451379177270008.Spec : Prop :=
  ∀ n, P702451379177270008.a n = A022270 n

end A022270

/-! ## A022270.P9413452470403669952

`∑[7*(A004277(n)-1)-n]`
-/

namespace A022270.P9413452470403669952
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  7 * (A004277 n - 1) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A022270.P9413452470403669952

namespace A022270

/-- `∑[7*(A004277(n)-1)-n]` -/
def P9413452470403669952.Spec : Prop :=
  ∀ n, P9413452470403669952.a n = A022270 n

end A022270

/-! ## A022270.P3497062080551338960

`A007742(n)+A000566(n)`
-/

namespace A022270.P3497062080551338960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007742 n + A000566 n

end

end A022270.P3497062080551338960

namespace A022270

/-- `A007742(n)+A000566(n)` -/
def P3497062080551338960.Spec : Prop :=
  ∀ n, P3497062080551338960.a n = A022270 n

end A022270

/-! ## A022270.P18093664414723600547

`A016742(n)+A005476(n)`
-/

namespace A022270.P18093664414723600547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016742 n + A005476 n

end

end A022270.P18093664414723600547

namespace A022270

/-- `A016742(n)+A005476(n)` -/
def P18093664414723600547.Spec : Prop :=
  ∀ n, P18093664414723600547.a n = A022270 n

end A022270

/-!
# A022271: a(n) = n*(13*n + 1)/2.

The programs for A022271, the canonical program `A022271.P11082766484875666443` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A022271 has offset 0).

The definition of A022271 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(13*n+1)/2` (program `A022271.P2736542733463840870`, by `A022271.P2736542733463840870.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A022271.P2736542733463840870

`n*(13*n+1)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A022271.P2736542733463840870
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n * (13 * n + 1) : ℚ) / 2

end

end A022271.P2736542733463840870

namespace A022271

/-- `n*(13*n+1)/2` -/
def P2736542733463840870.Spec : Prop :=
  ∀ n, P2736542733463840870.a n = (A022271 n : ℚ)

theorem P2736542733463840870.correct : P2736542733463840870.Spec := by
  intro n
  induction n with
  | zero => simp [A022271, A022271.P2736542733463840870.a, A022271.P11082766484875666443.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
  | succ m ih =>
    simp only [A022271, Nat.add_sub_cancel, A022271.P2736542733463840870.a, A022271.P11082766484875666443.a, SequenceMachineLib.memo_apply] at ih ⊢
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    try simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
    try push_cast at ih ⊢
    try linarith

end A022271

/-! ## A022271.P11082766484875666443

`13*n+a(n-1)-6` with `a(0)=0`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A022271

/-- `13*n+a(n-1)-6` -/
def P11082766484875666443.Spec : Prop :=
  ∀ n, P11082766484875666443.a n = A022271 n

theorem P11082766484875666443.correct : P11082766484875666443.Spec := by
  intro n
  simp only [A022271]

end A022271

/-! ## A022271.P10883338616558607201

`A000217(7*n)-A000217(6*n)`
-/

namespace A022271.P10883338616558607201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (7 * n) - A000217 (6 * n)

end

end A022271.P10883338616558607201

namespace A022271

/-- `A000217(7*n)-A000217(6*n)` -/
def P10883338616558607201.Spec : Prop :=
  ∀ n, P10883338616558607201.a n = A022271 n

end A022271

/-! ## A022271.P8612617830732066787

`∑[a(n-1)+13]` with `a(0)=0, a(1)=7`
-/

namespace A022271.P8612617830732066787
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 7] fun n f1 =>
  f1 (n - 1) + 13

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A022271.P8612617830732066787

namespace A022271

/-- `∑[a(n-1)+13]` -/
def P8612617830732066787.Spec : Prop :=
  ∀ n, (P8612617830732066787.a n : ℤ) = A022271 n

end A022271

/-! ## A022271.P9464505449371423233

`∑[ogf((7x+6x^2)/(1-2x+x^2))]`
-/

namespace A022271.P9464505449371423233
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 7, 6] [1, -2, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A022271.P9464505449371423233

namespace A022271

/-- `∑[ogf((7x+6x^2)/(1-2x+x^2))]` -/
def P9464505449371423233.Spec : Prop :=
  ∀ n, P9464505449371423233.a n = A022271 n

end A022271

/-! ## A022271.P888022638645878519

`ogf((7x+6x^2)/(1-3x+3x^2-x^3))`
-/

namespace A022271.P888022638645878519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 7, 6] [1, -3, 3, -1] n

end

end A022271.P888022638645878519

namespace A022271

/-- `ogf((7x+6x^2)/(1-3x+3x^2-x^3))` -/
def P888022638645878519.Spec : Prop :=
  ∀ n, P888022638645878519.a n = A022271 n

end A022271

/-! ## A022271.P15484442572778931021

`6*n²+n²-C(n, 2)`
-/

namespace A022271.P15484442572778931021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (6 * n ^ 2 : ℤ) + ((n ^ 2 : ℤ) - (Nat.choose n 2 : ℤ))

end

end A022271.P15484442572778931021

namespace A022271

/-- `6*n²+n²-C(n, 2)` -/
def P15484442572778931021.Spec : Prop :=
  ∀ n, P15484442572778931021.a n = A022271 n

end A022271

/-! ## A022271.P4483015323074240960

`abs(C(2*n, 2)-((3*n)²-∑[n]))`
-/

namespace A022271.P4483015323074240960
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(Nat.choose (2 * n) 2 : ℤ) - (((3 * n) ^ 2 : ℤ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ))|

end

end A022271.P4483015323074240960

namespace A022271

/-- `abs(C(2*n, 2)-((3*n)²-∑[n]))` -/
def P4483015323074240960.Spec : Prop :=
  ∀ n, P4483015323074240960.a n = A022271 n

end A022271

/-! ## A022271.P14112199559436922969

`(n+2)*2*n+C(3*n, 2)-2*n`
-/

namespace A022271.P14112199559436922969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 2) * (2 * n) : ℤ) + ((Nat.choose (3 * n) 2 : ℤ) - (2 * n : ℤ))

end

end A022271.P14112199559436922969

namespace A022271

/-- `(n+2)*2*n+C(3*n, 2)-2*n` -/
def P14112199559436922969.Spec : Prop :=
  ∀ n, P14112199559436922969.a n = A022271 n

end A022271

/-! ## A022271.P11081371586986974911

`A022270(n)+n`
-/

namespace A022271.P11081371586986974911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022270 n + (n : ℤ)

end

end A022271.P11081371586986974911

namespace A022271

/-- `A022270(n)+n` -/
def P11081371586986974911.Spec : Prop :=
  ∀ n, P11081371586986974911.a n = A022271 n

end A022271

/-! ## A022271.P17188133286627740984

`A022269(n)+n²`
-/

namespace A022271.P17188133286627740984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022269 n + (n ^ 2 : ℤ)

end

end A022271.P17188133286627740984

namespace A022271

/-- `A022269(n)+n²` -/
def P17188133286627740984.Spec : Prop :=
  ∀ n, P17188133286627740984.a n = A022271 n

end A022271

/-! ## A022271.P18009019583376963291

`A022273(n)-n²`
-/

namespace A022271.P18009019583376963291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022273 n - (n ^ 2 : ℤ)

end

end A022271.P18009019583376963291

namespace A022271

/-- `A022273(n)-n²` -/
def P18009019583376963291.Spec : Prop :=
  ∀ n, P18009019583376963291.a n = A022271 n

end A022271

/-! ## A022271.P8509169187782922088

`A033581(n)+∑[n]`
-/

namespace A022271.P8509169187782922088
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033581 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A022271.P8509169187782922088

namespace A022271

/-- `A033581(n)+∑[n]` -/
def P8509169187782922088.Spec : Prop :=
  ∀ n, P8509169187782922088.a n = A022271 n

end A022271

/-! ## A022271.P13866037433443758116

`A092277(n)-∑[n]`
-/

namespace A022271.P13866037433443758116
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092277 n - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A022271.P13866037433443758116

namespace A022271

/-- `A092277(n)-∑[n]` -/
def P13866037433443758116.Spec : Prop :=
  ∀ n, P13866037433443758116.a n = A022271 n

end A022271

/-! ## A022271.P18332459427022998788

`A186030(n)+2*n`
-/

namespace A022271.P18332459427022998788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186030 n + (2 * n : ℤ)

end

end A022271.P18332459427022998788

namespace A022271

/-- `A186030(n)+2*n` -/
def P18332459427022998788.Spec : Prop :=
  ∀ n, P18332459427022998788.a n = A022271 n

end A022271

/-! ## A022271.P10448867395288532472

`n/2*A190991(n)`
-/

namespace A022271.P10448867395288532472
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / 2 * (A190991 n : ℚ)

end

end A022271.P10448867395288532472

namespace A022271

/-- `n/2*A190991(n)` -/
def P10448867395288532472.Spec : Prop :=
  ∀ n, P10448867395288532472.a n = (A022271 n : ℚ)

theorem P10448867395288532472.correct : P10448867395288532472.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A022271, Nat.add_sub_cancel, A022271.P10448867395288532472.a, A022271.P11082766484875666443.a, A190991, A190991.P11410187498899268460.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf)
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A022271, Nat.add_sub_cancel, A022271.P10448867395288532472.a, A022271.P11082766484875666443.a, A190991, A190991.P11410187498899268460.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith | ((try field_simp); ring_nf)

end A022271

/-! ## A022271.P5698579261107799609

`A226488(n)+5*n`
-/

namespace A022271.P5698579261107799609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226488 n + (5 * n : ℤ)

end

end A022271.P5698579261107799609

namespace A022271

/-- `A226488(n)+5*n` -/
def P5698579261107799609.Spec : Prop :=
  ∀ n, P5698579261107799609.a n = A022271 n

end A022271

/-! ## A022271.P7342097881334861279

`A033569(n)+∑[n+1]`
-/

namespace A022271.P7342097881334861279
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033569 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A022271.P7342097881334861279

namespace A022271

/-- `A033569(n)+∑[n+1]` -/
def P7342097881334861279.Spec : Prop :=
  ∀ n, P7342097881334861279.a n = A022271 n

end A022271

/-! ## A022271.P8695558396506701963

`A022268(n)+n²+n`
-/

namespace A022271.P8695558396506701963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022268 n + (n ^ 2 + n : ℤ)

end

end A022271.P8695558396506701963

namespace A022271

/-- `A022268(n)+n²+n` -/
def P8695558396506701963.Spec : Prop :=
  ∀ n, P8695558396506701963.a n = A022271 n

end A022271

/-! ## A022271.P3375090933403134161

`∑[3*record[2*A006257(n)]+n]`
-/

namespace A022271.P3375090933403134161
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A006257 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A022271.P3375090933403134161

namespace A022271

/-- `∑[3*record[2*A006257(n)]+n]` -/
def P3375090933403134161.Spec : Prop :=
  ∀ n, P3375090933403134161.a n = A022271 n

end A022271

/-!
# A022272: a(n) = n*(15*n - 1)/2.

The programs for A022272, the canonical program `A022272.P12488576985694989628` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A022272 has offset 0).

The definition of A022272 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(15*n-1)/2` (program `A022272.P17313903302214821050`, by `A022272.P17313903302214821050.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A022272.P17313903302214821050

`n*(15*n-1)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A022272.P17313903302214821050
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) * ((15 * n : ℤ) - 1) : ℚ) / 2

end

end A022272.P17313903302214821050

namespace A022272

/-- `n*(15*n-1)/2` -/
def P17313903302214821050.Spec : Prop :=
  ∀ n, P17313903302214821050.a n = (A022272 n : ℚ)

theorem P17313903302214821050.correct : P17313903302214821050.Spec := by
  intro n
  induction n with
  | zero => simp [A022272, A022272.P17313903302214821050.a, A022272.P12488576985694989628.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
  | succ m ih =>
    simp only [A022272, Nat.add_sub_cancel, A022272.P17313903302214821050.a, A022272.P12488576985694989628.a, SequenceMachineLib.memo_apply] at ih ⊢
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    try simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
    try push_cast at ih ⊢
    try linarith

end A022272

/-! ## A022272.P12488576985694989628

`15*n+a(n-1)-8` with `a(0)=0`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A022272

/-- `15*n+a(n-1)-8` -/
def P12488576985694989628.Spec : Prop :=
  ∀ n, P12488576985694989628.a n = A022272 n

theorem P12488576985694989628.correct : P12488576985694989628.Spec := by
  intro n
  simp only [A022272]

end A022272

/-! ## A022272.P6672395414670281027

`∑[record[lcm(8, n)]-n]`
-/

namespace A022272.P6672395414670281027
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 8 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n) : ℤ) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A022272.P6672395414670281027

namespace A022272

/-- `∑[record[lcm(8, n)]-n]` -/
def P6672395414670281027.Spec : Prop :=
  ∀ n, P6672395414670281027.a n = A022272 n

end A022272

/-! ## A022272.P17756174918674855996

`∑[a(n-1)+15]` with `a(0)=0, a(1)=7`
-/

namespace A022272.P17756174918674855996
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 7] fun n f1 =>
  f1 (n - 1) + 15

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A022272.P17756174918674855996

namespace A022272

/-- `∑[a(n-1)+15]` -/
def P17756174918674855996.Spec : Prop :=
  ∀ n, (P17756174918674855996.a n : ℤ) = A022272 n

end A022272

/-! ## A022272.P4971996095921845241

`∑[ogf((7x+8x^2)/(1-2x+x^2))]`
-/

namespace A022272.P4971996095921845241
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 7, 8] [1, -2, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A022272.P4971996095921845241

namespace A022272

/-- `∑[ogf((7x+8x^2)/(1-2x+x^2))]` -/
def P4971996095921845241.Spec : Prop :=
  ∀ n, P4971996095921845241.a n = A022272 n

end A022272

/-! ## A022272.P1300330150361055720

`ogf((7x+8x^2)/(1-3x+3x^2-x^3))`
-/

namespace A022272.P1300330150361055720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 7, 8] [1, -3, 3, -1] n

end

end A022272.P1300330150361055720

namespace A022272

/-- `ogf((7x+8x^2)/(1-3x+3x^2-x^3))` -/
def P1300330150361055720.Spec : Prop :=
  ∀ n, P1300330150361055720.a n = A022272 n

end A022272

/-! ## A022272.P8490463912091561440

`Δ[(5*C(n, 2)+n)*(n-1)]`
-/

namespace A022272.P8490463912091561440
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (5 * Nat.choose n 2 + n : ℤ) * ((n : ℤ) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A022272.P8490463912091561440

namespace A022272

/-- `Δ[(5*C(n, 2)+n)*(n-1)]` -/
def P8490463912091561440.Spec : Prop :=
  ∀ n, P8490463912091561440.a n = A022272 n

end A022272

/-! ## A022272.P7338577312704181931

`2*n*record[xor(3, n)]-(∑[n+6]-6)`
-/

namespace A022272.P7338577312704181931
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 3 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) : ℤ) - (((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - 6)

end

end A022272.P7338577312704181931

namespace A022272

/-- `2*n*record[xor(3, n)]-(∑[n+6]-6)` -/
def P7338577312704181931.Spec : Prop :=
  ∀ n, P7338577312704181931.a n = A022272 n

end A022272

/-! ## A022272.P11327541515624801382

`abs(abs((2*n)%2-n*8*n)-∑[n])`
-/

namespace A022272.P11327541515624801382
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(|((2 * n % 2 : ℕ) : ℤ) - (n * (8 * n) : ℤ)| - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ))|

end

end A022272.P11327541515624801382

namespace A022272

/-- `abs(abs((2*n)%2-n*8*n)-∑[n])` -/
def P11327541515624801382.Spec : Prop :=
  ∀ n, P11327541515624801382.a n = A022272 n

end A022272

/-! ## A022272.P4133679493326780132

`A022273(n)-n`
-/

namespace A022272.P4133679493326780132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022273 n - (n : ℤ)

end

end A022272.P4133679493326780132

namespace A022272

/-- `A022273(n)-n` -/
def P4133679493326780132.Spec : Prop :=
  ∀ n, P4133679493326780132.a n = A022272 n

end A022272

/-! ## A022272.P14448258736536243457

`A022270(n)+n²`
-/

namespace A022272.P14448258736536243457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022270 n + (n ^ 2 : ℤ)

end

end A022272.P14448258736536243457

namespace A022272

/-- `A022270(n)+n²` -/
def P14448258736536243457.Spec : Prop :=
  ∀ n, P14448258736536243457.a n = A022272 n

end A022272

/-! ## A022272.P3993197453552906565

`A022274(n)-n²`
-/

namespace A022272.P3993197453552906565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022274 n - (n ^ 2 : ℤ)

end

end A022272.P3993197453552906565

namespace A022272

/-- `A022274(n)-n²` -/
def P3993197453552906565.Spec : Prop :=
  ∀ n, P3993197453552906565.a n = A022272 n

end A022272

/-! ## A022272.P15197606597218922216

`A139098(n)-∑[n]`
-/

namespace A022272.P15197606597218922216
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139098 n - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A022272.P15197606597218922216

namespace A022272

/-- `A139098(n)-∑[n]` -/
def P15197606597218922216.Spec : Prop :=
  ∀ n, P15197606597218922216.a n = A022272 n

end A022272

/-! ## A022272.P13366439886250294725

`A152734(n)+2*n`
-/

namespace A022272.P13366439886250294725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152734 n + (2 * n : ℤ)

end

end A022272.P13366439886250294725

namespace A022272

/-- `A152734(n)+2*n` -/
def P13366439886250294725.Spec : Prop :=
  ∀ n, P13366439886250294725.a n = A022272 n

end A022272

/-! ## A022272.P13845312147950585906

`3*A005476(n)+n`
-/

namespace A022272.P13845312147950585906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A005476 n + (n : ℤ)

end

end A022272.P13845312147950585906

namespace A022272

/-- `3*A005476(n)+n` -/
def P13845312147950585906.Spec : Prop :=
  ∀ n, P13845312147950585906.a n = A022272 n

end A022272

/-! ## A022272.P18240592415872973589

`A152773(n)+4*n`
-/

namespace A022272.P18240592415872973589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152773 n + (4 * n : ℤ)

end

end A022272.P18240592415872973589

namespace A022272

/-- `A152773(n)+4*n` -/
def P18240592415872973589.Spec : Prop :=
  ∀ n, P18240592415872973589.a n = A022272 n

end A022272

/-! ## A022272.P8111597714566398871

`A226489(n)+5*n`
-/

namespace A022272.P8111597714566398871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226489 n + (5 * n : ℤ)

end

end A022272.P8111597714566398871

namespace A022272

/-- `A226489(n)+5*n` -/
def P8111597714566398871.Spec : Prop :=
  ∀ n, P8111597714566398871.a n = A022272 n

end A022272

/-! ## A022272.P14331493261406263243

`A186030(n)+n²+n`
-/

namespace A022272.P14331493261406263243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186030 n + (n ^ 2 + n : ℤ)

end

end A022272.P14331493261406263243

namespace A022272

/-- `A186030(n)+n²+n` -/
def P14331493261406263243.Spec : Prop :=
  ∀ n, P14331493261406263243.a n = A022272 n

end A022272

/-! ## A022272.P6931174484235596324

`A022275(n)-(n²+n)`
-/

namespace A022272.P6931174484235596324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022275 n - (n ^ 2 + n : ℤ)

end

end A022272.P6931174484235596324

namespace A022272

/-- `A022275(n)-(n²+n)` -/
def P6931174484235596324.Spec : Prop :=
  ∀ n, P6931174484235596324.a n = A022272 n

end A022272

/-! ## A022272.P9300614181162479486

`A060785(n+2)/2+n`
-/

namespace A022272.P9300614181162479486
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A060785 (n + 2) : ℚ) / 2 + (n : ℚ)

end

end A022272.P9300614181162479486

namespace A022272

/-- `A060785(n+2)/2+n` -/
def P9300614181162479486.Spec : Prop :=
  ∀ n, P9300614181162479486.a n = (A022272 n : ℚ)

theorem P9300614181162479486.correct : P9300614181162479486.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A022272, Nat.add_sub_cancel, A022272.P9300614181162479486.a, A022272.P12488576985694989628.a, A060785, A060785.P12662276870661916787.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf)
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A022272, Nat.add_sub_cancel, A022272.P9300614181162479486.a, A022272.P12488576985694989628.a, A060785, A060785.P12662276870661916787.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith | ((try field_simp); ring_nf)

end A022272

/-!
# A022273: a(n) = n*(15*n + 1)/2.

The programs for A022273, the canonical program `A022273.P2071249530846667850` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A022273 has offset 0).

The definition of A022273 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(15*n+1)/2` (program `A022273.P9643017466232025378`, by `A022273.P9643017466232025378.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A022273.P9643017466232025378

`n*(15*n+1)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A022273.P9643017466232025378
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n * (15 * n + 1) : ℚ) / 2

end

end A022273.P9643017466232025378

namespace A022273

/-- `n*(15*n+1)/2` -/
def P9643017466232025378.Spec : Prop :=
  ∀ n, P9643017466232025378.a n = (A022273 n : ℚ)

theorem P9643017466232025378.correct : P9643017466232025378.Spec := by
  intro n
  induction n with
  | zero => simp [A022273, A022273.P9643017466232025378.a, A022273.P2071249530846667850.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
  | succ m ih =>
    simp only [A022273, Nat.add_sub_cancel, A022273.P9643017466232025378.a, A022273.P2071249530846667850.a, SequenceMachineLib.memo_apply] at ih ⊢
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    try simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
    try push_cast at ih ⊢
    try linarith

end A022273

/-! ## A022273.P2071249530846667850

`15*n+a(n-1)-7` with `a(0)=0`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A022273

/-- `15*n+a(n-1)-7` -/
def P2071249530846667850.Spec : Prop :=
  ∀ n, P2071249530846667850.a n = A022273 n

theorem P2071249530846667850.correct : P2071249530846667850.Spec := by
  intro n
  simp only [A022273]

end A022273

/-! ## A022273.P2034698094233783512

`A000217(8*n)-A000217(7*n)`
-/

namespace A022273.P2034698094233783512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (8 * n) - A000217 (7 * n)

end

end A022273.P2034698094233783512

namespace A022273

/-- `A000217(8*n)-A000217(7*n)` -/
def P2034698094233783512.Spec : Prop :=
  ∀ n, P2034698094233783512.a n = A022273 n

end A022273

/-! ## A022273.P6410113051410009335

`∑[a(n-1)+15]` with `a(0)=0, a(1)=8`
-/

namespace A022273.P6410113051410009335
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 8] fun n f1 =>
  f1 (n - 1) + 15

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A022273.P6410113051410009335

namespace A022273

/-- `∑[a(n-1)+15]` -/
def P6410113051410009335.Spec : Prop :=
  ∀ n, (P6410113051410009335.a n : ℤ) = A022273 n

end A022273

/-! ## A022273.P7477462514190140206

`∑[ogf((8x+7x^2)/(1-2x+x^2))]`
-/

namespace A022273.P7477462514190140206
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 8, 7] [1, -2, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A022273.P7477462514190140206

namespace A022273

/-- `∑[ogf((8x+7x^2)/(1-2x+x^2))]` -/
def P7477462514190140206.Spec : Prop :=
  ∀ n, P7477462514190140206.a n = A022273 n

end A022273

/-! ## A022273.P12935287452736646008

`ogf((8x+7x^2)/(1-3x+3x^2-x^3))`
-/

namespace A022273.P12935287452736646008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 8, 7] [1, -3, 3, -1] n

end

end A022273.P12935287452736646008

namespace A022273

/-- `ogf((8x+7x^2)/(1-3x+3x^2-x^3))` -/
def P12935287452736646008.Spec : Prop :=
  ∀ n, P12935287452736646008.a n = A022273 n

end A022273

/-! ## A022273.P7301371392946916909

`2*(2*n)²-C(n, 2)`
-/

namespace A022273.P7301371392946916909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (2 * n) ^ 2 : ℤ) - (Nat.choose n 2 : ℤ)

end

end A022273.P7301371392946916909

namespace A022273

/-- `2*(2*n)²-C(n, 2)` -/
def P7301371392946916909.Spec : Prop :=
  ∀ n, P7301371392946916909.a n = A022273 n

end A022273

/-! ## A022273.P11367894891699120333

`2*C(2*n, 2)+∑[7*n]-n`
-/

namespace A022273.P11367894891699120333
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * Nat.choose (2 * n) 2 : ℤ) + (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (n : ℤ))

end

end A022273.P11367894891699120333

namespace A022273

/-- `2*C(2*n, 2)+∑[7*n]-n` -/
def P11367894891699120333.Spec : Prop :=
  ∀ n, P11367894891699120333.a n = A022273 n

end A022273

/-! ## A022273.P13310706821097322743

`2*n*record[xor(3, n)]-(∑[n+5]-5)`
-/

namespace A022273.P13310706821097322743
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 3 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) : ℤ) - (((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - 5)

end

end A022273.P13310706821097322743

namespace A022273

/-- `2*n*record[xor(3, n)]-(∑[n+5]-5)` -/
def P13310706821097322743.Spec : Prop :=
  ∀ n, P13310706821097322743.a n = A022273 n

end A022273

/-! ## A022273.P17659191779306757216

`abs(abs((2*n)%2-n-n*8*n)-∑[n])`
-/

namespace A022273.P17659191779306757216
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(|((2 * n % 2 : ℕ) : ℤ) - (n : ℤ) - (n * (8 * n) : ℤ)| - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ))|

end

end A022273.P17659191779306757216

namespace A022273

/-- `abs(abs((2*n)%2-n-n*8*n)-∑[n])` -/
def P17659191779306757216.Spec : Prop :=
  ∀ n, P17659191779306757216.a n = A022273 n

end A022273

/-! ## A022273.P7512807093198861016

`A022272(n)+n`
-/

namespace A022273.P7512807093198861016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022272 n + (n : ℤ)

end

end A022273.P7512807093198861016

namespace A022273

/-- `A022272(n)+n` -/
def P7512807093198861016.Spec : Prop :=
  ∀ n, P7512807093198861016.a n = A022273 n

end A022273

/-! ## A022273.P17696079579847249722

`A022271(n)+n²`
-/

namespace A022273.P17696079579847249722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022271 n + (n ^ 2 : ℤ)

end

end A022273.P17696079579847249722

namespace A022273

/-- `A022271(n)+n²` -/
def P17696079579847249722.Spec : Prop :=
  ∀ n, P17696079579847249722.a n = A022273 n

end A022273

/-! ## A022273.P16050529929240866037

`A022275(n)-n²`
-/

namespace A022273.P16050529929240866037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022275 n - (n ^ 2 : ℤ)

end

end A022273.P16050529929240866037

namespace A022273

/-- `A022275(n)-n²` -/
def P16050529929240866037.Spec : Prop :=
  ∀ n, P16050529929240866037.a n = A022273 n

end A022273

/-! ## A022273.P9036908008531411861

`A033582(n)+∑[n]`
-/

namespace A022273.P9036908008531411861
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033582 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A022273.P9036908008531411861

namespace A022273

/-- `A033582(n)+∑[n]` -/
def P9036908008531411861.Spec : Prop :=
  ∀ n, P9036908008531411861.a n = A022273 n

end A022273

/-! ## A022273.P14120633718688461800

`A139275(n)-∑[n]`
-/

namespace A022273.P14120633718688461800
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139275 n - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A022273.P14120633718688461800

namespace A022273

/-- `A139275(n)-∑[n]` -/
def P14120633718688461800.Spec : Prop :=
  ∀ n, P14120633718688461800.a n = A022273 n

end A022273

/-! ## A022273.P9372733537239892855

`A152734(n)+3*n`
-/

namespace A022273.P9372733537239892855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152734 n + (3 * n : ℤ)

end

end A022273.P9372733537239892855

namespace A022273

/-- `A152734(n)+3*n` -/
def P9372733537239892855.Spec : Prop :=
  ∀ n, P9372733537239892855.a n = A022273 n

end A022273

/-! ## A022273.P1506444684371607470

`3*A005475(n)-n`
-/

namespace A022273.P1506444684371607470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A005475 n - (n : ℤ)

end

end A022273.P1506444684371607470

namespace A022273

/-- `3*A005475(n)-n` -/
def P1506444684371607470.Spec : Prop :=
  ∀ n, P1506444684371607470.a n = A022273 n

end A022273

/-! ## A022273.P18301231268206844545

`A152773(n)+5*n`
-/

namespace A022273.P18301231268206844545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152773 n + (5 * n : ℤ)

end

end A022273.P18301231268206844545

namespace A022273

/-- `A152773(n)+5*n` -/
def P18301231268206844545.Spec : Prop :=
  ∀ n, P18301231268206844545.a n = A022273 n

end A022273

/-! ## A022273.P765720289550610660

`∑[record[A014682(5*n)]]`
-/

namespace A022273.P765720289550610660
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (5 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A022273.P765720289550610660

namespace A022273

/-- `∑[record[A014682(5*n)]]` -/
def P765720289550610660.Spec : Prop :=
  ∀ n, P765720289550610660.a n = A022273 n

end A022273

/-! ## A022273.P7160490559603130454

`7*n²+A000217(n)`
-/

namespace A022273.P7160490559603130454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (7 * n ^ 2 : ℤ) + A000217 n

end

end A022273.P7160490559603130454

namespace A022273

/-- `7*n²+A000217(n)` -/
def P7160490559603130454.Spec : Prop :=
  ∀ n, P7160490559603130454.a n = A022273 n

end A022273

/-!
# A022274: a(n) = n*(17*n - 1)/2.

The programs for A022274, the canonical program `A022274.P1294137991941262979` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A022274 has offset 0).

The definition of A022274 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(17*n-1)/2` (program `A022274.P2279061651033547081`, by `A022274.P2279061651033547081.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A022274.P2279061651033547081

`n*(17*n-1)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A022274.P2279061651033547081
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) * ((17 * n : ℤ) - 1) : ℚ) / 2

end

end A022274.P2279061651033547081

namespace A022274

/-- `n*(17*n-1)/2` -/
def P2279061651033547081.Spec : Prop :=
  ∀ n, P2279061651033547081.a n = (A022274 n : ℚ)

theorem P2279061651033547081.correct : P2279061651033547081.Spec := by
  intro n
  induction n with
  | zero => simp [A022274, A022274.P2279061651033547081.a, A022274.P1294137991941262979.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
  | succ m ih =>
    simp only [A022274, Nat.add_sub_cancel, A022274.P2279061651033547081.a, A022274.P1294137991941262979.a, SequenceMachineLib.memo_apply] at ih ⊢
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    try simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
    try push_cast at ih ⊢
    try linarith

end A022274

/-! ## A022274.P1294137991941262979

`17*n+a(n-1)-9` with `a(0)=0`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A022274

/-- `17*n+a(n-1)-9` -/
def P1294137991941262979.Spec : Prop :=
  ∀ n, P1294137991941262979.a n = A022274 n

theorem P1294137991941262979.correct : P1294137991941262979.Spec := by
  intro n
  simp only [A022274]

end A022274

/-! ## A022274.P5839928239092928256

`∑[a(n-1)+17]` with `a(0)=0, a(1)=8`
-/

namespace A022274.P5839928239092928256
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 8] fun n f1 =>
  f1 (n - 1) + 17

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A022274.P5839928239092928256

namespace A022274

/-- `∑[a(n-1)+17]` -/
def P5839928239092928256.Spec : Prop :=
  ∀ n, (P5839928239092928256.a n : ℤ) = A022274 n

end A022274

/-! ## A022274.P1090558903492081215

`∑[ogf((8x+9x^2)/(1-2x+x^2))]`
-/

namespace A022274.P1090558903492081215
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 8, 9] [1, -2, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A022274.P1090558903492081215

namespace A022274

/-- `∑[ogf((8x+9x^2)/(1-2x+x^2))]` -/
def P1090558903492081215.Spec : Prop :=
  ∀ n, P1090558903492081215.a n = A022274 n

end A022274

/-! ## A022274.P13892244018410172274

`ogf((8x+9x^2)/(1-3x+3x^2-x^3))`
-/

namespace A022274.P13892244018410172274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 8, 9] [1, -3, 3, -1] n

end

end A022274.P13892244018410172274

namespace A022274

/-- `ogf((8x+9x^2)/(1-3x+3x^2-x^3))` -/
def P13892244018410172274.Spec : Prop :=
  ∀ n, P13892244018410172274.a n = A022274 n

end A022274

/-! ## A022274.P2523596194591275342

`(3*n)²-C(n, 2)-n`
-/

namespace A022274.P2523596194591275342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((3 * n) ^ 2 : ℤ) - (Nat.choose n 2 : ℤ) - (n : ℤ)

end

end A022274.P2523596194591275342

namespace A022274

/-- `(3*n)²-C(n, 2)-n` -/
def P2523596194591275342.Spec : Prop :=
  ∀ n, P2523596194591275342.a n = A022274 n

end A022274

/-! ## A022274.P3112059508098196582

`A022275(n)-n`
-/

namespace A022274.P3112059508098196582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022275 n - (n : ℤ)

end

end A022274.P3112059508098196582

namespace A022274

/-- `A022275(n)-n` -/
def P3112059508098196582.Spec : Prop :=
  ∀ n, P3112059508098196582.a n = A022274 n

end A022274

/-! ## A022274.P9338256077447037785

`A022272(n)+n²`
-/

namespace A022274.P9338256077447037785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022272 n + (n ^ 2 : ℤ)

end

end A022274.P9338256077447037785

namespace A022274

/-- `A022272(n)+n²` -/
def P9338256077447037785.Spec : Prop :=
  ∀ n, P9338256077447037785.a n = A022274 n

end A022274

/-! ## A022274.P5172311333761094934

`A022276(n)-n²`
-/

namespace A022274.P5172311333761094934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022276 n - (n ^ 2 : ℤ)

end

end A022274.P5172311333761094934

namespace A022274

/-- `A022276(n)-n²` -/
def P5172311333761094934.Spec : Prop :=
  ∀ n, P5172311333761094934.a n = A022274 n

end A022274

/-! ## A022274.P3149510499884967582

`A139274(n)+∑[n]`
-/

namespace A022274.P3149510499884967582
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139274 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A022274.P3149510499884967582

namespace A022274

/-- `A139274(n)+∑[n]` -/
def P3149510499884967582.Spec : Prop :=
  ∀ n, P3149510499884967582.a n = A022274 n

end A022274

/-! ## A022274.P1235045058847136324

`A016766(n)-∑[n]`
-/

namespace A022274.P1235045058847136324
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016766 n - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A022274.P1235045058847136324

namespace A022274

/-- `A016766(n)-∑[n]` -/
def P1235045058847136324.Spec : Prop :=
  ∀ n, P1235045058847136324.a n = A022274 n

end A022274

/-! ## A022274.P12141504877153210609

`A008585(n)²-∑[n]`
-/

namespace A022274.P12141504877153210609
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008585 n ^ 2 - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A022274.P12141504877153210609

namespace A022274

/-- `A008585(n)²-∑[n]` -/
def P12141504877153210609.Spec : Prop :=
  ∀ n, P12141504877153210609.a n = A022274 n

end A022274

/-! ## A022274.P9295839644525577358

`(3*n)²-A000217(n)`
-/

namespace A022274.P9295839644525577358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((3 * n) ^ 2 : ℤ) - A000217 n

end

end A022274.P9295839644525577358

namespace A022274

/-- `(3*n)²-A000217(n)` -/
def P9295839644525577358.Spec : Prop :=
  ∀ n, P9295839644525577358.a n = A022274 n

end A022274

/-! ## A022274.P5757869669616363737

`A022277(n)-(n²+n)`
-/

namespace A022274.P5757869669616363737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022277 n - (n ^ 2 + n : ℤ)

end

end A022274.P5757869669616363737

namespace A022274

/-- `A022277(n)-(n²+n)` -/
def P5757869669616363737.Spec : Prop :=
  ∀ n, P5757869669616363737.a n = A022274 n

end A022274

/-! ## A022274.P14428300950456424331

`(A016777(n)-1)²-∑[n]`
-/

namespace A022274.P14428300950456424331
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A016777 n - 1) ^ 2 - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A022274.P14428300950456424331

namespace A022274

/-- `(A016777(n)-1)²-∑[n]` -/
def P14428300950456424331.Spec : Prop :=
  ∀ n, P14428300950456424331.a n = A022274 n

end A022274

/-! ## A022274.P1165885909815783845

`(3*n)²+1-A000124(n)`
-/

namespace A022274.P1165885909815783845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((3 * n) ^ 2 + 1 : ℤ) - A000124 n

end

end A022274.P1165885909815783845

namespace A022274

/-- `(3*n)²+1-A000124(n)` -/
def P1165885909815783845.Spec : Prop :=
  ∀ n, P1165885909815783845.a n = A022274 n

end A022274

/-! ## A022274.P2719975906194986291

`A014635(n)+A000096(n)`
-/

namespace A022274.P2719975906194986291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014635 n + A000096 n

end

end A022274.P2719975906194986291

namespace A022274

/-- `A014635(n)+A000096(n)` -/
def P2719975906194986291.Spec : Prop :=
  ∀ n, P2719975906194986291.a n = A022274 n

end A022274

/-! ## A022274.P11774673926088956285

`A022271(n)+A000384(n)`
-/

namespace A022274.P11774673926088956285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022271 n + A000384 n

end

end A022274.P11774673926088956285

namespace A022274

/-- `A022271(n)+A000384(n)` -/
def P11774673926088956285.Spec : Prop :=
  ∀ n, P11774673926088956285.a n = A022274 n

end A022274

/-! ## A022274.P721793994056408104

`A022270(n)+A001105(n)`
-/

namespace A022274.P721793994056408104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022270 n + A001105 n

end

end A022274.P721793994056408104

namespace A022274

/-- `A022270(n)+A001105(n)` -/
def P721793994056408104.Spec : Prop :=
  ∀ n, P721793994056408104.a n = A022274 n

end A022274

/-! ## A022274.P1146639638390496753

`A033582(n)+A000326(n)`
-/

namespace A022274.P1146639638390496753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033582 n + A000326 n

end

end A022274.P1146639638390496753

namespace A022274

/-- `A033582(n)+A000326(n)` -/
def P1146639638390496753.Spec : Prop :=
  ∀ n, P1146639638390496753.a n = A022274 n

end A022274

/-!
# A022275: a(n) = n*(17*n + 1)/2.

The programs for A022275, the canonical program `A022275.P3271719630850696146` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A022275 has offset 0).

The definition of A022275 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(17*n+1)/2` (program `A022275.P3857002840533671146`, by `A022275.P3857002840533671146.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A022275.P3857002840533671146

`n*(17*n+1)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A022275.P3857002840533671146
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n * (17 * n + 1) : ℚ) / 2

end

end A022275.P3857002840533671146

namespace A022275

/-- `n*(17*n+1)/2` -/
def P3857002840533671146.Spec : Prop :=
  ∀ n, P3857002840533671146.a n = (A022275 n : ℚ)

theorem P3857002840533671146.correct : P3857002840533671146.Spec := by
  intro n
  induction n with
  | zero => simp [A022275, A022275.P3857002840533671146.a, A022275.P3271719630850696146.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
  | succ m ih =>
    simp only [A022275, Nat.add_sub_cancel, A022275.P3857002840533671146.a, A022275.P3271719630850696146.a, SequenceMachineLib.memo_apply] at ih ⊢
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    try simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
    try push_cast at ih ⊢
    try linarith

end A022275

/-! ## A022275.P3271719630850696146

`17*n+a(n-1)-8` with `a(0)=0`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A022275

/-- `17*n+a(n-1)-8` -/
def P3271719630850696146.Spec : Prop :=
  ∀ n, P3271719630850696146.a n = A022275 n

theorem P3271719630850696146.correct : P3271719630850696146.Spec := by
  intro n
  simp only [A022275]

end A022275

/-! ## A022275.P13142225878516778954

`A000217(9*n)-A000217(8*n)`
-/

namespace A022275.P13142225878516778954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (9 * n) - A000217 (8 * n)

end

end A022275.P13142225878516778954

namespace A022275

/-- `A000217(9*n)-A000217(8*n)` -/
def P13142225878516778954.Spec : Prop :=
  ∀ n, P13142225878516778954.a n = A022275 n

end A022275

/-! ## A022275.P17843703325952285129

`∑[record[lcm(8, n)]+n]`
-/

namespace A022275.P17843703325952285129
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 8 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n) + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A022275.P17843703325952285129

namespace A022275

/-- `∑[record[lcm(8, n)]+n]` -/
def P17843703325952285129.Spec : Prop :=
  ∀ n, (P17843703325952285129.a n : ℤ) = A022275 n

end A022275

/-! ## A022275.P7410512210680841105

`(3*n)²-C(n, 2)`
-/

namespace A022275.P7410512210680841105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((3 * n) ^ 2 : ℤ) - (Nat.choose n 2 : ℤ)

end

end A022275.P7410512210680841105

namespace A022275

/-- `(3*n)²-C(n, 2)` -/
def P7410512210680841105.Spec : Prop :=
  ∀ n, P7410512210680841105.a n = A022275 n

end A022275

/-! ## A022275.P5320295531417390939

`∑[a(n-1)+17]` with `a(0)=0, a(1)=9`
-/

namespace A022275.P5320295531417390939
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 9] fun n f1 =>
  f1 (n - 1) + 17

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A022275.P5320295531417390939

namespace A022275

/-- `∑[a(n-1)+17]` -/
def P5320295531417390939.Spec : Prop :=
  ∀ n, (P5320295531417390939.a n : ℤ) = A022275 n

end A022275

/-! ## A022275.P713649490636671481

`∑[ogf((9x+8x^2)/(1-2x+x^2))]`
-/

namespace A022275.P713649490636671481
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 9, 8] [1, -2, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A022275.P713649490636671481

namespace A022275

/-- `∑[ogf((9x+8x^2)/(1-2x+x^2))]` -/
def P713649490636671481.Spec : Prop :=
  ∀ n, P713649490636671481.a n = A022275 n

end A022275

/-! ## A022275.P10454435233828252089

`ogf((9x+8x^2)/(1-3x+3x^2-x^3))`
-/

namespace A022275.P10454435233828252089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 9, 8] [1, -3, 3, -1] n

end

end A022275.P10454435233828252089

namespace A022275

/-- `ogf((9x+8x^2)/(1-3x+3x^2-x^3))` -/
def P10454435233828252089.Spec : Prop :=
  ∀ n, P10454435233828252089.a n = A022275 n

end A022275

/-! ## A022275.P9803826787765581938

`∑[record[4*n*gcd(2, n+1)]+n]`
-/

namespace A022275.P9803826787765581938
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n * Nat.gcd 2 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n) + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A022275.P9803826787765581938

namespace A022275

/-- `∑[record[4*n*gcd(2, n+1)]+n]` -/
def P9803826787765581938.Spec : Prop :=
  ∀ n, (P9803826787765581938.a n : ℤ) = A022275 n

end A022275

/-! ## A022275.P3279162538809007856

`A022274(n)+n`
-/

namespace A022275.P3279162538809007856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022274 n + (n : ℤ)

end

end A022275.P3279162538809007856

namespace A022275

/-- `A022274(n)+n` -/
def P3279162538809007856.Spec : Prop :=
  ∀ n, P3279162538809007856.a n = A022275 n

end A022275

/-! ## A022275.P2578143248908269636

`A022273(n)+n²`
-/

namespace A022275.P2578143248908269636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022273 n + (n ^ 2 : ℤ)

end

end A022275.P2578143248908269636

namespace A022275

/-- `A022273(n)+n²` -/
def P2578143248908269636.Spec : Prop :=
  ∀ n, P2578143248908269636.a n = A022275 n

end A022275

/-! ## A022275.P517762514575349275

`A022277(n)-n²`
-/

namespace A022275.P517762514575349275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022277 n - (n ^ 2 : ℤ)

end

end A022275.P517762514575349275

namespace A022275

/-- `A022277(n)-n²` -/
def P517762514575349275.Spec : Prop :=
  ∀ n, P517762514575349275.a n = A022275 n

end A022275

/-! ## A022275.P16034405978175020688

`A139098(n)+∑[n]`
-/

namespace A022275.P16034405978175020688
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139098 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A022275.P16034405978175020688

namespace A022275

/-- `A139098(n)+∑[n]` -/
def P16034405978175020688.Spec : Prop :=
  ∀ n, P16034405978175020688.a n = A022275 n

end A022275

/-! ## A022275.P8202001453898935126

`n/2*A215137(n)`
-/

namespace A022275.P8202001453898935126
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / 2 * (A215137 n : ℚ)

end

end A022275.P8202001453898935126

namespace A022275

/-- `n/2*A215137(n)` -/
def P8202001453898935126.Spec : Prop :=
  ∀ n, P8202001453898935126.a n = (A022275 n : ℚ)

theorem P8202001453898935126.correct : P8202001453898935126.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A022275, Nat.add_sub_cancel, A022275.P8202001453898935126.a, A022275.P3271719630850696146.a, A215137, A215137.P16345260773211617231.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf)
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A022275, Nat.add_sub_cancel, A022275.P8202001453898935126.a, A022275.P3271719630850696146.a, A215137, A215137.P16345260773211617231.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith | ((try field_simp); ring_nf)

end A022275

/-! ## A022275.P18100791060578272743

`(3*n)²-A161680(n)`
-/

namespace A022275.P18100791060578272743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((3 * n) ^ 2 : ℤ) - A161680 n

end

end A022275.P18100791060578272743

namespace A022275

/-- `(3*n)²-A161680(n)` -/
def P18100791060578272743.Spec : Prop :=
  ∀ n, P18100791060578272743.a n = A022275 n

end A022275

/-! ## A022275.P7147335949865955656

`A277990(n)/6-∑[n]`
-/

namespace A022275.P7147335949865955656
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A277990 n : ℚ) / 6 - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ)

end

end A022275.P7147335949865955656

namespace A022275

/-- `A277990(n)/6-∑[n]` -/
def P7147335949865955656.Spec : Prop :=
  ∀ n, P7147335949865955656.a n = (A022275 n : ℚ)

end A022275

/-! ## A022275.P13937524703478741079

`A022272(n)+n²+n`
-/

namespace A022275.P13937524703478741079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022272 n + (n ^ 2 + n : ℤ)

end

end A022275.P13937524703478741079

namespace A022275

/-- `A022272(n)+n²+n` -/
def P13937524703478741079.Spec : Prop :=
  ∀ n, P13937524703478741079.a n = A022275 n

end A022275

/-! ## A022275.P15305796719661436774

`A139275(n)+∑[n]-n`
-/

namespace A022275.P15305796719661436774
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139275 n + (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (n : ℤ))

end

end A022275.P15305796719661436774

namespace A022275

/-- `A139275(n)+∑[n]-n` -/
def P15305796719661436774.Spec : Prop :=
  ∀ n, P15305796719661436774.a n = A022275 n

end A022275

/-! ## A022275.P8432980320446253593

`abs(∑[n]-n-9*A000290(n))`
-/

namespace A022275.P8432980320446253593
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (n : ℤ) - 9 * A000290 n|

end

end A022275.P8432980320446253593

namespace A022275

/-- `abs(∑[n]-n-9*A000290(n))` -/
def P8432980320446253593.Spec : Prop :=
  ∀ n, P8432980320446253593.a n = A022275 n

end A022275

/-! ## A022275.P3332877532237322775

`A006137(n)+A000466(n)`
-/

namespace A022275.P3332877532237322775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006137 n + A000466 n

end

end A022275.P3332877532237322775

namespace A022275

/-- `A006137(n)+A000466(n)` -/
def P3332877532237322775.Spec : Prop :=
  ∀ n, P3332877532237322775.a n = A022275 n

end A022275

/-!
# A022276: a(n) = n*(19*n - 1)/2.

The programs for A022276, the canonical program `A022276.P2397352583262610903` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A022276 has offset 0).

The definition of A022276 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(19*n-1)/2` (program `A022276.P18055709504843208503`, by `A022276.P18055709504843208503.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A022276.P18055709504843208503

`n*(19*n-1)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A022276.P18055709504843208503
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) * ((19 * n : ℤ) - 1) : ℚ) / 2

end

end A022276.P18055709504843208503

namespace A022276

/-- `n*(19*n-1)/2` -/
def P18055709504843208503.Spec : Prop :=
  ∀ n, P18055709504843208503.a n = (A022276 n : ℚ)

theorem P18055709504843208503.correct : P18055709504843208503.Spec := by
  intro n
  induction n with
  | zero => simp [A022276, A022276.P18055709504843208503.a, A022276.P2397352583262610903.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
  | succ m ih =>
    simp only [A022276, Nat.add_sub_cancel, A022276.P18055709504843208503.a, A022276.P2397352583262610903.a, SequenceMachineLib.memo_apply] at ih ⊢
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    try simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
    try push_cast at ih ⊢
    try linarith

end A022276

/-! ## A022276.P2397352583262610903

`19*n+a(n-1)-10` with `a(0)=0`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A022276

/-- `19*n+a(n-1)-10` -/
def P2397352583262610903.Spec : Prop :=
  ∀ n, P2397352583262610903.a n = A022276 n

theorem P2397352583262610903.correct : P2397352583262610903.Spec := by
  intro n
  simp only [A022276]

end A022276

/-! ## A022276.P17981411844539020482

`C(n, 2)+(3*n)²`
-/

namespace A022276.P17981411844539020482
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 2 + (3 * n) ^ 2

end

end A022276.P17981411844539020482

namespace A022276

/-- `C(n, 2)+(3*n)²` -/
def P17981411844539020482.Spec : Prop :=
  ∀ n, (P17981411844539020482.a n : ℤ) = A022276 n

end A022276

/-! ## A022276.P17197449764620154938

`∑[a(n-1)+19]` with `a(0)=0, a(1)=9`
-/

namespace A022276.P17197449764620154938
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 9] fun n f1 =>
  f1 (n - 1) + 19

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A022276.P17197449764620154938

namespace A022276

/-- `∑[a(n-1)+19]` -/
def P17197449764620154938.Spec : Prop :=
  ∀ n, (P17197449764620154938.a n : ℤ) = A022276 n

end A022276

/-! ## A022276.P9165528252563517728

`∑[ogf((9x+10x^2)/(1-2x+x^2))]`
-/

namespace A022276.P9165528252563517728
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 9, 10] [1, -2, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A022276.P9165528252563517728

namespace A022276

/-- `∑[ogf((9x+10x^2)/(1-2x+x^2))]` -/
def P9165528252563517728.Spec : Prop :=
  ∀ n, P9165528252563517728.a n = A022276 n

end A022276

/-! ## A022276.P5939262652970086894

`ogf((9x+10x^2)/(1-3x+3x^2-x^3))`
-/

namespace A022276.P5939262652970086894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 9, 10] [1, -3, 3, -1] n

end

end A022276.P5939262652970086894

namespace A022276

/-- `ogf((9x+10x^2)/(1-3x+3x^2-x^3))` -/
def P5939262652970086894.Spec : Prop :=
  ∀ n, P5939262652970086894.a n = A022276 n

end A022276

/-! ## A022276.P4869344660449060805

`abs(13*C(n, 2)+n-n*(16*n-6))`
-/

namespace A022276.P4869344660449060805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(13 * Nat.choose n 2 + n : ℤ) - (n : ℤ) * ((16 * n : ℤ) - 6)|

end

end A022276.P4869344660449060805

namespace A022276

/-- `abs(13*C(n, 2)+n-n*(16*n-6))` -/
def P4869344660449060805.Spec : Prop :=
  ∀ n, P4869344660449060805.a n = A022276 n

end A022276

/-! ## A022276.P1626724002130917956

`((3*n+1)*(n+1)²+10*n²)%∑[(3*n+1)²]`
-/

namespace A022276.P1626724002130917956
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (3 * n + 1) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((3 * n + 1) * (n + 1) ^ 2 + 10 * n ^ 2) % (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A022276.P1626724002130917956

namespace A022276

/-- `((3*n+1)*(n+1)²+10*n²)%∑[(3*n+1)²]` -/
def P1626724002130917956.Spec : Prop :=
  ∀ n, (P1626724002130917956.a n : ℤ) = A022276 n

end A022276

/-! ## A022276.P7239348876464321755

`A022277(n)-n`
-/

namespace A022276.P7239348876464321755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022277 n - (n : ℤ)

end

end A022276.P7239348876464321755

namespace A022276

/-- `A022277(n)-n` -/
def P7239348876464321755.Spec : Prop :=
  ∀ n, P7239348876464321755.a n = A022276 n

end A022276

/-! ## A022276.P9104415126350497153

`A022274(n)+n²`
-/

namespace A022276.P9104415126350497153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022274 n + (n ^ 2 : ℤ)

end

end A022276.P9104415126350497153

namespace A022276

/-- `A022274(n)+n²` -/
def P9104415126350497153.Spec : Prop :=
  ∀ n, P9104415126350497153.a n = A022276 n

end A022276

/-! ## A022276.P11469060311394241732

`A022278(n)-n²`
-/

namespace A022276.P11469060311394241732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022278 n - (n ^ 2 : ℤ)

end

end A022276.P11469060311394241732

namespace A022276

/-- `A022278(n)-n²` -/
def P11469060311394241732.Spec : Prop :=
  ∀ n, P11469060311394241732.a n = A022276 n

end A022276

/-! ## A022276.P2624017737718113055

`A033583(n)-∑[n]`
-/

namespace A022276.P2624017737718113055
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033583 n - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A022276.P2624017737718113055

namespace A022276

/-- `A033583(n)-∑[n]` -/
def P2624017737718113055.Spec : Prop :=
  ∀ n, P2624017737718113055.a n = A022276 n

end A022276

/-! ## A022276.P14418072746887602568

`10*n²-A000217(n)`
-/

namespace A022276.P14418072746887602568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (10 * n ^ 2 : ℤ) - A000217 n

end

end A022276.P14418072746887602568

namespace A022276

/-- `10*n²-A000217(n)` -/
def P14418072746887602568.Spec : Prop :=
  ∀ n, P14418072746887602568.a n = A022276 n

end A022276

/-! ## A022276.P6204312160985630068

`A022279(n)-(n²+n)`
-/

namespace A022276.P6204312160985630068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022279 n - (n ^ 2 + n : ℤ)

end

end A022276.P6204312160985630068

namespace A022276

/-- `A022279(n)-(n²+n)` -/
def P6204312160985630068.Spec : Prop :=
  ∀ n, P6204312160985630068.a n = A022276 n

end A022276

/-! ## A022276.P16186692681216937297

`floor(C(n+1, 2)+sqrt(A016768(n))-n)`
-/

namespace A022276.P16186692681216937297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.choose (n + 1) 2 : ℝ) + (Real.sqrt (A016768 n : ℝ) - (n : ℝ))⌋

end

end A022276.P16186692681216937297

namespace A022276

/-- `floor(C(n+1, 2)+sqrt(A016768(n))-n)` -/
def P16186692681216937297.Spec : Prop :=
  ∀ n, P16186692681216937297.a n = A022276 n

end A022276

/-! ## A022276.P10850115501844094098

`A013656(n)+A000096(n)`
-/

namespace A022276.P10850115501844094098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013656 n + A000096 n

end

end A022276.P10850115501844094098

namespace A022276

/-- `A013656(n)+A000096(n)` -/
def P10850115501844094098.Spec : Prop :=
  ∀ n, P10850115501844094098.a n = A022276 n

end A022276

/-! ## A022276.P1056695880733927092

`A022273(n)+A000384(n)`
-/

namespace A022276.P1056695880733927092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022273 n + A000384 n

end

end A022276.P1056695880733927092

namespace A022276

/-- `A022273(n)+A000384(n)` -/
def P1056695880733927092.Spec : Prop :=
  ∀ n, P1056695880733927092.a n = A022276 n

end A022276

/-! ## A022276.P11525330187994935763

`A022272(n)+A001105(n)`
-/

namespace A022276.P11525330187994935763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022272 n + A001105 n

end

end A022276.P11525330187994935763

namespace A022276

/-- `A022272(n)+A001105(n)` -/
def P11525330187994935763.Spec : Prop :=
  ∀ n, P11525330187994935763.a n = A022276 n

end A022276

/-! ## A022276.P6576896636907102446

`A033580(n)+A001106(n)`
-/

namespace A022276.P6576896636907102446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033580 n + A001106 n

end

end A022276.P6576896636907102446

namespace A022276

/-- `A033580(n)+A001106(n)` -/
def P6576896636907102446.Spec : Prop :=
  ∀ n, P6576896636907102446.a n = A022276 n

end A022276

/-! ## A022276.P9918897593503432216

`A022268(n)+A016742(n)`
-/

namespace A022276.P9918897593503432216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022268 n + A016742 n

end

end A022276.P9918897593503432216

namespace A022276

/-- `A022268(n)+A016742(n)` -/
def P9918897593503432216.Spec : Prop :=
  ∀ n, P9918897593503432216.a n = A022276 n

end A022276

/-!
# A022277: a(n) = n*(19*n + 1)/2.

The programs for A022277, the canonical program `A022277.P4963988917551077895` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A022277 has offset 0).

The definition of A022277 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(19*n+1)/2` (program `A022277.P3737477083866034393`, by `A022277.P3737477083866034393.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A022277.P3737477083866034393

`n*(19*n+1)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A022277.P3737477083866034393
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n * (19 * n + 1) : ℚ) / 2

end

end A022277.P3737477083866034393

namespace A022277

/-- `n*(19*n+1)/2` -/
def P3737477083866034393.Spec : Prop :=
  ∀ n, P3737477083866034393.a n = (A022277 n : ℚ)

theorem P3737477083866034393.correct : P3737477083866034393.Spec := by
  intro n
  induction n with
  | zero => simp [A022277, A022277.P3737477083866034393.a, A022277.P4963988917551077895.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
  | succ m ih =>
    simp only [A022277, Nat.add_sub_cancel, A022277.P3737477083866034393.a, A022277.P4963988917551077895.a, SequenceMachineLib.memo_apply] at ih ⊢
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    try simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
    try push_cast at ih ⊢
    try linarith

end A022277

/-! ## A022277.P4963988917551077895

`19*n+a(n-1)-9` with `a(0)=0`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A022277

/-- `19*n+a(n-1)-9` -/
def P4963988917551077895.Spec : Prop :=
  ∀ n, P4963988917551077895.a n = A022277 n

theorem P4963988917551077895.correct : P4963988917551077895.Spec := by
  intro n
  simp only [A022277]

end A022277

/-! ## A022277.P3102160895251486579

`A000217(10*n)-A000217(9*n)`
-/

namespace A022277.P3102160895251486579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (10 * n) - A000217 (9 * n)

end

end A022277.P3102160895251486579

namespace A022277

/-- `A000217(10*n)-A000217(9*n)` -/
def P3102160895251486579.Spec : Prop :=
  ∀ n, P3102160895251486579.a n = A022277 n

end A022277

/-! ## A022277.P684420519033407573

`∑[a(n-1)+19]` with `a(0)=0, a(1)=10`
-/

namespace A022277.P684420519033407573
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 10] fun n f1 =>
  f1 (n - 1) + 19

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A022277.P684420519033407573

namespace A022277

/-- `∑[a(n-1)+19]` -/
def P684420519033407573.Spec : Prop :=
  ∀ n, (P684420519033407573.a n : ℤ) = A022277 n

end A022277

/-! ## A022277.P6355803344156368532

`∑[ogf((10x+9x^2)/(1-2x+x^2))]`
-/

namespace A022277.P6355803344156368532
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 10, 9] [1, -2, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A022277.P6355803344156368532

namespace A022277

/-- `∑[ogf((10x+9x^2)/(1-2x+x^2))]` -/
def P6355803344156368532.Spec : Prop :=
  ∀ n, P6355803344156368532.a n = A022277 n

end A022277

/-! ## A022277.P17704772271316455852

`ogf((10x+9x^2)/(1-3x+3x^2-x^3))`
-/

namespace A022277.P17704772271316455852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 10, 9] [1, -3, 3, -1] n

end

end A022277.P17704772271316455852

namespace A022277

/-- `ogf((10x+9x^2)/(1-3x+3x^2-x^3))` -/
def P17704772271316455852.Spec : Prop :=
  ∀ n, P17704772271316455852.a n = A022277 n

end A022277

/-! ## A022277.P1236043382153367614

`abs(C(3*n, 2)+n-14*n²)`
-/

namespace A022277.P1236043382153367614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(Nat.choose (3 * n) 2 + n : ℤ) - (14 * n ^ 2 : ℤ)|

end

end A022277.P1236043382153367614

namespace A022277

/-- `abs(C(3*n, 2)+n-14*n²)` -/
def P1236043382153367614.Spec : Prop :=
  ∀ n, P1236043382153367614.a n = A022277 n

end A022277

/-! ## A022277.P13590324555257837072

`abs(C(2*n, 2)-(12*n²-∑[n]))`
-/

namespace A022277.P13590324555257837072
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(Nat.choose (2 * n) 2 : ℤ) - ((12 * n ^ 2 : ℤ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ))|

end

end A022277.P13590324555257837072

namespace A022277

/-- `abs(C(2*n, 2)-(12*n²-∑[n]))` -/
def P13590324555257837072.Spec : Prop :=
  ∀ n, P13590324555257837072.a n = A022277 n

end A022277

/-! ## A022277.P6972523034346739713

`A022276(n)+n`
-/

namespace A022277.P6972523034346739713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022276 n + (n : ℤ)

end

end A022277.P6972523034346739713

namespace A022277

/-- `A022276(n)+n` -/
def P6972523034346739713.Spec : Prop :=
  ∀ n, P6972523034346739713.a n = A022277 n

end A022277

/-! ## A022277.P5917256957794592908

`A022275(n)+n²`
-/

namespace A022277.P5917256957794592908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022275 n + (n ^ 2 : ℤ)

end

end A022277.P5917256957794592908

namespace A022277

/-- `A022275(n)+n²` -/
def P5917256957794592908.Spec : Prop :=
  ∀ n, P5917256957794592908.a n = A022277 n

end A022277

/-! ## A022277.P10588710755726999865

`A022279(n)-n²`
-/

namespace A022277.P10588710755726999865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022279 n - (n ^ 2 : ℤ)

end

end A022277.P10588710755726999865

namespace A022277

/-- `A022279(n)-n²` -/
def P10588710755726999865.Spec : Prop :=
  ∀ n, P10588710755726999865.a n = A022277 n

end A022277

/-! ## A022277.P13523507412425736012

`A016766(n)+∑[n]`
-/

namespace A022277.P13523507412425736012
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016766 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A022277.P13523507412425736012

namespace A022277

/-- `A016766(n)+∑[n]` -/
def P13523507412425736012.Spec : Prop :=
  ∀ n, P13523507412425736012.a n = A022277 n

end A022277

/-! ## A022277.P12863332821758183585

`n/2*A215144(n)`
-/

namespace A022277.P12863332821758183585
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / 2 * (A215144 n : ℚ)

end

end A022277.P12863332821758183585

namespace A022277

/-- `n/2*A215144(n)` -/
def P12863332821758183585.Spec : Prop :=
  ∀ n, P12863332821758183585.a n = (A022277 n : ℚ)

theorem P12863332821758183585.correct : P12863332821758183585.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A022277, Nat.add_sub_cancel, A022277.P12863332821758183585.a, A022277.P4963988917551077895.a, A215144, A215144.P14003921798403721273.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf)
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A022277, Nat.add_sub_cancel, A022277.P12863332821758183585.a, A022277.P4963988917551077895.a, A215144, A215144.P14003921798403721273.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith | ((try field_simp); ring_nf)

end A022277

/-! ## A022277.P4472585506631560787

`∑[n]+A008585(n)²`
-/

namespace A022277.P4472585506631560787
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + A008585 n ^ 2

end

end A022277.P4472585506631560787

namespace A022277

/-- `∑[n]+A008585(n)²` -/
def P4472585506631560787.Spec : Prop :=
  ∀ n, P4472585506631560787.a n = A022277 n

end A022277

/-! ## A022277.P10647345498276607196

`A022274(n)+n²+n`
-/

namespace A022277.P10647345498276607196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022274 n + (n ^ 2 + n : ℤ)

end

end A022277.P10647345498276607196

namespace A022277

/-- `A022274(n)+n²+n` -/
def P10647345498276607196.Spec : Prop :=
  ∀ n, P10647345498276607196.a n = A022277 n

end A022277

/-! ## A022277.P482636507080213274

`10*n+A051873(n)-n`
-/

namespace A022277.P482636507080213274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (10 * n : ℤ) + (A051873 n - (n : ℤ))

end

end A022277.P482636507080213274

namespace A022277

/-- `10*n+A051873(n)-n` -/
def P482636507080213274.Spec : Prop :=
  ∀ n, P482636507080213274.a n = A022277 n

end A022277

/-! ## A022277.P16572593291106671561

`∑[record[9*A006257(n)]+n]`
-/

namespace A022277.P16572593291106671561
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 * A006257 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A022277.P16572593291106671561

namespace A022277

/-- `∑[record[9*A006257(n)]+n]` -/
def P16572593291106671561.Spec : Prop :=
  ∀ n, P16572593291106671561.a n = A022277 n

end A022277

/-! ## A022277.P9422970613709281704

`abs(A158187(n)-∑[abs(1-n)])`
-/

namespace A022277.P9422970613709281704
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (n : ℤ)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A158187 n - ∑ j ∈ Finset.range (n + 1), f1 j|

end

end A022277.P9422970613709281704

namespace A022277

/-- `abs(A158187(n)-∑[abs(1-n)])` -/
def P9422970613709281704.Spec : Prop :=
  ∀ n, P9422970613709281704.a n = A022277 n

end A022277

/-! ## A022277.P11746791685213142453

`abs(∑[9*n]-2*n-A195025(n))`
-/

namespace A022277.P11746791685213142453
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (2 * n : ℤ) - A195025 n|

end

end A022277.P11746791685213142453

namespace A022277

/-- `abs(∑[9*n]-2*n-A195025(n))` -/
def P11746791685213142453.Spec : Prop :=
  ∀ n, P11746791685213142453.a n = A022277 n

end A022277

/-! ## A022277.P5312433968429468203

`(C(n+1, 2)+(3*n)²)%A008534(n)`
-/

namespace A022277.P5312433968429468203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Nat.choose (n + 1) 2 + (3 * n) ^ 2 : ℤ) (A008534 n)

end

end A022277.P5312433968429468203

namespace A022277

/-- `(C(n+1, 2)+(3*n)²)%A008534(n)` -/
def P5312433968429468203.Spec : Prop :=
  ∀ n, P5312433968429468203.a n = A022277 n

end A022277

/-!
# A022278: a(n) = n*(21*n-1)/2.

The programs for A022278, the canonical program `A022278.P8990971648851060191` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A022278 has offset 0).

The definition of A022278 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(21*n-1)/2` (program `A022278.P17778157747449237191`, by `A022278.P17778157747449237191.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A022278.P17778157747449237191

`n*(21*n-1)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A022278.P17778157747449237191
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) * ((21 * n : ℤ) - 1) : ℚ) / 2

end

end A022278.P17778157747449237191

namespace A022278

/-- `n*(21*n-1)/2` -/
def P17778157747449237191.Spec : Prop :=
  ∀ n, P17778157747449237191.a n = (A022278 n : ℚ)

theorem P17778157747449237191.correct : P17778157747449237191.Spec := by
  intro n
  induction n with
  | zero => simp [A022278, A022278.P17778157747449237191.a, A022278.P8990971648851060191.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
  | succ m ih =>
    simp only [A022278, Nat.add_sub_cancel, A022278.P17778157747449237191.a, A022278.P8990971648851060191.a, SequenceMachineLib.memo_apply] at ih ⊢
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    try simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
    try push_cast at ih ⊢
    try linarith

end A022278

/-! ## A022278.P8990971648851060191

`21*n+a(n-1)-11` with `a(0)=0`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A022278

/-- `21*n+a(n-1)-11` -/
def P8990971648851060191.Spec : Prop :=
  ∀ n, P8990971648851060191.a n = A022278 n

theorem P8990971648851060191.correct : P8990971648851060191.Spec := by
  intro n
  simp only [A022278]

end A022278

/-! ## A022278.P9756567353707924775

`∑[a(n-1)+21]` with `a(0)=0, a(1)=10`
-/

namespace A022278.P9756567353707924775
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 10] fun n f1 =>
  f1 (n - 1) + 21

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A022278.P9756567353707924775

namespace A022278

/-- `∑[a(n-1)+21]` -/
def P9756567353707924775.Spec : Prop :=
  ∀ n, (P9756567353707924775.a n : ℤ) = A022278 n

end A022278

/-! ## A022278.P6364367309027152377

`(3*n)²+C(3*n, 2)/3`
-/

namespace A022278.P6364367309027152377
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((3 * n) ^ 2 : ℚ) + (Nat.choose (3 * n) 2 : ℚ) / 3

end

end A022278.P6364367309027152377

namespace A022278

/-- `(3*n)²+C(3*n, 2)/3` -/
def P6364367309027152377.Spec : Prop :=
  ∀ n, P6364367309027152377.a n = (A022278 n : ℚ)

end A022278

/-! ## A022278.P14543214546651405312

`A022279(n)-n`
-/

namespace A022278.P14543214546651405312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022279 n - (n : ℤ)

end

end A022278.P14543214546651405312

namespace A022278

/-- `A022279(n)-n` -/
def P14543214546651405312.Spec : Prop :=
  ∀ n, P14543214546651405312.a n = A022278 n

end A022278

/-! ## A022278.P2428887351041267731

`A022276(n)+n²`
-/

namespace A022278.P2428887351041267731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022276 n + (n ^ 2 : ℤ)

end

end A022278.P2428887351041267731

namespace A022278

/-- `A022276(n)+n²` -/
def P2428887351041267731.Spec : Prop :=
  ∀ n, P2428887351041267731.a n = A022278 n

end A022278

/-! ## A022278.P11269027129216269970

`A022280(n)-n²`
-/

namespace A022278.P11269027129216269970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022280 n - (n ^ 2 : ℤ)

end

end A022278.P11269027129216269970

namespace A022278

/-- `A022280(n)-n²` -/
def P11269027129216269970.Spec : Prop :=
  ∀ n, P11269027129216269970.a n = A022278 n

end A022278

/-! ## A022278.P17158620007507222595

`A033584(n)-∑[n]`
-/

namespace A022278.P17158620007507222595
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033584 n - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A022278.P17158620007507222595

namespace A022278

/-- `A033584(n)-∑[n]` -/
def P17158620007507222595.Spec : Prop :=
  ∀ n, P17158620007507222595.a n = A022278 n

end A022278

/-! ## A022278.P4552443385577101617

`3*A022264(n)+n`
-/

namespace A022278.P4552443385577101617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A022264 n + (n : ℤ)

end

end A022278.P4552443385577101617

namespace A022278

/-- `3*A022264(n)+n` -/
def P4552443385577101617.Spec : Prop :=
  ∀ n, P4552443385577101617.a n = A022278 n

end A022278

/-! ## A022278.P17900640981119774834

`A152744(n)+3*n`
-/

namespace A022278.P17900640981119774834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152744 n + (3 * n : ℤ)

end

end A022278.P17900640981119774834

namespace A022278

/-- `A152744(n)+3*n` -/
def P17900640981119774834.Spec : Prop :=
  ∀ n, P17900640981119774834.a n = A022278 n

end A022278

/-! ## A022278.P13740307015664452599

`11*n²-A000217(n)`
-/

namespace A022278.P13740307015664452599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (11 * n ^ 2 : ℤ) - A000217 n

end

end A022278.P13740307015664452599

namespace A022278

/-- `11*n²-A000217(n)` -/
def P13740307015664452599.Spec : Prop :=
  ∀ n, P13740307015664452599.a n = A022278 n

end A022278

/-! ## A022278.P13407883597294836474

`A022281(n)-(n²+n)`
-/

namespace A022278.P13407883597294836474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022281 n - (n ^ 2 + n : ℤ)

end

end A022278.P13407883597294836474

namespace A022278

/-- `A022281(n)-(n²+n)` -/
def P13407883597294836474.Spec : Prop :=
  ∀ n, P13407883597294836474.a n = A022278 n

end A022278

/-! ## A022278.P5954267615528122571

`2*A022268(n)-C(n, 2)`
-/

namespace A022278.P5954267615528122571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A022268 n - (Nat.choose n 2 : ℤ)

end

end A022278.P5954267615528122571

namespace A022278

/-- `2*A022268(n)-C(n, 2)` -/
def P5954267615528122571.Spec : Prop :=
  ∀ n, P5954267615528122571.a n = A022278 n

end A022278

/-! ## A022278.P6707391586389783981

`abs(∑[7*n]-A195025(n))`
-/

namespace A022278.P6707391586389783981
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A195025 n|

end

end A022278.P6707391586389783981

namespace A022278

/-- `abs(∑[7*n]-A195025(n))` -/
def P6707391586389783981.Spec : Prop :=
  ∀ n, P6707391586389783981.a n = A022278 n

end A022278

/-! ## A022278.P11317507228500355639

`A045943(n)+n*(9*n-2)`
-/

namespace A022278.P11317507228500355639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045943 n + (n : ℤ) * ((9 * n : ℤ) - 2)

end

end A022278.P11317507228500355639

namespace A022278

/-- `A045943(n)+n*(9*n-2)` -/
def P11317507228500355639.Spec : Prop :=
  ∀ n, P11317507228500355639.a n = A022278 n

end A022278

/-! ## A022278.P7550359925738309779

`ceil(∑[n-1]+A158558(n)/3)`
-/

namespace A022278.P7550359925738309779
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) + (A158558 n : ℚ) / 3⌉

end

end A022278.P7550359925738309779

namespace A022278

/-- `ceil(∑[n-1]+A158558(n)/3)` -/
def P7550359925738309779.Spec : Prop :=
  ∀ n, P7550359925738309779.a n = A022278 n

end A022278

/-! ## A022278.P12518148810972535566

`∑[A008585(n)]+n*(9*n-2)`
-/

namespace A022278.P12518148810972535566
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008585 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ) * ((9 * n : ℤ) - 2)

end

end A022278.P12518148810972535566

namespace A022278

/-- `∑[A008585(n)]+n*(9*n-2)` -/
def P12518148810972535566.Spec : Prop :=
  ∀ n, P12518148810972535566.a n = A022278 n

end A022278

/-! ## A022278.P577323778008747236

`A016766(n)+A000326(n)`
-/

namespace A022278.P577323778008747236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016766 n + A000326 n

end

end A022278.P577323778008747236

namespace A022278

/-- `A016766(n)+A000326(n)` -/
def P577323778008747236.Spec : Prop :=
  ∀ n, P577323778008747236.a n = A022278 n

end A022278

/-! ## A022278.P9972307520388844441

`A022275(n)+A000384(n)`
-/

namespace A022278.P9972307520388844441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022275 n + A000384 n

end

end A022278.P9972307520388844441

namespace A022278

/-- `A022275(n)+A000384(n)` -/
def P9972307520388844441.Spec : Prop :=
  ∀ n, P9972307520388844441.a n = A022278 n

end A022278

/-! ## A022278.P10987362060768493499

`A022274(n)+A001105(n)`
-/

namespace A022278.P10987362060768493499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022274 n + A001105 n

end

end A022278.P10987362060768493499

namespace A022278

/-- `A022274(n)+A001105(n)` -/
def P10987362060768493499.Spec : Prop :=
  ∀ n, P10987362060768493499.a n = A022278 n

end A022278

/-!
# A022279: a(n) = n*(21*n + 1)/2.

The programs for A022279, the canonical program `A022279.P6909010909644651453` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A022279 has offset 0).

The definition of A022279 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(21*n+1)/2` (program `A022279.P13433673048192519757`, by `A022279.P13433673048192519757.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A022279.P13433673048192519757

`n*(21*n+1)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A022279.P13433673048192519757
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n * (21 * n + 1) : ℚ) / 2

end

end A022279.P13433673048192519757

namespace A022279

/-- `n*(21*n+1)/2` -/
def P13433673048192519757.Spec : Prop :=
  ∀ n, P13433673048192519757.a n = (A022279 n : ℚ)

theorem P13433673048192519757.correct : P13433673048192519757.Spec := by
  intro n
  induction n with
  | zero => simp [A022279, A022279.P13433673048192519757.a, A022279.P6909010909644651453.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
  | succ m ih =>
    simp only [A022279, Nat.add_sub_cancel, A022279.P13433673048192519757.a, A022279.P6909010909644651453.a, SequenceMachineLib.memo_apply] at ih ⊢
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    try simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
    try push_cast at ih ⊢
    try linarith

end A022279

/-! ## A022279.P6909010909644651453

`21*n+a(n-1)-10` with `a(0)=0`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A022279

/-- `21*n+a(n-1)-10` -/
def P6909010909644651453.Spec : Prop :=
  ∀ n, P6909010909644651453.a n = A022279 n

theorem P6909010909644651453.correct : P6909010909644651453.Spec := by
  intro n
  simp only [A022279]

end A022279

/-! ## A022279.P6957585183539485182

`A000217(11*n)-A000217(10*n)`
-/

namespace A022279.P6957585183539485182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (11 * n) - A000217 (10 * n)

end

end A022279.P6957585183539485182

namespace A022279

/-- `A000217(11*n)-A000217(10*n)` -/
def P6957585183539485182.Spec : Prop :=
  ∀ n, P6957585183539485182.a n = A022279 n

end A022279

/-! ## A022279.P2963035101763330664

`∑[a(n-1)+21]` with `a(0)=0, a(1)=11`
-/

namespace A022279.P2963035101763330664
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 11] fun n f1 =>
  f1 (n - 1) + 21

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A022279.P2963035101763330664

namespace A022279

/-- `∑[a(n-1)+21]` -/
def P2963035101763330664.Spec : Prop :=
  ∀ n, (P2963035101763330664.a n : ℤ) = A022279 n

end A022279

/-! ## A022279.P15433354194591314576

`2*C(4*n, 2)-(11*C(n, 2)+n)`
-/

namespace A022279.P15433354194591314576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * Nat.choose (4 * n) 2 : ℤ) - (11 * Nat.choose n 2 + n : ℤ)

end

end A022279.P15433354194591314576

namespace A022279

/-- `2*C(4*n, 2)-(11*C(n, 2)+n)` -/
def P15433354194591314576.Spec : Prop :=
  ∀ n, P15433354194591314576.a n = A022279 n

end A022279

/-! ## A022279.P14326208272289520809

`A022278(n)+n`
-/

namespace A022279.P14326208272289520809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022278 n + (n : ℤ)

end

end A022279.P14326208272289520809

namespace A022279

/-- `A022278(n)+n` -/
def P14326208272289520809.Spec : Prop :=
  ∀ n, P14326208272289520809.a n = A022279 n

end A022279

/-! ## A022279.P420440894942325292

`A022277(n)+n²`
-/

namespace A022279.P420440894942325292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022277 n + (n ^ 2 : ℤ)

end

end A022279.P420440894942325292

namespace A022279

/-- `A022277(n)+n²` -/
def P420440894942325292.Spec : Prop :=
  ∀ n, P420440894942325292.a n = A022279 n

end A022279

/-! ## A022279.P6257643483296842401

`A022281(n)-n²`
-/

namespace A022279.P6257643483296842401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022281 n - (n ^ 2 : ℤ)

end

end A022279.P6257643483296842401

namespace A022279

/-- `A022281(n)-n²` -/
def P6257643483296842401.Spec : Prop :=
  ∀ n, P6257643483296842401.a n = A022279 n

end A022279

/-! ## A022279.P12778527265271410869

`A033583(n)+∑[n]`
-/

namespace A022279.P12778527265271410869
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033583 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A022279.P12778527265271410869

namespace A022279

/-- `A033583(n)+∑[n]` -/
def P12778527265271410869.Spec : Prop :=
  ∀ n, P12778527265271410869.a n = A022279 n

end A022279

/-! ## A022279.P297447204583458872

`3*A022265(n)-n`
-/

namespace A022279.P297447204583458872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A022265 n - (n : ℤ)

end

end A022279.P297447204583458872

namespace A022279

/-- `3*A022265(n)-n` -/
def P297447204583458872.Spec : Prop :=
  ∀ n, P297447204583458872.a n = A022279 n

end A022279

/-! ## A022279.P12464064873317892154

`A152744(n)+4*n`
-/

namespace A022279.P12464064873317892154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152744 n + (4 * n : ℤ)

end

end A022279.P12464064873317892154

namespace A022279

/-- `A152744(n)+4*n` -/
def P12464064873317892154.Spec : Prop :=
  ∀ n, P12464064873317892154.a n = A022279 n

end A022279

/-! ## A022279.P9324030138413598270

`n/2*A215146(n)`
-/

namespace A022279.P9324030138413598270
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / 2 * (A215146 n : ℚ)

end

end A022279.P9324030138413598270

namespace A022279

/-- `n/2*A215146(n)` -/
def P9324030138413598270.Spec : Prop :=
  ∀ n, P9324030138413598270.a n = (A022279 n : ℚ)

theorem P9324030138413598270.correct : P9324030138413598270.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A022279, Nat.add_sub_cancel, A022279.P9324030138413598270.a, A022279.P6909010909644651453.a, A215146, A215146.P15413588575788200673.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf)
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A022279, Nat.add_sub_cancel, A022279.P9324030138413598270.a, A022279.P6909010909644651453.a, A215146, A215146.P15413588575788200673.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith | ((try field_simp); ring_nf)

end A022279

/-! ## A022279.P6595929370321920401

`A022276(n)+n²+n`
-/

namespace A022279.P6595929370321920401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022276 n + (n ^ 2 + n : ℤ)

end

end A022279.P6595929370321920401

namespace A022279

/-- `A022276(n)+n²+n` -/
def P6595929370321920401.Spec : Prop :=
  ∀ n, P6595929370321920401.a n = A022279 n

end A022279

/-! ## A022279.P1339449480983897993

`A016766(n)+A005449(n)`
-/

namespace A022279.P1339449480983897993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016766 n + A005449 n

end

end A022279.P1339449480983897993

namespace A022279

/-- `A016766(n)+A005449(n)` -/
def P1339449480983897993.Spec : Prop :=
  ∀ n, P1339449480983897993.a n = A022279 n

end A022279

/-! ## A022279.P11201272402893343965

`A022275(n)+A001105(n)`
-/

namespace A022279.P11201272402893343965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022275 n + A001105 n

end

end A022279.P11201272402893343965

namespace A022279

/-- `A022275(n)+A001105(n)` -/
def P11201272402893343965.Spec : Prop :=
  ∀ n, P11201272402893343965.a n = A022279 n

end A022279

/-! ## A022279.P9391536333960963904

`A022270(n)+A007742(n)`
-/

namespace A022279.P9391536333960963904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022270 n + A007742 n

end

end A022279.P9391536333960963904

namespace A022279

/-- `A022270(n)+A007742(n)` -/
def P9391536333960963904.Spec : Prop :=
  ∀ n, P9391536333960963904.a n = A022279 n

end A022279

/-! ## A022279.P16880854107086924775

`A033585(n)+A000566(n)`
-/

namespace A022279.P16880854107086924775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033585 n + A000566 n

end

end A022279.P16880854107086924775

namespace A022279

/-- `A033585(n)+A000566(n)` -/
def P16880854107086924775.Spec : Prop :=
  ∀ n, P16880854107086924775.a n = A022279 n

end A022279

/-! ## A022279.P15319345538442700739

`A022274(n)+A014105(n)`
-/

namespace A022279.P15319345538442700739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022274 n + A014105 n

end

end A022279.P15319345538442700739

namespace A022279

/-- `A022274(n)+A014105(n)` -/
def P15319345538442700739.Spec : Prop :=
  ∀ n, P15319345538442700739.a n = A022279 n

end A022279

/-! ## A022279.P13435076310302238853

`A022271(n)+A016742(n)`
-/

namespace A022279.P13435076310302238853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022271 n + A016742 n

end

end A022279.P13435076310302238853

namespace A022279

/-- `A022271(n)+A016742(n)` -/
def P13435076310302238853.Spec : Prop :=
  ∀ n, P13435076310302238853.a n = A022279 n

end A022279

/-! ## A022279.P5021457938014923253

`A028895(n)+A014635(n)`
-/

namespace A022279.P5021457938014923253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028895 n + A014635 n

end

end A022279.P5021457938014923253

namespace A022279

/-- `A028895(n)+A014635(n)` -/
def P5021457938014923253.Spec : Prop :=
  ∀ n, P5021457938014923253.a n = A022279 n

end A022279

/-!
# A022280: a(n) = n*(23*n - 1)/2.

The programs for A022280, the canonical program `A022280.P3236419375464080213` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A022280 has offset 0).

The definition of A022280 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(23*n-1)/2` (program `A022280.P1370197309672196721`, by `A022280.P1370197309672196721.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A022280.P1370197309672196721

`n*(23*n-1)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A022280.P1370197309672196721
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) * ((23 * n : ℤ) - 1) : ℚ) / 2

end

end A022280.P1370197309672196721

namespace A022280

/-- `n*(23*n-1)/2` -/
def P1370197309672196721.Spec : Prop :=
  ∀ n, P1370197309672196721.a n = (A022280 n : ℚ)

theorem P1370197309672196721.correct : P1370197309672196721.Spec := by
  intro n
  induction n with
  | zero => simp [A022280, A022280.P1370197309672196721.a, A022280.P3236419375464080213.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
  | succ m ih =>
    simp only [A022280, Nat.add_sub_cancel, A022280.P1370197309672196721.a, A022280.P3236419375464080213.a, SequenceMachineLib.memo_apply] at ih ⊢
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    try simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
    try push_cast at ih ⊢
    try linarith

end A022280

/-! ## A022280.P3236419375464080213

`23*n+a(n-1)-12` with `a(0)=0`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A022280

/-- `23*n+a(n-1)-12` -/
def P3236419375464080213.Spec : Prop :=
  ∀ n, P3236419375464080213.a n = A022280 n

theorem P3236419375464080213.correct : P3236419375464080213.Spec := by
  intro n
  simp only [A022280]

end A022280

/-! ## A022280.P18239710404170399917

`∑[a(n-1)+23]` with `a(0)=0, a(1)=11`
-/

namespace A022280.P18239710404170399917
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 11] fun n f1 =>
  f1 (n - 1) + 23

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A022280.P18239710404170399917

namespace A022280

/-- `∑[a(n-1)+23]` -/
def P18239710404170399917.Spec : Prop :=
  ∀ n, (P18239710404170399917.a n : ℤ) = A022280 n

end A022280

/-! ## A022280.P9562560890682757225

`(3*n)²+C(5*n, 2)/5`
-/

namespace A022280.P9562560890682757225
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((3 * n) ^ 2 : ℚ) + (Nat.choose (5 * n) 2 : ℚ) / 5

end

end A022280.P9562560890682757225

namespace A022280

/-- `(3*n)²+C(5*n, 2)/5` -/
def P9562560890682757225.Spec : Prop :=
  ∀ n, P9562560890682757225.a n = (A022280 n : ℚ)

end A022280

/-! ## A022280.P12256082155582467657

`2*C(4*n, 2)-(9*C(n, 2)+n)`
-/

namespace A022280.P12256082155582467657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * Nat.choose (4 * n) 2 : ℤ) - (9 * Nat.choose n 2 + n : ℤ)

end

end A022280.P12256082155582467657

namespace A022280

/-- `2*C(4*n, 2)-(9*C(n, 2)+n)` -/
def P12256082155582467657.Spec : Prop :=
  ∀ n, P12256082155582467657.a n = A022280 n

end A022280

/-! ## A022280.P6725924889417201428

`A022281(n)-n`
-/

namespace A022280.P6725924889417201428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022281 n - (n : ℤ)

end

end A022280.P6725924889417201428

namespace A022280

/-- `A022281(n)-n` -/
def P6725924889417201428.Spec : Prop :=
  ∀ n, P6725924889417201428.a n = A022280 n

end A022280

/-! ## A022280.P15668954862354284535

`A022278(n)+n²`
-/

namespace A022280.P15668954862354284535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022278 n + (n ^ 2 : ℤ)

end

end A022280.P15668954862354284535

namespace A022280

/-- `A022278(n)+n²` -/
def P15668954862354284535.Spec : Prop :=
  ∀ n, P15668954862354284535.a n = A022280 n

end A022280

/-! ## A022280.P12428715855021575375

`A022282(n)-n²`
-/

namespace A022280.P12428715855021575375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022282 n - (n ^ 2 : ℤ)

end

end A022280.P12428715855021575375

namespace A022280

/-- `A022282(n)-n²` -/
def P12428715855021575375.Spec : Prop :=
  ∀ n, P12428715855021575375.a n = A022280 n

end A022280

/-! ## A022280.P17277717181306599069

`A135453(n)-∑[n]`
-/

namespace A022280.P17277717181306599069
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135453 n - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A022280.P17277717181306599069

namespace A022280

/-- `A135453(n)-∑[n]` -/
def P17277717181306599069.Spec : Prop :=
  ∀ n, P17277717181306599069.a n = A022280 n

end A022280

/-! ## A022280.P1411686187702578529

`A022283(n)-(n²+n)`
-/

namespace A022280.P1411686187702578529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022283 n - (n ^ 2 + n : ℤ)

end

end A022280.P1411686187702578529

namespace A022280

/-- `A022283(n)-(n²+n)` -/
def P1411686187702578529.Spec : Prop :=
  ∀ n, P1411686187702578529.a n = A022280 n

end A022280

/-! ## A022280.P2874313696388843543

`A244804(n+1)-∑[n+1]`
-/

namespace A022280.P2874313696388843543
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244804 (n + 1) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A022280.P2874313696388843543

namespace A022280

/-- `A244804(n+1)-∑[n+1]` -/
def P2874313696388843543.Spec : Prop :=
  ∀ n, P2874313696388843543.a n = A022280 n

end A022280

/-! ## A022280.P16333503982591971629

`n*(12*n+1)-A000096(n)`
-/

namespace A022280.P16333503982591971629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n * (12 * n + 1) : ℤ) - A000096 n

end

end A022280.P16333503982591971629

namespace A022280

/-- `n*(12*n+1)-A000096(n)` -/
def P16333503982591971629.Spec : Prop :=
  ∀ n, P16333503982591971629.a n = A022280 n

end A022280

/-! ## A022280.P2003429934988151951

`A033581(n)+∑[11*n-6]+6`
-/

namespace A022280.P2003429934988151951
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (11 * n : ℤ) - 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033581 n + (∑ j ∈ Finset.range (n + 1), f1 j + 6)

end

end A022280.P2003429934988151951

namespace A022280

/-- `A033581(n)+∑[11*n-6]+6` -/
def P2003429934988151951.Spec : Prop :=
  ∀ n, P2003429934988151951.a n = A022280 n

end A022280

/-! ## A022280.P9867216235377176807

`abs(∑[n+1]-ceil(A158591(n)/3)-n)`
-/

namespace A022280.P9867216235377176807
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - ⌈(A158591 n : ℚ) / 3⌉ - (n : ℤ)|

end

end A022280.P9867216235377176807

namespace A022280

/-- `abs(∑[n+1]-ceil(A158591(n)/3)-n)` -/
def P9867216235377176807.Spec : Prop :=
  ∀ n, P9867216235377176807.a n = A022280 n

end A022280

/-! ## A022280.P16066657823812515874

`A016766(n)+A005476(n)`
-/

namespace A022280.P16066657823812515874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016766 n + A005476 n

end

end A022280.P16066657823812515874

namespace A022280

/-- `A016766(n)+A005476(n)` -/
def P16066657823812515874.Spec : Prop :=
  ∀ n, P16066657823812515874.a n = A022280 n

end A022280

/-! ## A022280.P11643849340576711051

`A022277(n)+A000384(n)`
-/

namespace A022280.P11643849340576711051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022277 n + A000384 n

end

end A022280.P11643849340576711051

namespace A022280

/-- `A022277(n)+A000384(n)` -/
def P11643849340576711051.Spec : Prop :=
  ∀ n, P11643849340576711051.a n = A022280 n

end A022280

/-! ## A022280.P5420706186510327941

`A022276(n)+A001105(n)`
-/

namespace A022280.P5420706186510327941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022276 n + A001105 n

end

end A022280.P5420706186510327941

namespace A022280

/-- `A022276(n)+A001105(n)` -/
def P5420706186510327941.Spec : Prop :=
  ∀ n, P5420706186510327941.a n = A022280 n

end A022280

/-! ## A022280.P17488703156222081914

`A033583(n)+A000326(n)`
-/

namespace A022280.P17488703156222081914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033583 n + A000326 n

end

end A022280.P17488703156222081914

namespace A022280

/-- `A033583(n)+A000326(n)` -/
def P17488703156222081914.Spec : Prop :=
  ∀ n, P17488703156222081914.a n = A022280 n

end A022280

/-! ## A022280.P14061299167504964333

`A033585(n)+A001106(n)`
-/

namespace A022280.P14061299167504964333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033585 n + A001106 n

end

end A022280.P14061299167504964333

namespace A022280

/-- `A033585(n)+A001106(n)` -/
def P14061299167504964333.Spec : Prop :=
  ∀ n, P14061299167504964333.a n = A022280 n

end A022280

/-! ## A022280.P972689545940448360

`A022272(n)+A016742(n)`
-/

namespace A022280.P972689545940448360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022272 n + A016742 n

end

end A022280.P972689545940448360

namespace A022280

/-- `A022272(n)+A016742(n)` -/
def P972689545940448360.Spec : Prop :=
  ∀ n, P972689545940448360.a n = A022280 n

end A022280

/-!
# A022281: a(n) = n*(23*n + 1)/2.

The programs for A022281, the canonical program `A022281.P7341575850234213743` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A022281 has offset 0).

The definition of A022281 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(23*n+1)/2` (program `A022281.P4168727921484237583`, by `A022281.P4168727921484237583.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A022281.P4168727921484237583

`n*(23*n+1)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A022281.P4168727921484237583
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n * (23 * n + 1) : ℚ) / 2

end

end A022281.P4168727921484237583

namespace A022281

/-- `n*(23*n+1)/2` -/
def P4168727921484237583.Spec : Prop :=
  ∀ n, P4168727921484237583.a n = (A022281 n : ℚ)

theorem P4168727921484237583.correct : P4168727921484237583.Spec := by
  intro n
  induction n with
  | zero => simp [A022281, A022281.P4168727921484237583.a, A022281.P7341575850234213743.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
  | succ m ih =>
    simp only [A022281, Nat.add_sub_cancel, A022281.P4168727921484237583.a, A022281.P7341575850234213743.a, SequenceMachineLib.memo_apply] at ih ⊢
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    try simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
    try push_cast at ih ⊢
    try linarith

end A022281

/-! ## A022281.P7341575850234213743

`23*n+a(n-1)-11` with `a(0)=0`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A022281

/-- `23*n+a(n-1)-11` -/
def P7341575850234213743.Spec : Prop :=
  ∀ n, P7341575850234213743.a n = A022281 n

theorem P7341575850234213743.correct : P7341575850234213743.Spec := by
  intro n
  simp only [A022281]

end A022281

/-! ## A022281.P8509240952762605387

`A000217(12*n)-A000217(11*n)`
-/

namespace A022281.P8509240952762605387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (12 * n) - A000217 (11 * n)

end

end A022281.P8509240952762605387

namespace A022281

/-- `A000217(12*n)-A000217(11*n)` -/
def P8509240952762605387.Spec : Prop :=
  ∀ n, P8509240952762605387.a n = A022281 n

end A022281

/-! ## A022281.P4125922505110527987

`∑[a(n-1)+23]` with `a(0)=0, a(1)=12`
-/

namespace A022281.P4125922505110527987
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 12] fun n f1 =>
  f1 (n - 1) + 23

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A022281.P4125922505110527987

namespace A022281

/-- `∑[a(n-1)+23]` -/
def P4125922505110527987.Spec : Prop :=
  ∀ n, (P4125922505110527987.a n : ℤ) = A022281 n

end A022281

/-! ## A022281.P9996946133048451354

`3*(2*n)²-C(n, 2)`
-/

namespace A022281.P9996946133048451354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * (2 * n) ^ 2 : ℤ) - (Nat.choose n 2 : ℤ)

end

end A022281.P9996946133048451354

namespace A022281

/-- `3*(2*n)²-C(n, 2)` -/
def P9996946133048451354.Spec : Prop :=
  ∀ n, P9996946133048451354.a n = A022281 n

end A022281

/-! ## A022281.P4257714852587785937

`A022280(n)+n`
-/

namespace A022281.P4257714852587785937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022280 n + (n : ℤ)

end

end A022281.P4257714852587785937

namespace A022281

/-- `A022280(n)+n` -/
def P4257714852587785937.Spec : Prop :=
  ∀ n, P4257714852587785937.a n = A022281 n

end A022281

/-! ## A022281.P10241414341274563995

`A022279(n)+n²`
-/

namespace A022281.P10241414341274563995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022279 n + (n ^ 2 : ℤ)

end

end A022281.P10241414341274563995

namespace A022281

/-- `A022279(n)+n²` -/
def P10241414341274563995.Spec : Prop :=
  ∀ n, P10241414341274563995.a n = A022281 n

end A022281

/-! ## A022281.P15981684296691209293

`A022283(n)-n²`
-/

namespace A022281.P15981684296691209293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022283 n - (n ^ 2 : ℤ)

end

end A022281.P15981684296691209293

namespace A022281

/-- `A022283(n)-n²` -/
def P15981684296691209293.Spec : Prop :=
  ∀ n, P15981684296691209293.a n = A022281 n

end A022281

/-! ## A022281.P11689675795764960775

`A033584(n)+∑[n]`
-/

namespace A022281.P11689675795764960775
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033584 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A022281.P11689675795764960775

namespace A022281

/-- `A033584(n)+∑[n]` -/
def P11689675795764960775.Spec : Prop :=
  ∀ n, P11689675795764960775.a n = A022281 n

end A022281

/-! ## A022281.P6911294272687819716

`A396289(n)-∑[n]`
-/

namespace A022281.P6911294272687819716
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396289 n - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A022281.P6911294272687819716

namespace A022281

/-- `A396289(n)-∑[n]` -/
def P6911294272687819716.Spec : Prop :=
  ∀ n, P6911294272687819716.a n = A022281 n

end A022281

/-! ## A022281.P16089519271915088475

`n/2*A215148(n)`
-/

namespace A022281.P16089519271915088475
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / 2 * (A215148 n : ℚ)

end

end A022281.P16089519271915088475

namespace A022281

/-- `n/2*A215148(n)` -/
def P16089519271915088475.Spec : Prop :=
  ∀ n, P16089519271915088475.a n = (A022281 n : ℚ)

theorem P16089519271915088475.correct : P16089519271915088475.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A022281, Nat.add_sub_cancel, A022281.P16089519271915088475.a, A022281.P7341575850234213743.a, A215148, A215148.P1570187051508562333.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf)
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A022281, Nat.add_sub_cancel, A022281.P16089519271915088475.a, A022281.P7341575850234213743.a, A215148, A215148.P1570187051508562333.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith | ((try field_simp); ring_nf)

end A022281

/-! ## A022281.P5231506887548659335

`A194454(n)-∑[n+1]`
-/

namespace A022281.P5231506887548659335
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194454 n - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A022281.P5231506887548659335

namespace A022281

/-- `A194454(n)-∑[n+1]` -/
def P5231506887548659335.Spec : Prop :=
  ∀ n, P5231506887548659335.a n = A022281 n

end A022281

/-! ## A022281.P18745986438222727

`A022278(n)+n²+n`
-/

namespace A022281.P18745986438222727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022278 n + (n ^ 2 + n : ℤ)

end

end A022281.P18745986438222727

namespace A022281

/-- `A022278(n)+n²+n` -/
def P18745986438222727.Spec : Prop :=
  ∀ n, P18745986438222727.a n = A022281 n

end A022281

/-! ## A022281.P16276785878233856128

`abs((2*n)²-∑[3*n]-A195024(n))`
-/

namespace A022281.P16276785878233856128
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |((2 * n) ^ 2 : ℤ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A195024 n|

end

end A022281.P16276785878233856128

namespace A022281

/-- `abs((2*n)²-∑[3*n]-A195024(n))` -/
def P16276785878233856128.Spec : Prop :=
  ∀ n, P16276785878233856128.a n = A022281 n

end A022281

/-! ## A022281.P1884687252079628867

`(12*n²+1-A152947(n+1))%(12*n²+1)`
-/

namespace A022281.P1884687252079628867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((12 * n ^ 2 + 1 : ℤ) - A152947 (n + 1)) (12 * n ^ 2 + 1 : ℤ)

end

end A022281.P1884687252079628867

namespace A022281

/-- `(12*n²+1-A152947(n+1))%(12*n²+1)` -/
def P1884687252079628867.Spec : Prop :=
  ∀ n, P1884687252079628867.a n = A022281 n

end A022281

/-! ## A022281.P16407482310981221526

`A016766(n)+A005475(n)`
-/

namespace A022281.P16407482310981221526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016766 n + A005475 n

end

end A022281.P16407482310981221526

namespace A022281

/-- `A016766(n)+A005475(n)` -/
def P16407482310981221526.Spec : Prop :=
  ∀ n, P16407482310981221526.a n = A022281 n

end A022281

/-! ## A022281.P14985461960429056679

`A022277(n)+A001105(n)`
-/

namespace A022281.P14985461960429056679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022277 n + A001105 n

end

end A022281.P14985461960429056679

namespace A022281

/-- `A022277(n)+A001105(n)` -/
def P14985461960429056679.Spec : Prop :=
  ∀ n, P14985461960429056679.a n = A022281 n

end A022281

/-! ## A022281.P14238714048040186751

`A022272(n)+A007742(n)`
-/

namespace A022281.P14238714048040186751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022272 n + A007742 n

end

end A022281.P14238714048040186751

namespace A022281

/-- `A022272(n)+A007742(n)` -/
def P14238714048040186751.Spec : Prop :=
  ∀ n, P14238714048040186751.a n = A022281 n

end A022281

/-! ## A022281.P9367346545187009204

`A022276(n)+A014105(n)`
-/

namespace A022281.P9367346545187009204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022276 n + A014105 n

end

end A022281.P9367346545187009204

namespace A022281

/-- `A022276(n)+A014105(n)` -/
def P9367346545187009204.Spec : Prop :=
  ∀ n, P9367346545187009204.a n = A022281 n

end A022281

/-! ## A022281.P18336901121558794420

`A022273(n)+A016742(n)`
-/

namespace A022281.P18336901121558794420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022273 n + A016742 n

end

end A022281.P18336901121558794420

namespace A022281

/-- `A022273(n)+A016742(n)` -/
def P18336901121558794420.Spec : Prop :=
  ∀ n, P18336901121558794420.a n = A022281 n

end A022281

/-!
# A022282: a(n) = n*(25*n - 1)/2.

The programs for A022282, the canonical program `A022282.P2071212844594503722` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A022282 has offset 0).

The definition of A022282 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(25*n-1)/2` (program `A022282.P3057263557412375344`, by `A022282.P3057263557412375344.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A022282.P3057263557412375344

`n*(25*n-1)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A022282.P3057263557412375344
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) * ((25 * n : ℤ) - 1) : ℚ) / 2

end

end A022282.P3057263557412375344

namespace A022282

/-- `n*(25*n-1)/2` -/
def P3057263557412375344.Spec : Prop :=
  ∀ n, P3057263557412375344.a n = (A022282 n : ℚ)

theorem P3057263557412375344.correct : P3057263557412375344.Spec := by
  intro n
  induction n with
  | zero => simp [A022282, A022282.P3057263557412375344.a, A022282.P2071212844594503722.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
  | succ m ih =>
    simp only [A022282, Nat.add_sub_cancel, A022282.P3057263557412375344.a, A022282.P2071212844594503722.a, SequenceMachineLib.memo_apply] at ih ⊢
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    try simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
    try push_cast at ih ⊢
    try linarith

end A022282

/-! ## A022282.P2071212844594503722

`25*n+a(n-1)-13` with `a(0)=0`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A022282

/-- `25*n+a(n-1)-13` -/
def P2071212844594503722.Spec : Prop :=
  ∀ n, P2071212844594503722.a n = A022282 n

theorem P2071212844594503722.correct : P2071212844594503722.Spec := by
  intro n
  simp only [A022282]

end A022282

/-! ## A022282.P13876941955244566535

`∑[a(n-1)+25]` with `a(0)=0, a(1)=12`
-/

namespace A022282.P13876941955244566535
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 12] fun n f1 =>
  f1 (n - 1) + 25

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A022282.P13876941955244566535

namespace A022282

/-- `∑[a(n-1)+25]` -/
def P13876941955244566535.Spec : Prop :=
  ∀ n, (P13876941955244566535.a n : ℤ) = A022282 n

end A022282

/-! ## A022282.P7818352940677815893

`C(5*n, 2)+2*n`
-/

namespace A022282.P7818352940677815893
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (5 * n) 2 + 2 * n

end

end A022282.P7818352940677815893

namespace A022282

/-- `C(5*n, 2)+2*n` -/
def P7818352940677815893.Spec : Prop :=
  ∀ n, (P7818352940677815893.a n : ℤ) = A022282 n

end A022282

/-! ## A022282.P7408047975621931594

`A022283(n)-n`
-/

namespace A022282.P7408047975621931594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022283 n - (n : ℤ)

end

end A022282.P7408047975621931594

namespace A022282

/-- `A022283(n)-n` -/
def P7408047975621931594.Spec : Prop :=
  ∀ n, P7408047975621931594.a n = A022282 n

end A022282

/-! ## A022282.P12275903983665248025

`A022280(n)+n²`
-/

namespace A022282.P12275903983665248025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022280 n + (n ^ 2 : ℤ)

end

end A022282.P12275903983665248025

namespace A022282

/-- `A022280(n)+n²` -/
def P12275903983665248025.Spec : Prop :=
  ∀ n, P12275903983665248025.a n = A022282 n

end A022282

/-! ## A022282.P6626836705803305101

`A022284(n)-n²`
-/

namespace A022282.P6626836705803305101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022284 n - (n ^ 2 : ℤ)

end

end A022282.P6626836705803305101

namespace A022282

/-- `A022284(n)-n²` -/
def P6626836705803305101.Spec : Prop :=
  ∀ n, P6626836705803305101.a n = A022282 n

end A022282

/-! ## A022282.P14971600009514602271

`A396288(n)+∑[n]`
-/

namespace A022282.P14971600009514602271
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396288 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A022282.P14971600009514602271

namespace A022282

/-- `A396288(n)+∑[n]` -/
def P14971600009514602271.Spec : Prop :=
  ∀ n, P14971600009514602271.a n = A022282 n

end A022282

/-! ## A022282.P17177935084069445688

`A152742(n)-∑[n]`
-/

namespace A022282.P17177935084069445688
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152742 n - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A022282.P17177935084069445688

namespace A022282

/-- `A152742(n)-∑[n]` -/
def P17177935084069445688.Spec : Prop :=
  ∀ n, P17177935084069445688.a n = A022282 n

end A022282

/-! ## A022282.P12623167603466219143

`A144312(n)-3*n`
-/

namespace A022282.P12623167603466219143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144312 n - (3 * n : ℤ)

end

end A022282.P12623167603466219143

namespace A022282

/-- `A144312(n)-3*n` -/
def P12623167603466219143.Spec : Prop :=
  ∀ n, P12623167603466219143.a n = A022282 n

end A022282

/-! ## A022282.P4404238318839405549

`A185918(n)+∑[n+1]`
-/

namespace A022282.P4404238318839405549
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185918 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A022282.P4404238318839405549

namespace A022282

/-- `A185918(n)+∑[n+1]` -/
def P4404238318839405549.Spec : Prop :=
  ∀ n, P4404238318839405549.a n = A022282 n

end A022282

/-! ## A022282.P6622394729301697059

`A022285(n)-(n²+n)`
-/

namespace A022282.P6622394729301697059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022285 n - (n ^ 2 + n : ℤ)

end

end A022282.P6622394729301697059

namespace A022282

/-- `A022285(n)-(n²+n)` -/
def P6622394729301697059.Spec : Prop :=
  ∀ n, P6622394729301697059.a n = A022282 n

end A022282

/-! ## A022282.P6249898774242581416

`A022279(n)+A000384(n)`
-/

namespace A022282.P6249898774242581416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022279 n + A000384 n

end

end A022282.P6249898774242581416

namespace A022282

/-- `A022279(n)+A000384(n)` -/
def P6249898774242581416.Spec : Prop :=
  ∀ n, P6249898774242581416.a n = A022282 n

end A022282

/-! ## A022282.P11366920027782002499

`A022278(n)+A001105(n)`
-/

namespace A022282.P11366920027782002499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022278 n + A001105 n

end

end A022282.P11366920027782002499

namespace A022282

/-- `A022278(n)+A001105(n)` -/
def P11366920027782002499.Spec : Prop :=
  ∀ n, P11366920027782002499.a n = A022282 n

end A022282

/-! ## A022282.P6380673493995184769

`A033584(n)+A000326(n)`
-/

namespace A022282.P6380673493995184769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033584 n + A000326 n

end

end A022282.P6380673493995184769

namespace A022282

/-- `A033584(n)+A000326(n)` -/
def P6380673493995184769.Spec : Prop :=
  ∀ n, P6380673493995184769.a n = A022282 n

end A022282

/-! ## A022282.P7534092437311848427

`A022274(n)+A016742(n)`
-/

namespace A022282.P7534092437311848427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022274 n + A016742 n

end

end A022282.P7534092437311848427

namespace A022282

/-- `A022274(n)+A016742(n)` -/
def P7534092437311848427.Spec : Prop :=
  ∀ n, P7534092437311848427.a n = A022282 n

end A022282

/-! ## A022282.P17178516218219191227

`A022264(n)+A016766(n)`
-/

namespace A022282.P17178516218219191227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022264 n + A016766 n

end

end A022282.P17178516218219191227

namespace A022282

/-- `A022264(n)+A016766(n)` -/
def P17178516218219191227.Spec : Prop :=
  ∀ n, P17178516218219191227.a n = A022282 n

end A022282

/-! ## A022282.P12933711855719623734

`A033583(n)+A005476(n)`
-/

namespace A022282.P12933711855719623734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033583 n + A005476 n

end

end A022282.P12933711855719623734

namespace A022282

/-- `A033583(n)+A005476(n)` -/
def P12933711855719623734.Spec : Prop :=
  ∀ n, P12933711855719623734.a n = A022282 n

end A022282

/-! ## A022282.P2082457584724457924

`A033428(n)+A022276(n)`
-/

namespace A022282.P2082457584724457924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033428 n + A022276 n

end

end A022282.P2082457584724457924

namespace A022282

/-- `A033428(n)+A022276(n)` -/
def P2082457584724457924.Spec : Prop :=
  ∀ n, P2082457584724457924.a n = A022282 n

end A022282

/-! ## A022282.P16783844030885489669

`A033429(n)+A022272(n)`
-/

namespace A022282.P16783844030885489669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033429 n + A022272 n

end

end A022282.P16783844030885489669

namespace A022282

/-- `A033429(n)+A022272(n)` -/
def P16783844030885489669.Spec : Prop :=
  ∀ n, P16783844030885489669.a n = A022282 n

end A022282

/-!
# A022283: a(n) = n*(25*n + 1)/2.

The programs for A022283, the canonical program `A022283.P13514460400141905996` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A022283 has offset 0).

The definition of A022283 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(25*n+1)/2` (program `A022283.P11422991688035960726`, by `A022283.P11422991688035960726.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A022283.P13407672752622067773

`n/2*(25*n+1)`
-/

namespace A022283.P13407672752622067773
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / 2 * (25 * n + 1 : ℚ)

end

end A022283.P13407672752622067773

namespace A022283

/-- `n/2*(25*n+1)` -/
def P13407672752622067773.Spec : Prop :=
  ∀ n, P13407672752622067773.a n = (A022283 n : ℚ)

theorem P13407672752622067773.correct : P13407672752622067773.Spec := by
  intro n
  induction n with
  | zero => simp [A022283, A022283.P13407672752622067773.a, A022283.P13514460400141905996.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
  | succ m ih =>
    simp only [A022283, Nat.add_sub_cancel, A022283.P13407672752622067773.a, A022283.P13514460400141905996.a, SequenceMachineLib.memo_apply] at ih ⊢
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    try simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
    try push_cast at ih ⊢
    try linarith

end A022283

/-! ## A022283.P11422991688035960726

`n*(25*n+1)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A022283.P11422991688035960726
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n * (25 * n + 1) : ℚ) / 2

end

end A022283.P11422991688035960726

namespace A022283

/-- `n*(25*n+1)/2` -/
def P11422991688035960726.Spec : Prop :=
  ∀ n, P11422991688035960726.a n = (A022283 n : ℚ)

theorem P11422991688035960726.correct : P11422991688035960726.Spec := by
  intro n
  induction n with
  | zero => simp [A022283, A022283.P11422991688035960726.a, A022283.P13514460400141905996.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
  | succ m ih =>
    simp only [A022283, Nat.add_sub_cancel, A022283.P11422991688035960726.a, A022283.P13514460400141905996.a, SequenceMachineLib.memo_apply] at ih ⊢
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    try simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
    try push_cast at ih ⊢
    try linarith

end A022283

/-! ## A022283.P13514460400141905996

`a(n-1)+25*n-12` with `a(0)=0`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A022283

/-- `a(n-1)+25*n-12` -/
def P13514460400141905996.Spec : Prop :=
  ∀ n, P13514460400141905996.a n = A022283 n

theorem P13514460400141905996.correct : P13514460400141905996.Spec := by
  intro n
  simp only [A022283]

end A022283

/-! ## A022283.P9000263920372375130

`A000217(13*n)-A000217(12*n)`
-/

namespace A022283.P9000263920372375130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (13 * n) - A000217 (12 * n)

end

end A022283.P9000263920372375130

namespace A022283

/-- `A000217(13*n)-A000217(12*n)` -/
def P9000263920372375130.Spec : Prop :=
  ∀ n, P9000263920372375130.a n = A022283 n

end A022283

/-! ## A022283.P1261397987629681093

`∑[a(n-1)+25]` with `a(0)=0, a(1)=13`
-/

namespace A022283.P1261397987629681093
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 13] fun n f1 =>
  f1 (n - 1) + 25

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A022283.P1261397987629681093

namespace A022283

/-- `∑[a(n-1)+25]` -/
def P1261397987629681093.Spec : Prop :=
  ∀ n, (P1261397987629681093.a n : ℤ) = A022283 n

end A022283

/-! ## A022283.P15867547537937153673

`C(n+1, 2)+3*(2*n)²`
-/

namespace A022283.P15867547537937153673
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 1) 2 + 3 * (2 * n) ^ 2

end

end A022283.P15867547537937153673

namespace A022283

/-- `C(n+1, 2)+3*(2*n)²` -/
def P15867547537937153673.Spec : Prop :=
  ∀ n, (P15867547537937153673.a n : ℤ) = A022283 n

end A022283

/-! ## A022283.P6446370577494146587

`abs(2*n-C(5*n+1, 2))`
-/

namespace A022283.P6446370577494146587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(2 * n : ℤ) - (Nat.choose (5 * n + 1) 2 : ℤ)|

end

end A022283.P6446370577494146587

namespace A022283

/-- `abs(2*n-C(5*n+1, 2))` -/
def P6446370577494146587.Spec : Prop :=
  ∀ n, P6446370577494146587.a n = A022283 n

end A022283

/-! ## A022283.P1904984254892574102

`(29*n²-n)/2-C(2*n, 2)`
-/

namespace A022283.P1904984254892574102
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((29 * n ^ 2 : ℤ) - (n : ℤ) : ℚ) / 2 - (Nat.choose (2 * n) 2 : ℚ)

end

end A022283.P1904984254892574102

namespace A022283

/-- `(29*n²-n)/2-C(2*n, 2)` -/
def P1904984254892574102.Spec : Prop :=
  ∀ n, P1904984254892574102.a n = (A022283 n : ℚ)

end A022283

/-! ## A022283.P3239534787838387125

`A022282(n)+n`
-/

namespace A022283.P3239534787838387125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022282 n + (n : ℤ)

end

end A022283.P3239534787838387125

namespace A022283

/-- `A022282(n)+n` -/
def P3239534787838387125.Spec : Prop :=
  ∀ n, P3239534787838387125.a n = A022283 n

end A022283

/-! ## A022283.P13529817728600122438

`A022281(n)+n²`
-/

namespace A022283.P13529817728600122438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022281 n + (n ^ 2 : ℤ)

end

end A022283.P13529817728600122438

namespace A022283

/-- `A022281(n)+n²` -/
def P13529817728600122438.Spec : Prop :=
  ∀ n, P13529817728600122438.a n = A022283 n

end A022283

/-! ## A022283.P15897727264192040736

`A022285(n)-n²`
-/

namespace A022283.P15897727264192040736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022285 n - (n ^ 2 : ℤ)

end

end A022283.P15897727264192040736

namespace A022283

/-- `A022285(n)-n²` -/
def P15897727264192040736.Spec : Prop :=
  ∀ n, P15897727264192040736.a n = A022283 n

end A022283

/-! ## A022283.P16600096117996593070

`A135453(n)+∑[n]`
-/

namespace A022283.P16600096117996593070
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135453 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A022283.P16600096117996593070

namespace A022283

/-- `A135453(n)+∑[n]` -/
def P16600096117996593070.Spec : Prop :=
  ∀ n, P16600096117996593070.a n = A022283 n

end A022283

/-! ## A022283.P14213228211828707702

`A144312(n)-2*n`
-/

namespace A022283.P14213228211828707702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144312 n - (2 * n : ℤ)

end

end A022283.P14213228211828707702

namespace A022283

/-- `A144312(n)-2*n` -/
def P14213228211828707702.Spec : Prop :=
  ∀ n, P14213228211828707702.a n = A022283 n

end A022283

/-! ## A022283.P16417170227533090389

`A022280(n)+n²+n`
-/

namespace A022283.P16417170227533090389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022280 n + (n ^ 2 + n : ℤ)

end

end A022283.P16417170227533090389

namespace A022283

/-- `A022280(n)+n²+n` -/
def P16417170227533090389.Spec : Prop :=
  ∀ n, P16417170227533090389.a n = A022283 n

end A022283

/-! ## A022283.P16458839703089330528

`A022279(n)+A001105(n)`
-/

namespace A022283.P16458839703089330528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022279 n + A001105 n

end

end A022283.P16458839703089330528

namespace A022283

/-- `A022279(n)+A001105(n)` -/
def P16458839703089330528.Spec : Prop :=
  ∀ n, P16458839703089330528.a n = A022283 n

end A022283

/-! ## A022283.P8014061570310980586

`A022274(n)+A007742(n)`
-/

namespace A022283.P8014061570310980586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022274 n + A007742 n

end

end A022283.P8014061570310980586

namespace A022283

/-- `A022274(n)+A007742(n)` -/
def P8014061570310980586.Spec : Prop :=
  ∀ n, P8014061570310980586.a n = A022283 n

end A022283

/-! ## A022283.P17684400666963250381

`A022278(n)+A014105(n)`
-/

namespace A022283.P17684400666963250381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022278 n + A014105 n

end

end A022283.P17684400666963250381

namespace A022283

/-- `A022278(n)+A014105(n)` -/
def P17684400666963250381.Spec : Prop :=
  ∀ n, P17684400666963250381.a n = A022283 n

end A022283

/-! ## A022283.P17396933799989016676

`A022275(n)+A016742(n)`
-/

namespace A022283.P17396933799989016676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022275 n + A016742 n

end

end A022283.P17396933799989016676

namespace A022283

/-- `A022275(n)+A016742(n)` -/
def P17396933799989016676.Spec : Prop :=
  ∀ n, P17396933799989016676.a n = A022283 n

end A022283

/-! ## A022283.P13407399228453612521

`A022265(n)+A016766(n)`
-/

namespace A022283.P13407399228453612521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022265 n + A016766 n

end

end A022283.P13407399228453612521

namespace A022283

/-- `A022265(n)+A016766(n)` -/
def P13407399228453612521.Spec : Prop :=
  ∀ n, P13407399228453612521.a n = A022283 n

end A022283

/-! ## A022283.P12973960718451220405

`A033584(n)+A005449(n)`
-/

namespace A022283.P12973960718451220405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033584 n + A005449 n

end

end A022283.P12973960718451220405

namespace A022283

/-- `A033584(n)+A005449(n)` -/
def P12973960718451220405.Spec : Prop :=
  ∀ n, P12973960718451220405.a n = A022283 n

end A022283

/-!
# A022284: a(n) = n*(27*n - 1)/2.

The programs for A022284, the canonical program `A022284.P5848921645264670450` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A022284 has offset 0).

The definition of A022284 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(27*n-1)/2` (program `A022284.P200623792041465354`, by `A022284.P200623792041465354.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A022284.P200623792041465354

`n*(27*n-1)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A022284.P200623792041465354
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) * ((27 * n : ℤ) - 1) : ℚ) / 2

end

end A022284.P200623792041465354

namespace A022284

/-- `n*(27*n-1)/2` -/
def P200623792041465354.Spec : Prop :=
  ∀ n, P200623792041465354.a n = (A022284 n : ℚ)

theorem P200623792041465354.correct : P200623792041465354.Spec := by
  intro n
  induction n with
  | zero => simp [A022284, A022284.P200623792041465354.a, A022284.P5848921645264670450.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
  | succ m ih =>
    simp only [A022284, Nat.add_sub_cancel, A022284.P200623792041465354.a, A022284.P5848921645264670450.a, SequenceMachineLib.memo_apply] at ih ⊢
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    try simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
    try push_cast at ih ⊢
    try linarith

end A022284

/-! ## A022284.P5848921645264670450

`a(n-1)+27*n-14` with `a(0)=0`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A022284

/-- `a(n-1)+27*n-14` -/
def P5848921645264670450.Spec : Prop :=
  ∀ n, P5848921645264670450.a n = A022284 n

theorem P5848921645264670450.correct : P5848921645264670450.Spec := by
  intro n
  simp only [A022284]

end A022284

/-! ## A022284.P4247295325349375570

`∑[a(n-1)+27]` with `a(0)=0, a(1)=13`
-/

namespace A022284.P4247295325349375570
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 13] fun n f1 =>
  f1 (n - 1) + 27

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A022284.P4247295325349375570

namespace A022284

/-- `∑[a(n-1)+27]` -/
def P4247295325349375570.Spec : Prop :=
  ∀ n, (P4247295325349375570.a n : ℤ) = A022284 n

end A022284

/-! ## A022284.P8516551529628499218

`A268351(n)+n`
-/

namespace A022284.P8516551529628499218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268351 n + (n : ℤ)

end

end A022284.P8516551529628499218

namespace A022284

/-- `A268351(n)+n` -/
def P8516551529628499218.Spec : Prop :=
  ∀ n, P8516551529628499218.a n = A022284 n

end A022284

/-! ## A022284.P12400923444928482544

`A022285(n)-n`
-/

namespace A022284.P12400923444928482544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022285 n - (n : ℤ)

end

end A022284.P12400923444928482544

namespace A022284

/-- `A022285(n)-n` -/
def P12400923444928482544.Spec : Prop :=
  ∀ n, P12400923444928482544.a n = A022284 n

end A022284

/-! ## A022284.P5842097197425889421

`A022282(n)+n²`
-/

namespace A022284.P5842097197425889421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022282 n + (n ^ 2 : ℤ)

end

end A022284.P5842097197425889421

namespace A022284

/-- `A022282(n)+n²` -/
def P5842097197425889421.Spec : Prop :=
  ∀ n, P5842097197425889421.a n = A022284 n

end A022284

/-! ## A022284.P8793875494755071147

`A022286(n)-n²`
-/

namespace A022284.P8793875494755071147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022286 n - (n ^ 2 : ℤ)

end

end A022284.P8793875494755071147

namespace A022284

/-- `A022286(n)-n²` -/
def P8793875494755071147.Spec : Prop :=
  ∀ n, P8793875494755071147.a n = A022284 n

end A022284

/-! ## A022284.P11908042700378044296

`A144555(n)-∑[n]`
-/

namespace A022284.P11908042700378044296
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144555 n - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A022284.P11908042700378044296

namespace A022284

/-- `A144555(n)-∑[n]` -/
def P11908042700378044296.Spec : Prop :=
  ∀ n, P11908042700378044296.a n = A022284 n

end A022284

/-! ## A022284.P2256878474049354576

`3*A022266(n)+n`
-/

namespace A022284.P2256878474049354576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A022266 n + (n : ℤ)

end

end A022284.P2256878474049354576

namespace A022284

/-- `3*A022266(n)+n` -/
def P2256878474049354576.Spec : Prop :=
  ∀ n, P2256878474049354576.a n = A022284 n

end A022284

/-! ## A022284.P2002042303719257907

`A152996(n)+4*n`
-/

namespace A022284.P2002042303719257907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152996 n + (4 * n : ℤ)

end

end A022284.P2002042303719257907

namespace A022284

/-- `A152996(n)+4*n` -/
def P2002042303719257907.Spec : Prop :=
  ∀ n, P2002042303719257907.a n = A022284 n

end A022284

/-! ## A022284.P4380560566018514159

`A022287(n)-(n²+n)`
-/

namespace A022284.P4380560566018514159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022287 n - (n ^ 2 + n : ℤ)

end

end A022284.P4380560566018514159

namespace A022284

/-- `A022287(n)-(n²+n)` -/
def P4380560566018514159.Spec : Prop :=
  ∀ n, P4380560566018514159.a n = A022284 n

end A022284

/-! ## A022284.P16866281966920817811

`7*n*A004277(n)-∑[n]`
-/

namespace A022284.P16866281966920817811
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (7 * n : ℤ) * A004277 n - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A022284.P16866281966920817811

namespace A022284

/-- `7*n*A004277(n)-∑[n]` -/
def P16866281966920817811.Spec : Prop :=
  ∀ n, P16866281966920817811.a n = A022284 n

end A022284

/-! ## A022284.P7678837796045942725

`A022281(n)+A000384(n)`
-/

namespace A022284.P7678837796045942725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022281 n + A000384 n

end

end A022284.P7678837796045942725

namespace A022284

/-- `A022281(n)+A000384(n)` -/
def P7678837796045942725.Spec : Prop :=
  ∀ n, P7678837796045942725.a n = A022284 n

end A022284

/-! ## A022284.P8679836613233200575

`A022280(n)+A001105(n)`
-/

namespace A022284.P8679836613233200575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022280 n + A001105 n

end

end A022284.P8679836613233200575

namespace A022284

/-- `A022280(n)+A001105(n)` -/
def P8679836613233200575.Spec : Prop :=
  ∀ n, P8679836613233200575.a n = A022284 n

end A022284

/-! ## A022284.P707645016278270182

`A022276(n)+A016742(n)`
-/

namespace A022284.P707645016278270182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022276 n + A016742 n

end

end A022284.P707645016278270182

namespace A022284

/-- `A022276(n)+A016742(n)` -/
def P707645016278270182.Spec : Prop :=
  ∀ n, P707645016278270182.a n = A022284 n

end A022284

/-! ## A022284.P16372484567574858713

`A022266(n)+A016766(n)`
-/

namespace A022284.P16372484567574858713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022266 n + A016766 n

end

end A022284.P16372484567574858713

namespace A022284

/-- `A022266(n)+A016766(n)` -/
def P16372484567574858713.Spec : Prop :=
  ∀ n, P16372484567574858713.a n = A022284 n

end A022284

/-! ## A022284.P6630976079008270273

`A033584(n)+A005476(n)`
-/

namespace A022284.P6630976079008270273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033584 n + A005476 n

end

end A022284.P6630976079008270273

namespace A022284

/-- `A033584(n)+A005476(n)` -/
def P6630976079008270273.Spec : Prop :=
  ∀ n, P6630976079008270273.a n = A022284 n

end A022284

/-! ## A022284.P4062383450500334640

`A033428(n)+A022278(n)`
-/

namespace A022284.P4062383450500334640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033428 n + A022278 n

end

end A022284.P4062383450500334640

namespace A022284

/-- `A033428(n)+A022278(n)` -/
def P4062383450500334640.Spec : Prop :=
  ∀ n, P4062383450500334640.a n = A022284 n

end A022284

/-! ## A022284.P13040794117319031920

`A033429(n)+A022274(n)`
-/

namespace A022284.P13040794117319031920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033429 n + A022274 n

end

end A022284.P13040794117319031920

namespace A022284

/-- `A033429(n)+A022274(n)` -/
def P13040794117319031920.Spec : Prop :=
  ∀ n, P13040794117319031920.a n = A022284 n

end A022284

/-! ## A022284.P18264825393660972167

`A033581(n)+A022272(n)`
-/

namespace A022284.P18264825393660972167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033581 n + A022272 n

end

end A022284.P18264825393660972167

namespace A022284

/-- `A033581(n)+A022272(n)` -/
def P18264825393660972167.Spec : Prop :=
  ∀ n, P18264825393660972167.a n = A022284 n

end A022284

/-!
# A022285: a(n) = n*(27*n + 1)/2.

The programs for A022285, the canonical program `A022285.P14339001223144028744` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A022285 has offset 0).

The definition of A022285 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(27*n+1)/2` (program `A022285.P12328792017841170149`, by `A022285.P12328792017841170149.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A022285.P12328792017841170149

`n*(27*n+1)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A022285.P12328792017841170149
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n * (27 * n + 1) : ℚ) / 2

end

end A022285.P12328792017841170149

namespace A022285

/-- `n*(27*n+1)/2` -/
def P12328792017841170149.Spec : Prop :=
  ∀ n, P12328792017841170149.a n = (A022285 n : ℚ)

theorem P12328792017841170149.correct : P12328792017841170149.Spec := by
  intro n
  induction n with
  | zero => simp [A022285, A022285.P12328792017841170149.a, A022285.P14339001223144028744.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
  | succ m ih =>
    simp only [A022285, Nat.add_sub_cancel, A022285.P12328792017841170149.a, A022285.P14339001223144028744.a, SequenceMachineLib.memo_apply] at ih ⊢
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    try simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
    try push_cast at ih ⊢
    try linarith

end A022285

/-! ## A022285.P14339001223144028744

`a(n-1)+27*n-13` with `a(0)=0`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A022285

/-- `a(n-1)+27*n-13` -/
def P14339001223144028744.Spec : Prop :=
  ∀ n, P14339001223144028744.a n = A022285 n

theorem P14339001223144028744.correct : P14339001223144028744.Spec := by
  intro n
  simp only [A022285]

end A022285

/-! ## A022285.P3824198373850231869

`A000217(14*n)-A000217(13*n)`
-/

namespace A022285.P3824198373850231869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (14 * n) - A000217 (13 * n)

end

end A022285.P3824198373850231869

namespace A022285

/-- `A000217(14*n)-A000217(13*n)` -/
def P3824198373850231869.Spec : Prop :=
  ∀ n, P3824198373850231869.a n = A022285 n

end A022285

/-! ## A022285.P7883214548190035156

`∑[a(n-1)+27]` with `a(0)=0, a(1)=14`
-/

namespace A022285.P7883214548190035156
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 14] fun n f1 =>
  f1 (n - 1) + 27

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A022285.P7883214548190035156

namespace A022285

/-- `∑[a(n-1)+27]` -/
def P7883214548190035156.Spec : Prop :=
  ∀ n, (P7883214548190035156.a n : ℤ) = A022285 n

end A022285

/-! ## A022285.P6785047615125815212

`A022284(n)+n`
-/

namespace A022285.P6785047615125815212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022284 n + (n : ℤ)

end

end A022285.P6785047615125815212

namespace A022285

/-- `A022284(n)+n` -/
def P6785047615125815212.Spec : Prop :=
  ∀ n, P6785047615125815212.a n = A022285 n

end A022285

/-! ## A022285.P12817787618710034905

`A022283(n)+n²`
-/

namespace A022285.P12817787618710034905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022283 n + (n ^ 2 : ℤ)

end

end A022285.P12817787618710034905

namespace A022285

/-- `A022283(n)+n²` -/
def P12817787618710034905.Spec : Prop :=
  ∀ n, P12817787618710034905.a n = A022285 n

end A022285

/-! ## A022285.P13884797526884688997

`A022287(n)-n²`
-/

namespace A022285.P13884797526884688997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022287 n - (n ^ 2 : ℤ)

end

end A022285.P13884797526884688997

namespace A022285

/-- `A022287(n)-n²` -/
def P13884797526884688997.Spec : Prop :=
  ∀ n, P13884797526884688997.a n = A022285 n

end A022285

/-! ## A022285.P1041562080754024073

`A152742(n)+∑[n]`
-/

namespace A022285.P1041562080754024073
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152742 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A022285.P1041562080754024073

namespace A022285

/-- `A152742(n)+∑[n]` -/
def P1041562080754024073.Spec : Prop :=
  ∀ n, P1041562080754024073.a n = A022285 n

end A022285

/-! ## A022285.P13682239461423003850

`A268351(n)+2*n`
-/

namespace A022285.P13682239461423003850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268351 n + (2 * n : ℤ)

end

end A022285.P13682239461423003850

namespace A022285

/-- `A268351(n)+2*n` -/
def P13682239461423003850.Spec : Prop :=
  ∀ n, P13682239461423003850.a n = A022285 n

end A022285

/-! ## A022285.P15804248451633021346

`3*A022267(n)-n`
-/

namespace A022285.P15804248451633021346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A022267 n - (n : ℤ)

end

end A022285.P15804248451633021346

namespace A022285

/-- `3*A022267(n)-n` -/
def P15804248451633021346.Spec : Prop :=
  ∀ n, P15804248451633021346.a n = A022285 n

end A022285

/-! ## A022285.P12957474023553284394

`A152996(n)+5*n`
-/

namespace A022285.P12957474023553284394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152996 n + (5 * n : ℤ)

end

end A022285.P12957474023553284394

namespace A022285

/-- `A152996(n)+5*n` -/
def P12957474023553284394.Spec : Prop :=
  ∀ n, P12957474023553284394.a n = A022285 n

end A022285

/-! ## A022285.P16025165864974807778

`A277990(n)/4-n`
-/

namespace A022285.P16025165864974807778
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A277990 n : ℚ) / 4 - (n : ℚ)

end

end A022285.P16025165864974807778

namespace A022285

/-- `A277990(n)/4-n` -/
def P16025165864974807778.Spec : Prop :=
  ∀ n, P16025165864974807778.a n = (A022285 n : ℚ)

theorem P16025165864974807778.correct : P16025165864974807778.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A022285, Nat.add_sub_cancel, A022285.P16025165864974807778.a, A022285.P14339001223144028744.a, A277990, A277990.P6687017974836704064.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf)
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A022285, Nat.add_sub_cancel, A022285.P16025165864974807778.a, A022285.P14339001223144028744.a, A277990, A277990.P6687017974836704064.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith | ((try field_simp); ring_nf)

end A022285

/-! ## A022285.P688516964937655046

`A022282(n)+n²+n`
-/

namespace A022285.P688516964937655046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022282 n + (n ^ 2 + n : ℤ)

end

end A022285.P688516964937655046

namespace A022285

/-- `A022282(n)+n²+n` -/
def P688516964937655046.Spec : Prop :=
  ∀ n, P688516964937655046.a n = A022285 n

end A022285

/-! ## A022285.P6646985557971135065

`A304836(n+1)/2-n`
-/

namespace A022285.P6646985557971135065
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A304836 (n + 1) : ℚ) / 2 - (n : ℚ)

end

end A022285.P6646985557971135065

namespace A022285

/-- `A304836(n+1)/2-n` -/
def P6646985557971135065.Spec : Prop :=
  ∀ n, P6646985557971135065.a n = (A022285 n : ℚ)

theorem P6646985557971135065.correct : P6646985557971135065.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A022285, Nat.add_sub_cancel, A022285.P6646985557971135065.a, A022285.P14339001223144028744.a, A304836, A304836.P466003782404073489.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf)
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A022285, Nat.add_sub_cancel, A022285.P6646985557971135065.a, A022285.P14339001223144028744.a, A304836, A304836.P466003782404073489.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith | ((try field_simp); ring_nf)

end A022285

/-! ## A022285.P2393984609011701070

`A022281(n)+A001105(n)`
-/

namespace A022285.P2393984609011701070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022281 n + A001105 n

end

end A022285.P2393984609011701070

namespace A022285

/-- `A022281(n)+A001105(n)` -/
def P2393984609011701070.Spec : Prop :=
  ∀ n, P2393984609011701070.a n = A022285 n

end A022285

/-! ## A022285.P14953705497445780402

`A022276(n)+A007742(n)`
-/

namespace A022285.P14953705497445780402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022276 n + A007742 n

end

end A022285.P14953705497445780402

namespace A022285

/-- `A022276(n)+A007742(n)` -/
def P14953705497445780402.Spec : Prop :=
  ∀ n, P14953705497445780402.a n = A022285 n

end A022285

/-! ## A022285.P11581295284654501950

`A022280(n)+A014105(n)`
-/

namespace A022285.P11581295284654501950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022280 n + A014105 n

end

end A022285.P11581295284654501950

namespace A022285

/-- `A022280(n)+A014105(n)` -/
def P11581295284654501950.Spec : Prop :=
  ∀ n, P11581295284654501950.a n = A022285 n

end A022285

/-! ## A022285.P18445335086542472458

`A022277(n)+A016742(n)`
-/

namespace A022285.P18445335086542472458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022277 n + A016742 n

end

end A022285.P18445335086542472458

namespace A022285

/-- `A022277(n)+A016742(n)` -/
def P18445335086542472458.Spec : Prop :=
  ∀ n, P18445335086542472458.a n = A022285 n

end A022285

/-! ## A022285.P9549974367191635950

`A022267(n)+A016766(n)`
-/

namespace A022285.P9549974367191635950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022267 n + A016766 n

end

end A022285.P9549974367191635950

namespace A022285

/-- `A022267(n)+A016766(n)` -/
def P9549974367191635950.Spec : Prop :=
  ∀ n, P9549974367191635950.a n = A022285 n

end A022285

/-! ## A022285.P8010809184232634106

`A033584(n)+A005475(n)`
-/

namespace A022285.P8010809184232634106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033584 n + A005475 n

end

end A022285.P8010809184232634106

namespace A022285

/-- `A033584(n)+A005475(n)` -/
def P8010809184232634106.Spec : Prop :=
  ∀ n, P8010809184232634106.a n = A022285 n

end A022285

/-!
# A022286: a(n) = n*(29*n - 1)/2.

The programs for A022286, the canonical program `A022286.P13810764852926588905` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A022286 has offset 0).

The definition of A022286 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(29*n-1)/2` (program `A022286.P1875822301550364981`, by `A022286.P1875822301550364981.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A022286.P1875822301550364981

`n*(29*n-1)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A022286.P1875822301550364981
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) * ((29 * n : ℤ) - 1) : ℚ) / 2

end

end A022286.P1875822301550364981

namespace A022286

/-- `n*(29*n-1)/2` -/
def P1875822301550364981.Spec : Prop :=
  ∀ n, P1875822301550364981.a n = (A022286 n : ℚ)

theorem P1875822301550364981.correct : P1875822301550364981.Spec := by
  intro n
  induction n with
  | zero => simp [A022286, A022286.P1875822301550364981.a, A022286.P13810764852926588905.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
  | succ m ih =>
    simp only [A022286, Nat.add_sub_cancel, A022286.P1875822301550364981.a, A022286.P13810764852926588905.a, SequenceMachineLib.memo_apply] at ih ⊢
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    try simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
    try push_cast at ih ⊢
    try linarith

end A022286

/-! ## A022286.P13810764852926588905

`29*n+a(n-1)-15` with `a(0)=0`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A022286

/-- `29*n+a(n-1)-15` -/
def P13810764852926588905.Spec : Prop :=
  ∀ n, P13810764852926588905.a n = A022286 n

theorem P13810764852926588905.correct : P13810764852926588905.Spec := by
  intro n
  simp only [A022286]

end A022286

/-! ## A022286.P5004217567825734116

`∑[a(n-1)+29]` with `a(0)=0, a(1)=14`
-/

namespace A022286.P5004217567825734116
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 14] fun n f1 =>
  f1 (n - 1) + 29

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A022286.P5004217567825734116

namespace A022286

/-- `∑[a(n-1)+29]` -/
def P5004217567825734116.Spec : Prop :=
  ∀ n, (P5004217567825734116.a n : ℤ) = A022286 n

end A022286

/-! ## A022286.P14262674769256005241

`C(7*n, 2)/7+11*n²`
-/

namespace A022286.P14262674769256005241
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose (7 * n) 2 : ℚ) / 7 + (11 * n ^ 2 : ℚ)

end

end A022286.P14262674769256005241

namespace A022286

/-- `C(7*n, 2)/7+11*n²` -/
def P14262674769256005241.Spec : Prop :=
  ∀ n, P14262674769256005241.a n = (A022286 n : ℚ)

end A022286

/-! ## A022286.P15401729137578617298

`A022287(n)-n`
-/

namespace A022286.P15401729137578617298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022287 n - (n : ℤ)

end

end A022286.P15401729137578617298

namespace A022286

/-- `A022287(n)-n` -/
def P15401729137578617298.Spec : Prop :=
  ∀ n, P15401729137578617298.a n = A022286 n

end A022286

/-! ## A022286.P13509700266900391090

`A022284(n)+n²`
-/

namespace A022286.P13509700266900391090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022284 n + (n ^ 2 : ℤ)

end

end A022286.P13509700266900391090

namespace A022286

/-- `A022284(n)+n²` -/
def P13509700266900391090.Spec : Prop :=
  ∀ n, P13509700266900391090.a n = A022286 n

end A022286

/-! ## A022286.P16992785977535510109

`A022288(n)-n²`
-/

namespace A022286.P16992785977535510109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022288 n - (n ^ 2 : ℤ)

end

end A022286.P16992785977535510109

namespace A022286

/-- `A022288(n)-n²` -/
def P16992785977535510109.Spec : Prop :=
  ∀ n, P16992785977535510109.a n = A022286 n

end A022286

/-! ## A022286.P13059683623843396953

`A195024(n)+∑[n]`
-/

namespace A022286.P13059683623843396953
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195024 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A022286.P13059683623843396953

namespace A022286

/-- `A195024(n)+∑[n]` -/
def P13059683623843396953.Spec : Prop :=
  ∀ n, P13059683623843396953.a n = A022286 n

end A022286

/-! ## A022286.P16061503524627199132

`A064761(n)-∑[n]`
-/

namespace A022286.P16061503524627199132
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064761 n - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A022286.P16061503524627199132

namespace A022286

/-- `A064761(n)-∑[n]` -/
def P16061503524627199132.Spec : Prop :=
  ∀ n, P16061503524627199132.a n = A022286 n

end A022286

/-! ## A022286.P11685772023234075398

`15*n²-A000217(n)`
-/

namespace A022286.P11685772023234075398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (15 * n ^ 2 : ℤ) - A000217 n

end

end A022286.P11685772023234075398

namespace A022286

/-- `15*n²-A000217(n)` -/
def P11685772023234075398.Spec : Prop :=
  ∀ n, P11685772023234075398.a n = A022286 n

end A022286

/-! ## A022286.P6596018612231028868

`A144314(n)-∑[7*n]`
-/

namespace A022286.P6596018612231028868
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144314 n - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A022286.P6596018612231028868

namespace A022286

/-- `A144314(n)-∑[7*n]` -/
def P6596018612231028868.Spec : Prop :=
  ∀ n, P6596018612231028868.a n = A022286 n

end A022286

/-! ## A022286.P983741733145538141

`∑[15*A004273(n)-n]`
-/

namespace A022286.P983741733145538141
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  15 * A004273 n - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A022286.P983741733145538141

namespace A022286

/-- `∑[15*A004273(n)-n]` -/
def P983741733145538141.Spec : Prop :=
  ∀ n, P983741733145538141.a n = A022286 n

end A022286

/-! ## A022286.P3011858504763225193

`A268351(n)+n²+n`
-/

namespace A022286.P3011858504763225193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268351 n + (n ^ 2 + n : ℤ)

end

end A022286.P3011858504763225193

namespace A022286

/-- `A268351(n)+n²+n` -/
def P3011858504763225193.Spec : Prop :=
  ∀ n, P3011858504763225193.a n = A022286 n

end A022286

/-! ## A022286.P14324744633057113213

`A022289(n)-(n²+n)`
-/

namespace A022286.P14324744633057113213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022289 n - (n ^ 2 + n : ℤ)

end

end A022286.P14324744633057113213

namespace A022286

/-- `A022289(n)-(n²+n)` -/
def P14324744633057113213.Spec : Prop :=
  ∀ n, P14324744633057113213.a n = A022286 n

end A022286

/-! ## A022286.P458353496900641675

`A263231(n)+n*(2*n+19)`
-/

namespace A022286.P458353496900641675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263231 n + (n * (2 * n + 19) : ℤ)

end

end A022286.P458353496900641675

namespace A022286

/-- `A263231(n)+n*(2*n+19)` -/
def P458353496900641675.Spec : Prop :=
  ∀ n, P458353496900641675.a n = A022286 n

end A022286

/-! ## A022286.P3510778120377993926

`A147296(n)+(11*C(2*n, 2)+n)/4`
-/

namespace A022286.P3510778120377993926
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A147296 n : ℚ) + (11 * Nat.choose (2 * n) 2 + n : ℚ) / 4

end

end A022286.P3510778120377993926

namespace A022286

/-- `A147296(n)+(11*C(2*n, 2)+n)/4` -/
def P3510778120377993926.Spec : Prop :=
  ∀ n, P3510778120377993926.a n = (A022286 n : ℚ)

end A022286

/-! ## A022286.P16099713585548770916

`A022283(n)+A000384(n)`
-/

namespace A022286.P16099713585548770916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022283 n + A000384 n

end

end A022286.P16099713585548770916

namespace A022286

/-- `A022283(n)+A000384(n)` -/
def P16099713585548770916.Spec : Prop :=
  ∀ n, P16099713585548770916.a n = A022286 n

end A022286

/-! ## A022286.P17537677831630289552

`A022282(n)+A001105(n)`
-/

namespace A022286.P17537677831630289552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022282 n + A001105 n

end

end A022286.P17537677831630289552

namespace A022286

/-- `A022282(n)+A001105(n)` -/
def P17537677831630289552.Spec : Prop :=
  ∀ n, P17537677831630289552.a n = A022286 n

end A022286

/-! ## A022286.P4007624340368043784

`A022278(n)+A016742(n)`
-/

namespace A022286.P4007624340368043784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022278 n + A016742 n

end

end A022286.P4007624340368043784

namespace A022286

/-- `A022278(n)+A016742(n)` -/
def P4007624340368043784.Spec : Prop :=
  ∀ n, P4007624340368043784.a n = A022286 n

end A022286

/-! ## A022286.P8497830732247801106

`A022268(n)+A016766(n)`
-/

namespace A022286.P8497830732247801106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022268 n + A016766 n

end

end A022286.P8497830732247801106

namespace A022286

/-- `A022268(n)+A016766(n)` -/
def P8497830732247801106.Spec : Prop :=
  ∀ n, P8497830732247801106.a n = A022286 n

end A022286

/-!
# A022287: a(n) = n*(29*n + 1)/2.

The programs for A022287, the canonical program `A022287.P13536557937169718289` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A022287 has offset 0).

The definition of A022287 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(29*n+1)/2` (program `A022287.P5542879897073286136`, by `A022287.P5542879897073286136.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A022287.P5542879897073286136

`n*(29*n+1)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A022287.P5542879897073286136
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n * (29 * n + 1) : ℚ) / 2

end

end A022287.P5542879897073286136

namespace A022287

/-- `n*(29*n+1)/2` -/
def P5542879897073286136.Spec : Prop :=
  ∀ n, P5542879897073286136.a n = (A022287 n : ℚ)

theorem P5542879897073286136.correct : P5542879897073286136.Spec := by
  intro n
  induction n with
  | zero => simp [A022287, A022287.P5542879897073286136.a, A022287.P13536557937169718289.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
  | succ m ih =>
    simp only [A022287, Nat.add_sub_cancel, A022287.P5542879897073286136.a, A022287.P13536557937169718289.a, SequenceMachineLib.memo_apply] at ih ⊢
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    try simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
    try push_cast at ih ⊢
    try linarith

end A022287

/-! ## A022287.P13536557937169718289

`29*n+a(n-1)-14` with `a(0)=0`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A022287

/-- `29*n+a(n-1)-14` -/
def P13536557937169718289.Spec : Prop :=
  ∀ n, P13536557937169718289.a n = A022287 n

theorem P13536557937169718289.correct : P13536557937169718289.Spec := by
  intro n
  simp only [A022287]

end A022287

/-! ## A022287.P17089174220680208024

`A000217(15*n)-A000217(14*n)`
-/

namespace A022287.P17089174220680208024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (15 * n) - A000217 (14 * n)

end

end A022287.P17089174220680208024

namespace A022287

/-- `A000217(15*n)-A000217(14*n)` -/
def P17089174220680208024.Spec : Prop :=
  ∀ n, P17089174220680208024.a n = A022287 n

end A022287

/-! ## A022287.P16419488879201381236

`∑[a(n-1)+29]` with `a(0)=0, a(1)=15`
-/

namespace A022287.P16419488879201381236
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 15] fun n f1 =>
  f1 (n - 1) + 29

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A022287.P16419488879201381236

namespace A022287

/-- `∑[a(n-1)+29]` -/
def P16419488879201381236.Spec : Prop :=
  ∀ n, (P16419488879201381236.a n : ℤ) = A022287 n

end A022287

/-! ## A022287.P4667893555231366295

`7*C(2*n, 2)+∑[n+7]-7`
-/

namespace A022287.P4667893555231366295
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 7

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (7 * Nat.choose (2 * n) 2 : ℤ) + (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 7)

end

end A022287.P4667893555231366295

namespace A022287

/-- `7*C(2*n, 2)+∑[n+7]-7` -/
def P4667893555231366295.Spec : Prop :=
  ∀ n, P4667893555231366295.a n = A022287 n

end A022287

/-! ## A022287.P18183708389010410254

`A022286(n)+n`
-/

namespace A022287.P18183708389010410254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022286 n + (n : ℤ)

end

end A022287.P18183708389010410254

namespace A022287

/-- `A022286(n)+n` -/
def P18183708389010410254.Spec : Prop :=
  ∀ n, P18183708389010410254.a n = A022287 n

end A022287

/-! ## A022287.P18158756538700620297

`A022285(n)+n²`
-/

namespace A022287.P18158756538700620297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022285 n + (n ^ 2 : ℤ)

end

end A022287.P18158756538700620297

namespace A022287

/-- `A022285(n)+n²` -/
def P18158756538700620297.Spec : Prop :=
  ∀ n, P18158756538700620297.a n = A022287 n

end A022287

/-! ## A022287.P10920927954340139005

`A022289(n)-n²`
-/

namespace A022287.P10920927954340139005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022289 n - (n ^ 2 : ℤ)

end

end A022287.P10920927954340139005

namespace A022287

/-- `A022289(n)-n²` -/
def P10920927954340139005.Spec : Prop :=
  ∀ n, P10920927954340139005.a n = A022287 n

end A022287

/-! ## A022287.P3270918337184916979

`A144555(n)+∑[n]`
-/

namespace A022287.P3270918337184916979
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144555 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A022287.P3270918337184916979

namespace A022287

/-- `A144555(n)+∑[n]` -/
def P3270918337184916979.Spec : Prop :=
  ∀ n, P3270918337184916979.a n = A022287 n

end A022287

/-! ## A022287.P7946667802832027841

`n/2*A248572(n)`
-/

namespace A022287.P7946667802832027841
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / 2 * (A248572 n : ℚ)

end

end A022287.P7946667802832027841

namespace A022287

/-- `n/2*A248572(n)` -/
def P7946667802832027841.Spec : Prop :=
  ∀ n, P7946667802832027841.a n = (A022287 n : ℚ)

theorem P7946667802832027841.correct : P7946667802832027841.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A022287, Nat.add_sub_cancel, A022287.P7946667802832027841.a, A022287.P13536557937169718289.a, A248572, A248572.P122617447327759137.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf)
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A022287, Nat.add_sub_cancel, A022287.P7946667802832027841.a, A022287.P13536557937169718289.a, A248572, A248572.P122617447327759137.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith | ((try field_simp); ring_nf)

end A022287

/-! ## A022287.P873322359452106184

`A022284(n)+n²+n`
-/

namespace A022287.P873322359452106184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022284 n + (n ^ 2 + n : ℤ)

end

end A022287.P873322359452106184

namespace A022287

/-- `A022284(n)+n²+n` -/
def P873322359452106184.Spec : Prop :=
  ∀ n, P873322359452106184.a n = A022287 n

end A022287

/-! ## A022287.P17369937003321988141

`A195321(n)-C(7*n, 2)/7`
-/

namespace A022287.P17369937003321988141
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A195321 n : ℚ) - (Nat.choose (7 * n) 2 : ℚ) / 7

end

end A022287.P17369937003321988141

namespace A022287

/-- `A195321(n)-C(7*n, 2)/7` -/
def P17369937003321988141.Spec : Prop :=
  ∀ n, P17369937003321988141.a n = (A022287 n : ℚ)

end A022287

/-! ## A022287.P11164937059160950354

`∑[2*record[7*A006257(n)]+n]`
-/

namespace A022287.P11164937059160950354
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  7 * A006257 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A022287.P11164937059160950354

namespace A022287

/-- `∑[2*record[7*A006257(n)]+n]` -/
def P11164937059160950354.Spec : Prop :=
  ∀ n, P11164937059160950354.a n = A022287 n

end A022287

/-! ## A022287.P7080208098984542116

`A022283(n)+A001105(n)`
-/

namespace A022287.P7080208098984542116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022283 n + A001105 n

end

end A022287.P7080208098984542116

namespace A022287

/-- `A022283(n)+A001105(n)` -/
def P7080208098984542116.Spec : Prop :=
  ∀ n, P7080208098984542116.a n = A022287 n

end A022287

/-! ## A022287.P8393678163614183608

`A022278(n)+A007742(n)`
-/

namespace A022287.P8393678163614183608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022278 n + A007742 n

end

end A022287.P8393678163614183608

namespace A022287

/-- `A022278(n)+A007742(n)` -/
def P8393678163614183608.Spec : Prop :=
  ∀ n, P8393678163614183608.a n = A022287 n

end A022287

/-! ## A022287.P17432676496172215893

`A022282(n)+A014105(n)`
-/

namespace A022287.P17432676496172215893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022282 n + A014105 n

end

end A022287.P17432676496172215893

namespace A022287

/-- `A022282(n)+A014105(n)` -/
def P17432676496172215893.Spec : Prop :=
  ∀ n, P17432676496172215893.a n = A022287 n

end A022287

/-! ## A022287.P10042982525896529808

`A022279(n)+A016742(n)`
-/

namespace A022287.P10042982525896529808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022279 n + A016742 n

end

end A022287.P10042982525896529808

namespace A022287

/-- `A022279(n)+A016742(n)` -/
def P10042982525896529808.Spec : Prop :=
  ∀ n, P10042982525896529808.a n = A022287 n

end A022287

/-! ## A022287.P3013916985114769770

`A022269(n)+A016766(n)`
-/

namespace A022287.P3013916985114769770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022269 n + A016766 n

end

end A022287.P3013916985114769770

namespace A022287

/-- `A022269(n)+A016766(n)` -/
def P3013916985114769770.Spec : Prop :=
  ∀ n, P3013916985114769770.a n = A022287 n

end A022287

/-! ## A022287.P16070045124366476621

`A033428(n)+A022281(n)`
-/

namespace A022287.P16070045124366476621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033428 n + A022281 n

end

end A022287.P16070045124366476621

namespace A022287

/-- `A033428(n)+A022281(n)` -/
def P16070045124366476621.Spec : Prop :=
  ∀ n, P16070045124366476621.a n = A022287 n

end A022287

/-! ## A022287.P4771201649950118756

`A033429(n)+A022277(n)`
-/

namespace A022287.P4771201649950118756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033429 n + A022277 n

end

end A022287.P4771201649950118756

namespace A022287

/-- `A033429(n)+A022277(n)` -/
def P4771201649950118756.Spec : Prop :=
  ∀ n, P4771201649950118756.a n = A022287 n

end A022287

/-!
# A022288: a(n) = n*(31*n-1)/2.

The programs for A022288, the canonical program `A022288.P13295920499512593523` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A022288 has offset 0).

The definition of A022288 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(31*n-1)/2` (program `A022288.P5282505221814007540`, by `A022288.P5282505221814007540.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A022288.P5282505221814007540

`n*(31*n-1)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A022288.P5282505221814007540
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) * ((31 * n : ℤ) - 1) : ℚ) / 2

end

end A022288.P5282505221814007540

namespace A022288

/-- `n*(31*n-1)/2` -/
def P5282505221814007540.Spec : Prop :=
  ∀ n, P5282505221814007540.a n = (A022288 n : ℚ)

theorem P5282505221814007540.correct : P5282505221814007540.Spec := by
  intro n
  induction n with
  | zero => simp [A022288, A022288.P5282505221814007540.a, A022288.P13295920499512593523.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
  | succ m ih =>
    simp only [A022288, Nat.add_sub_cancel, A022288.P5282505221814007540.a, A022288.P13295920499512593523.a, SequenceMachineLib.memo_apply] at ih ⊢
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    try simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
    try push_cast at ih ⊢
    try linarith

end A022288

/-! ## A022288.P13295920499512593523

`31*n+a(n-1)-16` with `a(0)=0`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A022288

/-- `31*n+a(n-1)-16` -/
def P13295920499512593523.Spec : Prop :=
  ∀ n, P13295920499512593523.a n = A022288 n

theorem P13295920499512593523.correct : P13295920499512593523.Spec := by
  intro n
  simp only [A022288]

end A022288

/-! ## A022288.P10261968562922607035

`∑[a(n-1)+31]` with `a(0)=0, a(1)=15`
-/

namespace A022288.P10261968562922607035
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 15] fun n f1 =>
  f1 (n - 1) + 31

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A022288.P10261968562922607035

namespace A022288

/-- `∑[a(n-1)+31]` -/
def P10261968562922607035.Spec : Prop :=
  ∀ n, (P10261968562922607035.a n : ℤ) = A022288 n

end A022288

/-! ## A022288.P14021368792420935789

`5*C(2*n, 2)+∑[11*n]-n`
-/

namespace A022288.P14021368792420935789
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (5 * Nat.choose (2 * n) 2 : ℤ) + (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (n : ℤ))

end

end A022288.P14021368792420935789

namespace A022288

/-- `5*C(2*n, 2)+∑[11*n]-n` -/
def P14021368792420935789.Spec : Prop :=
  ∀ n, P14021368792420935789.a n = A022288 n

end A022288

/-! ## A022288.P14310232572230752145

`abs(abs((2*n)%2-2*n*8*n)-∑[n])`
-/

namespace A022288.P14310232572230752145
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(|((2 * n % 2 : ℕ) : ℤ) - (2 * n * (8 * n) : ℤ)| - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ))|

end

end A022288.P14310232572230752145

namespace A022288

/-- `abs(abs((2*n)%2-2*n*8*n)-∑[n])` -/
def P14310232572230752145.Spec : Prop :=
  ∀ n, P14310232572230752145.a n = A022288 n

end A022288

/-! ## A022288.P16055015144064840316

`A022289(n)-n`
-/

namespace A022288.P16055015144064840316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022289 n - (n : ℤ)

end

end A022288.P16055015144064840316

namespace A022288

/-- `A022289(n)-n` -/
def P16055015144064840316.Spec : Prop :=
  ∀ n, P16055015144064840316.a n = A022288 n

end A022288

/-! ## A022288.P15163719587671566130

`A022286(n)+n²`
-/

namespace A022288.P15163719587671566130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022286 n + (n ^ 2 : ℤ)

end

end A022288.P15163719587671566130

namespace A022288

/-- `A022286(n)+n²` -/
def P15163719587671566130.Spec : Prop :=
  ∀ n, P15163719587671566130.a n = A022288 n

end A022288

/-! ## A022288.P2704337069951728101

`A016802(n)-∑[n]`
-/

namespace A022288.P2704337069951728101
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016802 n - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A022288.P2704337069951728101

namespace A022288

/-- `A016802(n)-∑[n]` -/
def P2704337069951728101.Spec : Prop :=
  ∀ n, P2704337069951728101.a n = A022288 n

end A022288

/-! ## A022288.P6428197503528625985

`A008586(n)²-∑[n]`
-/

namespace A022288.P6428197503528625985
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008586 n ^ 2 - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A022288.P6428197503528625985

namespace A022288

/-- `A008586(n)²-∑[n]` -/
def P6428197503528625985.Spec : Prop :=
  ∀ n, P6428197503528625985.a n = A022288 n

end A022288

/-! ## A022288.P6677720670505129341

`(4*n)²-A000217(n)`
-/

namespace A022288.P6677720670505129341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((4 * n) ^ 2 : ℤ) - A000217 n

end

end A022288.P6677720670505129341

namespace A022288

/-- `(4*n)²-A000217(n)` -/
def P6677720670505129341.Spec : Prop :=
  ∀ n, P6677720670505129341.a n = A022288 n

end A022288

/-! ## A022288.P4735493561108105811

`A143859(n+1)-∑[n+1]`
-/

namespace A022288.P4735493561108105811
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143859 (n + 1) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A022288.P4735493561108105811

namespace A022288

/-- `A143859(n+1)-∑[n+1]` -/
def P4735493561108105811.Spec : Prop :=
  ∀ n, P4735493561108105811.a n = A022288 n

end A022288

/-! ## A022288.P18012833392281355989

`8*n*A004277(n)-∑[n]`
-/

namespace A022288.P18012833392281355989
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (8 * n : ℤ) * A004277 n - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A022288.P18012833392281355989

namespace A022288

/-- `8*n*A004277(n)-∑[n]` -/
def P18012833392281355989.Spec : Prop :=
  ∀ n, P18012833392281355989.a n = A022288 n

end A022288

/-! ## A022288.P644907225413445623

`abs(∑[n]-(A008590(n)/2)²)`
-/

namespace A022288.P644907225413445623
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) - ((A008590 n : ℚ) / 2) ^ 2|

end

end A022288.P644907225413445623

namespace A022288

/-- `abs(∑[n]-(A008590(n)/2)²)` -/
def P644907225413445623.Spec : Prop :=
  ∀ n, P644907225413445623.a n = (A022288 n : ℚ)

end A022288

/-! ## A022288.P13819009682703018035

`∑[abs(record[16*A006257(n)]+1-n)-1]`
-/

namespace A022288.P13819009682703018035
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  16 * A006257 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n) + 1 - (n : ℤ)| - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A022288.P13819009682703018035

namespace A022288

/-- `∑[abs(record[16*A006257(n)]+1-n)-1]` -/
def P13819009682703018035.Spec : Prop :=
  ∀ n, P13819009682703018035.a n = A022288 n

end A022288

/-! ## A022288.P8151680049144174041

`A022285(n)+A000384(n)`
-/

namespace A022288.P8151680049144174041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022285 n + A000384 n

end

end A022288.P8151680049144174041

namespace A022288

/-- `A022285(n)+A000384(n)` -/
def P8151680049144174041.Spec : Prop :=
  ∀ n, P8151680049144174041.a n = A022288 n

end A022288

/-! ## A022288.P14298252013482243973

`A022284(n)+A001105(n)`
-/

namespace A022288.P14298252013482243973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022284 n + A001105 n

end

end A022288.P14298252013482243973

namespace A022288

/-- `A022284(n)+A001105(n)` -/
def P14298252013482243973.Spec : Prop :=
  ∀ n, P14298252013482243973.a n = A022288 n

end A022288

/-! ## A022288.P16403636756774057314

`A022280(n)+A016742(n)`
-/

namespace A022288.P16403636756774057314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022280 n + A016742 n

end

end A022288.P16403636756774057314

namespace A022288

/-- `A022280(n)+A016742(n)` -/
def P16403636756774057314.Spec : Prop :=
  ∀ n, P16403636756774057314.a n = A022288 n

end A022288

/-! ## A022288.P13511973192876935135

`A022270(n)+A016766(n)`
-/

namespace A022288.P13511973192876935135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022270 n + A016766 n

end

end A022288.P13511973192876935135

namespace A022288

/-- `A022270(n)+A016766(n)` -/
def P13511973192876935135.Spec : Prop :=
  ∀ n, P13511973192876935135.a n = A022288 n

end A022288

/-! ## A022288.P12694079640428297534

`A024966(n)+A014642(n)`
-/

namespace A022288.P12694079640428297534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024966 n + A014642 n

end

end A022288.P12694079640428297534

namespace A022288

/-- `A024966(n)+A014642(n)` -/
def P12694079640428297534.Spec : Prop :=
  ∀ n, P12694079640428297534.a n = A022288 n

end A022288

/-! ## A022288.P2058805351928291860

`A033428(n)+A022282(n)`
-/

namespace A022288.P2058805351928291860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033428 n + A022282 n

end

end A022288.P2058805351928291860

namespace A022288

/-- `A033428(n)+A022282(n)` -/
def P2058805351928291860.Spec : Prop :=
  ∀ n, P2058805351928291860.a n = A022288 n

end A022288

/-!
# A022289: a(n) = n*(31*n + 1)/2.

The programs for A022289, the canonical program `A022289.P6025374686438642448` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A022289 has offset 0).

The definition of A022289 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(31*n+1)/2` (program `A022289.P9576105718924798539`, by `A022289.P9576105718924798539.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A022289.P9576105718924798539

`n*(31*n+1)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A022289.P9576105718924798539
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n * (31 * n + 1) : ℚ) / 2

end

end A022289.P9576105718924798539

namespace A022289

/-- `n*(31*n+1)/2` -/
def P9576105718924798539.Spec : Prop :=
  ∀ n, P9576105718924798539.a n = (A022289 n : ℚ)

theorem P9576105718924798539.correct : P9576105718924798539.Spec := by
  intro n
  induction n with
  | zero => simp [A022289, A022289.P9576105718924798539.a, A022289.P6025374686438642448.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
  | succ m ih =>
    simp only [A022289, Nat.add_sub_cancel, A022289.P9576105718924798539.a, A022289.P6025374686438642448.a, SequenceMachineLib.memo_apply] at ih ⊢
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    try simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
    try push_cast at ih ⊢
    try linarith

end A022289

/-! ## A022289.P6025374686438642448

`31*n+a(n-1)-15` with `a(0)=0`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A022289

/-- `31*n+a(n-1)-15` -/
def P6025374686438642448.Spec : Prop :=
  ∀ n, P6025374686438642448.a n = A022289 n

theorem P6025374686438642448.correct : P6025374686438642448.Spec := by
  intro n
  simp only [A022289]

end A022289

/-! ## A022289.P16093374204960344993

`A000217(16*n)-A000217(15*n)`
-/

namespace A022289.P16093374204960344993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (16 * n) - A000217 (15 * n)

end

end A022289.P16093374204960344993

namespace A022289

/-- `A000217(16*n)-A000217(15*n)` -/
def P16093374204960344993.Spec : Prop :=
  ∀ n, P16093374204960344993.a n = A022289 n

end A022289

/-! ## A022289.P15304467608744854918

`(4*n)²-C(n, 2)`
-/

namespace A022289.P15304467608744854918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((4 * n) ^ 2 : ℤ) - (Nat.choose n 2 : ℤ)

end

end A022289.P15304467608744854918

namespace A022289

/-- `(4*n)²-C(n, 2)` -/
def P15304467608744854918.Spec : Prop :=
  ∀ n, P15304467608744854918.a n = A022289 n

end A022289

/-! ## A022289.P268578560187109269

`∑[a(n-1)+31]` with `a(0)=0, a(1)=16`
-/

namespace A022289.P268578560187109269
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 16] fun n f1 =>
  f1 (n - 1) + 31

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A022289.P268578560187109269

namespace A022289

/-- `∑[a(n-1)+31]` -/
def P268578560187109269.Spec : Prop :=
  ∀ n, (P268578560187109269.a n : ℤ) = A022289 n

end A022289

/-! ## A022289.P13027061990112147889

`A022288(n)+n`
-/

namespace A022289.P13027061990112147889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022288 n + (n : ℤ)

end

end A022289.P13027061990112147889

namespace A022289

/-- `A022288(n)+n` -/
def P13027061990112147889.Spec : Prop :=
  ∀ n, P13027061990112147889.a n = A022289 n

end A022289

/-! ## A022289.P8262193152777425617

`A022287(n)+n²`
-/

namespace A022289.P8262193152777425617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022287 n + (n ^ 2 : ℤ)

end

end A022289.P8262193152777425617

namespace A022289

/-- `A022287(n)+n²` -/
def P8262193152777425617.Spec : Prop :=
  ∀ n, P8262193152777425617.a n = A022289 n

end A022289

/-! ## A022289.P9200956962726273553

`A064761(n)+∑[n]`
-/

namespace A022289.P9200956962726273553
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064761 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A022289.P9200956962726273553

namespace A022289

/-- `A064761(n)+∑[n]` -/
def P9200956962726273553.Spec : Prop :=
  ∀ n, P9200956962726273553.a n = A022289 n

end A022289

/-! ## A022289.P7152739765546069303

`A204675(n)-∑[n+1]`
-/

namespace A022289.P7152739765546069303
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204675 n - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A022289.P7152739765546069303

namespace A022289

/-- `A204675(n)-∑[n+1]` -/
def P7152739765546069303.Spec : Prop :=
  ∀ n, P7152739765546069303.a n = A022289 n

end A022289

/-! ## A022289.P4741040824900449384

`∑[15*A004273(n)+n]`
-/

namespace A022289.P4741040824900449384
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  15 * A004273 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A022289.P4741040824900449384

namespace A022289

/-- `∑[15*A004273(n)+n]` -/
def P4741040824900449384.Spec : Prop :=
  ∀ n, P4741040824900449384.a n = A022289 n

end A022289

/-! ## A022289.P3269821334502210102

`A022286(n)+n²+n`
-/

namespace A022289.P3269821334502210102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022286 n + (n ^ 2 + n : ℤ)

end

end A022289.P3269821334502210102

namespace A022289

/-- `A022286(n)+n²+n` -/
def P3269821334502210102.Spec : Prop :=
  ∀ n, P3269821334502210102.a n = A022289 n

end A022289

/-! ## A022289.P5447009107284643240

`abs(∑[5*n]-A144314(n))`
-/

namespace A022289.P5447009107284643240
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A144314 n|

end

end A022289.P5447009107284643240

namespace A022289

/-- `abs(∑[5*n]-A144314(n))` -/
def P5447009107284643240.Spec : Prop :=
  ∀ n, P5447009107284643240.a n = A022289 n

end A022289

/-! ## A022289.P8065380115060224802

`(4*n)²+n+1-A000124(n)`
-/

namespace A022289.P8065380115060224802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((4 * n) ^ 2 + n + 1 : ℤ) - A000124 n

end

end A022289.P8065380115060224802

namespace A022289

/-- `(4*n)²+n+1-A000124(n)` -/
def P8065380115060224802.Spec : Prop :=
  ∀ n, P8065380115060224802.a n = A022289 n

end A022289

/-! ## A022289.P16077887415609222198

`8*n*A004277(n)+n-∑[n]`
-/

namespace A022289.P16077887415609222198
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (8 * n : ℤ) * A004277 n + (n : ℤ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A022289.P16077887415609222198

namespace A022289

/-- `8*n*A004277(n)+n-∑[n]` -/
def P16077887415609222198.Spec : Prop :=
  ∀ n, P16077887415609222198.a n = A022289 n

end A022289

/-! ## A022289.P15291264464438688486

`A022285(n)+A001105(n)`
-/

namespace A022289.P15291264464438688486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022285 n + A001105 n

end

end A022289.P15291264464438688486

namespace A022289

/-- `A022285(n)+A001105(n)` -/
def P15291264464438688486.Spec : Prop :=
  ∀ n, P15291264464438688486.a n = A022289 n

end A022289

/-! ## A022289.P452173029179586838

`A022280(n)+A007742(n)`
-/

namespace A022289.P452173029179586838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022280 n + A007742 n

end

end A022289.P452173029179586838

namespace A022289

/-- `A022280(n)+A007742(n)` -/
def P452173029179586838.Spec : Prop :=
  ∀ n, P452173029179586838.a n = A022289 n

end A022289

/-! ## A022289.P16243658819560676704

`A022284(n)+A014105(n)`
-/

namespace A022289.P16243658819560676704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022284 n + A014105 n

end

end A022289.P16243658819560676704

namespace A022289

/-- `A022284(n)+A014105(n)` -/
def P16243658819560676704.Spec : Prop :=
  ∀ n, P16243658819560676704.a n = A022289 n

end A022289

/-! ## A022289.P6237013478415214589

`A022281(n)+A016742(n)`
-/

namespace A022289.P6237013478415214589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022281 n + A016742 n

end

end A022289.P6237013478415214589

namespace A022289

/-- `A022281(n)+A016742(n)` -/
def P6237013478415214589.Spec : Prop :=
  ∀ n, P6237013478415214589.a n = A022289 n

end A022289

/-! ## A022289.P5203511040751074565

`A022271(n)+A016766(n)`
-/

namespace A022289.P5203511040751074565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022271 n + A016766 n

end

end A022289.P5203511040751074565

namespace A022289

/-- `A022271(n)+A016766(n)` -/
def P5203511040751074565.Spec : Prop :=
  ∀ n, P5203511040751074565.a n = A022289 n

end A022289

/-! ## A022289.P3882891114173313657

`A033428(n)+A022283(n)`
-/

namespace A022289.P3882891114173313657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033428 n + A022283 n

end

end A022289.P3882891114173313657

namespace A022289

/-- `A033428(n)+A022283(n)` -/
def P3882891114173313657.Spec : Prop :=
  ∀ n, P3882891114173313657.a n = A022289 n

end A022289

/-!
# A022290: Replace 2^k in binary expansion of n with Fibonacci(k+2).

The programs for A022290, the canonical program `A022290.P8838379397811908335` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A022290 has offset 0).

The definition of A022290 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A022290.P8838379397811908335

`n-∑[A000071(val(A288534(n), 2)+1)]`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A022290

/-- `n-∑[A000071(val(A288534(n), 2)+1)]` -/
def P8838379397811908335.Spec : Prop :=
  ∀ n, P8838379397811908335.a n = A022290 n

theorem P8838379397811908335.correct : P8838379397811908335.Spec := by
  intro n
  simp only [A022290]

end A022290

/-! ## A022290.P4223389715549533091

`A356874(A004526(n))+A356874(n)`
-/

namespace A022290.P4223389715549533091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356874 (A004526 n).toNat + A356874 n

end

end A022290.P4223389715549533091

namespace A022290

/-- `A356874(A004526(n))+A356874(n)` -/
def P4223389715549533091.Spec : Prop :=
  ∀ n, P4223389715549533091.a n = A022290 n

end A022290

/-! ## A022290.P7590807168493793338

`2*A345290(A063695(n))-A345290(n)`
-/

namespace A022290.P7590807168493793338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A345290 (A063695 n).toNat - A345290 n

end

end A022290.P7590807168493793338

namespace A022290

/-- `2*A345290(A063695(n))-A345290(n)` -/
def P7590807168493793338.Spec : Prop :=
  ∀ n, P7590807168493793338.a n = A022290 n

end A022290

/-! ## A022290.P1143177933661970620

`A345290(n)-2*A345290(A063694(n))`
-/

namespace A022290.P1143177933661970620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345290 n - 2 * A345290 (A063694 n).toNat

end

end A022290.P1143177933661970620

namespace A022290

/-- `A345290(n)-2*A345290(A063694(n))` -/
def P1143177933661970620.Spec : Prop :=
  ∀ n, P1143177933661970620.a n = A022290 n

end A022290

/-! ## A022290.P6083229522421913163

`A356874(2*n)`
-/

namespace A022290.P6083229522421913163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356874 (2 * n)

end

end A022290.P6083229522421913163

namespace A022290

/-- `A356874(2*n)` -/
def P6083229522421913163.Spec : Prop :=
  ∀ n, P6083229522421913163.a n = A022290 n

end A022290

/-! ## A022290.P2663335759962074408

`A356874(Δ[n²])-1`
-/

namespace A022290.P2663335759962074408
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356874 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - 1

end

end A022290.P2663335759962074408

namespace A022290

/-- `A356874(Δ[n²])-1` -/
def P2663335759962074408.Spec : Prop :=
  ∀ n, P2663335759962074408.a n = A022290 n

end A022290

/-! ## A022290.P6098613495689622209

`∑{digits}[A048794(n), A042581(#)]%A042581(n+1)`
-/

namespace A022290.P6098613495689622209
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048794 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A042581 x).sum (A042581 (n + 1))

end

end A022290.P6098613495689622209

namespace A022290

/-- `∑{digits}[A048794(n), A042581(#)]%A042581(n+1)` -/
def P6098613495689622209.Spec : Prop :=
  ∀ n, P6098613495689622209.a n = A022290 n

end A022290

/-! ## A022290.P6127886673490649535

`∑{digits}[A063013(2*n), A000045(#)]`
-/

namespace A022290.P6127886673490649535
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063013 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A000045 x).sum

end

end A022290.P6127886673490649535

namespace A022290

/-- `∑{digits}[A063013(2*n), A000045(#)]` -/
def P6127886673490649535.Spec : Prop :=
  ∀ n, P6127886673490649535.a n = A022290 n

end A022290

/-! ## A022290.P10143998880147879973

`∑{digits}[A086068(4*n+1), A000045(#)]`
-/

namespace A022290.P10143998880147879973
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086068 (4 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A000045 x).sum

end

end A022290.P10143998880147879973

namespace A022290

/-- `∑{digits}[A086068(4*n+1), A000045(#)]` -/
def P10143998880147879973.Spec : Prop :=
  ∀ n, P10143998880147879973.a n = A022290 n

end A022290

/-! ## A022290.P4937589610280810932

`∑[2-A000045(A000005(gcd(n, 4^(n+1))))]`
-/

namespace A022290.P4937589610280810932
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A000045 (A000005 (Nat.gcd n (4 ^ (n + 1)))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A022290.P4937589610280810932

namespace A022290

/-- `∑[2-A000045(A000005(gcd(n, 4^(n+1))))]` -/
def P4937589610280810932.Spec : Prop :=
  ∀ n, P4937589610280810932.a n = A022290 n

end A022290

/-!
# A022291: Expansion of 1/((1-x)*(1-5*x)*(1-6*x)*(1-9*x)).

The programs for A022291, the canonical program `A022291.P468708583788065104` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A022291 has offset 0).

The definition of A022291 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A022291.P468708583788065104

`(5*9^(n+3)-32*6^(n+3)+30*5^(n+3)-3)/480`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A022291

/-- `(5*9^(n+3)-32*6^(n+3)+30*5^(n+3)-3)/480` -/
def P468708583788065104.Spec : Prop :=
  ∀ n, P468708583788065104.a n = (A022291 n : ℚ)

end A022291

/-! ## A022291.P1045641629765098147

`∑[A019793(n)]`
-/

namespace A022291.P1045641629765098147
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019793 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A022291.P1045641629765098147

namespace A022291

/-- `∑[A019793(n)]` -/
def P1045641629765098147.Spec : Prop :=
  ∀ n, P1045641629765098147.a n = A022291 n

end A022291

/-! ## A022291.P15310109405637086221

`2*A021454(n)-A021414(n)`
-/

namespace A022291.P15310109405637086221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A021454 n - A021414 n

end

end A022291.P15310109405637086221

namespace A022291

/-- `2*A021454(n)-A021414(n)` -/
def P15310109405637086221.Spec : Prop :=
  ∀ n, P15310109405637086221.a n = A022291 n

end A022291

/-! ## A022291.P8209032511316980764

`2*A021824(n)-A021772(n)`
-/

namespace A022291.P8209032511316980764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A021824 n - A021772 n

end

end A022291.P8209032511316980764

namespace A022291

/-- `2*A021824(n)-A021772(n)` -/
def P8209032511316980764.Spec : Prop :=
  ∀ n, P8209032511316980764.a n = A022291 n

end A022291

/-! ## A022291.P12508351317425172646

`A016244(n+1)-A016234(n+1)`
-/

namespace A022291.P12508351317425172646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016244 (n + 1) - A016234 (n + 1)

end

end A022291.P12508351317425172646

namespace A022291

/-- `A016244(n+1)-A016234(n+1)` -/
def P12508351317425172646.Spec : Prop :=
  ∀ n, P12508351317425172646.a n = A022291 n

end A022291

/-! ## A022291.P15394695289660660353

`A021694(n)+A028060(n)-A028077(n)`
-/

namespace A022291.P15394695289660660353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021694 n + (A028060 n - A028077 n)

end

end A022291.P15394695289660660353

namespace A022291

/-- `A021694(n)+A028060(n)-A028077(n)` -/
def P15394695289660660353.Spec : Prop :=
  ∀ n, P15394695289660660353.a n = A022291 n

end A022291

/-!
# A022292: Exactly half of first a(n) terms of Kolakoski sequence A000002 are 1's (not known to be infinite).

The programs for A022292, the canonical program `A022292.P4350502724997210221` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A022292 has offset 0).

The definition of A022292 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 659 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A022292.P11120352618955958862

`record[(n+1)*(1-A088568(n+1)²)]`
-/

namespace A022292.P11120352618955958862
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (1 - A088568 (n + 1) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A022292.P11120352618955958862

namespace A022292

/-- `record[(n+1)*(1-A088568(n+1)²)]` -/
def P11120352618955958862.Spec : Prop :=
  ∀ n, P11120352618955958862.a n = A022292 n

end A022292

/-! ## A022292.P4350502724997210221

`eq[A071054(n), A216345(n+1)]`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A022292

/-- `eq[A071054(n), A216345(n+1)]` -/
def P4350502724997210221.Spec : Prop :=
  ∀ n, (P4350502724997210221.a n : ℤ) = A022292 n

theorem P4350502724997210221.correct : P4350502724997210221.Spec := by
  intro n
  simp only [A022292]

end A022292

/-! ## A022292.P52005132510088671

`eq[A165367(n), A216345(n+1)]`
-/

namespace A022292.P52005132510088671
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165367 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216345 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A022292.P52005132510088671

namespace A022292

/-- `eq[A165367(n), A216345(n+1)]` -/
def P52005132510088671.Spec : Prop :=
  ∀ n, (P52005132510088671.a n : ℤ) = A022292 n

end A022292

/-! ## A022292.P11063553647050405819

`eq[comp[A078649(n+1)], A074306(n)]`
-/

namespace A022292.P11063553647050405819
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078649 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074306 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A022292.P11063553647050405819

namespace A022292

/-- `eq[comp[A078649(n+1)], A074306(n)]` -/
def P11063553647050405819.Spec : Prop :=
  ∀ n, (P11063553647050405819.a n : ℤ) = A022292 n

end A022292

/-! ## A022292.P8985119743577728351

`eq[A071045(n)+1, A216345(n+1)]`
-/

namespace A022292.P8985119743577728351
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071045 n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216345 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A022292.P8985119743577728351

namespace A022292

/-- `eq[A071045(n)+1, A216345(n+1)]` -/
def P8985119743577728351.Spec : Prop :=
  ∀ n, (P8985119743577728351.a n : ℤ) = A022292 n

end A022292

/-! ## A022292.P12727299359563761450

`eq[A123684(n+1), A216345(n+1)]`
-/

namespace A022292.P12727299359563761450
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123684 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216345 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A022292.P12727299359563761450

namespace A022292

/-- `eq[A123684(n+1), A216345(n+1)]` -/
def P12727299359563761450.Spec : Prop :=
  ∀ n, (P12727299359563761450.a n : ℤ) = A022292 n

end A022292

/-! ## A022292.P8590531783855234421

`eq[A165351(n)+1, A216345(n+1)]`
-/

namespace A022292.P8590531783855234421
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165351 n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216345 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A022292.P8590531783855234421

namespace A022292

/-- `eq[A165351(n)+1, A216345(n+1)]` -/
def P8590531783855234421.Spec : Prop :=
  ∀ n, (P8590531783855234421.a n : ℤ) = A022292 n

end A022292

/-! ## A022292.P15320033047110175977

`eq[A174012(n)+1, A216345(n+1)]`
-/

namespace A022292.P15320033047110175977
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174012 n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216345 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A022292.P15320033047110175977

namespace A022292

/-- `eq[A174012(n)+1, A216345(n+1)]` -/
def P15320033047110175977.Spec : Prop :=
  ∀ n, (P15320033047110175977.a n : ℤ) = A022292 n

end A022292

/-! ## A022292.P2752656431006971712

`eq[A216345(n+1), A319556(n+1)]`
-/

namespace A022292.P2752656431006971712
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216345 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319556 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A022292.P2752656431006971712

namespace A022292

/-- `eq[A216345(n+1), A319556(n+1)]` -/
def P2752656431006971712.Spec : Prop :=
  ∀ n, (P2752656431006971712.a n : ℤ) = A022292 n

end A022292

/-! ## A022292.P5097466337783723852

`record[gcd(2*A074286(n+1), A014681(n))]`
-/

namespace A022292.P5097466337783723852
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (2 * A074286 (n + 1)) (A014681 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A022292.P5097466337783723852

namespace A022292

/-- `record[gcd(2*A074286(n+1), A014681(n))]` -/
def P5097466337783723852.Spec : Prop :=
  ∀ n, (P5097466337783723852.a n : ℤ) = A022292 n

end A022292

/-! ## A022292.P13458468671719891518

`eq[A000007(n), A088568(A028310(n))]`
-/

namespace A022292.P13458468671719891518
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088568 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A022292.P13458468671719891518

namespace A022292

/-- `eq[A000007(n), A088568(A028310(n))]` -/
def P13458468671719891518.Spec : Prop :=
  ∀ n, (P13458468671719891518.a n : ℤ) = A022292 n

end A022292

/-! ## A022292.P5659838190923438364

`eq[A074286(A028310(n)), A078898(n)]`
-/

namespace A022292.P5659838190923438364
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074286 (A028310 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078898 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A022292.P5659838190923438364

namespace A022292

/-- `eq[A074286(A028310(n)), A078898(n)]` -/
def P5659838190923438364.Spec : Prop :=
  ∀ n, (P5659838190923438364.a n : ℤ) = A022292 n

end A022292

/-! ## A022292.P8452295085431718154

`eq[A000007(n), A088568(A000007(n)+n)]`
-/

namespace A022292.P8452295085431718154
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088568 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A022292.P8452295085431718154

namespace A022292

/-- `eq[A000007(n), A088568(A000007(n)+n)]` -/
def P8452295085431718154.Spec : Prop :=
  ∀ n, (P8452295085431718154.a n : ℤ) = A022292 n

end A022292

/-! ## A022292.P12459765228136711431

`eq[A054354(n+1), A074272(A156351(n+1))]`
-/

namespace A022292.P12459765228136711431
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054354 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074272 (A156351 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A022292.P12459765228136711431

namespace A022292

/-- `eq[A054354(n+1), A074272(A156351(n+1))]` -/
def P12459765228136711431.Spec : Prop :=
  ∀ n, (P12459765228136711431.a n : ℤ) = A022292 n

end A022292

/-! ## A022292.P5796923875092069787

`eq[A168233(A000265(n+1)), A216345(n+1)]`
-/

namespace A022292.P5796923875092069787
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168233 (A000265 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216345 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A022292.P5796923875092069787

namespace A022292

/-- `eq[A168233(A000265(n+1)), A216345(n+1)]` -/
def P5796923875092069787.Spec : Prop :=
  ∀ n, (P5796923875092069787.a n : ℤ) = A022292 n

end A022292

/-! ## A022292.P6170380464666774531

`eq[A168233(A060819(n+1)), A216345(n+1)]`
-/

namespace A022292.P6170380464666774531
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168233 (A060819 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216345 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A022292.P6170380464666774531

namespace A022292

/-- `eq[A168233(A060819(n+1)), A216345(n+1)]` -/
def P6170380464666774531.Spec : Prop :=
  ∀ n, (P6170380464666774531.a n : ℤ) = A022292 n

end A022292

/-! ## A022292.P13442729409601396080

`eq[A033999(A156253(n+1)), A294448(n+1)]`
-/

namespace A022292.P13442729409601396080
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A156253 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294448 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A022292.P13442729409601396080

namespace A022292

/-- `eq[A033999(A156253(n+1)), A294448(n+1)]` -/
def P13442729409601396080.Spec : Prop :=
  ∀ n, (P13442729409601396080.a n : ℤ) = A022292 n

end A022292

/-! ## A022292.P15235474004896812230

`eq[A054354(n+1), A074272(A156253(n+2)-1)]`
-/

namespace A022292.P15235474004896812230
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054354 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074272 (A156253 (n + 2) - 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A022292.P15235474004896812230

namespace A022292

/-- `eq[A054354(n+1), A074272(A156253(n+2)-1)]` -/
def P15235474004896812230.Spec : Prop :=
  ∀ n, (P15235474004896812230.a n : ℤ) = A022292 n

end A022292

/-! ## A022292.P18120973224713775758

`eq[A340717(A216345(n+1)-(n+1)), A340717(n)]`
-/

namespace A022292.P18120973224713775758
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340717 (A216345 (n + 1) - (n + 1 : ℤ)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340717 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A022292.P18120973224713775758

namespace A022292

/-- `eq[A340717(A216345(n+1)-(n+1)), A340717(n)]` -/
def P18120973224713775758.Spec : Prop :=
  ∀ n, (P18120973224713775758.a n : ℤ) = A022292 n

end A022292

/-! ## A022292.P968091294744768031

`eq[A003963(3*n+2), A003963(A216345(n+1))]`
-/

namespace A022292.P968091294744768031
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (3 * n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (A216345 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A022292.P968091294744768031

namespace A022292

/-- `eq[A003963(3*n+2), A003963(A216345(n+1))]` -/
def P968091294744768031.Spec : Prop :=
  ∀ n, (P968091294744768031.a n : ℤ) = A022292 n

end A022292

/-!
# A022293: Sequence A022292 divided by 2.

The programs for A022293, the canonical program `A022293.P16227146819227828350` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A022293 has offset 0).

The definition of A022293 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A022293.P16227146819227828350

`A022292(n+1)/2`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A022293

/-- `A022292(n+1)/2` -/
def P16227146819227828350.Spec : Prop :=
  ∀ n, P16227146819227828350.a n = (A022293 n : ℚ)

end A022293

/-! ## A022293.P4749933901057186754

`Δ[∑[A022292(n)]/2]`
-/

namespace A022293.P4749933901057186754
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022292 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℤ) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A022293.P4749933901057186754

namespace A022293

/-- `Δ[∑[A022292(n)]/2]` -/
def P4749933901057186754.Spec : Prop :=
  ∀ n, P4749933901057186754.a n = (A022293 n : ℚ)

end A022293

/-! ## A022293.P3711039724356133063

`A014682(A022292(n+1))`
-/

namespace A022293.P3711039724356133063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A022292 (n + 1)).toNat

end

end A022293.P3711039724356133063

namespace A022293

/-- `A014682(A022292(n+1))` -/
def P3711039724356133063.Spec : Prop :=
  ∀ n, P3711039724356133063.a n = A022293 n

end A022293

/-! ## A022293.P9200207857004005243

`eq[1, A074298(n+1)]+1`
-/

namespace A022293.P9200207857004005243
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074298 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A022293.P9200207857004005243

namespace A022293

/-- `eq[1, A074298(n+1)]+1` -/
def P9200207857004005243.Spec : Prop :=
  ∀ n, (P9200207857004005243.a n : ℤ) = A022293 n

end A022293

/-! ## A022293.P14968035103192290302

`record[gcd(n+1, A156242(n+1))]`
-/

namespace A022293.P14968035103192290302
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A156242 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A022293.P14968035103192290302

namespace A022293

/-- `record[gcd(n+1, A156242(n+1))]` -/
def P14968035103192290302.Spec : Prop :=
  ∀ n, (P14968035103192290302.a n : ℤ) = A022293 n

end A022293

/-! ## A022293.P1310669546256460382

`∑[A001281(Δ[A022292(n)])]`
-/

namespace A022293.P1310669546256460382
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022292 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A022293.P1310669546256460382

namespace A022293

/-- `∑[A001281(Δ[A022292(n)])]` -/
def P1310669546256460382.Spec : Prop :=
  ∀ n, P1310669546256460382.a n = A022293 n

end A022293

/-! ## A022293.P3898624764700227713

`∑[A004525(Δ[A022292(n)])]`
-/

namespace A022293.P3898624764700227713
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022292 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A022293.P3898624764700227713

namespace A022293

/-- `∑[A004525(Δ[A022292(n)])]` -/
def P3898624764700227713.Spec : Prop :=
  ∀ n, P3898624764700227713.a n = A022293 n

end A022293

/-! ## A022293.P123486566951672516

`∑[A004526(Δ[A022292(n)])]`
-/

namespace A022293.P123486566951672516
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022292 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A022293.P123486566951672516

namespace A022293

/-- `∑[A004526(Δ[A022292(n)])]` -/
def P123486566951672516.Spec : Prop :=
  ∀ n, P123486566951672516.a n = A022293 n

end A022293

/-! ## A022293.P12864430715696429014

`lt[A074298(n+1), A074264(n+1)]+1`
-/

namespace A022293.P12864430715696429014
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074298 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074264 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A022293.P12864430715696429014

namespace A022293

/-- `lt[A074298(n+1), A074264(n+1)]+1` -/
def P12864430715696429014.Spec : Prop :=
  ∀ n, (P12864430715696429014.a n : ℤ) = A022293 n

end A022293

/-! ## A022293.P8924714835218785909

`eq[0, A088568(2*(n+1))]+1`
-/

namespace A022293.P8924714835218785909
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088568 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A022293.P8924714835218785909

namespace A022293

/-- `eq[0, A088568(2*(n+1))]+1` -/
def P8924714835218785909.Spec : Prop :=
  ∀ n, (P8924714835218785909.a n : ℤ) = A022293 n

end A022293

/-! ## A022293.P3571489402560699942

`record[gcd((n+1)², A074286(n+1))]`
-/

namespace A022293.P3571489402560699942
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((n + 1) ^ 2 : ℤ) (A074286 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A022293.P3571489402560699942

namespace A022293

/-- `record[gcd((n+1)², A074286(n+1))]` -/
def P3571489402560699942.Spec : Prop :=
  ∀ n, (P3571489402560699942.a n : ℤ) = A022293 n

end A022293

/-! ## A022293.P12667356612657699647

`record[gcd(floor((n+1)/2), A088568(n+1))]`
-/

namespace A022293.P12667356612657699647
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ⌊(n + 1 : ℚ) / 2⌋ (A088568 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A022293.P12667356612657699647

namespace A022293

/-- `record[gcd(floor((n+1)/2), A088568(n+1))]` -/
def P12667356612657699647.Spec : Prop :=
  ∀ n, (P12667356612657699647.a n : ℤ) = A022293 n

end A022293

/-! ## A022293.P8903144401390183002

`eq[0, A294448(A004277(n))]`
-/

namespace A022293.P8903144401390183002
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294448 (A004277 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A022293.P8903144401390183002

namespace A022293

/-- `eq[0, A294448(A004277(n))]` -/
def P8903144401390183002.Spec : Prop :=
  ∀ n, (P8903144401390183002.a n : ℤ) = A022293 n

end A022293

/-! ## A022293.P15662405148637499943

`A004526(A022292(n+1)+1)`
-/

namespace A022293.P15662405148637499943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A022292 (n + 1) + 1).toNat

end

end A022293.P15662405148637499943

namespace A022293

/-- `A004526(A022292(n+1)+1)` -/
def P15662405148637499943.Spec : Prop :=
  ∀ n, P15662405148637499943.a n = A022293 n

end A022293

/-! ## A022293.P5670385522455200495

`lt[A088568(A028310(2*n))², 1]`
-/

namespace A022293.P5670385522455200495
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088568 (A028310 (2 * n)).toNat ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A022293.P5670385522455200495

namespace A022293

/-- `lt[A088568(A028310(2*n))², 1]` -/
def P5670385522455200495.Spec : Prop :=
  ∀ n, (P5670385522455200495.a n : ℤ) = A022293 n

end A022293

/-! ## A022293.P7723934385917592739

`A004525(A022292(n)+Δ[A022292(n)])`
-/

namespace A022293.P7723934385917592739
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022292 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A022292 n + (f1 (n + 1) - f1 n)).toNat

end

end A022293.P7723934385917592739

namespace A022293

/-- `A004525(A022292(n)+Δ[A022292(n)])` -/
def P7723934385917592739.Spec : Prop :=
  ∀ n, P7723934385917592739.a n = A022293 n

end A022293

/-! ## A022293.P4371729061998265961

`A027656(eq[A027656(n), A074286(n+2)])`
-/

namespace A022293.P4371729061998265961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027656 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074286 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027656 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A022293.P4371729061998265961

namespace A022293

/-- `A027656(eq[A027656(n), A074286(n+2)])` -/
def P4371729061998265961.Spec : Prop :=
  ∀ n, P4371729061998265961.a n = A022293 n

end A022293

/-! ## A022293.P18388429579836370294

`A110514(eq[A074286(n+2), A110514(n)])`
-/

namespace A022293.P18388429579836370294
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074286 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110514 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110514 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A022293.P18388429579836370294

namespace A022293

/-- `A110514(eq[A074286(n+2), A110514(n)])` -/
def P18388429579836370294.Spec : Prop :=
  ∀ n, P18388429579836370294.a n = A022293 n

end A022293

/-! ## A022293.P17546423538694136555

`A131732(eq[A074286(n+2), A131732(n)])`
-/

namespace A022293.P17546423538694136555
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074286 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131732 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131732 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A022293.P17546423538694136555

namespace A022293

/-- `A131732(eq[A074286(n+2), A131732(n)])` -/
def P17546423538694136555.Spec : Prop :=
  ∀ n, P17546423538694136555.a n = A022293 n

end A022293

/-! ## A022293.P274312784018919258

`A176743(eq[A074286(n+2), A176743(n)])`
-/

namespace A022293.P274312784018919258
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074286 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176743 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176743 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A022293.P274312784018919258

namespace A022293

/-- `A176743(eq[A074286(n+2), A176743(n)])` -/
def P274312784018919258.Spec : Prop :=
  ∀ n, P274312784018919258.a n = A022293 n

end A022293

/-!
# A022294: a(n) is the least k>1 such that first n terms of Kolakoski sequence A000002 repeat beginning at k-th term.

The programs for A022294, there is no canonical definition to state claims against.
-/

/-! ## A022294.P10705471718864455039

`A214036(a(A348526(n)))` with `a(0)=4`
-/

namespace A022294.P10705471718864455039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4] fun n a =>
  A214036 (a (A348526 n).toNat).toNat

end

end A022294.P10705471718864455039

/-!
# A022297: Index of n-th 1 in A006928.

The programs for A022297, the canonical program `A022297.P13831019223360445474` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A022297 has offset 1).

The definition of A022297 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A022297.P11394328999666302262

`A327239(n)+a(n-1)` with `a(0)=1, a(1)=3`
-/

namespace A022297.P11394328999666302262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  A327239 n + a (n - 1)

end

end A022297.P11394328999666302262

namespace A022297

/-- `A327239(n)+a(n-1)` -/
def P11394328999666302262.Spec : Prop :=
  ∀ n, P11394328999666302262.a n = A022297 (n + 1)

end A022297

/-! ## A022297.P15460794759730792991

`A013947(n+1)-ceil(abs(sin(n)))`
-/

namespace A022297.P15460794759730792991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013947 (n + 1) - ⌈|Real.sin (n : ℝ)|⌉

end

end A022297.P15460794759730792991

namespace A022297

/-- `A013947(n+1)-ceil(abs(sin(n)))` -/
def P15460794759730792991.Spec : Prop :=
  ∀ n, P15460794759730792991.a n = A022297 (n + 1)

end A022297

/-! ## A022297.P13831019223360445474

`A057428(n)+A013947(n+1)`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A022297

/-- `A057428(n)+A013947(n+1)` -/
def P13831019223360445474.Spec : Prop :=
  ∀ n, P13831019223360445474.a n = A022297 (n + 1)

theorem P13831019223360445474.correct : P13831019223360445474.Spec := by
  intro n
  simp only [A022297, Nat.add_sub_cancel]

end A022297

/-! ## A022297.P6188130296255915683

`A013947(n+1)-A057427(n)`
-/

namespace A022297.P6188130296255915683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013947 (n + 1) - A057427 n

end

end A022297.P6188130296255915683

namespace A022297

/-- `A013947(n+1)-A057427(n)` -/
def P6188130296255915683.Spec : Prop :=
  ∀ n, P6188130296255915683.a n = A022297 (n + 1)

theorem P6188130296255915683.correct : P6188130296255915683.Spec := by
  intro n
  simp only [A022297, Nat.add_sub_cancel, A022297.P6188130296255915683.a, A022297.P13831019223360445474.a, A013947, A013947.P11385183315367073616.f1, A013947.P11385183315367073616.f2, A013947.P11385183315367073616.a, A057427, A057427.P3058147525557661423.a, A057428, A057428.P2999489532230392221.a, A000007, A000007.P6599383543502402472.a, A156242, A156242.P3233582996753599041.a, A156243, A156243.P395087012412145335.a, A054353, A054353.P16739713460901819012.f1, A054353.P16739713460901819012.a, A000002, A000002.P13330532946811820297.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A022297

/-! ## A022297.P2651059307303746879

`A013947(n+1)-abs(A062157(n))`
-/

namespace A022297.P2651059307303746879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013947 (n + 1) - |A062157 n|

end

end A022297.P2651059307303746879

namespace A022297

/-- `A013947(n+1)-abs(A062157(n))` -/
def P2651059307303746879.Spec : Prop :=
  ∀ n, P2651059307303746879.a n = A022297 (n + 1)

end A022297

/-! ## A022297.P4680781073298037493

`A013947(n+1)-n/A028310(n)`
-/

namespace A022297.P4680781073298037493
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A013947 (n + 1) : ℚ) - (n : ℚ) / (A028310 n : ℚ)

end

end A022297.P4680781073298037493

namespace A022297

/-- `A013947(n+1)-n/A028310(n)` -/
def P4680781073298037493.Spec : Prop :=
  ∀ n, P4680781073298037493.a n = (A022297 (n + 1) : ℚ)

end A022297

/-! ## A022297.P15000920073664022874

`A013947(n+1)-log2(A040001(2*n))`
-/

namespace A022297.P15000920073664022874
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A013947 (n + 1) : ℝ) - Real.logb 2 (A040001 (2 * n) : ℝ)

end

end A022297.P15000920073664022874

namespace A022297

/-- `A013947(n+1)-log2(A040001(2*n))` -/
def P15000920073664022874.Spec : Prop :=
  ∀ n, P15000920073664022874.a n = (A022297 (n + 1) : ℝ)

end A022297

/-! ## A022297.P2953468247628078648

`A013947(n+1)+2-A157532(n+1)`
-/

namespace A022297.P2953468247628078648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013947 (n + 1) + (2 - A157532 (n + 1))

end

end A022297.P2953468247628078648

namespace A022297

/-- `A013947(n+1)+2-A157532(n+1)` -/
def P2953468247628078648.Spec : Prop :=
  ∀ n, P2953468247628078648.a n = A022297 (n + 1)

end A022297

/-! ## A022297.P9664589800741244566

`record[(n+2)/A000002(n+3)]`
-/

namespace A022297.P9664589800741244566
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℚ) / (A000002 (n + 3) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A022297.P9664589800741244566

namespace A022297

/-- `record[(n+2)/A000002(n+3)]` -/
def P9664589800741244566.Spec : Prop :=
  ∀ n, P9664589800741244566.a n = (A022297 (n + 1) : ℚ)

end A022297

/-! ## A022297.P6153078940369457186

`eq[ceil(2*acot(n)), A000002(n+1)]`
-/

namespace A022297.P6153078940369457186
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈2 * SequenceMachineLib.acot (n : ℝ)⌉

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000002 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A022297.P6153078940369457186

namespace A022297

/-- `eq[ceil(2*acot(n)), A000002(n+1)]` -/
def P6153078940369457186.Spec : Prop :=
  ∀ n, (P6153078940369457186.a n : ℤ) = A022297 (n + 1)

end A022297

/-! ## A022297.P13662010754022264963

`A000007(n)+eq[1, A000002(n+1)]`
-/

namespace A022297.P13662010754022264963
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000002 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ)

end

end A022297.P13662010754022264963

namespace A022297

/-- `A000007(n)+eq[1, A000002(n+1)]` -/
def P13662010754022264963.Spec : Prop :=
  ∀ n, P13662010754022264963.a n = A022297 (n + 1)

end A022297

/-! ## A022297.P17615398818331336231

`eq[1, A000010(a(n-1))*A000002(n+1)]` with `a(0)=0, a(1)=1`
-/

namespace A022297.P17615398818331336231
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n f2 =>
  A000010 (f2 (n - 1)).toNat * A000002 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A022297.P17615398818331336231

namespace A022297

/-- `eq[1, A000010(a(n-1))*A000002(n+1)]` -/
def P17615398818331336231.Spec : Prop :=
  ∀ n, (P17615398818331336231.a n : ℤ) = A022297 (n + 1)

end A022297

/-! ## A022297.P5439991960510531751

`eq[A000002(n+1), A019426(A000010(n+1))]`
-/

namespace A022297.P5439991960510531751
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000002 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019426 (A000010 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A022297.P5439991960510531751

namespace A022297

/-- `eq[A000002(n+1), A019426(A000010(n+1))]` -/
def P5439991960510531751.Spec : Prop :=
  ∀ n, (P5439991960510531751.a n : ℤ) = A022297 (n + 1)

end A022297

/-! ## A022297.P4136152661621167551

`eq[1, A006928(n+1)]+1`
-/

namespace A022297.P4136152661621167551
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006928 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A022297.P4136152661621167551

namespace A022297

/-- `eq[1, A006928(n+1)]+1` -/
def P4136152661621167551.Spec : Prop :=
  ∀ n, (P4136152661621167551.a n : ℤ) = A022297 (n + 1)

end A022297

/-! ## A022297.P10392560414119846574

`lt[1, A049710(n+1)]+1`
-/

namespace A022297.P10392560414119846574
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049710 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A022297.P10392560414119846574

namespace A022297

/-- `lt[1, A049710(n+1)]+1` -/
def P10392560414119846574.Spec : Prop :=
  ∀ n, (P10392560414119846574.a n : ℤ) = A022297 (n + 1)

end A022297

/-! ## A022297.P12073785057591982375

`record[(n+2)/A078880(n+2)]`
-/

namespace A022297.P12073785057591982375
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℚ) / (A078880 (n + 2) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A022297.P12073785057591982375

namespace A022297

/-- `record[(n+2)/A078880(n+2)]` -/
def P12073785057591982375.Spec : Prop :=
  ∀ n, P12073785057591982375.a n = (A022297 (n + 1) : ℚ)

end A022297

/-! ## A022297.P5778476972933665126

`A028310(A013947(n+1)-1)`
-/

namespace A022297.P5778476972933665126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A013947 (n + 1) - 1).toNat

end

end A022297.P5778476972933665126

namespace A022297

/-- `A028310(A013947(n+1)-1)` -/
def P5778476972933665126.Spec : Prop :=
  ∀ n, P5778476972933665126.a n = A022297 (n + 1)

end A022297

/-! ## A022297.P15563622922783997006

`A028310(eq[1, A000002(n+1)])`
-/

namespace A022297.P15563622922783997006
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000002 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A022297.P15563622922783997006

namespace A022297

/-- `A028310(eq[1, A000002(n+1)])` -/
def P15563622922783997006.Spec : Prop :=
  ∀ n, P15563622922783997006.a n = A022297 (n + 1)

end A022297

/-!
# A022298: Exactly half of first n terms of A006928 are 1's (not known to be infinite).

The programs for A022298, there is no canonical definition to state claims against.
-/

/-! ## A022298.P5078640606643561231

`2*A022299(n)`
-/

namespace A022298.P5078640606643561231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A022299 n

end

end A022298.P5078640606643561231

/-! ## A022298.P13435532429363967549

`A004277(A022299(n))`
-/

namespace A022298.P13435532429363967549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A022299 n).toNat

end

end A022298.P13435532429363967549

/-! ## A022298.P14007876549317765087

`A004275(A022299(n)+1)`
-/

namespace A022298.P14007876549317765087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (A022299 n + 1).toNat

end

end A022298.P14007876549317765087

/-! ## A022298.P15037040929545000880

`A005843(A022299(n)+1)-2`
-/

namespace A022298.P15037040929545000880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A022299 n + 1).toNat - 2

end

end A022298.P15037040929545000880

/-! ## A022298.P18331999751632542087

`2*eq[A141809(3*n+2), A141809(A156243(n+1))]`
-/

namespace A022298.P18331999751632542087
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141809 (3 * n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141809 (A156243 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A022298.P18331999751632542087

/-! ## A022298.P1989118238085936516

`eq[1, A294448(n+1)]`
-/

namespace A022298.P1989118238085936516
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294448 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A022298.P1989118238085936516

/-! ## A022298.P689052780566386620

`eq[-1, A088568(n+1)]`
-/

namespace A022298.P689052780566386620
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088568 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A022298.P689052780566386620

/-! ## A022298.P13456442942384335448

`eq[2, n/A156077(n+1)]`
-/

namespace A022298.P13456442942384335448
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (A156077 (n + 1) : ℚ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) = f2 j) n

end

end A022298.P13456442942384335448

/-! ## A022298.P13756417899348410200

`eq[1, A074286(n+1)-n/2]`
-/

namespace A022298.P13756417899348410200
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A074286 (n + 1) : ℚ) - (n : ℚ) / 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) = f2 j) n

end

end A022298.P13756417899348410200

/-! ## A022298.P11880893260129180966

`eq[1, -∑[and(2, -(A000002(n+1)+1))-1]]`
-/

namespace A022298.P11880893260129180966
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 2 (-(A000002 (n + 1) + 1)) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(∑ j ∈ Finset.range (n + 1), f3 j)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A022298.P11880893260129180966

/-! ## A022298.P2440448626373865450

`eq[A027656(n), A074286(n+1)]`
-/

namespace A022298.P2440448626373865450
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027656 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074286 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A022298.P2440448626373865450

/-! ## A022298.P2312483080426909219

`eq[A001281(n), A156077(n+1)]`
-/

namespace A022298.P2312483080426909219
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156077 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A022298.P2312483080426909219

/-! ## A022298.P17210691651350377786

`eq[A006370(n), A156077(n+1)]`
-/

namespace A022298.P17210691651350377786
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006370 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156077 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A022298.P17210691651350377786

/-! ## A022298.P6529659348128501778

`eq[A014682(n), A156077(n+1)]`
-/

namespace A022298.P6529659348128501778
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156077 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A022298.P6529659348128501778

/-! ## A022298.P16638880826715237856

`eq[A025480(n), A156077(n+1)]`
-/

namespace A022298.P16638880826715237856
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156077 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A022298.P16638880826715237856

/-! ## A022298.P12978330793705749645

`eq[A074286(n+1), A110514(n)]`
-/

namespace A022298.P12978330793705749645
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074286 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110514 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A022298.P12978330793705749645

/-! ## A022298.P13868273482930023208

`eq[A074286(n+1), A131732(n)]`
-/

namespace A022298.P13868273482930023208
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074286 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131732 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A022298.P13868273482930023208

/-! ## A022298.P15082874158583407295

`eq[A064680(n), A156077(n+1)]`
-/

namespace A022298.P15082874158583407295
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064680 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156077 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A022298.P15082874158583407295

/-! ## A022298.P11394737710332616850

`eq[A082010(n), A156077(n+1)]`
-/

namespace A022298.P11394737710332616850
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082010 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156077 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A022298.P11394737710332616850

/-! ## A022298.P7276411146106393201

`eq[A074286(n+1), A176743(n)]`
-/

namespace A022298.P7276411146106393201
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074286 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176743 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A022298.P7276411146106393201

/-!
# A022299: Sequence A022298 divided by 2.

The programs for A022299, there is no canonical definition to state claims against.
-/

/-! ## A022299.P18093560494806666197

`A022298(n)/2`
-/

namespace A022299.P18093560494806666197
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A022298 n : ℚ) / 2

end

end A022299.P18093560494806666197

/-! ## A022299.P1708183720036045228

`A014682(A022298(n))`
-/

namespace A022299.P1708183720036045228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A022298 n).toNat

end

end A022299.P1708183720036045228

/-! ## A022299.P6067256523934666995

`eq[A141809(3*n+2), A141809(A156243(n+1))]`
-/

namespace A022299.P6067256523934666995
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141809 (3 * n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141809 (A156243 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A022299.P6067256523934666995

/-! ## A022299.P5945633318826927876

`eq[1, A294448(Δ[n²])]`
-/

namespace A022299.P5945633318826927876
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294448 ((f3 (n + 1) : ℤ) - (f3 n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A022299.P5945633318826927876

/-! ## A022299.P4855762054662240757

`eq[1, A294448(n+1)]/2`
-/

namespace A022299.P4855762054662240757
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294448 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℚ) / 2

end

end A022299.P4855762054662240757

/-! ## A022299.P3054876543286267562

`eq[1, -A088568(2*n+1)]`
-/

namespace A022299.P3054876543286267562
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A088568 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A022299.P3054876543286267562

/-! ## A022299.P7532124987856008466

`eq[2, A294448(2*n+1)+1]`
-/

namespace A022299.P7532124987856008466
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294448 (2 * n + 1) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A022299.P7532124987856008466

/-! ## A022299.P848437571632271931

`eq[1, A074286(2*n+1)-n]`
-/

namespace A022299.P848437571632271931
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074286 (2 * n + 1) - (n : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A022299.P848437571632271931

/-! ## A022299.P10757428721935083589

`eq[2, A216345(2*(n+1))-(3*n+1)]`
-/

namespace A022299.P10757428721935083589
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216345 (2 * (n + 1)) - (3 * n + 1 : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A022299.P10757428721935083589

/-! ## A022299.P1886304888382643919

`eq[A057428(n), A088568(2*n+1)]`
-/

namespace A022299.P1886304888382643919
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088568 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A022299.P1886304888382643919

/-! ## A022299.P18219537008495939438

`eq[A027656(n), A074286(n+1)]/2`
-/

namespace A022299.P18219537008495939438
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027656 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074286 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j = f2 j) n : ℚ) / 2

end

end A022299.P18219537008495939438

/-! ## A022299.P7556385939862430091

`eq[A057428(n), A088568(n+1)]/2`
-/

namespace A022299.P7556385939862430091
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088568 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j = f2 j) n : ℚ) / 2

end

end A022299.P7556385939862430091

/-! ## A022299.P15159095967770409996

`eq[A062157(n), A088568(n+1)]/2`
-/

namespace A022299.P15159095967770409996
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062157 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088568 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j = f2 j) n : ℚ) / 2

end

end A022299.P15159095967770409996

/-! ## A022299.P2139618705433277647

`eq[A001281(n), A156077(n+1)]/2`
-/

namespace A022299.P2139618705433277647
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156077 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j = f2 j) n : ℚ) / 2

end

end A022299.P2139618705433277647

/-! ## A022299.P14795362841534009155

`eq[A006370(n), A156077(n+1)]/2`
-/

namespace A022299.P14795362841534009155
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006370 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156077 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j = f2 j) n : ℚ) / 2

end

end A022299.P14795362841534009155

/-! ## A022299.P3976794556598425671

`eq[A014682(n), A156077(n+1)]/2`
-/

namespace A022299.P3976794556598425671
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156077 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j = f2 j) n : ℚ) / 2

end

end A022299.P3976794556598425671

/-! ## A022299.P3617799620842932176

`eq[A025480(n), A156077(n+1)]/2`
-/

namespace A022299.P3617799620842932176
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156077 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j = f2 j) n : ℚ) / 2

end

end A022299.P3617799620842932176

/-! ## A022299.P2927621472079006091

`eq[A074286(n+1), A110514(n)]/2`
-/

namespace A022299.P2927621472079006091
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074286 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110514 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j = f2 j) n : ℚ) / 2

end

end A022299.P2927621472079006091

/-! ## A022299.P13472010649788413352

`eq[A074286(n+1), A131732(n)]/2`
-/

namespace A022299.P13472010649788413352
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074286 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131732 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j = f2 j) n : ℚ) / 2

end

end A022299.P13472010649788413352

/-! ## A022299.P13430835745592935434

`eq[A064680(n), A156077(n+1)]/2`
-/

namespace A022299.P13430835745592935434
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064680 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156077 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j = f2 j) n : ℚ) / 2

end

end A022299.P13430835745592935434

