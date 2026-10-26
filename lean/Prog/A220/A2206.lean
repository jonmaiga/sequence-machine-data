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
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C035
import Seq.B000.C038
import Seq.B000.C039
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
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C001
import Seq.B006.C000
import Seq.B007.C000
import Seq.B008.C000
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

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A220600: Number of ways to reciprocally link elements of an nX6 array either to themselves or to exactly two horizontal, vertical and antidiagonal neighbors, without 3-loops.

The programs for A220600, there is no canonical definition to state claims against.
-/

/-! ## A220600.P6185930089595476298

`A220602(A374007(n+1))`
-/

namespace A220600.P6185930089595476298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220602 (A374007 (n + 1)).toNat

end

end A220600.P6185930089595476298

/-! ## A220600.P14317807190542118885

`A220602(A167499(n+5)-(n+5))`
-/

namespace A220600.P14317807190542118885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220602 (A167499 (n + 5) - (n + 5 : ℤ)).toNat

end

end A220600.P14317807190542118885

/-! ## A220600.P17222280758496211188

`A220602(A052905(n+4)-1-Δ[n²])`
-/

namespace A220600.P17222280758496211188
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220602 (A052905 (n + 4) - 1 - ((f1 (n + 1) : ℤ) - (f1 n : ℤ))).toNat

end

end A220600.P17222280758496211188

/-! ## A220600.P15958691073499108034

`A220602(eq[3, A219347(n)])`
-/

namespace A220600.P15958691073499108034
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220602 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A220600.P15958691073499108034

/-! ## A220600.P10794911187801037838

`A220602(eq[5, A193592(n)])`
-/

namespace A220600.P10794911187801037838
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220602 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A220600.P10794911187801037838

/-!
# A220601: Number of ways to reciprocally link elements of an nX7 array either to themselves or to exactly two horizontal, vertical and antidiagonal neighbors, without 3-loops.

The programs for A220601, there is no canonical definition to state claims against.
-/

/-! ## A220601.P7097108732303174574

`A220602(A374008(n+1))`
-/

namespace A220601.P7097108732303174574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220602 (A374008 (n + 1)).toNat

end

end A220601.P7097108732303174574

/-! ## A220601.P12530367586456656741

`A220602(A167499(n+5)+2)`
-/

namespace A220601.P12530367586456656741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220602 (A167499 (n + 5) + 2).toNat

end

end A220601.P12530367586456656741

/-! ## A220601.P3480499232947323531

`A220602(A000124(n+6)+6)`
-/

namespace A220601.P3480499232947323531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220602 (A000124 (n + 6) + 6).toNat

end

end A220601.P3480499232947323531

/-! ## A220601.P15833139120693450945

`A220602(eq[4, A219347(n)])`
-/

namespace A220601.P15833139120693450945
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220602 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A220601.P15833139120693450945

/-! ## A220601.P11420663411072913395

`A220602(eq[6, A193592(n)])`
-/

namespace A220601.P11420663411072913395
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220602 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A220601.P11420663411072913395

/-!
# A220602: T(n,k)=Number of ways to reciprocally link elements of an nXk array either to themselves or to exactly two horizontal, vertical and antidiagonal neighbors, without 3-loops.

The programs for A220602, there is no canonical definition to state claims against.
-/

/-! ## A220602.P7278123101960421910

`A076437(A137847(A154986(n)))-1`
-/

namespace A220602.P7278123101960421910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076437 (A137847 (A154986 n).toNat).toNat - 1

end

end A220602.P7278123101960421910

/-! ## A220602.P17453897929378297946

`A014085(A141686(n+1))-A001227(A118190(n))`
-/

namespace A220602.P17453897929378297946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014085 (A141686 (n + 1)).toNat - A001227 (A118190 n).toNat

end

end A220602.P17453897929378297946

/-! ## A220602.P1114039633994808763

`A008621(A054712(n+1)^A299334(n+1))`
-/

namespace A220602.P1114039633994808763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 (SequenceMachineLib.roundAway ((A054712 (n + 1) : ℚ) ^ (A299334 (n + 1) : ℤ))).toNat

end

end A220602.P1114039633994808763

/-!
# A220603: First inverse function (numbers of rows) for pairing function A081344.

The programs for A220603, there is no canonical definition to state claims against.
-/

/-! ## A220603.P16364258734959119986

`A319290(n)+1`
-/

namespace A220603.P16364258734959119986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319290 n + 1

end

end A220603.P16364258734959119986

/-! ## A220603.P4751066326711029194

`A329116(n)+A220604(n+1)`
-/

namespace A220603.P4751066326711029194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329116 n + A220604 (n + 1)

end

end A220603.P4751066326711029194

/-! ## A220603.P17006380673053991511

`A319289(n)+A329116(n)+1`
-/

namespace A220603.P17006380673053991511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319289 n + (A329116 n + 1)

end

end A220603.P17006380673053991511

/-! ## A220603.P8346057429453029600

`A209302(n+1)-A319289(n)`
-/

namespace A220603.P8346057429453029600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209302 (n + 1) - A319289 n

end

end A220603.P8346057429453029600

/-! ## A220603.P10648628008205417786

`A209302(n+1)+1-A220604(n+1)`
-/

namespace A220603.P10648628008205417786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209302 (n + 1) + (1 - A220604 (n + 1))

end

end A220603.P10648628008205417786

/-! ## A220603.P1346696053248611365

`A064788(n+1)+A194195(n+1)-A194280(n+1)`
-/

namespace A220603.P1346696053248611365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064788 (n + 1) + (A194195 (n + 1) - A194280 (n + 1))

end

end A220603.P1346696053248611365

/-! ## A220603.P17697420723036129052

`A194195(n+1)+A194258(n+1)-A220604(n+1)`
-/

namespace A220603.P17697420723036129052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194195 (n + 1) + (A194258 (n + 1) - A220604 (n + 1))

end

end A220603.P17697420723036129052

/-! ## A220603.P1317126206659077278

`A220604(A020703(n+1))`
-/

namespace A220603.P1317126206659077278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220604 (A020703 (n + 1)).toNat

end

end A220603.P1317126206659077278

/-! ## A220603.P6415022055681625535

`A004736(A194280(n+1))`
-/

namespace A220603.P6415022055681625535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (A194280 (n + 1)).toNat

end

end A220603.P6415022055681625535

/-! ## A220603.P9360795075859416195

`A220073(A214929(n+1))`
-/

namespace A220603.P9360795075859416195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220073 (A214929 (n + 1)).toNat

end

end A220603.P9360795075859416195

/-! ## A220603.P13847157850618810180

`A194195(A081344(A064788(n+1)))`
-/

namespace A220603.P13847157850618810180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194195 (A081344 (A064788 (n + 1)).toNat).toNat

end

end A220603.P13847157850618810180

/-! ## A220603.P15488237064784947039

`A209302(n+1)-A319514(2*n)`
-/

namespace A220603.P15488237064784947039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209302 (n + 1) - A319514 (2 * n)

end

end A220603.P15488237064784947039

/-! ## A220603.P8106350675135735655

`A319514(Δ[n²])+1`
-/

namespace A220603.P8106350675135735655
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319514 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + 1

end

end A220603.P8106350675135735655

/-! ## A220603.P12936227378227753688

`A208234(A064788(n+1))`
-/

namespace A220603.P12936227378227753688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208234 (A064788 (n + 1)).toNat

end

end A220603.P12936227378227753688

/-! ## A220603.P10463976986578994249

`A208233(A064790(n+1))`
-/

namespace A220603.P10463976986578994249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208233 (A064790 (n + 1)).toNat

end

end A220603.P10463976986578994249

/-! ## A220603.P5460279718452100442

`A213194(A211377(A211377(A216253(n+1))))`
-/

namespace A220603.P5460279718452100442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213194 (A211377 (A211377 (A216253 (n + 1)).toNat).toNat).toNat

end

end A220603.P5460279718452100442

/-! ## A220603.P1598896197913695485

`A208234(A188568(A194280(A056011(A056011(n+1)))))`
-/

namespace A220603.P1598896197913695485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208234 (A188568 (A194280 (A056011 (A056011 (n + 1)).toNat).toNat).toNat).toNat

end

end A220603.P1598896197913695485

/-! ## A220603.P2677823163555730738

`A208234(A188568(A194280(A056023(A056023(n+1)))))`
-/

namespace A220603.P2677823163555730738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208234 (A188568 (A194280 (A056023 (A056023 (n + 1)).toNat).toNat).toNat).toNat

end

end A220603.P2677823163555730738

/-! ## A220603.P2089072014638664381

`A208234(A188568(A194280(A194280(A081344(n+1)))))`
-/

namespace A220603.P2089072014638664381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208234 (A188568 (A194280 (A194280 (A081344 (n + 1)).toNat).toNat).toNat).toNat

end

end A220603.P2089072014638664381

/-! ## A220603.P13993938640518990076

`A208234(A188568(A194280(A188568(A188568(n+1)))))`
-/

namespace A220603.P13993938640518990076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208234 (A188568 (A194280 (A188568 (A188568 (n + 1)).toNat).toNat).toNat).toNat

end

end A220603.P13993938640518990076

/-!
# A220604: Second inverse function (numbers of columns) for pairing function A081344.

The programs for A220604, there is no canonical definition to state claims against.
-/

/-! ## A220604.P17459689326851293906

`A319289(n)+1`
-/

namespace A220604.P17459689326851293906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319289 n + 1

end

end A220604.P17459689326851293906

/-! ## A220604.P13702393658384031757

`A209302(n+1)-A319290(n)`
-/

namespace A220604.P13702393658384031757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209302 (n + 1) - A319290 n

end

end A220604.P13702393658384031757

/-! ## A220604.P7656431852624535749

`A220603(n+1)-A329116(n)`
-/

namespace A220604.P7656431852624535749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220603 (n + 1) - A329116 n

end

end A220604.P7656431852624535749

/-! ## A220604.P15238885108783314951

`A319290(n)+1-A329116(n)`
-/

namespace A220604.P15238885108783314951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319290 n + (1 - A329116 n)

end

end A220604.P15238885108783314951

/-! ## A220604.P5993241367342259059

`A209302(n+1)+1-A220603(n+1)`
-/

namespace A220604.P5993241367342259059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209302 (n + 1) + (1 - A220603 (n + 1))

end

end A220604.P5993241367342259059

/-! ## A220604.P3466973544199435292

`A194280(n+1)-A161680(A209302(n+1))`
-/

namespace A220604.P3466973544199435292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194280 (n + 1) - A161680 (A209302 (n + 1)).toNat

end

end A220604.P3466973544199435292

/-! ## A220604.P2512857169670138865

`A194195(n+1)+A194280(n+1)-A064790(n+1)`
-/

namespace A220604.P2512857169670138865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194195 (n + 1) + (A194280 (n + 1) - A064790 (n + 1))

end

end A220604.P2512857169670138865

/-! ## A220604.P13161404520498113026

`A194195(n+1)+A194258(n+1)-A220603(n+1)`
-/

namespace A220604.P13161404520498113026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194195 (n + 1) + (A194258 (n + 1) - A220603 (n + 1))

end

end A220604.P13161404520498113026

/-! ## A220604.P16143569405325388368

`A220603(A020703(n+1))`
-/

namespace A220604.P16143569405325388368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220603 (A020703 (n + 1)).toNat

end

end A220604.P16143569405325388368

/-! ## A220604.P4319586612099382882

`A002260(A194280(n+1))`
-/

namespace A220604.P4319586612099382882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (A194280 (n + 1)).toNat

end

end A220604.P4319586612099382882

/-! ## A220604.P14990369170076763559

`A319514(2*n)+1`
-/

namespace A220604.P14990369170076763559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319514 (2 * n) + 1

end

end A220604.P14990369170076763559

/-! ## A220604.P9110110408645318261

`A038567(A002088(A319514(n+n)))`
-/

namespace A220604.P9110110408645318261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038567 (A002088 (A319514 (n + n)).toNat).toNat

end

end A220604.P9110110408645318261

/-! ## A220604.P6987118846257808359

`A208233(A064788(n+1))`
-/

namespace A220604.P6987118846257808359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208233 (A064788 (n + 1)).toNat

end

end A220604.P6987118846257808359

/-! ## A220604.P14638230227229329256

`A208234(A064790(n+1))`
-/

namespace A220604.P14638230227229329256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208234 (A064790 (n + 1)).toNat

end

end A220604.P14638230227229329256

/-! ## A220604.P16635458595174687227

`A210535(A214929(n+1))`
-/

namespace A220604.P16635458595174687227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210535 (A214929 (n + 1)).toNat

end

end A220604.P16635458595174687227

/-! ## A220604.P12888755498436508838

`A213195(A211377(A211377(A216253(n+1))))`
-/

namespace A220604.P12888755498436508838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213195 (A211377 (A211377 (A216253 (n + 1)).toNat).toNat).toNat

end

end A220604.P12888755498436508838

/-! ## A220604.P12680973640799346712

`A208233(A188568(A194280(A056011(A056011(n+1)))))`
-/

namespace A220604.P12680973640799346712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208233 (A188568 (A194280 (A056011 (A056011 (n + 1)).toNat).toNat).toNat).toNat

end

end A220604.P12680973640799346712

/-! ## A220604.P8415491751106766645

`A208233(A188568(A194280(A056023(A056023(n+1)))))`
-/

namespace A220604.P8415491751106766645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208233 (A188568 (A194280 (A056023 (A056023 (n + 1)).toNat).toNat).toNat).toNat

end

end A220604.P8415491751106766645

/-! ## A220604.P10624723948734101739

`A208233(A188568(A194280(A188568(A188568(n+1)))))`
-/

namespace A220604.P10624723948734101739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208233 (A188568 (A194280 (A188568 (A188568 (n + 1)).toNat).toNat).toNat).toNat

end

end A220604.P10624723948734101739

/-!
# A220611: Number of ways to reciprocally link elements of an n X 5 array either to themselves or to exactly two horizontal and vertical neighbors, without consecutive collinear links.

The programs for A220611, there is no canonical definition to state claims against.
-/

/-! ## A220611.P17991337499429706260

`A220614(A374005(n+1))`
-/

namespace A220611.P17991337499429706260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220614 (A374005 (n + 1)).toNat

end

end A220611.P17991337499429706260

/-! ## A220611.P7583288272397126636

`A220614(A161680(n+5)+5)`
-/

namespace A220611.P7583288272397126636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220614 (A161680 (n + 5) + 5).toNat

end

end A220611.P7583288272397126636

/-! ## A220611.P2614440373641484148

`A220614(A000124(n+5)-(n+1))`
-/

namespace A220611.P2614440373641484148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220614 (A000124 (n + 5) - (n + 1 : ℤ)).toNat

end

end A220611.P2614440373641484148

/-! ## A220611.P7815992292892313741

`A220614(Δ[A264443(n)])`
-/

namespace A220611.P7815992292892313741
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220614 (f1 (n + 1) - f1 n).toNat

end

end A220611.P7815992292892313741

/-! ## A220611.P12012326890459500416

`A220614(A046691(n+3))`
-/

namespace A220611.P12012326890459500416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220614 (A046691 (n + 3)).toNat

end

end A220611.P12012326890459500416

/-!
# A220612: Number of ways to reciprocally link elements of an nX6 array either to themselves or to exactly two horizontal and vertical neighbors, without consecutive collinear links.

The programs for A220612, there is no canonical definition to state claims against.
-/

/-! ## A220612.P7484420769251907940

`A220614(A374007(n+1))`
-/

namespace A220612.P7484420769251907940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220614 (A374007 (n + 1)).toNat

end

end A220612.P7484420769251907940

/-! ## A220612.P8250069198645508635

`A220614(Δ[A264443(n)]+10)`
-/

namespace A220612.P8250069198645508635
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220614 (f1 (n + 1) - f1 n + 10).toNat

end

end A220612.P8250069198645508635

/-! ## A220612.P13319397333679429588

`A220614(A000124(n+5)+5)`
-/

namespace A220612.P13319397333679429588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220614 (A000124 (n + 5) + 5).toNat

end

end A220612.P13319397333679429588

/-! ## A220612.P11643824043696236180

`A220614(A000217(n+5)+6)`
-/

namespace A220612.P11643824043696236180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220614 (A000217 (n + 5) + 6).toNat

end

end A220612.P11643824043696236180

/-! ## A220612.P14962433808114160810

`A220614(A161680(n+6)+6)`
-/

namespace A220612.P14962433808114160810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220614 (A161680 (n + 6) + 6).toNat

end

end A220612.P14962433808114160810

/-!
# A220613: Number of ways to reciprocally link elements of an nX7 array either to themselves or to exactly two horizontal and vertical neighbors, without consecutive collinear links.

The programs for A220613, there is no canonical definition to state claims against.
-/

/-! ## A220613.P16492894268353320092

`A220614(A374008(n+1))`
-/

namespace A220613.P16492894268353320092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220614 (A374008 (n + 1)).toNat

end

end A220613.P16492894268353320092

/-! ## A220613.P14855673317698370961

`A220614(A253145(n+5)+7)`
-/

namespace A220613.P14855673317698370961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220614 (A253145 (n + 5) + 7).toNat

end

end A220613.P14855673317698370961

/-! ## A220613.P6233684352865875779

`A220614(A000217(n+6)+7)`
-/

namespace A220613.P6233684352865875779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220614 (A000217 (n + 6) + 7).toNat

end

end A220613.P6233684352865875779

/-! ## A220613.P11685960544619433525

`A220614(A055999(n+4))`
-/

namespace A220613.P11685960544619433525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220614 (A055999 (n + 4)).toNat

end

end A220613.P11685960544619433525

/-! ## A220613.P13945180021616967746

`A220614(A052905(n+4)-1)`
-/

namespace A220613.P13945180021616967746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220614 (A052905 (n + 4) - 1).toNat

end

end A220613.P13945180021616967746

/-!
# A220614: T(n,k)=Number of ways to reciprocally link elements of an nXk array either to themselves or to exactly two horizontal and vertical neighbors, without consecutive collinear links.

The programs for A220614, there is no canonical definition to state claims against.
-/

/-! ## A220614.P15447180870736614704

`A048766(A054519(A300342(n+1)))`
-/

namespace A220614.P15447180870736614704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 (A054519 (A300342 (n + 1)).toNat).toNat

end

end A220614.P15447180870736614704

/-! ## A220614.P17686845177311585319

`A245013(lt[A358477(3*n+2), A131689(n)])`
-/

namespace A220614.P17686845177311585319
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358477 (3 * n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131689 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245013 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A220614.P17686845177311585319

/-! ## A220614.P15185716245969215904

`A162912(A099594(n))`
-/

namespace A220614.P15185716245969215904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162912 (A099594 n).toNat

end

end A220614.P15185716245969215904

/-! ## A220614.P8927060191974864322

`A162911(A099594(n)+1)`
-/

namespace A220614.P8927060191974864322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162911 (A099594 n + 1).toNat

end

end A220614.P8927060191974864322

/-! ## A220614.P1138660755264375266

`A285189(A063394(n)+1)`
-/

namespace A220614.P1138660755264375266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285189 (A063394 n + 1).toNat

end

end A220614.P1138660755264375266

/-!
# A220615: Number of ways to reciprocally link elements of an n X n array either to themselves or to exactly one horizontal, diagonal and antidiagonal neighbor.

The programs for A220615, there is no canonical definition to state claims against.
-/

/-! ## A220615.P12828245664336829247

`A220621(∑[4*n]+1)`
-/

namespace A220615.P12828245664336829247
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220621 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A220615.P12828245664336829247

/-! ## A220615.P11341465666710124874

`record[A003982(n)*A220621(n+1)]`
-/

namespace A220615.P11341465666710124874
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A220621 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A220615.P11341465666710124874

/-! ## A220615.P14778549000829041210

`record[gcd(A037012(n), A220621(n+1))]`
-/

namespace A220615.P14778549000829041210
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A037012 n) (A220621 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A220615.P14778549000829041210

/-! ## A220615.P9963435635717591715

`A220621(A001844(n))+A066568(n)`
-/

namespace A220615.P9963435635717591715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220621 (A001844 n).toNat + A066568 n

end

end A220615.P9963435635717591715

/-! ## A220615.P3410868111777898671

`or(A000007(n), A220621(A001844(n)))`
-/

namespace A220615.P3410868111777898671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A220621 (A001844 n).toNat)

end

end A220615.P3410868111777898671

/-!
# A220616: Number of ways to reciprocally link elements of an n X 3 array either to themselves or to exactly one horizontal, diagonal and antidiagonal neighbor.

The programs for A220616, the canonical program `A220616.P7467257378452040330` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A220616 has offset 1).

The definition of A220616 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 127 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A220616.P7467257378452040330

`7*a(n-1)-4*a(n-2)-10*a(n-3)+4*a(n-4)` with `a(0)=3, a(1)=21, a(2)=125, a(3)=765`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A220616

/-- `7*a(n-1)-4*a(n-2)-10*a(n-3)+4*a(n-4)` -/
def P7467257378452040330.Spec : Prop :=
  ∀ n, P7467257378452040330.a n = A220616 (n + 1)

theorem P7467257378452040330.correct : P7467257378452040330.Spec := by
  intro n
  simp only [A220616, Nat.add_sub_cancel]

end A220616

/-! ## A220616.P9641432320421899852

`A220621(∑[n+3]+1)`
-/

namespace A220616.P9641432320421899852
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220621 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A220616.P9641432320421899852

namespace A220616

/-- `A220621(∑[n+3]+1)` -/
def P9641432320421899852.Spec : Prop :=
  ∀ n, P9641432320421899852.a n = A220616 (n + 1)

end A220616

/-! ## A220616.P2617127259986163998

`or(1, A220621(A034856(n+2)))`
-/

namespace A220616.P2617127259986163998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A220621 (A034856 (n + 2)).toNat)

end

end A220616.P2617127259986163998

namespace A220616

/-- `or(1, A220621(A034856(n+2)))` -/
def P2617127259986163998.Spec : Prop :=
  ∀ n, P2617127259986163998.a n = A220616 (n + 1)

end A220616

/-! ## A220616.P14705137377958413436

`A220621(A034856(n+2))+A000007(n+1)`
-/

namespace A220616.P14705137377958413436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220621 (A034856 (n + 2)).toNat + A000007 (n + 1)

end

end A220616.P14705137377958413436

namespace A220616

/-- `A220621(A034856(n+2))+A000007(n+1)` -/
def P14705137377958413436.Spec : Prop :=
  ∀ n, P14705137377958413436.a n = A220616 (n + 1)

end A220616

/-! ## A220616.P3433904574498181019

`A220621(A034856(n+2))%A073973(n+3)`
-/

namespace A220616.P3433904574498181019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A220621 (A034856 (n + 2)).toNat) (A073973 (n + 3))

end

end A220616.P3433904574498181019

namespace A220616

/-- `A220621(A034856(n+2))%A073973(n+3)` -/
def P3433904574498181019.Spec : Prop :=
  ∀ n, P3433904574498181019.a n = A220616 (n + 1)

end A220616

/-!
# A220617: Number of ways to reciprocally link elements of an nX4 array either to themselves or to exactly one horizontal, diagonal and antidiagonal neighbor.

The programs for A220617, there is no canonical definition to state claims against.
-/

/-! ## A220617.P7959094507647348615

`A220621(A141214(n+1))`
-/

namespace A220617.P7959094507647348615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220621 (A141214 (n + 1)).toNat

end

end A220617.P7959094507647348615

/-! ## A220617.P15250518073606824743

`A220621(A155212(n)+5)`
-/

namespace A220617.P15250518073606824743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220621 (A155212 n + 5).toNat

end

end A220617.P15250518073606824743

/-! ## A220617.P12481309213692318697

`A220621(A056000(n)+7)`
-/

namespace A220617.P12481309213692318697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220621 (A056000 n + 7).toNat

end

end A220617.P12481309213692318697

/-! ## A220617.P14953673202130053847

`A220621(eq[3, A193592(n)])`
-/

namespace A220617.P14953673202130053847
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220621 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A220617.P14953673202130053847

/-! ## A220617.P8717444259372456341

`A220621(A052905(n+1)+2)`
-/

namespace A220617.P8717444259372456341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220621 (A052905 (n + 1) + 2).toNat

end

end A220617.P8717444259372456341

/-!
# A220618: Number of ways to reciprocally link elements of an nX5 array either to themselves or to exactly one horizontal, diagonal and antidiagonal neighbor.

The programs for A220618, there is no canonical definition to state claims against.
-/

/-! ## A220618.P1855210474129460246

`A220621(Δ[A264443(n)])`
-/

namespace A220618.P1855210474129460246
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220621 (f1 (n + 1) - f1 n).toNat

end

end A220618.P1855210474129460246

/-! ## A220618.P15668914909375034442

`A220621(A046691(n+3))`
-/

namespace A220618.P15668914909375034442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220621 (A046691 (n + 3)).toNat

end

end A220618.P15668914909375034442

/-! ## A220618.P6030957124280169187

`A220621(eq[4, A193592(n)])`
-/

namespace A220618.P6030957124280169187
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220621 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A220618.P6030957124280169187

/-! ## A220618.P356113615366715421

`A220621(eq[8, A140996(n)])`
-/

namespace A220618.P356113615366715421
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140996 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220621 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A220618.P356113615366715421

/-! ## A220618.P13836769791510075806

`A220621(Δ[A023545(n+1)])`
-/

namespace A220618.P13836769791510075806
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220621 (f1 (n + 1) - f1 n).toNat

end

end A220618.P13836769791510075806

/-!
# A220619: Number of ways to reciprocally link elements of an nX6 array either to themselves or to exactly one horizontal, diagonal and antidiagonal neighbor.

The programs for A220619, there is no canonical definition to state claims against.
-/

/-! ## A220619.P13694977935022698903

`A220621(A052905(n+3))`
-/

namespace A220619.P13694977935022698903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220621 (A052905 (n + 3)).toNat

end

end A220619.P13694977935022698903

/-! ## A220619.P13680579785695212168

`A220621(A056119(n)+16)`
-/

namespace A220619.P13680579785695212168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220621 (A056119 n + 16).toNat

end

end A220619.P13680579785695212168

/-! ## A220619.P16723606266623652060

`A220621(eq[3, A219347(n)])`
-/

namespace A220619.P16723606266623652060
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220621 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A220619.P16723606266623652060

/-! ## A220619.P4873636775204342937

`A220621(eq[5, A193592(n)])`
-/

namespace A220619.P4873636775204342937
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220621 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A220619.P4873636775204342937

/-! ## A220619.P8787491711762258911

`A220621(eq[8, A185782(n+1)])`
-/

namespace A220619.P8787491711762258911
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220621 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A220619.P8787491711762258911

/-!
# A220620: Number of ways to reciprocally link elements of an nX7 array either to themselves or to exactly one horizontal, diagonal and antidiagonal neighbor.

The programs for A220620, there is no canonical definition to state claims against.
-/

/-! ## A220620.P3112584095966971874

`A220621(A055999(n+4))`
-/

namespace A220620.P3112584095966971874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220621 (A055999 (n + 4)).toNat

end

end A220620.P3112584095966971874

/-! ## A220620.P12963362276810834671

`A220621(eq[4, A219347(n)])`
-/

namespace A220620.P12963362276810834671
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220621 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A220620.P12963362276810834671

/-! ## A220620.P8645332376527080201

`A220621(eq[6, A193592(n)])`
-/

namespace A220620.P8645332376527080201
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220621 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A220620.P8645332376527080201

/-! ## A220620.P6702568714632654756

`A220621(A052905(n+4)-1)`
-/

namespace A220620.P6702568714632654756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220621 (A052905 (n + 4) - 1).toNat

end

end A220620.P6702568714632654756

/-! ## A220620.P5048629771817849348

`A220621(A056115(n+2)+9)`
-/

namespace A220620.P5048629771817849348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220621 (A056115 (n + 2) + 9).toNat

end

end A220620.P5048629771817849348

/-!
# A220622: Number of ways to reciprocally link elements of an 3 X n array either to themselves or to exactly one horizontal, diagonal and antidiagonal neighbor.

The programs for A220622, there is no canonical definition to state claims against.
-/

/-! ## A220622.P18331925066650968042

`A220621(∑[n+2]+4)`
-/

namespace A220622.P18331925066650968042
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220621 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A220622.P18331925066650968042

/-! ## A220622.P6523424446385999720

`or(∑{digits}[n, and(8, #)/8], A220621(A167614(n+1)))`
-/

namespace A220622.P6523424446385999720
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (SequenceMachineLib.roundAway ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => (Nat.land 8 x : ℚ) / 8).sum) (A220621 (A167614 (n + 1)).toNat)

end

end A220622.P6523424446385999720

/-! ## A220622.P1342258654381269233

`A220621(A167614(n+1))+A165878(n)`
-/

namespace A220622.P1342258654381269233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220621 (A167614 (n + 1)).toNat + A165878 n

end

end A220622.P1342258654381269233

/-! ## A220622.P5809954163222390276

`A220621(A167614(n+1))+A185037(n)`
-/

namespace A220622.P5809954163222390276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220621 (A167614 (n + 1)).toNat + A185037 n

end

end A220622.P5809954163222390276

/-! ## A220622.P3573286178210826190

`A220621(A167614(n+1))*A275216(n)`
-/

namespace A220622.P3573286178210826190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220621 (A167614 (n + 1)).toNat * A275216 n

end

end A220622.P3573286178210826190

/-!
# A220623: Number of ways to reciprocally link elements of an 4Xn array either to themselves or to exactly one horizontal, diagonal and antidiagonal neighbor.

The programs for A220623, there is no canonical definition to state claims against.
-/

/-! ## A220623.P9614122260915583137

`A220621(A141214(n)+7)`
-/

namespace A220623.P9614122260915583137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220621 (A141214 n + 7).toNat

end

end A220623.P9614122260915583137

/-! ## A220623.P8865948829291536982

`A220621(A052905(n)+9)`
-/

namespace A220623.P8865948829291536982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220621 (A052905 n + 9).toNat

end

end A220623.P8865948829291536982

/-! ## A220623.P2919366638804737362

`A220621(A055999(n)+10)`
-/

namespace A220623.P2919366638804737362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220621 (A055999 n + 10).toNat

end

end A220623.P2919366638804737362

/-! ## A220623.P4167854118260162407

`A220621(A167614(n+2)+1)`
-/

namespace A220623.P4167854118260162407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220621 (A167614 (n + 2) + 1).toNat

end

end A220623.P4167854118260162407

/-! ## A220623.P2472480199022406860

`A220621(eq[5, A131818(n+1)])`
-/

namespace A220623.P2472480199022406860
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220621 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A220623.P2472480199022406860

/-!
# A220624: Number of ways to reciprocally link elements of an 5Xn array either to themselves or to exactly one horizontal, diagonal and antidiagonal neighbor.

The programs for A220624, there is no canonical definition to state claims against.
-/

/-! ## A220624.P14470037421187723461

`A220621(A167499(n+3))`
-/

namespace A220624.P14470037421187723461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220621 (A167499 (n + 3)).toNat

end

end A220624.P14470037421187723461

/-! ## A220624.P10639139330633475296

`A220621(A155212(n)+13)`
-/

namespace A220624.P10639139330633475296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220621 (A155212 n + 13).toNat

end

end A220624.P10639139330633475296

/-! ## A220624.P15820461320913699406

`A220621(A056000(n)+15)`
-/

namespace A220624.P15820461320913699406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220621 (A056000 n + 15).toNat

end

end A220624.P15820461320913699406

/-! ## A220624.P6443854967336408310

`A220621(eq[7, A066657(n)])`
-/

namespace A220624.P6443854967336408310
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220621 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A220624.P6443854967336408310

/-! ## A220624.P10299887142244990137

`A220621(eq[6, A131818(n+1)])`
-/

namespace A220624.P10299887142244990137
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220621 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A220624.P10299887142244990137

/-!
# A220625: Number of ways to reciprocally link elements of an 6 X n array either to themselves or to exactly one horizontal, diagonal and antidiagonal neighbor.

The programs for A220625, there is no canonical definition to state claims against.
-/

/-! ## A220625.P480451917002929979

`A220621(A246172(n+1)+20)`
-/

namespace A220625.P480451917002929979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220621 (A246172 (n + 1) + 20).toNat

end

end A220625.P480451917002929979

/-! ## A220625.P14989874509773667407

`A220621(eq[5, A002262(n)]+1)`
-/

namespace A220625.P14989874509773667407
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220621 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A220625.P14989874509773667407

/-! ## A220625.P2033403232423323790

`A220621(eq[6, A130270(n+1)])`
-/

namespace A220625.P2033403232423323790
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130270 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220621 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A220625.P2033403232423323790

/-! ## A220625.P18109035043883740199

`A220621(eq[7, A131818(n+1)])`
-/

namespace A220625.P18109035043883740199
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220621 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A220625.P18109035043883740199

/-! ## A220625.P12484065570746302055

`A220621(A052905(n+4)-1-Δ[n²])`
-/

namespace A220625.P12484065570746302055
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220621 (A052905 (n + 4) - 1 - ((f1 (n + 1) : ℤ) - (f1 n : ℤ))).toNat

end

end A220625.P12484065570746302055

/-!
# A220626: Number of ways to reciprocally link elements of an 7Xn array either to themselves or to exactly one horizontal, diagonal and antidiagonal neighbor.

The programs for A220626, there is no canonical definition to state claims against.
-/

/-! ## A220626.P4623037657498584737

`A220621(C(n+8, 2)-n)`
-/

namespace A220626.P4623037657498584737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220621 (Nat.choose (n + 8) 2 - n)

end

end A220626.P4623037657498584737

/-! ## A220626.P9066572786479920176

`A220621(eq[11, A066657(n)])`
-/

namespace A220626.P9066572786479920176
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220621 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A220626.P9066572786479920176

/-! ## A220626.P17877428489250948768

`A220621(A167614(n+5)+4)`
-/

namespace A220626.P17877428489250948768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220621 (A167614 (n + 5) + 4).toNat

end

end A220626.P17877428489250948768

/-! ## A220626.P10824574835881342128

`A220621(A000124(n+6)+6)`
-/

namespace A220626.P10824574835881342128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220621 (A000124 (n + 6) + 6).toNat

end

end A220626.P10824574835881342128

/-! ## A220626.P15273728563518864165

`A220621(eq[8, A131818(n+1)])`
-/

namespace A220626.P15273728563518864165
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220621 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A220626.P15273728563518864165

/-!
# A220627: Prime numbers that are not Brazilian.

The programs for A220627, there is no canonical definition to state claims against.
-/

/-! ## A220627.P6848326669097918217

`p?[A220570(n+1)]`
-/

namespace A220627.P6848326669097918217
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220570 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A220627.P6848326669097918217

/-! ## A220627.P4369159970141227146

`p?[A326379(n+1)]`
-/

namespace A220627.P4369159970141227146
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326379 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A220627.P4369159970141227146

/-! ## A220627.P13154995280664342715

`p?[lt[n, A059711(n)²]]`
-/

namespace A220627.P13154995280664342715
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059711 n ^ 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A220627.P13154995280664342715

/-! ## A220627.P3024293101297688704

`p?[gcd(n+1, A088323(n+2))+n+1]`
-/

namespace A220627.P3024293101297688704
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A088323 (n + 2)) + (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A220627.P3024293101297688704

/-! ## A220627.P13815695679447192598

`record[A006530(A220570(n+2))]`
-/

namespace A220627.P13815695679447192598
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A220570 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A220627.P13815695679447192598

/-! ## A220627.P8108436288699040953

`filter[A220570(n+1), A010051(#)]`
-/

namespace A220627.P8108436288699040953
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220570 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A220627.P8108436288699040953

/-! ## A220627.P14242586030588666060

`filter[A220570(n+1), A066829(#)]`
-/

namespace A220627.P14242586030588666060
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220570 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A066829 (f1 j).toNat = 1) n)

end

end A220627.P14242586030588666060

/-! ## A220627.P9869367356240127120

`filter[A220570(n+1), A099104(#)]`
-/

namespace A220627.P9869367356240127120
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220570 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A099104 (f1 j).toNat = 1) n)

end

end A220627.P9869367356240127120

/-! ## A220627.P7469345353838682238

`filter[A326379(n+1), A010051(#)]`
-/

namespace A220627.P7469345353838682238
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326379 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A220627.P7469345353838682238

/-! ## A220627.P3927191036724669144

`filter[A326379(n+1), A080339(#)]`
-/

namespace A220627.P3927191036724669144
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326379 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080339 (f1 j).toNat = 1) n)

end

end A220627.P3927191036724669144

/-! ## A220627.P14931847208481325892

`filter[A220570(n+1), A252233(#)]`
-/

namespace A220627.P14931847208481325892
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220570 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A252233 (f1 j).toNat = 1) n)

end

end A220627.P14931847208481325892

/-! ## A220627.P15992469445561092180

`filter[A220570(n+1), A324823(#)]`
-/

namespace A220627.P15992469445561092180
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220570 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A324823 (f1 j).toNat = 1) n)

end

end A220627.P15992469445561092180

/-! ## A220627.P4093967667643866695

`filter[A220570(n+1), A327861(#)]`
-/

namespace A220627.P4093967667643866695
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220570 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A327861 (f1 j).toNat = 1) n)

end

end A220627.P4093967667643866695

/-! ## A220627.P1123088849359218405

`filter[A220570(n+1), A353499(#)]`
-/

namespace A220627.P1123088849359218405
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220570 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353499 (f1 j).toNat = 1) n)

end

end A220627.P1123088849359218405

/-! ## A220627.P15510789170321603572

`filter[A220570(n+1), A353817(#)]`
-/

namespace A220627.P15510789170321603572
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220570 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353817 (f1 j).toNat = 1) n)

end

end A220627.P15510789170321603572

/-! ## A220627.P13224433859968391635

`filter[A220570(n+1), A358751(#)]`
-/

namespace A220627.P13224433859968391635
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220570 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A358751 (f1 j).toNat = 1) n)

end

end A220627.P13224433859968391635

/-! ## A220627.P14649970691188360162

`filter[A220570(n+1), A358769(#)]`
-/

namespace A220627.P14649970691188360162
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220570 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A358769 (f1 j).toNat = 1) n)

end

end A220627.P14649970691188360162

/-! ## A220627.P6696364326612155866

`filter[A220570(n+1), A359158(#)]`
-/

namespace A220627.P6696364326612155866
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220570 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359158 (f1 j).toNat = 1) n)

end

end A220627.P6696364326612155866

/-! ## A220627.P12967983768379292031

`filter[A220570(n+1), A359372(#)]`
-/

namespace A220627.P12967983768379292031
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220570 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359372 (f1 j).toNat = 1) n)

end

end A220627.P12967983768379292031

/-! ## A220627.P17752684215083787872

`filter[A220570(n+1), A374130(#)]`
-/

namespace A220627.P17752684215083787872
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220570 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374130 (f1 j).toNat = 1) n)

end

end A220627.P17752684215083787872

/-!
# A220628: Number of ways to reciprocally link elements of an n X n array either to themselves or to exactly two horizontal or antidiagonal neighbors.

The programs for A220628, there is no canonical definition to state claims against.
-/

/-! ## A220628.P77514293876423301

`A220632(∑[4*n]+1)`
-/

namespace A220628.P77514293876423301
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220632 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A220628.P77514293876423301

/-! ## A220628.P15499354954899621713

`or(A220632(A001844(n)), A282516(n))`
-/

namespace A220628.P15499354954899621713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A220632 (A001844 n).toNat) (A282516 n)

end

end A220628.P15499354954899621713

/-! ## A220628.P5734721727409742280

`A220632(A001844(n))+char[A154266(n)]`
-/

namespace A220628.P5734721727409742280
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154266 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220632 (A001844 n).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A220628.P5734721727409742280

/-! ## A220628.P11172762035734772521

`or(A186716(n+1), A220632(A001844(n)))`
-/

namespace A220628.P11172762035734772521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A186716 (n + 1)) (A220632 (A001844 n).toNat)

end

end A220628.P11172762035734772521

/-! ## A220628.P9264300700893138258

`gcd(A186716(3*n+1), A220632(A001844(n)))`
-/

namespace A220628.P9264300700893138258
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A186716 (3 * n + 1)) (A220632 (A001844 n).toNat)

end

end A220628.P9264300700893138258

/-!
# A220629: Number of ways to reciprocally link elements of an n X 5 array either to themselves or to exactly two horizontal or antidiagonal neighbors.

The programs for A220629, there is no canonical definition to state claims against.
-/

/-! ## A220629.P3640466277073629388

`A220632(eq[2, A092921(n)])`
-/

namespace A220629.P3640466277073629388
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092921 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220632 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A220629.P3640466277073629388

/-! ## A220629.P2849530882864295310

`A220632(eq[4, A054123(n)])`
-/

namespace A220629.P2849530882864295310
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054123 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220632 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A220629.P2849530882864295310

/-! ## A220629.P9501147546123336092

`A220632(eq[4, A193592(n)])`
-/

namespace A220629.P9501147546123336092
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220632 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A220629.P9501147546123336092

/-! ## A220629.P8193982587297545309

`A220632(Δ[A023545(n+1)])`
-/

namespace A220629.P8193982587297545309
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220632 (f1 (n + 1) - f1 n).toNat

end

end A220629.P8193982587297545309

/-! ## A220629.P14891387710643382946

`A220632(A000124(n+5)-5)`
-/

namespace A220629.P14891387710643382946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220632 (A000124 (n + 5) - 5).toNat

end

end A220629.P14891387710643382946

/-!
# A220630: Number of ways to reciprocally link elements of an nX6 array either to themselves or to exactly two horizontal or antidiagonal neighbors.

The programs for A220630, there is no canonical definition to state claims against.
-/

/-! ## A220630.P9291489546954212842

`A220632(eq[3, A219347(n)])`
-/

namespace A220630.P9291489546954212842
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220632 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A220630.P9291489546954212842

/-! ## A220630.P16126407355082481605

`A220632(eq[5, A193592(n)])`
-/

namespace A220630.P16126407355082481605
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220632 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A220630.P16126407355082481605

/-! ## A220630.P13546136456736849406

`A220632(eq[8, A185782(n+1)])`
-/

namespace A220630.P13546136456736849406
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220632 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A220630.P13546136456736849406

/-! ## A220630.P5030192885779574915

`A220632(eq[16, A057728(n+1)])`
-/

namespace A220630.P5030192885779574915
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057728 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220632 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A220630.P5030192885779574915

/-! ## A220630.P14263582360737809900

`A220632(Δ[Δ[A006504(n+1)]])`
-/

namespace A220630.P14263582360737809900
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006504 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220632 (f1 (n + 1) - f1 n).toNat

end

end A220630.P14263582360737809900

/-!
# A220631: Number of ways to reciprocally link elements of an nX7 array either to themselves or to exactly two horizontal or antidiagonal neighbors.

The programs for A220631, there is no canonical definition to state claims against.
-/

/-! ## A220631.P14335348267675509758

`A220632(eq[4, A219347(n)])`
-/

namespace A220631.P14335348267675509758
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220632 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A220631.P14335348267675509758

/-! ## A220631.P1897857041094485620

`A220632(eq[6, A193592(n)])`
-/

namespace A220631.P1897857041094485620
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220632 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A220631.P1897857041094485620

/-! ## A220631.P14412301130743487765

`A220632(eq[10, A185782(n+1)])`
-/

namespace A220631.P14412301130743487765
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220632 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A220631.P14412301130743487765

/-! ## A220631.P959298068516826414

`A220632(Δ[Δ[A006504(n+1)]]+n+6)`
-/

namespace A220631.P959298068516826414
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006504 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220632 (f1 (n + 1) - f1 n + (n + 6 : ℤ)).toNat

end

end A220631.P959298068516826414

/-! ## A220631.P8766429240198244919

`record[A220632(A134227(A004736(n+1)))]`
-/

namespace A220631.P8766429240198244919
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220632 (A134227 (A004736 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A220631.P8766429240198244919

/-!
# A220632: T(n,k)=Number of ways to reciprocally link elements of an nXk array either to themselves or to exactly two horizontal or antidiagonal neighbors.

The programs for A220632, there is no canonical definition to state claims against.
-/

/-! ## A220632.P16409597778188149501

`A336112(A181196(n+1))`
-/

namespace A220632.P16409597778188149501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336112 (A181196 (n + 1)).toNat

end

end A220632.P16409597778188149501

/-! ## A220632.P5854307729859856302

`A336112(A227578(n+1))`
-/

namespace A220632.P5854307729859856302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336112 (A227578 (n + 1)).toNat

end

end A220632.P5854307729859856302

/-! ## A220632.P11653550105360637354

`A225644(2*A064879(n))`
-/

namespace A220632.P11653550105360637354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225644 (2 * A064879 n).toNat

end

end A220632.P11653550105360637354

/-! ## A220632.P16574578934995591420

`A225644(2*A181196(n+1))`
-/

namespace A220632.P16574578934995591420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225644 (2 * A181196 (n + 1)).toNat

end

end A220632.P16574578934995591420

/-! ## A220632.P5408113663415023525

`A225644(2*A227578(n+1))`
-/

namespace A220632.P5408113663415023525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225644 (2 * A227578 (n + 1)).toNat

end

end A220632.P5408113663415023525

/-!
# A220633: Number of ways to reciprocally link elements of an 3 X n array either to themselves or to exactly two horizontal or antidiagonal neighbors.

The programs for A220633, the canonical program `A220633.P13988309454214601340` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A220633 has offset 1).

The definition of A220633 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 183 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A220633.P7570412247199281289

`ogf((1-3x+3x^3+x^4)/(1-4x+x^2+2x^3))`
-/

namespace A220633.P7570412247199281289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -3, 0, 3, 1] [1, -4, 1, 2] n

end

end A220633.P7570412247199281289

namespace A220633

/-- `ogf((1-3x+3x^3+x^4)/(1-4x+x^2+2x^3))` -/
def P7570412247199281289.Spec : Prop :=
  ∀ n, P7570412247199281289.a n = A220633 (n + 1)

end A220633

/-! ## A220633.P13988309454214601340

`4*a(n-1)-a(n-2)-2*a(n-3)` with `a(0)=1, a(1)=1, a(2)=3, a(3)=12, a(4)=44`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A220633

/-- `4*a(n-1)-a(n-2)-2*a(n-3)` -/
def P13988309454214601340.Spec : Prop :=
  ∀ n, P13988309454214601340.a n = A220633 (n + 1)

theorem P13988309454214601340.correct : P13988309454214601340.Spec := by
  intro n
  simp only [A220633, Nat.add_sub_cancel]

end A220633

/-! ## A220633.P8357172421166227887

`A230269(n+1)+A055099(A289207(n))`
-/

namespace A220633.P8357172421166227887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230269 (n + 1) + A055099 (A289207 n).toNat

end

end A220633.P8357172421166227887

namespace A220633

/-- `A230269(n+1)+A055099(A289207(n))` -/
def P8357172421166227887.Spec : Prop :=
  ∀ n, P8357172421166227887.a n = A220633 (n + 1)

end A220633

/-! ## A220633.P974402628454333417

`floor(A055099(A028310(n))/4)`
-/

namespace A220633.P974402628454333417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A055099 (A028310 n).toNat : ℚ) / 4⌋

end

end A220633.P974402628454333417

namespace A220633

/-- `floor(A055099(A028310(n))/4)` -/
def P974402628454333417.Spec : Prop :=
  ∀ n, P974402628454333417.a n = A220633 (n + 1)

end A220633

/-! ## A220633.P11520581796389918433

`floor(A055099(n)/A113311(n))`
-/

namespace A220633.P11520581796389918433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A055099 n : ℚ) / (A113311 n : ℚ)⌋

end

end A220633.P11520581796389918433

namespace A220633

/-- `floor(A055099(n)/A113311(n))` -/
def P11520581796389918433.Spec : Prop :=
  ∀ n, P11520581796389918433.a n = A220633 (n + 1)

end A220633

/-! ## A220633.P6761525452835669682

`floor(A055099(n)/A123932(n))`
-/

namespace A220633.P6761525452835669682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A055099 n : ℚ) / (A123932 n : ℚ)⌋

end

end A220633.P6761525452835669682

namespace A220633

/-- `floor(A055099(n)/A123932(n))` -/
def P6761525452835669682.Spec : Prop :=
  ∀ n, P6761525452835669682.a n = A220633 (n + 1)

end A220633

/-!
# A220634: Number of ways to reciprocally link elements of an 4 X n array either to themselves or to exactly two horizontal or antidiagonal neighbors.

The programs for A220634, there is no canonical definition to state claims against.
-/

/-! ## A220634.P16366435930304984963

`A220632(A055999(n)+10)`
-/

namespace A220634.P16366435930304984963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220632 (A055999 n + 10).toNat

end

end A220634.P16366435930304984963

/-! ## A220634.P3622064187151628350

`A220632(A167614(n+2)+1)`
-/

namespace A220634.P3622064187151628350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220632 (A167614 (n + 2) + 1).toNat

end

end A220634.P3622064187151628350

/-! ## A220634.P9456255918940347706

`A220632(A166136(n+2)-2)`
-/

namespace A220634.P9456255918940347706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220632 (A166136 (n + 2) - 2).toNat

end

end A220634.P9456255918940347706

/-! ## A220634.P5217159036691491124

`A220632(A000124(n+3)+3)`
-/

namespace A220634.P5217159036691491124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220632 (A000124 (n + 3) + 3).toNat

end

end A220634.P5217159036691491124

/-! ## A220634.P1206289044773776955

`A220632(A000217(n+3)+4)`
-/

namespace A220634.P1206289044773776955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220632 (A000217 (n + 3) + 4).toNat

end

end A220634.P1206289044773776955

/-!
# A220635: Number of ways to reciprocally link elements of an 5Xn array either to themselves or to exactly two horizontal or antidiagonal neighbors.

The programs for A220635, there is no canonical definition to state claims against.
-/

/-! ## A220635.P4965651201543688686

`A220632(A155212(n)+13)`
-/

namespace A220635.P4965651201543688686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220632 (A155212 n + 13).toNat

end

end A220635.P4965651201543688686

/-! ## A220635.P10403140739363203691

`A220632(A056000(n)+15)`
-/

namespace A220635.P10403140739363203691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220632 (A056000 n + 15).toNat

end

end A220635.P10403140739363203691

/-! ## A220635.P3536886328567800850

`A220632(A046691(n+2)+9)`
-/

namespace A220635.P3536886328567800850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220632 (A046691 (n + 2) + 9).toNat

end

end A220635.P3536886328567800850

/-! ## A220635.P12912197408868968040

`A220632(eq[6, A131818(n+1)])`
-/

namespace A220635.P12912197408868968040
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220632 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A220635.P12912197408868968040

/-! ## A220635.P12948784500154353348

`A220632(A173036(n)+A016825(n))`
-/

namespace A220635.P12948784500154353348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220632 (A173036 n + A016825 n).toNat

end

end A220635.P12948784500154353348

/-!
# A220636: Number of ways to reciprocally link elements of an 6Xn array either to themselves or to exactly two horizontal or antidiagonal neighbors.

The programs for A220636, there is no canonical definition to state claims against.
-/

/-! ## A220636.P5996157760641478913

`A220632(A166136(n+4))`
-/

namespace A220636.P5996157760641478913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220632 (A166136 (n + 4)).toNat

end

end A220636.P5996157760641478913

/-! ## A220636.P18318405592721614954

`A220632(A167499(n+4)+1)`
-/

namespace A220636.P18318405592721614954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220632 (A167499 (n + 4) + 1).toNat

end

end A220636.P18318405592721614954

/-! ## A220636.P11713567357228419863

`A220632(eq[6, A130270(n+1)])`
-/

namespace A220636.P11713567357228419863
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130270 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220632 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A220636.P11713567357228419863

/-! ## A220636.P6278708230518301488

`A220632(eq[7, A131818(n+1)])`
-/

namespace A220636.P6278708230518301488
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220632 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A220636.P6278708230518301488

/-!
# A220637: Number of ways to reciprocally link elements of an 7Xn array either to themselves or to exactly two horizontal or antidiagonal neighbors.

The programs for A220637, there is no canonical definition to state claims against.
-/

/-! ## A220637.P16354098555212874467

`A220632(A167487(n+5))`
-/

namespace A220637.P16354098555212874467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220632 (A167487 (n + 5)).toNat

end

end A220637.P16354098555212874467

/-! ## A220637.P11438901472914308110

`A220632(eq[11, A066657(n)])`
-/

namespace A220637.P11438901472914308110
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220632 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A220637.P11438901472914308110

/-! ## A220637.P16663825810262819738

`A220632(A000096(n+5)+8)`
-/

namespace A220637.P16663825810262819738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220632 (A000096 (n + 5) + 8).toNat

end

end A220637.P16663825810262819738

/-! ## A220637.P1678379088275463076

`A220632(eq[8, A131818(n+1)])`
-/

namespace A220637.P1678379088275463076
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220632 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A220637.P1678379088275463076

/-! ## A220637.P13935662549255200029

`A220632(Δ[Δ[A006504(n+1)]]+12)`
-/

namespace A220637.P13935662549255200029
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006504 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220632 (f1 (n + 1) - f1 n + 12).toNat

end

end A220637.P13935662549255200029

/-!
# A220638: Number of ways to reciprocally link elements of an n X n array either to themselves or to exactly one king-move neighbor.

The programs for A220638, there is no canonical definition to state claims against.
-/

/-! ## A220638.P11728040937450189072

`A220644((1-n)²+n²)`
-/

namespace A220638.P11728040937450189072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220644 ((1 - (n : ℤ)) ^ 2 + (n ^ 2 : ℤ)).toNat

end

end A220638.P11728040937450189072

/-!
# A220639: Number of ways to reciprocally link elements of an n X 3 array either to themselves or to exactly one king-move neighbor.

The programs for A220639, there is no canonical definition to state claims against.
-/

/-! ## A220639.P12380823022919848179

`A220644(∑[n+2]-1)`
-/

namespace A220639.P12380823022919848179
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220644 (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A220639.P12380823022919848179

/-! ## A220639.P8206734591887685328

`gcd(A112316(n), A220644(A034856(n+1)))`
-/

namespace A220639.P8206734591887685328
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A112316 n) (A220644 (A034856 (n + 1)).toNat)

end

end A220639.P8206734591887685328

/-! ## A220639.P14602318255597863026

`A007318(∑[n])*A220644(A034856(n+1))`
-/

namespace A220639.P14602318255597863026
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * A220644 (A034856 (n + 1)).toNat

end

end A220639.P14602318255597863026

/-! ## A220639.P17845739406440896256

`A220644(A034856(n+1))+1-A000041(C(2, n+2))`
-/

namespace A220639.P17845739406440896256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220644 (A034856 (n + 1)).toNat + 1 - A000041 (Nat.choose 2 (n + 2))

end

end A220639.P17845739406440896256

/-! ## A220639.P16398785025710562528

`A220644(A034856(n+1))^A007318(C(4*n+2, 2))`
-/

namespace A220639.P16398785025710562528
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A220644 (A034856 (n + 1)).toNat : ℚ) ^ (A007318 (Nat.choose (4 * n + 2) 2) : ℤ)

end

end A220639.P16398785025710562528

/-!
# A220640: Number of ways to reciprocally link elements of an n X 4 array either to themselves or to exactly one king-move neighbor.

The programs for A220640, there is no canonical definition to state claims against.
-/

/-! ## A220640.P7057344820963870307

`A220644(A141214(n))-floor(acot(n))`
-/

namespace A220640.P7057344820963870307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220644 (A141214 n).toNat - ⌊SequenceMachineLib.acot (n : ℝ)⌋

end

end A220640.P7057344820963870307

/-! ## A220640.P11738183800638117368

`A220644(A141214(n))-A000007(n)`
-/

namespace A220640.P11738183800638117368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220644 (A141214 n).toNat - A000007 n

end

end A220640.P11738183800638117368

/-! ## A220640.P9461941613220446028

`A220644(A141214(n)%A062395(n))`
-/

namespace A220640.P9461941613220446028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220644 (Int.tmod (A141214 n) (A062395 n)).toNat

end

end A220640.P9461941613220446028

/-! ## A220640.P1586602272285828022

`A220644(A141214(n)^A309026(n))`
-/

namespace A220640.P1586602272285828022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220644 (SequenceMachineLib.roundAway ((A141214 n : ℚ) ^ (A309026 n : ℤ))).toNat

end

end A220640.P1586602272285828022

/-! ## A220640.P12771640298766087105

`A220644(A141214(n)^A071625(n+1))`
-/

namespace A220640.P12771640298766087105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220644 (SequenceMachineLib.roundAway ((A141214 n : ℚ) ^ (A071625 (n + 1) : ℤ))).toNat

end

end A220640.P12771640298766087105

/-!
# A220641: Number of ways to reciprocally link elements of an n X 5 array either to themselves or to exactly one king-move neighbor.

The programs for A220641, there is no canonical definition to state claims against.
-/

/-! ## A220641.P5091864551719694079

`A220644(eq[4, A130297(n+1)])`
-/

namespace A220641.P5091864551719694079
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130297 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220644 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A220641.P5091864551719694079

/-!
# A220642: Number of ways to reciprocally link elements of an n X 6 array either to themselves or to exactly one king-move neighbor.

The programs for A220642, there is no canonical definition to state claims against.
-/

/-! ## A220642.P14934648458742036797

`A220644(A166136(n+3)%A042007(n+2))`
-/

namespace A220642.P14934648458742036797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220644 (Int.tmod (A166136 (n + 3)) (A042007 (n + 2))).toNat

end

end A220642.P14934648458742036797

/-!
# A220644: T(n,k) = number of ways to reciprocally link elements of an n X k array either to themselves or to exactly one king-move neighbor.

The programs for A220644, there is no canonical definition to state claims against.
-/

/-! ## A220644.P8701159527348609445

`A142467(n)+A001221(A152124(n))`
-/

namespace A220644.P8701159527348609445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142467 n + A001221 (A152124 n).toNat

end

end A220644.P8701159527348609445

/-! ## A220644.P12714173174130749246

`A142597(n+1)+A001221(A152124(n))`
-/

namespace A220644.P12714173174130749246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142597 (n + 1) + A001221 (A152124 n).toNat

end

end A220644.P12714173174130749246

/-! ## A220644.P10348592628059183473

`A322115(n)+A203022(A032559(n+1))`
-/

namespace A220644.P10348592628059183473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322115 n + A203022 (A032559 (n + 1)).toNat

end

end A220644.P10348592628059183473

/-! ## A220644.P4629516631397946473

`A322115(n)+A203022(A061219(n+1))`
-/

namespace A220644.P4629516631397946473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322115 n + A203022 (A061219 (n + 1)).toNat

end

end A220644.P4629516631397946473

/-! ## A220644.P5004295055136634824

`A322115(n)+A001221(A152124(n))*A008459(n)`
-/

namespace A220644.P5004295055136634824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322115 n + A001221 (A152124 n).toNat * A008459 n

end

end A220644.P5004295055136634824

/-!
# A220645: T(n,k): number of binomial coefficients C(n,r), for 0 <= r <= n, divisible by 2^k.

The programs for A220645, there is no canonical definition to state claims against.
-/

/-! ## A220645.P16479544431480401026

`C(A144257(n+1), A040447(A280027(n+1)))`
-/

namespace A220645.P16479544431480401026
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A144257 (n + 1)).toNat (A040447 (A280027 (n + 1)).toNat).toNat

end

end A220645.P16479544431480401026

/-! ## A220645.P10621429033840929106

`A187637((n+1)^A147861(n+1))*A216054(n)`
-/

namespace A220645.P10621429033840929106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187637 (SequenceMachineLib.roundAway ((n + 1 : ℚ) ^ (A147861 (n + 1) : ℤ))).toNat * A216054 n

end

end A220645.P10621429033840929106

/-! ## A220645.P8050016319983420334

`lcm(A008683(A060696(n)), A144257(n+1))`
-/

namespace A220645.P8050016319983420334
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A008683 (A060696 n).toNat) (A144257 (n + 1))

end

end A220645.P8050016319983420334

/-! ## A220645.P15221979878577978907

`A008966(A344116(n+1))*A144257(n+1)`
-/

namespace A220645.P15221979878577978907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008966 (A344116 (n + 1)).toNat * A144257 (n + 1)

end

end A220645.P15221979878577978907

/-! ## A220645.P10504661419091479776

`A144257(n+1)*A361897(A002905(n))`
-/

namespace A220645.P10504661419091479776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144257 (n + 1) * A361897 (A002905 n).toNat

end

end A220645.P10504661419091479776

/-!
# A220646: Number of ways to reciprocally link elements of an n X n array either to themselves or to exactly two king-move neighbors, without 3-loops.

The programs for A220646, there is no canonical definition to state claims against.
-/

/-! ## A220646.P11376647268615039930

`A220652(∑[4*n]+1)`
-/

namespace A220646.P11376647268615039930
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220652 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A220646.P11376647268615039930

/-!
# A220647: Number of ways to reciprocally link elements of an n X 2 array either to themselves or to exactly two king-move neighbors, without 3-loops.

The programs for A220647, the canonical program `A220647.P13047956798937893103` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A220647 has offset 1).

The definition of A220647 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 163 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A220647.P13047956798937893103

`3*a(n-1)+3*a(n-2)+8*a(n-3)-6*a(n-4)` with `a(0)=1, a(1)=4, a(2)=23, a(3)=83`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A220647

/-- `3*a(n-1)+3*a(n-2)+8*a(n-3)-6*a(n-4)` -/
def P13047956798937893103.Spec : Prop :=
  ∀ n, P13047956798937893103.a n = A220647 (n + 1)

theorem P13047956798937893103.correct : P13047956798937893103.Spec := by
  intro n
  simp only [A220647, Nat.add_sub_cancel]

end A220647

/-! ## A220647.P14764473557613816866

`record[ratio[A220652(n+1)]]`
-/

namespace A220647.P14764473557613816866
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220652 (n + 1)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℚ) / (f2 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A220647.P14764473557613816866

namespace A220647

/-- `record[ratio[A220652(n+1)]]` -/
def P14764473557613816866.Spec : Prop :=
  ∀ n, P14764473557613816866.a n = (A220647 (n + 1) : ℚ)

end A220647

/-! ## A220647.P34814833573602772

`A220652(∑[n+1]+2)`
-/

namespace A220647.P34814833573602772
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220652 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A220647.P34814833573602772

namespace A220647

/-- `A220652(∑[n+1]+2)` -/
def P34814833573602772.Spec : Prop :=
  ∀ n, P34814833573602772.a n = A220647 (n + 1)

end A220647

/-! ## A220647.P1484262750256055725

`record[A220652(n+1)/A283674(n)]`
-/

namespace A220647.P1484262750256055725
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A220652 (n + 1) : ℚ) / (A283674 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A220647.P1484262750256055725

namespace A220647

/-- `record[A220652(n+1)/A283674(n)]` -/
def P1484262750256055725.Spec : Prop :=
  ∀ n, P1484262750256055725.a n = (A220647 (n + 1) : ℚ)

end A220647

/-! ## A220647.P16515150596683306066

`record[A220652(n+1)/A288972(n)]`
-/

namespace A220647.P16515150596683306066
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A220652 (n + 1) : ℚ) / (A288972 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A220647.P16515150596683306066

namespace A220647

/-- `record[A220652(n+1)/A288972(n)]` -/
def P16515150596683306066.Spec : Prop :=
  ∀ n, P16515150596683306066.a n = (A220647 (n + 1) : ℚ)

end A220647

/-!
# A220648: Number of ways to reciprocally link elements of an nX3 array either to themselves or to exactly two king-move neighbors, without 3-loops.

The programs for A220648, there is no canonical definition to state claims against.
-/

/-! ## A220648.P8285587288641655928

`A220652(∑[n+2]+4)`
-/

namespace A220648.P8285587288641655928
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220652 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A220648.P8285587288641655928

/-! ## A220648.P12930486791502457302

`A220652(A167614(n+1))+A025469(n)`
-/

namespace A220648.P12930486791502457302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220652 (A167614 (n + 1)).toNat + A025469 n

end

end A220648.P12930486791502457302

/-! ## A220648.P7926193249757567641

`A068045(n)*A220652(A167614(n+1))`
-/

namespace A220648.P7926193249757567641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068045 n * A220652 (A167614 (n + 1)).toNat

end

end A220648.P7926193249757567641

/-! ## A220648.P18130926316362029166

`or(A063524(n), A220652(A167614(n+1)))`
-/

namespace A220648.P18130926316362029166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A063524 n) (A220652 (A167614 (n + 1)).toNat)

end

end A220648.P18130926316362029166

/-! ## A220648.P3765203413958822312

`A178688(n+1)*A220652(A167614(n+1))`
-/

namespace A220648.P3765203413958822312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178688 (n + 1) * A220652 (A167614 (n + 1)).toNat

end

end A220648.P3765203413958822312

/-!
# A220649: Number of ways to reciprocally link elements of an nX4 array either to themselves or to exactly two king-move neighbors, without 3-loops.

The programs for A220649, there is no canonical definition to state claims against.
-/

/-! ## A220649.P822315687230028186

`A220652(∑[n+3]+7)`
-/

namespace A220649.P822315687230028186
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220652 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A220649.P822315687230028186

/-! ## A220649.P3125031611439716743

`A220652(A000124(n+3)+3)+A008683(20*n+48)`
-/

namespace A220649.P3125031611439716743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220652 (A000124 (n + 3) + 3).toNat + A008683 (20 * n + 48)

end

end A220649.P3125031611439716743

/-! ## A220649.P9610812478832284063

`record[A220652(A055998(val(n+1, 2)+1))]`
-/

namespace A220649.P9610812478832284063
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220652 (A055998 (SequenceMachineLib.valuation (n + 1) 2 + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A220649.P9610812478832284063

/-! ## A220649.P3249321037273254638

`A338653(n+1)+A220652(A056000(n)+7)`
-/

namespace A220649.P3249321037273254638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338653 (n + 1) + A220652 (A056000 n + 7).toNat

end

end A220649.P3249321037273254638

/-!
# A220650: Number of ways to reciprocally link elements of an nX5 array either to themselves or to exactly two king-move neighbors, without 3-loops.

The programs for A220650, there is no canonical definition to state claims against.
-/

/-! ## A220650.P2645265935569006941

`A220652(A374005(n+1))`
-/

namespace A220650.P2645265935569006941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220652 (A374005 (n + 1)).toNat

end

end A220650.P2645265935569006941

/-! ## A220650.P7616591959440766532

`A220652(A155212(n)+13)`
-/

namespace A220650.P7616591959440766532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220652 (A155212 n + 13).toNat

end

end A220650.P7616591959440766532

/-! ## A220650.P15676138348041475072

`A220652(A056000(n)+15)`
-/

namespace A220650.P15676138348041475072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220652 (A056000 n + 15).toNat

end

end A220650.P15676138348041475072

/-! ## A220650.P13698019992368094176

`A220652(eq[7, A066657(n)])`
-/

namespace A220650.P13698019992368094176
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220652 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A220650.P13698019992368094176

/-! ## A220650.P8197676242562300029

`A220652(eq[6, A131818(n+1)])`
-/

namespace A220650.P8197676242562300029
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220652 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A220650.P8197676242562300029

/-!
# A220651: Number of ways to reciprocally link elements of an nX6 array either to themselves or to exactly two king-move neighbors, without 3-loops.

The programs for A220651, there is no canonical definition to state claims against.
-/

/-! ## A220651.P15750349122669699572

`A220652(A374007(n+1))`
-/

namespace A220651.P15750349122669699572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220652 (A374007 (n + 1)).toNat

end

end A220651.P15750349122669699572

/-! ## A220651.P2443695804570880037

`A220652(eq[6, A200370(n+1)])`
-/

namespace A220651.P2443695804570880037
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220652 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A220651.P2443695804570880037

/-!
# A220652: T(n,k)=Number of ways to reciprocally link elements of an nXk array either to themselves or to exactly two king-move neighbors, without 3-loops.

The programs for A220652, there is no canonical definition to state claims against.
-/

/-! ## A220652.P14045323062986713236

`A108408(A118185(n))`
-/

namespace A220652.P14045323062986713236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108408 (A118185 n).toNat

end

end A220652.P14045323062986713236

/-! ## A220652.P853020026753597447

`A129259(A118180(n))`
-/

namespace A220652.P853020026753597447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129259 (A118180 n).toNat

end

end A220652.P853020026753597447

/-! ## A220652.P11302784376238209143

`A097962(A157221(n))`
-/

namespace A220652.P11302784376238209143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097962 (A157221 n).toNat

end

end A220652.P11302784376238209143

/-! ## A220652.P12576179783437916403

`A111801(A173917(n))`
-/

namespace A220652.P12576179783437916403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111801 (A173917 n).toNat

end

end A220652.P12576179783437916403

/-! ## A220652.P8613405119992139279

`A111801(A174410(n))`
-/

namespace A220652.P8613405119992139279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111801 (A174410 n).toNat

end

end A220652.P8613405119992139279

/-!
# A220653: a(n) = n^11 + 11*n + 11^n.

The programs for A220653, the canonical program `A220653.P8930853530087306537` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A220653 has offset 0).

The definition of A220653 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n^11+11*n+11^n` (program `A220653.P8930853530087306537`, by `A220653.P8930853530087306537.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A220653.P8930853530087306537

`n^11+11*n+11^n`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A220653

/-- `n^11+11*n+11^n` -/
def P8930853530087306537.Spec : Prop :=
  ∀ n, (P8930853530087306537.a n : ℤ) = A220653 n

theorem P8930853530087306537.correct : P8930853530087306537.Spec := by
  intro n
  simp only [A220653]

end A220653

/-! ## A220653.P8264451108433071370

`xor(1, xor(1, A177069(n)+A008593(n)))`
-/

namespace A220653.P8264451108433071370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (Int.xor 1 (A177069 n + A008593 n))

end

end A220653.P8264451108433071370

namespace A220653

/-- `xor(1, xor(1, A177069(n)+A008593(n)))` -/
def P8264451108433071370.Spec : Prop :=
  ∀ n, P8264451108433071370.a n = A220653 n

end A220653

/-! ## A220653.P9141551370601654231

`gcd(A177069(n)+A008593(n), A000038(n))`
-/

namespace A220653.P9141551370601654231
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A177069 n + A008593 n) (A000038 n)

end

end A220653.P9141551370601654231

namespace A220653

/-- `gcd(A177069(n)+A008593(n), A000038(n))` -/
def P9141551370601654231.Spec : Prop :=
  ∀ n, (P9141551370601654231.a n : ℤ) = A220653 n

end A220653

/-! ## A220653.P15572845295893553485

`(A177069(n)+A008593(n))/A209972(∑[n])`
-/

namespace A220653.P15572845295893553485
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A177069 n + A008593 n : ℚ) / (A209972 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ)

end

end A220653.P15572845295893553485

namespace A220653

/-- `(A177069(n)+A008593(n))/A209972(∑[n])` -/
def P15572845295893553485.Spec : Prop :=
  ∀ n, P15572845295893553485.a n = (A220653 n : ℚ)

end A220653

/-! ## A220653.P18163115659686527168

`(A177069(n)+A008593(n))^(A000007(n)+1)`
-/

namespace A220653.P18163115659686527168
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A177069 n + A008593 n : ℚ) ^ (A000007 n + 1 : ℤ)

end

end A220653.P18163115659686527168

namespace A220653

/-- `(A177069(n)+A008593(n))^(A000007(n)+1)` -/
def P18163115659686527168.Spec : Prop :=
  ∀ n, P18163115659686527168.a n = (A220653 n : ℚ)

end A220653

/-! ## A220653.P6280637006414667067

`(A177069(n)+A008593(n))*(A000027(n+1)-n)`
-/

namespace A220653.P6280637006414667067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A177069 n + A008593 n) * (A000027 (n + 1) - (n : ℤ))

end

end A220653.P6280637006414667067

namespace A220653

/-- `(A177069(n)+A008593(n))*(A000027(n+1)-n)` -/
def P6280637006414667067.Spec : Prop :=
  ∀ n, P6280637006414667067.a n = A220653 n

theorem P6280637006414667067.correct : P6280637006414667067.Spec := by
  intro n
  simp only [A220653, Nat.add_sub_cancel, A220653.P6280637006414667067.a, A220653.P8930853530087306537.a, A000027, A000027.P10331202704469894836.a, A008593, A008593.P2680892499938115192.a, A177069, A177069.P3989821419646162598.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A220653

/-! ## A220653.P15061918470768661853

`(A177069(n)+A008593(n))*A014963(∑[n+1])%2`
-/

namespace A220653.P15061918470768661853
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A177069 n + A008593 n) * Int.tmod (A014963 (∑ j ∈ Finset.range (n + 1), f1 j)) 2

end

end A220653.P15061918470768661853

namespace A220653

/-- `(A177069(n)+A008593(n))*A014963(∑[n+1])%2` -/
def P15061918470768661853.Spec : Prop :=
  ∀ n, P15061918470768661853.a n = A220653 n

end A220653

/-! ## A220653.P13840778504802112009

`(A177069(n)+A008593(n))*(A102731(n+1)+3)%2`
-/

namespace A220653.P13840778504802112009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A177069 n + A008593 n) * Int.tmod (A102731 (n + 1) + 3) 2

end

end A220653.P13840778504802112009

namespace A220653

/-- `(A177069(n)+A008593(n))*(A102731(n+1)+3)%2` -/
def P13840778504802112009.Spec : Prop :=
  ∀ n, P13840778504802112009.a n = A220653 n

end A220653

/-!
# A220655: For n with a unique factorial base representation n = du*u! + ... + d2*2! + d1*1! (each di in range 0..i, cf. A007623), a(n) = (du+1)*u! + ... + (d2+1)*2! + (d1+1)*1!; a(n) = n + A007489(A084558(n)).

The programs for A220655, the canonical program `A220655.P11527760965549802027` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A220655 has offset 1).

The definition of A220655 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A084558, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A220655.P7984019191904281125

`A220656(n+1)-1`
-/

namespace A220655.P7984019191904281125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220656 (n + 1) - 1

end

end A220655.P7984019191904281125

namespace A220655

/-- `A220656(n+1)-1` -/
def P7984019191904281125.Spec : Prop :=
  ∀ n, P7984019191904281125.a n = A220655 (n + 1)

theorem P7984019191904281125.correct : P7984019191904281125.Spec := by
  intro n
  simp only [A220655, Nat.add_sub_cancel, A220655.P7984019191904281125.a, A220655.P11527760965549802027.a, A007489, A007489.P15792115020538832421.a, A084558, A084558.P8374569854218058976.a, A220656, A220656.P9197403006323816996.a, A090529, A090529.P4680555822996673914.f1, A090529.P4680555822996673914.a, A316341, A316341.P9571797849802737273.a, A012245, A012245.P11587607485183547821.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A220655

/-! ## A220655.P11527760965549802027

`n+1+A007489(A084558(n+1))`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A220655

/-- `n+1+A007489(A084558(n+1))` -/
def P11527760965549802027.Spec : Prop :=
  ∀ n, P11527760965549802027.a n = A220655 (n + 1)

theorem P11527760965549802027.correct : P11527760965549802027.Spec := by
  intro n
  simp only [A220655, Nat.add_sub_cancel]

end A220655

/-! ## A220655.P18008336423105943605

`∑[(n+1)*char[A033312(n)]+1]`
-/

namespace A220655.P18008336423105943605
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033312 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * (if ∃ j, f2 j = (n : ℤ) then 1 else 0) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A220655.P18008336423105943605

namespace A220655

/-- `∑[(n+1)*char[A033312(n)]+1]` -/
def P18008336423105943605.Spec : Prop :=
  ∀ n, (P18008336423105943605.a n : ℤ) = A220655 (n + 1)

end A220655

/-! ## A220655.P4684262987515289217

`∑[(n+1)*char[n!-1]+1]+1-A010051(A000040(n+1))`
-/

namespace A220655.P4684262987515289217
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * (if ∃ j, f2 j = (n : ℤ) then 1 else 0) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j + 1 : ℕ) : ℤ) - A010051 (A000040 (n + 1)).toNat

end

end A220655.P4684262987515289217

namespace A220655

/-- `∑[(n+1)*char[n!-1]+1]+1-A010051(A000040(n+1))` -/
def P4684262987515289217.Spec : Prop :=
  ∀ n, P4684262987515289217.a n = A220655 (n + 1)

end A220655

/-! ## A220655.P7418549474022734781

`A023443(A220656(n+1))`
-/

namespace A220655.P7418549474022734781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A220656 (n + 1)).toNat

end

end A220655.P7418549474022734781

namespace A220655

/-- `A023443(A220656(n+1))` -/
def P7418549474022734781.Spec : Prop :=
  ∀ n, P7418549474022734781.a n = A220655 (n + 1)

end A220655

/-! ## A220655.P16857662312493513382

`∑[(n+1)*char[n!-1]+1]+1-A010051(A079366(n))`
-/

namespace A220655.P16857662312493513382
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * (if ∃ j, f2 j = (n : ℤ) then 1 else 0) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j + 1 : ℕ) : ℤ) - A010051 (A079366 n).toNat

end

end A220655.P16857662312493513382

namespace A220655

/-- `∑[(n+1)*char[n!-1]+1]+1-A010051(A079366(n))` -/
def P16857662312493513382.Spec : Prop :=
  ∀ n, P16857662312493513382.a n = A220655 (n + 1)

end A220655

/-! ## A220655.P18048173718689591395

`∑[(n+1)*char[n!-1]+1]+1-A010051(A052034(n+1))`
-/

namespace A220655.P18048173718689591395
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * (if ∃ j, f2 j = (n : ℤ) then 1 else 0) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j + 1 : ℕ) : ℤ) - A010051 (A052034 (n + 1)).toNat

end

end A220655.P18048173718689591395

namespace A220655

/-- `∑[(n+1)*char[n!-1]+1]+1-A010051(A052034(n+1))` -/
def P18048173718689591395.Spec : Prop :=
  ∀ n, P18048173718689591395.a n = A220655 (n + 1)

end A220655

/-!
# A220656: The positions of those permutations in A030298 where the first element is not fixed.

The programs for A220656, the canonical program `A220656.P9197403006323816996` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A220656 has offset 1).

The definition of A220656 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A220655, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A220656.P9197403006323816996

`A220655(n+1)+1`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A220656

/-- `A220655(n+1)+1` -/
def P9197403006323816996.Spec : Prop :=
  ∀ n, P9197403006323816996.a n = A220656 (n + 1)

theorem P9197403006323816996.correct : P9197403006323816996.Spec := by
  intro n
  simp only [A220656, Nat.add_sub_cancel]

end A220656

/-! ## A220656.P17590880874106240567

`∑[(n+1)*char[n!-1]+1]+1`
-/

namespace A220656.P17590880874106240567
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * (if ∃ j, f2 j = (n : ℤ) then 1 else 0) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A220656.P17590880874106240567

namespace A220656

/-- `∑[(n+1)*char[n!-1]+1]+1` -/
def P17590880874106240567.Spec : Prop :=
  ∀ n, (P17590880874106240567.a n : ℤ) = A220656 (n + 1)

end A220656

/-! ## A220656.P2084308620537583063

`∑[(n+1)*char[A033312(n)]+1]+1`
-/

namespace A220656.P2084308620537583063
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033312 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * (if ∃ j, f2 j = (n : ℤ) then 1 else 0) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A220656.P2084308620537583063

namespace A220656

/-- `∑[(n+1)*char[A033312(n)]+1]+1` -/
def P2084308620537583063.Spec : Prop :=
  ∀ n, (P2084308620537583063.a n : ℤ) = A220656 (n + 1)

end A220656

/-! ## A220656.P3297785453942678510

`A020725(A220655(n+1))`
-/

namespace A220656.P3297785453942678510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A220655 (n + 1)).toNat

end

end A220656.P3297785453942678510

namespace A220656

/-- `A020725(A220655(n+1))` -/
def P3297785453942678510.Spec : Prop :=
  ∀ n, P3297785453942678510.a n = A220656 (n + 1)

end A220656

/-! ## A220656.P920196901808931746

`lt[A070165(A121018(n)), A266694(n+1)]`
-/

namespace A220656.P920196901808931746
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070165 (A121018 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266694 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A220656.P920196901808931746

namespace A220656

/-- `lt[A070165(A121018(n)), A266694(n+1)]` -/
def P920196901808931746.Spec : Prop :=
  ∀ n, (P920196901808931746.a n : ℤ) = A220656 (n + 1)

end A220656

/-!
# A220657: Partial sums of A084558+1.

The programs for A220657, the canonical program `A220657.P9286795137617368048` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A220657 has offset 0).

The definition of A220657 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A220657.P9286795137617368048

`∑[∑[char[n!+1]]]+n`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A220657

/-- `∑[∑[char[n!+1]]]+n` -/
def P9286795137617368048.Spec : Prop :=
  ∀ n, (P9286795137617368048.a n : ℤ) = A220657 n

theorem P9286795137617368048.correct : P9286795137617368048.Spec := by
  intro n
  simp only [A220657]

end A220657

/-! ## A220657.P16644832576924898315

`∑[∑[char[∏[n+1]+1]]]+n`
-/

namespace A220657.P16644832576924898315
noncomputable section

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f4 j + 1

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = n then 1 else 0

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + n

end

end A220657.P16644832576924898315

namespace A220657

/-- `∑[∑[char[∏[n+1]+1]]]+n` -/
def P16644832576924898315.Spec : Prop :=
  ∀ n, (P16644832576924898315.a n : ℤ) = A220657 n

end A220657

/-! ## A220657.P5948602068394374970

`∑[∑[char[n*a(n-1)-(n-1)]]]` with `a(0)=1, a(1)=2`
-/

namespace A220657.P5948602068394374970
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n f3 =>
  (n : ℤ) * f3 (n - 1) - ((n : ℤ) - 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A220657.P5948602068394374970

namespace A220657

/-- `∑[∑[char[n*a(n-1)-(n-1)]]]` -/
def P5948602068394374970.Spec : Prop :=
  ∀ n, (P5948602068394374970.a n : ℤ) = A220657 n

end A220657

/-! ## A220657.P13009121691744082870

`∑[comp[(n+1-2%(n+1))!+n]-n]`
-/

namespace A220657.P13009121691744082870
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial ((n + 1 : ℤ) - ((2 % (n + 1) : ℕ) : ℤ)).toNat + n

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n : ℤ) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A220657.P13009121691744082870

namespace A220657

/-- `∑[comp[(n+1-2%(n+1))!+n]-n]` -/
def P13009121691744082870.Spec : Prop :=
  ∀ n, P13009121691744082870.a n = A220657 n

end A220657

/-! ## A220657.P1643738869799421081

`∑[∑[char[A185387(n)]]]`
-/

namespace A220657.P1643738869799421081
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185387 n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A220657.P1643738869799421081

namespace A220657

/-- `∑[∑[char[A185387(n)]]]` -/
def P1643738869799421081.Spec : Prop :=
  ∀ n, (P1643738869799421081.a n : ℤ) = A220657 n

end A220657

/-! ## A220657.P8408755140891432116

`eq[0, A220659(n)]`
-/

namespace A220657.P8408755140891432116
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220659 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A220657.P8408755140891432116

namespace A220657

/-- `eq[0, A220659(n)]` -/
def P8408755140891432116.Spec : Prop :=
  ∀ n, (P8408755140891432116.a n : ℤ) = A220657 n

end A220657

/-!
# A220658: Irregular table, where the n-th row consists of A084558(n)+1 copies of n.

The programs for A220658, the canonical program `A220658.P15188727499207436021` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A220658 has offset 0).

The definition of A220658 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A220658.P15188727499207436021

`∑[char[∑[comp[(n+1)!+n]-n+1]]]`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A220658

/-- `∑[char[∑[comp[(n+1)!+n]-n+1]]]` -/
def P15188727499207436021.Spec : Prop :=
  ∀ n, (P15188727499207436021.a n : ℤ) = A220658 n

theorem P15188727499207436021.correct : P15188727499207436021.Spec := by
  intro n
  simp only [A220658]

end A220658

/-! ## A220658.P4226855959064589177

`∑[char[A220657(n+1)]]`
-/

namespace A220658.P4226855959064589177
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220657 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A220658.P4226855959064589177

namespace A220658

/-- `∑[char[A220657(n+1)]]` -/
def P4226855959064589177.Spec : Prop :=
  ∀ n, (P4226855959064589177.a n : ℤ) = A220658 n

end A220658

/-! ## A220658.P5392909316502720440

`∑[char[A220657(n)]]-1`
-/

namespace A220658.P5392909316502720440
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220657 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1

end

end A220658.P5392909316502720440

namespace A220658

/-- `∑[char[A220657(n)]]-1` -/
def P5392909316502720440.Spec : Prop :=
  ∀ n, P5392909316502720440.a n = A220658 n

end A220658

/-! ## A220658.P16523542697118829917

`∑[char[∑[A084558(n)+1]]]`
-/

namespace A220658.P16523542697118829917
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084558 n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A220658.P16523542697118829917

namespace A220658

/-- `∑[char[∑[A084558(n)+1]]]` -/
def P16523542697118829917.Spec : Prop :=
  ∀ n, (P16523542697118829917.a n : ℤ) = A220658 n

end A220658

/-! ## A220658.P6678045054524591379

`∑[char[∑[A090529(n+1)]]]`
-/

namespace A220658.P6678045054524591379
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090529 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A220658.P6678045054524591379

namespace A220658

/-- `∑[char[∑[A090529(n+1)]]]` -/
def P6678045054524591379.Spec : Prop :=
  ∀ n, (P6678045054524591379.a n : ℤ) = A220658 n

end A220658

/-! ## A220658.P5370713336509505118

`∑[A220659(a(A220659(n)))]-4` with `a(0)=4`
-/

namespace A220658.P5370713336509505118
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [4] fun n f1 =>
  A220659 (f1 (A220659 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 4

end

end A220658.P5370713336509505118

namespace A220658

/-- `∑[A220659(a(A220659(n)))]-4` -/
def P5370713336509505118.Spec : Prop :=
  ∀ n, P5370713336509505118.a n = A220658 n

end A220658

/-! ## A220658.P3964203730816589562

`A003056(eq[A219502(n+6), A219704(n+6)])`
-/

namespace A220658.P3964203730816589562
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219502 (n + 6)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219704 (n + 6)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A220658.P3964203730816589562

namespace A220658

/-- `A003056(eq[A219502(n+6), A219704(n+6)])` -/
def P3964203730816589562.Spec : Prop :=
  ∀ n, P3964203730816589562.a n = A220658 n

end A220658

/-! ## A220658.P13550026802491895600

`A003056(eq[A281955(n+6), A316183(n+6)])`
-/

namespace A220658.P13550026802491895600
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281955 (n + 6)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316183 (n + 6)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A220658.P13550026802491895600

namespace A220658

/-- `A003056(eq[A281955(n+6), A316183(n+6)])` -/
def P13550026802491895600.Spec : Prop :=
  ∀ n, P13550026802491895600.a n = A220658 n

end A220658

/-! ## A220658.P6165322643351032374

`floor(log2(A364565(n+1)))`
-/

namespace A220658.P6165322643351032374
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.log 2 (A364565 (n + 1)).toNat

end

end A220658.P6165322643351032374

namespace A220658

/-- `floor(log2(A364565(n+1)))` -/
def P6165322643351032374.Spec : Prop :=
  ∀ n, (P6165322643351032374.a n : ℤ) = A220658 n

end A220658

/-!
# A220659: Irregular table: row n (n >= 1) consists of numbers 0..A084558(n).

The programs for A220659, the canonical program `A220659.P8935711005901037654` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A220659 has offset 0).

The definition of A220659 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A220657, A220658, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A220659.P8935711005901037654

`n-A220657(A220658(n))`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A220659

/-- `n-A220657(A220658(n))` -/
def P8935711005901037654.Spec : Prop :=
  ∀ n, P8935711005901037654.a n = A220659 n

theorem P8935711005901037654.correct : P8935711005901037654.Spec := by
  intro n
  simp only [A220659]

end A220659

/-! ## A220659.P1704398194699520005

`A220663(A220655(n+1)-1)`
-/

namespace A220659.P1704398194699520005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220663 (A220655 (n + 1) - 1).toNat

end

end A220659.P1704398194699520005

namespace A220659

/-- `A220663(A220655(n+1)-1)` -/
def P1704398194699520005.Spec : Prop :=
  ∀ n, P1704398194699520005.a n = A220659 n

end A220659

/-! ## A220659.P15540713797725364553

`A220663(A220656(n+1)-2)`
-/

namespace A220659.P15540713797725364553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220663 (A220656 (n + 1) - 2).toNat

end

end A220659.P15540713797725364553

namespace A220659

/-- `A220663(A220656(n+1)-2)` -/
def P15540713797725364553.Spec : Prop :=
  ∀ n, P15540713797725364553.a n = A220659 n

end A220659

/-! ## A220659.P2596827485887831151

`A220663(2*n+1-A220660(n+2))`
-/

namespace A220659.P2596827485887831151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220663 ((2 * n + 1 : ℤ) - A220660 (n + 2)).toNat

end

end A220659.P2596827485887831151

namespace A220659

/-- `A220663(2*n+1-A220660(n+2))` -/
def P2596827485887831151.Spec : Prop :=
  ∀ n, P2596827485887831151.a n = A220659 n

end A220659

/-! ## A220659.P7384617958931390513

`-(A220657(A220658(n))+A001489(n))`
-/

namespace A220659.P7384617958931390513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(A220657 (A220658 n).toNat + A001489 n)

end

end A220659.P7384617958931390513

namespace A220659

/-- `-(A220657(A220658(n))+A001489(n))` -/
def P7384617958931390513.Spec : Prop :=
  ∀ n, P7384617958931390513.a n = A220659 n

theorem P7384617958931390513.correct : P7384617958931390513.Spec := by
  intro n
  simp only [A220659, Nat.add_sub_cancel, A220659.P7384617958931390513.a, A220659.P8935711005901037654.a, A001489, A001489.P15233530513763566776.a, A220657, A220657.P9286795137617368048.f3, A220657.P9286795137617368048.f2, A220657.P9286795137617368048.f1, A220657.P9286795137617368048.a, A220658, A220658.P15188727499207436021.f4, A220658.P15188727499207436021.f3, A220658.P15188727499207436021.f2, A220658.P15188727499207436021.f1, A220658.P15188727499207436021.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A220659

/-! ## A220659.P7237604716297587012

`A212278(p?[A007059(A002262(n))])`
-/

namespace A220659.P7237604716297587012
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007059 (A002262 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212278 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A220659.P7237604716297587012

namespace A220659

/-- `A212278(p?[A007059(A002262(n))])` -/
def P7237604716297587012.Spec : Prop :=
  ∀ n, P7237604716297587012.a n = A220659 n

end A220659

/-! ## A220659.P18385810644707717196

`A292342(p?[A228646(A002260(n+1))])`
-/

namespace A220659.P18385810644707717196
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228646 (A002260 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292342 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A220659.P18385810644707717196

namespace A220659

/-- `A292342(p?[A228646(A002260(n+1))])` -/
def P18385810644707717196.Spec : Prop :=
  ∀ n, P18385810644707717196.a n = A220659 n

end A220659

/-!
# A220660: Irregular table, where the n-th row consists of numbers 0..(n!-1).

The programs for A220660, there is no canonical definition to state claims against.
-/

/-! ## A220660.P13572891845451711253

`A220661(n+1)-1`
-/

namespace A220660.P13572891845451711253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220661 (n + 1) - 1

end

end A220660.P13572891845451711253

/-!
# A220661: Irregular table, where the n-th row consists of numbers 1..n!

The programs for A220661, there is no canonical definition to state claims against.
-/

/-! ## A220661.P7112632990184109679

`A220660(n+1)+1`
-/

namespace A220661.P7112632990184109679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220660 (n + 1) + 1

end

end A220661.P7112632990184109679

/-!
# A220662: Irregular table: row n (n>=1) consists of A084556(n) copies of A130664(n).

The programs for A220662, the canonical program `A220662.P9996294767845325282` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A220662 has offset 1).

The definition of A220662 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5914 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A220662.P14688581727996252473

`1-A220663(n+1)+n`
-/

namespace A220662.P14688581727996252473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A220663 (n + 1) + (n : ℤ)

end

end A220662.P14688581727996252473

namespace A220662

/-- `1-A220663(n+1)+n` -/
def P14688581727996252473.Spec : Prop :=
  ∀ n, P14688581727996252473.a n = A220662 (n + 1)

theorem P14688581727996252473.correct : P14688581727996252473.Spec := by
  intro n
  simp only [A220662, Nat.add_sub_cancel, A220662.P14688581727996252473.a, A220662.P9996294767845325282.a, A084558, A084558.P8374569854218058976.a, A220663, A220663.P5128857220396618442.a, A090529, A090529.P4680555822996673914.f1, A090529.P4680555822996673914.a, A316341, A316341.P9571797849802737273.a, A012245, A012245.P11587607485183547821.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A220662

/-! ## A220662.P17576724163578874937

`2-A220694(n+1)+n`
-/

namespace A220662.P17576724163578874937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A220694 (n + 1) + (n : ℤ)

end

end A220662.P17576724163578874937

namespace A220662

/-- `2-A220694(n+1)+n` -/
def P17576724163578874937.Spec : Prop :=
  ∀ n, P17576724163578874937.a n = A220662 (n + 1)

theorem P17576724163578874937.correct : P17576724163578874937.Spec := by
  intro n
  simp only [A220662, Nat.add_sub_cancel, A220662.P17576724163578874937.a, A220662.P9996294767845325282.a, A084558, A084558.P8374569854218058976.a, A220694, A220694.P2534427273062471700.a, A090529, A090529.P4680555822996673914.f1, A090529.P4680555822996673914.a, A220663, A220663.P5128857220396618442.a, A316341, A316341.P9571797849802737273.a, A012245, A012245.P11587607485183547821.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A220662

/-! ## A220662.P9996294767845325282

`1-(n+1)%A084558(n+1)+n`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A220662

/-- `1-(n+1)%A084558(n+1)+n` -/
def P9996294767845325282.Spec : Prop :=
  ∀ n, P9996294767845325282.a n = A220662 (n + 1)

theorem P9996294767845325282.correct : P9996294767845325282.Spec := by
  intro n
  simp only [A220662, Nat.add_sub_cancel]

end A220662

/-! ## A220662.P624693170213290720

`A130664(∑[char[A130664(n+1)-1]])`
-/

namespace A220662.P624693170213290720
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130664 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130664 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A220662.P624693170213290720

namespace A220662

/-- `A130664(∑[char[A130664(n+1)-1]])` -/
def P624693170213290720.Spec : Prop :=
  ∀ n, P624693170213290720.a n = A220662 (n + 1)

end A220662

/-!
# A220663: Irregular table: row n (n>=1) consists of numbers 0..A084556(n)-1.

The programs for A220663, the canonical program `A220663.P5128857220396618442` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A220663 has offset 1).

The definition of A220663 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A220662, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A220663.P4089984730599232157

`A220694(n+1)-1`
-/

namespace A220663.P4089984730599232157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220694 (n + 1) - 1

end

end A220663.P4089984730599232157

namespace A220663

/-- `A220694(n+1)-1` -/
def P4089984730599232157.Spec : Prop :=
  ∀ n, P4089984730599232157.a n = A220663 (n + 1)

theorem P4089984730599232157.correct : P4089984730599232157.Spec := by
  intro n
  simp only [A220663, Nat.add_sub_cancel, A220663.P4089984730599232157.a, A220663.P5128857220396618442.a, A220662, A220662.P9996294767845325282.a, A220694, A220694.P2534427273062471700.a, A084558, A084558.P8374569854218058976.a, A090529, A090529.P4680555822996673914.f1, A090529.P4680555822996673914.a, A316341, A316341.P9571797849802737273.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A220663

/-! ## A220663.P5128857220396618442

`n+1-A220662(n+1)`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A220663

/-- `n+1-A220662(n+1)` -/
def P5128857220396618442.Spec : Prop :=
  ∀ n, P5128857220396618442.a n = A220663 (n + 1)

theorem P5128857220396618442.correct : P5128857220396618442.Spec := by
  intro n
  simp only [A220663, Nat.add_sub_cancel]

end A220663

/-! ## A220663.P11756403711631077196

`(n+1)%∑[char[n!-1]]`
-/

namespace A220663.P11756403711631077196
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) % (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A220663.P11756403711631077196

namespace A220663

/-- `(n+1)%∑[char[n!-1]]` -/
def P11756403711631077196.Spec : Prop :=
  ∀ n, (P11756403711631077196.a n : ℤ) = A220663 (n + 1)

end A220663

/-! ## A220663.P851616540847117794

`(n+1)%A084558(n+1)`
-/

namespace A220663.P851616540847117794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 1 : ℤ) (A084558 (n + 1))

end

end A220663.P851616540847117794

namespace A220663

/-- `(n+1)%A084558(n+1)` -/
def P851616540847117794.Spec : Prop :=
  ∀ n, P851616540847117794.a n = A220663 (n + 1)

theorem P851616540847117794.correct : P851616540847117794.Spec := by
  intro n
  simp only [A220663, Nat.add_sub_cancel, A220663.P851616540847117794.a, A220663.P5128857220396618442.a, A084558, A084558.P8374569854218058976.a, A220662, A220662.P9996294767845325282.a, A090529, A090529.P4680555822996673914.f1, A090529.P4680555822996673914.a, A316341, A316341.P9571797849802737273.a, A012245, A012245.P11587607485183547821.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A220663

/-! ## A220663.P16944951774343738960

`A000027(n+1)%A220662(n+1)`
-/

namespace A220663.P16944951774343738960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000027 (n + 1)) (A220662 (n + 1))

end

end A220663.P16944951774343738960

namespace A220663

/-- `A000027(n+1)%A220662(n+1)` -/
def P16944951774343738960.Spec : Prop :=
  ∀ n, P16944951774343738960.a n = A220663 (n + 1)

end A220663

/-! ## A220663.P11001367406176031299

`A127229(n+5)%A220694(n+1)`
-/

namespace A220663.P11001367406176031299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A127229 (n + 5)) (A220694 (n + 1))

end

end A220663.P11001367406176031299

namespace A220663

/-- `A127229(n+5)%A220694(n+1)` -/
def P11001367406176031299.Spec : Prop :=
  ∀ n, P11001367406176031299.a n = A220663 (n + 1)

end A220663

/-! ## A220663.P15042769947114954668

`A153823(n)%A220694(n+1)`
-/

namespace A220663.P15042769947114954668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A153823 n) (A220694 (n + 1))

end

end A220663.P15042769947114954668

namespace A220663

/-- `A153823(n)%A220694(n+1)` -/
def P15042769947114954668.Spec : Prop :=
  ∀ n, P15042769947114954668.a n = A220663 (n + 1)

end A220663

/-! ## A220663.P8544465505413087789

`A083800(n+1)%A220694(n+1)`
-/

namespace A220663.P8544465505413087789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A083800 (n + 1)) (A220694 (n + 1))

end

end A220663.P8544465505413087789

namespace A220663

/-- `A083800(n+1)%A220694(n+1)` -/
def P8544465505413087789.Spec : Prop :=
  ∀ n, P8544465505413087789.a n = A220663 (n + 1)

end A220663

/-! ## A220663.P7395422116754424440

`A070198(n)%A220694(n+1)`
-/

namespace A220663.P7395422116754424440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A070198 n) (A220694 (n + 1))

end

end A220663.P7395422116754424440

namespace A220663

/-- `A070198(n)%A220694(n+1)` -/
def P7395422116754424440.Spec : Prop :=
  ∀ n, P7395422116754424440.a n = A220663 (n + 1)

end A220663

/-! ## A220663.P736918242080560372

`A060401(n+1)%A220662(n+1)`
-/

namespace A220663.P736918242080560372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A060401 (n + 1)) (A220662 (n + 1))

end

end A220663.P736918242080560372

namespace A220663

/-- `A060401(n+1)%A220662(n+1)` -/
def P736918242080560372.Spec : Prop :=
  ∀ n, P736918242080560372.a n = A220663 (n + 1)

end A220663

/-! ## A220663.P1084641002517476828

`A079782(n+1)%A220694(n+1)`
-/

namespace A220663.P1084641002517476828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A079782 (n + 1)) (A220694 (n + 1))

end

end A220663.P1084641002517476828

namespace A220663

/-- `A079782(n+1)%A220694(n+1)` -/
def P1084641002517476828.Spec : Prop :=
  ∀ n, P1084641002517476828.a n = A220663 (n + 1)

end A220663

/-! ## A220663.P3040883894608380368

`A083685(n+1)%A220694(n+1)`
-/

namespace A220663.P3040883894608380368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A083685 (n + 1)) (A220694 (n + 1))

end

end A220663.P3040883894608380368

namespace A220663

/-- `A083685(n+1)%A220694(n+1)` -/
def P3040883894608380368.Spec : Prop :=
  ∀ n, P3040883894608380368.a n = A220663 (n + 1)

end A220663

/-! ## A220663.P12847498829958343920

`A121934(n+1)%A220694(n+1)`
-/

namespace A220663.P12847498829958343920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A121934 (n + 1)) (A220694 (n + 1))

end

end A220663.P12847498829958343920

namespace A220663

/-- `A121934(n+1)%A220694(n+1)` -/
def P12847498829958343920.Spec : Prop :=
  ∀ n, P12847498829958343920.a n = A220663 (n + 1)

end A220663

/-! ## A220663.P17964643907385596991

`A030494(n+1)%A220694(n+1)`
-/

namespace A220663.P17964643907385596991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A030494 (n + 1)) (A220694 (n + 1))

end

end A220663.P17964643907385596991

namespace A220663

/-- `A030494(n+1)%A220694(n+1)` -/
def P17964643907385596991.Spec : Prop :=
  ∀ n, P17964643907385596991.a n = A220663 (n + 1)

end A220663

/-! ## A220663.P12255656695047034424

`A072828(n+1)%A220694(n+1)`
-/

namespace A220663.P12255656695047034424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A072828 (n + 1)) (A220694 (n + 1))

end

end A220663.P12255656695047034424

namespace A220663

/-- `A072828(n+1)%A220694(n+1)` -/
def P12255656695047034424.Spec : Prop :=
  ∀ n, P12255656695047034424.a n = A220663 (n + 1)

end A220663

/-! ## A220663.P11896712504057645840

`A166046(n)%A220694(n+1)`
-/

namespace A220663.P11896712504057645840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A166046 n) (A220694 (n + 1))

end

end A220663.P11896712504057645840

namespace A220663

/-- `A166046(n)%A220694(n+1)` -/
def P11896712504057645840.Spec : Prop :=
  ∀ n, P11896712504057645840.a n = A220663 (n + 1)

end A220663

/-! ## A220663.P1802436664814465313

`A086827(n+1)%A220694(n+1)`
-/

namespace A220663.P1802436664814465313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A086827 (n + 1)) (A220694 (n + 1))

end

end A220663.P1802436664814465313

namespace A220663

/-- `A086827(n+1)%A220694(n+1)` -/
def P1802436664814465313.Spec : Prop :=
  ∀ n, P1802436664814465313.a n = A220663 (n + 1)

end A220663

/-!
# A220664: First differences of A030299.

The programs for A220664, there is no canonical definition to state claims against.
-/

/-! ## A220664.P6315013842577228305

`A030299(n+2)-A030299(n+1)`
-/

namespace A220664.P6315013842577228305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030299 (n + 2) - A030299 (n + 1)

end

end A220664.P6315013842577228305

/-! ## A220664.P11980514810374884794

`Δ[A030299(n+1)]`
-/

namespace A220664.P11980514810374884794
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030299 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A220664.P11980514810374884794

/-! ## A220664.P12854951810573703975

`Δ[record[A030299(A328399(n))]]`
-/

namespace A220664.P12854951810573703975
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030299 (A328399 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A220664.P12854951810573703975

/-! ## A220664.P614151270066936746

`Δ[record[A030299(A344180(n))]]`
-/

namespace A220664.P614151270066936746
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030299 (A344180 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A220664.P614151270066936746

/-! ## A220664.P6666677006740010305

`Δ[record[A030299(A158416(n))]]`
-/

namespace A220664.P6666677006740010305
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030299 (A158416 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A220664.P6666677006740010305

/-! ## A220664.P10885961919228169093

`Δ[record[A030299(A286558(n))]]`
-/

namespace A220664.P10885961919228169093
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030299 (A286558 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A220664.P10885961919228169093

/-! ## A220664.P3949860427134289991

`Δ[record[A030299(A236858(n))]]`
-/

namespace A220664.P3949860427134289991
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030299 (A236858 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A220664.P3949860427134289991

/-! ## A220664.P8688259521291708560

`Δ[record[A030299(A263275(n))]]`
-/

namespace A220664.P8688259521291708560
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030299 (A263275 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A220664.P8688259521291708560

/-! ## A220664.P13810952116649375790

`Δ[record[A030299(A193739(n))]]`
-/

namespace A220664.P13810952116649375790
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030299 (A193739 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A220664.P13810952116649375790

/-!
# A220668: Coefficient array for the powers of x^2 of the square of the even-indexed Chebyshev C polynomials.

The programs for A220668, there is no canonical definition to state claims against.
-/

/-! ## A220668.P368203594522923630

`A217476(A161983(n)%A005843(n+3))`
-/

namespace A220668.P368203594522923630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217476 (Int.tmod (A161983 n) (A005843 (n + 3))).toNat

end

end A220668.P368203594522923630

/-! ## A220668.P3140114278325133373

`A217476(comp[round(sqrt(n))²+n]-1)`
-/

namespace A220668.P3140114278325133373
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (n : ℝ)) ^ 2 + (n : ℤ)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217476 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n - 1)

end

end A220668.P3140114278325133373

/-!
# A220669: Coefficient array for powers of x^2 of the square of Chebyshev's C(2*n+1,x)/x =: tau(n,x) polynomials.

The programs for A220669, there is no canonical definition to state claims against.
-/

/-! ## A220669.P13597538955226884079

`A110162(A317303(n+1))`
-/

namespace A220669.P13597538955226884079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110162 (A317303 (n + 1)).toNat

end

end A220669.P13597538955226884079

/-! ## A220669.P16458718487953612818

`A007318(∑[n])*A127677(A317303(n+1))`
-/

namespace A220669.P16458718487953612818
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * A127677 (A317303 (n + 1)).toNat

end

end A220669.P16458718487953612818

/-! ## A220669.P16303082902837901888

`A127677(A317303(n+1))+A008683(4*(n+1))`
-/

namespace A220669.P16303082902837901888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127677 (A317303 (n + 1)).toNat + A008683 (4 * (n + 1))

end

end A220669.P16303082902837901888

/-! ## A220669.P2340592594245427350

`A127677(A317303(n+1))/A007318(C(2, n+2))`
-/

namespace A220669.P2340592594245427350
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A127677 (A317303 (n + 1)).toNat : ℚ) / (A007318 (Nat.choose 2 (n + 2)) : ℚ)

end

end A220669.P2340592594245427350

/-! ## A220669.P14496289640799866280

`A127677(A317303(n+1))/A007318(val(n+1, 8))`
-/

namespace A220669.P14496289640799866280
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A127677 (A317303 (n + 1)).toNat : ℚ) / (A007318 (SequenceMachineLib.valuation (n + 1) 8) : ℚ)

end

end A220669.P14496289640799866280

/-!
# A220670: Coefficient triangle for powers of x^2 of polynomials appearing in a generalized Melham conjecture on alternating sums of third powers of Chebyshev's S polynomials with odd indices. Coefficients in powers of x^2 of 2 + (-1)^n*S(2*n,x).

The programs for A220670, there is no canonical definition to state claims against.
-/

/-! ## A220670.P4712400249464479609

`A123970(n)+2*char[∑[n]]`
-/

namespace A220670.P4712400249464479609
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123970 n + ((2 * (if ∃ j, f1 j = n then 1 else 0) : ℕ) : ℤ)

end

end A220670.P4712400249464479609

/-! ## A220670.P14172981879459334402

`or(A089799(n), A123970(n))`
-/

namespace A220670.P14172981879459334402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A089799 n) (A123970 n)

end

end A220670.P14172981879459334402

/-! ## A220670.P14521741404230055141

`A089799(n)+A076756(A061579(n))`
-/

namespace A220670.P14521741404230055141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089799 n + A076756 (A061579 n).toNat

end

end A220670.P14521741404230055141

/-! ## A220670.P13003731447777949815

`or(A000038(A002262(n)), A123970(n))`
-/

namespace A220670.P13003731447777949815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000038 (A002262 n).toNat) (A123970 n)

end

end A220670.P13003731447777949815

/-! ## A220670.P16736530093692595634

`or(A000038(A112367(n)), A123970(n))`
-/

namespace A220670.P16736530093692595634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000038 (A112367 n).toNat) (A123970 n)

end

end A220670.P16736530093692595634

/-! ## A220670.P18394077522823942831

`xor(A089799(A059268(n)), A123970(n))`
-/

namespace A220670.P18394077522823942831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A089799 (A059268 n).toNat) (A123970 n)

end

end A220670.P18394077522823942831

/-!
# A220673: Coefficients of formal series in powers of (tan(x))^2 for tan(5*x)/tan(x).

The programs for A220673, the canonical program `A220673.P2691776191523207953` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A220673 has offset 0).

The definition of A220673 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 102 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A220673.P12705936445931404488

`ogf((5-10x+x^2)/(1-10x+5x^2))`
-/

namespace A220673.P12705936445931404488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [5, -10, 1] [1, -10, 5] n

end

end A220673.P12705936445931404488

namespace A220673

/-- `ogf((5-10x+x^2)/(1-10x+5x^2))` -/
def P12705936445931404488.Spec : Prop :=
  ∀ n, P12705936445931404488.a n = A220673 n

end A220673

/-! ## A220673.P2691776191523207953

`A189334(n+1)+A189334(n)`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A220673

/-- `A189334(n+1)+A189334(n)` -/
def P2691776191523207953.Spec : Prop :=
  ∀ n, P2691776191523207953.a n = A220673 n

theorem P2691776191523207953.correct : P2691776191523207953.Spec := by
  intro n
  simp only [A220673]

end A220673

/-! ## A220673.P7091542886306078550

`(A189317(n+1)+A189317(n))/5`
-/

namespace A220673.P7091542886306078550
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A189317 (n + 1) + A189317 n : ℚ) / 5

end

end A220673.P7091542886306078550

namespace A220673

/-- `(A189317(n+1)+A189317(n))/5` -/
def P7091542886306078550.Spec : Prop :=
  ∀ n, P7091542886306078550.a n = (A220673 n : ℚ)

end A220673

/-! ## A220673.P889173656378795463

`A212500(2*(n+1))+A212500(A004277(n))`
-/

namespace A220673.P889173656378795463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212500 (2 * (n + 1)) + A212500 (A004277 n).toNat

end

end A220673.P889173656378795463

namespace A220673

/-- `A212500(2*(n+1))+A212500(A004277(n))` -/
def P889173656378795463.Spec : Prop :=
  ∀ n, P889173656378795463.a n = A220673 n

end A220673

/-!
# A220675: Number of ways to reciprocally link elements of an n X n array either to themselves or to exactly two horizontal, vertical and antidiagonal neighbors, without consecutive collinear links.

The programs for A220675, there is no canonical definition to state claims against.
-/

/-! ## A220675.P10698950677334319503

`A220681(∑[4*n]+1)`
-/

namespace A220675.P10698950677334319503
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220681 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A220675.P10698950677334319503

/-! ## A220675.P18350016525614770284

`record[A003982(n)*A220681(n+1)]`
-/

namespace A220675.P18350016525614770284
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A220681 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A220675.P18350016525614770284

/-! ## A220675.P752158164604177862

`record[gcd(A114327(n), A220681(n+1))]`
-/

namespace A220675.P752158164604177862
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A114327 n) (A220681 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A220675.P752158164604177862

/-! ## A220675.P3343174573244864275

`record[A203994(n+1)*A220681(n+1)]`
-/

namespace A220675.P3343174573244864275
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203994 (n + 1) * A220681 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A220675.P3343174573244864275

/-! ## A220675.P7570919968041711521

`record[A000005(Δ[n²])%2*A220681(n+1)]`
-/

namespace A220675.P7570919968041711521
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000005 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat) 2 * A220681 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A220675.P7570919968041711521

/-!
# A220676: Number of ways to reciprocally link elements of an n X 3 array either to themselves or to exactly two horizontal, vertical and antidiagonal neighbors, without consecutive collinear links.

The programs for A220676, there is no canonical definition to state claims against.
-/

/-! ## A220676.P11467954634510016631

`A220681(∑[n+2]+4)`
-/

namespace A220676.P11467954634510016631
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220681 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A220676.P11467954634510016631

/-! ## A220676.P15512651534440217197

`A220681(A167614(n+1))+A025466(n)`
-/

namespace A220676.P15512651534440217197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220681 (A167614 (n + 1)).toNat + A025466 n

end

end A220676.P15512651534440217197

/-! ## A220676.P4772050533288552409

`A220681(A167614(n+1))+A180472(n)`
-/

namespace A220676.P4772050533288552409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220681 (A167614 (n + 1)).toNat + A180472 n

end

end A220676.P4772050533288552409

/-! ## A220676.P6772569326227479583

`A177849(n)*A220681(A167614(n+1))`
-/

namespace A220676.P6772569326227479583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177849 n * A220681 (A167614 (n + 1)).toNat

end

end A220676.P6772569326227479583

/-! ## A220676.P2249904814416200236

`A220681(A167614(n+1))%A017310(n)`
-/

namespace A220676.P2249904814416200236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A220681 (A167614 (n + 1)).toNat) (A017310 n)

end

end A220676.P2249904814416200236

/-!
# A220677: Number of ways to reciprocally link elements of an nX4 array either to themselves or to exactly two horizontal, vertical and antidiagonal neighbors, without consecutive collinear links.

The programs for A220677, there is no canonical definition to state claims against.
-/

/-! ## A220677.P12436696248061211584

`A220681(A374004(n+1))`
-/

namespace A220677.P12436696248061211584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220681 (A374004 (n + 1)).toNat

end

end A220677.P12436696248061211584

/-! ## A220677.P4925186845851333484

`A220681(A141214(n)+7)`
-/

namespace A220677.P4925186845851333484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220681 (A141214 n + 7).toNat

end

end A220677.P4925186845851333484

/-! ## A220677.P7239721288473295874

`A220681(A055999(n)+10)`
-/

namespace A220677.P7239721288473295874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220681 (A055999 n + 10).toNat

end

end A220677.P7239721288473295874

/-! ## A220677.P2462166952305397086

`A220681(A167614(n+2)+1)`
-/

namespace A220677.P2462166952305397086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220681 (A167614 (n + 2) + 1).toNat

end

end A220677.P2462166952305397086

/-! ## A220677.P14176601146124024265

`A220681(A166136(n+2)-2)`
-/

namespace A220677.P14176601146124024265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220681 (A166136 (n + 2) - 2).toNat

end

end A220677.P14176601146124024265

/-!
# A220678: Number of ways to reciprocally link elements of an nX5 array either to themselves or to exactly two horizontal, vertical and antidiagonal neighbors, without consecutive collinear links.

The programs for A220678, there is no canonical definition to state claims against.
-/

/-! ## A220678.P7312813102536361023

`A220681(A374005(n+1))`
-/

namespace A220678.P7312813102536361023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220681 (A374005 (n + 1)).toNat

end

end A220678.P7312813102536361023

/-! ## A220678.P4273070638015963299

`A220681(A056000(n)+15)`
-/

namespace A220678.P4273070638015963299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220681 (A056000 n + 15).toNat

end

end A220678.P4273070638015963299

/-! ## A220678.P1190350101298923923

`A220681(A167614(n+3)+2)`
-/

namespace A220678.P1190350101298923923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220681 (A167614 (n + 3) + 2).toNat

end

end A220678.P1190350101298923923

/-! ## A220678.P17056938302430581550

`A220681(A000217(n+4)+5)`
-/

namespace A220678.P17056938302430581550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220681 (A000217 (n + 4) + 5).toNat

end

end A220678.P17056938302430581550

/-! ## A220678.P14671427871121878161

`A220681(eq[4, A054123(n)])`
-/

namespace A220678.P14671427871121878161
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054123 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220681 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A220678.P14671427871121878161

/-!
# A220679: Number of ways to reciprocally link elements of an nX6 array either to themselves or to exactly two horizontal, vertical and antidiagonal neighbors, without consecutive collinear links.

The programs for A220679, there is no canonical definition to state claims against.
-/

/-! ## A220679.P10890617361048607121

`A220681(A374007(n+1))`
-/

namespace A220679.P10890617361048607121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220681 (A374007 (n + 1)).toNat

end

end A220679.P10890617361048607121

/-! ## A220679.P11931912438394707963

`A220681(A166136(n+4))`
-/

namespace A220679.P11931912438394707963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220681 (A166136 (n + 4)).toNat

end

end A220679.P11931912438394707963

/-! ## A220679.P922928657299853161

`A220681(A052905(n+3))`
-/

namespace A220679.P922928657299853161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220681 (A052905 (n + 3)).toNat

end

end A220679.P922928657299853161

/-! ## A220679.P17787665654393858372

`A220681(eq[5, A193592(n)])`
-/

namespace A220679.P17787665654393858372
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220681 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A220679.P17787665654393858372

/-! ## A220679.P18270331761475476359

`A220681(eq[8, A258709(n)])`
-/

namespace A220679.P18270331761475476359
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258709 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220681 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A220679.P18270331761475476359

/-!
# A220680: Number of ways to reciprocally link elements of an nX7 array either to themselves or to exactly two horizontal, vertical and antidiagonal neighbors, without consecutive collinear links.

The programs for A220680, there is no canonical definition to state claims against.
-/

/-! ## A220680.P6782704321610851711

`A220681(A374008(n+1))`
-/

namespace A220680.P6782704321610851711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220681 (A374008 (n + 1)).toNat

end

end A220680.P6782704321610851711

/-! ## A220680.P13672099622523873034

`A220681(A056119(n)+28)`
-/

namespace A220680.P13672099622523873034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220681 (A056119 n + 28).toNat

end

end A220680.P13672099622523873034

/-! ## A220680.P18208244359866999690

`A220681(A055999(n+4))`
-/

namespace A220680.P18208244359866999690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220681 (A055999 (n + 4)).toNat

end

end A220680.P18208244359866999690

/-! ## A220680.P16628077281752826572

`A220681(eq[6, A193592(n)])`
-/

namespace A220680.P16628077281752826572
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220681 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A220680.P16628077281752826572

/-! ## A220680.P688993009528898638

`A220681(Δ[A023551(n+2)])`
-/

namespace A220680.P688993009528898638
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220681 (f1 (n + 1) - f1 n).toNat

end

end A220680.P688993009528898638

/-!
# A220681: T(n,k)=Number of ways to reciprocally link elements of an nXk array either to themselves or to exactly two horizontal, vertical and antidiagonal neighbors, without consecutive collinear links.

The programs for A220681, there is no canonical definition to state claims against.
-/

/-! ## A220681.P2689964907484067288

`A158366(A189280(n+1))`
-/

namespace A220681.P2689964907484067288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158366 (A189280 (n + 1)).toNat

end

end A220681.P2689964907484067288

/-! ## A220681.P5036305803407330572

`A173153(A137661(A056940(n)))`
-/

namespace A220681.P5036305803407330572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173153 (A137661 (A056940 n).toNat).toNat

end

end A220681.P5036305803407330572

/-! ## A220681.P12382506691680950120

`A197537(A086645(n))%A166092(n)`
-/

namespace A220681.P12382506691680950120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A197537 (A086645 n).toNat) (A166092 n)

end

end A220681.P12382506691680950120

/-! ## A220681.P5157676693725177248

`A197679(A086645(n))%A000040(2*n+1)`
-/

namespace A220681.P5157676693725177248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A197679 (A086645 n).toNat) (A000040 (2 * n + 1))

end

end A220681.P5157676693725177248

/-! ## A220681.P9769488105404504164

`A127380(A128545(n)²)-A004198(A075020(n+1))`
-/

namespace A220681.P9769488105404504164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127380 (A128545 n ^ 2).toNat - A004198 (A075020 (n + 1)).toNat

end

end A220681.P9769488105404504164

/-!
# A220682: Number of ways to reciprocally link elements of an n X n array either to themselves or to exactly two horizontal, vertical or antidiagonal neighbors.

The programs for A220682, there is no canonical definition to state claims against.
-/

/-! ## A220682.P3352650745320315454

`A220688(∑[4*n]+1)`
-/

namespace A220682.P3352650745320315454
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220688 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A220682.P3352650745320315454

/-! ## A220682.P2529147543455255333

`record[A003982(n)*A220688(n+1)]`
-/

namespace A220682.P2529147543455255333
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A220688 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A220682.P2529147543455255333

/-! ## A220682.P13034328834820894577

`record[gcd(A008482(n), A220688(n+1))]`
-/

namespace A220682.P13034328834820894577
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A008482 n) (A220688 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A220682.P13034328834820894577

/-! ## A220682.P3958019380155381874

`A220688(A001844(n))^A072137(n)`
-/

namespace A220682.P3958019380155381874
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A220688 (A001844 n).toNat : ℚ) ^ (A072137 n : ℤ)

end

end A220682.P3958019380155381874

/-! ## A220682.P15576365109073415145

`or(A000007(n), A220688(A001844(n)))`
-/

namespace A220682.P15576365109073415145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A220688 (A001844 n).toNat)

end

end A220682.P15576365109073415145

/-!
# A220683: Number of ways to reciprocally link elements of an n X 3 array either to themselves or to exactly two horizontal, vertical or antidiagonal neighbors.

The programs for A220683, there is no canonical definition to state claims against.
-/

/-! ## A220683.P15816732194127498209

`A220688(∑[n+2]+4)`
-/

namespace A220683.P15816732194127498209
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220688 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A220683.P15816732194127498209

/-! ## A220683.P17625638383886978424

`gcd(A000038(n), A220688(A167614(n+1)))`
-/

namespace A220683.P17625638383886978424
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A220688 (A167614 (n + 1)).toNat)

end

end A220683.P17625638383886978424

/-! ## A220683.P1050028435413290619

`lcm(A033999(n), A220688(A167614(n+1)))`
-/

namespace A220683.P1050028435413290619
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A220688 (A167614 (n + 1)).toNat)

end

end A220683.P1050028435413290619

/-! ## A220683.P2293447297877217649

`or(A000007(n), A220688(A167614(n+1)))`
-/

namespace A220683.P2293447297877217649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A220688 (A167614 (n + 1)).toNat)

end

end A220683.P2293447297877217649

/-! ## A220683.P676182141714719866

`A220688(A167614(n+1))%A204415(n+1)`
-/

namespace A220683.P676182141714719866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A220688 (A167614 (n + 1)).toNat) (A204415 (n + 1))

end

end A220683.P676182141714719866

/-!
# A220684: Number of ways to reciprocally link elements of an nX4 array either to themselves or to exactly two horizontal, vertical or antidiagonal neighbors.

The programs for A220684, there is no canonical definition to state claims against.
-/

/-! ## A220684.P6570920675365836813

`A220688(A374004(n+1))`
-/

namespace A220684.P6570920675365836813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220688 (A374004 (n + 1)).toNat

end

end A220684.P6570920675365836813

/-! ## A220684.P13633327922163751597

`A220688(A167614(n+2)+1)`
-/

namespace A220684.P13633327922163751597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220688 (A167614 (n + 2) + 1).toNat

end

end A220684.P13633327922163751597

/-! ## A220684.P2118924344225013512

`A220688(Δ[A023545(n+1)-n²])`
-/

namespace A220684.P2118924344225013512
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1) - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220688 (f1 (n + 1) - f1 n).toNat

end

end A220684.P2118924344225013512

/-! ## A220684.P10862372831205043772

`A220688(A080036(A167614(n+1)))`
-/

namespace A220684.P10862372831205043772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220688 (A080036 (A167614 (n + 1)).toNat).toNat

end

end A220684.P10862372831205043772

/-! ## A220684.P3656224014423661932

`A220688(A034856(n+1)+A004498(n))`
-/

namespace A220684.P3656224014423661932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220688 (A034856 (n + 1) + A004498 n).toNat

end

end A220684.P3656224014423661932

/-!
# A220685: Number of ways to reciprocally link elements of an nX5 array either to themselves or to exactly two horizontal, vertical or antidiagonal neighbors.

The programs for A220685, there is no canonical definition to state claims against.
-/

/-! ## A220685.P16991234650559356050

`A220688(A374005(n+1))`
-/

namespace A220685.P16991234650559356050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220688 (A374005 (n + 1)).toNat

end

end A220685.P16991234650559356050

/-! ## A220685.P18051262007602983484

`A220688(A155212(n)+13)`
-/

namespace A220685.P18051262007602983484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220688 (A155212 n + 13).toNat

end

end A220685.P18051262007602983484

/-! ## A220685.P7909172201756890877

`A220688(A000217(n+4)+5)`
-/

namespace A220685.P7909172201756890877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220688 (A000217 (n + 4) + 5).toNat

end

end A220685.P7909172201756890877

/-! ## A220685.P7270188306430037679

`A220688(eq[4, A193592(n)])`
-/

namespace A220685.P7270188306430037679
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220688 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A220685.P7270188306430037679

/-! ## A220685.P11886290065299635868

`A220688(eq[8, A140996(n)])`
-/

namespace A220685.P11886290065299635868
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140996 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220688 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A220685.P11886290065299635868

/-!
# A220686: Number of ways to reciprocally link elements of an nX6 array either to themselves or to exactly two horizontal, vertical or antidiagonal neighbors.

The programs for A220686, there is no canonical definition to state claims against.
-/

/-! ## A220686.P16778334420495758430

`A220688(A374007(n+1))`
-/

namespace A220686.P16778334420495758430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220688 (A374007 (n + 1)).toNat

end

end A220686.P16778334420495758430

/-! ## A220686.P7403138385858640687

`A220688(A167614(n+4)+3)`
-/

namespace A220686.P7403138385858640687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220688 (A167614 (n + 4) + 3).toNat

end

end A220686.P7403138385858640687

/-! ## A220686.P10187539464691502047

`A220688(eq[5, A002262(n)]+1)`
-/

namespace A220686.P10187539464691502047
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220688 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A220686.P10187539464691502047

/-! ## A220686.P10418595823732481624

`A220688(eq[7, A131818(n+1)])`
-/

namespace A220686.P10418595823732481624
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220688 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A220686.P10418595823732481624

/-! ## A220686.P14228329685726061549

`A220688(eq[3, A219347(n)])`
-/

namespace A220686.P14228329685726061549
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220688 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A220686.P14228329685726061549

/-!
# A220687: Number of ways to reciprocally link elements of an nX7 array either to themselves or to exactly two horizontal, vertical or antidiagonal neighbors.

The programs for A220687, there is no canonical definition to state claims against.
-/

/-! ## A220687.P16160979560915478215

`A220688(A374008(n+1))`
-/

namespace A220687.P16160979560915478215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220688 (A374008 (n + 1)).toNat

end

end A220687.P16160979560915478215

/-! ## A220687.P283526155171176287

`A220688(eq[8, A131818(n+1)])`
-/

namespace A220687.P283526155171176287
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220688 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A220687.P283526155171176287

/-! ## A220687.P800534575775630633

`A220688(eq[4, A219347(n)])`
-/

namespace A220687.P800534575775630633
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220688 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A220687.P800534575775630633

/-! ## A220687.P10872213069962601855

`A220688(eq[6, A193592(n)])`
-/

namespace A220687.P10872213069962601855
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220688 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A220687.P10872213069962601855

/-! ## A220687.P12427488222361937428

`A220688(Δ[A023551(n+2)])`
-/

namespace A220687.P12427488222361937428
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220688 (f1 (n + 1) - f1 n).toNat

end

end A220687.P12427488222361937428

/-!
# A220688: T(n,k)=Number of ways to reciprocally link elements of an nXk array either to themselves or to exactly two horizontal, vertical or antidiagonal neighbors.

The programs for A220688, there is no canonical definition to state claims against.
-/

/-! ## A220688.P10391679459842311874

`A220308(A086645(n))%A188567(n+1)`
-/

namespace A220688.P10391679459842311874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A220308 (A086645 n).toNat) (A188567 (n + 1))

end

end A220688.P10391679459842311874

/-! ## A220688.P15057551504867495407

`A117333(A022167(n))`
-/

namespace A220688.P15057551504867495407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117333 (A022167 n).toNat

end

end A220688.P15057551504867495407

/-! ## A220688.P7027114932498607567

`A000194(A156939(n))`
-/

namespace A220688.P7027114932498607567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (A156939 n).toNat

end

end A220688.P7027114932498607567

/-! ## A220688.P3426215808957814816

`A123580(A034802(n))`
-/

namespace A220688.P3426215808957814816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123580 (A034802 n).toNat

end

end A220688.P3426215808957814816

/-! ## A220688.P10803548998294147340

`A076564(A099759(n))`
-/

namespace A220688.P10803548998294147340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076564 (A099759 n).toNat

end

end A220688.P10803548998294147340

/-!
# A220689: Triangular numbers generated in A224218. That is, the triangular numbers generated by the operation triangular(i) XOR triangular(i+1) along increasing i.

The programs for A220689, there is no canonical definition to state claims against.
-/

/-! ## A220689.P8524158469686533575

`C(A220698(n+1)+1, 2)`
-/

namespace A220689.P8524158469686533575
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A220698 (n + 1) + 1).toNat 2

end

end A220689.P8524158469686533575

/-! ## A220689.P1940125737832008912

`A000217(A220698(n+1))`
-/

namespace A220689.P1940125737832008912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A220698 (n + 1)).toNat

end

end A220689.P1940125737832008912

/-! ## A220689.P81774714708043098

`A161680(A220698(n+1)+1)`
-/

namespace A220689.P81774714708043098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161680 (A220698 (n + 1) + 1).toNat

end

end A220689.P81774714708043098

/-! ## A220689.P8175826266952661631

`A179865(A220698(n+1)+1)`
-/

namespace A220689.P8175826266952661631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179865 (A220698 (n + 1) + 1).toNat

end

end A220689.P8175826266952661631

/-! ## A220689.P7526996470956636814

`A245467(2*A220698(n+1))`
-/

namespace A220689.P7526996470956636814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245467 (2 * A220698 (n + 1)).toNat

end

end A220689.P7526996470956636814

/-!
# A220690: Number of acyclic graphs on {1,2,...,n} such that the node with label 1 is in the same connected component (tree) as the node with label 2.

The programs for A220690, there is no canonical definition to state claims against.
-/

/-! ## A220690.P9528628633581615509

`A334014(record[abs(1-A046691(n))])`
-/

namespace A220690.P9528628633581615509
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A046691 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334014 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A220690.P9528628633581615509

/-! ## A220690.P9970704211007615957

`A334014(A034856(n+1)+round(sqrt(n²+1)))`
-/

namespace A220690.P9970704211007615957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334014 (A034856 (n + 1) + SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat

end

end A220690.P9970704211007615957

/-! ## A220690.P5162052339995983400

`A057427(n)*A334014(A052905(n))`
-/

namespace A220690.P5162052339995983400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A334014 (A052905 n).toNat

end

end A220690.P5162052339995983400

/-! ## A220690.P6441771436180996163

`A178334(n)*A334014(A052905(n))`
-/

namespace A220690.P6441771436180996163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178334 n * A334014 (A052905 n).toNat

end

end A220690.P6441771436180996163

/-! ## A220690.P1865258976134405471

`A334014(A052905(n))%A089466(n)`
-/

namespace A220690.P1865258976134405471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A334014 (A052905 n).toNat) (A089466 n)

end

end A220690.P1865258976134405471

/-!
# A220691: Table A(i,j) read by antidiagonals in order A(1,1), A(1,2), A(2,1), A(1,3), A(2,2), A(3,1), ..., where A(i,j) is the number of ways in which we can add 2 distinct integers from the range 1..i in such a way that the sum is divisible by j.

The programs for A220691, there is no canonical definition to state claims against.
-/

/-! ## A220691.P2629913543948034539

`A220692(∑[char[∑[n]]]²-n)`
-/

namespace A220691.P2629913543948034539
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220692 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - n)

end

end A220691.P2629913543948034539

/-! ## A220691.P10361356891333455137

`or(char[2], A220692(A038722(n+1)))`
-/

namespace A220691.P10361356891333455137
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A220692 (A038722 (n + 1)).toNat)

end

end A220691.P10361356891333455137

/-! ## A220691.P3318696381377093701

`A220692(A038722(Δ[n²]-n))%(n+1)`
-/

namespace A220691.P3318696381377093701
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A220692 (A038722 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat).toNat) (n + 1 : ℤ)

end

end A220691.P3318696381377093701

/-! ## A220691.P14964965706179220613

`A057427(n)*A220692(A038722(n+1))`
-/

namespace A220691.P14964965706179220613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A220692 (A038722 (n + 1)).toNat

end

end A220691.P14964965706179220613

/-! ## A220691.P3168183679550404946

`lcm(A220692(A038722(n+1)), A260196(n))`
-/

namespace A220691.P3168183679550404946
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A220692 (A038722 (n + 1)).toNat) (A260196 n)

end

end A220691.P3168183679550404946

/-! ## A220691.P10423769876587593889

`A000041(C(2, n))*A220692(A038722(n+1))`
-/

namespace A220691.P10423769876587593889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (Nat.choose 2 n) * A220692 (A038722 (n + 1)).toNat

end

end A220691.P10423769876587593889

/-! ## A220691.P15950162027014620747

`A220692(A038722(n+1))+1-A008683(A005117(n+1))²`
-/

namespace A220691.P15950162027014620747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220692 (A038722 (n + 1)).toNat + 1 - A008683 (A005117 (n + 1)).toNat ^ 2

end

end A220691.P15950162027014620747

/-!
# A220692: Square array A220691 transposed.

The programs for A220692, there is no canonical definition to state claims against.
-/

/-! ## A220692.P8164964296926008241

`A220691(∑[char[∑[n]]]²-n)`
-/

namespace A220692.P8164964296926008241
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220691 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - n)

end

end A220692.P8164964296926008241

/-! ## A220692.P10740950398722704246

`A220691(A038722(n+1))%87`
-/

namespace A220692.P10740950398722704246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A220691 (A038722 (n + 1)).toNat) 87

end

end A220692.P10740950398722704246

/-! ## A220692.P9807785946954494425

`A220691(A114327(n)+1+n)%87`
-/

namespace A220692.P9807785946954494425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A220691 (A114327 n + 1 + (n : ℤ)).toNat) 87

end

end A220692.P9807785946954494425

/-! ## A220692.P11452735817514587904

`A220691(A038722(1-char[2]+n))-char[2]`
-/

namespace A220692.P11452735817514587904
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220691 (A038722 (1 - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) + (n : ℤ)).toNat).toNat - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

end

end A220692.P11452735817514587904

/-! ## A220692.P17666117819234782965

`A057427(n)*A220691(A038722(n+1))`
-/

namespace A220692.P17666117819234782965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A220691 (A038722 (n + 1)).toNat

end

end A220692.P17666117819234782965

/-! ## A220692.P5782847255281878084

`lcm(A033999(n), A220691(A038722(n+1)))`
-/

namespace A220692.P5782847255281878084
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A220691 (A038722 (n + 1)).toNat)

end

end A220692.P5782847255281878084

/-! ## A220692.P6292883207709308499

`and(A057428(n), A220691(A038722(n+1)))`
-/

namespace A220692.P6292883207709308499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A057428 n) (A220691 (A038722 (n + 1)).toNat)

end

end A220692.P6292883207709308499

/-! ## A220692.P11764032175992665237

`and(A220691(A038722(n+1)), A260196(n))`
-/

namespace A220692.P11764032175992665237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A220691 (A038722 (n + 1)).toNat) (A260196 n)

end

end A220692.P11764032175992665237

/-! ## A220692.P12404160449990258189

`A220691(A038722(n+1))/A014963(4*n+6)`
-/

namespace A220692.P12404160449990258189
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A220691 (A038722 (n + 1)).toNat : ℚ) / (A014963 (4 * n + 6) : ℚ)

end

end A220692.P12404160449990258189

/-!
# A220693: Irregular triangle where the k-th item in the n-th row (both starting from 1) tells in how many ways we can add 2 distinct integers from 1 to n in such a way that the sum is divisible by k. Row n has 2n-1 terms.

The programs for A220693, there is no canonical definition to state claims against.
-/

/-! ## A220693.P8179120307840900050

`A280269(A308286(n)+A038770(2*n+1))`
-/

namespace A220693.P8179120307840900050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280269 (A308286 n + A038770 (2 * n + 1)).toNat

end

end A220693.P8179120307840900050

/-!
# A220694: Irregular table: row n (n>=1) consists of numbers 1..A084556(n).

The programs for A220694, the canonical program `A220694.P2534427273062471700` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A220694 has offset 1).

The definition of A220694 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A220663, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A220694.P2534427273062471700

`A220663(n+1)+1`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A220694

/-- `A220663(n+1)+1` -/
def P2534427273062471700.Spec : Prop :=
  ∀ n, P2534427273062471700.a n = A220694 (n + 1)

theorem P2534427273062471700.correct : P2534427273062471700.Spec := by
  intro n
  simp only [A220694, Nat.add_sub_cancel]

end A220694

/-! ## A220694.P9579621555891517072

`(n+1)%∑[char[n!-1]]+1`
-/

namespace A220694.P9579621555891517072
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) % (∑ j ∈ Finset.range (n + 1), f1 j) + 1

end

end A220694.P9579621555891517072

namespace A220694

/-- `(n+1)%∑[char[n!-1]]+1` -/
def P9579621555891517072.Spec : Prop :=
  ∀ n, (P9579621555891517072.a n : ℤ) = A220694 (n + 1)

end A220694

/-! ## A220694.P3250798376634550115

`2-A220662(n+1)+n`
-/

namespace A220694.P3250798376634550115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A220662 (n + 1) + (n : ℤ)

end

end A220694.P3250798376634550115

namespace A220694

/-- `2-A220662(n+1)+n` -/
def P3250798376634550115.Spec : Prop :=
  ∀ n, P3250798376634550115.a n = A220694 (n + 1)

theorem P3250798376634550115.correct : P3250798376634550115.Spec := by
  intro n
  simp only [A220694, Nat.add_sub_cancel, A220694.P3250798376634550115.a, A220694.P2534427273062471700.a, A220662, A220662.P9996294767845325282.a, A220663, A220663.P5128857220396618442.a, A084558, A084558.P8374569854218058976.a, A090529, A090529.P4680555822996673914.f1, A090529.P4680555822996673914.a, A316341, A316341.P9571797849802737273.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A220694

/-! ## A220694.P11293213161832458017

`(n+1)%A084558(n+1)+1`
-/

namespace A220694.P11293213161832458017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 1 : ℤ) (A084558 (n + 1)) + 1

end

end A220694.P11293213161832458017

namespace A220694

/-- `(n+1)%A084558(n+1)+1` -/
def P11293213161832458017.Spec : Prop :=
  ∀ n, P11293213161832458017.a n = A220694 (n + 1)

theorem P11293213161832458017.correct : P11293213161832458017.Spec := by
  intro n
  simp only [A220694, Nat.add_sub_cancel, A220694.P11293213161832458017.a, A220694.P2534427273062471700.a, A084558, A084558.P8374569854218058976.a, A220663, A220663.P5128857220396618442.a, A090529, A090529.P4680555822996673914.f1, A090529.P4680555822996673914.a, A220662, A220662.P9996294767845325282.a, A316341, A316341.P9571797849802737273.a, A012245, A012245.P11587607485183547821.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A220694

/-! ## A220694.P10494964964006689057

`A004736(A220662(n+1)+A025581(n))`
-/

namespace A220694.P10494964964006689057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (A220662 (n + 1) + A025581 n).toNat

end

end A220694.P10494964964006689057

namespace A220694

/-- `A004736(A220662(n+1)+A025581(n))` -/
def P10494964964006689057.Spec : Prop :=
  ∀ n, P10494964964006689057.a n = A220694 (n + 1)

end A220694

/-! ## A220694.P1782847311220837060

`A004736(A220662(n+1)+A000217(n))`
-/

namespace A220694.P1782847311220837060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (A220662 (n + 1) + A000217 n).toNat

end

end A220694.P1782847311220837060

namespace A220694

/-- `A004736(A220662(n+1)+A000217(n))` -/
def P1782847311220837060.Spec : Prop :=
  ∀ n, P1782847311220837060.a n = A220694 (n + 1)

end A220694

/-!
# A220695: Complement of A220655.

The programs for A220695, the canonical program `A220695.P15516287339646840077` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A220695 has offset 1).

The definition of A220695 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A220695.P3665062976190239495

`∑[char[∑[n!]-1]]!+n`
-/

namespace A220695.P3665062976190239495
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f3 j : ℕ) : ℤ) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (∑ j ∈ Finset.range (n + 1), f1 j) + n

end

end A220695.P3665062976190239495

namespace A220695

/-- `∑[char[∑[n!]-1]]!+n` -/
def P3665062976190239495.Spec : Prop :=
  ∀ n, (P3665062976190239495.a n : ℤ) = A220695 (n + 1)

end A220695

/-! ## A220695.P15516287339646840077

`A084556(n+1)!+n`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A220695

/-- `A084556(n+1)!+n` -/
def P15516287339646840077.Spec : Prop :=
  ∀ n, (P15516287339646840077.a n : ℤ) = A220695 (n + 1)

theorem P15516287339646840077.correct : P15516287339646840077.Spec := by
  intro n
  simp only [A220695, Nat.add_sub_cancel]

end A220695

/-! ## A220695.P10790099425002308133

`A220696(n+2)-1`
-/

namespace A220695.P10790099425002308133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220696 (n + 2) - 1

end

end A220695.P10790099425002308133

namespace A220695

/-- `A220696(n+2)-1` -/
def P10790099425002308133.Spec : Prop :=
  ∀ n, P10790099425002308133.a n = A220695 (n + 1)

end A220695

/-! ## A220695.P5650127999647019330

`A048764(A265334(n+1))+n`
-/

namespace A220695.P5650127999647019330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048764 (A265334 (n + 1)).toNat + (n : ℤ)

end

end A220695.P5650127999647019330

namespace A220695

/-- `A048764(A265334(n+1))+n` -/
def P5650127999647019330.Spec : Prop :=
  ∀ n, P5650127999647019330.a n = A220695 (n + 1)

end A220695

/-! ## A220695.P9484770700218163521

`A023443(A220696(n+2))`
-/

namespace A220695.P9484770700218163521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A220696 (n + 2)).toNat

end

end A220695.P9484770700218163521

namespace A220695

/-- `A023443(A220696(n+2))` -/
def P9484770700218163521.Spec : Prop :=
  ∀ n, P9484770700218163521.a n = A220695 (n + 1)

end A220695

/-! ## A220695.P1129854276430471738

`A048764(A370647(n+1))+n`
-/

namespace A220695.P1129854276430471738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048764 (A370647 (n + 1)).toNat + (n : ℤ)

end

end A220695.P1129854276430471738

namespace A220695

/-- `A048764(A370647(n+1))+n` -/
def P1129854276430471738.Spec : Prop :=
  ∀ n, P1129854276430471738.a n = A220695 (n + 1)

end A220695

/-!
# A220696: The positions of those permutations in A030298 where the first element is one (fixed).

The programs for A220696, the canonical program `A220696.P10901212379895983692` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A220696 has offset 1).

The definition of A220696 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5914 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A220696.P10901212379895983692

`∑[char[∑[n!]]]!+n`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A220696

/-- `∑[char[∑[n!]]]!+n` -/
def P10901212379895983692.Spec : Prop :=
  ∀ n, (P10901212379895983692.a n : ℤ) = A220696 (n + 1)

theorem P10901212379895983692.correct : P10901212379895983692.Spec := by
  intro n
  simp only [A220696, Nat.add_sub_cancel]

end A220696

/-!
# A220697: Least prime in a string of exactly n consecutive primes all differing by semiprimes.

The programs for A220697, there is no canonical definition to state claims against.
-/

/-! ## A220697.P6856416700035862084

`p?[Δ[A051484(A013609(n))]]`
-/

namespace A220697.P6856416700035862084
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051484 (A013609 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A220697.P6856416700035862084

/-! ## A220697.P6758905199132315289

`A051484(record[A360460(n+2)])`
-/

namespace A220697.P6758905199132315289
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360460 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051484 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A220697.P6758905199132315289

/-!
# A220698: Indices of triangular numbers generated in A224218.

The programs for A220698, there is no canonical definition to state claims against.
-/

/-! ## A220698.P417140036859849230

`A127648(A220689(n+1)-1)`
-/

namespace A220698.P417140036859849230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127648 (A220689 (n + 1) - 1).toNat

end

end A220698.P417140036859849230

/-! ## A220698.P16144842499724605290

`A080098(A220689(n+1))`
-/

namespace A220698.P16144842499724605290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080098 (A220689 (n + 1)).toNat

end

end A220698.P16144842499724605290

/-! ## A220698.P12612489037892046023

`A268820(A220689(Δ[(n²+n)*cot(atan(2))]))`
-/

namespace A220698.P12612489037892046023
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n ^ 2 + n : ℝ) * Real.cot (Real.arctan (2 : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268820 (A220689 (SequenceMachineLib.roundAway (f1 (n + 1) - f1 n)).toNat).toNat

end

end A220698.P12612489037892046023

/-! ## A220698.P16825741816597974097

`A268820(A220689(n+1))%A096011(n)`
-/

namespace A220698.P16825741816597974097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A268820 (A220689 (n + 1)).toNat) (A096011 n)

end

end A220698.P16825741816597974097

/-!
# A220699: a(0)=0, a(1)=0; for n>1, a(n) = a(n-1) + (n-4)*a(n-2) + 1.

The programs for A220699, the canonical program `A220699.P15982190001683231354` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A220699 has offset 0).

The definition of A220699 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `1+a(n-1)+(n-4)*a(n-2)` (program `A220699.P15982190001683231354`, by `A220699.P15982190001683231354.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A220699.P15982190001683231354

`1+a(n-1)+(n-4)*a(n-2)` with `a(0)=0, a(1)=0`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A220699

/-- `1+a(n-1)+(n-4)*a(n-2)` -/
def P15982190001683231354.Spec : Prop :=
  ∀ n, P15982190001683231354.a n = A220699 n

theorem P15982190001683231354.correct : P15982190001683231354.Spec := by
  intro n
  simp only [A220699]

end A220699

/-! ## A220699.P4049892342879189592

`a(n-1)+(n-4)*a(n-2)+1` with `a(0)=0, a(1)=0, a(2)=1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A220699.P4049892342879189592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 1] fun n a =>
  a (n - 1) + ((n : ℤ) - 4) * a (n - 2) + 1

end

end A220699.P4049892342879189592

namespace A220699

/-- `a(n-1)+(n-4)*a(n-2)+1` -/
def P4049892342879189592.Spec : Prop :=
  ∀ n, P4049892342879189592.a n = A220699 n

end A220699

/-! ## A220699.P8166977126134845450

`1-((4-n)*a(n-2)-a(n-1))` with `a(0)=0, a(1)=0`
-/

namespace A220699.P8166977126134845450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0] fun n a =>
  1 - ((4 - (n : ℤ)) * a (n - 2) - a (n - 1))

end

end A220699.P8166977126134845450

namespace A220699

/-- `1-((4-n)*a(n-2)-a(n-1))` -/
def P8166977126134845450.Spec : Prop :=
  ∀ n, P8166977126134845450.a n = A220699 n

end A220699

/-! ## A220699.P13674189185641488177

`A132090(A340911(n))`
-/

namespace A220699.P13674189185641488177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132090 (A340911 n).toNat

end

end A220699.P13674189185641488177

namespace A220699

/-- `A132090(A340911(n))` -/
def P13674189185641488177.Spec : Prop :=
  ∀ n, P13674189185641488177.a n = A220699 n

end A220699

/-! ## A220699.P11651811713013103104

`A328335(A006082(n+1))%n!`
-/

namespace A220699.P11651811713013103104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A328335 (A006082 (n + 1)).toNat) (Nat.factorial n : ℤ)

end

end A220699.P11651811713013103104

namespace A220699

/-- `A328335(A006082(n+1))%n!` -/
def P11651811713013103104.Spec : Prop :=
  ∀ n, P11651811713013103104.a n = A220699 n

end A220699

