import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C004
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C013
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
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C039
import Seq.B001.C000
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
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
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B003.C005
import Seq.B003.C006
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B008.C000
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
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

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A300800: Number of nX4 0..1 arrays with every element equal to 0, 1, 2, 3 or 4 horizontally, vertically or antidiagonally adjacent elements, with upper left element zero.

The programs for A300800, there is no canonical definition to state claims against.
-/

/-! ## A300800.P8093254697994559344

`A300804(A374004(n+1))`
-/

namespace A300800.P8093254697994559344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300804 (A374004 (n + 1)).toNat

end

end A300800.P8093254697994559344

/-! ## A300800.P12553679747070476023

`A300804(A141214(n)+7)`
-/

namespace A300800.P12553679747070476023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300804 (A141214 n + 7).toNat

end

end A300800.P12553679747070476023

/-! ## A300800.P10649799603071416546

`A300804(A055999(n)+10)`
-/

namespace A300800.P10649799603071416546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300804 (A055999 n + 10).toNat

end

end A300800.P10649799603071416546

/-! ## A300800.P5396047864599639201

`A300804(A167614(n+2)+1)`
-/

namespace A300800.P5396047864599639201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300804 (A167614 (n + 2) + 1).toNat

end

end A300800.P5396047864599639201

/-! ## A300800.P2971233318301680460

`A300804(A167499(n+2)-1)`
-/

namespace A300800.P2971233318301680460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300804 (A167499 (n + 2) - 1).toNat

end

end A300800.P2971233318301680460

/-!
# A300801: Number of nX5 0..1 arrays with every element equal to 0, 1, 2, 3 or 4 horizontally, vertically or antidiagonally adjacent elements, with upper left element zero.

The programs for A300801, there is no canonical definition to state claims against.
-/

/-! ## A300801.P1715677694477082802

`A300804(A374005(n+1))`
-/

namespace A300801.P1715677694477082802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300804 (A374005 (n + 1)).toNat

end

end A300801.P1715677694477082802

/-! ## A300801.P9696693156069973147

`A300804(A167499(n+3))`
-/

namespace A300801.P9696693156069973147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300804 (A167499 (n + 3)).toNat

end

end A300801.P9696693156069973147

/-! ## A300801.P1641740967808410687

`A300804(A055998(n+2)+8)`
-/

namespace A300801.P1641740967808410687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300804 (A055998 (n + 2) + 8).toNat

end

end A300801.P1641740967808410687

/-! ## A300801.P8669319420164128459

`A300804(Δ[A264443(n)])`
-/

namespace A300801.P8669319420164128459
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300804 (f1 (n + 1) - f1 n).toNat

end

end A300801.P8669319420164128459

/-! ## A300801.P14292337411734404962

`A300804(A046691(n+3))`
-/

namespace A300801.P14292337411734404962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300804 (A046691 (n + 3)).toNat

end

end A300801.P14292337411734404962

/-!
# A300802: Number of nX6 0..1 arrays with every element equal to 0, 1, 2, 3 or 4 horizontally, vertically or antidiagonally adjacent elements, with upper left element zero.

The programs for A300802, there is no canonical definition to state claims against.
-/

/-! ## A300802.P2431442326583676498

`A300804(A374007(n+1))`
-/

namespace A300802.P2431442326583676498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300804 (A374007 (n + 1)).toNat

end

end A300802.P2431442326583676498

/-! ## A300802.P14457780701453609669

`A300804(A167499(n+4)+1)`
-/

namespace A300802.P14457780701453609669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300804 (A167499 (n + 4) + 1).toNat

end

end A300802.P14457780701453609669

/-! ## A300802.P6782793710703177983

`A300804(eq[7, A131818(n+1)])`
-/

namespace A300802.P6782793710703177983
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300804 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A300802.P6782793710703177983

/-! ## A300802.P4740754755663705733

`A300804(eq[3, A219347(n)])`
-/

namespace A300802.P4740754755663705733
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300804 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A300802.P4740754755663705733

/-! ## A300802.P456610549796684443

`A300804(eq[5, A193592(n)])`
-/

namespace A300802.P456610549796684443
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300804 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A300802.P456610549796684443

/-!
# A300803: Number of nX7 0..1 arrays with every element equal to 0, 1, 2, 3 or 4 horizontally, vertically or antidiagonally adjacent elements, with upper left element zero.

The programs for A300803, there is no canonical definition to state claims against.
-/

/-! ## A300803.P6826746004009428475

`A300804(A374008(n+1))`
-/

namespace A300803.P6826746004009428475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300804 (A374008 (n + 1)).toNat

end

end A300803.P6826746004009428475

/-! ## A300803.P7962449147791866295

`A300804(A000096(n+5)+8)`
-/

namespace A300803.P7962449147791866295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300804 (A000096 (n + 5) + 8).toNat

end

end A300803.P7962449147791866295

/-! ## A300803.P2461663015148203548

`A300804(eq[8, A131818(n+1)])`
-/

namespace A300803.P2461663015148203548
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300804 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A300803.P2461663015148203548

/-! ## A300803.P8236203507607313140

`A300804(A055999(n+4))`
-/

namespace A300803.P8236203507607313140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300804 (A055999 (n + 4)).toNat

end

end A300803.P8236203507607313140

/-! ## A300803.P4607277087981759719

`A300804(eq[4, A219347(n)])`
-/

namespace A300803.P4607277087981759719
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300804 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A300803.P4607277087981759719

/-!
# A300805: Number of n X n 0..1 arrays with every element equal to 0, 1, 2, 3 or 5 horizontally, vertically or antidiagonally adjacent elements, with upper left element zero.

The programs for A300805, there is no canonical definition to state claims against.
-/

/-! ## A300805.P17482529908009378272

`A300811(∑[4*n]+1)`
-/

namespace A300805.P17482529908009378272
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300811 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A300805.P17482529908009378272

/-! ## A300805.P5852399846505744741

`A300811(A001844(n))+A256756(n)`
-/

namespace A300805.P5852399846505744741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300811 (A001844 n).toNat + A256756 n

end

end A300805.P5852399846505744741

/-! ## A300805.P14077849803930565760

`lcm(A236833(n), A300811(A001844(n)))`
-/

namespace A300805.P14077849803930565760
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A236833 n) (A300811 (A001844 n).toNat)

end

end A300805.P14077849803930565760

/-! ## A300805.P467558918402180

`or(A000007(n), A300811(A001844(n)))`
-/

namespace A300805.P467558918402180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A300811 (A001844 n).toNat)

end

end A300805.P467558918402180

/-! ## A300805.P8231274771197543754

`A298589(n+1)*A300811(A001844(n))`
-/

namespace A300805.P8231274771197543754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298589 (n + 1) * A300811 (A001844 n).toNat

end

end A300805.P8231274771197543754

/-!
# A300806: Number of nX3 0..1 arrays with every element equal to 0, 1, 2, 3 or 5 horizontally, vertically or antidiagonally adjacent elements, with upper left element zero.

The programs for A300806, there is no canonical definition to state claims against.
-/

/-! ## A300806.P4621222244154100269

`A300811(∑[n+2]+4)`
-/

namespace A300806.P4621222244154100269
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300811 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A300806.P4621222244154100269

/-! ## A300806.P3583866147038511725

`A300811(A167614(n+1))+A025469(n)`
-/

namespace A300806.P3583866147038511725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300811 (A167614 (n + 1)).toNat + A025469 n

end

end A300806.P3583866147038511725

/-! ## A300806.P17530815260505972391

`A300811(A167614(n+1))+A185284(n)`
-/

namespace A300806.P17530815260505972391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300811 (A167614 (n + 1)).toNat + A185284 n

end

end A300806.P17530815260505972391

/-! ## A300806.P17422343139046400133

`lcm(A158388(n), A300811(A167614(n+1)))`
-/

namespace A300806.P17422343139046400133
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A158388 n) (A300811 (A167614 (n + 1)).toNat)

end

end A300806.P17422343139046400133

/-! ## A300806.P3999264727624083116

`or(A011731(n), A300811(A167614(n+1)))`
-/

namespace A300806.P3999264727624083116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A011731 n) (A300811 (A167614 (n + 1)).toNat)

end

end A300806.P3999264727624083116

/-!
# A300807: Number of nX4 0..1 arrays with every element equal to 0, 1, 2, 3 or 5 horizontally, vertically or antidiagonally adjacent elements, with upper left element zero.

The programs for A300807, there is no canonical definition to state claims against.
-/

/-! ## A300807.P9289732201913981845

`A300811(A141214(n)+7)`
-/

namespace A300807.P9289732201913981845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300811 (A141214 n + 7).toNat

end

end A300807.P9289732201913981845

/-! ## A300807.P1430262460788437030

`A300811(A052905(n)+9)`
-/

namespace A300807.P1430262460788437030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300811 (A052905 n + 9).toNat

end

end A300807.P1430262460788437030

/-! ## A300807.P2436873141032882734

`A300811(A055999(n)+10)`
-/

namespace A300807.P2436873141032882734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300811 (A055999 n + 10).toNat

end

end A300807.P2436873141032882734

/-! ## A300807.P17278355934805665505

`A300811(A167614(n+2)+1)`
-/

namespace A300807.P17278355934805665505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300811 (A167614 (n + 2) + 1).toNat

end

end A300807.P17278355934805665505

/-! ## A300807.P2535366664457168842

`A300811(Δ[A264443(n)-n²])`
-/

namespace A300807.P2535366664457168842
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300811 (f1 (n + 1) - f1 n).toNat

end

end A300807.P2535366664457168842

/-!
# A300808: Number of nX5 0..1 arrays with every element equal to 0, 1, 2, 3 or 5 horizontally, vertically or antidiagonally adjacent elements, with upper left element zero.

The programs for A300808, there is no canonical definition to state claims against.
-/

/-! ## A300808.P3941905145415313928

`A300811(A056000(n)+15)`
-/

namespace A300808.P3941905145415313928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300811 (A056000 n + 15).toNat

end

end A300808.P3941905145415313928

/-! ## A300808.P9707185887951533883

`A300811(A167614(n+3)+2)`
-/

namespace A300808.P9707185887951533883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300811 (A167614 (n + 3) + 2).toNat

end

end A300808.P9707185887951533883

/-! ## A300808.P14961025510134132920

`A300811(A000124(n+4)+4)`
-/

namespace A300808.P14961025510134132920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300811 (A000124 (n + 4) + 4).toNat

end

end A300808.P14961025510134132920

/-! ## A300808.P870905263497285677

`A300811(A051936(n+4)+14)`
-/

namespace A300808.P870905263497285677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300811 (A051936 (n + 4) + 14).toNat

end

end A300808.P870905263497285677

/-! ## A300808.P16001184367264826412

`A300811(Δ[A264443(n)])`
-/

namespace A300808.P16001184367264826412
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300811 (f1 (n + 1) - f1 n).toNat

end

end A300808.P16001184367264826412

/-!
# A300809: Number of nX6 0..1 arrays with every element equal to 0, 1, 2, 3 or 5 horizontally, vertically or antidiagonally adjacent elements, with upper left element zero.

The programs for A300809, there is no canonical definition to state claims against.
-/

/-! ## A300809.P996833241472258236

`A300811(A167499(n+4)+1)`
-/

namespace A300809.P996833241472258236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300811 (A167499 (n + 4) + 1).toNat

end

end A300809.P996833241472258236

/-! ## A300809.P4172878577802680889

`A300811(A141214(n+2)+9)`
-/

namespace A300809.P4172878577802680889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300811 (A141214 (n + 2) + 9).toNat

end

end A300809.P4172878577802680889

/-! ## A300809.P2516700630438724026

`A300811(eq[7, A131818(n+1)])`
-/

namespace A300809.P2516700630438724026
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300811 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A300809.P2516700630438724026

/-! ## A300809.P14379856027658480498

`A300811(A374007(n+1))`
-/

namespace A300809.P14379856027658480498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300811 (A374007 (n + 1)).toNat

end

end A300809.P14379856027658480498

/-! ## A300809.P16536142253968751160

`A300811(A052905(n+3))`
-/

namespace A300809.P16536142253968751160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300811 (A052905 (n + 3)).toNat

end

end A300809.P16536142253968751160

/-!
# A300810: Number of nX7 0..1 arrays with every element equal to 0, 1, 2, 3 or 5 horizontally, vertically or antidiagonally adjacent elements, with upper left element zero.

The programs for A300810, there is no canonical definition to state claims against.
-/

/-! ## A300810.P1898756652726778070

`A300811(eq[8, A131818(n+1)])`
-/

namespace A300810.P1898756652726778070
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300811 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A300810.P1898756652726778070

/-! ## A300810.P12892935784540344430

`A300811(A374008(n+1))`
-/

namespace A300810.P12892935784540344430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300811 (A374008 (n + 1)).toNat

end

end A300810.P12892935784540344430

/-! ## A300810.P17354000732677073721

`A300811(A055999(n+4))`
-/

namespace A300810.P17354000732677073721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300811 (A055999 (n + 4)).toNat

end

end A300810.P17354000732677073721

/-! ## A300810.P9219511232723420743

`A300811(eq[4, A219347(n)])`
-/

namespace A300810.P9219511232723420743
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300811 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A300810.P9219511232723420743

/-! ## A300810.P15549357283722302672

`A300811(eq[6, A193592(n)])`
-/

namespace A300810.P15549357283722302672
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300811 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A300810.P15549357283722302672

/-!
# A300811: T(n,k)=Number of nXk 0..1 arrays with every element equal to 0, 1, 2, 3 or 5 horizontally, vertically or antidiagonally adjacent elements, with upper left element zero.

The programs for A300811, there is no canonical definition to state claims against.
-/

/-! ## A300811.P4409874628028836480

`A301450(n+1)-A098490(A219987(n)²)²`
-/

namespace A300811.P4409874628028836480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301450 (n + 1) - A098490 (A219987 n ^ 2).toNat ^ 2

end

end A300811.P4409874628028836480

/-! ## A300811.P8211521721834992285

`A301450(n+1)-A321936(A001263(n+1))²`
-/

namespace A300811.P8211521721834992285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301450 (n + 1) - A321936 (A001263 (n + 1)).toNat ^ 2

end

end A300811.P8211521721834992285

/-! ## A300811.P921754796820990894

`A301450(n+1)-A280737(A301784(n+1))²`
-/

namespace A300811.P921754796820990894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301450 (n + 1) - A280737 (A301784 (n + 1)).toNat ^ 2

end

end A300811.P921754796820990894

/-! ## A300811.P14475680602759501278

`A301450(n+1)-A060862(A153651(n+1))`
-/

namespace A300811.P14475680602759501278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301450 (n + 1) - A060862 (A153651 (n + 1)).toNat

end

end A300811.P14475680602759501278

/-! ## A300811.P2690980224997007743

`A301450(n+1)-A326499(A156274(2*(n+1)))`
-/

namespace A300811.P2690980224997007743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301450 (n + 1) - A326499 ((A156274 (2 * (n + 1))).toNat + 51)

end

end A300811.P2690980224997007743

/-!
# A300816: Minimal sequence whose forwards van Eck transform is the sequence of nonprime numbers.

The programs for A300816, there is no canonical definition to state claims against.
-/

/-! ## A300816.P11649382049572093157

`A079067(A004273(n)^A031235(n))`
-/

namespace A300816.P11649382049572093157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079067 (SequenceMachineLib.roundAway ((A004273 n : ℚ) ^ (A031235 n : ℤ))).toNat

end

end A300816.P11649382049572093157

/-!
# A300817: Smallest prime p such that p + n^2 is prime, or 0 if no such prime exists.

The programs for A300817, there is no canonical definition to state claims against.
-/

/-! ## A300817.P17161101096523190294

`A233583(A257088(n)²)%6`
-/

namespace A300817.P17161101096523190294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A233583 (A257088 n ^ 2).toNat) 6

end

end A300817.P17161101096523190294

/-! ## A300817.P328101211359565685

`A233583(A280166(n)²)%6`
-/

namespace A300817.P328101211359565685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A233583 (A280166 n ^ 2).toNat) 6

end

end A300817.P328101211359565685

/-! ## A300817.P12358189748778025645

`A010875(A233583(A257088(n)²))`
-/

namespace A300817.P12358189748778025645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010875 (A233583 (A257088 n ^ 2).toNat).toNat

end

end A300817.P12358189748778025645

/-! ## A300817.P5741243785771543394

`A010875(A057781(n)+A001248(n+1))`
-/

namespace A300817.P5741243785771543394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010875 (A057781 n + A001248 (n + 1)).toNat

end

end A300817.P5741243785771543394

/-! ## A300817.P15544977494163967287

`A087242(A087242(A126148(n+1))+n)`
-/

namespace A300817.P15544977494163967287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087242 (A087242 (A126148 (n + 1)).toNat + (n : ℤ)).toNat

end

end A300817.P15544977494163967287

/-!
# A300819: Consider the concatenation of a(n) and a(n+1) as the integer A; consider the concatenation of the last digit of a(n) and the first digit of a(n+1) as the integer B. Now A is divisible by B.

The programs for A300819, there is no canonical definition to state claims against.
-/

/-! ## A300819.P14446139794054730774

`A285356(A095204(n)+1)`
-/

namespace A300819.P14446139794054730774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285356 (A095204 n + 1).toNat

end

end A300819.P14446139794054730774

/-! ## A300819.P9932663057071352569

`A285356(A095205(n)+1)`
-/

namespace A300819.P9932663057071352569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285356 (A095205 n + 1).toNat

end

end A300819.P9932663057071352569

/-! ## A300819.P5389257310021245967

`A285356(A106604(n)+1)`
-/

namespace A300819.P5389257310021245967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285356 (A106604 n + 1).toNat

end

end A300819.P5389257310021245967

/-! ## A300819.P1057006153954571069

`A285356(A120125(n)+1)`
-/

namespace A300819.P1057006153954571069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285356 (A120125 n + 1).toNat

end

end A300819.P1057006153954571069

/-! ## A300819.P692532684521172744

`∑[A146780(record[A072233(n)])]`
-/

namespace A300819.P692532684521172744
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072233 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146780 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A300819.P692532684521172744

/-!
# A300820: Length of the longest sequence of consecutive primes in the prime factorization of n. a(1) = 0.

The programs for A300820, the canonical program `A300820.P3089578665199204575` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A300820 has offset 1).

The definition of A300820 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A300820.P3089578665199204575

`a(A322361(n+1)-1)+1` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A300820

/-- `a(A322361(n+1)-1)+1` -/
def P3089578665199204575.Spec : Prop :=
  ∀ n, (P3089578665199204575.a n : ℤ) = A300820 (n + 1)

theorem P3089578665199204575.correct : P3089578665199204575.Spec := by
  intro n
  simp only [A300820, Nat.add_sub_cancel]

end A300820

/-! ## A300820.P14686918443295018878

`A001221(A008578(2*n+1)*A330749(n+1))`
-/

namespace A300820.P14686918443295018878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A008578 (2 * n + 1) * A330749 (n + 1)).toNat

end

end A300820.P14686918443295018878

namespace A300820

/-- `A001221(A008578(2*n+1)*A330749(n+1))` -/
def P14686918443295018878.Spec : Prop :=
  ∀ n, P14686918443295018878.a n = A300820 (n + 1)

end A300820

/-! ## A300820.P15446747316986854527

`A165476(n²)+A001221(A322361(n+1))`
-/

namespace A300820.P15446747316986854527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165476 (n ^ 2) + A001221 (A322361 (n + 1)).toNat

end

end A300820.P15446747316986854527

namespace A300820

/-- `A165476(n²)+A001221(A322361(n+1))` -/
def P15446747316986854527.Spec : Prop :=
  ∀ n, P15446747316986854527.a n = A300820 (n + 1)

end A300820

/-! ## A300820.P6067624473816826291

`A001221(A006530(n+1)²*A330749(n+1))`
-/

namespace A300820.P6067624473816826291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A006530 (n + 1) ^ 2 * A330749 (n + 1)).toNat

end

end A300820.P6067624473816826291

namespace A300820

/-- `A001221(A006530(n+1)²*A330749(n+1))` -/
def P6067624473816826291.Spec : Prop :=
  ∀ n, P6067624473816826291.a n = A300820 (n + 1)

end A300820

/-! ## A300820.P16241993651268280791

`A001221(A020639(n+1)²*A322361(n+1))`
-/

namespace A300820.P16241993651268280791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A020639 (n + 1) ^ 2 * A322361 (n + 1)).toNat

end

end A300820.P16241993651268280791

namespace A300820

/-- `A001221(A020639(n+1)²*A322361(n+1))` -/
def P16241993651268280791.Spec : Prop :=
  ∀ n, P16241993651268280791.a n = A300820 (n + 1)

end A300820

/-! ## A300820.P6724313675374712566

`A001221(A102376(n)*A322361(n+1))`
-/

namespace A300820.P6724313675374712566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A102376 n * A322361 (n + 1)).toNat

end

end A300820.P6724313675374712566

namespace A300820

/-- `A001221(A102376(n)*A322361(n+1))` -/
def P6724313675374712566.Spec : Prop :=
  ∀ n, P6724313675374712566.a n = A300820 (n + 1)

end A300820

/-! ## A300820.P2106670089385722399

`A001221(lcm(A102376(n), A322361(n+1)))`
-/

namespace A300820.P2106670089385722399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (Int.lcm (A102376 n) (A322361 (n + 1)))

end

end A300820.P2106670089385722399

namespace A300820

/-- `A001221(lcm(A102376(n), A322361(n+1)))` -/
def P2106670089385722399.Spec : Prop :=
  ∀ n, P2106670089385722399.a n = A300820 (n + 1)

end A300820

/-! ## A300820.P16536285673795621170

`A001221(A001316(n)*A322361(n+1)*A001316(n))`
-/

namespace A300820.P16536285673795621170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A001316 n * A322361 (n + 1) * A001316 n).toNat

end

end A300820.P16536285673795621170

namespace A300820

/-- `A001221(A001316(n)*A322361(n+1)*A001316(n))` -/
def P16536285673795621170.Spec : Prop :=
  ∀ n, P16536285673795621170.a n = A300820 (n + 1)

end A300820

/-! ## A300820.P585715855182526291

`A001221(A322361(n+1)²*A001316(n))`
-/

namespace A300820.P585715855182526291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A322361 (n + 1) ^ 2 * A001316 n).toNat

end

end A300820.P585715855182526291

namespace A300820

/-- `A001221(A322361(n+1)²*A001316(n))` -/
def P585715855182526291.Spec : Prop :=
  ∀ n, P585715855182526291.a n = A300820 (n + 1)

end A300820

/-! ## A300820.P9431992420799644650

`A001221(lcm(A322361(n+1)², A001316(n)))`
-/

namespace A300820.P9431992420799644650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (Int.lcm (A322361 (n + 1) ^ 2) (A001316 n))

end

end A300820.P9431992420799644650

namespace A300820

/-- `A001221(lcm(A322361(n+1)², A001316(n)))` -/
def P9431992420799644650.Spec : Prop :=
  ∀ n, P9431992420799644650.a n = A300820 (n + 1)

end A300820

/-! ## A300820.P6646408546798099600

`A001221(record[A064989(n+1)]*A322361(n+1))`
-/

namespace A300820.P6646408546798099600
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064989 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A322361 (n + 1)).toNat

end

end A300820.P6646408546798099600

namespace A300820

/-- `A001221(record[A064989(n+1)]*A322361(n+1))` -/
def P6646408546798099600.Spec : Prop :=
  ∀ n, P6646408546798099600.a n = A300820 (n + 1)

end A300820

/-! ## A300820.P13860040839004893049

`A322868(A322361(n+1))%∑[A088670(n²)]`
-/

namespace A300820.P13860040839004893049
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088670 (n ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A322868 (A322361 (n + 1)).toNat) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A300820.P13860040839004893049

namespace A300820

/-- `A322868(A322361(n+1))%∑[A088670(n²)]` -/
def P13860040839004893049.Spec : Prop :=
  ∀ n, P13860040839004893049.a n = A300820 (n + 1)

end A300820

/-! ## A300820.P12654033062149710980

`A322868(A322361((n+1)²))%A088670((n+1)²)`
-/

namespace A300820.P12654033062149710980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A322868 (A322361 ((n + 1) ^ 2)).toNat) (A088670 ((n + 1) ^ 2))

end

end A300820.P12654033062149710980

namespace A300820

/-- `A322868(A322361((n+1)²))%A088670((n+1)²)` -/
def P12654033062149710980.Spec : Prop :=
  ∀ n, P12654033062149710980.a n = A300820 (n + 1)

end A300820

/-! ## A300820.P14638764435661016589

`A001221(A000015(n+1)²*A330749(n+1))`
-/

namespace A300820.P14638764435661016589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A000015 (n + 1) ^ 2 * A330749 (n + 1)).toNat

end

end A300820.P14638764435661016589

namespace A300820

/-- `A001221(A000015(n+1)²*A330749(n+1))` -/
def P14638764435661016589.Spec : Prop :=
  ∀ n, P14638764435661016589.a n = A300820 (n + 1)

end A300820

/-!
# A300821: Möbius transform of A244042.

The programs for A300821, the canonical program `A300821.P1207852597847785966` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A300821 has offset 1).

The definition of A300821 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A300822, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A300821.P1207852597847785966

`A000010(n+1)-A300822(n+1)`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A300821

/-- `A000010(n+1)-A300822(n+1)` -/
def P1207852597847785966.Spec : Prop :=
  ∀ n, P1207852597847785966.a n = A300821 (n + 1)

theorem P1207852597847785966.correct : P1207852597847785966.Spec := by
  intro n
  simp only [A300821, Nat.add_sub_cancel]

end A300821

/-! ## A300821.P12628433982622081215

`A244042(n+1)-A300823(n+1)`
-/

namespace A300821.P12628433982622081215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244042 (n + 1) - A300823 (n + 1)

end

end A300821.P12628433982622081215

namespace A300821

/-- `A244042(n+1)-A300823(n+1)` -/
def P12628433982622081215.Spec : Prop :=
  ∀ n, P12628433982622081215.a n = A300821 (n + 1)

theorem P12628433982622081215.correct : P12628433982622081215.Spec := by
  intro n
  simp only [A300821, Nat.add_sub_cancel, A300821.P12628433982622081215.a, A300821.P1207852597847785966.a, A000010, A000010.P4673923239450215316.a, A244042, A244042.P9314766524248185345.a, A300822, A300822.P15035204779735603999.f1, A300822.P15035204779735603999.a, A300823, A300823.P4910350933719634808.a, A003557, A003557.P6364735403900941810.a, A005836, A005836.P12367569128854000442.a, A008683, A008683.P10736294816071761024.f1, A008683.P10736294816071761024.a, A051953, A051953.P11179276897610979764.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A289814, A289814.P11371932108795153936.a, A300222, A300222.P16406266268068730929.a, A300824, A300824.P10710037846175937081.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A300821

/-! ## A300821.P12325499481425942278

`Δ[A002088(n)]-A300822(n+1)`
-/

namespace A300821.P12325499481425942278
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A300822 (n + 1)

end

end A300821.P12325499481425942278

namespace A300821

/-- `Δ[A002088(n)]-A300822(n+1)` -/
def P12325499481425942278.Spec : Prop :=
  ∀ n, P12325499481425942278.a n = A300821 (n + 1)

end A300821

/-! ## A300821.P5015891394666313351

`Δ[A005728(n)]-A300822(n+1)`
-/

namespace A300821.P5015891394666313351
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005728 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A300822 (n + 1)

end

end A300821.P5015891394666313351

namespace A300821

/-- `Δ[A005728(n)]-A300822(n+1)` -/
def P5015891394666313351.Spec : Prop :=
  ∀ n, P5015891394666313351.a n = A300821 (n + 1)

end A300821

/-! ## A300821.P8252592649467167330

`A039649(n+1)-(A300822(n+1)+1)`
-/

namespace A300821.P8252592649467167330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039649 (n + 1) - (A300822 (n + 1) + 1)

end

end A300821.P8252592649467167330

namespace A300821

/-- `A039649(n+1)-(A300822(n+1)+1)` -/
def P8252592649467167330.Spec : Prop :=
  ∀ n, P8252592649467167330.a n = A300821 (n + 1)

theorem P8252592649467167330.correct : P8252592649467167330.Spec := by
  intro n
  simp only [A300821, Nat.add_sub_cancel, A300821.P8252592649467167330.a, A300821.P1207852597847785966.a, A000010, A000010.P4673923239450215316.a, A039649, A039649.P16717312505280968063.a, A300822, A300822.P15035204779735603999.f1, A300822.P15035204779735603999.a, A003557, A003557.P6364735403900941810.a, A008683, A008683.P10736294816071761024.f1, A008683.P10736294816071761024.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A300222, A300222.P16406266268068730929.a, A005836, A005836.P12367569128854000442.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A289814, A289814.P11371932108795153936.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A300821

/-! ## A300821.P9200412008552236925

`A109606(n+1)+1-A300822(n+1)`
-/

namespace A300821.P9200412008552236925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109606 (n + 1) + (1 - A300822 (n + 1))

end

end A300821.P9200412008552236925

namespace A300821

/-- `A109606(n+1)+1-A300822(n+1)` -/
def P9200412008552236925.Spec : Prop :=
  ∀ n, P9200412008552236925.a n = A300821 (n + 1)

theorem P9200412008552236925.correct : P9200412008552236925.Spec := by
  intro n
  simp only [A300821, Nat.add_sub_cancel, A300821.P9200412008552236925.a, A300821.P1207852597847785966.a, A000010, A000010.P4673923239450215316.a, A109606, A109606.P2415810041766612210.a, A300822, A300822.P15035204779735603999.f1, A300822.P15035204779735603999.a, A003557, A003557.P6364735403900941810.a, A008683, A008683.P10736294816071761024.f1, A008683.P10736294816071761024.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A300222, A300222.P16406266268068730929.a, A005836, A005836.P12367569128854000442.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A289814, A289814.P11371932108795153936.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A300821

/-! ## A300821.P9625934530239975980

`A000010(n+1)+A300824(n+1)-A300222(n+1)`
-/

namespace A300821.P9625934530239975980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) + (A300824 (n + 1) - A300222 (n + 1))

end

end A300821.P9625934530239975980

namespace A300821

/-- `A000010(n+1)+A300824(n+1)-A300222(n+1)` -/
def P9625934530239975980.Spec : Prop :=
  ∀ n, P9625934530239975980.a n = A300821 (n + 1)

theorem P9625934530239975980.correct : P9625934530239975980.Spec := by
  intro n
  simp only [A300821, Nat.add_sub_cancel, A300821.P9625934530239975980.a, A300821.P1207852597847785966.a, A000010, A000010.P4673923239450215316.a, A300222, A300222.P16406266268068730929.a, A300822, A300822.P15035204779735603999.f1, A300822.P15035204779735603999.a, A300824, A300824.P10710037846175937081.a, A003557, A003557.P6364735403900941810.a, A005836, A005836.P12367569128854000442.a, A008683, A008683.P10736294816071761024.f1, A008683.P10736294816071761024.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A289814, A289814.P11371932108795153936.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A300821

/-! ## A300821.P2343269744285862641

`A285699(n+1)+A285709(n+1)-A300822(n+1)`
-/

namespace A300821.P2343269744285862641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285699 (n + 1) + (A285709 (n + 1) - A300822 (n + 1))

end

end A300821.P2343269744285862641

namespace A300821

/-- `A285699(n+1)+A285709(n+1)-A300822(n+1)` -/
def P2343269744285862641.Spec : Prop :=
  ∀ n, P2343269744285862641.a n = A300821 (n + 1)

end A300821

/-! ## A300821.P10744537936028721426

`A046073(n+1)*A060594(n+1)-A300822(n+1)`
-/

namespace A300821.P10744537936028721426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046073 (n + 1) * A060594 (n + 1) - A300822 (n + 1)

end

end A300821.P10744537936028721426

namespace A300821

/-- `A046073(n+1)*A060594(n+1)-A300822(n+1)` -/
def P10744537936028721426.Spec : Prop :=
  ∀ n, P10744537936028721426.a n = A300821 (n + 1)

end A300821

/-! ## A300821.P13646773159434208428

`A140434(n+1)/A020639(A140434(n+1))-A300822(n+1)`
-/

namespace A300821.P13646773159434208428
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A140434 (n + 1) : ℚ) / (A020639 (A140434 (n + 1)).toNat : ℚ) - (A300822 (n + 1) : ℚ)

end

end A300821.P13646773159434208428

namespace A300821

/-- `A140434(n+1)/A020639(A140434(n+1))-A300822(n+1)` -/
def P13646773159434208428.Spec : Prop :=
  ∀ n, P13646773159434208428.a n = (A300821 (n + 1) : ℚ)

end A300821

/-! ## A300821.P15243499247580693289

`∑{d}[n+1, A008683(#)*A244042((n+1)/#)]`
-/

namespace A300821.P15243499247580693289
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A244042 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A300821.P15243499247580693289

namespace A300821

/-- `∑{d}[n+1, A008683(#)*A244042((n+1)/#)]` -/
def P15243499247580693289.Spec : Prop :=
  ∀ n, P15243499247580693289.a n = A300821 (n + 1)

end A300821

/-! ## A300821.P17565804250405889854

`A244042(n+1)+A300824(n+1)-A051953(n+1)`
-/

namespace A300821.P17565804250405889854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244042 (n + 1) + (A300824 (n + 1) - A051953 (n + 1))

end

end A300821.P17565804250405889854

namespace A300821

/-- `A244042(n+1)+A300824(n+1)-A051953(n+1)` -/
def P17565804250405889854.Spec : Prop :=
  ∀ n, P17565804250405889854.a n = A300821 (n + 1)

theorem P17565804250405889854.correct : P17565804250405889854.Spec := by
  intro n
  simp only [A300821, Nat.add_sub_cancel, A300821.P17565804250405889854.a, A300821.P1207852597847785966.a, A000010, A000010.P4673923239450215316.a, A051953, A051953.P11179276897610979764.a, A244042, A244042.P9314766524248185345.a, A300822, A300822.P15035204779735603999.f1, A300822.P15035204779735603999.a, A300824, A300824.P10710037846175937081.a, A003557, A003557.P6364735403900941810.a, A005836, A005836.P12367569128854000442.a, A008683, A008683.P10736294816071761024.f1, A008683.P10736294816071761024.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A289814, A289814.P11371932108795153936.a, A300222, A300222.P16406266268068730929.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A300821

/-! ## A300821.P658345456875707466

`Δ[A049632(n)-A049643(n)]-A300822(n+1)`
-/

namespace A300821.P658345456875707466
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049632 n - A049643 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A300822 (n + 1)

end

end A300821.P658345456875707466

namespace A300821

/-- `Δ[A049632(n)-A049643(n)]-A300822(n+1)` -/
def P658345456875707466.Spec : Prop :=
  ∀ n, P658345456875707466.a n = A300821 (n + 1)

end A300821

/-! ## A300821.P10388274194021205924

`A049633(n)-(A300822(n+1)+A049632(n))`
-/

namespace A300821.P10388274194021205924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049633 n - (A300822 (n + 1) + A049632 n)

end

end A300821.P10388274194021205924

namespace A300821

/-- `A049633(n)-(A300822(n+1)+A049632(n))` -/
def P10388274194021205924.Spec : Prop :=
  ∀ n, P10388274194021205924.a n = A300821 (n + 1)

end A300821

/-! ## A300821.P17244001411032171215

`A164296(n+1)+A164297(n+1)-A300822(n+1)`
-/

namespace A300821.P17244001411032171215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164296 (n + 1) + (A164297 (n + 1) - A300822 (n + 1))

end

end A300821.P17244001411032171215

namespace A300821

/-- `A164296(n+1)+A164297(n+1)-A300822(n+1)` -/
def P17244001411032171215.Spec : Prop :=
  ∀ n, P17244001411032171215.a n = A300821 (n + 1)

end A300821

/-!
# A300822: Möbius transform of A300222.

The programs for A300822, the canonical program `A300822.P15035204779735603999` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A300822 has offset 1).

The definition of A300822 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A300822.P13258680453101212779

`A000010(n+1)-A300821(n+1)`
-/

namespace A300822.P13258680453101212779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) - A300821 (n + 1)

end

end A300822.P13258680453101212779

namespace A300822

/-- `A000010(n+1)-A300821(n+1)` -/
def P13258680453101212779.Spec : Prop :=
  ∀ n, P13258680453101212779.a n = A300822 (n + 1)

theorem P13258680453101212779.correct : P13258680453101212779.Spec := by
  intro n
  simp only [A300822, Nat.add_sub_cancel, A300822.P13258680453101212779.a, A300822.P15035204779735603999.f1, A300822.P15035204779735603999.a, A000010, A000010.P4673923239450215316.a, A008683, A008683.P10736294816071761024.f1, A008683.P10736294816071761024.a, A300222, A300222.P16406266268068730929.a, A300821, A300821.P1207852597847785966.a, A003557, A003557.P6364735403900941810.a, A005836, A005836.P12367569128854000442.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A289814, A289814.P11371932108795153936.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A300822

/-! ## A300822.P13692669651914286988

`A300222(n+1)-A300824(n+1)`
-/

namespace A300822.P13692669651914286988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300222 (n + 1) - A300824 (n + 1)

end

end A300822.P13692669651914286988

namespace A300822

/-- `A300222(n+1)-A300824(n+1)` -/
def P13692669651914286988.Spec : Prop :=
  ∀ n, P13692669651914286988.a n = A300822 (n + 1)

theorem P13692669651914286988.correct : P13692669651914286988.Spec := by
  intro n
  simp only [A300822, Nat.add_sub_cancel, A300822.P13692669651914286988.a, A300822.P15035204779735603999.f1, A300822.P15035204779735603999.a, A008683, A008683.P10736294816071761024.f1, A008683.P10736294816071761024.a, A300222, A300222.P16406266268068730929.a, A300824, A300824.P10710037846175937081.a, A005836, A005836.P12367569128854000442.a, A289814, A289814.P11371932108795153936.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A300822

/-! ## A300822.P8279778744303997432

`Δ[A002088(n)]-A300821(n+1)`
-/

namespace A300822.P8279778744303997432
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A300821 (n + 1)

end

end A300822.P8279778744303997432

namespace A300822

/-- `Δ[A002088(n)]-A300821(n+1)` -/
def P8279778744303997432.Spec : Prop :=
  ∀ n, P8279778744303997432.a n = A300822 (n + 1)

end A300822

/-! ## A300822.P1241477932230850511

`Δ[A005728(n)]-A300821(n+1)`
-/

namespace A300822.P1241477932230850511
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005728 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A300821 (n + 1)

end

end A300822.P1241477932230850511

namespace A300822

/-- `Δ[A005728(n)]-A300821(n+1)` -/
def P1241477932230850511.Spec : Prop :=
  ∀ n, P1241477932230850511.a n = A300822 (n + 1)

end A300822

/-! ## A300822.P9036349426483470334

`A349137(Δ[n²])-A300821(n+1)`
-/

namespace A300822.P9036349426483470334
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349137 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - A300821 (n + 1)

end

end A300822.P9036349426483470334

namespace A300822

/-- `A349137(Δ[n²])-A300821(n+1)` -/
def P9036349426483470334.Spec : Prop :=
  ∀ n, P9036349426483470334.a n = A300822 (n + 1)

end A300822

/-! ## A300822.P8362693866095864220

`sqrt(A127473(n+1))-A300821(n+1)`
-/

namespace A300822.P8362693866095864220
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A127473 (n + 1) : ℝ) - (A300821 (n + 1) : ℝ)

end

end A300822.P8362693866095864220

namespace A300822

/-- `sqrt(A127473(n+1))-A300821(n+1)` -/
def P8362693866095864220.Spec : Prop :=
  ∀ n, P8362693866095864220.a n = (A300822 (n + 1) : ℝ)

end A300822

/-! ## A300822.P16218731899987040664

`A039649(n+1)-(A300821(n+1)+1)`
-/

namespace A300822.P16218731899987040664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039649 (n + 1) - (A300821 (n + 1) + 1)

end

end A300822.P16218731899987040664

namespace A300822

/-- `A039649(n+1)-(A300821(n+1)+1)` -/
def P16218731899987040664.Spec : Prop :=
  ∀ n, P16218731899987040664.a n = A300822 (n + 1)

theorem P16218731899987040664.correct : P16218731899987040664.Spec := by
  intro n
  simp only [A300822, Nat.add_sub_cancel, A300822.P16218731899987040664.a, A300822.P15035204779735603999.f1, A300822.P15035204779735603999.a, A008683, A008683.P10736294816071761024.f1, A008683.P10736294816071761024.a, A039649, A039649.P16717312505280968063.a, A300222, A300222.P16406266268068730929.a, A300821, A300821.P1207852597847785966.a, A000010, A000010.P4673923239450215316.a, A005836, A005836.P12367569128854000442.a, A289814, A289814.P11371932108795153936.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A300822

/-! ## A300822.P3909968464684652147

`A109606(n+1)+1-A300821(n+1)`
-/

namespace A300822.P3909968464684652147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109606 (n + 1) + (1 - A300821 (n + 1))

end

end A300822.P3909968464684652147

namespace A300822

/-- `A109606(n+1)+1-A300821(n+1)` -/
def P3909968464684652147.Spec : Prop :=
  ∀ n, P3909968464684652147.a n = A300822 (n + 1)

theorem P3909968464684652147.correct : P3909968464684652147.Spec := by
  intro n
  simp only [A300822, Nat.add_sub_cancel, A300822.P3909968464684652147.a, A300822.P15035204779735603999.f1, A300822.P15035204779735603999.a, A008683, A008683.P10736294816071761024.f1, A008683.P10736294816071761024.a, A109606, A109606.P2415810041766612210.a, A300222, A300222.P16406266268068730929.a, A300821, A300821.P1207852597847785966.a, A000010, A000010.P4673923239450215316.a, A005836, A005836.P12367569128854000442.a, A289814, A289814.P11371932108795153936.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A300822

/-! ## A300822.P15035204779735603999

`∑{d}[n+1, A008683(#)*A300222((n+1)/#)]`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A300822

/-- `∑{d}[n+1, A008683(#)*A300222((n+1)/#)]` -/
def P15035204779735603999.Spec : Prop :=
  ∀ n, P15035204779735603999.a n = A300822 (n + 1)

theorem P15035204779735603999.correct : P15035204779735603999.Spec := by
  intro n
  simp only [A300822, Nat.add_sub_cancel]

end A300822

/-! ## A300822.P4054685762121902207

`A300222(n+1)+A300823(n+1)-A051953(n+1)`
-/

namespace A300822.P4054685762121902207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300222 (n + 1) + (A300823 (n + 1) - A051953 (n + 1))

end

end A300822.P4054685762121902207

namespace A300822

/-- `A300222(n+1)+A300823(n+1)-A051953(n+1)` -/
def P4054685762121902207.Spec : Prop :=
  ∀ n, P4054685762121902207.a n = A300822 (n + 1)

theorem P4054685762121902207.correct : P4054685762121902207.Spec := by
  intro n
  simp only [A300822, Nat.add_sub_cancel, A300822.P4054685762121902207.a, A300822.P15035204779735603999.f1, A300822.P15035204779735603999.a, A008683, A008683.P10736294816071761024.f1, A008683.P10736294816071761024.a, A051953, A051953.P11179276897610979764.a, A300222, A300222.P16406266268068730929.a, A300823, A300823.P4910350933719634808.a, A000010, A000010.P4673923239450215316.a, A005836, A005836.P12367569128854000442.a, A289814, A289814.P11371932108795153936.a, A300824, A300824.P10710037846175937081.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A300822

/-! ## A300822.P5305865425915806548

`A285699(n+1)+A285709(n+1)-A300821(n+1)`
-/

namespace A300822.P5305865425915806548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285699 (n + 1) + (A285709 (n + 1) - A300821 (n + 1))

end

end A300822.P5305865425915806548

namespace A300822

/-- `A285699(n+1)+A285709(n+1)-A300821(n+1)` -/
def P5305865425915806548.Spec : Prop :=
  ∀ n, P5305865425915806548.a n = A300822 (n + 1)

end A300822

/-! ## A300822.P7559431262393862847

`A046073(n+1)*A060594(n+1)-A300821(n+1)`
-/

namespace A300822.P7559431262393862847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046073 (n + 1) * A060594 (n + 1) - A300821 (n + 1)

end

end A300822.P7559431262393862847

namespace A300822

/-- `A046073(n+1)*A060594(n+1)-A300821(n+1)` -/
def P7559431262393862847.Spec : Prop :=
  ∀ n, P7559431262393862847.a n = A300822 (n + 1)

end A300822

/-! ## A300822.P11577429013061972660

`A140434(n+1)/A020639(A140434(n+1))-A300821(n+1)`
-/

namespace A300822.P11577429013061972660
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A140434 (n + 1) : ℚ) / (A020639 (A140434 (n + 1)).toNat : ℚ) - (A300821 (n + 1) : ℚ)

end

end A300822.P11577429013061972660

namespace A300822

/-- `A140434(n+1)/A020639(A140434(n+1))-A300821(n+1)` -/
def P11577429013061972660.Spec : Prop :=
  ∀ n, P11577429013061972660.a n = (A300822 (n + 1) : ℚ)

end A300822

/-! ## A300822.P7897299441642838991

`A000010(n+1)+A300823(n+1)-A244042(n+1)`
-/

namespace A300822.P7897299441642838991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) + (A300823 (n + 1) - A244042 (n + 1))

end

end A300822.P7897299441642838991

namespace A300822

/-- `A000010(n+1)+A300823(n+1)-A244042(n+1)` -/
def P7897299441642838991.Spec : Prop :=
  ∀ n, P7897299441642838991.a n = A300822 (n + 1)

theorem P7897299441642838991.correct : P7897299441642838991.Spec := by
  intro n
  simp only [A300822, Nat.add_sub_cancel, A300822.P7897299441642838991.a, A300822.P15035204779735603999.f1, A300822.P15035204779735603999.a, A000010, A000010.P4673923239450215316.a, A008683, A008683.P10736294816071761024.f1, A008683.P10736294816071761024.a, A244042, A244042.P9314766524248185345.a, A300222, A300222.P16406266268068730929.a, A300823, A300823.P4910350933719634808.a, A003557, A003557.P6364735403900941810.a, A005836, A005836.P12367569128854000442.a, A051953, A051953.P11179276897610979764.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A289814, A289814.P11371932108795153936.a, A300824, A300824.P10710037846175937081.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A300822

/-! ## A300822.P6739563897590783101

`Δ[A049632(n)-A049643(n)]-A300821(n+1)`
-/

namespace A300822.P6739563897590783101
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049632 n - A049643 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A300821 (n + 1)

end

end A300822.P6739563897590783101

namespace A300822

/-- `Δ[A049632(n)-A049643(n)]-A300821(n+1)` -/
def P6739563897590783101.Spec : Prop :=
  ∀ n, P6739563897590783101.a n = A300822 (n + 1)

end A300822

/-! ## A300822.P9169779995406857651

`A049633(n)-(A300821(n+1)+A049632(n))`
-/

namespace A300822.P9169779995406857651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049633 n - (A300821 (n + 1) + A049632 n)

end

end A300822.P9169779995406857651

namespace A300822

/-- `A049633(n)-(A300821(n+1)+A049632(n))` -/
def P9169779995406857651.Spec : Prop :=
  ∀ n, P9169779995406857651.a n = A300822 (n + 1)

end A300822

/-! ## A300822.P12418471955506927805

`A164296(n+1)+A164297(n+1)-A300821(n+1)`
-/

namespace A300822.P12418471955506927805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164296 (n + 1) + (A164297 (n + 1) - A300821 (n + 1))

end

end A300822.P12418471955506927805

namespace A300822

/-- `A164296(n+1)+A164297(n+1)-A300821(n+1)` -/
def P12418471955506927805.Spec : Prop :=
  ∀ n, P12418471955506927805.a n = A300822 (n + 1)

end A300822

/-!
# A300823: Difference between A244042 and its Möbius transform.

The programs for A300823, the canonical program `A300823.P4910350933719634808` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A300823 has offset 1).

The definition of A300823 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A300824, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A300823.P4910350933719634808

`A051953(n+1)-A300824(n+1)`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A300823

/-- `A051953(n+1)-A300824(n+1)` -/
def P4910350933719634808.Spec : Prop :=
  ∀ n, P4910350933719634808.a n = A300823 (n + 1)

theorem P4910350933719634808.correct : P4910350933719634808.Spec := by
  intro n
  simp only [A300823, Nat.add_sub_cancel]

end A300823

/-! ## A300823.P3038373867044407000

`A244042(n+1)-A300821(n+1)`
-/

namespace A300823.P3038373867044407000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244042 (n + 1) - A300821 (n + 1)

end

end A300823.P3038373867044407000

namespace A300823

/-- `A244042(n+1)-A300821(n+1)` -/
def P3038373867044407000.Spec : Prop :=
  ∀ n, P3038373867044407000.a n = A300823 (n + 1)

theorem P3038373867044407000.correct : P3038373867044407000.Spec := by
  intro n
  simp only [A300823, Nat.add_sub_cancel, A300823.P3038373867044407000.a, A300823.P4910350933719634808.a, A051953, A051953.P11179276897610979764.a, A244042, A244042.P9314766524248185345.a, A300821, A300821.P1207852597847785966.a, A300824, A300824.P10710037846175937081.a, A000010, A000010.P4673923239450215316.a, A005836, A005836.P12367569128854000442.a, A289814, A289814.P11371932108795153936.a, A300222, A300222.P16406266268068730929.a, A300822, A300822.P15035204779735603999.f1, A300822.P15035204779735603999.a, A003557, A003557.P6364735403900941810.a, A008683, A008683.P10736294816071761024.f1, A008683.P10736294816071761024.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A300823

/-! ## A300823.P11063876622181925271

`n+1-(A300824(n+1)+A000010(n+1))`
-/

namespace A300823.P11063876622181925271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - (A300824 (n + 1) + A000010 (n + 1))

end

end A300823.P11063876622181925271

namespace A300823

/-- `n+1-(A300824(n+1)+A000010(n+1))` -/
def P11063876622181925271.Spec : Prop :=
  ∀ n, P11063876622181925271.a n = A300823 (n + 1)

theorem P11063876622181925271.correct : P11063876622181925271.Spec := by
  intro n
  simp only [A300823, Nat.add_sub_cancel, A300823.P11063876622181925271.a, A300823.P4910350933719634808.a, A000010, A000010.P4673923239450215316.a, A051953, A051953.P11179276897610979764.a, A300824, A300824.P10710037846175937081.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A300222, A300222.P16406266268068730929.a, A300822, A300822.P15035204779735603999.f1, A300822.P15035204779735603999.a, A005836, A005836.P12367569128854000442.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A008683, A008683.P10736294816071761024.f1, A008683.P10736294816071761024.a, A289814, A289814.P11371932108795153936.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A300823

/-! ## A300823.P4810084547592566447

`∑{d}[n+1, A057427(#-1)*A300821((n+1)/#)]`
-/

namespace A300823.P4810084547592566447
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A057427 (d - 1) * A300821 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A300823.P4810084547592566447

namespace A300823

/-- `∑{d}[n+1, A057427(#-1)*A300821((n+1)/#)]` -/
def P4810084547592566447.Spec : Prop :=
  ∀ n, P4810084547592566447.a n = A300823 (n + 1)

end A300823

/-! ## A300823.P16487800520903579738

`A051953(n+1)+A300822(n+1)-A300222(n+1)`
-/

namespace A300823.P16487800520903579738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051953 (n + 1) + (A300822 (n + 1) - A300222 (n + 1))

end

end A300823.P16487800520903579738

namespace A300823

/-- `A051953(n+1)+A300822(n+1)-A300222(n+1)` -/
def P16487800520903579738.Spec : Prop :=
  ∀ n, P16487800520903579738.a n = A300823 (n + 1)

theorem P16487800520903579738.correct : P16487800520903579738.Spec := by
  intro n
  simp only [A300823, Nat.add_sub_cancel, A300823.P16487800520903579738.a, A300823.P4910350933719634808.a, A051953, A051953.P11179276897610979764.a, A300222, A300222.P16406266268068730929.a, A300822, A300822.P15035204779735603999.f1, A300822.P15035204779735603999.a, A300824, A300824.P10710037846175937081.a, A000010, A000010.P4673923239450215316.a, A005836, A005836.P12367569128854000442.a, A008683, A008683.P10736294816071761024.f1, A008683.P10736294816071761024.a, A289814, A289814.P11371932108795153936.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A300823

/-! ## A300823.P5671461778444348460

`A318325(n+1)-(A318326(n+1)+A300824(n+1))`
-/

namespace A300823.P5671461778444348460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318325 (n + 1) - (A318326 (n + 1) + A300824 (n + 1))

end

end A300823.P5671461778444348460

namespace A300823

/-- `A318325(n+1)-(A318326(n+1)+A300824(n+1))` -/
def P5671461778444348460.Spec : Prop :=
  ∀ n, P5671461778444348460.a n = A300823 (n + 1)

theorem P5671461778444348460.correct : P5671461778444348460.Spec := by
  intro n
  simp only [A300823, Nat.add_sub_cancel, A300823.P5671461778444348460.a, A300823.P4910350933719634808.a, A051953, A051953.P11179276897610979764.a, A300824, A300824.P10710037846175937081.a, A318325, A318325.P6590032439412958240.f1, A318325.P6590032439412958240.a, A318326, A318326.P16485873540069210944.a, A000010, A000010.P4673923239450215316.a, A057427, A057427.P3058147525557661423.a, A291784, A291784.P16578059245399966389.f1, A291784.P16578059245399966389.a, A300222, A300222.P16406266268068730929.a, A300822, A300822.P15035204779735603999.f1, A300822.P15035204779735603999.a, A000007, A000007.P6599383543502402472.a, A003557, A003557.P6364735403900941810.a, A005836, A005836.P12367569128854000442.a, A008683, A008683.P10736294816071761024.f1, A008683.P10736294816071761024.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A271102, A271102.P3010353493992336101.f1, A271102.P3010353493992336101.a, A289814, A289814.P11371932108795153936.a, A378542, A378542.P16518719972786175247.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A378543, A378543.P12831466803385793164.f1, A378543.P12831466803385793164.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A300823

/-! ## A300823.P2645081443418801503

`A318827(n+1)-(A318830(n+1)+A300824(n+1))`
-/

namespace A300823.P2645081443418801503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318827 (n + 1) - (A318830 (n + 1) + A300824 (n + 1))

end

end A300823.P2645081443418801503

namespace A300823

/-- `A318827(n+1)-(A318830(n+1)+A300824(n+1))` -/
def P2645081443418801503.Spec : Prop :=
  ∀ n, P2645081443418801503.a n = A300823 (n + 1)

end A300823

/-! ## A300823.P16330226700324730035

`A318828(n+1)-(A318840(n+1)+A300824(n+1))`
-/

namespace A300823.P16330226700324730035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318828 (n + 1) - (A318840 (n + 1) + A300824 (n + 1))

end

end A300823.P16330226700324730035

namespace A300823

/-- `A318828(n+1)-(A318840(n+1)+A300824(n+1))` -/
def P16330226700324730035.Spec : Prop :=
  ∀ n, P16330226700324730035.a n = A300823 (n + 1)

theorem P16330226700324730035.correct : P16330226700324730035.Spec := by
  intro n
  simp only [A300823, Nat.add_sub_cancel, A300823.P16330226700324730035.a, A300823.P4910350933719634808.a, A051953, A051953.P11179276897610979764.a, A300824, A300824.P10710037846175937081.a, A318828, A318828.P2519863586055671682.a, A318840, A318840.P4824797439622119668.a, A000010, A000010.P4673923239450215316.a, A063994, A063994.P16689841622396858113.f1, A063994.P16689841622396858113.a, A300222, A300222.P16406266268068730929.a, A300822, A300822.P15035204779735603999.f1, A300822.P15035204779735603999.a, A003557, A003557.P6364735403900941810.a, A005836, A005836.P12367569128854000442.a, A008683, A008683.P10736294816071761024.f1, A008683.P10736294816071761024.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A289814, A289814.P11371932108795153936.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A300823

/-! ## A300823.P13015780537541875303

`A348971(n+1)-(A348030(n+1)+A300824(n+1))`
-/

namespace A300823.P13015780537541875303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348971 (n + 1) - (A348030 (n + 1) + A300824 (n + 1))

end

end A300823.P13015780537541875303

namespace A300823

/-- `A348971(n+1)-(A348030(n+1)+A300824(n+1))` -/
def P13015780537541875303.Spec : Prop :=
  ∀ n, P13015780537541875303.a n = A300823 (n + 1)

theorem P13015780537541875303.correct : P13015780537541875303.Spec := by
  intro n
  simp only [A300823, Nat.add_sub_cancel, A300823.P13015780537541875303.a, A300823.P4910350933719634808.a, A051953, A051953.P11179276897610979764.a, A300824, A300824.P10710037846175937081.a, A348030, A348030.P17211473318799311416.a, A348971, A348971.P11156141318395468406.a, A000010, A000010.P4673923239450215316.a, A003968, A003968.P10961526323602588276.a, A300222, A300222.P16406266268068730929.a, A300822, A300822.P15035204779735603999.f1, A300822.P15035204779735603999.a, A001615, A001615.P12078511981713404634.a, A003557, A003557.P6364735403900941810.a, A005836, A005836.P12367569128854000442.a, A008683, A008683.P10736294816071761024.f1, A008683.P10736294816071761024.a, A167338, A167338.P16855439668138890439.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A289814, A289814.P11371932108795153936.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A003959, A003959.P4118819690015594160.f1, A003959.P4118819690015594160.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A300823

/-! ## A300823.P1634435523674787965

`A359602(n+1)-(A359601(n+1)+A300821(n+1))`
-/

namespace A300823.P1634435523674787965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359602 (n + 1) - (A359601 (n + 1) + A300821 (n + 1))

end

end A300823.P1634435523674787965

namespace A300823

/-- `A359602(n+1)-(A359601(n+1)+A300821(n+1))` -/
def P1634435523674787965.Spec : Prop :=
  ∀ n, P1634435523674787965.a n = A300823 (n + 1)

end A300823

/-! ## A300823.P368570125286400498

`∑{d}[n+1, A157658(#)*A244042((n+1)/#)]`
-/

namespace A300823.P368570125286400498
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A157658 d * A244042 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A300823.P368570125286400498

namespace A300823

/-- `∑{d}[n+1, A157658(#)*A244042((n+1)/#)]` -/
def P368570125286400498.Spec : Prop :=
  ∀ n, P368570125286400498.a n = A300823 (n + 1)

end A300823

/-! ## A300823.P16936999041485222327

`A244042(n+1)+A300822(n+1)-A000010(n+1)`
-/

namespace A300823.P16936999041485222327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244042 (n + 1) + (A300822 (n + 1) - A000010 (n + 1))

end

end A300823.P16936999041485222327

namespace A300823

/-- `A244042(n+1)+A300822(n+1)-A000010(n+1)` -/
def P16936999041485222327.Spec : Prop :=
  ∀ n, P16936999041485222327.a n = A300823 (n + 1)

theorem P16936999041485222327.correct : P16936999041485222327.Spec := by
  intro n
  simp only [A300823, Nat.add_sub_cancel, A300823.P16936999041485222327.a, A300823.P4910350933719634808.a, A000010, A000010.P4673923239450215316.a, A051953, A051953.P11179276897610979764.a, A244042, A244042.P9314766524248185345.a, A300822, A300822.P15035204779735603999.f1, A300822.P15035204779735603999.a, A300824, A300824.P10710037846175937081.a, A003557, A003557.P6364735403900941810.a, A005836, A005836.P12367569128854000442.a, A008683, A008683.P10736294816071761024.f1, A008683.P10736294816071761024.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A289814, A289814.P11371932108795153936.a, A300222, A300222.P16406266268068730929.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A300823

/-!
# A300824: Difference between A300222(n) and its Möbius transform.

The programs for A300824, the canonical program `A300824.P10710037846175937081` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A300824 has offset 1).

The definition of A300824 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A300222, A300822, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A300824.P3651052541846542455

`A051953(n+1)-A300823(n+1)`
-/

namespace A300824.P3651052541846542455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051953 (n + 1) - A300823 (n + 1)

end

end A300824.P3651052541846542455

namespace A300824

/-- `A051953(n+1)-A300823(n+1)` -/
def P3651052541846542455.Spec : Prop :=
  ∀ n, P3651052541846542455.a n = A300824 (n + 1)

theorem P3651052541846542455.correct : P3651052541846542455.Spec := by
  intro n
  simp only [A300824, Nat.add_sub_cancel, A300824.P3651052541846542455.a, A300824.P10710037846175937081.a, A051953, A051953.P11179276897610979764.a, A300222, A300222.P16406266268068730929.a, A300822, A300822.P15035204779735603999.f1, A300822.P15035204779735603999.a, A300823, A300823.P4910350933719634808.a, A000010, A000010.P4673923239450215316.a, A005836, A005836.P12367569128854000442.a, A008683, A008683.P10736294816071761024.f1, A008683.P10736294816071761024.a, A289814, A289814.P11371932108795153936.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A300824

/-! ## A300824.P10710037846175937081

`A300222(n+1)-A300822(n+1)`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A300824

/-- `A300222(n+1)-A300822(n+1)` -/
def P10710037846175937081.Spec : Prop :=
  ∀ n, P10710037846175937081.a n = A300824 (n + 1)

theorem P10710037846175937081.correct : P10710037846175937081.Spec := by
  intro n
  simp only [A300824, Nat.add_sub_cancel]

end A300824

/-! ## A300824.P3369336522132245428

`n+1-(A300823(n+1)+A000010(n+1))`
-/

namespace A300824.P3369336522132245428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - (A300823 (n + 1) + A000010 (n + 1))

end

end A300824.P3369336522132245428

namespace A300824

/-- `n+1-(A300823(n+1)+A000010(n+1))` -/
def P3369336522132245428.Spec : Prop :=
  ∀ n, P3369336522132245428.a n = A300824 (n + 1)

theorem P3369336522132245428.correct : P3369336522132245428.Spec := by
  intro n
  simp only [A300824, Nat.add_sub_cancel, A300824.P3369336522132245428.a, A300824.P10710037846175937081.a, A000010, A000010.P4673923239450215316.a, A300222, A300222.P16406266268068730929.a, A300822, A300822.P15035204779735603999.f1, A300822.P15035204779735603999.a, A300823, A300823.P4910350933719634808.a, A003557, A003557.P6364735403900941810.a, A005836, A005836.P12367569128854000442.a, A008683, A008683.P10736294816071761024.f1, A008683.P10736294816071761024.a, A051953, A051953.P11179276897610979764.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A289814, A289814.P11371932108795153936.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A300824

/-! ## A300824.P709850855131006386

`∑{d}[n+1, A157658(#)*A300222((n+1)/#)]`
-/

namespace A300824.P709850855131006386
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A157658 d * A300222 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A300824.P709850855131006386

namespace A300824

/-- `∑{d}[n+1, A157658(#)*A300222((n+1)/#)]` -/
def P709850855131006386.Spec : Prop :=
  ∀ n, P709850855131006386.a n = A300824 (n + 1)

end A300824

/-! ## A300824.P153475552544029129

`∑{d}[n+1, A057427(#-1)*A300822((n+1)/#)]`
-/

namespace A300824.P153475552544029129
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A057427 (d - 1) * A300822 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A300824.P153475552544029129

namespace A300824

/-- `∑{d}[n+1, A057427(#-1)*A300822((n+1)/#)]` -/
def P153475552544029129.Spec : Prop :=
  ∀ n, P153475552544029129.a n = A300824 (n + 1)

end A300824

/-! ## A300824.P696836487902981235

`A300222(n+1)+A300821(n+1)-A000010(n+1)`
-/

namespace A300824.P696836487902981235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300222 (n + 1) + (A300821 (n + 1) - A000010 (n + 1))

end

end A300824.P696836487902981235

namespace A300824

/-- `A300222(n+1)+A300821(n+1)-A000010(n+1)` -/
def P696836487902981235.Spec : Prop :=
  ∀ n, P696836487902981235.a n = A300824 (n + 1)

theorem P696836487902981235.correct : P696836487902981235.Spec := by
  intro n
  simp only [A300824, Nat.add_sub_cancel, A300824.P696836487902981235.a, A300824.P10710037846175937081.a, A000010, A000010.P4673923239450215316.a, A300222, A300222.P16406266268068730929.a, A300821, A300821.P1207852597847785966.a, A300822, A300822.P15035204779735603999.f1, A300822.P15035204779735603999.a, A003557, A003557.P6364735403900941810.a, A005836, A005836.P12367569128854000442.a, A008683, A008683.P10736294816071761024.f1, A008683.P10736294816071761024.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A289814, A289814.P11371932108795153936.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A300824

/-! ## A300824.P8533302910198236744

`A051953(n+1)+A300821(n+1)-A244042(n+1)`
-/

namespace A300824.P8533302910198236744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051953 (n + 1) + (A300821 (n + 1) - A244042 (n + 1))

end

end A300824.P8533302910198236744

namespace A300824

/-- `A051953(n+1)+A300821(n+1)-A244042(n+1)` -/
def P8533302910198236744.Spec : Prop :=
  ∀ n, P8533302910198236744.a n = A300824 (n + 1)

theorem P8533302910198236744.correct : P8533302910198236744.Spec := by
  intro n
  simp only [A300824, Nat.add_sub_cancel, A300824.P8533302910198236744.a, A300824.P10710037846175937081.a, A051953, A051953.P11179276897610979764.a, A244042, A244042.P9314766524248185345.a, A300222, A300222.P16406266268068730929.a, A300821, A300821.P1207852597847785966.a, A300822, A300822.P15035204779735603999.f1, A300822.P15035204779735603999.a, A000010, A000010.P4673923239450215316.a, A005836, A005836.P12367569128854000442.a, A008683, A008683.P10736294816071761024.f1, A008683.P10736294816071761024.a, A289814, A289814.P11371932108795153936.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A300824

/-!
# A300825: Filter sequence combining A300823(n) and A300824(n).

The programs for A300825, there is no canonical definition to state claims against.
-/

/-! ## A300825.P14018341490325826353

`A296073(n+1)-A030386(A015070(n+1))`
-/

namespace A300825.P14018341490325826353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296073 (n + 1) - A030386 (A015070 (n + 1)).toNat

end

end A300825.P14018341490325826353

/-! ## A300825.P1533296384015317395

`A369051(n+1)-A086011(A392462(n+1))`
-/

namespace A300825.P1533296384015317395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369051 (n + 1) - A086011 (A392462 (n + 1)).toNat

end

end A300825.P1533296384015317395

/-!
# A300826: a(n) = n/A125746(n), where A125746(n) gives the smallest divisor d of n such that the sum which includes d and all smaller divisors is >= n.

The programs for A300826, there is no canonical definition to state claims against.
-/

/-! ## A300826.P2556056329198209797

`(n+1)/A125746(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A300826.P2556056329198209797
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A125746 (n + 1) : ℚ)

end

end A300826.P2556056329198209797

/-! ## A300826.P12921947455451286705

`(n+1)*A125746(or(n+1, C(2, n)))^-1`
-/

namespace A300826.P12921947455451286705
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) * (A125746 (Nat.lor (n + 1) (Nat.choose 2 n)) : ℚ) ^ (-1 : ℤ)

end

end A300826.P12921947455451286705

/-! ## A300826.P6863886920245353240

`A004884((n+1)*A125746(n+1)^-1+1)`
-/

namespace A300826.P6863886920245353240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004884 (SequenceMachineLib.roundAway ((n + 1 : ℚ) * (A125746 (n + 1) : ℚ) ^ (-1 : ℤ) + 1)).toNat

end

end A300826.P6863886920245353240

/-! ## A300826.P14382761824305801007

`A125746(n+1)^-1*A096779(A096779(n+1))`
-/

namespace A300826.P14382761824305801007
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A125746 (n + 1) : ℚ) ^ (-1 : ℤ) * (A096779 (A096779 (n + 1)).toNat : ℚ)

end

end A300826.P14382761824305801007

/-! ## A300826.P12935721900547284776

`val(A026549(n), A026549(A125746(n+1)))+1`
-/

namespace A300826.P12935721900547284776
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A026549 n).toNat (A026549 (A125746 (n + 1)).toNat).toNat + 1

end

end A300826.P12935721900547284776

/-! ## A300826.P10372559315353268462

`A302110(n+1)+A000700(A302110(n²+1))`
-/

namespace A300826.P10372559315353268462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302110 (n + 1) + A000700 (A302110 (n ^ 2 + 1)).toNat

end

end A300826.P10372559315353268462

/-! ## A300826.P4574446356799168900

`A302110(n+1)+A215926(A023196(n+1))`
-/

namespace A300826.P4574446356799168900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302110 (n + 1) + A215926 (A023196 (n + 1)).toNat

end

end A300826.P4574446356799168900

/-! ## A300826.P4912038701298521128

`(A014963(50*(n+1))+n)*A125746(n+1)^-1`
-/

namespace A300826.P4912038701298521128
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014963 (50 * (n + 1)) + (n : ℤ) : ℚ) * (A125746 (n + 1) : ℚ) ^ (-1 : ℤ)

end

end A300826.P4912038701298521128

/-! ## A300826.P16973912794147010230

`A302110(A005231(n+1))+A302110(n+1)`
-/

namespace A300826.P16973912794147010230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302110 (A005231 (n + 1)).toNat + A302110 (n + 1)

end

end A300826.P16973912794147010230

/-! ## A300826.P8490512383697372348

`A302110(A006037(n+1))+A302110(n+1)`
-/

namespace A300826.P8490512383697372348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302110 (A006037 (n + 1)).toNat + A302110 (n + 1)

end

end A300826.P8490512383697372348

/-! ## A300826.P2897026799124781048

`A302130(23^A302110(n+1))`
-/

namespace A300826.P2897026799124781048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302130 (SequenceMachineLib.roundAway ((23 : ℚ) ^ (A302110 (n + 1) : ℤ))).toNat

end

end A300826.P2897026799124781048

/-! ## A300826.P1986767470613471292

`A302110(3*4*18^A302110(n+1))`
-/

namespace A300826.P1986767470613471292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302110 (SequenceMachineLib.roundAway (3 * (4 * (18 : ℚ) ^ (A302110 (n + 1) : ℤ)))).toNat

end

end A300826.P1986767470613471292

/-! ## A300826.P16488927399501062540

`A244051(A160664(n)+n)`
-/

namespace A300826.P16488927399501062540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244051 (A160664 n + (n : ℤ)).toNat

end

end A300826.P16488927399501062540

/-! ## A300826.P16044740710517739805

`A302110(n+1)+A008315(n²)`
-/

namespace A300826.P16044740710517739805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302110 (n + 1) + A008315 (n ^ 2)

end

end A300826.P16044740710517739805

/-! ## A300826.P353658211946116271

`A076686((n+1)*A125746(n+1))`
-/

namespace A300826.P353658211946116271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076686 ((n + 1 : ℤ) * A125746 (n + 1)).toNat

end

end A300826.P353658211946116271

/-!
# A300827: Lexicographically earliest sequence such that a(i) = a(j) => A324193(i) = A324193(j) for all i, j >= 1.

The programs for A300827, there is no canonical definition to state claims against.
-/

/-! ## A300827.P2531203569035156138

`A331301(n+1)-A225654(A006577(n+1))`
-/

namespace A300827.P2531203569035156138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331301 (n + 1) - A225654 (A006577 (n + 1)).toNat

end

end A300827.P2531203569035156138

/-! ## A300827.P583365870704653219

`A331301(n+1)-A324192(A065299(n+1))`
-/

namespace A300827.P583365870704653219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331301 (n + 1) - A324192 (A065299 (n + 1)).toNat

end

end A300827.P583365870704653219

/-! ## A300827.P3569234459955339032

`A331301(n+1)-A157928(A003241(n+1))`
-/

namespace A300827.P3569234459955339032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331301 (n + 1) - A157928 (A003241 (n + 1)).toNat

end

end A300827.P3569234459955339032

/-!
# A300828: Multiplicative with a(p^2) = 1, a(p^3) = -2 and a(p^e) = 0 when e = 1 or e > 3.

The programs for A300828, the canonical program `A300828.P12023427711268825408` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A300828 has offset 1).

The definition of A300828 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A300828.P7960356216006250337

`∏{e}[n+1, A235789(#-1)%4]`
-/

namespace A300828.P7960356216006250337
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), Int.tmod (A235789 (Nat.factorization (f1 n) p - 1)) 4

end

end A300828.P7960356216006250337

namespace A300828

/-- `∏{e}[n+1, A235789(#-1)%4]` -/
def P7960356216006250337.Spec : Prop :=
  ∀ n, P7960356216006250337.a n = A300828 (n + 1)

end A300828

/-! ## A300828.P12023427711268825408

`A095683(n+1)*A189022(n+1)`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A300828

/-- `A095683(n+1)*A189022(n+1)` -/
def P12023427711268825408.Spec : Prop :=
  ∀ n, P12023427711268825408.a n = A300828 (n + 1)

theorem P12023427711268825408.correct : P12023427711268825408.Spec := by
  intro n
  simp only [A300828, Nat.add_sub_cancel]

end A300828

/-! ## A300828.P8617346976820427890

`A095683(n+1)*A363552(n+1)`
-/

namespace A300828.P8617346976820427890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095683 (n + 1) * A363552 (n + 1)

end

end A300828.P8617346976820427890

namespace A300828

/-- `A095683(n+1)*A363552(n+1)` -/
def P8617346976820427890.Spec : Prop :=
  ∀ n, P8617346976820427890.a n = A300828 (n + 1)

end A300828

/-! ## A300828.P5845201413776393056

`A189022(n+1)*A361430(n+1)`
-/

namespace A300828.P5845201413776393056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189022 (n + 1) * A361430 (n + 1)

end

end A300828.P5845201413776393056

namespace A300828

/-- `A189022(n+1)*A361430(n+1)` -/
def P5845201413776393056.Spec : Prop :=
  ∀ n, P5845201413776393056.a n = A300828 (n + 1)

end A300828

/-! ## A300828.P13608824776254868114

`A361430(n+1)*A363552(n+1)`
-/

namespace A300828.P13608824776254868114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361430 (n + 1) * A363552 (n + 1)

end

end A300828.P13608824776254868114

namespace A300828

/-- `A361430(n+1)*A363552(n+1)` -/
def P13608824776254868114.Spec : Prop :=
  ∀ n, P13608824776254868114.a n = A300828 (n + 1)

end A300828

/-! ## A300828.P13384776857601096322

`∏{e}[n+1, A262929(A278958(#)+2)]`
-/

namespace A300828.P13384776857601096322
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A262929 (A278958 (Nat.factorization (f1 n) p) + 2).toNat

end

end A300828.P13384776857601096322

namespace A300828

/-- `∏{e}[n+1, A262929(A278958(#)+2)]` -/
def P13384776857601096322.Spec : Prop :=
  ∀ n, P13384776857601096322.a n = A300828 (n + 1)

end A300828

/-! ## A300828.P520856135585520263

`∏{e}[n+1, A231864(#)]*A189022(n+1)`
-/

namespace A300828.P520856135585520263
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∏ p ∈ Nat.primeFactors (f1 n), A231864 (Nat.factorization (f1 n) p)) * A189022 (n + 1)

end

end A300828.P520856135585520263

namespace A300828

/-- `∏{e}[n+1, A231864(#)]*A189022(n+1)` -/
def P520856135585520263.Spec : Prop :=
  ∀ n, P520856135585520263.a n = A300828 (n + 1)

end A300828

/-! ## A300828.P3189121121136981401

`∏{e}[n+1, A016220(A131938(#+1))*A263577(#)]`
-/

namespace A300828.P3189121121136981401
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A016220 (A131938 (Nat.factorization (f1 n) p + 1)).toNat * A263577 (Nat.factorization (f1 n) p)

end

end A300828.P3189121121136981401

namespace A300828

/-- `∏{e}[n+1, A016220(A131938(#+1))*A263577(#)]` -/
def P3189121121136981401.Spec : Prop :=
  ∀ n, P3189121121136981401.a n = A300828 (n + 1)

end A300828

/-!
# A300829: Positions of records in A303761 and in A303765; a(n) = A303766(A000225(n)).

The programs for A300829, there is no canonical definition to state claims against.
-/

/-! ## A300829.P18139556559235830202

`lt[A089633(n)², A303761(n)]`
-/

namespace A300829.P18139556559235830202
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089633 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303761 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A300829.P18139556559235830202

/-! ## A300829.P6183641583534766194

`lt[A326418(n+1), A303761(n)]`
-/

namespace A300829.P6183641583534766194
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326418 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303761 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A300829.P6183641583534766194

/-! ## A300829.P13927867610065176526

`lt[A023758(n+1)², A303761(n)]`
-/

namespace A300829.P13927867610065176526
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023758 (n + 1) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303761 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A300829.P13927867610065176526

/-! ## A300829.P14014388357654833621

`lt[A260633(n+1), A303761(n)+A069059(n+1)]`
-/

namespace A300829.P14014388357654833621
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260633 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303761 n + A069059 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A300829.P14014388357654833621

/-! ## A300829.P1731604117359698219

`lt[0, A036987(A303765(n))]`
-/

namespace A300829.P1731604117359698219
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036987 (A303765 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A300829.P1731604117359698219

/-!
# A300830: a(n) = Product_{d|n} A019565(d)^(1-A008966(n/d)).

The programs for A300830, there is no canonical definition to state claims against.
-/

/-! ## A300830.P672425292703173768

`A293214(n+1)/(A300831(n+1)*A300832(n+1))`
-/

namespace A300830.P672425292703173768
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A293214 (n + 1) : ℚ) / (A300831 (n + 1) * A300832 (n + 1) : ℚ)

end

end A300830.P672425292703173768

/-! ## A300830.P10559385729988456353

`A278165(∏{e}[(n+1)*ceil(2^(n+1)/(n+1)), #])`
-/

namespace A300830.P10559385729988456353
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * ⌈(2 ^ (n + 1) : ℚ) / (n + 1 : ℚ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278165 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p)

end

end A300830.P10559385729988456353

/-! ## A300830.P9072834723684327751

`A339810(A000188(n+1)^A008315(n))`
-/

namespace A300830.P9072834723684327751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339810 (SequenceMachineLib.roundAway ((A000188 (n + 1) : ℚ) ^ (A008315 n : ℤ))).toNat

end

end A300830.P9072834723684327751

/-! ## A300830.P12091063463488539633

`A046523(A351315(n+1)%A131673(3*n+1))`
-/

namespace A300830.P12091063463488539633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (Int.tmod (A351315 (n + 1)) (A131673 (3 * n + 1))).toNat

end

end A300830.P12091063463488539633

/-! ## A300830.P9569916951461563148

`gcd(A278224(A003242(n)), A349911(n+1))`
-/

namespace A300830.P9569916951461563148
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A278224 (A003242 n).toNat) (A349911 (n + 1))

end

end A300830.P9569916951461563148

/-!
# A300831: a(n) = Product_{d|n, d<n} A019565(d)^[moebius(n/d) = +1].

The programs for A300831, there is no canonical definition to state claims against.
-/

/-! ## A300831.P1906160575671806534

`A293214(n+1)/(A300830(n+1)*A300832(n+1))`
-/

namespace A300831.P1906160575671806534
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A293214 (n + 1) : ℚ) / (A300830 (n + 1) * A300832 (n + 1) : ℚ)

end

end A300831.P1906160575671806534

/-! ## A300831.P12879639893622136067

`A319680(n+1)/A019565(n+1)`
-/

namespace A300831.P12879639893622136067
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A319680 (n + 1) : ℚ) / (A019565 (n + 1) : ℚ)

end

end A300831.P12879639893622136067

/-! ## A300831.P12254059118810498476

`A319680(n+1)/(A288570(n+1)-A288570(n))`
-/

namespace A300831.P12254059118810498476
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A319680 (n + 1) : ℚ) / (A288570 (n + 1) - A288570 n : ℚ)

end

end A300831.P12254059118810498476

/-! ## A300831.P5855594630168317614

`A379672(A329600(n+1))`
-/

namespace A300831.P5855594630168317614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379672 (A329600 (n + 1)).toNat

end

end A300831.P5855594630168317614

/-! ## A300831.P3284856452093157007

`∏{e}[A011782(∑{d}[A066882(n+1), #]), #]`
-/

namespace A300831.P3284856452093157007
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066882 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (∑ d ∈ Nat.divisors (f2 n).natAbs, d)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A300831.P3284856452093157007

/-!
# A300832: a(n) = Product_{d|n} A019565(d)^[moebius(n/d) = -1].

The programs for A300832, there is no canonical definition to state claims against.
-/

/-! ## A300832.P12814995631956295506

`A293214(n+1)/(A300830(n+1)*A300831(n+1))`
-/

namespace A300832.P12814995631956295506
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A293214 (n + 1) : ℚ) / (A300830 (n + 1) * A300831 (n + 1) : ℚ)

end

end A300832.P12814995631956295506

/-! ## A300832.P13194002740620145605

`A318809(A062513(n+1))*A329352(n+1)`
-/

namespace A300832.P13194002740620145605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318809 (A062513 (n + 1)).toNat * A329352 (n + 1)

end

end A300832.P13194002740620145605

/-! ## A300832.P14583370460840437750

`∏{p}[n+1, A019565((n+1)/#)]*A318809(A062513(n+1))`
-/

namespace A300832.P14583370460840437750
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∏ p ∈ Nat.primeFactors (f1 n), A019565 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (p : ℚ))).toNat) * A318809 (A062513 (n + 1)).toNat

end

end A300832.P14583370460840437750

/-! ## A300832.P12893394870357713984

`A008480(A335450(n+1))*A329352(n+1)`
-/

namespace A300832.P12893394870357713984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008480 (A335450 (n + 1)).toNat * A329352 (n + 1)

end

end A300832.P12893394870357713984

/-! ## A300832.P5274729470505980370

`∏{p}[n+1, A019565((n+1)/#)]*A008480(A335450(n+1))`
-/

namespace A300832.P5274729470505980370
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∏ p ∈ Nat.primeFactors (f1 n), A019565 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (p : ℚ))).toNat) * A008480 (A335450 (n + 1)).toNat

end

end A300832.P5274729470505980370

/-! ## A300832.P12099143731129787643

`A081707(A335450(n+1))*A329352(A000027(n+1))`
-/

namespace A300832.P12099143731129787643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081707 (A335450 (n + 1)).toNat * A329352 (A000027 (n + 1)).toNat

end

end A300832.P12099143731129787643

/-! ## A300832.P1121674064121046987

`∏{e}[A329352(n+1), A069359(#+1)]*A329352(n+1)`
-/

namespace A300832.P1121674064121046987
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329352 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∏ p ∈ Nat.primeFactors (f1 n).natAbs, A069359 (Nat.factorization (f1 n).natAbs p + 1)) * A329352 (n + 1)

end

end A300832.P1121674064121046987

/-!
# A300833: Filter sequence combining A300830(n), A300831(n) and A300832(n), three products formed from such proper divisors d of n for which mu(n/d) = 0, +1 or -1 respectively, where mu is Möbius mu function (A008683).

The programs for A300833, there is no canonical definition to state claims against.
-/

/-! ## A300833.P9265787214688234388

`A373150(n+1)%A003344(A005228(n+1))`
-/

namespace A300833.P9265787214688234388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A373150 (n + 1)) (A003344 (A005228 (n + 1)).toNat)

end

end A300833.P9265787214688234388

/-! ## A300833.P18356248842559824277

`A373150(n+1)%A145669(A005897(n))`
-/

namespace A300833.P18356248842559824277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A373150 (n + 1)) (A145669 (A005897 n).toNat)

end

end A300833.P18356248842559824277

/-! ## A300833.P12042859258676562076

`A373150(n+1)+A007814(A007665(n+1))`
-/

namespace A300833.P12042859258676562076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373150 (n + 1) + A007814 (A007665 (n + 1)).toNat

end

end A300833.P12042859258676562076

/-! ## A300833.P6484666793890597984

`A373150(n+1)+A014405(A005383(n+1))`
-/

namespace A300833.P6484666793890597984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373150 (n + 1) + A014405 (A005383 (n + 1)).toNat

end

end A300833.P6484666793890597984

/-! ## A300833.P16896528099319345475

`A373150(n+1)+A010051(A206039(n+1))`
-/

namespace A300833.P16896528099319345475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373150 (n + 1) + A010051 (A206039 (n + 1)).toNat

end

end A300833.P16896528099319345475

/-! ## A300833.P17390548700209866716

`A373150(n+1)+A069584(A091419(2*n+5))`
-/

namespace A300833.P17390548700209866716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373150 (n + 1) + A069584 (A091419 (2 * n + 5)).toNat

end

end A300833.P17390548700209866716

/-! ## A300833.P11005158121087628697

`A374117(A033274(n+1))+A373150(n+1)`
-/

namespace A300833.P11005158121087628697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374117 (A033274 (n + 1)).toNat + A373150 (n + 1)

end

end A300833.P11005158121087628697

/-! ## A300833.P4230787711907298920

`A292504(A014442(n+1))*A373150(n+1)`
-/

namespace A300833.P4230787711907298920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292504 (A014442 (n + 1)).toNat * A373150 (n + 1)

end

end A300833.P4230787711907298920

/-! ## A300833.P17918733363743484441

`A373150(n+1)+A000122(A006285(2*n+5))`
-/

namespace A300833.P17918733363743484441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373150 (n + 1) + A000122 (A006285 (2 * n + 5)).toNat

end

end A300833.P17918733363743484441

/-! ## A300833.P16456739323735897538

`A373150(n+1)+A007814(A235482(2*(n+1)))`
-/

namespace A300833.P16456739323735897538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373150 (n + 1) + A007814 (A235482 (2 * (n + 1))).toNat

end

end A300833.P16456739323735897538

/-! ## A300833.P12614578912015917297

`A010891(A003961(3*(n+1)))*A373150(n+1)`
-/

namespace A300833.P12614578912015917297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010891 (A003961 (3 * (n + 1))).toNat * A373150 (n + 1)

end

end A300833.P12614578912015917297

/-! ## A300833.P2551131754703674810

`A066247(A001157(2*n+3))*A373150(n+1)`
-/

namespace A300833.P2551131754703674810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066247 (A001157 (2 * n + 3)).toNat * A373150 (n + 1)

end

end A300833.P2551131754703674810

/-! ## A300833.P1528598187225125701

`A353362(A236365(n+1))*A373150(n+1)`
-/

namespace A300833.P1528598187225125701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353362 (A236365 (n + 1)).toNat * A373150 (n + 1)

end

end A300833.P1528598187225125701

/-! ## A300833.P11418252718204741266

`A373150(A014682(2*(n+1)))%A333281(2*(n+1))`
-/

namespace A300833.P11418252718204741266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A373150 (A014682 (2 * (n + 1))).toNat) (A333281 (2 * (n + 1)))

end

end A300833.P11418252718204741266

/-!
# A300834: a(n) = Product_{d|n, d<n} A019565(A003714(d)), where A003714(n) is the n-th Fibbinary number.

The programs for A300834, there is no canonical definition to state claims against.
-/

/-! ## A300834.P8907292507235272027

`A300826(A122534(n+1))*A319352(n+1)`
-/

namespace A300834.P8907292507235272027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300826 (A122534 (n + 1)).toNat * A319352 (n + 1)

end

end A300834.P8907292507235272027

/-! ## A300834.P1226471626217981836

`lcm(A319352(n+1), A333748(A192292(n+1)))`
-/

namespace A300834.P1226471626217981836
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A319352 (n + 1)) (A333748 (A192292 (n + 1)).toNat)

end

end A300834.P1226471626217981836

/-! ## A300834.P9631030777332482601

`A244964(A164962(3*n+4))*A319352(n+1)`
-/

namespace A300834.P9631030777332482601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244964 (A164962 (3 * n + 4)).toNat * A319352 (n + 1)

end

end A300834.P9631030777332482601

/-! ## A300834.P6790216544883493374

`A083911(A000055(n))*A353564(A072087(n+1))`
-/

namespace A300834.P6790216544883493374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083911 (A000055 n).toNat * A353564 (A072087 (n + 1)).toNat

end

end A300834.P6790216544883493374

/-! ## A300834.P4977047649122092899

`A083911(A022413(n))*A353564(A072087(n+1))`
-/

namespace A300834.P4977047649122092899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083911 (A022413 n).toNat * A353564 (A072087 (n + 1)).toNat

end

end A300834.P4977047649122092899

/-!
# A300836: a(n) is the total number of terms (1-digits) in Zeckendorf representation of all proper divisors of n.

The programs for A300836, the canonical program `A300836.P11681242100459120982` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A300836 has offset 1).

The definition of A300836 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A300836.P11303808283648546003

`A300837(n+1)-A007895(n+1)`
-/

namespace A300836.P11303808283648546003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300837 (n + 1) - A007895 (n + 1)

end

end A300836.P11303808283648546003

namespace A300836

/-- `A300837(n+1)-A007895(n+1)` -/
def P11303808283648546003.Spec : Prop :=
  ∀ n, P11303808283648546003.a n = A300836 (n + 1)

theorem P11303808283648546003.correct : P11303808283648546003.Spec := by
  intro n
  simp only [A300836, Nat.add_sub_cancel, A300836.P11303808283648546003.a, A300836.P11681242100459120982.f1, A300836.P11681242100459120982.a, A007895, A007895.P13159574906702943091.a, A300837, A300837.P3407511099178858747.a, A143299, A143299.P15563677956109418683.a, A066628, A066628.P4571683134443220888.f1, A066628.P4571683134443220888.a, A003849, A003849.P15070805603138295355.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A300836

/-! ## A300836.P18283264722461758682

`A001222(A300834(n+1))`
-/

namespace A300836.P18283264722461758682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A300834 (n + 1)).toNat

end

end A300836.P18283264722461758682

namespace A300836

/-- `A001222(A300834(n+1))` -/
def P18283264722461758682.Spec : Prop :=
  ∀ n, P18283264722461758682.a n = A300836 (n + 1)

end A300836

/-! ## A300836.P11681242100459120982

`∑{d}[n+1, A007895(#%(n+1))]`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A300836

/-- `∑{d}[n+1, A007895(#%(n+1))]` -/
def P11681242100459120982.Spec : Prop :=
  ∀ n, P11681242100459120982.a n = A300836 (n + 1)

theorem P11681242100459120982.correct : P11681242100459120982.Spec := by
  intro n
  simp only [A300836, Nat.add_sub_cancel]

end A300836

/-! ## A300836.P12693547081763742889

`∑{d}[n+1, A007895(#)]-A007895(n+1)`
-/

namespace A300836.P12693547081763742889
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007895 d - A007895 (n + 1)

end

end A300836.P12693547081763742889

namespace A300836

/-- `∑{d}[n+1, A007895(#)]-A007895(n+1)` -/
def P12693547081763742889.Spec : Prop :=
  ∀ n, P12693547081763742889.a n = A300836 (n + 1)

end A300836

/-! ## A300836.P248675964110619176

`∑{d}[n+1, A157658(#)*A300837((n+1)/#)]`
-/

namespace A300836.P248675964110619176
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A157658 d * A300837 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A300836.P248675964110619176

namespace A300836

/-- `∑{d}[n+1, A157658(#)*A300837((n+1)/#)]` -/
def P248675964110619176.Spec : Prop :=
  ∀ n, P248675964110619176.a n = A300836 (n + 1)

end A300836

/-! ## A300836.P13874027441659156685

`A300837(n+1)-A000120(A003714(n+1))`
-/

namespace A300836.P13874027441659156685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300837 (n + 1) - A000120 (A003714 (n + 1)).toNat

end

end A300836.P13874027441659156685

namespace A300836

/-- `A300837(n+1)-A000120(A003714(n+1))` -/
def P13874027441659156685.Spec : Prop :=
  ∀ n, P13874027441659156685.a n = A300836 (n + 1)

end A300836

/-!
# A300837: a(n) is the total number of terms (1-digits) in Zeckendorf representation of all divisors of n.

The programs for A300837, the canonical program `A300837.P3407511099178858747` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A300837 has offset 1).

The definition of A300837 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007895, A300836, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A300837.P3407511099178858747

`A300836(n+1)+A007895(n+1)`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A300837

/-- `A300836(n+1)+A007895(n+1)` -/
def P3407511099178858747.Spec : Prop :=
  ∀ n, P3407511099178858747.a n = A300837 (n + 1)

theorem P3407511099178858747.correct : P3407511099178858747.Spec := by
  intro n
  simp only [A300837, Nat.add_sub_cancel]

end A300837

/-! ## A300837.P3256330413758577014

`∑{d}[n+1, A007895(#)]`
-/

namespace A300837.P3256330413758577014
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007895 d

end

end A300837.P3256330413758577014

namespace A300837

/-- `∑{d}[n+1, A007895(#)]` -/
def P3256330413758577014.Spec : Prop :=
  ∀ n, P3256330413758577014.a n = A300837 (n + 1)

end A300837

/-! ## A300837.P4063148174178315199

`∑{d}[n+1, #-A219641(#)]`
-/

namespace A300837.P4063148174178315199
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), ((d : ℤ) - A219641 d)

end

end A300837.P4063148174178315199

namespace A300837

/-- `∑{d}[n+1, #-A219641(#)]` -/
def P4063148174178315199.Spec : Prop :=
  ∀ n, P4063148174178315199.a n = A300837 (n + 1)

end A300837

/-! ## A300837.P1570633838428080485

`∑{d}[n+1, A000120(A003714(#))]`
-/

namespace A300837.P1570633838428080485
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000120 (A003714 d).toNat

end

end A300837.P1570633838428080485

namespace A300837

/-- `∑{d}[n+1, A000120(A003714(#))]` -/
def P1570633838428080485.Spec : Prop :=
  ∀ n, P1570633838428080485.a n = A300837 (n + 1)

end A300837

/-! ## A300837.P7224983730755580856

`∑{d}[n+1, A069010(2*A003714(#))]`
-/

namespace A300837.P7224983730755580856
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A069010 (2 * A003714 d).toNat

end

end A300837.P7224983730755580856

namespace A300837

/-- `∑{d}[n+1, A069010(2*A003714(#))]` -/
def P7224983730755580856.Spec : Prop :=
  ∀ n, P7224983730755580856.a n = A300837 (n + 1)

end A300837

/-!
# A300838: Permutation of nonnegative integers: a(n) = A057300(A003188(n)).

The programs for A300838, the canonical program `A300838.P2409035499828455037` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A300838 has offset 0).

The definition of A300838 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A057300, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A300838.P2409035499828455037

`A057300(A003188(n))`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A300838

/-- `A057300(A003188(n))` -/
def P2409035499828455037.Spec : Prop :=
  ∀ n, P2409035499828455037.a n = A300838 n

theorem P2409035499828455037.correct : P2409035499828455037.Spec := by
  intro n
  simp only [A300838]

end A300838

/-! ## A300838.P439775729151798762

`A057300(xor(n, floor(n/2)))`
-/

namespace A300838.P439775729151798762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057300 (Int.xor (n : ℤ) ⌊(n : ℚ) / 2⌋).toNat

end

end A300838.P439775729151798762

namespace A300838

/-- `A057300(xor(n, floor(n/2)))` -/
def P439775729151798762.Spec : Prop :=
  ∀ n, P439775729151798762.a n = A300838 n

end A300838

/-! ## A300838.P4853592219406995538

`A057300(xor(2*n, and(n, -2))/2)`
-/

namespace A300838.P4853592219406995538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057300 (SequenceMachineLib.roundAway ((Int.xor (2 * n : ℤ) (Int.land (n : ℤ) (-2)) : ℚ) / 2)).toNat

end

end A300838.P4853592219406995538

namespace A300838

/-- `A057300(xor(2*n, and(n, -2))/2)` -/
def P4853592219406995538.Spec : Prop :=
  ∀ n, P4853592219406995538.a n = A300838 n

end A300838

/-! ## A300838.P8474800867367307952

`A057300(ceil(xor(n-1, 2*n)/2))`
-/

namespace A300838.P8474800867367307952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057300 ⌈(Int.xor ((n : ℤ) - 1) (2 * n : ℤ) : ℚ) / 2⌉.toNat

end

end A300838.P8474800867367307952

namespace A300838

/-- `A057300(ceil(xor(n-1, 2*n)/2))` -/
def P8474800867367307952.Spec : Prop :=
  ∀ n, P8474800867367307952.a n = A300838 n

end A300838

/-! ## A300838.P14810550919721539254

`A057300(xor(2*n+1, or(1, n))/2)`
-/

namespace A300838.P14810550919721539254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057300 (SequenceMachineLib.roundAway ((Nat.xor (2 * n + 1) (Nat.lor 1 n) : ℚ) / 2)).toNat

end

end A300838.P14810550919721539254

namespace A300838

/-- `A057300(xor(2*n+1, or(1, n))/2)` -/
def P14810550919721539254.Spec : Prop :=
  ∀ n, P14810550919721539254.a n = A300838 n

end A300838

/-! ## A300838.P14454254035477995406

`A057300(and(2*n, -n)-ceil(n/2))`
-/

namespace A300838.P14454254035477995406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057300 (Int.land (2 * n : ℤ) (-(n : ℤ)) - ⌈(n : ℚ) / 2⌉).toNat

end

end A300838.P14454254035477995406

namespace A300838

/-- `A057300(and(2*n, -n)-ceil(n/2))` -/
def P14454254035477995406.Spec : Prop :=
  ∀ n, P14454254035477995406.a n = A300838 n

end A300838

/-! ## A300838.P5403448785737237427

`A057300(round(xor(2*n+1, n+1)/2))`
-/

namespace A300838.P5403448785737237427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057300 (SequenceMachineLib.roundAway ((Nat.xor (2 * n + 1) (n + 1) : ℚ) / 2)).toNat

end

end A300838.P5403448785737237427

namespace A300838

/-- `A057300(round(xor(2*n+1, n+1)/2))` -/
def P5403448785737237427.Spec : Prop :=
  ∀ n, P5403448785737237427.a n = A300838 n

end A300838

/-! ## A300838.P1694906267815050140

`A057300(A286548(n)+n)`
-/

namespace A300838.P1694906267815050140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057300 (A286548 n + (n : ℤ)).toNat

end

end A300838.P1694906267815050140

namespace A300838

/-- `A057300(A286548(n)+n)` -/
def P1694906267815050140.Spec : Prop :=
  ∀ n, P1694906267815050140.a n = A300838 n

theorem P1694906267815050140.correct : P1694906267815050140.Spec := by
  intro n
  simp only [A300838, Nat.add_sub_cancel, A300838.P1694906267815050140.a, A300838.P2409035499828455037.a, A003188, A003188.P10544524695508875182.a, A057300, A057300.P7665934953070051074.a, A286548, A286548.P11712479418656410754.a, A053985, A053985.P4227650463783182312.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A300838

/-! ## A300838.P13664585780427001882

`A057300(floor(A048726(n)/4))`
-/

namespace A300838.P13664585780427001882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057300 ⌊(A048726 n : ℚ) / 4⌋.toNat

end

end A300838.P13664585780427001882

namespace A300838

/-- `A057300(floor(A048726(n)/4))` -/
def P13664585780427001882.Spec : Prop :=
  ∀ n, P13664585780427001882.a n = A300838 n

end A300838

/-! ## A300838.P5629588095453792752

`A057300(A302844(A163355(n)))`
-/

namespace A300838.P5629588095453792752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057300 (A302844 (A163355 n).toNat).toNat

end

end A300838.P5629588095453792752

namespace A300838

/-- `A057300(A302844(A163355(n)))` -/
def P5629588095453792752.Spec : Prop :=
  ∀ n, P5629588095453792752.a n = A300838 n

end A300838

/-! ## A300838.P5852997776819847359

`A057300(A302846(A302843(n)))`
-/

namespace A300838.P5852997776819847359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057300 (A302846 (A302843 n).toNat).toNat

end

end A300838.P5852997776819847359

namespace A300838

/-- `A057300(A302846(A302843(n)))` -/
def P5852997776819847359.Spec : Prop :=
  ∀ n, P5852997776819847359.a n = A300838 n

end A300838

/-! ## A300838.P3252363462354533762

`A003188(A300839(A286548(n)+n))`
-/

namespace A300838.P3252363462354533762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003188 (A300839 (A286548 n + (n : ℤ)).toNat).toNat

end

end A300838.P3252363462354533762

namespace A300838

/-- `A003188(A300839(A286548(n)+n))` -/
def P3252363462354533762.Spec : Prop :=
  ∀ n, P3252363462354533762.a n = A300838 n

end A300838

/-! ## A300838.P13223133689365907683

`A302846(A163355(A057300(A006068(n))))`
-/

namespace A300838.P13223133689365907683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302846 (A163355 (A057300 (A006068 n).toNat).toNat).toNat

end

end A300838.P13223133689365907683

namespace A300838

/-- `A302846(A163355(A057300(A006068(n))))` -/
def P13223133689365907683.Spec : Prop :=
  ∀ n, P13223133689365907683.a n = A300838 n

end A300838

/-! ## A300838.P16294272400333162732

`A003188(A300839(A003188(A163327(A163327(n)))))`
-/

namespace A300838.P16294272400333162732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003188 (A300839 (A003188 (A163327 (A163327 n).toNat).toNat).toNat).toNat

end

end A300838.P16294272400333162732

namespace A300838

/-- `A003188(A300839(A003188(A163327(A163327(n)))))` -/
def P16294272400333162732.Spec : Prop :=
  ∀ n, P16294272400333162732.a n = A300838 n

end A300838

/-! ## A300838.P8135766790333459690

`A057300(A110654(xor(n+1, 2*n+1)))`
-/

namespace A300838.P8135766790333459690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057300 (A110654 (Nat.xor (n + 1) (2 * n + 1))).toNat

end

end A300838.P8135766790333459690

namespace A300838

/-- `A057300(A110654(xor(n+1, 2*n+1)))` -/
def P8135766790333459690.Spec : Prop :=
  ∀ n, P8135766790333459690.a n = A300838 n

end A300838

/-! ## A300838.P8725116621102633708

`A064706(A057300(A006068(n)))`
-/

namespace A300838.P8725116621102633708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064706 (A057300 (A006068 n).toNat).toNat

end

end A300838.P8725116621102633708

namespace A300838

/-- `A064706(A057300(A006068(n)))` -/
def P8725116621102633708.Spec : Prop :=
  ∀ n, P8725116621102633708.a n = A300838 n

end A300838

/-! ## A300838.P14158969589352791443

`A163233(A163236(A003188(2*n-n)))`
-/

namespace A300838.P14158969589352791443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163233 (A163236 (A003188 (2 * n - n)).toNat).toNat

end

end A300838.P14158969589352791443

namespace A300838

/-- `A163233(A163236(A003188(2*n-n)))` -/
def P14158969589352791443.Spec : Prop :=
  ∀ n, P14158969589352791443.a n = A300838 n

end A300838

/-! ## A300838.P5902594779305341689

`A163235(A163234(A003188(A163234(A163233(n)))))`
-/

namespace A300838.P5902594779305341689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163235 (A163234 (A003188 (A163234 (A163233 n).toNat).toNat).toNat).toNat

end

end A300838.P5902594779305341689

namespace A300838

/-- `A163235(A163234(A003188(A163234(A163233(n)))))` -/
def P5902594779305341689.Spec : Prop :=
  ∀ n, P5902594779305341689.a n = A300838 n

end A300838

/-! ## A300838.P3480914066981259684

`A163235(A163234(A003188(A163236(A163235(n)))))`
-/

namespace A300838.P3480914066981259684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163235 (A163234 (A003188 (A163236 (A163235 n).toNat).toNat).toNat).toNat

end

end A300838.P3480914066981259684

namespace A300838

/-- `A163235(A163234(A003188(A163236(A163235(n)))))` -/
def P3480914066981259684.Spec : Prop :=
  ∀ n, P3480914066981259684.a n = A300838 n

end A300838

/-! ## A300838.P808990666841896826

`A057300(A059905(A064706(A000695(n))))`
-/

namespace A300838.P808990666841896826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057300 (A059905 (A064706 (A000695 n).toNat).toNat).toNat

end

end A300838.P808990666841896826

namespace A300838

/-- `A057300(A059905(A064706(A000695(n))))` -/
def P808990666841896826.Spec : Prop :=
  ∀ n, P808990666841896826.a n = A300838 n

end A300838

/-!
# A300839: Permutation of nonnegative integers: a(n) = A006068(A057300(n)).

The programs for A300839, the canonical program `A300839.P17405904623820629113` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A300839 has offset 0).

The definition of A300839 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A057300, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A300839.P17405904623820629113

`A006068(A057300(n))`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A300839

/-- `A006068(A057300(n))` -/
def P17405904623820629113.Spec : Prop :=
  ∀ n, P17405904623820629113.a n = A300839 n

theorem P17405904623820629113.correct : P17405904623820629113.Spec := by
  intro n
  simp only [A300839]

end A300839

/-! ## A300839.P1946016566230656740

`xor(n, A057300(A268716(n)/2))`
-/

namespace A300839.P1946016566230656740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (A057300 (SequenceMachineLib.roundAway ((A268716 n : ℚ) / 2)).toNat)

end

end A300839.P1946016566230656740

namespace A300839

/-- `xor(n, A057300(A268716(n)/2))` -/
def P1946016566230656740.Spec : Prop :=
  ∀ n, P1946016566230656740.a n = A300839 n

end A300839

/-! ## A300839.P2338226394555813225

`xor(n, A057300(A286546(n)+n))`
-/

namespace A300839.P2338226394555813225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (A057300 (A286546 n + (n : ℤ)).toNat)

end

end A300839.P2338226394555813225

namespace A300839

/-- `xor(n, A057300(A286546(n)+n))` -/
def P2338226394555813225.Spec : Prop :=
  ∀ n, P2338226394555813225.a n = A300839 n

end A300839

/-! ## A300839.P10726261440247369272

`A003188(A057300(A064707(n)))`
-/

namespace A300839.P10726261440247369272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003188 (A057300 (A064707 n).toNat).toNat

end

end A300839.P10726261440247369272

namespace A300839

/-- `A003188(A057300(A064707(n)))` -/
def P10726261440247369272.Spec : Prop :=
  ∀ n, P10726261440247369272.a n = A300839 n

end A300839

/-! ## A300839.P5469758688531822041

`A302844(A302845(A057300(2*n-n)))`
-/

namespace A300839.P5469758688531822041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302844 (A302845 (A057300 (2 * n - n)).toNat).toNat

end

end A300839.P5469758688531822041

namespace A300839

/-- `A302844(A302845(A057300(2*n-n)))` -/
def P5469758688531822041.Spec : Prop :=
  ∀ n, P5469758688531822041.a n = A300839 n

end A300839

/-! ## A300839.P2468474318495076119

`A003188(A057300(A163356(A302845(n))))`
-/

namespace A300839.P2468474318495076119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003188 (A057300 (A163356 (A302845 n).toNat).toNat).toNat

end

end A300839.P2468474318495076119

namespace A300839

/-- `A003188(A057300(A163356(A302845(n))))` -/
def P2468474318495076119.Spec : Prop :=
  ∀ n, P2468474318495076119.a n = A300839 n

end A300839

/-! ## A300839.P15090271152349841016

`A163356(A302843(A057300(A302844(A302843(n)))))`
-/

namespace A300839.P15090271152349841016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163356 (A302843 (A057300 (A302844 (A302843 n).toNat).toNat).toNat).toNat

end

end A300839.P15090271152349841016

namespace A300839

/-- `A163356(A302843(A057300(A302844(A302843(n)))))` -/
def P15090271152349841016.Spec : Prop :=
  ∀ n, P15090271152349841016.a n = A300839 n

end A300839

/-! ## A300839.P3707534336813266816

`A006068(A300838(A006068(n)))`
-/

namespace A300839.P3707534336813266816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006068 (A300838 (A006068 n).toNat).toNat

end

end A300839.P3707534336813266816

namespace A300839

/-- `A006068(A300838(A006068(n)))` -/
def P3707534336813266816.Spec : Prop :=
  ∀ n, P3707534336813266816.a n = A300839 n

end A300839

/-! ## A300839.P16313036632334490490

`A003188(A054238(A163236(n)))`
-/

namespace A300839.P16313036632334490490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003188 (A054238 (A163236 n).toNat).toNat

end

end A300839.P16313036632334490490

namespace A300839

/-- `A003188(A054238(A163236(n)))` -/
def P16313036632334490490.Spec : Prop :=
  ∀ n, P16313036632334490490.a n = A300839 n

end A300839

/-! ## A300839.P1826348180393775462

`A006068(A163235(A163234(n)))`
-/

namespace A300839.P1826348180393775462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006068 (A163235 (A163234 n).toNat).toNat

end

end A300839.P1826348180393775462

namespace A300839

/-- `A006068(A163235(A163234(n)))` -/
def P1826348180393775462.Spec : Prop :=
  ∀ n, P1826348180393775462.a n = A300839 n

end A300839

/-! ## A300839.P2339601842327707500

`A006068(A163233(A163236(A163234(A163233(n)))))`
-/

namespace A300839.P2339601842327707500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006068 (A163233 (A163236 (A163234 (A163233 n).toNat).toNat).toNat).toNat

end

end A300839.P2339601842327707500

namespace A300839

/-- `A006068(A163233(A163236(A163234(A163233(n)))))` -/
def P2339601842327707500.Spec : Prop :=
  ∀ n, P2339601842327707500.a n = A300839 n

end A300839

/-!
# A300840: Fermi-Dirac factorization prime shift towards smaller terms: a(n) = A052330(floor(A052331(n)/2)).

The programs for A300840, there is no canonical definition to state claims against.
-/

/-! ## A300840.P11632961967701536292

`A052330(floor(A052331(n+1)/2))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A300840.P11632961967701536292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052330 ⌊(A052331 (n + 1) : ℚ) / 2⌋.toNat

end

end A300840.P11632961967701536292

/-! ## A300840.P11667138316501903612

`A052330(xor(A052331(n+1), A302784(n+1)))`
-/

namespace A300840.P11667138316501903612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052330 (Int.xor (A052331 (n + 1)) (A302784 (n + 1))).toNat

end

end A300840.P11667138316501903612

/-! ## A300840.P15925792267711081814

`A052330(xor(A064358(n+1)-1, A302784(n+1)))`
-/

namespace A300840.P15925792267711081814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052330 (Int.xor (A064358 (n + 1) - 1) (A302784 (n + 1))).toNat

end

end A300840.P15925792267711081814

/-! ## A300840.P3931725571967795095

`A207901(floor(A302029(n+1)/2))`
-/

namespace A300840.P3931725571967795095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207901 ⌊(A302029 (n + 1) : ℚ) / 2⌋.toNat

end

end A300840.P3931725571967795095

/-! ## A300840.P1117279854029027874

`A302783(floor(A302784(n+1)/2))`
-/

namespace A300840.P1117279854029027874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302783 ⌊(A302784 (n + 1) : ℚ) / 2⌋.toNat

end

end A300840.P1117279854029027874

/-!
# A300841: Fermi-Dirac factorization prime shift towards larger terms: a(n) = A052330(2*A052331(n)).

The programs for A300841, there is no canonical definition to state claims against.
-/

/-! ## A300841.P2920352114007131674

`A052330(2*A052331(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A300841.P2920352114007131674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052330 (2 * A052331 (n + 1)).toNat

end

end A300841.P2920352114007131674

/-! ## A300841.P3129760695320659256

`A302023(A003961(A302024(n+1)))`
-/

namespace A300841.P3129760695320659256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302023 (A003961 (A302024 (n + 1)).toNat).toNat

end

end A300841.P3129760695320659256

/-! ## A300841.P9023720332478896140

`A302023(2*A302024(n+1))/2`
-/

namespace A300841.P9023720332478896140
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A302023 (2 * A302024 (n + 1)).toNat : ℚ) / 2

end

end A300841.P9023720332478896140

/-! ## A300841.P13629242665069794513

`A302792(A302023(2*A302024(n+1)))`
-/

namespace A300841.P13629242665069794513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302792 (A302023 (2 * A302024 (n + 1)).toNat).toNat

end

end A300841.P13629242665069794513

/-! ## A300841.P4705142517365295109

`A052330(2*(A064358(n+1)-1))`
-/

namespace A300841.P4705142517365295109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052330 (2 * (A064358 (n + 1) - 1)).toNat

end

end A300841.P4705142517365295109

/-!
# A300843: Number of 4-cycles in the n-transposition graph.

The programs for A300843, the canonical program `A300843.P3386035531213949245` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A300843 has offset 1).

The definition of A300843 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A300843.P3386035531213949245

`3*(n+6)*C(n+1, 3)*(n+1)!/16`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A300843

/-- `3*(n+6)*C(n+1, 3)*(n+1)!/16` -/
def P3386035531213949245.Spec : Prop :=
  ∀ n, P3386035531213949245.a n = (A300843 (n + 1) : ℚ)

end A300843

/-!
# A300845: a(n) is the smallest prime q such that q^2 + q*p + p^2 is a prime number where p is n-th prime, or 0 if no such q exists.

The programs for A300845, there is no canonical definition to state claims against.
-/

/-! ## A300845.P12303374430214419147

`A051686(A077775(n+5)-A244370(2*(n+2)))`
-/

namespace A300845.P12303374430214419147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051686 (A077775 (n + 5) - A244370 (2 * (n + 2))).toNat

end

end A300845.P12303374430214419147

/-!
# A300846: a(n) = 3*(n - 1)^2*n^3.

The programs for A300846, the canonical program `A300846.P12101239082248860777` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A300846 has offset 0).

The definition of A300846 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3*(n-1)²*n^3` (program `A300846.P12101239082248860777`, by `A300846.P12101239082248860777.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A300846.P12101239082248860777

`3*(n-1)²*n^3`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A300846

/-- `3*(n-1)²*n^3` -/
def P12101239082248860777.Spec : Prop :=
  ∀ n, P12101239082248860777.a n = A300846 n

theorem P12101239082248860777.correct : P12101239082248860777.Spec := by
  intro n
  simp only [A300846]

end A300846

/-! ## A300846.P6700504510034764245

`abs(3*(n-1)*(n²-n)*A253909(n))`
-/

namespace A300846.P6700504510034764245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |3 * (((n : ℤ) - 1) * ((n ^ 2 : ℤ) - (n : ℤ))) * A253909 n|

end

end A300846.P6700504510034764245

namespace A300846

/-- `abs(3*(n-1)*(n²-n)*A253909(n))` -/
def P6700504510034764245.Spec : Prop :=
  ∀ n, P6700504510034764245.a n = A300846 n

end A300846

/-! ## A300846.P9697805223530684063

`lcm(A117642(n), A270205(n))`
-/

namespace A300846.P9697805223530684063
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A117642 n) (A270205 n)

end

end A300846.P9697805223530684063

namespace A300846

/-- `lcm(A117642(n), A270205(n))` -/
def P9697805223530684063.Spec : Prop :=
  ∀ n, (P9697805223530684063.a n : ℤ) = A300846 n

end A300846

/-! ## A300846.P17873736714177885872

`n*Δ[A007531(n)]²/3`
-/

namespace A300846.P17873736714177885872
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007531 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) * (f1 (n + 1) - f1 n) ^ 2 : ℚ) / 3

end

end A300846.P17873736714177885872

namespace A300846

/-- `n*Δ[A007531(n)]²/3` -/
def P17873736714177885872.Spec : Prop :=
  ∀ n, P17873736714177885872.a n = (A300846 n : ℚ)

theorem P17873736714177885872.correct : P17873736714177885872.Spec := by
  intro n
  simp only [A300846, Nat.add_sub_cancel, A300846.P17873736714177885872.f1, A300846.P17873736714177885872.a, A300846.P12101239082248860777.a, A007531, A007531.P15538264737483534371.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A300846

/-!
# A300847: a(n) = 12*binomial(n, 5).

The programs for A300847, the canonical program `A300847.P3184734527947357789` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A300847 has offset 0).

The definition of A300847 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `12*C(n, 5)` (program `A300847.P3184734527947357789`, by `A300847.P3184734527947357789.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A300847.P3184734527947357789

`12*C(n, 5)`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A300847

/-- `12*C(n, 5)` -/
def P3184734527947357789.Spec : Prop :=
  ∀ n, (P3184734527947357789.a n : ℤ) = A300847 n

theorem P3184734527947357789.correct : P3184734527947357789.Spec := by
  intro n
  simp only [A300847]

end A300847

/-! ## A300847.P1112399584457976641

`(n-4)*(n-3)*(n-2)*(n-1)*n/10`
-/

namespace A300847.P1112399584457976641
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((n : ℤ) - 4) * ((n : ℤ) - 3) * ((n : ℤ) - 2) * ((n : ℤ) - 1) * (n : ℤ) : ℚ) / 10

end

end A300847.P1112399584457976641

namespace A300847

/-- `(n-4)*(n-3)*(n-2)*(n-1)*n/10` -/
def P1112399584457976641.Spec : Prop :=
  ∀ n, P1112399584457976641.a n = (A300847 n : ℚ)

theorem P1112399584457976641.correct : P1112399584457976641.Spec := by
  intro n
  simp only [A300847, Nat.add_sub_cancel, A300847.P1112399584457976641.a, A300847.P3184734527947357789.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A300847

/-! ## A300847.P6896516125865517801

`12*A000389(n)`
-/

namespace A300847.P6896516125865517801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  12 * A000389 n

end

end A300847.P6896516125865517801

namespace A300847

/-- `12*A000389(n)` -/
def P6896516125865517801.Spec : Prop :=
  ∀ n, P6896516125865517801.a n = A300847 n

theorem P6896516125865517801.correct : P6896516125865517801.Spec := by
  intro n
  simp only [A300847, Nat.add_sub_cancel, A300847.P6896516125865517801.a, A300847.P3184734527947357789.a, A000389, A000389.P15450220129395289428.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A300847

/-! ## A300847.P4344823920384041445

`floor(A052787(n)/10)`
-/

namespace A300847.P4344823920384041445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A052787 n : ℚ) / 10⌋

end

end A300847.P4344823920384041445

namespace A300847

/-- `floor(A052787(n)/10)` -/
def P4344823920384041445.Spec : Prop :=
  ∀ n, P4344823920384041445.a n = A300847 n

end A300847

/-! ## A300847.P4313349876414429905

`Δ[12*A000579(n)]`
-/

namespace A300847.P4313349876414429905
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  12 * A000579 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A300847.P4313349876414429905

namespace A300847

/-- `Δ[12*A000579(n)]` -/
def P4313349876414429905.Spec : Prop :=
  ∀ n, P4313349876414429905.a n = A300847 n

theorem P4313349876414429905.correct : P4313349876414429905.Spec := by
  intro n
  simp only [A300847, Nat.add_sub_cancel, A300847.P4313349876414429905.f1, A300847.P4313349876414429905.a, A300847.P3184734527947357789.a, A000579, A000579.P13663713855180125612.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A300847

/-!
# A300850: Number of 6-cycles in the n-odd graph.

The programs for A300850, the canonical program `A300850.P17462114444134555515` is in `Seq.B001.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A300850 has offset 1).

The definition of A300850 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 159 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A300850.P17462114444134555515

`n*floor(∑[n²]*A000108(n)/2)`

The canonical program, it is in `Seq.B001.C011`.
-/

namespace A300850

/-- `n*floor(∑[n²]*A000108(n)/2)` -/
def P17462114444134555515.Spec : Prop :=
  ∀ n, P17462114444134555515.a n = A300850 (n + 1)

theorem P17462114444134555515.correct : P17462114444134555515.Spec := by
  intro n
  simp only [A300850, Nat.add_sub_cancel]

end A300850

/-! ## A300850.P4262003542131992009

`floor(n/2*∑[∑[n]*A088218(n)])`
-/

namespace A300850.P4262003542131992009
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) * A088218 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 2 * ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ)⌋

end

end A300850.P4262003542131992009

namespace A300850

/-- `floor(n/2*∑[∑[n]*A088218(n)])` -/
def P4262003542131992009.Spec : Prop :=
  ∀ n, P4262003542131992009.a n = A300850 (n + 1)

end A300850

/-! ## A300850.P14486687424661094671

`(and(∑[A119578(n)/2]+2, -2)-2)*n/2`
-/

namespace A300850.P14486687424661094671
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A119578 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.land (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j + 2)) (-2) - 2 : ℚ) * ((n : ℚ) / 2)

end

end A300850.P14486687424661094671

namespace A300850

/-- `(and(∑[A119578(n)/2]+2, -2)-2)*n/2` -/
def P14486687424661094671.Spec : Prop :=
  ∀ n, P14486687424661094671.a n = (A300850 (n + 1) : ℚ)

end A300850

/-! ## A300850.P10373651727183102215

`floor((∑[A085373(n)]-A085373(n))*n/2)`
-/

namespace A300850.P10373651727183102215
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085373 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ j ∈ Finset.range (n + 1), f1 j - A085373 n : ℤ) : ℚ) * ((n : ℚ) / 2)⌋

end

end A300850.P10373651727183102215

namespace A300850

/-- `floor((∑[A085373(n)]-A085373(n))*n/2)` -/
def P10373651727183102215.Spec : Prop :=
  ∀ n, P10373651727183102215.a n = A300850 (n + 1)

end A300850

/-! ## A300850.P12335160277689752435

`A000447(n)*A253283(A212342(n))`
-/

namespace A300850.P12335160277689752435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000447 n * A253283 (A212342 n).toNat

end

end A300850.P12335160277689752435

namespace A300850

/-- `A000447(n)*A253283(A212342(n))` -/
def P12335160277689752435.Spec : Prop :=
  ∀ n, P12335160277689752435.a n = A300850 (n + 1)

end A300850

/-!
# A300851: Number of 6-cycles in the n-transposition graph.

The programs for A300851, the canonical program `A300851.P1869142198542685985` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A300851 has offset 1).

The definition of A300851 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A300851.P3898644678354676336

`(n+1)!*C(n+1, 3)*((n+1)^3+9*(n+1)²+16*(n+1)-152)/4`
-/

namespace A300851.P3898644678354676336
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((Nat.factorial (n + 1) * Nat.choose (n + 1) 3 : ℤ) * (((n + 1) ^ 3 + 9 * (n + 1) ^ 2 + 16 * (n + 1) : ℤ) - 152) : ℚ) / 4

end

end A300851.P3898644678354676336

namespace A300851

/-- `(n+1)!*C(n+1, 3)*((n+1)^3+9*(n+1)²+16*(n+1)-152)/4` -/
def P3898644678354676336.Spec : Prop :=
  ∀ n, P3898644678354676336.a n = (A300851 (n + 1) : ℚ)

theorem P3898644678354676336.correct : P3898644678354676336.Spec := by
  intro n
  simp only [A300851, Nat.add_sub_cancel, A300851.P3898644678354676336.a, A300851.P1869142198542685985.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A300851

/-! ## A300851.P1869142198542685985

`(n+1)!*(C(n+1, 3)+116*C(n+1, 4)+105*C(n+1, 5)+30*C(n+1, 6))`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A300851

/-- `(n+1)!*(C(n+1, 3)+116*C(n+1, 4)+105*C(n+1, 5)+30*C(n+1, 6))` -/
def P1869142198542685985.Spec : Prop :=
  ∀ n, (P1869142198542685985.a n : ℤ) = A300851 (n + 1)

theorem P1869142198542685985.correct : P1869142198542685985.Spec := by
  intro n
  simp only [A300851, Nat.add_sub_cancel]

end A300851

/-!
# A300852: L.g.f.: log(Product_{k>=1} (1 + x^prime(k))) = Sum_{n>=1} a(n)*x^n/n.

The programs for A300852, the canonical program `A300852.P6997038708606362003` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A300852 has offset 1).

The definition of A300852 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A300852.P15754604092543523909

`∑{p}[n+1, (n+1)/A181983((n+1)/#)]`
-/

namespace A300852.P15754604092543523909
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), (n + 1 : ℚ) / (A181983 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (p : ℚ))).toNat : ℚ)

end

end A300852.P15754604092543523909

namespace A300852

/-- `∑{p}[n+1, (n+1)/A181983((n+1)/#)]` -/
def P15754604092543523909.Spec : Prop :=
  ∀ n, P15754604092543523909.a n = (A300852 (n + 1) : ℚ)

end A300852

/-! ## A300852.P6997038708606362003

`∑{d}[n+1, #*#%2]-A300893(n+1)`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A300852

/-- `∑{d}[n+1, #*#%2]-A300893(n+1)` -/
def P6997038708606362003.Spec : Prop :=
  ∀ n, P6997038708606362003.a n = A300852 (n + 1)

theorem P6997038708606362003.correct : P6997038708606362003.Spec := by
  intro n
  simp only [A300852, Nat.add_sub_cancel]

end A300852

/-! ## A300852.P18265621845580956347

`A000593(n+1)-A300893(n+1)`
-/

namespace A300852.P18265621845580956347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000593 (n + 1) - A300893 (n + 1)

end

end A300852.P18265621845580956347

namespace A300852

/-- `A000593(n+1)-A300893(n+1)` -/
def P18265621845580956347.Spec : Prop :=
  ∀ n, P18265621845580956347.a n = A300852 (n + 1)

end A300852

/-! ## A300852.P10677994712188514567

`∑{d}[n+1, A048272(#)*A137851((n+1)/#)]`
-/

namespace A300852.P10677994712188514567
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A048272 d * A137851 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A300852.P10677994712188514567

namespace A300852

/-- `∑{d}[n+1, A048272(#)*A137851((n+1)/#)]` -/
def P10677994712188514567.Spec : Prop :=
  ∀ n, P10677994712188514567.a n = A300852 (n + 1)

end A300852

/-! ## A300852.P4586232920790846834

`∑{d}[n+1, A117212(#)*A328260((n+1)/#)]`
-/

namespace A300852.P4586232920790846834
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A117212 d * A328260 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A300852.P4586232920790846834

namespace A300852

/-- `∑{d}[n+1, A117212(#)*A328260((n+1)/#)]` -/
def P4586232920790846834.Spec : Prop :=
  ∀ n, P4586232920790846834.a n = A300852 (n + 1)

end A300852

/-! ## A300852.P11944504883263817905

`∑{d}[n+1, A319131(#)*A361019((n+1)/#)]`
-/

namespace A300852.P11944504883263817905
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A319131 d * A361019 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A300852.P11944504883263817905

namespace A300852

/-- `∑{d}[n+1, A319131(#)*A361019((n+1)/#)]` -/
def P11944504883263817905.Spec : Prop :=
  ∀ n, P11944504883263817905.a n = A300852 (n + 1)

end A300852

/-! ## A300852.P5164387306324383118

`∑{d}[n+1, A033999(#-1)*A061397((n+1)/#)]`
-/

namespace A300852.P5164387306324383118
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A033999 (d - 1) * A061397 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A300852.P5164387306324383118

namespace A300852

/-- `∑{d}[n+1, A033999(#-1)*A061397((n+1)/#)]` -/
def P5164387306324383118.Spec : Prop :=
  ∀ n, P5164387306324383118.a n = A300852 (n + 1)

end A300852

/-! ## A300852.P14579396681586277407

`A000203((n+1)/2^val(n+1, 2))-A300893(n+1)`
-/

namespace A300852.P14579396681586277407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ))).toNat - A300893 (n + 1)

end

end A300852.P14579396681586277407

namespace A300852

/-- `A000203((n+1)/2^val(n+1, 2))-A300893(n+1)` -/
def P14579396681586277407.Spec : Prop :=
  ∀ n, P14579396681586277407.a n = A300852 (n + 1)

end A300852

/-! ## A300852.P2144965093272711987

`A076290(2*(n+1))-A350337(n+1)`
-/

namespace A300852.P2144965093272711987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076290 (2 * (n + 1)) - A350337 (n + 1)

end

end A300852.P2144965093272711987

namespace A300852

/-- `A076290(2*(n+1))-A350337(n+1)` -/
def P2144965093272711987.Spec : Prop :=
  ∀ n, P2144965093272711987.a n = A300852 (n + 1)

end A300852

/-!
# A300853: L.g.f.: log(Product_{k>=1} (1 + x^(k^2))) = Sum_{n>=1} a(n)*x^n/n.

The programs for A300853, the canonical program `A300853.P6382502425334761752` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A300853 has offset 1).

The definition of A300853 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A300853.P12286164219568279480

`∑{d}[n+1, #*A143259(#)]`
-/

namespace A300853.P12286164219568279480
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A143259 d

end

end A300853.P12286164219568279480

namespace A300853

/-- `∑{d}[n+1, #*A143259(#)]` -/
def P12286164219568279480.Spec : Prop :=
  ∀ n, P12286164219568279480.a n = A300853 (n + 1)

end A300853

/-! ## A300853.P6382502425334761752

`∑{d}[n+1, #*A118209((n+1)/#)]`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A300853

/-- `∑{d}[n+1, #*A118209((n+1)/#)]` -/
def P6382502425334761752.Spec : Prop :=
  ∀ n, P6382502425334761752.a n = A300853 (n + 1)

theorem P6382502425334761752.correct : P6382502425334761752.Spec := by
  intro n
  simp only [A300853, Nat.add_sub_cancel]

end A300853

/-! ## A300853.P15113381023310500729

`2*A035316(n+1)-A065745(n+1)`
-/

namespace A300853.P15113381023310500729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A035316 (n + 1) - A065745 (n + 1)

end

end A300853.P15113381023310500729

namespace A300853

/-- `2*A035316(n+1)-A065745(n+1)` -/
def P15113381023310500729.Spec : Prop :=
  ∀ n, P15113381023310500729.a n = A300853 (n + 1)

end A300853

/-! ## A300853.P2874816199166842910

`∑{d}[n+1, A000593(#)*A061019((n+1)/#)]`
-/

namespace A300853.P2874816199166842910
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000593 d * A061019 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A300853.P2874816199166842910

namespace A300853

/-- `∑{d}[n+1, A000593(#)*A061019((n+1)/#)]` -/
def P2874816199166842910.Spec : Prop :=
  ∀ n, P2874816199166842910.a n = A300853 (n + 1)

end A300853

/-! ## A300853.P18249467227940651869

`∑{d}[n+1, A061020(#)*A193356((n+1)/#)]`
-/

namespace A300853.P18249467227940651869
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A061020 d * A193356 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A300853.P18249467227940651869

namespace A300853

/-- `∑{d}[n+1, A061020(#)*A193356((n+1)/#)]` -/
def P18249467227940651869.Spec : Prop :=
  ∀ n, P18249467227940651869.a n = A300853 (n + 1)

end A300853

/-! ## A300853.P7088458862464204504

`∑{d}[n+1, A048272(#)*A358272((n+1)/#)]`
-/

namespace A300853.P7088458862464204504
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A048272 d * A358272 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A300853.P7088458862464204504

namespace A300853

/-- `∑{d}[n+1, A048272(#)*A358272((n+1)/#)]` -/
def P7088458862464204504.Spec : Prop :=
  ∀ n, P7088458862464204504.a n = A300853 (n + 1)

end A300853

/-! ## A300853.P6566586016617081120

`∑{d}[n+1, A109386(#)*A298473((n+1)/#)]`
-/

namespace A300853.P6566586016617081120
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A109386 d * A298473 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A300853.P6566586016617081120

namespace A300853

/-- `∑{d}[n+1, A109386(#)*A298473((n+1)/#)]` -/
def P6566586016617081120.Spec : Prop :=
  ∀ n, P6566586016617081120.a n = A300853 (n + 1)

end A300853

/-! ## A300853.P4760195778185460267

`∑{d}[n+1, A158523(#)*A288417((n+1)/#)]`
-/

namespace A300853.P4760195778185460267
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A158523 d * A288417 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A300853.P4760195778185460267

namespace A300853

/-- `∑{d}[n+1, A158523(#)*A288417((n+1)/#)]` -/
def P4760195778185460267.Spec : Prop :=
  ∀ n, P4760195778185460267.a n = A300853 (n + 1)

end A300853

/-! ## A300853.P14870994777898983420

`∑{d}[n+1, A361019(#)*A383795((n+1)/#)]`
-/

namespace A300853.P14870994777898983420
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A361019 d * A383795 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A300853.P14870994777898983420

namespace A300853

/-- `∑{d}[n+1, A361019(#)*A383795((n+1)/#)]` -/
def P14870994777898983420.Spec : Prop :=
  ∀ n, P14870994777898983420.a n = A300853 (n + 1)

end A300853

/-! ## A300853.P8576371629961119520

`A005843(A035316(n+1))-A065745(n+1)`
-/

namespace A300853.P8576371629961119520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A035316 (n + 1)).toNat - A065745 (n + 1)

end

end A300853.P8576371629961119520

namespace A300853

/-- `A005843(A035316(n+1))-A065745(n+1)` -/
def P8576371629961119520.Spec : Prop :=
  ∀ n, P8576371629961119520.a n = A300853 (n + 1)

end A300853

/-!
# A300855: Inverse of Knuth's base-5 based twisted permutation A220952 of the nonnegative integers.

The programs for A300855, there is no canonical definition to state claims against.
-/

/-! ## A300855.P8344369336018294338

`A307403(A220952(A220952(A307403(A220952(n)))))`
-/

namespace A300855.P8344369336018294338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307403 (A220952 (A220952 (A307403 (A220952 n).toNat).toNat).toNat).toNat

end

end A300855.P8344369336018294338

/-!
# A300856: Inverse of the base-7 based twisted permutation A300857 of the nonnegative integers.

The programs for A300856, there is no canonical definition to state claims against.
-/

/-! ## A300856.P12794762075215763277

`abs(A308857(∏[A267401(n+1)])-n)`
-/

namespace A300856.P12794762075215763277
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267401 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A308857 (∏ j ∈ Finset.range (n + 1), f1 j).toNat - (n : ℤ)|

end

end A300856.P12794762075215763277

/-! ## A300856.P5150608717476773625

`A129533(A146781(n+1))+n`
-/

namespace A300856.P5150608717476773625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129533 (A146781 (n + 1)).toNat + (n : ℤ)

end

end A300856.P5150608717476773625

/-! ## A300856.P10242599974414801532

`A320322(A076019(n+1))+n`
-/

namespace A300856.P10242599974414801532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320322 (A076019 (n + 1)).toNat + (n : ℤ)

end

end A300856.P10242599974414801532

/-! ## A300856.P5120359304977714739

`abs(A323445(A070251(n+1))-n)`
-/

namespace A300856.P5120359304977714739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A323445 (A070251 (n + 1)).toNat - (n : ℤ)|

end

end A300856.P5120359304977714739

/-! ## A300856.P2052567039616437384

`A115858(A283820(n+1))-1+n`
-/

namespace A300856.P2052567039616437384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115858 (A283820 (n + 1)).toNat - 1 + (n : ℤ)

end

end A300856.P2052567039616437384

/-!
# A300858: a(n) = A243823(n) - A243822(n).

The programs for A300858, there is no canonical definition to state claims against.
-/

/-! ## A300858.P9935168087101521703

`A243823(n+1)-A243822(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A300858.P9935168087101521703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243823 (n + 1) - A243822 (n + 1)

end

end A300858.P9935168087101521703

/-! ## A300858.P5801333978806188015

`1+n+1-A000010(n+1)-2*A010846(n+1)+A000005(n+1)`
-/

namespace A300858.P5801333978806188015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 + (n + 1) : ℤ) - A000010 (n + 1) - 2 * A010846 (n + 1) + A000005 (n + 1)

end

end A300858.P5801333978806188015

/-! ## A300858.P243648070572314961

`2*A243823(n+1)-A045763(n+1)`
-/

namespace A300858.P243648070572314961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A243823 (n + 1) - A045763 (n + 1)

end

end A300858.P243648070572314961

/-! ## A300858.P17121948180996396723

`A045763(n+1)-2*A243822(n+1)`
-/

namespace A300858.P17121948180996396723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045763 (n + 1) - 2 * A243822 (n + 1)

end

end A300858.P17121948180996396723

/-! ## A300858.P6738915997494035145

`A000005(n+1)+A243823(n+1)-A010846(n+1)`
-/

namespace A300858.P6738915997494035145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) + (A243823 (n + 1) - A010846 (n + 1))

end

end A300858.P6738915997494035145

/-! ## A300858.P9066312665815942637

`A045763(n+1)-(A299990(n+1)+A010846(n+1))`
-/

namespace A300858.P9066312665815942637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045763 (n + 1) - (A299990 (n + 1) + A010846 (n + 1))

end

end A300858.P9066312665815942637

/-! ## A300858.P2556115384806941608

`A360480(n+1)+A360543(n+1)-A243822(n+1)`
-/

namespace A300858.P2556115384806941608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360480 (n + 1) + (A360543 (n + 1) - A243822 (n + 1))

end

end A300858.P2556115384806941608

/-!
# A300859: Where records occur in A045763.

The programs for A300859, there is no canonical definition to state claims against.
-/

/-! ## A300859.P7200100062871077175

`A000005(A089472(n))+4*n`
-/

namespace A300859.P7200100062871077175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A089472 n).toNat + (4 * n : ℤ)

end

end A300859.P7200100062871077175

/-! ## A300859.P9759098825840768379

`A000005(A141414(n))+4*n`
-/

namespace A300859.P9759098825840768379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A141414 n).toNat + (4 * n : ℤ)

end

end A300859.P9759098825840768379

/-! ## A300859.P10960105161536399671

`A346953(A038041(n+1))+4*n`
-/

namespace A300859.P10960105161536399671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346953 (A038041 (n + 1)).toNat + (4 * n : ℤ)

end

end A300859.P10960105161536399671

/-! ## A300859.P918065784797057591

`A343240(A208241(n+1))+4*n`
-/

namespace A300859.P918065784797057591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343240 (A208241 (n + 1)).toNat + (4 * n : ℤ)

end

end A300859.P918065784797057591

/-! ## A300859.P13864674554020922131

`A182850(A263874(n+1))+4*n+1`
-/

namespace A300859.P13864674554020922131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182850 (A263874 (n + 1)).toNat + (4 * n + 1 : ℤ)

end

end A300859.P13864674554020922131

/-!
# A300861: Records in A300858.

The programs for A300861, there is no canonical definition to state claims against.
-/

/-! ## A300861.P7350183992813062012

`record[A300858(n+1)]`
-/

namespace A300861.P7350183992813062012
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300858 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A300861.P7350183992813062012

/-! ## A300861.P2948994487067728754

`A300858(A300860(n+1))`
-/

namespace A300861.P2948994487067728754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300858 (A300860 (n + 1)).toNat

end

end A300861.P2948994487067728754

/-! ## A300861.P9940962131493373522

`record[A243823(n+1)-A243822(n+1)]`
-/

namespace A300861.P9940962131493373522
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243823 (n + 1) - A243822 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A300861.P9940962131493373522

/-! ## A300861.P3501451061466418425

`record[A360480(n+1)+A360543(n+1)-A243822(n+1)]`
-/

namespace A300861.P3501451061466418425
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360480 (n + 1) + (A360543 (n + 1) - A243822 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A300861.P3501451061466418425

/-! ## A300861.P611442582258823792

`record[abs(A300858(A159481(n)))]`
-/

namespace A300861.P611442582258823792
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A300858 (A159481 n).toNat|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A300861.P611442582258823792

/-!
# A300862: Solution to 1 = Sum_y Product_{k in y} a(k) for each n > 0, where the sum is over all integer partitions of n with an odd number of parts.

The programs for A300862, there is no canonical definition to state claims against.
-/

/-! ## A300862.P12085608826777823626

`A238598(A291381(n))-floor(n/2)`
-/

namespace A300862.P12085608826777823626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238598 (A291381 n).toNat - ⌊(n : ℚ) / 2⌋

end

end A300862.P12085608826777823626

/-!
# A300865: Signed recurrence over binary enriched p-trees: a(n) = (-1)^(n-1) + Sum_{x + y = n, 0 < x <= y < n} a(x) * a(y).

The programs for A300865, there is no canonical definition to state claims against.
-/

/-! ## A300865.P1968910980719131290

`A236674(A331964(n+2)+1)`
-/

namespace A300865.P1968910980719131290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236674 (A331964 (n + 2) + 1).toNat

end

end A300865.P1968910980719131290

/-! ## A300865.P7425404512322921920

`A135660(A192572(n)+A192490(n+1))`
-/

namespace A300865.P7425404512322921920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135660 (A192572 n + A192490 (n + 1)).toNat

end

end A300865.P7425404512322921920

/-! ## A300865.P13180214157004953915

`A331964(A077168(n+1))`
-/

namespace A300865.P13180214157004953915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331964 (A077168 (n + 1)).toNat

end

end A300865.P13180214157004953915

/-! ## A300865.P14360033545293540419

`A331964(A065673(n+2))`
-/

namespace A300865.P14360033545293540419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331964 (A065673 (n + 2)).toNat

end

end A300865.P14360033545293540419

/-! ## A300865.P15127337815568127396

`A331964(A004907(n+1)+2)`
-/

namespace A300865.P15127337815568127396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331964 (A004907 (n + 1) + 2).toNat

end

end A300865.P15127337815568127396

/-!
# A300867: a(n) is the least positive k such that k * n is a Fibbinary number (A003714).

The programs for A300867, there is no canonical definition to state claims against.
-/

/-! ## A300867.P9021754963807703640

`A300889(A028310(n))/A028310(n)`
-/

namespace A300867.P9021754963807703640
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A300889 (A028310 n).toNat : ℚ) / (A028310 n : ℚ)

end

end A300867.P9021754963807703640

/-! ## A300867.P16009861084279857151

`A300889(A257088(n))/A257088(n)`
-/

namespace A300867.P16009861084279857151
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A300889 (A257088 n).toNat : ℚ) / (A257088 n : ℚ)

end

end A300867.P16009861084279857151

/-! ## A300867.P6799421156019393822

`A300889(A004277(n))/A004277(n)`
-/

namespace A300867.P6799421156019393822
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A300889 (A004277 n).toNat : ℚ) / (A004277 n : ℚ)

end

end A300867.P6799421156019393822

/-! ## A300867.P536512181923593579

`A300889(A008574(n))/A008574(n)`
-/

namespace A300867.P536512181923593579
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A300889 (A008574 n).toNat : ℚ) / (A008574 n : ℚ)

end

end A300867.P536512181923593579

/-! ## A300867.P1112325759230996897

`A300889(A022144(n))/A022144(n)`
-/

namespace A300867.P1112325759230996897
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A300889 (A022144 n).toNat : ℚ) / (A022144 n : ℚ)

end

end A300867.P1112325759230996897

/-! ## A300867.P15074468252417928655

`A300889(A234275(n))/A234275(n)`
-/

namespace A300867.P15074468252417928655
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A300889 (A234275 n).toNat : ℚ) / (A234275 n : ℚ)

end

end A300867.P15074468252417928655

/-! ## A300867.P15668394737079438845

`A300889(A233583(n+1))/A233583(n+1)`
-/

namespace A300867.P15668394737079438845
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A300889 (A233583 (n + 1)).toNat : ℚ) / (A233583 (n + 1) : ℚ)

end

end A300867.P15668394737079438845

/-!
# A300869: Odd numbers m such that sigma(x) = m has more than 1 solution.

The programs for A300869, there is no canonical definition to state claims against.
-/

/-! ## A300869.P13721881057607196308

`record[gcd(A331036(n+6), A331036(n+7))]`
-/

namespace A300869.P13721881057607196308
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A331036 (n + 6)) (A331036 (n + 7))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A300869.P13721881057607196308

/-! ## A300869.P8177582508805765268

`∩[A007371(n+1), A060657(n+1)]`
-/

namespace A300869.P8177582508805765268
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007371 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060657 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A300869.P8177582508805765268

/-! ## A300869.P15497923843601452500

`∩[A014681(A004277(2*n)), A007371(n+1)]`
-/

namespace A300869.P15497923843601452500
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 (A004277 (2 * n)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007371 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A300869.P15497923843601452500

/-!
# A300871: O.g.f. A(x) satisfies: [x^n] exp( n*(n+1) * A(x) ) = n*(n+1) * [x^(n-1)] exp( n*(n+1) * A(x) ) for n>=1.

The programs for A300871, there is no canonical definition to state claims against.
-/

/-! ## A300871.P8142298365303989523

`∑[n+1]*A300872(n+1)`
-/

namespace A300871.P8142298365303989523
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A300872 (n + 1)

end

end A300871.P8142298365303989523

/-! ## A300871.P3364714748363347164

`A300872(n+1)*A000217(n+1)`
-/

namespace A300871.P3364714748363347164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300872 (n + 1) * A000217 (n + 1)

end

end A300871.P3364714748363347164

/-!
# A300872: a(n) = A300871(n) / (n*(n+1)/2).

The programs for A300872, there is no canonical definition to state claims against.
-/

/-! ## A300872.P9783700120075288084

`A300871(n+1)/((n+1)*(n+2)/2)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A300872.P9783700120075288084
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A300871 (n + 1) : ℚ) / (((n + 1) * (n + 2) : ℚ) / 2)

end

end A300872.P9783700120075288084

/-! ## A300872.P4681900339962034712

`A000027(A300871(n+1)/A130485(n+1))`
-/

namespace A300872.P4681900339962034712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (SequenceMachineLib.roundAway ((A300871 (n + 1) : ℚ) / (A130485 (n + 1) : ℚ))).toNat

end

end A300872.P4681900339962034712

/-!
# A300873: E.g.f. A(x) satisfies: [x^n] A(x)^(n*(n+1)) = 2*n * [x^(n-1)] A(x)^(n*(n+1)) for n>=1.

The programs for A300873, there is no canonical definition to state claims against.
-/

/-! ## A300873.P16524874045948018254

`A273662(A330474(n)²+1)`
-/

namespace A300873.P16524874045948018254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273662 (A330474 n ^ 2 + 1).toNat

end

end A300873.P16524874045948018254

/-!
# A300874: O.g.f. A(x) satisfies: [x^n] exp( n*(n+1) * A(x) ) = 2*n * [x^(n-1)] exp( n*(n+1) * A(x) ) for n>=1.

The programs for A300874, there is no canonical definition to state claims against.
-/

/-! ## A300874.P9007970852028614913

`lcm(n!, ∏{p}[((n^7-n)/42)², #])`
-/

namespace A300874.P9007970852028614913
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((n ^ 7 : ℤ) - (n : ℤ) : ℚ) / 42) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm (Nat.factorial n) (∏ p ∈ Nat.primeFactors (SequenceMachineLib.roundAway (f1 n)).natAbs, p)

end

end A300874.P9007970852028614913

/-!
# A300875: Number of n X n 0..1 arrays with every element equal to 0, 1, 2, 4 or 5 horizontally, vertically or antidiagonally adjacent elements, with upper left element zero.

The programs for A300875, there is no canonical definition to state claims against.
-/

/-! ## A300875.P4713818511799515108

`A300881(∑[4*n]+1)`
-/

namespace A300875.P4713818511799515108
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300881 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A300875.P4713818511799515108

/-! ## A300875.P6333206998371933604

`∏{digits}[n, A300881(A001844(#))]`
-/

namespace A300875.P6333206998371933604
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A300881 (A001844 x).toNat).prod

end

end A300875.P6333206998371933604

/-! ## A300875.P10328395234534210277

`record[A300881(Δ[A235355(n)])]`
-/

namespace A300875.P10328395234534210277
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235355 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300881 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A300875.P10328395234534210277

/-! ## A300875.P4516218229791938921

`and(-1, A300881(A001844(n)))`
-/

namespace A300875.P4516218229791938921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A300881 (A001844 n).toNat)

end

end A300875.P4516218229791938921

/-! ## A300875.P14976101995898087962

`record[A300881(A330613(n+1))]`
-/

namespace A300875.P14976101995898087962
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300881 (A330613 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A300875.P14976101995898087962

/-!
# A300876: Number of nX3 0..1 arrays with every element equal to 0, 1, 2, 4 or 5 horizontally, vertically or antidiagonally adjacent elements, with upper left element zero.

The programs for A300876, there is no canonical definition to state claims against.
-/

/-! ## A300876.P2521619108388337091

`A300881(∑[n+2]+4)`
-/

namespace A300876.P2521619108388337091
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300881 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A300876.P2521619108388337091

/-! ## A300876.P17492241089367217176

`or(char[6], A300881(A167499(n)+n))`
-/

namespace A300876.P17492241089367217176
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A300881 (A167499 n + (n : ℤ)).toNat)

end

end A300876.P17492241089367217176

/-! ## A300876.P8258380709056566288

`A014998(n)*A300881(A167614(n+1))`
-/

namespace A300876.P8258380709056566288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014998 n * A300881 (A167614 (n + 1)).toNat

end

end A300876.P8258380709056566288

/-! ## A300876.P9055227271581733820

`or(A107846(n), A300881(A167614(n+1)))`
-/

namespace A300876.P9055227271581733820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A107846 n) (A300881 (A167614 (n + 1)).toNat)

end

end A300876.P9055227271581733820

/-! ## A300876.P17861517309999607404

`A300881(A167614(n+1))+A000035(2*n)`
-/

namespace A300876.P17861517309999607404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300881 (A167614 (n + 1)).toNat + A000035 (2 * n)

end

end A300876.P17861517309999607404

/-!
# A300877: Number of nX4 0..1 arrays with every element equal to 0, 1, 2, 4 or 5 horizontally, vertically or antidiagonally adjacent elements, with upper left element zero.

The programs for A300877, there is no canonical definition to state claims against.
-/

/-! ## A300877.P9985688843428712085

`A300881(∑[n+3]+7)`
-/

namespace A300877.P9985688843428712085
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300881 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A300877.P9985688843428712085

/-! ## A300877.P1890105683133930239

`A300881(A000217(n+3)+4)%A010996(n+1)`
-/

namespace A300877.P1890105683133930239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A300881 (A000217 (n + 3) + 4).toNat) (A010996 (n + 1 + 43))

end

end A300877.P1890105683133930239

/-! ## A300877.P8524536355012142905

`A007318(A001878(n))*A300881(A052905(n)+9)`
-/

namespace A300877.P8524536355012142905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A001878 n).toNat * A300881 (A052905 n + 9).toNat

end

end A300877.P8524536355012142905

/-! ## A300877.P6849614864981712736

`A000041(A001617(n+1))*A300881(A055999(n)+10)`
-/

namespace A300877.P6849614864981712736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (A001617 (n + 1)).toNat * A300881 (A055999 n + 10).toNat

end

end A300877.P6849614864981712736

/-!
# A300878: Number of n X 5 0..1 arrays with every element equal to 0, 1, 2, 4 or 5 horizontally, vertically or antidiagonally adjacent elements, with upper left element zero.

The programs for A300878, there is no canonical definition to state claims against.
-/

/-! ## A300878.P159275449598162086

`A300881(∑[n+4]+11)`
-/

namespace A300878.P159275449598162086
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300881 (∑ j ∈ Finset.range (n + 1), f1 j + 11)

end

end A300878.P159275449598162086

/-! ## A300878.P8640476212815751698

`A300881(A046691(n+2)+9)+char[34]`
-/

namespace A300878.P8640476212815751698
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  34

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300881 (A046691 (n + 2) + 9).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A300878.P8640476212815751698

/-! ## A300878.P17405253923704317872

`A000035(2*n+1)*A300881(A046691(n+2)+9)`
-/

namespace A300878.P17405253923704317872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (2 * n + 1) * A300881 (A046691 (n + 2) + 9).toNat

end

end A300878.P17405253923704317872

/-! ## A300878.P15785715249141860405

`A007318(A000217(n))*A300881(A046691(n+2)+9)`
-/

namespace A300878.P15785715249141860405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A000217 n).toNat * A300881 (A046691 (n + 2) + 9).toNat

end

end A300878.P15785715249141860405

/-! ## A300878.P14640174537902564055

`A001222(A001359(n+1))*A300881(A046691(n+2)+9)`
-/

namespace A300878.P14640174537902564055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A001359 (n + 1)).toNat * A300881 (A046691 (n + 2) + 9).toNat

end

end A300878.P14640174537902564055

/-!
# A300879: Number of nX6 0..1 arrays with every element equal to 0, 1, 2, 4 or 5 horizontally, vertically or antidiagonally adjacent elements, with upper left element zero.

The programs for A300879, there is no canonical definition to state claims against.
-/

/-! ## A300879.P1127420005244992878

`A300881(A374007(n+1))`
-/

namespace A300879.P1127420005244992878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300881 (A374007 (n + 1)).toNat

end

end A300879.P1127420005244992878

/-! ## A300879.P4930913322961655853

`A300881(A166136(n+4))`
-/

namespace A300879.P4930913322961655853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300881 (A166136 (n + 4)).toNat

end

end A300879.P4930913322961655853

/-! ## A300879.P15693927547565437127

`A300881(Δ[A111396(n)]+9)`
-/

namespace A300879.P15693927547565437127
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111396 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300881 (f1 (n + 1) - f1 n + 9).toNat

end

end A300879.P15693927547565437127

/-! ## A300879.P1867934936579055890

`A300881(A167614(n+4)+3)`
-/

namespace A300879.P1867934936579055890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300881 (A167614 (n + 4) + 3).toNat

end

end A300879.P1867934936579055890

/-! ## A300879.P5690121037645050884

`A300881(A000124(n+5)+5)`
-/

namespace A300879.P5690121037645050884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300881 (A000124 (n + 5) + 5).toNat

end

end A300879.P5690121037645050884

/-!
# A300880: Number of nX7 0..1 arrays with every element equal to 0, 1, 2, 4 or 5 horizontally, vertically or antidiagonally adjacent elements, with upper left element zero.

The programs for A300880, there is no canonical definition to state claims against.
-/

/-! ## A300880.P9970319459978080661

`A300881(A374008(n+1))`
-/

namespace A300880.P9970319459978080661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300881 (A374008 (n + 1)).toNat

end

end A300880.P9970319459978080661

/-! ## A300880.P17504251036986341288

`A300881(A167487(n+5))`
-/

namespace A300880.P17504251036986341288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300881 (A167487 (n + 5)).toNat

end

end A300880.P17504251036986341288

/-! ## A300880.P13449730686435546833

`A300881(A056119(n)+28)`
-/

namespace A300880.P13449730686435546833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300881 (A056119 n + 28).toNat

end

end A300880.P13449730686435546833

/-! ## A300880.P176460171740388712

`A300881(A000124(n+7)-(n+1))`
-/

namespace A300880.P176460171740388712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300881 (A000124 (n + 7) - (n + 1 : ℤ)).toNat

end

end A300880.P176460171740388712

/-!
# A300881: T(n,k)=Number of nXk 0..1 arrays with every element equal to 0, 1, 2, 4 or 5 horizontally, vertically or antidiagonally adjacent elements, with upper left element zero.

The programs for A300881, there is no canonical definition to state claims against.
-/

/-! ## A300881.P7998956535768599060

`A301491(n+1)-A107846(A187557(n))`
-/

namespace A300881.P7998956535768599060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301491 (n + 1) - A107846 (A187557 n).toNat

end

end A300881.P7998956535768599060

/-! ## A300881.P11616632739813235884

`A301491(n+1)%Δ[A006780(n)]`
-/

namespace A300881.P11616632739813235884
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006780 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A301491 (n + 1)) (f1 (n + 1) - f1 n)

end

end A300881.P11616632739813235884

/-! ## A300881.P13921693281854191740

`A301491(∑[(5^(n-3))^A137579(n)])`
-/

namespace A300881.P13921693281854191740
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((5 : ℚ) ^ ((n : ℤ) - 3 : ℤ)) ^ (A137579 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301491 (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A300881.P13921693281854191740

/-! ## A300881.P4244238369965175823

`A105769(A325828(n))*A301491(n+1)`
-/

namespace A300881.P4244238369965175823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105769 (A325828 n).toNat * A301491 (n + 1)

end

end A300881.P4244238369965175823

/-! ## A300881.P727061960391910751

`A301491(n+1)^A034869(A331039(n))`
-/

namespace A300881.P727061960391910751
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A301491 (n + 1) : ℚ) ^ (A034869 (A331039 n).toNat : ℤ)

end

end A300881.P727061960391910751

/-!
# A300882: Number of n X n 0..1 arrays with every element equal to 0, 1, 3, 4 or 5 horizontally, vertically or antidiagonally adjacent elements, with upper left element zero.

The programs for A300882, there is no canonical definition to state claims against.
-/

/-! ## A300882.P13545181959573484417

`A300888(∑[4*n]+1)`
-/

namespace A300882.P13545181959573484417
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300888 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A300882.P13545181959573484417

/-! ## A300882.P12207951880393112881

`record[A300888(A330613(n+1))]`
-/

namespace A300882.P12207951880393112881
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300888 (A330613 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A300882.P12207951880393112881

/-! ## A300882.P18441181261737238122

`A300888(A001844(n))+char[10]`
-/

namespace A300882.P18441181261737238122
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300888 (A001844 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A300882.P18441181261737238122

/-! ## A300882.P15208066327239074388

`record[A003982(n)*A300888(n+1)]`
-/

namespace A300882.P15208066327239074388
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A300888 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A300882.P15208066327239074388

/-! ## A300882.P2736927143155782225

`A307637(n)+A300888(A001844(n))`
-/

namespace A300882.P2736927143155782225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307637 n + A300888 (A001844 n).toNat

end

end A300882.P2736927143155782225

/-!
# A300883: Number of nX3 0..1 arrays with every element equal to 0, 1, 3, 4 or 5 horizontally, vertically or antidiagonally adjacent elements, with upper left element zero.

The programs for A300883, there is no canonical definition to state claims against.
-/

/-! ## A300883.P14296533233423446838

`A300888(∑[n+2]+4)`
-/

namespace A300883.P14296533233423446838
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300888 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A300883.P14296533233423446838

/-! ## A300883.P15511173694864778667

`A300888(A167614(n+1))+char[19]`
-/

namespace A300883.P15511173694864778667
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  19

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300888 (A167614 (n + 1)).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A300883.P15511173694864778667

/-! ## A300883.P2528637314358511644

`gcd(A025469(n), A300888(A167614(n+1)))`
-/

namespace A300883.P2528637314358511644
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A025469 n) (A300888 (A167614 (n + 1)).toNat)

end

end A300883.P2528637314358511644

/-! ## A300883.P14018893435726646287

`or(A000007(n), A300888(A167614(n+1)))`
-/

namespace A300883.P14018893435726646287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A300888 (A167614 (n + 1)).toNat)

end

end A300883.P14018893435726646287

/-! ## A300883.P10191671112686088320

`xor(A025439(n), A300888(A167614(n+1)))`
-/

namespace A300883.P10191671112686088320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A025439 n) (A300888 (A167614 (n + 1)).toNat)

end

end A300883.P10191671112686088320

/-!
# A300884: Number of nX4 0..1 arrays with every element equal to 0, 1, 3, 4 or 5 horizontally, vertically or antidiagonally adjacent elements, with upper left element zero.

The programs for A300884, there is no canonical definition to state claims against.
-/

/-! ## A300884.P5448427072345831804

`A300888(∑[n+3]+7)`
-/

namespace A300884.P5448427072345831804
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300888 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A300884.P5448427072345831804

/-!
# A300885: Number of nX5 0..1 arrays with every element equal to 0, 1, 3, 4 or 5 horizontally, vertically or antidiagonally adjacent elements, with upper left element zero.

The programs for A300885, there is no canonical definition to state claims against.
-/

/-! ## A300885.P12961250744795294712

`A300888(A167499(n+3))`
-/

namespace A300885.P12961250744795294712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300888 (A167499 (n + 3)).toNat

end

end A300885.P12961250744795294712

/-! ## A300885.P15897365087041799070

`A300888(A155212(n)+13)`
-/

namespace A300885.P15897365087041799070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300888 (A155212 n + 13).toNat

end

end A300885.P15897365087041799070

/-! ## A300885.P1184083183939986362

`A300888(A056000(n)+15)`
-/

namespace A300885.P1184083183939986362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300888 (A056000 n + 15).toNat

end

end A300885.P1184083183939986362

/-! ## A300885.P8838295181512796581

`A300888(eq[7, A066657(n)])`
-/

namespace A300885.P8838295181512796581
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300888 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A300885.P8838295181512796581

/-! ## A300885.P3314289783392297560

`A300888(A167614(n+3)+2)`
-/

namespace A300885.P3314289783392297560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300888 (A167614 (n + 3) + 2).toNat

end

end A300885.P3314289783392297560

/-!
# A300886: Number of nX6 0..1 arrays with every element equal to 0, 1, 3, 4 or 5 horizontally, vertically or antidiagonally adjacent elements, with upper left element zero.

The programs for A300886, there is no canonical definition to state claims against.
-/

/-! ## A300886.P16786228961788978620

`A300888(A056115(n)+21)`
-/

namespace A300886.P16786228961788978620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300888 (A056115 n + 21).toNat

end

end A300886.P16786228961788978620

/-! ## A300886.P7932822779795143533

`A300888(A167499(n+4)+1)`
-/

namespace A300886.P7932822779795143533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300888 (A167499 (n + 4) + 1).toNat

end

end A300886.P7932822779795143533

/-! ## A300886.P9217730484527219382

`A300888(A167614(n+4)+3)`
-/

namespace A300886.P9217730484527219382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300888 (A167614 (n + 4) + 3).toNat

end

end A300886.P9217730484527219382

/-! ## A300886.P17717606895559822567

`A300888(A000124(n+5)+5)`
-/

namespace A300886.P17717606895559822567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300888 (A000124 (n + 5) + 5).toNat

end

end A300886.P17717606895559822567

/-! ## A300886.P16364028926257225727

`A300888(A000096(n+4)+7)`
-/

namespace A300886.P16364028926257225727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300888 (A000096 (n + 4) + 7).toNat

end

end A300886.P16364028926257225727

/-!
# A300887: Number of nX7 0..1 arrays with every element equal to 0, 1, 3, 4 or 5 horizontally, vertically or antidiagonally adjacent elements, with upper left element zero.

The programs for A300887, there is no canonical definition to state claims against.
-/

/-! ## A300887.P4818615311914374909

`A300888(A056119(n)+28)`
-/

namespace A300887.P4818615311914374909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300888 (A056119 n + 28).toNat

end

end A300887.P4818615311914374909

/-! ## A300887.P12403968728236075977

`A300888(eq[11, A066657(n)])`
-/

namespace A300887.P12403968728236075977
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300888 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A300887.P12403968728236075977

/-! ## A300887.P2078318575913024262

`A300888(A167499(n+5)+2)`
-/

namespace A300887.P2078318575913024262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300888 (A167499 (n + 5) + 2).toNat

end

end A300887.P2078318575913024262

/-! ## A300887.P3509717517015130956

`A300888(A167614(n+5)+4)`
-/

namespace A300887.P3509717517015130956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300888 (A167614 (n + 5) + 4).toNat

end

end A300887.P3509717517015130956

/-! ## A300887.P2028669401374849928

`A300888(A000124(n+6)+6)`
-/

namespace A300887.P2028669401374849928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300888 (A000124 (n + 6) + 6).toNat

end

end A300887.P2028669401374849928

/-!
# A300888: T(n,k)=Number of nXk 0..1 arrays with every element equal to 0, 1, 3, 4 or 5 horizontally, vertically or antidiagonally adjacent elements, with upper left element zero.

The programs for A300888, there is no canonical definition to state claims against.
-/

/-! ## A300888.P3161311415662588668

`A300506(n+1)+A025469(A118190(n))`
-/

namespace A300888.P3161311415662588668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300506 (n + 1) + A025469 (A118190 n).toNat

end

end A300888.P3161311415662588668

/-! ## A300888.P5751935873056303910

`A300506(n+1)+A118135(A059922(n))`
-/

namespace A300888.P5751935873056303910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300506 (n + 1) + A118135 (A059922 n).toNat

end

end A300888.P5751935873056303910

/-! ## A300888.P12966663186230706523

`A300506(n+1)+A141728(A174545(n))`
-/

namespace A300888.P12966663186230706523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300506 (n + 1) + A141728 (A174545 n).toNat

end

end A300888.P12966663186230706523

/-! ## A300888.P8795172999319991825

`A300506(n+1)+A285006(A122176(n))`
-/

namespace A300888.P8795172999319991825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300506 (n + 1) + A285006 (A122176 n).toNat

end

end A300888.P8795172999319991825

/-! ## A300888.P11027727889025041857

`A300506(n+1)+A107846(A316674(n))`
-/

namespace A300888.P11027727889025041857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300506 (n + 1) + A107846 (A316674 n).toNat

end

end A300888.P11027727889025041857

/-!
# A300889: a(n) is the least positive multiple of n which is a Fibbinary number (A003714).

The programs for A300889, there is no canonical definition to state claims against.
-/

/-! ## A300889.P12323648001304805908

`(n+1)*A300867(n+1)`
-/

namespace A300889.P12323648001304805908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A300867 (n + 1)

end

end A300889.P12323648001304805908

/-! ## A300889.P735312792563387318

`(2-Δ[xor(n, 2*n)]%2)*(n+1)%A203564(∑[n+1]+2)`
-/

namespace A300889.P735312792563387318
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * n)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - Int.tmod ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) 2) * Int.tmod (n + 1 : ℤ) (A203564 (∑ j ∈ Finset.range (n + 1), f2 j + 2))

end

end A300889.P735312792563387318

/-! ## A300889.P10745313034497205286

`(n+1)*A333224(A320573(n+1))`
-/

namespace A300889.P10745313034497205286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A333224 (A320573 (n + 1)).toNat

end

end A300889.P10745313034497205286

/-! ## A300889.P11835950650780487516

`(n+1)*A001511(A317332(n+1)²)`
-/

namespace A300889.P11835950650780487516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A001511 (A317332 (n + 1) ^ 2).toNat

end

end A300889.P11835950650780487516

/-! ## A300889.P8949151239846640179

`(n+1)*A138684(A359679(2*(n+2)))`
-/

namespace A300889.P8949151239846640179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A138684 (A359679 (2 * (n + 2))).toNat

end

end A300889.P8949151239846640179

/-!
# A300891: Left-truncatable nonzero triangular numbers.

The programs for A300891, there is no canonical definition to state claims against.
-/

/-! ## A300891.P7213301188579912407

`A000217(∑[A058115(n)%5])`
-/

namespace A300891.P7213301188579912407
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A058115 n) 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A300891.P7213301188579912407

/-! ## A300891.P8354866871564642034

`C(A072649(A000984(n)+1), 2)`
-/

namespace A300891.P8354866871564642034
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A072649 (A000984 n + 1).toNat).toNat 2

end

end A300891.P8354866871564642034

/-! ## A300891.P9006961385570736360

`A238952(record[A138882(3*n+2)])`
-/

namespace A300891.P9006961385570736360
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138882 (3 * n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238952 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A300891.P9006961385570736360

/-! ## A300891.P10460764233189230870

`C(A079416(A057755(2*n))+n, 2)`
-/

namespace A300891.P10460764233189230870
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A079416 (A057755 (2 * n)).toNat + (n : ℤ)).toNat 2

end

end A300891.P10460764233189230870

/-!
# A300893: L.g.f.: log(Product_{k>=1} (1 + x^k)/(1 + x^prime(k))) = Sum_{n>=1} a(n)*x^n/n.

The programs for A300893, the canonical program `A300893.P14197464904502864311` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A300893 has offset 1).

The definition of A300893 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A300893.P17928012853044415512

`∑{d}[n+1, #*#%2]-A300852(n+1)`
-/

namespace A300893.P17928012853044415512
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n), d * (d % 2) : ℕ) : ℤ) - A300852 (n + 1)

end

end A300893.P17928012853044415512

namespace A300893

/-- `∑{d}[n+1, #*#%2]-A300852(n+1)` -/
def P17928012853044415512.Spec : Prop :=
  ∀ n, P17928012853044415512.a n = A300893 (n + 1)

theorem P17928012853044415512.correct : P17928012853044415512.Spec := by
  intro n
  simp only [A300893, Nat.add_sub_cancel, A300893.P17928012853044415512.f1, A300893.P17928012853044415512.a, A300893.P14197464904502864311.f1, A300893.P14197464904502864311.a, A033999, A033999.P17703899380244199787.a, A191558, A191558.P14009675995309042097.a, A300852, A300852.P6997038708606362003.f1, A300852.P6997038708606362003.a, A061397, A061397.P17730824645895443051.a, A000027, A000027.P10331202704469894836.a, A010051, A010051.P2964579406648181973.f1, A010051.P2964579406648181973.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A300893

/-! ## A300893.P2306156134042829715

`A000593(n+1)-A300852(n+1)`
-/

namespace A300893.P2306156134042829715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000593 (n + 1) - A300852 (n + 1)

end

end A300893.P2306156134042829715

namespace A300893

/-- `A000593(n+1)-A300852(n+1)` -/
def P2306156134042829715.Spec : Prop :=
  ∀ n, P2306156134042829715.a n = A300893 (n + 1)

end A300893

/-! ## A300893.P14197464904502864311

`∑{d}[n+1, A033999(#-1)*A191558((n+1)/#)]`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A300893

/-- `∑{d}[n+1, A033999(#-1)*A191558((n+1)/#)]` -/
def P14197464904502864311.Spec : Prop :=
  ∀ n, P14197464904502864311.a n = A300893 (n + 1)

theorem P14197464904502864311.correct : P14197464904502864311.Spec := by
  intro n
  simp only [A300893, Nat.add_sub_cancel]

end A300893

/-! ## A300893.P12327849958613929051

`A000203((n+1)/2^val(n+1, 2))-A300852(n+1)`
-/

namespace A300893.P12327849958613929051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ))).toNat - A300852 (n + 1)

end

end A300893.P12327849958613929051

namespace A300893

/-- `A000203((n+1)/2^val(n+1, 2))-A300852(n+1)` -/
def P12327849958613929051.Spec : Prop :=
  ∀ n, P12327849958613929051.a n = A300893 (n + 1)

end A300893

/-! ## A300893.P7966284588355304695

`A000203((n+1)/and(n+1, -(n+1)))-A300852(n+1)`
-/

namespace A300893.P7966284588355304695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (Int.land (n + 1 : ℤ) (-(n + 1 : ℤ)) : ℚ))).toNat - A300852 (n + 1)

end

end A300893.P7966284588355304695

namespace A300893

/-- `A000203((n+1)/and(n+1, -(n+1)))-A300852(n+1)` -/
def P7966284588355304695.Spec : Prop :=
  ∀ n, P7966284588355304695.a n = A300893 (n + 1)

end A300893

/-! ## A300893.P3565087918185532312

`A000593(n+1)-∑{p}[n+1, (n+1)/A181983((n+1)/#)]`
-/

namespace A300893.P3565087918185532312
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000593 (n + 1) : ℚ) - ∑ p ∈ Nat.primeFactors (f1 n), (n + 1 : ℚ) / (A181983 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (p : ℚ))).toNat : ℚ)

end

end A300893.P3565087918185532312

namespace A300893

/-- `A000593(n+1)-∑{p}[n+1, (n+1)/A181983((n+1)/#)]` -/
def P3565087918185532312.Spec : Prop :=
  ∀ n, P3565087918185532312.a n = (A300893 (n + 1) : ℚ)

end A300893

/-! ## A300893.P2241800607512375677

`A000593(n+1)-∑{d}[n+1, A033999(#-1)*A061397((n+1)/#)]`
-/

namespace A300893.P2241800607512375677
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000593 (n + 1) - ∑ d ∈ Nat.divisors (f1 n), A033999 (d - 1) * A061397 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A300893.P2241800607512375677

namespace A300893

/-- `A000593(n+1)-∑{d}[n+1, A033999(#-1)*A061397((n+1)/#)]` -/
def P2241800607512375677.Spec : Prop :=
  ∀ n, P2241800607512375677.a n = A300893 (n + 1)

end A300893

/-! ## A300893.P11986553852247030098

`A000203(A000265(n+1))-∑{p}[n+1, (n+1)/A181983((n+1)/#)]`
-/

namespace A300893.P11986553852247030098
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000203 (A000265 (n + 1)).toNat : ℚ) - ∑ p ∈ Nat.primeFactors (f1 n), (n + 1 : ℚ) / (A181983 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (p : ℚ))).toNat : ℚ)

end

end A300893.P11986553852247030098

namespace A300893

/-- `A000203(A000265(n+1))-∑{p}[n+1, (n+1)/A181983((n+1)/#)]` -/
def P11986553852247030098.Spec : Prop :=
  ∀ n, P11986553852247030098.a n = (A300893 (n + 1) : ℚ)

end A300893

/-! ## A300893.P2391056704311830789

`A000593(n+1)-(A008472(n+1)-2*A008472(A152271(n)))`
-/

namespace A300893.P2391056704311830789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000593 (n + 1) - (A008472 (n + 1) - 2 * A008472 (A152271 n).toNat)

end

end A300893.P2391056704311830789

namespace A300893

/-- `A000593(n+1)-(A008472(n+1)-2*A008472(A152271(n)))` -/
def P2391056704311830789.Spec : Prop :=
  ∀ n, P2391056704311830789.a n = A300893 (n + 1)

end A300893

/-!
# A300894: L.g.f.: log(Product_{k>=1} (1 + mu(k)^2*x^k)) = Sum_{n>=1} a(n)*x^n/n, where mu() is the Moebius function (A008683).

The programs for A300894, the canonical program `A300894.P15886639425935444398` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A300894 has offset 1).

The definition of A300894 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A300894.P9735714481474803355

`A046970(n+1)/A117212(n+1)`
-/

namespace A300894.P9735714481474803355
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A046970 (n + 1) : ℚ) / (A117212 (n + 1) : ℚ)

end

end A300894.P9735714481474803355

namespace A300894

/-- `A046970(n+1)/A117212(n+1)` -/
def P9735714481474803355.Spec : Prop :=
  ∀ n, P9735714481474803355.a n = (A300894 (n + 1) : ℚ)

end A300894

/-! ## A300894.P4565741758315293440

`A143348(gcd(n+1, A139131(n+1)))`
-/

namespace A300894.P4565741758315293440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143348 (Int.gcd (n + 1 : ℤ) (A139131 (n + 1)))

end

end A300894.P4565741758315293440

namespace A300894

/-- `A143348(gcd(n+1, A139131(n+1)))` -/
def P4565741758315293440.Spec : Prop :=
  ∀ n, P4565741758315293440.a n = A300894 (n + 1)

end A300894

/-! ## A300894.P15886639425935444398

`∏{p}[A026741(n+1), A038608(#+1)]`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A300894

/-- `∏{p}[A026741(n+1), A038608(#+1)]` -/
def P15886639425935444398.Spec : Prop :=
  ∀ n, P15886639425935444398.a n = A300894 (n + 1)

theorem P15886639425935444398.correct : P15886639425935444398.Spec := by
  intro n
  simp only [A300894, Nat.add_sub_cancel]

end A300894

/-! ## A300894.P11748090064522805868

`A048250(n+1)/(A263449(n)-n)`
-/

namespace A300894.P11748090064522805868
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048250 (n + 1) : ℚ) / (A263449 n - (n : ℤ) : ℚ)

end

end A300894.P11748090064522805868

namespace A300894

/-- `A048250(n+1)/(A263449(n)-n)` -/
def P11748090064522805868.Spec : Prop :=
  ∀ n, P11748090064522805868.a n = (A300894 (n + 1) : ℚ)

end A300894

/-! ## A300894.P5262610986553486316

`∑{d}[n+1, A319132(#)*A361019((n+1)/#)]`
-/

namespace A300894.P5262610986553486316
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A319132 d * A361019 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A300894.P5262610986553486316

namespace A300894

/-- `∑{d}[n+1, A319132(#)*A361019((n+1)/#)]` -/
def P5262610986553486316.Spec : Prop :=
  ∀ n, P5262610986553486316.a n = A300894 (n + 1)

end A300894

/-! ## A300894.P2676718726177203817

`A109506(gcd(A007947(n+1), A168526(n)))`
-/

namespace A300894.P2676718726177203817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109506 (Int.gcd (A007947 (n + 1)) (A168526 n))

end

end A300894.P2676718726177203817

namespace A300894

/-- `A109506(gcd(A007947(n+1), A168526(n)))` -/
def P2676718726177203817.Spec : Prop :=
  ∀ n, P2676718726177203817.a n = A300894 (n + 1)

end A300894

/-! ## A300894.P15302616509789987555

`A323363(A152020(n+1))`
-/

namespace A300894.P15302616509789987555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323363 (A152020 (n + 1)).toNat

end

end A300894.P15302616509789987555

namespace A300894

/-- `A323363(A152020(n+1))` -/
def P15302616509789987555.Spec : Prop :=
  ∀ n, P15302616509789987555.a n = A300894 (n + 1)

end A300894

/-! ## A300894.P10084778402693791352

`A323363(A251091(n+1))`
-/

namespace A300894.P10084778402693791352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323363 (A251091 (n + 1)).toNat

end

end A300894.P10084778402693791352

namespace A300894

/-- `A323363(A251091(n+1))` -/
def P10084778402693791352.Spec : Prop :=
  ∀ n, P10084778402693791352.a n = A300894 (n + 1)

end A300894

